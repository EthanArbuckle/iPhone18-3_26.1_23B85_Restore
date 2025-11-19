id sub_10001801C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100018080(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"refresh"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x44414F4C4552;
  v13._object = 0xE600000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}

id sub_1000181E8()
{
  v1 = OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ABSBarButtonItem()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001825C()
{
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___previousButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___nextButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___refreshButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___secureContentMessageItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IMBWebNavigationToolbar();
  v1 = objc_msgSendSuper2(&v3, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001836C();

  return v1;
}

void sub_10001836C()
{
  if (sub_10002CE60() == 2)
  {
    v1 = [objc_opt_self() buttonWithType:1];
    [v1 addTarget:v0 action:"done" forControlEvents:64];
    v2 = sub_1000181E8();
    [v2 setCustomView:v1];

    v3 = OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem;
    v4 = *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v20._countAndFlagsBits = 1162760004;
    v20._object = 0xE400000000000000;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v8.super.isa = v7;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1000AB61C(v20, v21, v8, v22, v17);

    v9 = sub_1000AC02C();

    [v6 setTitle:v9];

    [v0 setClipsToBounds:1];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000B08F0;
    *(v10 + 32) = sub_100017CEC();
    v11 = objc_opt_self();
    *(v10 + 40) = [v11 fixedSpaceItemOfWidth:40.0];
    *(v10 + 48) = sub_100017E70();
    *(v10 + 56) = [v11 fixedSpaceItemOfWidth:40.0];
    *(v10 + 64) = sub_100017FFC();
    v12 = [v11 flexibleSpaceItem];
    v13 = *&v0[v3];
    *(v10 + 72) = v12;
    *(v10 + 80) = v13;
    v14 = v13;
  }

  else
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000B08E0;
    *(v15 + 32) = sub_100017CEC();
    v16 = objc_opt_self();
    *(v15 + 40) = [v16 fixedSpaceItemOfWidth:60.0];
    *(v15 + 48) = sub_100017E70();
    *(v15 + 56) = [v16 flexibleSpaceItem];
    *(v15 + 64) = sub_100017FFC();
  }

  sub_100018E48();
  isa = sub_1000AC18C().super.isa;

  [v0 setItems:isa animated:0];
}

void sub_100018688()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000AC2BC();
    sub_1000ABA5C();
    v2 = [v1 webkitView];
    v3 = [v2 canGoBack];

    if (v3)
    {
      v5 = [v1 webkitView];
      v4 = [v5 goBack];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_10001886C()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000AC2BC();
    sub_1000ABA5C();
    v2 = [v1 webkitView];
    v3 = [v2 canGoForward];

    if (v3)
    {
      v5 = [v1 webkitView];
      v4 = [v5 goForward];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100018A50()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1000AC2BC();
    sub_1000ABA5C();
    v2.receiver = v1;
    v2.super_class = type metadata accessor for IMBWebViewController();
    objc_msgSendSuper2(&v2, "reload");
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100018B90()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1000AC2BC();
    sub_1000ABA5C();
    v2 = [v1 delegate];
    if (v2)
    {
      [v2 dismiss];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100018D64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBWebNavigationToolbar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100018E48()
{
  result = qword_1000EFCE8;
  if (!qword_1000EFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EFCE8);
  }

  return result;
}

void sub_100018E94()
{
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___previousButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___nextButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___refreshButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___secureContentMessageItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1000AC63C();
  __break(1u);
}

__n128 sub_100018F44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100018F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001900C()
{
  if (*v0)
  {
    result = 28526;
  }

  else
  {
    result = 7562617;
  }

  *v0;
  return result;
}

uint64_t sub_100019034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100019120(uint64_t a1)
{
  v2 = sub_10001B510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001915C(uint64_t a1)
{
  v2 = sub_10001B510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019198(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_10000413C(&qword_1000EFDE0, &qword_1000B0EE0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v22 - v6;
  v22 = sub_10000413C(&qword_1000EFDE8, &qword_1000B0EE8);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22, v10);
  v12 = &v22 - v11;
  v13 = sub_10000413C(&qword_1000EFDF0, &qword_1000B0EF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v22 - v17;
  v19 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10001B510();
  sub_1000AC91C();
  v20 = (v14 + 8);
  if (v25)
  {
    v27 = 1;
    sub_10001B564();
    sub_1000AC72C();
    (*(v23 + 8))(v7, v24);
  }

  else
  {
    v26 = 0;
    sub_10001B5B8();
    sub_1000AC72C();
    (*(v8 + 8))(v12, v22);
  }

  return (*v20)(v18, v13);
}

uint64_t sub_100019454(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000EFD08, &qword_1000B09E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10001A684();
  sub_1000AC91C();
  v12 = *v3;
  v13 = *(v3 + 1);
  v16[0] = 0;
  sub_1000AC74C();
  if (!v2)
  {
    sub_10001A72C(v3 + 1, v17);
    sub_10001A72C(v17, v16);
    v15[15] = 1;
    sub_10001A744();
    sub_1000AC75C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1000195E0(void *a1)
{
  v2 = v1;
  sub_10001A72C(v2, v20);
  v25 = v20[0];
  v19[2] = v22;
  v19[3] = v21;
  v19[0] = v24;
  v19[1] = v23;
  v4 = sub_10000413C(&qword_1000EFD60, &qword_1000B0BA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v19 - v8;
  v10 = sub_10000413C(&qword_1000EFD68, &unk_1000B0BB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v19 - v14;
  v16 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10001AF10();
  sub_1000AC91C();
  sub_10001AF64();
  sub_1000AC72C();
  v27 = v25;
  v26 = 0;
  sub_10001B00C();
  v17 = v19[4];
  sub_1000AC75C();
  if (v17)
  {
    (*(v5 + 8))(v9, v4);
    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    v27 = 1;
    sub_1000AC74C();
    v27 = 2;
    sub_1000AC73C();
    (*(v5 + 8))(v9, v4);
    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_1000198AC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000198E8(uint64_t a1)
{
  v2 = sub_10001B564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019924(uint64_t a1)
{
  v2 = sub_10001B564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019960(uint64_t a1)
{
  v2 = sub_10001B5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001999C(uint64_t a1)
{
  v2 = sub_10001B5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000199D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019FB8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100019A24()
{
  if (*v0)
  {
    result = 0x4379616C70736964;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_100019A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00746E65746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100019B3C(uint64_t a1)
{
  v2 = sub_10001A684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019B78(uint64_t a1)
{
  v2 = sub_10001A684();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100019BB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001A474(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100019C04(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_100019454(a1);
}

Swift::Int sub_100019C50()
{
  sub_1000AC87C();
  sub_1000AC88C(0);
  return sub_1000AC8CC();
}

Swift::Int sub_100019CBC()
{
  sub_1000AC87C();
  sub_1000AC88C(0);
  return sub_1000AC8CC();
}

uint64_t sub_100019D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000B6E70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000AC7AC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100019DAC(uint64_t a1)
{
  v2 = sub_10001AF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019DE8(uint64_t a1)
{
  v2 = sub_10001AF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019E24()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100019E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001A964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100019EA8(uint64_t a1)
{
  v2 = sub_10001AF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019EE4(uint64_t a1)
{
  v2 = sub_10001AF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001AA78(a1, v5);
  if (!v2)
  {
    return sub_10001A72C(v5, a2);
  }

  return result;
}

uint64_t sub_100019FB8(uint64_t *a1)
{
  v2 = sub_10000413C(&qword_1000EFDB0, &qword_1000B0EC8);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v30 - v5;
  v7 = sub_10000413C(&qword_1000EFDB8, &qword_1000B0ED0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v30 - v10;
  v12 = sub_10000413C(&qword_1000EFDC0, &qword_1000B0ED8);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v30 - v15;
  v17 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10001B510();
  v18 = v35;
  sub_1000AC90C();
  if (v18)
  {
    return sub_10000E738(a1);
  }

  v35 = a1;
  v19 = v33;
  v20 = sub_1000AC71C();
  v21 = (2 * *(v20 + 16)) | 1;
  v36 = v20;
  v37 = v20 + 32;
  v38 = 0;
  v39 = v21;
  v22 = sub_100043A0C();
  if (v22 == 2 || v38 != v39 >> 1)
  {
    v24 = v12;
    v25 = sub_1000AC5DC();
    swift_allocError();
    v27 = v26;
    v28 = *(sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0) + 48);
    *v27 = &type metadata for BIAReplyDeterminateResponseType;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v34 + 8))(v16, v24);
    swift_unknownObjectRelease();
    a1 = v35;
    return sub_10000E738(a1);
  }

  v40 = v22;
  if (v22)
  {
    v41 = 1;
    sub_10001B564();
    sub_1000AC6BC();
    v23 = v34;
    (*(v32 + 8))(v6, v19);
  }

  else
  {
    v41 = 0;
    sub_10001B5B8();
    sub_1000AC6BC();
    v23 = v34;
    (*(v31 + 8))(v11, v7);
  }

  (*(v23 + 8))(v16, v12);
  swift_unknownObjectRelease();
  sub_10000E738(v35);
  return v40 & 1;
}

uint64_t sub_10001A474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000EFCF0, &qword_1000B09D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  sub_1000058D0(a1, a1[3]);
  sub_10001A684();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  v21 = 0;
  v12 = sub_1000AC6FC();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_10001A6D8();
  sub_1000AC70C();
  (*(v6 + 8))(v10, v5);
  v16 = v21;
  v20 = v22;
  v17 = v23;
  v18 = v24;
  result = sub_10000E738(a1);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v20;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

unint64_t sub_10001A684()
{
  result = qword_1000EFCF8;
  if (!qword_1000EFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFCF8);
  }

  return result;
}

unint64_t sub_10001A6D8()
{
  result = qword_1000EFD00;
  if (!qword_1000EFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD00);
  }

  return result;
}

uint64_t sub_10001A72C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10001A744()
{
  result = qword_1000EFD10;
  if (!qword_1000EFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD10);
  }

  return result;
}

__n128 sub_10001A7A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001A860()
{
  result = qword_1000EFD18;
  if (!qword_1000EFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD18);
  }

  return result;
}

unint64_t sub_10001A8B8()
{
  result = qword_1000EFD20;
  if (!qword_1000EFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD20);
  }

  return result;
}

unint64_t sub_10001A910()
{
  result = qword_1000EFD28;
  if (!qword_1000EFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD28);
  }

  return result;
}

uint64_t sub_10001A964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10001AA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_10000413C(&qword_1000EFD30, &qword_1000B0B90);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v39 - v7;
  v9 = sub_10000413C(&qword_1000EFD38, &qword_1000B0B98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v39 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  sub_1000058D0(a1, v16);
  sub_10001AF10();
  sub_1000AC90C();
  if (!v2)
  {
    v17 = v8;
    v18 = v43;
    v19 = v10;
    v20 = sub_1000AC71C();
    v21 = (2 * *(v20 + 16)) | 1;
    v45 = v20;
    v46 = v20 + 32;
    v47 = 0;
    v48 = v21;
    if (!sub_100043A40() && v47 == v48 >> 1)
    {
      sub_10001AF64();
      sub_1000AC6BC();
      v41 = v9;
      v50 = 0;
      sub_10001AFB8();
      v22 = v4;
      sub_1000AC70C();
      v23 = v17;
      v24 = v19;
      v29 = v51;
      v50 = 1;
      v30 = sub_1000AC6FC();
      v31 = v42;
      v39 = v30;
      v40 = v32;
      v49 = v29;
      v50 = 2;
      v33 = sub_1000AC6DC();
      v34 = v23;
      v36 = v35;
      (*(v31 + 8))(v34, v22);
      (*(v24 + 8))(v14, v41);
      swift_unknownObjectRelease();
      result = sub_10000E738(v44);
      *v18 = v49;
      v38 = v40;
      *(v18 + 8) = v39;
      *(v18 + 16) = v38;
      *(v18 + 24) = v33;
      *(v18 + 32) = v36;
      return result;
    }

    v25 = sub_1000AC5DC();
    swift_allocError();
    v27 = v26;
    v28 = *(sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0) + 48);
    *v27 = &type metadata for BIAReplyDisplayContent;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v19 + 8))(v14, v9);
    swift_unknownObjectRelease();
  }

  return sub_10000E738(v44);
}

unint64_t sub_10001AF10()
{
  result = qword_1000EFD40;
  if (!qword_1000EFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD40);
  }

  return result;
}

unint64_t sub_10001AF64()
{
  result = qword_1000EFD50;
  if (!qword_1000EFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD50);
  }

  return result;
}

unint64_t sub_10001AFB8()
{
  result = qword_1000EFD58;
  if (!qword_1000EFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD58);
  }

  return result;
}

unint64_t sub_10001B00C()
{
  result = qword_1000EFD70;
  if (!qword_1000EFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMBListItemStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IMBListItemStyle(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BIAReplyDisplayContent.DeterminateResponseCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BIAReplyDisplayContent.DeterminateResponseCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001B2AC()
{
  result = qword_1000EFD78;
  if (!qword_1000EFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD78);
  }

  return result;
}

unint64_t sub_10001B304()
{
  result = qword_1000EFD80;
  if (!qword_1000EFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD80);
  }

  return result;
}

unint64_t sub_10001B35C()
{
  result = qword_1000EFD88;
  if (!qword_1000EFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD88);
  }

  return result;
}

unint64_t sub_10001B3B4()
{
  result = qword_1000EFD90;
  if (!qword_1000EFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD90);
  }

  return result;
}

unint64_t sub_10001B40C()
{
  result = qword_1000EFD98;
  if (!qword_1000EFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD98);
  }

  return result;
}

unint64_t sub_10001B464()
{
  result = qword_1000EFDA0;
  if (!qword_1000EFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDA0);
  }

  return result;
}

unint64_t sub_10001B4BC()
{
  result = qword_1000EFDA8;
  if (!qword_1000EFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDA8);
  }

  return result;
}

unint64_t sub_10001B510()
{
  result = qword_1000EFDC8;
  if (!qword_1000EFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDC8);
  }

  return result;
}

unint64_t sub_10001B564()
{
  result = qword_1000EFDD0;
  if (!qword_1000EFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDD0);
  }

  return result;
}

unint64_t sub_10001B5B8()
{
  result = qword_1000EFDD8;
  if (!qword_1000EFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDD8);
  }

  return result;
}

unint64_t sub_10001B640()
{
  result = qword_1000EFDF8;
  if (!qword_1000EFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDF8);
  }

  return result;
}

unint64_t sub_10001B698()
{
  result = qword_1000EFE00;
  if (!qword_1000EFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE00);
  }

  return result;
}

unint64_t sub_10001B6F0()
{
  result = qword_1000EFE08;
  if (!qword_1000EFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE08);
  }

  return result;
}

unint64_t sub_10001B748()
{
  result = qword_1000EFE10;
  if (!qword_1000EFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE10);
  }

  return result;
}

unint64_t sub_10001B7A0()
{
  result = qword_1000EFE18;
  if (!qword_1000EFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE18);
  }

  return result;
}

unint64_t sub_10001B7F8()
{
  result = qword_1000EFE20;
  if (!qword_1000EFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE20);
  }

  return result;
}

unint64_t sub_10001B850()
{
  result = qword_1000EFE28;
  if (!qword_1000EFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE28);
  }

  return result;
}

char *sub_10001B8D0(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper();
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v28 - v14;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] = 0;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon] = 0;
  *&v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest] = 0;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped] = 0;
  v16 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  *&v3[v16] = sub_10004FC70(_swiftEmptyArrayStorage);
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect] = a3;
  v17 = a1;
  v18 = a2;
  sub_10004EA70(v15);
  sub_10001E764(v15, v12);
  v19 = sub_1000A49E0(v17, v18, v12, v3);

  sub_10001E7C8(v15);
  v20 = *&v19[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message];
  v21 = v19;
  v22 = v20;
  v23 = [v22 rootObject];

  if (v23)
  {
    type metadata accessor for IMBListRequest();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {

      swift_unknownObjectRelease();
      return v21;
    }

    v25 = *&v21[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest];
    *&v21[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest] = v24;
    v26 = v24;
    swift_unknownObjectRetain();

    LOBYTE(v25) = *(v26 + 16);
    swift_unknownObjectRelease();
    v21[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] = v25;
  }

  return v21;
}

