// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double safeArea = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: safeArea),
              UserInformationBar(),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        "Aradığın lezzet yalnızca\nbir tık uzağında",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(
                            0xff323643,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          width: 260,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffE9E9E9).withOpacity(0.2),
                                blurRadius: 45,
                                offset: Offset(0, 20),
                              )
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color(0xffFCFCFD),
                            border: Border.all(
                              color: Color(0xffEFEFEF),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: kGrey,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Restorant ya da yemek ara...",
                                  style: TextStyle(color: kGrey),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffE9EDF2).withOpacity(0.5),
                                blurRadius: 30,
                                offset: Offset(0, 15),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/filter.png"),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 130,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 20),
                          ListViewItem(imageName: "burger.png", text: "Burger"),
                          ListViewItem(imageName: "donut.png", text: "Donat"),
                          ListViewItem(imageName: "pizza.png", text: "Pizza"),
                          ListViewItem(
                              imageName: "sandvic.png", text: "Sandviç"),
                          ListViewItem(imageName: "kahvalti.png", text: "Tost"),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Öne Çıkan Restorantlar",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xff323643),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Tümünü Gör",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: kOrange,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 8,
                                color: kOrange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 15),
                              RestaurantCont(
                                imageUrl:
                                    "https://images.deliveryhero.io/image/fd-tr/LH/tkgy-hero.jpg",
                                numberOfRating: "40",
                                rating: "4.9",
                                restaurantName: "Bite Me! Burger",
                                tag1: "BURGER",
                                tag2: "TAVUK",
                                tag3: "FAST FOOD",
                              ),
                              RestaurantCont(
                                imageUrl:
                                    "https://images.deliveryhero.io/image/fd-tr/LH/jh6e-hero.jpg?width=480&height=360&quality=45",
                                numberOfRating: "45",
                                rating: "4.8",
                                restaurantName: "Sushi Mushi",
                                tag1: "SUŞİ",
                                tag2: "BALIK",
                                tag3: "NOODLE",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "En Çok Tercih Edilenler",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xff323643),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 15),
                              FoodCont(
                                imageUrl:
                                    "https://www.livashop.com/Uploads/UrunResimleri/buyuk/steak-burger-0fde.jpg",
                                foodName: "Steak Burger Menu",
                                numberOfRating: "40",
                                price: "88,50",
                                rating: "4.9",
                                restaurantName: "Bite Me! Burger",
                              ),
                              FoodCont(
                                imageUrl:
                                    "https://d2lswn7b0fl4u2.cloudfront.net/photos/pg-veggie-noodle-1611852344.jpg",
                                foodName: "Sebzeli Noodle",
                                numberOfRating: "45",
                                price: "48,50",
                                rating: "4.8",
                                restaurantName: "Sushi Mushi",
                              ),
                              FoodCont(
                                imageUrl:
                                    "https://images.deliveryhero.io/image/fd-tr/LH/ps05-hero.jpg",
                                foodName: "Best Burger Menu",
                                numberOfRating: "40",
                                price: "150",
                                rating: "4.9",
                                restaurantName: "Bite Me! Burger",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff3F4C5F).withOpacity(0.1),
                    blurRadius: 20,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              height: 65,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: kOrange,
                  ),
                  Icon(
                    Icons.location_on_rounded,
                    color: kGrey.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.shopping_bag_rounded,
                    color: kOrange,
                  ),
                  Icon(
                    Icons.favorite,
                    color: kGrey.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.notifications_rounded,
                    color: kGrey.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCont extends StatelessWidget {
  final String price;
  final String rating;
  final String numberOfRating;
  final String foodName;
  final String restaurantName;
  final String imageUrl;
  const FoodCont({
    Key? key,
    required this.price,
    required this.rating,
    required this.numberOfRating,
    required this.foodName,
    required this.restaurantName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xffD3D1D8).withOpacity(0.1),
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          width: 155,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffD3D1D8).withOpacity(0.3),
                          blurRadius: 30,
                          offset: Offset(0, 15),
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    width: 265,
                    height: 135,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      width: 55,
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₺",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kOrange,
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 5, 5),
                    child: Text(
                      foodName,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  restaurantName,
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 53,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFE724C).withOpacity(0.2),
                  blurRadius: 20,
                  offset: Offset(0, 5),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            width: 70,
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(width: 2),
                Icon(
                  Icons.star,
                  size: 14,
                  color: Color(0xffFFC529),
                ),
                SizedBox(width: 2),
                Text(
                  "($numberOfRating +)",
                  style: TextStyle(fontSize: 9, color: kGrey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class RestaurantCont extends StatelessWidget {
  final String rating;
  final String numberOfRating;
  final String imageUrl;
  final String restaurantName;
  final String tag1;
  final String tag2;
  final String tag3;

  const RestaurantCont({
    Key? key,
    required this.rating,
    required this.numberOfRating,
    required this.imageUrl,
    required this.restaurantName,
    required this.tag1,
    required this.tag2,
    required this.tag3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffD3D1D8).withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      width: 265,
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffD3D1D8).withOpacity(0.3),
                      blurRadius: 30,
                      offset: Offset(0, 15),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                width: 265,
                height: 135,
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 70,
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xffFFC529),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "($numberOfRating+)",
                        style: TextStyle(fontSize: 9, color: kGrey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 5, 5),
                child: Text(
                  restaurantName,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(
                  Icons.check_circle,
                  size: 12,
                  color: Color(0xff029094),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.motorcycle,
                  size: 14,
                  color: kOrange,
                ),
                SizedBox(width: 5),
                Text(
                  "Ücretsiz teslimat",
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 9,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.timer_rounded,
                  size: 11,
                  color: kOrange,
                ),
                SizedBox(width: 5),
                Text(
                  "30-35 dakika",
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 15),
              RestaurantTag(tag: tag1),
              RestaurantTag(tag: tag2),
              RestaurantTag(tag: tag3),
            ],
          ),
        ],
      ),
    );
  }
}