id sub_10001BB78()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for IMBListPickerTableViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  if (([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] isFromMe] & 1) == 0 && v0[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] == 1)
  {
    [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setAllowsMultipleSelection:1];
  }

  v0[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon] = 1;
  v2 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  if (!*(*&v1[v2] + 16))
  {
    v3 = sub_10008240C();
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(0, ObjectType, v5);
  }

  return [*&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorStyle:0];
}

void sub_10001BCE4()
{
  sub_100081EF4();
  v1 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
  type metadata accessor for ListPickerTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1000AC02C();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  type metadata accessor for IMBDefaultSectionHeader();
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v1 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [v1 setEstimatedRowHeight:140.0];
  [v1 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedSectionHeaderHeight:80.0];
  [v1 setAllowsSelection:*(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect)];
  v6 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel);
  v7 = *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8 >> 62)
    {
      v9 = sub_1000AC65C();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v9 = 0;
  }

  [v6 setHidden:v9 > 0];
  v10 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v15._object = 0x80000001000B7070;
  v15._countAndFlagsBits = 0xD000000000000012;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v11.super.isa = v10;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000AB61C(v15, v16, v11, v17, v12);

  v13 = sub_1000AC02C();

  [v6 setText:v13];
}

char *sub_10001BF38()
{
  v1 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect;
  v2 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  if (*(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect) == 1)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) receivedMessage];
    if (!v3 || (v4 = v3, v5 = [v3 title], v4, !v5))
    {
      v5 = [objc_opt_self() mainBundle];
      v23._countAndFlagsBits = 0xE000000000000000;
      v6._object = 0x80000001000B7050;
      v6._countAndFlagsBits = 0xD000000000000019;
LABEL_9:
      v24.value._countAndFlagsBits = 0;
      v24.value._object = 0;
      v11.super.isa = v5;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v9 = sub_1000AB61C(v6, v24, v11, v25, v23);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [*(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) replyMessage];
    if (!v7 || (v8 = v7, v5 = [v7 title], v8, !v5))
    {
      v5 = [objc_opt_self() mainBundle];
      v23._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD000000000000022;
      v6._object = 0x80000001000B7020;
      goto LABEL_9;
    }
  }

  v9 = sub_1000AC06C();
LABEL_10:
  v12 = v9;
  v13 = v10;

  if (*(v0 + v1) == 1 && (v14 = [v2 receivedMessage]) != 0 && (v15 = v14, v16 = objc_msgSend(v14, "subtitle"), v15, v16))
  {
    v17 = sub_1000AC06C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v21 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v12, v13, v17, v19, v20);
}

double sub_10001C198()
{
  v0 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._countAndFlagsBits = 1145980243;
  v8._object = 0xE400000000000000;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v1.super.isa = v0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v2 = sub_1000AB61C(v8, v9, v1, v10, v7);
  v4 = v3;

  type metadata accessor for FooterToolbarModel();
  v5 = swift_allocObject();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 1;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 32) = 0;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  *&result = 2;
  *(v5 + 56) = xmmword_1000B1160;
  *(v5 + 72) = 0xE000000000000000;
  return result;
}

void sub_10001C260(uint64_t a1)
{
  v4 = v1;
  v6 = sub_1000AB97C();
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (v11)
  {
    v12 = *(v11 + 24);
    v13 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);

    v14 = sub_1000AB96C();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_1000AC5AC();
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = *(v15 + 40);

    v17 = sub_1000AB95C();
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v17 & 0x8000000000000000) == 0)
      {
        if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v3 = *(v16 + 8 * v17 + 32);

        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    v3 = sub_1000AC5AC();
LABEL_10:

    v18 = *(v4 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v91 = v18;
    v20 = [v18 cellForRowAtIndexPath:isa];

    if (v20)
    {
      type metadata accessor for ListPickerTableViewCell();
      v2 = swift_dynamicCastClass();
      if (!v2)
      {
      }
    }

    else
    {
      v2 = 0;
    }

    v21 = *(v11 + 24);
    v22 = sub_1000AB96C();
    v93 = v4;
    if ((v21 & 0xC000000000000001) == 0)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          if (*(*(v21 + 8 * v22 + 32) + 48))
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }

LABEL_66:
        __break(1u);
        return;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_34:
    v44 = *(sub_1000AC5AC() + 48);
    swift_unknownObjectRelease();
    if (v44)
    {
LABEL_18:
      if (v2)
      {
        v23 = v2;
        sub_100014D78();
      }

      v24 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
      v25 = v93;
      swift_beginAccess();
      if (*(*(v25 + v24) + 16) && (v26 = *(v25 + v24), , sub_10004F218(a1), v28 = v27, , (v28 & 1) != 0))
      {
        v29 = a1;
        v30 = v93;
        swift_beginAccess();
        sub_10001CDBC(v29);
        swift_endAccess();
        v31 = v30;

        if (!*(*(v30 + v24) + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v32 = a1;
        v33 = v93;
        swift_beginAccess();

        v34 = *(v33 + v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v33 + v24);
        *(v33 + v24) = 0x8000000000000000;
        sub_10003A538(v3, v32, isUniquelyReferenced_nonNull_native);
        v36 = v95;
        *(v33 + v24) = v95;
        swift_endAccess();
        v31 = v33;
        if (!*(v36 + 16))
        {
          goto LABEL_26;
        }
      }

      if (*(v31 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) != 1)
      {
        v37 = sub_10008240C();
        v42 = v41;
        ObjectType = swift_getObjectType();
        (*(v42 + 48))(1, ObjectType, v42);
        goto LABEL_28;
      }

LABEL_26:
      v37 = sub_10008240C();
      v39 = v38;
      v40 = swift_getObjectType();
      (*(v39 + 48))(0, v40, v39);
LABEL_28:

LABEL_62:

      return;
    }

LABEL_35:
    v87 = v2;
    v45 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
    v46 = a1;
    v47 = v93;
    v48 = swift_beginAccess();
    v49 = *(v47 + v45);
    __chkstk_darwin(v48, v50);
    *(&v84 - 2) = v46;

    v86 = sub_10001CA4C(sub_10001E8E0, (&v84 - 4), v49);
    v51 = sub_100060178(v46, v86);
    v90 = v46;
    v85 = v3;
    if (v51)
    {
      swift_beginAccess();
      sub_10001CDBC(v46);
      swift_endAccess();

      if (*(*(v47 + v45) + 16))
      {
LABEL_37:
        v52 = *(v47 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) ^ 1;
LABEL_40:
        v56 = v87;
        v57 = sub_10008240C();
        v59 = v58;
        v60 = swift_getObjectType();
        (*(v59 + 48))(v52 & 1, v60, v59);

        if (v56)
        {
          v61 = v56;
          sub_100014D78();
        }

        v62 = *(v86 + 16);
        if (v62)
        {
          v84 = v11;
          v63 = *(v92 + 16);
          v64 = v86 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v94 = *(v92 + 72);
          v65 = (v92 + 8);
          v92 += 16;
          v88 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped;
          v89 = v63;
          v63(v10, v64, v6);
          while (1)
          {
            sub_10001E92C();
            if ((sub_1000AC01C() & 1) == 0)
            {
              v71 = sub_1000AB92C().super.isa;
              v72 = [v91 cellForRowAtIndexPath:{v71, v84, v85}];

              if (v72)
              {
                type metadata accessor for ListPickerTableViewCell();
                v73 = swift_dynamicCastClass();
                if (v73)
                {
                  v74 = v72;
                  sub_100014D78();
                }

                v75 = v93;
              }

              else
              {
                v73 = 0;
                v75 = v93;
              }

              swift_beginAccess();
              v76 = *(v75 + v45);
              v77 = sub_10004F218(v10);
              if (v78)
              {
                v79 = v77;
                v80 = *(v75 + v45);
                v81 = swift_isUniquelyReferenced_nonNull_native();
                v82 = *(v75 + v45);
                v95 = v82;
                *(v75 + v45) = 0x8000000000000000;
                if (!v81)
                {
                  sub_10003AB68();
                  v82 = v95;
                }

                (*v65)(*(v82 + 48) + v79 * v94, v6);
                v83 = *(*(v82 + 56) + 8 * v79);

                sub_10003A130(v79, v82);
                *(v75 + v45) = v82;
              }

              swift_endAccess();
              v66 = *(*(v75 + v45) + 16) && *(v75 + v88) != 1;
              v67 = sub_10008240C();
              v69 = v68;
              v70 = swift_getObjectType();
              (*(v69 + 48))(v66, v70, v69);

              v63 = v89;
            }

            (*v65)(v10, v6);
            v64 += v94;
            if (!--v62)
            {
              break;
            }

            v63(v10, v64, v6);
          }
        }

        v2 = v87;
        goto LABEL_62;
      }
    }

    else
    {
      swift_beginAccess();

      v53 = *(v47 + v45);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v95 = *(v47 + v45);
      *(v47 + v45) = 0x8000000000000000;
      sub_10003A538(v3, v46, v54);
      v55 = v95;
      *(v47 + v45) = v95;
      swift_endAccess();
      if (*(v55 + 16))
      {
        goto LABEL_37;
      }
    }

    v52 = 0;
    goto LABEL_40;
  }
}

uint64_t sub_10001CA4C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a2;
  v6 = sub_1000AB97C();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6, v8);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v49 = &v44 - v13;
  result = __chkstk_darwin(v12, v14);
  v54 = a3;
  v55 = &v44 - v17;
  v18 = 0;
  v21 = *(a3 + 64);
  v20 = a3 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v52 = v16;
  v53 = v16 + 32;
  v47 = (v16 + 8);
  v48 = v16 + 16;
  v45 = _swiftEmptyArrayStorage;
  while (1)
  {
    v26 = v18;
    if (!v24)
    {
      break;
    }

    v27 = v4;
LABEL_10:
    v28 = *(v54 + 48);
    v29 = v52;
    v46 = *(v52 + 72);
    v30 = v49;
    (*(v52 + 16))(v49, v28 + v46 * (__clz(__rbit64(v24)) | (v18 << 6)), v6);
    v31 = *(v29 + 32);
    v32 = v6;
    v33 = v55;
    v34 = v32;
    v31(v55, v30);
    v35 = v50(v33);
    v4 = v27;
    if (v27)
    {
      (*v47)(v55, v34);
      v43 = v45;

      return v43;
    }

    v24 &= v24 - 1;
    if (v35)
    {
      v6 = v34;
      (v31)(v44, v55, v34);
      v36 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10009C238(0, v36[2] + 1, 1);
        v6 = v34;
        v36 = v56;
      }

      v39 = v36[2];
      v38 = v36[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v42 = v39 + 1;
        v45 = v39;
        sub_10009C238(v38 > 1, v39 + 1, 1);
        v40 = v42;
        v39 = v45;
        v6 = v34;
        v36 = v56;
      }

      v36[2] = v40;
      v41 = *(v52 + 80);
      v45 = v36;
      result = (v31)(v36 + ((v41 + 32) & ~v41) + v39 * v46, v44, v6);
    }

    else
    {
      v6 = v34;
      result = (*v47)(v55, v34);
    }
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v25)
    {

      return v45;
    }

    v24 = *(v20 + 8 * v18);
    ++v26;
    if (v24)
    {
      v27 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CDBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10004F218(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10003AB68();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1000AB97C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_10003A130(v6, v9);
  *v2 = v9;
  return v12;
}

id sub_10001CE84()
{
  v64 = sub_1000AB97C();
  v1 = *(v64 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v64, v3);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v57 = v53 - v8;
  v9 = sub_10000413C(&qword_1000EFE88, &qword_1000B1198);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v53 - v16;
  if (qword_1000EEE88 != -1)
  {
LABEL_25:
    swift_once();
  }

  sub_1000AC29C();
  sub_1000ABA5C();
  v18 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  v53[0] = v18;
  v19 = *(v0 + v18);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v53[1] = v1 + 16;
  v62 = v0;
  v63 = (v1 + 32);
  v58 = v1;
  v59 = v19;
  v61 = (v1 + 8);

  v1 = 0;
  v55 = v14;
  v56 = v6;
  v54 = v17;
  v60 = v20;
  while (1)
  {
    if (!v23)
    {
      if (v24 <= v1 + 1)
      {
        v26 = v1 + 1;
      }

      else
      {
        v26 = v24;
      }

      v0 = v26 - 1;
      while (1)
      {
        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v25 >= v24)
        {
          v45 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
          (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
          v23 = 0;
          v1 = v0;
          goto LABEL_17;
        }

        v23 = *(v20 + 8 * v25);
        ++v1;
        if (v23)
        {
          v1 = v25;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v25 = v1;
LABEL_16:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = v27 | (v25 << 6);
    v30 = v58;
    v29 = v59;
    v31 = v57;
    v32 = v64;
    (*(v58 + 16))(v57, *(v59 + 48) + *(v58 + 72) * v28, v64);
    v33 = *(*(v29 + 56) + 8 * v28);
    v34 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v14 = v55;
    v36(v55, v31, v32);
    *&v14[v35] = v33;
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);

    v6 = v56;
    v17 = v54;
LABEL_17:
    sub_10001E870(v14, v17);
    v37 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
    if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
    {
      break;
    }

    v38 = *&v17[*(v37 + 48)];

    (*v63)(v6, v17, v64);
    v39 = v62;
    sub_10001C260(v6);
    v40 = *(v39 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v42 = [v40 cellForRowAtIndexPath:isa];

    if (v42)
    {
      [v42 setAccessoryType:0];
    }

    v43 = sub_1000AB92C().super.isa;
    v44 = [v40 cellForRowAtIndexPath:v43];

    v20 = v60;
    if (v44)
    {
      [v44 setSelected:0];
    }

    (*v61)(v6, v64);
  }

  v46 = v62;
  v47 = *(v62 + v53[0]);
  *(v62 + v53[0]) = &_swiftEmptyDictionarySingleton;

  v48 = sub_10008240C();
  v50 = v49;
  ObjectType = swift_getObjectType();
  (*(v50 + 48))(0, ObjectType, v50);

  return [*(v46 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
}

void sub_10001D420()
{
  v1 = v0;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_1000ABA5C();
  v2 = *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v2)
  {
    goto LABEL_7;
  }

  *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) = 1;

  v3 = sub_10008240C();
  v5 = v4;
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(0, ObjectType, v5);

  v7 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_10009EFA4(*(v8 + 16), 0);
    v11 = *(sub_1000AB97C() - 8);
    v19 = sub_1000A3EF4(&v21, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);

    sub_100012760();
    if (v19 != v9)
    {
      __break(1u);
LABEL_7:
      sub_10001E824();
      v20 = sub_1000AC3FC();
      sub_1000AC2BC();
      sub_1000ABA5C();

      return;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for IMBListResponse();
  v12 = swift_allocObject();
  v12[4] = 0;
  v12[2] = v2;
  v21 = v10;

  sub_1000A17F4(&v21);

  v13 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v12[3] = v21;
  sub_100060250(v13, *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message));
  v14 = v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      v16 = swift_getObjectType();
      v17 = *(v15 + 16);
      v18 = type metadata accessor for IMBListPickerTableViewController();
      v17(v1, v18, v16, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

unint64_t sub_10001D838(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000AC02C();
  v7 = [a1 dequeueReusableCellWithIdentifier:v6];

  if (v7)
  {
    type metadata accessor for ListPickerTableViewCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled;
      *(v8 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled) = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled);
      v11 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
      v12 = sub_100015000();
      [v12 setBackgroundColor:v11];

      v13 = *(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
      if (!v13)
      {
LABEL_13:
        v20 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect;
        if ((*(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect) & 1) != 0 || sub_1000AB96C() != 1)
        {
          v21 = 1.0;
        }

        else
        {
          v21 = 0.3;
        }

        v22 = [v9 contentView];
        [v22 setAlpha:v21];

        if (*(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon) != 1)
        {
          goto LABEL_40;
        }

        v23 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
        swift_beginAccess();
        if (!*(*(v3 + v23) + 16) || (, sub_10004F218(a2), v25 = v24, , (v25 & 1) == 0))
        {
          v34 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
          if (v9[v10] == 1)
          {
            v35 = objc_opt_self();
            v36 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString];
            v37 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString + 8];
            v38 = sub_1000AC02C();
            v39 = [v35 kitImageNamed:v38];

            if (v39)
            {
              [v39 size];
              v40 = [v35 _tintedImageForSize:*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor] withTint:0 effectsImage:v39 maskImage:0 style:?];
            }

            else
            {
              v40 = 0;
            }

            [v34 setImage:v40];
          }

          else
          {
            [*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setImage:0];
          }

          v44 = 0;
          goto LABEL_39;
        }

        v26 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
        if (v9[v10])
        {
          v27 = objc_opt_self();
          v28 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString];
          v29 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString + 8];
          v30 = sub_1000AC02C();
          v31 = [v27 kitImageNamed:v30];

          if (!v31)
          {
            v43 = 0;
            goto LABEL_35;
          }

          [v31 size];
          v32 = [v27 _tintedImageForSize:*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor] withTint:0 effectsImage:v31 maskImage:0 style:?];
        }

        else
        {
          v41 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName];
          v42 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName + 8];
          v31 = sub_1000AC02C();
          v32 = [objc_opt_self() systemImageNamed:v31];
        }

        v43 = v32;

LABEL_35:
        [v26 setImage:v43];

        v44 = 1;
LABEL_39:
        v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon] = v44;
LABEL_40:
        v45 = v7;
        [v9 setSelectionStyle:0];
        if ((*(v3 + v20) & 1) == 0)
        {
          [*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setHidden:1];
        }

        if (sub_10002CE60() != 2)
        {
          goto LABEL_46;
        }

        v46 = sub_1000AB95C();
        result = [a1 numberOfRowsInSection:sub_1000AB96C()];
        if (!__OFSUB__(result, 1))
        {
          if (v46 == result - 1)
          {
            v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 0;
            v47 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView];
            [v47 setHidden:1];
LABEL_47:

            return v9;
          }

LABEL_46:
          v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 1;
          v47 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView];
          [v47 setHidden:0];
          goto LABEL_47;
        }

        goto LABEL_55;
      }

      v14 = *(v13 + 24);

      result = sub_1000AB96C();
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = sub_1000AC5AC();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_53;
        }

        v16 = *(v14 + 8 * result + 32);
      }

      v17 = *(v16 + 40);

      result = sub_1000AB95C();
      if ((v17 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v17 + 8 * result + 32);

LABEL_12:

            v19 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem];
            *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem] = v18;
            swift_retain_n();

            sub_100014A48();

            goto LABEL_13;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return result;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_51:
      v18 = sub_1000AC5AC();
      goto LABEL_12;
    }
  }

  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  v33 = objc_allocWithZone(UITableViewCell);

  return [v33 init];
}

uint64_t sub_10001DFFC(uint64_t result, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v7 = result;
      v8 = *(v6 + 8 * a2 + 32);
      v9 = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v24 = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);

  v8 = sub_1000AC5AC();
LABEL_6:
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = sub_1000AC02C(), v14 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:v13], v13, !v14))
  {

    return 0;
  }

  type metadata accessor for IMBDefaultSectionHeader();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  v3 = *(result + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel);
  v15 = *(v4 + 24);
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v16 = result;
    v25 = v3;
    v17 = sub_1000AC5AC();
    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v16 = result;
    v17 = *(v15 + 8 * a2 + 32);
    v18 = v3;

LABEL_15:
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);

    sub_1000AC0FC();

    v21 = sub_1000AC02C();

    [v3 setText:v21];

    v22 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
    v23 = sub_10008D2BC();
    [v23 setBackgroundColor:v22];

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E3B8(void *a1)
{
  v2 = sub_1000AB97C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v8 = a1;
  sub_10001C260(v7);

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_10001E680()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);

  v2 = *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems);
}

id sub_10001E6C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBListPickerTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E7C8(uint64_t a1)
{
  v2 = type metadata accessor for URLHelper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001E824()
{
  result = qword_1000F0070;
  if (!qword_1000F0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0070);
  }

  return result;
}

uint64_t sub_10001E870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EFE88, &qword_1000B1198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_10001E8E0()
{
  v1 = *(v0 + 16);
  v2 = sub_1000AB96C();
  return v2 == sub_1000AB96C();
}

unint64_t sub_10001E92C()
{
  result = qword_1000EFE98;
  if (!qword_1000EFE98)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE98);
  }

  return result;
}

uint64_t sub_10001E984(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(*(v3 + 8 * a1 + 32) + 40);
      if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
        return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:

LABEL_15:
    v9 = sub_1000AC65C();
    goto LABEL_16;
  }

  v6 = *(v2 + 24);

  v7 = sub_1000AC5AC();

  v8 = *(v7 + 40);

  swift_unknownObjectRelease();
  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  return v9;
}

unint64_t sub_10001EA7C(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 countryCode];
  v5 = sub_1000AC06C();
  v7 = v6;

  v93 = &type metadata for String;
  *&v92 = v5;
  *(&v92 + 1) = v7;
  sub_100006910(&v92, v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = &_swiftEmptyDictionarySingleton;
  sub_10003A3E8(v96, 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
  v9 = v95;
  v97 = v95;
  v10 = [v2 currencyCode];
  v11 = sub_1000AC06C();
  v13 = v12;

  v93 = &type metadata for String;
  *&v92 = v11;
  *(&v92 + 1) = v13;
  sub_100006910(&v92, v96);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v9;
  sub_10003A3E8(v96, 0x79636E6572727563, 0xEC00000065646F43, v14);
  v15 = v95;
  v16 = [v2 supportedCountries];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_1000AC26C();

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_10009EF1C(*(v18 + 16), 0);
  v21 = sub_1000A3C48(&v92, v20 + 4, v19, v18);
  sub_100012760();
  if (v21 != v19)
  {
    __break(1u);
LABEL_5:

    v20 = &_swiftEmptyArrayStorage;
  }

  v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  *&v92 = v20;
  sub_100006910(&v92, v96);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v15;
  sub_10003A3E8(v96, 0xD000000000000012, 0x80000001000B5DD0, v22);
  v15 = v95;
  v97 = v95;
LABEL_7:
  v23 = [v2 merchantIdentifier];
  v24 = sub_1000AC06C();
  v26 = v25;

  v93 = &type metadata for String;
  *&v92 = v24;
  *(&v92 + 1) = v26;
  sub_100006910(&v92, v96);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v94 = &_swiftEmptyDictionarySingleton;
  sub_10003A3E8(v96, 0xD000000000000012, 0x80000001000B70D0, v27);
  v28 = v94;
  v95 = v94;
  v29 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);
  if (v29)
  {
    v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
    *&v92 = v29;
    sub_100006910(&v92, v96);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v28;
    sub_10003A3E8(v96, 0xD000000000000011, 0x80000001000B5B80, v30);
    v95 = v94;
  }

  else
  {
    sub_100039E5C(0xD000000000000011, 0x80000001000B5B80, &v92);
    sub_1000172E0(&v92);
  }

  v31 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities);
  if (v31)
  {
    v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
    *&v92 = v31;
    sub_100006910(&v92, v96);

    v32 = v95;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v32;
    sub_10003A3E8(v96, 0xD000000000000014, 0x80000001000B5B60, v33);
    v34 = v94;
    v95 = v94;
  }

  else
  {
    sub_100039E5C(0xD000000000000014, 0x80000001000B5B60, &v92);
    sub_1000172E0(&v92);
    v34 = v95;
  }

  v93 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *&v92 = v34;
  sub_100006910(&v92, v96);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v15;
  sub_10003A3E8(v96, 0x796150656C707061, 0xE800000000000000, v35);
  v97 = v94;
  v36 = [v2 requiredBillingContactFields];
  type metadata accessor for PKContactField(0);
  sub_10001F618();
  v37 = sub_1000AC26C();

  v38 = sub_100081820(v37);

  v39 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  v93 = v39;
  *&v92 = v38;
  sub_100006910(&v92, v96);
  v40 = v97;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v40;
  sub_10003A3E8(v96, 0xD00000000000001CLL, 0x80000001000B6120, v41);
  v97 = v94;
  v42 = [v2 requiredShippingContactFields];
  v43 = sub_1000AC26C();

  v44 = sub_100081820(v43);

  v93 = v39;
  *&v92 = v44;
  sub_100006910(&v92, v96);
  v45 = v97;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v45;
  sub_10003A3E8(v96, 0xD00000000000001CLL, 0x80000001000B6120, v46);
  v97 = v94;
  v47 = [v2 paymentSummaryItems];
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v48 = sub_1000AC19C();

  if (v48 >> 62)
  {
    v49 = sub_1000AC65C();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v2;
  if (v49)
  {
    *&v92 = &_swiftEmptyArrayStorage;
    sub_10009C1F8(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    v89 = a1;
    v50 = 0;
    v51 = v92;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v52 = sub_1000AC5AC();
      }

      else
      {
        v52 = *(v48 + 8 * v50 + 32);
      }

      v53 = v52;
      v54 = [v52 dictionaryRepresentation];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1000ABFBC();
      }

      else
      {

        v56 = 0;
      }

      *&v92 = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_10009C1F8((v57 > 1), v58 + 1, 1);
        v51 = v92;
      }

      ++v50;
      v51[2] = v58 + 1;
      v51[v58 + 4] = v56;
    }

    while (v49 != v50);

    a1 = v89;
  }

  else
  {

    v51 = &_swiftEmptyArrayStorage;
  }

  v59 = sub_10000413C(&qword_1000EF640, &qword_1000B0460);
  v93 = v59;
  *&v92 = v51;
  sub_100006910(&v92, v96);
  v60 = v97;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v60;
  sub_10003A3E8(v96, 0x6D657449656E696CLL, 0xE900000000000073, v61);
  v97 = v94;
  v62 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  v63 = &_swiftEmptyArrayStorage;
  if (v62)
  {
    v64 = [v62 shippingMethods];
    if (v64)
    {
      v65 = v64;
      sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
      v66 = sub_1000AC19C();

      if (v66 >> 62)
      {
LABEL_48:
        v67 = sub_1000AC65C();
        if (!v67)
        {
          goto LABEL_49;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v66 = &_swiftEmptyArrayStorage;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    v66 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_48;
    }
  }

  v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v67)
  {
LABEL_49:

    goto LABEL_50;
  }

LABEL_35:
  *&v92 = &_swiftEmptyArrayStorage;
  sub_10009C1F8(0, v67 & ~(v67 >> 63), 0);
  if (v67 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v90 = v59;
  v68 = 0;
  v63 = v92;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v69 = sub_1000AC5AC();
    }

    else
    {
      v69 = *(v66 + 8 * v68 + 32);
    }

    v70 = v69;
    v71 = [v69 dictionaryRepresentation];
    if (v71)
    {
      v72 = v71;
      v73 = sub_1000ABFBC();
    }

    else
    {

      v73 = 0;
    }

    *&v92 = v63;
    v75 = v63[2];
    v74 = v63[3];
    if (v75 >= v74 >> 1)
    {
      sub_10009C1F8((v74 > 1), v75 + 1, 1);
      v63 = v92;
    }

    ++v68;
    v63[2] = v75 + 1;
    v63[v75 + 4] = v73;
  }

  while (v67 != v68);

  v2 = v91;
  v59 = v90;
LABEL_50:
  v93 = v59;
  *&v92 = v63;
  sub_100006910(&v92, v96);
  v76 = v97;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v76;
  sub_10003A3E8(v96, 0x676E697070696873, 0xEF73646F6874654DLL, v77);
  v97 = v94;
  v78 = [v2 paymentSummaryItems];
  v79 = sub_1000AC19C();

  if (!(v79 >> 62))
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_52;
    }

LABEL_61:

LABEL_62:
    sub_100039E5C(0x6C61746F74, 0xE500000000000000, &v92);
    sub_1000172E0(&v92);
    return v97;
  }

  v80 = sub_1000AC65C();
  if (!v80)
  {
    goto LABEL_61;
  }

LABEL_52:
  v81 = __OFSUB__(v80, 1);
  result = v80 - 1;
  if (v81)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
LABEL_66:
    v83 = sub_1000AC5AC();
LABEL_57:
    v84 = v83;

    v85 = [v84 dictionaryRepresentation];

    if (v85)
    {
      v86 = sub_1000ABFBC();

      v93 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
      *&v92 = v86;
      sub_100006910(&v92, v96);
      v87 = v97;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v87;
      sub_10003A3E8(v96, 0x6C61746F74, 0xE500000000000000, v88);
      return v94;
    }

    goto LABEL_62;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = *(v79 + 8 * result + 32);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001F618()
{
  result = qword_1000EF148;
  if (!qword_1000EF148)
  {
    type metadata accessor for PKContactField(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF148);
  }

  return result;
}

uint64_t sub_10001F670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5526864;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (a2 != 2)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