class RestaurantTag extends StatelessWidget {
  final String tag;
  const RestaurantTag({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 10, 5, 15),
      width: 55,
      height: 20,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        tag,
        style: TextStyle(
          color: Color(0xff8A8E9B),
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final String imageName;
  final String text;

  ListViewItem({Key? key, required this.imageName, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffD3D1D8).withOpacity(0.3),
                      blurRadius: 30,
                      offset: Offset(0, 20),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 60,
                height: 100,
                child: Column(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        "assets/$imageName",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      text,
                      style: TextStyle(
                        color: Color(0xff67666D),
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UserInformationBar extends StatelessWidget {
  const UserInformationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.more_horiz_outlined),
        Container(
          padding: EdgeInsets.only(left: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Adres",
                    style: TextStyle(
                      color: kGrey,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 15,
                    color: kGrey,
                  ),
                ],
              ),
              Text(
                "9806 Yenimahalle",
                style: TextStyle(
                  color: kOrange,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xffFFC529).withOpacity(0.3),
                blurRadius: 16,
                offset: Offset(0, 20),
              )
            ],
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffFDC207),
            image: DecorationImage(
              image: NetworkImage(
                "https://png2.cleanpng.com/sh/00f27dd6e665053fe8518affeef65f30/L0KzQYm3VsI0N6t1hJH0aYP2gLBuTfNwdaF6jNd7LXnmf7B6TfF3aaVmip98b3Pscb20jfVlcZIyet54Zz3pf7B7TfF4baR0RdNBYYTkgn7wgB9vNWZnStcEOXO3RIGCVsI0NmU7TKUEMUi0QYa5Wcc5OGc8TqQBNEaxgLBu/kisspng-computer-icons-avatar-social-media-blog-font-aweso-avatar-icon-5b2e99c4409623.4643918115297806762646.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