uint64_t sub_10001F784(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001000B55D0;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = 0x80000001000B55B0;
    }

    else
    {
      v5 = 0x80000001000B5590;
    }
  }

  v6 = 0x80000001000B55D0;
  if (a2 == 2)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x80000001000B55B0;
  if (a2)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (!a2)
  {
    v7 = 0x80000001000B5590;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

unint64_t sub_10001F8A8(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0x6464416C69616D65;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x636974656E6F6870;
      break;
    case 4:
      result = 0x64416C6174736F70;
      break;
    case 5:
      result = 0x4C73736572646461;
      break;
    case 6:
      result = 0x7974696C61636F6CLL;
      break;
    case 7:
      result = 0x6C61636F4C627573;
      break;
    case 8:
      result = 0x6F436C6174736F70;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7972746E756F63;
      break;
    case 12:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10001FA88()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FB50()
{
  *v0;
  *v0;
  sub_1000AC11C();
}

Swift::Int sub_10001FC04()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FCC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020938(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001FCF8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000001000B55D0;
  }

  v4 = 0x80000001000B5590;
  v5 = 0xD000000000000015;
  if (*v1)
  {
    v4 = 0x80000001000B55B0;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10001FD7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F8A8(*a1);
  v5 = v4;
  if (v3 == sub_10001F8A8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000AC7AC();
  }

  return v8 & 1;
}

Swift::Int sub_10001FE04()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_10001F8A8(v1);
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FE68()
{
  sub_10001F8A8(*v0);
  sub_1000AC11C();
}

Swift::Int sub_10001FEBC()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_10001F8A8(v1);
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FF1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020984(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001FF4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F8A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_10001FF78()
{
  v1 = v0;
  v35 = &_swiftEmptyDictionarySingleton;
  v2 = sub_1000AC06C();
  v4 = v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v34 = &type metadata for String;
  if (!v6)
  {
    v5 = 0;
  }

  v7 = 0xE000000000000000;
  if (v6)
  {
    v7 = v6;
  }

  *&v33 = v5;
  *(&v33 + 1) = v7;
  sub_100006910(&v33, v32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v32, v2, v4, isUniquelyReferenced_nonNull_native);

  v9 = &_swiftEmptyDictionarySingleton;
  v35 = &_swiftEmptyDictionarySingleton;
  v10 = &CNPostalAddressStreetKey;
  v11 = &PKContactFieldPhoneNumber;
  switch(*(v1 + 17))
  {
    case 1:
      v11 = &PKContactFieldEmailAddress;
      goto LABEL_13;
    case 2:
      v11 = &PKContactFieldName;
      goto LABEL_13;
    case 3:
      v11 = &PKContactFieldPhoneticName;
      goto LABEL_13;
    case 4:
      v11 = &PKContactFieldPostalAddress;
      goto LABEL_13;
    case 5:
      goto LABEL_21;
    case 6:
      v10 = &CNPostalAddressCityKey;
      goto LABEL_21;
    case 7:
      v10 = &CNPostalAddressSubLocalityKey;
      goto LABEL_21;
    case 8:
      v10 = &CNPostalAddressPostalCodeKey;
      goto LABEL_21;
    case 9:
      v10 = &CNPostalAddressStateKey;
      goto LABEL_21;
    case 0xA:
      v10 = &CNPostalAddressSubAdministrativeAreaKey;
      goto LABEL_21;
    case 0xB:
      v10 = &CNPostalAddressCountryKey;
      goto LABEL_21;
    case 0xC:
      v10 = &CNPostalAddressISOCountryCodeKey;
LABEL_21:
      v13 = sub_1000AC06C();
      v15 = v19;
      v20 = *v10;
      v21 = sub_1000AC06C();
      v23 = v22;
      v16 = sub_1000AC06C();
      v18 = v24;
      if (!v23)
      {
        goto LABEL_23;
      }

      v34 = &type metadata for String;
      *&v33 = v21;
      *(&v33 + 1) = v23;
      v25 = v16;
      sub_100006910(&v33, v32);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v32, v25, v18, v26);

      v35 = &_swiftEmptyDictionarySingleton;
      break;
    case 0xD:
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2AC();
      sub_1000ABA5C();
      return v9;
    default:
LABEL_13:
      v12 = *v11;
      v13 = sub_1000AC06C();
      v15 = v14;
      v16 = sub_1000AC06C();
      v18 = v17;
LABEL_23:
      sub_100039E5C(v16, v18, v32);

      sub_1000172E0(v32);
      v9 = v35;
      break;
  }

  v27 = sub_1000AC06C();
  v29 = v28;
  v34 = &type metadata for String;
  *&v33 = v13;
  *(&v33 + 1) = v15;
  sub_100006910(&v33, v32);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v32, v27, v29, v30);

  return v9;
}

void *sub_100020350()
{
  v1 = v0;
  if (*(v0 + 16) > 1u)
  {
    v3 = 0x6E776F6E6B6E75;
    if (*(v0 + 16) == 2)
    {
      v3 = 0xD000000000000014;
      v2 = 0x80000001000B55D0;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  else if (*(v0 + 16))
  {
    v2 = 0x80000001000B55B0;
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0x80000001000B5590;
    v3 = 0xD000000000000016;
  }

  v14 = &type metadata for String;
  *&v13 = v3;
  *(&v13 + 1) = v2;
  sub_100006910(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 1701080931, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v15 = &_swiftEmptyDictionarySingleton;
  v5 = *(v0 + 17);
  if (v5 == 13)
  {
    sub_100039E5C(0x46746361746E6F63, 0xEC000000646C6569, &v13);
    sub_1000172E0(&v13);
    v6 = *(v0 + 32);
    if (v6)
    {
LABEL_10:
      v7 = *(v1 + 24);
      v14 = &type metadata for String;
      *&v13 = v7;
      *(&v13 + 1) = v6;
      sub_100006910(&v13, v12);

      v8 = v15;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v12, 0x6567617373656DLL, 0xE700000000000000, v9);
      return v8;
    }
  }

  else
  {
    v14 = &type metadata for ApplePayContactField;
    LOBYTE(v13) = v5;
    sub_100006910(&v13, v12);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v12, 0x46746361746E6F63, 0xEC000000646C6569, v11);
    v15 = &_swiftEmptyDictionarySingleton;
    v6 = *(v0 + 32);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  sub_100039E5C(0x6567617373656DLL, 0xE700000000000000, &v13);
  sub_1000172E0(&v13);
  return v15;
}

uint64_t sub_10002058C()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ApplePayContactField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplePayContactField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002088C()
{
  result = qword_1000EFF70;
  if (!qword_1000EFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF70);
  }

  return result;
}

unint64_t sub_1000208E4()
{
  result = qword_1000EFF78;
  if (!qword_1000EFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF78);
  }

  return result;
}

uint64_t sub_100020938(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA318;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100020984(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA398;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000209D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for IMBApplePayError();
  v12 = swift_allocObject();
  v13 = sub_100020938(a1, a2);
  if (v13 == 4)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v12 + 16) = v13;
    *(v12 + 24) = a3;
    *(v12 + 32) = a4;
    if (a6)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }

    if (a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    *(v12 + 17) = sub_100020984(v14, v15);
  }

  return v12;
}

uint64_t sub_100020A9C(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_10004F0CC(1701080931, 0xE400000000000000), (v3 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v2, v17), (swift_dynamicCast() & 1) == 0))
  {

    return 0;
  }

  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v4 = sub_10004F0CC(0x6567617373656DLL, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_19;
    }

LABEL_26:

    v13 = 0;
    v14 = 0;
    goto LABEL_27;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v4, v17);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v15;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_19:
  v10 = sub_10004F0CC(0x46746361746E6F63, 0xEC000000646C6569);
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v10, v17);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

LABEL_27:
  result = sub_1000209D0(v15, v16, v7, v8, v13, v14);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100020C5C(void *a1)
{
  v3 = v1;
  v5 = [a1 messageData];
  if (!v5 || (v6 = v5, v7 = [v5 jsonDictionary], v6, !v7))
  {
    sub_100020F2C();
    swift_allocError();
    *v15 = 0;
LABEL_12:
    swift_willThrow();

    goto LABEL_13;
  }

  v8 = sub_1000ABFBC();

  v9 = sub_1000AC06C();
  if (!*(v8 + 16))
  {

    goto LABEL_10;
  }

  v11 = sub_10004F0CC(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1000068B4(*(v8 + 56) + 32 * v11, v23);

  v14 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1000170E0();
    swift_allocError();
    *v16 = 1;
    goto LABEL_12;
  }

  v22[3] = v14;
  sub_100020F80();
  sub_100020FD4();
  sub_1000ABA3C();
  if (!v2)
  {

    sub_10000E738(v22);
    v18 = v23[1];
    v19 = v24;
    v20 = v25;
    v21 = v26;
    *(v3 + 16) = v23[0];
    *(v3 + 24) = v18;
    *(v3 + 32) = v19;
    *(v3 + 40) = v20;
    *(v3 + 48) = v21;
    *(v3 + 56) = v27;
    return v3;
  }

  sub_10000E738(v22);
LABEL_13:
  type metadata accessor for BIAReplyPayload();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_100020EA8()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[8];

  return swift_deallocClassInstance();
}

unint64_t sub_100020F2C()
{
  result = qword_1000F0020;
  if (!qword_1000F0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0020);
  }

  return result;
}

unint64_t sub_100020F80()
{
  result = qword_1000F0028;
  if (!qword_1000F0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0028);
  }

  return result;
}

unint64_t sub_100020FD4()
{
  result = qword_1000F0030;
  if (!qword_1000F0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0030);
  }

  return result;
}

unint64_t sub_10002103C()
{
  result = qword_1000F0038;
  if (!qword_1000F0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0038);
  }

  return result;
}

uint64_t IMBApplePayManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IMBApplePayManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Business18IMBApplePayManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100021288;
}

void sub_100021288(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void IMBApplePayManager.message()()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v57 - v5;
  v7 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
  v8 = [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000AB73C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = [*(v1 + v7) url];
  if (v13)
  {
    v14 = v13;
    sub_1000AB6AC();

    v15 = sub_1000AB6EC();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  }

  else
  {
    v16 = sub_1000AB6EC();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  v17 = [*(v1 + v7) messageGUID];
  if (v17)
  {
    v18 = v17;
    sub_1000AC06C();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [*(v1 + v7) isFromMe];
  if (v12 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    sub_10000E950(v10, v12);
  }

  v23 = sub_1000AB6EC();
  v24 = *(v23 - 8);
  v26 = 0;
  if ((*(v24 + 48))(v6, 1, v23) != 1)
  {
    sub_1000AB67C(v25);
    v26 = v27;
    (*(v24 + 8))(v6, v23);
  }

  if (v20)
  {
    v28 = sub_1000AC02C();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(type metadata accessor for IMBMessage()) initWithData:isa url:v26 messageGUID:v28 isFromMe:v21];

  if (v29)
  {
    v30 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    v31 = v29;

    sub_100026E1C(v31, v30);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000B14C0;
    v33 = [v31 title];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1000AC06C();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v57[4] = v35;
    v57[5] = v37;
    sub_10000413C(&qword_1000EF010, &qword_1000AF6C0);
    v38 = sub_1000AC41C();
    v40 = v39;
    *(v32 + 56) = &type metadata for String;
    v41 = sub_10000587C();
    *(v32 + 64) = v41;
    *(v32 + 32) = v38;
    *(v32 + 40) = v40;

    v42 = [v31 subtitle];

    v57[3] = v42;
    sub_10000413C(&qword_1000F0068, &qword_1000B14D8);
    v43 = sub_1000AC41C();
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v41;
    *(v32 + 72) = v43;
    *(v32 + 80) = v44;

    v45 = [v31 subcaption];
    if (v45)
    {
      v46 = sub_1000AC06C();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v57[1] = v46;
    v57[2] = v48;
    v49 = sub_1000AC41C();
    *(v32 + 136) = &type metadata for String;
    *(v32 + 144) = v41;
    *(v32 + 112) = v49;
    *(v32 + 120) = v50;

    v51 = [v31 messageGUID];

    if (v51)
    {
      v52 = sub_1000AC06C();
      v54 = v53;

      v55 = (v32 + 152);
      *(v32 + 176) = &type metadata for String;
      *(v32 + 184) = v41;
      if (v54)
      {
        *v55 = v52;
LABEL_30:
        *(v32 + 160) = v54;
        sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
        v56 = sub_1000AC3FC();
        sub_1000AC2BC();
        sub_1000ABA5C();

        return;
      }
    }

    else
    {
      v55 = (v32 + 152);
      *(v32 + 176) = &type metadata for String;
      *(v32 + 184) = v41;
    }

    *v55 = 7104878;
    v54 = 0xE300000000000000;
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t IMBApplePayManager.applePayStatus()()
{
  v1 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 1;
  }

  v3 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v3 + 8))
  {
    return 1;
  }

  v5 = *v3;
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AF0E0;
  v7 = sub_10005FCE8(v5);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000587C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v10 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  return v5;
}

uint64_t sub_100021A0C()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = aBlock - v5;
  v7 = sub_1000AB7EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = aBlock - v15;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v17 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  result = swift_beginAccess();
  v20 = *&v1[v18];
  if (!v20)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_10000E784(v6, &qword_1000F0270, &unk_1000B0480);
  }

  if ((*(v20 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0 && *(v20 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState) == 3)
  {
    return result;
  }

  v21 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  sub_10000E66C(v20 + v21, v6, &qword_1000F0270, &unk_1000B0480);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000E784(v6, &qword_1000F0270, &unk_1000B0480);
  }

  (*(v8 + 32))(v16, v6, v7);
  if ((*(v20 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0 && *(v20 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState) == 3)
  {
    return (*(v8 + 8))(v16, v7);
  }

  sub_1000AB7DC();
  sub_10002A258();
  v22 = sub_1000AC00C();
  v23 = *(v8 + 8);
  v23(v13, v7);
  if ((v22 & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer;
    [*&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer] invalidate];
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v26 = objc_allocWithZone(NSTimer);
    v27 = v1;
    isa = sub_1000AB77C().super.isa;
    aBlock[4] = sub_10002A2B0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026DB4;
    aBlock[3] = &unk_1000DB6C0;
    v29 = _Block_copy(aBlock);
    v30 = [v26 initWithFireDate:isa interval:0 repeats:v29 block:0.0];
    _Block_release(v29);

    v31 = *&v1[v24];
    *&v1[v24] = v30;
    v32 = v30;

    if (v32)
    {
      v33 = [objc_opt_self() mainRunLoop];
      [v33 addTimer:v32 forMode:NSDefaultRunLoopMode];
    }
  }

  return (v23)(v16, v7);
}

void sub_100021E6C()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  sub_100021EF8();
}

void sub_100021EF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    *v4 = 2;
    *(v4 + 8) = 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

  v6 = sub_10008AFD8();
  v8 = v7;
  v10 = v9;

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0F0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000587C();
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(v11 + 96) = sub_100005A24(0, &qword_1000F0260, NSAttributedString_ptr);
  *(v11 + 104) = sub_10002A1F0();
  *(v11 + 72) = v10;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v12 = v10;
  v13 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong paymentRequestDidUpdate:v1];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall IMBApplePayManager.presentApplePay(with:)(UIWindow_optional with)
{
  if (byte_1000FBEC0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();

    sub_1000ABA5C();
  }

  else
  {
    isa = with.value.super.super.super.isa;
    v3 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v4 = *&v1[v3];
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v5)
      {
        v6 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_window];
        *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_window] = isa;
        v7 = v5;
        v8 = isa;

        v9 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v7];
        v10 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController];
        *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController] = v9;
        v11 = v9;

        [v11 setDelegate:v1];
        byte_1000FBEC0 = 1;
        v12 = swift_allocObject();
        *(v12 + 16) = v1;
        aBlock[4] = sub_100026F9C;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002257C;
        aBlock[3] = &unk_1000DB5B0;
        v13 = _Block_copy(aBlock);
        v14 = v1;

        [v11 presentWithCompletion:v13];
        _Block_release(v13);
      }
    }
  }
}

void sub_1000222E8(char a1, uint64_t a2)
{
  byte_1000FBEC0 = a1;
  if (a1)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();

    sub_1000ABA5C();
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    v3 = *(a2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

    v4 = sub_10008AD70();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000B0620;
    *(v11 + 56) = &type metadata for String;
    v12 = sub_10000587C();
    *(v11 + 64) = v12;
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    v13 = [v8 string];
    v14 = sub_1000AC06C();
    v16 = v15;

    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v12;
    *(v11 + 72) = v14;
    *(v11 + 80) = v16;
    v17 = sub_10005FCE8(v10);
    *(v11 + 136) = &type metadata for String;
    *(v11 + 144) = v12;
    *(v11 + 112) = v17;
    *(v11 + 120) = v18;
    sub_1000ABA5C();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong paymentRequestDidUpdate:a2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10002257C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10002263C()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  v1 = *(v0 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8);
    v3 = objc_allocWithZone(PKPaymentAuthorizationResult);

    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v5 = [v3 initWithStatus:1000 errors:isa];

    v1(v5);
    sub_100026FE0(v1);
  }
}

void sub_1000227D0(void *a1)
{
  v3 = type metadata accessor for Endpoint(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = (&v26 - v10);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  if ([a1 userInfo])
  {
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v26 = v30;
  v27 = v31;
  if (*(&v31 + 1))
  {
    type metadata accessor for IMBDelayedAuthResponse();
    if (swift_dynamicCast())
    {
      v12 = v29;
      v13 = *&v29[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_messageBody];
      v14 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v11 = v13;
      v15 = OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_url;
      v16 = sub_1000AB6EC();
      (*(*(v16 - 8) + 16))(v11 + v14, &v12[v15], v16);
      sub_10002A0C8(v11, v8);
      v17 = type metadata accessor for HttpClient();
      objc_allocWithZone(v17);
      swift_bridgeObjectRetain_n();
      v18 = sub_100031620(v8);
      *(&v27 + 1) = v17;
      v28 = &off_1000DB940;
      *&v26 = v18;
      sub_10002A12C(v11);
      v19 = *sub_1000058D0(&v26, v17);

      v20 = v1;
      sub_100032F2C(v19, v13, v20);

      swift_bridgeObjectRelease_n();
      sub_10000E738(&v26);
      return;
    }
  }

  else
  {
    sub_10000E784(&v26, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v21 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  if (v21)
  {
    v22 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
    v23 = objc_allocWithZone(PKPaymentAuthorizationResult);

    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v25 = [v23 initWithStatus:1 errors:{isa, v26, v27}];

    v21(v25);
    sub_100026FE0(v21);
  }
}

void sub_100022B1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100022F90(a1);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for IMBDelayedAuthResponse());

    sub_10002A188(a1, 0);
    v7 = sub_1000592E4(a1, a3);
    if (v7)
    {
      v8 = v7;
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2BC();
      sub_1000ABA5C();
      v9 = [objc_opt_self() timerWithTimeInterval:a4 target:"handlePaymentAuthorizationRetryWithTimer:" selector:v8 userInfo:0 repeats:*&v8[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay]];
      v10 = *(a4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer);
      *(a4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) = v9;
      v11 = v9;

      v12 = [objc_opt_self() mainRunLoop];
      [v12 addTimer:v11 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2BC();
      sub_1000ABA5C();
      sub_100022D64(a1);
    }
  }
}

void sub_100022D64(uint64_t a1)
{
  v1 = sub_10004DA74(a1);
  v2 = sub_100062390(v1);
  if (v2)
  {
    v11 = v2;
    sub_100027000(v2, v3);
  }

  else
  {
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD00000000000002CLL;
    *(inited + 56) = 0x80000001000B79C0;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000F0250, &qword_1000B1540);
    v6 = objc_allocWithZone(NSError);
    v7 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v9 = [v6 initWithDomain:v7 code:800 userInfo:isa];

    v10 = v9;
    sub_100022F90(v10);
  }
}

void sub_100022F90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB62C();
  v5 = &unk_1000EE000;
  v6 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
  v7 = &off_1000AF000;
  if ([v4 code])
  {
    v8 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
    v9 = [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) rootKey];
    v10 = sub_1000AC06C();
    v12 = v11;

    LODWORD(v9) = [*(v2 + v8) isFromMe];
    v13 = sub_1000AC06C();
    v15 = v14;
    v16 = [*(v2 + v8) version];
    v39 = v10;
    if (v9)
    {
      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
      sub_1000AC12C(v40);
      v41._countAndFlagsBits = 0x6465696C706572;
      v41._object = 0xE700000000000000;
      sub_1000AC12C(v41);
    }

    v42._countAndFlagsBits = 46;
    v42._object = 0xE100000000000000;
    sub_1000AC12C(v42);
    v43._countAndFlagsBits = v13;
    v43._object = v15;
    sub_1000AC12C(v43);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000AF0E0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10000587C();
    *(v17 + 32) = v39;
    *(v17 + 40) = v12;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v18 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v19 = qword_1000FC030;
    v20 = sub_1000AC02C();

    [v19 mt_log_icloud_messages_apps_businessframework:v20 version:v16];

    v21 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v22 = *(v2 + v21);
    if (v22)
    {
      v23 = v22 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v23 = 7;
      *(v23 + 8) = 0;
    }

    v24 = *(v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

    sub_10008A804(7);

    v5 = &unk_1000EE000;
    v7 = &off_1000AF000;
    v6 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong paymentRequestDidUpdate:v2];
      swift_unknownObjectRelease();
    }
  }

  if (v5[464] != -1)
  {
    swift_once();
  }

  v26 = v6[1];
  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v27 = swift_allocObject();
  v38 = *(v7 + 14);
  *(v27 + 16) = v38;
  swift_getErrorValue();
  v28 = sub_1000AC7FC();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_10000587C();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_1000ABA5C();

  v31 = v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion;
  v32 = *(v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v32)
  {
    v33 = *(v31 + 8);
    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v34 = swift_allocObject();
    *(v34 + 16) = v38;
    *(v34 + 32) = a1;
    v35 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10002A1E0(v32);
    swift_errorRetain();
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;

    v37 = [v35 initWithStatus:1 errors:isa];

    v32(v37);
    sub_100026FE0(v32);
  }
}

uint64_t sub_1000234A4(unint64_t a1, void (*a2)(id), uint64_t a3)
{
  v41 = a1;
  v6 = type metadata accessor for Endpoint(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = (&v39 - v13);
  v15 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v39 - v18;
  v20 = sub_1000AB6EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v27 = *(v3 + v26);
  if (v27)
  {
    v40 = a3;
    v28 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
    swift_beginAccess();
    sub_10000E66C(v27 + v28, v19, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      (*(v21 + 32))(v25, v19, v20);
      v29 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody);

      v30 = v29;
      v31 = sub_10009154C(v27, v41);

      v32 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v14 = v31;
      (*(v21 + 16))(v14 + v32, v25, v20);
      sub_10002A0C8(v14, v11);
      v33 = type metadata accessor for HttpClient();
      v34 = objc_allocWithZone(v33);
      v35 = sub_100031620(v11);
      v42[3] = v33;
      v42[4] = &off_1000DB940;
      v42[0] = v35;
      sub_10002A12C(v14);
      v36 = *sub_1000058D0(v42, v33);
      v37 = v40;
      sub_10002A1E0(a2);
      sub_1000326F8(v36, a2, v37);
      sub_100026FE0(a2);

      (*(v21 + 8))(v25, v20);
      return sub_10000E738(v42);
    }
  }

  else
  {
    (*(v21 + 56))(v19, 1, 1, v20);
  }

  return sub_10000E784(v19, &unk_1000F06A0, &unk_1000B0450);
}

uint64_t sub_100023814(uint64_t result, char a2, uint64_t (*a3)(uint64_t))
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      result = 0;
    }

    return a3(result);
  }

  return result;
}

id IMBJITAppBundleManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMBApplePayManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBApplePayManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall IMBApplePayManager.paymentAuthorizationControllerDidFinish(_:)(PKPaymentAuthorizationController a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000AF0E0;
  v4 = [(objc_class *)a1.super.isa description];
  v5 = sub_1000AC06C();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10000587C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1000ABA5C();

  [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer) invalidate];
  [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) invalidate];
  v9[4] = sub_100023BD4;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100023BE0;
  v9[3] = &unk_1000DB5D8;
  v8 = _Block_copy(v9);
  [(objc_class *)a1.super.isa dismissWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100023BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100023C8C(void *a1, void *a2, char *a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000AF0F0;
  v8 = [a1 description];
  v9 = sub_1000AC06C();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  v12 = sub_10000587C();
  *(v7 + 64) = v12;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v13 = [a2 description];
  v14 = sub_1000AC06C();
  v16 = v15;

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v12;
  *(v7 + 72) = v14;
  *(v7 + 80) = v16;
  sub_1000ABA5C();

  v17 = &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v18 = *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v19 = *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
  *v17 = sub_10002A1CC;
  v17[1] = v6;

  sub_100026FE0(v18);
  sub_100027ADC(a2, a3, a4);
  _Block_release(a4);
}

void IMBApplePayManager.paymentAuthorizationController(_:didAuthorizePayment:handler:)(void *a1, void *a2, void (*a3)(id), uint64_t a4)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v10 = [a1 description];
  v11 = sub_1000AC06C();
  v13 = v12;

  *(v9 + 56) = &type metadata for String;
  v14 = sub_10000587C();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v15 = [a2 description];
  v16 = sub_1000AC06C();
  v18 = v17;

  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v14;
  *(v9 + 72) = v16;
  *(v9 + 80) = v18;
  sub_1000ABA5C();

  v19 = (v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  v20 = *(v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  v21 = *(v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8);
  *v19 = a3;
  v19[1] = a4;

  sub_100026FE0(v20);

  sub_10002403C(a2, a3, a4);
}

void sub_10002403C(void *a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v55 = a1;
  v7 = type metadata accessor for Endpoint(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = (&v55 - v13);
  v15 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v55 - v18;
  v20 = sub_1000AB6EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v27 = *&v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v28 = *(v26 + 1);
  v57 = a2;
  *v26 = a2;
  *(v26 + 1) = a3;

  sub_100026FE0(v27);
  v29 = [objc_opt_self() timerWithTimeInterval:v4 target:"extendApplePayTimeout" selector:0 userInfo:0 repeats:29.0];
  v30 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer];
  *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = v29;
  v31 = v29;

  v32 = [objc_opt_self() mainRunLoop];
  [v32 addTimer:v31 forMode:NSDefaultRunLoopMode];

  v33 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v34 = *&v4[v33];
  if (!v34)
  {
    (*(v21 + 56))(v19, 1, 1, v20);
    goto LABEL_6;
  }

  v35 = v25;
  v36 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v34 + v36, v19, &unk_1000F06A0, &unk_1000B0450);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
LABEL_6:
    sub_10000E784(v19, &unk_1000F06A0, &unk_1000B0450);
    v49 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v51 = [v49 initWithStatus:1 errors:{isa, v55}];

    v57(v51);
    return;
  }

  (*(v21 + 32))(v35, v19, v20);

  v37 = sub_10000A744();

  if (v37)
  {
    v38 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
    v39 = v35;
    v40 = sub_100091814(v55);

    v41 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
    *v14 = v40;
    (*(v21 + 16))(v14 + v41, v35, v20);
    v42 = v56;
    sub_10002A0C8(v14, v56);
    v43 = type metadata accessor for HttpClient();
    v44 = objc_allocWithZone(v43);

    v45 = sub_100031620(v42);
    v58[3] = v43;
    v58[4] = &off_1000DB940;
    v58[0] = v45;
    sub_10002A12C(v14);
    v46 = *sub_1000058D0(v58, v43);
    v47 = v31;

    v48 = v4;
    sub_100033720(v46, v47, v40, v48);

    swift_bridgeObjectRelease_n();
    (*(v21 + 8))(v39, v20);
    sub_10000E738(v58);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v52 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v53 = sub_1000AC18C().super.isa;
    v54 = [v52 initWithStatus:1 errors:{v53, v55}];

    v57(v54);
    (*(v21 + 8))(v35, v20);
  }
}

void sub_1000246E0(void *a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for Endpoint(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = (&v42 - v13);
  v15 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v42 - v18;
  v20 = sub_1000AB6EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;
  v28 = [v26 initWithPaymentSummaryItems:isa];

  v29 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
  v30 = sub_10009193C(a1);

  v31 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v32 = *&v4[v31];
  if (v32)
  {
    v42 = v28;
    v33 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v32 + v33, v19, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      (*(v21 + 32))(v25, v19, v20);
      v34 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v14 = v30;
      (*(v21 + 16))(v14 + v34, v25, v20);
      sub_10002A0C8(v14, v11);
      v35 = type metadata accessor for HttpClient();
      v36 = objc_allocWithZone(v35);
      v37 = sub_100031620(v11);
      v45[3] = v35;
      v45[4] = &off_1000DB940;
      v45[0] = v37;
      sub_10002A12C(v14);
      v38 = *sub_1000058D0(v45, v35);
      v39 = v4;
      v40 = v44;

      v41 = v42;
      sub_10003483C(v38, v39, v43, v40, v41);

      (*(v21 + 8))(v25, v20);
      sub_10000E738(v45);
      return;
    }

    v28 = v42;
  }

  else
  {

    (*(v21 + 56))(v19, 1, 1, v20);
  }

  sub_10000E784(v19, &unk_1000F06A0, &unk_1000B0450);
  v43(v28);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();
}

void sub_100024BDC(void *a1, void (*a2)(id), uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Endpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = (&v48 - v12);
  v14 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v48 - v17;
  v19 = sub_1000AB6EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v26 = *&v3[v25];
  if (v26)
  {
    v48 = v10;
    v27 = a1;
    v28 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v26 + v28, v18, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v24, v18, v19);
      v29 = *(v26 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
      *(v26 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = v27;

      v30 = v27;

      v31 = *&v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v32 = v3;
      v33 = sub_100091C34(v30);

      v34 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v13 = v33;
      (*(v20 + 16))(v13 + v34, v24, v19);
      v35 = v48;
      sub_10002A0C8(v13, v48);
      v36 = type metadata accessor for HttpClient();
      v37 = objc_allocWithZone(v36);
      v38 = sub_100031620(v35);
      v51[3] = v36;
      v51[4] = &off_1000DB940;
      v51[0] = v38;
      sub_10002A12C(v13);
      v39 = *sub_1000058D0(v51, v36);
      v40 = v32;
      v41 = v50;

      sub_10003593C(v39, v40, v49, v41);

      (*(v20 + 8))(v24, v19);
      sub_10000E738(v51);
      return;
    }
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  sub_10000E784(v18, &unk_1000F06A0, &unk_1000B0450);
  v42 = *&v3[v25];
  if (v42)
  {
    v43 = *(v42 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v43)
    {

      v44 = [v43 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();
    }
  }

  v45 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;

  v47 = [v45 initWithPaymentSummaryItems:isa];

  v49(v47);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();
}

void sub_10002511C(void *a1, int a2, void *a3, void *a4, void *aBlock, SEL *a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t, void *))
{
  v15 = _Block_copy(aBlock);
  _Block_copy(v15);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_100029F2C(v16, v17, v18, v15, a6, a7, a8, a9);
  _Block_release(v15);
  _Block_release(v15);
}

uint64_t sub_100025218(void *a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t))
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0F0;
  v12 = [a1 description];
  v13 = sub_1000AC06C();
  v15 = v14;

  *(v11 + 56) = &type metadata for String;
  v16 = sub_10000587C();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v17 = [a2 *a5];
  v18 = sub_1000AC06C();
  v20 = v19;

  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v18;
  *(v11 + 80) = v20;
  sub_1000ABA5C();

  return a8(a2, a3, a4);
}

void sub_1000253AC(void *a1, void (*a2)(id), uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Endpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = (&v54 - v11);
  v13 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v54 - v16;
  v18 = sub_1000AB6EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v25 = v3;
  v26 = *&v3[v24];
  if (v26)
  {
    v27 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v26 + v27, v17, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v23, v17, v18);
      v28 = *&v25[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v29 = sub_100091DC4(a1);

      v30 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v12 = v29;
      (*(v19 + 16))(v12 + v30, v23, v18);
      v31 = v54;
      sub_10002A0C8(v12, v54);
      v32 = type metadata accessor for HttpClient();
      v33 = objc_allocWithZone(v32);
      v34 = sub_100031620(v31);
      v57[3] = v32;
      v57[4] = &off_1000DB940;
      v57[0] = v34;
      sub_10002A12C(v12);
      v35 = *sub_1000058D0(v57, v32);
      v36 = v25;
      v37 = v56;

      sub_10003657C(v35, v36, v55, v37);

      (*(v19 + 8))(v23, v18);
      sub_10000E738(v57);
      return;
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_10000E784(v17, &unk_1000F06A0, &unk_1000B0450);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  v38 = _swiftEmptyArrayStorage;
  sub_1000ABA5C();
  v39 = *&v25[v24];
  if (v39)
  {
    v40 = *(v39 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v40)
    {
      v41 = *&v25[v24];

      v42 = [v40 shippingMethods];
      if (v42)
      {
        v43 = v42;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v38 = sub_1000AC19C();

        goto LABEL_13;
      }
    }

    v38 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  if (v38 >> 62)
  {
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);

    sub_1000AC64C();
  }

  else
  {

    sub_1000AC7BC();
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  }

  v44 = *&v25[v24];
  if (v44)
  {
    v45 = *(v44 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v45)
    {
      v46 = *&v25[v24];

      v47 = [v45 shippingMethods];
      if (v47)
      {
        v48 = v47;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();
      }

      else
      {
      }
    }
  }

  v49 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  isa = sub_1000AC18C().super.isa;
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v51 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v52 = sub_1000AC18C().super.isa;

  v53 = [v49 initWithErrors:isa paymentSummaryItems:v51 shippingMethods:v52];

  v55(v53);
}

UIWindow_optional __swiftcall IMBApplePayManager.presentationWindow(for:)(PKPaymentAuthorizationController a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_window);
  v3 = v2;
  v5 = v2;
  result.value.super.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

void *sub_100025A7C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

  sub_10008A804(7);

  v3 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
  if (v3)
  {
    v7[4] = IMBJITAppBundleState.rawValue.getter;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100023BE0;
    v7[3] = &unk_1000DB620;
    v4 = _Block_copy(v7);
    v5 = v3;
    [v5 dismissWithCompletion:v4];
    _Block_release(v4);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result paymentRequestDidUpdate:v1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100025BAC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  if (*(v2 + v4))
  {
    v5 = *(v2 + v4);

    v6 = sub_10004DA74(a1);
    v7 = sub_10000692C(v6);

    v8 = *(v2 + v4);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + v4) = v7;

  sub_100021A0C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0E0;
  v10 = *(v2 + v4);
  if (v10 && (v11 = v10 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, (*(v11 + 8) & 1) == 0))
  {
    v12 = sub_10005FCE8(*v11);
    v13 = v14;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10000587C();
  v15 = 7104878;
  if (v13)
  {
    v15 = v12;
  }

  v16 = 0xE300000000000000;
  if (v13)
  {
    v16 = v13;
  }

  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v17 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  v18 = *(v2 + v4);
  if (v18)
  {
    v19 = v18 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v19 + 8) & 1) == 0 && *v19 == 7)
    {
      sub_100025A7C();
    }
  }
}

void sub_100025D80(uint64_t a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  [a3 invalidate];
  if (a2)
  {
    sub_100022F90(a1);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    objc_allocWithZone(type metadata accessor for IMBDelayedAuthResponse());

    sub_10002A188(a1, 0);
    v9 = sub_1000592E4(a1, a4);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() timerWithTimeInterval:a5 target:"handlePaymentAuthorizationRetryWithTimer:" selector:v9 userInfo:0 repeats:*&v9[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay]];
      v12 = *(a5 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer);
      *(a5 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) = v11;
      v13 = v11;

      v14 = [objc_opt_self() mainRunLoop];
      [v14 addTimer:v13 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      sub_100022D64(a1);
    }
  }
}

void sub_100025F78(uint64_t a1, char a2, uint64_t a3, void (*a4)(id), uint64_t a5, void *a6)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v11 = sub_1000AC7FC();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000587C();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_1000ABA5C();

    a4(a6);
    v14 = sub_1000AB62C();
    v15 = [v14 code];

    if (v15 == 500)
    {
      sub_1000AC2AC();
      sub_1000ABA5C();
      v16 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v16)
      {
        [v16 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_100025BAC(a1);
    v17 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v18 = *(a3 + v17);
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v19)
      {

        v20 = [v19 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v21 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v23 = [v21 initWithPaymentSummaryItems:isa];

    a4(v23);
  }
}

void sub_1000262A8(uint64_t a1, char a2, uint64_t a3, void (*a4)(id))
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v7 = sub_1000AC7FC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_1000ABA5C();

    v10 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v11 = *(a3 + v10);
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v12)
      {

        v13 = [v12 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v18 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v20 = [v18 initWithPaymentSummaryItems:isa];

    [v20 setStatus:1];
    a4(v20);
    v21 = sub_1000AB62C();
    v22 = [v21 code];

    if (v22 == 500)
    {
      sub_1000AC2AC();
      sub_1000ABA5C();
      v23 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v23)
      {
        v24 = v23;
        [v24 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    sub_100025BAC(a1);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v15 = *(a3 + v14);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v16)
      {

        v17 = [v16 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v25 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v26 = sub_1000AC18C().super.isa;

    v20 = [v25 initWithPaymentSummaryItems:v26];

    a4(v20);
  }
}

void sub_1000266FC(uint64_t a1, char a2, uint64_t a3, void (*a4)(id))
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v8 = sub_1000AC7FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000587C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1000ABA5C();

    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000AF0E0;
    *(v11 + 32) = a1;
    v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v13 = *(a3 + v12);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v14)
      {
        sub_10002A188(a1, 1);

        v15 = [v14 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();

        v16 = *(a3 + v12);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      sub_10002A188(a1, 1);
    }

    else
    {
      swift_errorRetain();
    }

    v16 = *(a3 + v12);
    if (!v16)
    {
LABEL_26:
      v29 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
      sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
      isa = sub_1000AC18C().super.isa;

      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      v31 = sub_1000AC18C().super.isa;

      sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
      v32 = sub_1000AC18C().super.isa;

      v33 = [v29 initWithErrors:isa paymentSummaryItems:v31 shippingMethods:v32];

      a4(v33);
      v34 = sub_1000AB62C();
      v35 = [v34 code];

      if (v35 == 500)
      {
        sub_1000AC2AC();
        sub_1000ABA5C();
        v36 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
        if (v36)
        {
          v37 = v36;
          [v37 dismissWithCompletion:0];
        }
      }

      goto LABEL_31;
    }

LABEL_18:
    v23 = *(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v23)
    {

      v24 = [v23 shippingMethods];
      if (v24)
      {
        v25 = v24;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();

        goto LABEL_26;
      }
    }

    else
    {
    }

    goto LABEL_26;
  }

  sub_100025BAC(a1);
  v17 = sub_10004DA74(a1);
  sub_100027788(v17);

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v19 = *(a3 + v18);
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (!v20)
    {
      goto LABEL_21;
    }

    v21 = *(a3 + v18);

    v22 = [v20 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    sub_1000AC19C();

    v19 = *(a3 + v18);
    if (v19)
    {
LABEL_21:
      v26 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v26)
      {

        v27 = [v26 shippingMethods];
        if (v27)
        {
          v28 = v27;
          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          sub_1000AC19C();
        }

        else
        {
        }
      }
    }
  }

  v38 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  v39 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v40 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v41 = sub_1000AC18C().super.isa;

  v33 = [v38 initWithErrors:v39 paymentSummaryItems:v40 shippingMethods:v41];

  a4(v33);
LABEL_31:
}

void sub_100026DB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100026E1C(void *a1, void *a2)
{
  v4 = a2[5];
  v5 = a2[6];

  v6 = sub_1000AC02C();

  [a1 setTitle:v6];

  v7 = a2[5];
  v8 = a2[6];

  v9 = sub_1000AC02C();

  [a1 setSummaryText:v9];

  v10 = a2[5];
  v11 = a2[6];

  v12 = sub_1000AC02C();

  [a1 setAccessibilityLabel:v12];

  [a1 setSubtitle:a2[7]];
  v14 = a2[10];
  v13 = a2[11];

  v15 = sub_1000AC02C();

  [a1 setSubcaption:v15];
}

uint64_t sub_100026F64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026FE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100027000(void *a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if ([a1 status])
  {
    if ([v5 status] != 1)
    {
      goto LABEL_5;
    }

    if (a2 >> 62)
    {
      if (sub_1000AC65C())
      {
LABEL_5:
        if ([v5 status] == 1)
        {
          if (a2 >> 62)
          {
            if (sub_1000AC65C())
            {
              goto LABEL_8;
            }
          }

          else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_8:
            if (qword_1000EEE80 != -1)
            {
              swift_once();
            }

            sub_1000AC2AC();
            result = sub_1000ABA5C();
            goto LABEL_32;
          }
        }

        v43 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
        swift_beginAccess();
        v44 = *(v3 + v43);
        if (v44)
        {
          v45 = v44 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
          *v45 = 2;
          *(v45 + 8) = 0;
        }

        v46 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

        sub_10008A804(2);

        if (qword_1000EEE80 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v39 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v40 = *(v3 + v39);
    if (v40)
    {
      v41 = v40 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v41 = 4;
      *(v41 + 8) = 0;
    }

    v42 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

    sub_10008A804(4);

    if (qword_1000EEE80 == -1)
    {
LABEL_30:
      sub_1000AC2BC();
      sub_1000ABA5C();
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_35:
    swift_once();
    goto LABEL_30;
  }

  v51 = v5;
  [*(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer) invalidate];
  sub_1000234A4(a2, 0, 0);
  v7 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    *v9 = 3;
    *(v9 + 8) = 0;
  }

  v10 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
  v11 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);

  sub_10008A804(3);

  v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
  v13 = [*(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) rootKey];
  v14 = sub_1000AC06C();
  v16 = v15;

  LODWORD(v13) = [*(v3 + v12) isFromMe];
  v17 = sub_1000AC06C();
  v19 = v18;
  v20 = [*(v3 + v12) version];
  if (v13)
  {
    v52._countAndFlagsBits = 46;
    v52._object = 0xE100000000000000;
    sub_1000AC12C(v52);
    v53._countAndFlagsBits = 0x6465696C706572;
    v53._object = 0xE700000000000000;
    sub_1000AC12C(v53);
  }

  v54._countAndFlagsBits = 46;
  v54._object = 0xE100000000000000;
  sub_1000AC12C(v54);
  v55._countAndFlagsBits = v17;
  v55._object = v19;
  sub_1000AC12C(v55);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v21 = swift_allocObject();
  v50 = xmmword_1000AF0E0;
  *(v21 + 16) = xmmword_1000AF0E0;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10000587C();
  *(v21 + 64) = v22;
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v23 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v24 = qword_1000FC030;
  v25 = sub_1000AC02C();

  [v24 mt_log_icloud_messages_apps_businessframework:v25 version:v20];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000AF0F0;
  v27 = *(v3 + v10);
  v29 = v27[5];
  v28 = v27[6];
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = v22;
  *(v26 + 32) = v29;
  *(v26 + 40) = v28;
  v30 = v27[7];

  v31 = [v30 string];
  v32 = sub_1000AC06C();
  v34 = v33;

  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v22;
  *(v26 + 72) = v32;
  *(v26 + 80) = v34;
  sub_1000ABA5C();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000AF0E0;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  sub_10000413C(&qword_1000F0258, &qword_1000B1548);
  v36 = sub_1000AC0CC();
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = v22;
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  v38 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = v51;
  if (result)
  {
LABEL_31:
    [result paymentRequestDidUpdate:{v3, v50}];
    result = swift_unknownObjectRelease();
  }

LABEL_32:
  v47 = v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion;
  v48 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v48)
  {
    v49 = *(v47 + 8);

    v48(v5);
    return sub_100026FE0(v48);
  }

  return result;
}

void *sub_100027788(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_10004F0CC(0x73726F727265, 0xE600000000000000);
  if ((v3 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000E66C(*(a1 + 56) + 32 * v2, &v26, &unk_1000F1DF0, &qword_1000B18F0);
  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000E784(v28, &unk_1000F1DF0, &qword_1000B18F0);
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v25;
  v5 = *(v25 + 16);
  if (!v5)
  {

    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = 32;
  do
  {
    v8 = *(v4 + v7);

    v10 = sub_100020A9C(v9);
    if (v10)
    {
      v24 = v6;
      v11 = qword_1000B1550[*(v10 + 16)];
      v12 = PKPaymentErrorDomain;
      sub_10001FF78();
      v13 = objc_allocWithZone(NSError);
      isa = sub_1000ABFAC().super.isa;

      v15 = [v13 initWithDomain:v12 code:v11 userInfo:isa];

      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2BC();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000AF0E0;
      v17 = [v15 debugDescription];
      v18 = sub_1000AC06C();
      v20 = v19;

      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_10000587C();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      sub_1000ABA5C();

      v6 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000388E0(0, v24[2] + 1, 1, v24);
      }

      v4 = v25;
      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        v6 = sub_1000388E0((v21 > 1), v22 + 1, 1, v6);
      }

      v6[2] = v22 + 1;
      v6[v22 + 4] = v15;
    }

    v7 += 8;
    --v5;
  }

  while (v5);

  return v6;
}

void sub_100027ADC(char *a1, char *a2, void (**a3)(void, void))
{
  v56 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = (&v55 - v11);
  v13 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v55 - v16;
  v18 = sub_1000AB6EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v25 = &a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v26 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v27 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
  *v25 = sub_10002A2E0;
  v25[1] = v24;
  _Block_copy(a3);

  sub_100026FE0(v26);
  v28 = [objc_opt_self() timerWithTimeInterval:a2 target:"extendApplePayTimeout" selector:0 userInfo:0 repeats:29.0];
  v29 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer];
  *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = v28;
  v30 = v28;

  v31 = [objc_opt_self() mainRunLoop];
  [v31 addTimer:v30 forMode:NSDefaultRunLoopMode];

  v32 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v33 = *&a2[v32];
  if (!v33)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_6;
  }

  v55 = v12;
  v34 = v23;
  v35 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v33 + v35, v17, &unk_1000F06A0, &unk_1000B0450);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_6:
    sub_10000E784(v17, &unk_1000F06A0, &unk_1000B0450);
    v49 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v51 = [v49 initWithStatus:1 errors:isa];

    (a3)[2](a3, v51);

    return;
  }

  v36 = v34;
  (*(v19 + 32))(v34, v17, v18);

  v37 = sub_10000A744();

  if (v37)
  {
    v38 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
    v39 = sub_100091814(v56);

    v40 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
    v41 = v55;
    *v55 = v39;
    (*(v19 + 16))(v41 + v40, v36, v18);
    v56 = v36;
    v42 = v57;
    sub_10002A0C8(v41, v57);
    v43 = type metadata accessor for HttpClient();
    v44 = objc_allocWithZone(v43);

    v45 = sub_100031620(v42);
    v58[3] = v43;
    v58[4] = &off_1000DB940;
    v58[0] = v45;
    sub_10002A12C(v41);
    v46 = *sub_1000058D0(v58, v43);
    v47 = v30;

    v48 = a2;
    sub_100033720(v46, v47, v39, v48);

    swift_bridgeObjectRelease_n();
    (*(v19 + 8))(v56, v18);
    sub_10000E738(v58);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v52 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v53 = sub_1000AC18C().super.isa;
    v54 = [v52 initWithStatus:1 errors:v53];

    (a3)[2](a3, v54);
    (*(v19 + 8))(v34, v18);
  }
}

void sub_100028104(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v10 = sub_1000AC7FC();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10000587C();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1000ABA5C();

    (*(a5 + 16))(a5, a4);
    v13 = sub_1000AB62C();
    v14 = [v13 code];

    if (v14 == 500)
    {
      sub_1000AC2AC();
      sub_1000ABA5C();
      v15 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v15)
      {
        [v15 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    sub_100025BAC(a1);
    v16 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v17 = *(a3 + v16);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v18)
      {

        v19 = [v18 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v20 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v22 = [v20 initWithPaymentSummaryItems:isa];

    (*(a5 + 16))(a5, v22);
  }
}

void sub_100028438(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Endpoint(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = (&v41 - v12);
  v14 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v41 - v17;
  v19 = sub_1000AB6EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  _Block_copy(a3);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;
  v27 = [v25 initWithPaymentSummaryItems:isa];

  v28 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
  v29 = sub_10009193C(a1);

  v30 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v31 = *&a2[v30];
  if (v31)
  {
    v42 = v27;
    v32 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v31 + v32, v18, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v24, v18, v19);
      v33 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v13 = v29;
      (*(v20 + 16))(v13 + v33, v24, v19);
      v34 = v43;
      sub_10002A0C8(v13, v43);
      v35 = type metadata accessor for HttpClient();
      v36 = objc_allocWithZone(v35);
      v37 = sub_100031620(v34);
      v44[3] = v35;
      v44[4] = &off_1000DB940;
      v44[0] = v37;
      sub_10002A12C(v13);
      v38 = *sub_1000058D0(v44, v35);
      _Block_copy(a3);
      v39 = a2;
      v40 = v42;
      sub_100033F50(v38, v39, v40, a3);
      _Block_release(a3);

      (*(v20 + 8))(v24, v19);
      sub_10000E738(v44);
      goto LABEL_9;
    }

    v27 = v42;
  }

  else
  {

    (*(v20 + 56))(v18, 1, 1, v19);
  }

  sub_10000E784(v18, &unk_1000F06A0, &unk_1000B0450);
  (a3)[2](a3, v27);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();

LABEL_9:
  _Block_release(a3);
}

void sub_1000288B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v7 = sub_1000AC7FC();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10000587C();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_1000ABA5C();

    v10 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v11 = *(a3 + v10);
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v12)
      {

        v13 = [v12 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v18 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v20 = [v18 initWithPaymentSummaryItems:isa];

    [v20 setStatus:1];
    (*(a4 + 16))(a4, v20);
    v21 = sub_1000AB62C();
    v22 = [v21 code];

    if (v22 == 500)
    {
      sub_1000AC2AC();
      sub_1000ABA5C();
      v23 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v23)
      {
        v24 = v23;
        [v24 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    sub_100025BAC(a1);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v15 = *(a3 + v14);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v16)
      {

        v17 = [v16 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v25 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v26 = sub_1000AC18C().super.isa;

    v20 = [v25 initWithPaymentSummaryItems:v26];

    (*(a4 + 16))(a4, v20);
  }
}

void sub_100028D08(void *a1, char *a2, void (**a3)(void, void))
{
  v50 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = (&v48 - v12);
  v14 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v48 - v17;
  v19 = sub_1000AB6EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v26 = *&a2[v25];
  if (v26)
  {
    v49 = v10;
    v27 = a3;
    v28 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
    swift_beginAccess();
    v29 = v26 + v28;
    a3 = v27;
    sub_10000E66C(v29, v18, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v24, v18, v19);
      v30 = *(v26 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
      v31 = v50;
      *(v26 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = v50;
      _Block_copy(v27);

      v32 = v31;

      v33 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v34 = sub_100091C34(v32);

      v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v13 = v34;
      (*(v20 + 16))(v13 + v35, v24, v19);
      v36 = v49;
      sub_10002A0C8(v13, v49);
      v37 = type metadata accessor for HttpClient();
      v38 = objc_allocWithZone(v37);
      v39 = sub_100031620(v36);
      v51[3] = v37;
      v51[4] = &off_1000DB940;
      v51[0] = v39;
      sub_10002A12C(v13);
      v40 = *sub_1000058D0(v51, v37);
      _Block_copy(v27);
      sub_100035084(v40, a2, v27);
      _Block_release(v27);
      (*(v20 + 8))(v24, v19);
      sub_10000E738(v51);
      v41 = v27;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  _Block_copy(a3);
  sub_10000E784(v18, &unk_1000F06A0, &unk_1000B0450);
  v42 = *&a2[v25];
  if (v42)
  {
    v43 = *(v42 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v43)
    {

      v44 = [v43 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();
    }
  }

  v45 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;

  v47 = [v45 initWithPaymentSummaryItems:isa];

  (a3)[2](a3, v47);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();

  v41 = a3;
LABEL_11:
  _Block_release(v41);
}

void sub_10002921C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v8 = sub_1000AC7FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000587C();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1000ABA5C();

    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000AF0E0;
    *(v11 + 32) = a1;
    v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v13 = *(a3 + v12);
    if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest)) != 0)
    {
      sub_10002A188(a1, 1);

      v15 = [v14 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();

      v16 = *(a3 + v12);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
      swift_errorRetain();
      v16 = *(a3 + v12);
      if (!v16)
      {
LABEL_24:
        v29 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
        sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
        isa = sub_1000AC18C().super.isa;

        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        v31 = sub_1000AC18C().super.isa;

        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v32 = sub_1000AC18C().super.isa;

        v33 = [v29 initWithErrors:isa paymentSummaryItems:v31 shippingMethods:v32];

        (*(a4 + 16))(a4, v33);
        v34 = sub_1000AB62C();
        v35 = [v34 code];

        if (v35 == 500)
        {
          sub_1000AC2AC();
          sub_1000ABA5C();
          v36 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
          if (v36)
          {
            v37 = v36;
            [v37 dismissWithCompletion:0];
          }
        }

        goto LABEL_29;
      }
    }

    v23 = *(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v23)
    {

      v24 = [v23 shippingMethods];
      if (v24)
      {
        v25 = v24;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();

        goto LABEL_24;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

  sub_100025BAC(a1);
  v17 = sub_10004DA74(a1);
  sub_100027788(v17);

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v19 = *(a3 + v18);
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = *(a3 + v18);

    v22 = [v20 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    sub_1000AC19C();

    v19 = *(a3 + v18);
    if (v19)
    {
LABEL_19:
      v26 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v26)
      {

        v27 = [v26 shippingMethods];
        if (v27)
        {
          v28 = v27;
          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          sub_1000AC19C();
        }

        else
        {
        }
      }
    }
  }

  v38 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  v39 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v40 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v41 = sub_1000AC18C().super.isa;

  v33 = [v38 initWithErrors:v39 paymentSummaryItems:v40 shippingMethods:v41];

  (*(a4 + 16))(a4, v33);
LABEL_29:
}

void sub_1000298C0(void *a1, char *a2, void (**a3)(void, void))
{
  v59 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = (&v57 - v12);
  v14 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v57 - v17;
  v19 = sub_1000AB6EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v26 = *&a2[v25];
  if (v26)
  {
    v58 = v10;
    v27 = a2;
    v28 = a3;
    v29 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
    swift_beginAccess();
    v30 = v26 + v29;
    a3 = v28;
    a2 = v27;
    sub_10000E66C(v30, v18, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v24, v18, v19);
      v31 = a3;
      v32 = *&v27[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      _Block_copy(v31);
      v33 = v32;
      v34 = sub_100091DC4(v59);

      v35 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v13 = v34;
      (*(v20 + 16))(v13 + v35, v24, v19);
      v36 = v58;
      sub_10002A0C8(v13, v58);
      v37 = type metadata accessor for HttpClient();
      v38 = objc_allocWithZone(v37);
      v39 = sub_100031620(v36);
      v60[3] = v37;
      v60[4] = &off_1000DB940;
      v60[0] = v39;
      sub_10002A12C(v13);
      v40 = *sub_1000058D0(v60, v37);
      _Block_copy(v31);
      sub_1000359DC(v40, v27, v31);
      _Block_release(v31);
      (*(v20 + 8))(v24, v19);
      sub_10000E738(v60);
      v41 = v31;
      goto LABEL_21;
    }
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  _Block_copy(a3);
  sub_10000E784(v18, &unk_1000F06A0, &unk_1000B0450);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  v42 = _swiftEmptyArrayStorage;
  sub_1000ABA5C();
  v43 = *&a2[v25];
  if (v43)
  {
    v44 = *(v43 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v44)
    {
      v45 = *&a2[v25];

      v46 = [v44 shippingMethods];
      if (v46)
      {
        v47 = v46;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v42 = sub_1000AC19C();

        goto LABEL_13;
      }
    }

    v42 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  if (v42 >> 62)
  {
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);

    sub_1000AC64C();
  }

  else
  {

    sub_1000AC7BC();
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  }

  v48 = *&a2[v25];
  if (v48)
  {
    v49 = *(v48 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v49)
    {

      v50 = [v49 shippingMethods];
      if (v50)
      {
        v51 = v50;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();
      }

      else
      {
      }
    }
  }

  v52 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  isa = sub_1000AC18C().super.isa;
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v54 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v55 = sub_1000AC18C().super.isa;

  v56 = [v52 initWithErrors:isa paymentSummaryItems:v54 shippingMethods:v55];

  (a3)[2](a3, v56);
  v41 = a3;
LABEL_21:
  _Block_release(v41);
}

void sub_100029F2C(void *a1, void *a2, uint64_t a3, void *aBlock, SEL *a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t, void *))
{
  _Block_copy(aBlock);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000AF0F0;
  v13 = [a1 description];
  v14 = sub_1000AC06C();
  v16 = v15;

  *(v12 + 56) = &type metadata for String;
  v17 = sub_10000587C();
  *(v12 + 64) = v17;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v18 = [a2 *a5];
  v19 = sub_1000AC06C();
  v21 = v20;

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v21;
  sub_1000ABA5C();

  a8(a2, a3, aBlock);

  _Block_release(aBlock);
}

uint64_t sub_10002A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A12C(uint64_t a1)
{
  v2 = type metadata accessor for Endpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A188(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10002A194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A1E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002A1F0()
{
  result = qword_1000F0268;
  if (!qword_1000F0268)
  {
    sub_100005A24(255, &qword_1000F0260, NSAttributedString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0268);
  }

  return result;
}

unint64_t sub_10002A258()
{
  result = qword_1000F0278;
  if (!qword_1000F0278)
  {
    sub_1000AB7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0278);
  }

  return result;
}

uint64_t sub_10002A2E4()
{
  result = sub_1000ABE6C();
  qword_1000FBEC8 = result;
  return result;
}

uint64_t sub_10002A304()
{
  result = sub_1000ABE7C();
  qword_1000FBED0 = result;
  return result;
}

uint64_t sub_10002A324()
{
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  return *(v0 + 16);
}

uint64_t sub_10002A3C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10002A46C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
    sub_1000AB98C();
  }

  return result;
}

uint64_t sub_10002A57C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_10002A62C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_10002A6D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (sub_1000AC7AC() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
    sub_1000AB98C();
  }
}

uint64_t sub_10002A838()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_10002A8E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_10002A994(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (sub_1000AC7AC())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
    sub_1000AB98C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_10002AB04()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 6);

  v3 = OBJC_IVAR____TtCV8Business36BIADeterminateReplyBubbleContentView5Model___observationRegistrar;
  v4 = sub_1000AB9BC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BIADeterminateReplyBubbleContentView.Model()
{
  result = qword_1000F02B0;
  if (!qword_1000F02B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002AC04()
{
  result = sub_1000AB9BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002ACD8()
{
  result = qword_1000F0410;
  if (!qword_1000F0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0410);
  }

  return result;
}

uint64_t sub_10002AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000ABD6C();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3, v5);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  v7 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51, v8);
  v10 = &v49 - v9;
  v55 = sub_10000413C(&qword_1000F0430, &qword_1000B1718);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v55, v13);
  v50 = &v49 - v14;
  v15 = sub_10000413C(&qword_1000F0438, &qword_1000B1720);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v49 - v22;
  v24 = sub_10000413C(&qword_1000F0440, &qword_1000B1728);
  v25 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24 - 8, v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v30);
  v32 = &v49 - v31;
  *v32 = sub_1000ABD1C();
  *(v32 + 1) = 0;
  v33 = 1;
  v32[16] = 1;
  v34 = sub_10000413C(&qword_1000F0448, &qword_1000B1730);
  sub_10002B310(a1, &v32[*(v34 + 44)]);
  swift_getKeyPath();
  v57 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v35 = *(a1 + 48);
  if (v35)
  {
    v57 = *(a1 + 40);
    v58 = v35;
    sub_10002BD70();

    sub_1000ABEDC();
    v36 = sub_1000ABDAC();
    KeyPath = swift_getKeyPath();
    v38 = &v10[*(sub_10000413C(&qword_1000F0460, &qword_1000B1798) + 36)];
    *v38 = KeyPath;
    v38[1] = v36;
    if (qword_1000EEDA0 != -1)
    {
      swift_once();
    }

    v57 = qword_1000FBED0;
    sub_10002BE1C();

    v39 = sub_1000ABEAC();
    v40 = swift_getKeyPath();
    v41 = v52;
    v42 = &v10[*(v51 + 36)];
    *v42 = v40;
    v42[1] = v39;
    sub_1000ABD5C();
    sub_10002BEC8();
    sub_10002C254(&qword_1000F04B0, &type metadata accessor for TitleOnlyLabelStyle);
    v43 = v50;
    v44 = v54;
    sub_1000ABE4C();
    (*(v53 + 8))(v41, v44);
    sub_10002C064(v10);
    v45 = v55;
    (*(v11 + 32))(v23, v43, v55);
    v33 = 0;
  }

  else
  {
    v45 = v55;
  }

  (*(v11 + 56))(v23, v33, 1, v45);
  sub_10000E66C(v32, v29, &qword_1000F0440, &qword_1000B1728);
  sub_10000E66C(v23, v20, &qword_1000F0438, &qword_1000B1720);
  v46 = v56;
  sub_10000E66C(v29, v56, &qword_1000F0440, &qword_1000B1728);
  v47 = sub_10000413C(&qword_1000F0458, &qword_1000B1760);
  sub_10000E66C(v20, v46 + *(v47 + 48), &qword_1000F0438, &qword_1000B1720);
  sub_10000E784(v23, &qword_1000F0438, &qword_1000B1720);
  sub_10000E784(v32, &qword_1000F0440, &qword_1000B1728);
  sub_10000E784(v20, &qword_1000F0438, &qword_1000B1720);
  return sub_10000E784(v29, &qword_1000F0440, &qword_1000B1728);
}

uint64_t sub_10002B310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v69 = sub_1000ABD3C();
  v67 = *(v69 - 1);
  v3 = *(v67 + 64);
  __chkstk_darwin(v69, v4);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&qword_1000F04B8, &qword_1000B17E8);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v59 - v9;
  v70 = sub_10000413C(&qword_1000F04C0, &qword_1000B17F0);
  v68 = *(v70 - 8);
  v11 = *(v68 + 64);
  v13 = __chkstk_darwin(v70, v12);
  v66 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v72 = &v59 - v16;
  v17 = sub_1000ABD6C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = &v59 - v26;
  v62 = sub_10000413C(&qword_1000F0430, &qword_1000B1718);
  v60 = *(v62 - 8);
  v28 = *(v60 + 64);
  v30 = __chkstk_darwin(v62, v29);
  v61 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v59 - v33;
  swift_getKeyPath();
  v73 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  v35 = *(a1 + 32);
  v73 = *(a1 + 24);
  v74 = v35;
  sub_10002BD70();

  sub_1000ABEDC();
  sub_1000ABDAC();
  sub_1000ABDBC();
  v36 = sub_1000ABDCC();

  KeyPath = swift_getKeyPath();
  v38 = &v27[*(sub_10000413C(&qword_1000F0460, &qword_1000B1798) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  if (qword_1000EED98 != -1)
  {
    swift_once();
  }

  v73 = qword_1000FBEC8;
  sub_10002BE1C();

  v39 = sub_1000ABEAC();
  v40 = swift_getKeyPath();
  v41 = &v27[*(v23 + 36)];
  *v41 = v40;
  v41[1] = v39;
  sub_1000ABD5C();
  sub_10002BEC8();
  sub_10002C254(&qword_1000F04B0, &type metadata accessor for TitleOnlyLabelStyle);
  v59 = v34;
  sub_1000ABE4C();
  (*(v18 + 8))(v22, v17);
  sub_10002C064(v27);
  sub_10000413C(&qword_1000F04C8, &qword_1000B1820);
  sub_10002C118();
  sub_1000ABECC();
  v42 = v63;
  sub_1000ABD2C();
  sub_10002C5BC(&qword_1000F04E8, &qword_1000F04B8, &qword_1000B17E8);
  sub_10002C254(&qword_1000F04F0, &type metadata accessor for IconOnlyLabelStyle);
  v43 = v72;
  v44 = v65;
  v45 = v69;
  sub_1000ABE4C();
  (*(v67 + 8))(v42, v45);
  (*(v64 + 8))(v10, v44);
  v46 = v60;
  v47 = v61;
  v48 = *(v60 + 16);
  v49 = v62;
  v48(v61, v34, v62);
  v50 = v68;
  v69 = *(v68 + 16);
  v51 = v66;
  v52 = v43;
  v53 = v70;
  (v69)(v66, v52, v70);
  v54 = v71;
  v48(v71, v47, v49);
  v55 = sub_10000413C(&qword_1000F04F8, &qword_1000B1830);
  (v69)(&v54[*(v55 + 48)], v51, v53);
  v56 = *(v50 + 8);
  v56(v72, v53);
  v57 = *(v46 + 8);
  v57(v59, v49);
  v56(v51, v53);
  return (v57)(v47, v49);
}

double sub_10002BABC@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v5 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);
  sub_1000AB99C();

  sub_1000ABEBC();
  sub_1000ABE8C();
  swift_getKeyPath();
  sub_10000413C(&qword_1000F04E0, &qword_1000B1828);
  sub_10002C19C();
  sub_1000ABD8C();
  result = a1;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

__n128 sub_10002BC9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1000ABD4C();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = sub_10000413C(&qword_1000F0418, &qword_1000B1700);
  sub_10002AD48(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_1000ABD9C();
  v5 = a1 + *(sub_10000413C(&qword_1000F0420, &qword_1000B1708) + 36);
  *v5 = v3;
  __asm { FMOV            V0.2D, #12.0 }

  *(v5 + 8) = result;
  *(v5 + 24) = result;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_10002BD30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10002A994(v2, v3);
}

unint64_t sub_10002BD70()
{
  result = qword_1000F3B20;
  if (!qword_1000F3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3B20);
  }

  return result;
}

uint64_t sub_10002BDC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABCBC();
  *a1 = result;
  return result;
}

uint64_t sub_10002BDF0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000ABCCC();
}

unint64_t sub_10002BE1C()
{
  result = qword_1000F0468;
  if (!qword_1000F0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0468);
  }

  return result;
}

uint64_t sub_10002BE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABC9C();
  *a1 = result;
  return result;
}

uint64_t sub_10002BE9C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000ABCAC();
}

unint64_t sub_10002BEC8()
{
  result = qword_1000F0470;
  if (!qword_1000F0470)
  {
    sub_1000041E8(&qword_1000F0428, &qword_1000B1710);
    sub_10002BF80();
    sub_10002C5BC(&qword_1000F04A0, &qword_1000F04A8, &qword_1000B17E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0470);
  }

  return result;
}

unint64_t sub_10002BF80()
{
  result = qword_1000F0478;
  if (!qword_1000F0478)
  {
    sub_1000041E8(&qword_1000F0460, &qword_1000B1798);
    sub_10002C5BC(&qword_1000F0480, &qword_1000F0488, &qword_1000B17D0);
    sub_10002C5BC(&qword_1000F0490, &qword_1000F0498, &qword_1000B17D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0478);
  }

  return result;
}

uint64_t sub_10002C064(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002C0D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10002A6D8(v2, v3);
}

unint64_t sub_10002C118()
{
  result = qword_1000F04D0;
  if (!qword_1000F04D0)
  {
    sub_1000041E8(&qword_1000F04C8, &qword_1000B1820);
    sub_10002C19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D0);
  }

  return result;
}

unint64_t sub_10002C19C()
{
  result = qword_1000F04D8;
  if (!qword_1000F04D8)
  {
    sub_1000041E8(&qword_1000F04E0, &qword_1000B1828);
    sub_10002C5BC(&qword_1000F04A0, &qword_1000F04A8, &qword_1000B17E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D8);
  }

  return result;
}

uint64_t sub_10002C254(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C2C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for BIADeterminateReplyBubbleContentView.Model();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0xE000000000000000;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  sub_1000AB9AC();
  v14 = a1 & 1;
  if (*(v13 + 16) == v14)
  {
    *(v13 + 16) = v14;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v18[1] = v18;
    __chkstk_darwin(KeyPath, v16);
    v18[3] = v13;
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model);

    sub_1000AB98C();
  }

  sub_10002A6D8(a2, a3);
  sub_10002A994(a4, a5);

  return v13;
}

uint64_t sub_10002C480()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_10002C4C0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_10002C504()
{
  result = qword_1000F0500;
  if (!qword_1000F0500)
  {
    sub_1000041E8(&qword_1000F0420, &qword_1000B1708);
    sub_10002C5BC(&qword_1000F0508, &qword_1000F0510, &qword_1000B1860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0500);
  }

  return result;
}

uint64_t sub_10002C5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MSMessagesAppPresentationStyle.description.getter(uint64_t a1)
{
  v1 = 0x697263736E617274;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6465646E61707865;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_10002C698()
{
  v1 = *v0;
  v2 = 0x697263736E617274;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x6465646E61707865;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

void sub_10002C718()
{
  v0 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v0];

  qword_1000FBED8 = v1;
}

void sub_10002C78C()
{
  v0 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v0];

  qword_1000FBEE0 = v1;
}

uint64_t sub_10002C7FC()
{
  result = sub_10002CE60();
  v1 = 8.0;
  if (result == 2)
  {
    v1 = 6.0;
  }

  qword_1000FBEE8 = *&v1;
  return result;
}

UIColor sub_10002C844()
{
  sub_100015C6C();
  result.super.isa = sub_1000AC39C(0.78, 0.78, 0.8, 1.0).super.isa;
  qword_1000FBEF8 = result.super.isa;
  return result;
}

void sub_10002C898()
{
  v0 = sub_1000AC02C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (!v2)
  {
    v2 = [v1 systemBackgroundColor];
  }

  qword_1000FBF00 = v2;
}

void sub_10002C93C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleSubheadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000AF0E0;
  *(v4 + 32) = UIFontWeightTrait;
  *(v4 + 40) = UIFontWeightSemibold;
  v5 = UIFontDescriptorTraitsAttribute;
  v6 = UIFontWeightTrait;
  v7 = sub_10004FA58(v4);
  swift_setDeallocating();
  sub_10000E784(v4 + 32, &qword_1000EF8C0, &qword_1000B0608);
  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v7;
  sub_10004FB48(inited);
  swift_setDeallocating();
  sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
  type metadata accessor for AttributeName(0);
  sub_100013968();
  isa = sub_1000ABFAC().super.isa;

  v9 = [v2 fontDescriptorByAddingAttributes:isa];

  v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  qword_1000FBF08 = v10;
}

void sub_10002CBBC(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontDescriptorWithTextStyle:v6];
  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  *a3 = v8;
}

void sub_10002CC6C()
{
  v0 = sub_1000AC02C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (!v2)
  {
    v2 = [v1 systemGroupedBackgroundColor];
  }

  qword_1000FBF38 = v2;
}

UIColor sub_10002CD1C()
{
  sub_100015C6C();
  result.super.isa = sub_1000AC39C(0.0, 0.48, 1.0, 1.0).super.isa;
  qword_1000FBF48 = result.super.isa;
  return result;
}

id sub_10002CDB8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_10002CDFC()
{
  if (qword_1000EEDF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FBF28;
  qword_1000FBF70 = qword_1000FBF28;

  return v1;
}

uint64_t sub_10002CE60()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_10002CF08()
{
  if (sub_10002CE60() > 1u)
  {
    v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
    v3 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightSemibold];
    [v4 scaledFontForFont:v3];

    goto LABEL_5;
  }

  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v2 = [v1 fontDescriptor];

  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  if (v3)
  {
    [v0 fontWithDescriptor:v3 size:0.0];
LABEL_5:

    return;
  }

  __break(1u);
}

char *sub_10002D06C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel] = a1;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for iOSFooterToolbarViewController();

  v3 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v4 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel;
  v5 = *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel];
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = sub_10002D500();
    [v10 setStyle:*(*&v3[v4] + 32)];

    v11 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem;
    [*&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem] setTarget:v3];
    [*&v3[v11] setAction:"leftButtonTapped"];
    v12 = *&v3[v4];
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *&v3[v11];

    v16 = sub_1000AC02C();

    [v15 setTitle:v16];

    v17 = *&v3[v11];
    v41 = sub_10002D588();
    v18 = v17;
    sub_1000AC17C();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    v19 = *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems];
    *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = v41;
  }

  v20 = [objc_opt_self() flexibleSpaceItem];
  v42 = sub_10002D588();
  sub_1000AC17C();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  v21 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems;
  v22 = *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems];
  *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = v42;

  v23 = *&v3[v4];
  v25 = *(v23 + 40);
  v24 = *(v23 + 48);
  v26 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v27 = v26;
  }

  if (v27)
  {
    v28 = sub_10002D50C();
    [v28 setStyle:*(*&v3[v4] + 56)];

    v29 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem;
    [*&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem] setTarget:v3];
    [*&v3[v29] setAction:"rightButtonTapped"];
    v30 = *&v3[v4];
    v31 = *(v30 + 40);
    v32 = *(v30 + 48);
    v33 = *&v3[v29];

    v34 = sub_1000AC02C();

    [v33 setTitle:v34];

    v43 = *&v3[v21];
    v35 = *&v3[v29];

    sub_1000AC17C();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000AC1BC();
    }

    sub_1000AC1DC();

    v36 = *&v3[v21];
    *&v3[v21] = v43;
  }

  else
  {
  }

  return v3;
}

id sub_10002D518(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for ABSBarButtonItem()) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void *sub_10002D588()
{
  if (*(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems) = _swiftEmptyArrayStorage;
  }

  return v1;
}

id sub_10002D780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iOSFooterToolbarViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002D854(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10002D8A0(char a1)
{
  v2 = sub_10002D500();
  [v2 setEnabled:a1 & 1];

  v3 = sub_10002D50C();
  [v3 setEnabled:a1 & 1];
}

void sub_10002D914(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setToolbarHidden:0 animated:0];
  }

  sub_10002D588();
  sub_100018E48();
  isa = sub_1000AC18C().super.isa;

  [a1 setToolbarItems:isa animated:0];
}

void sub_10002DA94()
{
  v1 = v0;
  v128 = sub_1000AB57C();
  v127 = *(v128 - 8);
  v2 = *(v127 + 64);
  __chkstk_darwin(v128, v3);
  v126 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v134 = &v125 - v8;
  v9 = sub_1000AB6EC();
  v140 = *(v9 - 8);
  v141 = v9;
  v10 = *(v140 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v129 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v130 = &v125 - v15;
  v16 = sub_1000AC0BC();
  v132 = *(v16 - 8);
  v133 = v16;
  v17 = *(v132 + 64);
  __chkstk_darwin(v16, v18);
  v131 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = &v125 - v27;
  v29 = [objc_allocWithZone(UITableView) init];
  v30 = [v29 separatorColor];

  v31 = [objc_allocWithZone(NSDateFormatter) init];
  [v31 setTimeStyle:1];
  [v31 setDateStyle:2];
  v142 = v31;
  [v31 setDoesRelativeDateFormatting:1];
  v32 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content;
  v33 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
  if (!v33)
  {
    v45 = sub_1000AB7EC();
    (*(*(v45 - 8) + 56))(v28, 1, 1, v45);
    goto LABEL_7;
  }

  v34 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v33 + v34, v28, &qword_1000F0270, &unk_1000B0480);
  v35 = sub_1000AB7EC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v28, 1, v35) == 1)
  {
LABEL_7:
    sub_10000E784(v28, &qword_1000F0270, &unk_1000B0480);
    v42 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_8;
  }

  sub_10000E784(v28, &qword_1000F0270, &unk_1000B0480);
  v38 = *&v1[v32];
  if (!v38)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v39 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v38 + v39, v25, &qword_1000F0270, &unk_1000B0480);
  if (v37(v25, 1, v35) == 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  isa = sub_1000AB77C().super.isa;
  (*(v36 + 8))(v25, v35);
  v41 = [v142 stringFromDate:isa];

  v42 = sub_1000AC06C();
  v44 = v43;

LABEL_8:
  v46 = [*&v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] receivedMessage];
  if (v46 && (v47 = v46, v48 = [v46 title], v47, v48))
  {
    v49 = sub_1000AC06C();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  v52 = v30;
  v53 = sub_1000906F4(v49, v51, 0, 0, v30);
  v54 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView];
  v139 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = v53;

  v55 = *&v1[v32];
  if (v55)
  {
    v56 = (v55 + OBJC_IVAR____TtC8Business10IMBContent_title);
    v57 = *v56;
    v58 = v56[1];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  objc_allocWithZone(type metadata accessor for IMBContentHeaderView());
  v59 = v52;

  v137 = v44;
  v60 = sub_100053384(v57, v58, v42, v44, v30);
  v61 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView;
  v62 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView];
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = v60;

  v63 = [objc_allocWithZone(WKWebViewConfiguration) init];
  [v63 _setAllowsMetaRefresh:0];
  [v63 _setAllowsJavaScriptMarkup:0];
  [v63 _setAttachmentElementEnabled:0];
  [v63 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  [v63 setDataDetectorTypes:-1];
  [v63 setSelectionGranularity:1];
  v64 = [objc_allocWithZone(WKWebView) initWithFrame:v63 configuration:{0.0, 0.0, 0.0, 0.0}];
  v65 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview;
  v66 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = v64;
  v67 = v64;

  if (!v67)
  {
    __break(1u);
    goto LABEL_45;
  }

  v138 = v61;
  [v67 setOpaque:0];

  v68 = *&v1[v65];
  if (!v68)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v69 = objc_opt_self();
  v70 = v68;
  v71 = [v69 clearColor];
  [v70 setBackgroundColor:v71];

  v72 = *&v1[v65];
  if (!v72)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v143 = v59;
  [v72 setAllowsLinkPreview:1];
  v73 = *&v1[v65];
  if (!v73)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v74 = [v73 scrollView];
  [v74 setScrollsToTop:0];

  v75 = *&v1[v65];
  if (!v75)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v76 = [v75 scrollView];
  [v76 setScrollEnabled:1];

  v77 = *&v1[v65];
  if (!v77)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v78 = [v77 scrollView];
  [v78 setBounces:1];

  v79 = *&v1[v65];
  if (!v79)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v80 = [v79 scrollView];
  v81 = [v69 clearColor];
  [v80 setBackgroundColor:v81];

  v82 = *&v1[v65];
  if (!v82)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v82 setNavigationDelegate:v1];
  v83 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview];
  [v83 setMinimumZoomScale:1.0];
  [v83 setMaximumZoomScale:6.0];
  [v83 setBounces:1];
  [v83 setDelegate:v1];
  v84 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1000B04C0;
  v86 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem];
  *(v85 + 32) = v86;
  sub_100005A24(0, &qword_1000EFCE8, UIBarButtonItem_ptr);
  v87 = v86;
  v88 = sub_1000AC18C().super.isa;

  v136 = v84;
  [v84 setItems:v88];

  v135 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder];
  v89 = v143;
  [v135 setBackgroundColor:v143];
  v90 = *&v1[v32];
  if (!v90)
  {
    goto LABEL_30;
  }

  if (*(v90 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8))
  {
    v91 = *(v90 + OBJC_IVAR____TtC8Business10IMBContent_doc);
    v92 = *(v90 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8);

    v93 = v131;
    sub_1000AC0AC();
    v94 = sub_1000AC07C();
    v96 = v95;

    (*(v132 + 8))(v93, v133);
    if (v96 >> 60 != 15)
    {
      v105 = *&v1[v65];
      if (!v105)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v106 = v105;
      v107 = sub_1000AB72C().super.isa;
      v108 = sub_1000AC02C();
      v134 = v94;
      v109 = v108;
      v110 = sub_1000AC02C();
      v111 = v130;
      sub_1000AB65C();
      sub_1000AB67C(v112);
      v114 = v113;
      (*(v140 + 8))(v111, v141);

      sub_10000E950(v134, v96);
      goto LABEL_34;
    }

    v90 = *&v1[v32];
    if (!v90)
    {
LABEL_30:
      v97 = v134;
      (*(v140 + 56))(v134, 1, 1, v141);
      goto LABEL_31;
    }
  }

  v97 = v134;
  sub_10000E66C(v90 + OBJC_IVAR____TtC8Business10IMBContent_url, v134, &unk_1000F06A0, &unk_1000B0450);
  v99 = v140;
  v98 = v141;
  if ((*(v140 + 48))(v97, 1, v141) == 1)
  {
LABEL_31:
    sub_10000E784(v97, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_35;
  }

  v100 = v129;
  (*(v99 + 32))(v129, v97, v98);
  v101 = *&v1[v65];
  if (v101)
  {
    (*(v99 + 16))(v130, v100, v98);
    v102 = v101;
    v103 = v126;
    sub_1000AB55C();
    v104 = sub_1000AB53C();
    (*(v127 + 8))(v103, v128);

    (*(v99 + 8))(v100, v98);
LABEL_34:
    v89 = v143;
LABEL_35:
    v115 = [v1 view];
    if (v115)
    {
      if (*&v1[v139])
      {
        v116 = v115;
        [v115 addSubview:?];

        v117 = [v1 view];
        if (v117)
        {
          if (*&v1[v138])
          {
            v118 = v117;
            [v117 addSubview:?];

            v119 = [v1 view];
            if (v119)
            {
              if (*&v1[v65])
              {
                v120 = v119;
                [v119 addSubview:?];

                v121 = [v1 view];
                if (v121)
                {
                  v122 = v121;
                  [v121 addSubview:v136];

                  v123 = [v1 view];
                  if (v123)
                  {
                    v124 = v123;

                    [v124 addSubview:v135];

                    return;
                  }

                  goto LABEL_59;
                }

LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_63:
  __break(1u);
}