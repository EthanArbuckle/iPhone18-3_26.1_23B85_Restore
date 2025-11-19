void sub_10003822C()
{
  if (!qword_1001160F8)
  {
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001160F8);
    }
  }
}

unint64_t sub_1000382B0()
{
  result = qword_100116100;
  if (!qword_100116100)
  {
    type metadata accessor for SparklineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116100);
  }

  return result;
}

void sub_100038310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100038374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100038310(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000383E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003844C(uint64_t a1)
{
  v2 = type metadata accessor for SparklineView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000384F0()
{
  sub_10003822C();
  type metadata accessor for SparklineView(255);
  sub_1000382B0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_100038594()
{
  if (!qword_1001161A0)
  {
    sub_10003822C();
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001161A0);
    }
  }
}

void sub_100038650()
{
  if (!qword_1001161A8)
  {
    sub_100038594();
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_1001161A8);
    }
  }
}

unint64_t sub_1000386B4()
{
  result = qword_1001161B0;
  if (!qword_1001161B0)
  {
    sub_100038650();
    sub_10003822C();
    type metadata accessor for SparklineView(255);
    sub_1000382B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001161B0);
  }

  return result;
}

void sub_1000387B8(void *a1, _BOOL8 a2)
{
  [a1 setSearchBarStyle:2];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0x80000001000E86D0;
  v22._countAndFlagsBits = 0x736B636F7453;
  v22._object = 0xE600000000000000;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v7.super.isa = v6;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1000D8E50(v22, v23, v7, v24, v19);

  v8 = sub_1000DB910();

  [a1 setPlaceholder:v8];

  v9 = (v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v11 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v10 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 32);
  sub_100006C7C(v9, v11);
  [a1 setKeyboardAppearance:(*(*(v10 + 8) + 8))(v11)];
  if (a2)
  {
    a2 = [a2 horizontalSizeClass] == 2;
  }

  v12 = v9[3];
  v13 = v9[4];
  sub_100006C7C(v9, v12);
  if ((*(v13 + 32))(v12, v13))
  {

    [a1 setTranslucent:a2];
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 traitCollectionWithUserInterfaceStyle:1];
    sub_10003AEC0();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [v16 appearanceForTraitCollection:v15];
    [v17 setBarStyle:0];
    v18 = [v14 traitCollectionWithUserInterfaceStyle:2];
    v20 = [v16 appearanceForTraitCollection:v18];
    [v20 setBarStyle:1];
  }
}

uint64_t sub_100038A6C(void *a1)
{
  v3 = *v1;
  v4 = sub_1000D91C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v31 - v11;
  v13 = [a1 userInterfaceStyle];
  if (!v13)
  {

    return v1;
  }

  if (v13 == 1)
  {
    v14 = *(v5 + 16);
    v14(v8, v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v4);
    sub_100006E20(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme, v32);
    v15 = *(v3 + 48);
    v16 = *(v3 + 52);
    v1 = swift_allocObject();
    v14(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v8, v4);
    v17 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme;
    v18 = [objc_opt_self() currentDevice];
    v19 = [v18 userInterfaceIdiom];

    v20 = v19 + 1;
    if ((v19 + 1) <= 6)
    {
      v21 = (v1 + v17);
      if (((1 << v20) & 0x5D) != 0)
      {
        sub_100006E20(v32, v31);
        v21[3] = &type metadata for LightTheme;
        v21[4] = &off_10010B468;
        v22 = swift_allocObject();
        *v21 = v22;
        v23 = a1;
        sub_100085474(v31, a1, v22 + 16);
LABEL_6:
        (*(v5 + 8))(v8, v4);
        v24 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme;
LABEL_10:
        sub_100023738(v32, v1 + v24);
        return v1;
      }

      if (v20 == 1)
      {
        sub_100006E20(v32, v31);
        v21[3] = &type metadata for DarkTheme;
        v21[4] = &off_10010A6D8;
        v29 = swift_allocObject();
        *v21 = v29;
        v30 = a1;
        sub_1000673E0(v31, a1, v29 + 16);
        goto LABEL_6;
      }
    }
  }

  else if (v13 == 2)
  {
    v25 = *(v5 + 16);
    v25(v12, v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v4);
    sub_100006E20(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme, v32);
    v26 = *(v3 + 48);
    v27 = *(v3 + 52);
    v1 = swift_allocObject();
    v25(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v12, v4);
    sub_1000A5D40(v32, a1, 2u, (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
    (*(v5 + 8))(v12, v4);
    v24 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme;
    goto LABEL_10;
  }

  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_100038E90()
{
  v1 = OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale;
  v2 = sub_1000D91C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
  sub_100006D0C((v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseStyler()
{
  result = qword_1001161E8;
  if (!qword_1001161E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100038FA0()
{
  result = sub_1000D91C0();
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

uint64_t sub_10003903C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 200))(v4, v5);
  }

  else
  {
    return (*(v5 + 184))(v4, v5);
  }
}

uint64_t sub_1000390D4()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 184))(v4, v5);
  }

  else
  {
    return (*(v5 + 200))(v4, v5);
  }
}

uint64_t sub_10003916C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 232))(v4, v5);
  }

  else
  {
    return (*(v5 + 224))(v4, v5);
  }
}

uint64_t sub_100039204()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 224))(v4, v5);
  }

  else
  {
    return (*(v5 + 232))(v4, v5);
  }
}

uint64_t sub_10003929C()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 248))(v4, v5);
  }

  else
  {
    return (*(v5 + 240))(v4, v5);
  }
}

uint64_t sub_100039334()
{
  v1 = *v0;
  v2 = sub_1000D90D0();
  v3 = (v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  if (v2)
  {
    return (*(v5 + 240))(v4, v5);
  }

  else
  {
    return (*(v5 + 248))(v4, v5);
  }
}

void sub_1000393F8(void *a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v4 = v3[3];
  v5 = v3[4];
  sub_100006C7C(v3, v4);
  v6 = (*(v5 + 128))(v4, v5);
  [a1 setTintColor:v6];

  v7 = v3[3];
  v8 = v3[4];
  sub_100006C7C(v3, v7);
  v9 = (*(v8 + 48))(v7, v8);
  [a1 setBackgroundColor:v9];
}

void sub_10003950C(void *a1)
{
  v2 = *v1;
  v3 = [a1 customView];
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 24);
    v6 = *(v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme + 32);
    sub_100006C7C((v2 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme), v5);
    v7 = (*(v6 + 128))(v5, v6);
    [v4 setTintColor:v7];
  }
}

uint64_t sub_1000395D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_100038A6C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100039600()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 24))(v2, v3) & 1;
}

uint64_t sub_100039664()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 32))(v2, v3) & 1;
}

uint64_t sub_1000396C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t sub_100039728()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 56))(v2, v3);
}

uint64_t sub_100039788()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_1000397E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_100039848()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 80))(v2, v3);
}

uint64_t sub_1000398A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 88))(v2, v3);
}

uint64_t sub_100039908()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 96))(v2, v3);
}

uint64_t sub_100039968()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 104))(v2, v3);
}

uint64_t sub_1000399C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 112))(v2, v3);
}

uint64_t sub_100039A28()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 120))(v2, v3);
}

uint64_t sub_100039A88()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 128))(v2, v3);
}

uint64_t sub_100039AE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 136))(v2, v3);
}

uint64_t sub_100039B48()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 144))(v2, v3);
}

uint64_t sub_100039BA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 152))(v2, v3);
}

uint64_t sub_100039C08()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 160))(v2, v3);
}

uint64_t sub_100039C68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 168))(v2, v3);
}

uint64_t sub_100039CC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 176))(v2, v3);
}

uint64_t sub_100039D28()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 184))(v2, v3);
}

uint64_t sub_100039D88()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 192))(v2, v3);
}

uint64_t sub_100039DE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 200))(v2, v3);
}

uint64_t sub_100039E48()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 208))(v2, v3);
}

uint64_t sub_100039EA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 216))(v2, v3);
}

uint64_t sub_100039F08()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 224))(v2, v3);
}

uint64_t sub_100039F68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 232))(v2, v3);
}

uint64_t sub_100039FC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 240))(v2, v3);
}

uint64_t sub_10003A028()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 248))(v2, v3);
}

uint64_t sub_10003A088()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 264))(v2, v3);
}

uint64_t sub_10003A0E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 272))(v2, v3);
}

uint64_t sub_10003A148()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 280))(v2, v3);
}

uint64_t sub_10003A1A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 288))(v2, v3);
}

uint64_t sub_10003A208()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 296))(v2, v3);
}

uint64_t sub_10003A268()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 304))(v2, v3);
}

uint64_t sub_10003A2C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 312))(v2, v3);
}

uint64_t sub_10003A328()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 320))(v2, v3);
}

uint64_t sub_10003A388()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 328))(v2, v3);
}

uint64_t sub_10003A3E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 336))(v2, v3);
}

uint64_t sub_10003A448()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 344))(v2, v3);
}

uint64_t sub_10003A4A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 352))(v2, v3);
}

uint64_t sub_10003A508()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 360))(v2, v3);
}

uint64_t sub_10003A568()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 368))(v2, v3);
}

uint64_t sub_10003A5C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 376))(v2, v3);
}

uint64_t sub_10003A628()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 384))(v2, v3) & 1;
}

uint64_t sub_10003A68C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 392))(v2, v3);
}

uint64_t sub_10003A6EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 400))(v2, v3);
}

uint64_t sub_10003A74C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 408))(v2, v3);
}

uint64_t sub_10003A7AC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 416))(v2, v3);
}

uint64_t sub_10003A80C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 424))(v2, v3);
}

uint64_t sub_10003A86C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 432))(v2, v3);
}

uint64_t sub_10003A8CC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 440))(v2, v3);
}

uint64_t sub_10003A92C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 448))(v2, v3);
}

uint64_t sub_10003A98C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 456))(v2, v3);
}

uint64_t sub_10003A9EC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 464))(v2, v3);
}

uint64_t sub_10003AA4C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 472))(v2, v3);
}

uint64_t sub_10003AAAC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 480))(v2, v3);
}

uint64_t sub_10003AB0C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 488))(v2, v3);
}

uint64_t sub_10003AB6C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 496))(v2, v3);
}

uint64_t sub_10003ABCC()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 504))(v2, v3);
}

uint64_t sub_10003AC30()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_10003AC90()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 520))(v2, v3);
}

uint64_t sub_10003ACF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 528))(v2, v3);
}

uint64_t sub_10003AD50()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 536))(v2, v3);
}

uint64_t sub_10003ADB0()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(v3 + 544))(v2, v3);
}

uint64_t sub_10003AE10()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_10003AE68()
{
  v1 = (*v0 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  sub_100006C7C(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

unint64_t sub_10003AEC0()
{
  result = qword_100116280;
  if (!qword_100116280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116280);
  }

  return result;
}

uint64_t sub_10003AF0C()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003B084()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003B200(uint64_t a1)
{
  v3 = *v1;
  v98 = sub_1000DB9A0();
  v4 = *(v98 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v98);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v90 - v9;
  v112 = sub_1000D9090();
  v10 = *(v112 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v112);
  v111 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000D8F30();
  v13 = *(v115 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v115);
  v95 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v116 = &v90 - v18;
  __chkstk_darwin(v17);
  v117 = &v90 - v19;
  v110 = type metadata accessor for DetailTimelineEntry();
  v103 = *(v110 - 8);
  v20 = *(v103 + 64);
  __chkstk_darwin(v110);
  v121 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003D8D4();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v102 = (&v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v114 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v113 = &v90 - v31;
  sub_1000D9D00();
  sub_10003F0F8(&qword_1001152E8, type metadata accessor for DemoTimelineManager);
  v120 = v1;
  sub_1000D9D50();

  if (v123 != 1)
  {
    return result;
  }

  v97 = v8;
  v105 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  v108 = (v24 + 48);
  v109 = (v24 + 56);
  v33 = *(a1 + 16);
  v107 = (v10 + 8);
  v122 = (v13 + 8);
  v96 = (v4 + 8);
  v94 = (v13 + 16);
  v101 = a1;

  v34 = 0;
  *&v35 = 136446210;
  v90 = v35;
  *&v35 = 138543362;
  v100 = v35;
  v36 = v114;
  v37 = v115;
  v106 = v23;
  v104 = v33;
  while (1)
  {
    if (v34 == v33)
    {
      v38 = 1;
      v39 = v33;
      goto LABEL_11;
    }

    if (v34 >= v33)
    {
      break;
    }

    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_25;
    }

    v41 = v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v34;
    v42 = *(v23 + 48);
    v43 = v102;
    *v102 = v34;
    sub_10003D940(v41, v43 + v42);
    sub_10003DA38(v43, v36, sub_10003D8D4);
    v38 = 0;
    v39 = v40;
LABEL_11:
    (*v109)(v36, v38, 1, v23);
    v44 = v113;
    sub_10003D9A4(v36, v113);
    if ((*v108)(v44, 1, v23) == 1)
    {
    }

    v118 = v39;
    v119 = 0;
    v45 = v121;
    sub_10003DA38(v44 + *(v23 + 48), v121, type metadata accessor for DetailTimelineEntry);
    v46 = v116;
    sub_10003C5AC(v116);
    v47 = (v45 + *(v110 + 20));
    v48 = v47[1];
    v123 = *v47;
    v124 = v48;

    v125._countAndFlagsBits = 95;
    v125._object = 0xE100000000000000;
    sub_1000DBA00(v125);
    v49 = [objc_allocWithZone(NSDateFormatter) init];
    v50 = sub_1000DB910();
    [v49 setDateFormat:v50];

    v51 = v111;
    sub_1000D9050();
    isa = sub_1000D9010().super.isa;
    (*v107)(v51, v112);
    v53 = [v49 stringFromDate:isa];

    v54 = sub_1000DB950();
    v56 = v55;

    v126._countAndFlagsBits = v54;
    v126._object = v56;
    sub_1000DBA00(v126);
    v57 = v117;

    v127._countAndFlagsBits = 0x6E6F736A2ELL;
    v127._object = 0xE500000000000000;
    sub_1000DBA00(v127);
    sub_1000D8EF0();

    v58 = *v122;
    (*v122)(v46, v37);
    v59 = sub_1000D8DE0();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    sub_1000D8DD0();
    sub_10003F0F8(&qword_100116368, type metadata accessor for DetailTimelineEntry);
    v62 = v119;
    v63 = sub_1000D8DC0();
    if (v62)
    {

      swift_errorRetain();
      v71 = sub_1000DA350();
      v72 = sub_1000DBDB0();

      v73 = os_log_type_enabled(v71, v72);
      v37 = v115;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = v58;
        v76 = swift_slowAlloc();
        *v74 = v100;
        swift_errorRetain();
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v77;
        *v76 = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed writing entry to disk. error=%{public}@", v74, 0xCu);
        sub_10003DAFC(v76, &qword_100114B48, sub_100006CC0);

        v75(v117, v37);
      }

      else
      {

        v58(v57, v37);
      }

      result = sub_10003DAA0(v121);
    }

    else
    {
      v65 = v63;
      v66 = v64;
      v67 = v58;
      sub_1000DB990();
      result = sub_1000DB970();
      if (!v68)
      {
        goto LABEL_26;
      }

      v123 = result;
      v124 = v68;
      v69 = v97;
      sub_1000DB990();
      sub_100017740();
      v70 = v117;
      sub_1000DBEB0();
      (*v96)(v69, v98);

      v78 = *v94;
      v79 = v95;
      v80 = v115;
      (*v94)(v95, v70, v115);
      v81 = sub_1000DA350();
      LODWORD(v119) = sub_1000DBDD0();
      if (os_log_type_enabled(v81, v119))
      {
        v82 = swift_slowAlloc();
        v91 = v82;
        v93 = swift_slowAlloc();
        v123 = v93;
        *v82 = v90;
        v92 = v81;
        v83 = v95;
        v78(v116, v95, v80);
        v84 = sub_1000DB9D0();
        v86 = v85;
        v67(v83, v80);
        v87 = sub_1000848C8(v84, v86, &v123);

        v88 = v91;
        *(v91 + 1) = v87;
        v89 = v92;
        _os_log_impl(&_mh_execute_header, v92, v119, "Demo entries to disk: %{public}s.", v88, 0xCu);
        sub_100006D0C(v93);

        sub_10003DB6C(v65, v66);
      }

      else
      {
        sub_10003DB6C(v65, v66);

        v67(v79, v80);
      }

      v67(v70, v80);
      result = sub_10003DAA0(v121);
      v37 = v80;
    }

    v23 = v106;
    v36 = v114;
    v33 = v104;
    v34 = v118;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10003BE44@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = *v1;
  v3 = sub_1000DB760();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000D9090();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v65);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v55 - v10;
  v56 = type metadata accessor for DetailTimelineEntry();
  v67 = *(v56 - 8);
  v11 = *(v67 + 64);
  v12 = __chkstk_darwin(v56);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  sub_10003D8D4();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v59 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = (&v55 - v26);
  sub_1000D9D10();
  sub_10003F0F8(&qword_1001152E8, type metadata accessor for DemoTimelineManager);
  sub_1000D9D50();

  v55 = v1;
  v69 = sub_10003C84C();

  sub_10003DCE8(&v69);

  i = 0;
  v60 = v69;
  v29 = v69[2];
  v30 = (v18 + 56);
  v31 = (v18 + 48);
  v61 = (v6 + 8);
  v32 = (v6 + 40);
  v33 = &_swiftEmptyArrayStorage;
  v66 = v25;
  v62 = v29;
  if (v29)
  {
    goto LABEL_3;
  }

LABEL_2:
  v34 = 1;
  for (i = v29; ; ++i)
  {
    (*v30)(v25, v34, 1, v17);
    sub_10003D9A4(v25, v27);
    if ((*v31)(v27, 1, v17) == 1)
    {
      break;
    }

    v39 = *v27;
    sub_10003DA38(v27 + *(v17 + 48), v15, type metadata accessor for DetailTimelineEntry);
    v40 = v64;
    sub_1000D9080();
    v41 = v63;
    sub_1000D9000();
    v42 = v40;
    v43 = v65;
    (*v61)(v42, v65);
    (*v32)(v15, v41, v43);
    sub_10003D940(v15, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_10007B704(0, v33[2] + 1, 1, v33);
    }

    v45 = v33[2];
    v44 = v33[3];
    if (v45 >= v44 >> 1)
    {
      v33 = sub_10007B704(v44 > 1, v45 + 1, 1, v33);
    }

    v33[2] = v45 + 1;
    sub_10003DA38(v68, v33 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45, type metadata accessor for DetailTimelineEntry);
    sub_10003DAA0(v15);
    v25 = v66;
    v29 = v62;
    if (i == v62)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);

      __break(1u);
      return result;
    }

    if (i >= v60[2])
    {
      goto LABEL_17;
    }

    v35 = v60 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * i;
    v36 = *(v17 + 48);
    v37 = v59;
    *v59 = i;
    sub_10003D940(v35, v37 + v36);
    v38 = v37;
    v25 = v66;
    sub_10003DA38(v38, v66, sub_10003D8D4);
    v34 = 0;
  }

  v46 = sub_1000DA350();
  v47 = sub_1000DBDD0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v69 = v49;
    *v48 = 136315138;

    v50 = sub_1000DBB40();
    v52 = v51;

    v53 = sub_1000848C8(v50, v52, &v69);

    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v46, v47, "Returning entries:%s", v48, 0xCu);
    sub_100006D0C(v49);
  }

  sub_1000DB740();
  sub_10003F0F8(&qword_100115298, type metadata accessor for DetailTimelineEntry);
  sub_1000DB810();
}

void sub_10003C5AC(unint64_t a1@<X8>)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory;
  swift_beginAccess();
  sub_10003DBC0(v1 + v10, v9);
  v11 = sub_1000D8F30();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_10003DAFC(v9, &qword_100114D80, &type metadata accessor for URL);
    v13 = [objc_opt_self() defaultManager];
    v14 = [v13 URLsForDirectory:9 inDomains:1];

    v15 = sub_1000DBB10();
    if (*(v15 + 16))
    {
      v16 = *(v12 + 16);
      v16(a1, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

      v16(v7, a1, v11);
      (*(v12 + 56))(v7, 0, 1, v11);
      swift_beginAccess();
      sub_10003DC54(v7, v1 + v10);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v12 + 32))(a1, v9, v11);
  }
}

void *sub_10003C84C()
{
  sub_10003F080(0, &qword_100116378, type metadata accessor for DetailTimelineEntry, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v93 - v3;
  v5 = type metadata accessor for DetailTimelineEntry();
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  v7 = __chkstk_darwin(v5);
  v96 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v93 - v9;
  v107 = sub_1000DB9A0();
  v117 = *(v107 - 8);
  v10 = *(v117 + 64);
  __chkstk_darwin(v107);
  v106 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D8F30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v94 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v112 = &v93 - v18;
  v19 = __chkstk_darwin(v17);
  v119 = &v93 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v93 - v22;
  __chkstk_darwin(v21);
  v25 = &v93 - v24;
  v116 = v0;
  sub_10003C5AC(v23);
  sub_1000D8EF0();
  v111 = v13;
  v26 = v13 + 8;
  v27 = *(v13 + 8);
  v27(v23, v12);
  v28 = [objc_opt_self() defaultManager];
  sub_1000D8EE0(v29);
  v31 = v30;
  v120 = 0;
  v32 = [v28 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:0 error:&v120];

  v33 = v120;
  if (!v32)
  {
    v86 = v120;
    sub_1000D8E60();

    swift_willThrow();
    v27(v25, v12);
LABEL_28:
    swift_errorRetain();
    v87 = sub_1000DA350();
    v88 = sub_1000DBDB0();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543362;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "WidgetDemo failed to decode entries. error=%{public}@", v89, 0xCu);
      sub_10003DAFC(v90, &qword_100114B48, sub_100006CC0);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v110 = v27;
  v115 = v26;
  v34 = sub_1000DBB10();
  v35 = v33;

  v36 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;

  v114 = v36;
  v37 = sub_1000DA350();
  v38 = sub_1000DBDD0();

  v39 = os_log_type_enabled(v37, v38);
  v101 = v4;
  v108 = v25;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v120 = v41;
    *v40 = 136315138;
    v42 = sub_1000DBB40();
    v44 = sub_1000848C8(v42, v43, &v120);
    v25 = v108;

    *(v40 + 4) = v44;
    v4 = v101;
    _os_log_impl(&_mh_execute_header, v37, v38, "Found Content:%s", v40, 0xCu);
    sub_100006D0C(v41);
  }

  v46 = v110;
  v47 = v112;
  v105 = *(v34 + 16);
  if (v105)
  {
    v98 = v5;
    v48 = 0;
    v118 = 0;
    v104 = v34 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v113 = v111 + 16;
    v103 = (v117 + 8);
    v97 = (v95 + 56);
    v102 = &_swiftEmptyArrayStorage;
    *&v45 = 136315138;
    v99 = v45;
    while (1)
    {
      if (v48 >= *(v34 + 16))
      {
        __break(1u);
      }

      v49 = *(v111 + 72);
      v117 = v48;
      v50 = *(v111 + 16);
      v51 = v119;
      (v50)(v119, v104 + v49 * v48, v12);
      v109 = v50;
      (v50)(v47, v51, v12);
      v52 = sub_1000DA350();
      v53 = v47;
      v54 = sub_1000DBDD0();
      if (os_log_type_enabled(v52, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v120 = v56;
        *v55 = v99;
        sub_10003F0F8(&qword_100116388, &type metadata accessor for URL);
        v57 = v34;
        v58 = sub_1000DC320();
        v60 = v59;
        v110(v53, v12);
        v46 = v110;
        v61 = v58;
        v34 = v57;
        v62 = sub_1000848C8(v61, v60, &v120);
        v25 = v108;

        *(v55 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v52, v54, "Found URL:%s", v55, 0xCu);
        sub_100006D0C(v56);
        v4 = v101;
      }

      else
      {

        v46(v53, v12);
      }

      sub_1000D8F10();
      v63 = v118;
      sub_1000DB8E0();
      if (v63)
      {
        break;
      }

      v118 = 0;

      v64 = v106;
      sub_1000DB990();
      v65 = sub_1000DB960();
      v67 = v66;

      (*v103)(v64, v107);
      if (v67 >> 60 == 15)
      {
        v46(v119, v12);
      }

      else
      {
        v68 = sub_1000D8D90();
        v69 = *(v68 + 48);
        v70 = *(v68 + 52);
        swift_allocObject();
        sub_1000D8D80();
        sub_10003F0F8(&qword_100116380, type metadata accessor for DetailTimelineEntry);
        v71 = v98;
        v72 = v118;
        sub_1000D8D70();
        if (v72)
        {

          sub_10003F0E4(v65, v67);

          v46(v119, v12);
          (*v97)(v4, 1, 1, v71);
          sub_10003DAFC(v4, &qword_100116378, type metadata accessor for DetailTimelineEntry);
          v118 = 0;
          v25 = v108;
        }

        else
        {
          v118 = 0;

          (*v97)(v4, 0, 1, v71);
          sub_10003DA38(v4, v100, type metadata accessor for DetailTimelineEntry);
          v73 = v94;
          v109(v94, v119, v12);
          v74 = sub_1000DA350();
          v75 = sub_1000DBDD0();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v120 = v109;
            *v76 = v99;
            sub_10003F0F8(&qword_100116388, &type metadata accessor for URL);
            v77 = sub_1000DC320();
            v78 = v73;
            v80 = v79;
            v46(v78, v12);
            v81 = sub_1000848C8(v77, v80, &v120);

            *(v76 + 4) = v81;
            _os_log_impl(&_mh_execute_header, v74, v75, "Succeeded decoding:%s", v76, 0xCu);
            sub_100006D0C(v109);
          }

          else
          {

            v46(v73, v12);
          }

          v25 = v108;
          sub_10003D940(v100, v96);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4 = v101;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v102 = sub_10007B704(0, v102[2] + 1, 1, v102);
          }

          v84 = v102[2];
          v83 = v102[3];
          if (v84 >= v83 >> 1)
          {
            v102 = sub_10007B704(v83 > 1, v84 + 1, 1, v102);
          }

          sub_10003F0E4(v65, v67);
          sub_10003DAA0(v100);
          v46(v119, v12);
          v85 = v102;
          v102[2] = v84 + 1;
          sub_10003DA38(v96, v85 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v84, type metadata accessor for DetailTimelineEntry);
        }
      }

      v48 = v117 + 1;
      v47 = v112;
      if (v105 == v117 + 1)
      {
        goto LABEL_26;
      }
    }

    v46(v119, v12);
    v46(v25, v12);

    goto LABEL_28;
  }

  v102 = &_swiftEmptyArrayStorage;
LABEL_26:

  v46(v25, v12);
  return v102;
}

uint64_t sub_10003D5E0()
{
  v1 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_stocksSuiteKey + 8);

  sub_10003DAFC(v0 + OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory, &qword_100114D80, &type metadata accessor for URL);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DemoTimelineManager()
{
  result = qword_1001162C0;
  if (!qword_1001162C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D710()
{
  v0 = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10003F080(319, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003D8D4()
{
  if (!qword_100116358)
  {
    type metadata accessor for DetailTimelineEntry();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116358);
    }
  }
}

uint64_t sub_10003D940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D9A4(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100116360, sub_10003D8D4, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DAA0(uint64_t a1)
{
  v2 = type metadata accessor for DetailTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_10003F080(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10003DB6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003DBC0(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DC54(uint64_t a1, uint64_t a2)
{
  sub_10003F080(0, &qword_100114D80, &type metadata accessor for URL, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10003DCE8(void **a1)
{
  v2 = *(type metadata accessor for DetailTimelineEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10003F06C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10003DD90(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10003DD90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000DC310(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DetailTimelineEntry();
        v6 = sub_1000DBB80();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DetailTimelineEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10003E0CC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10003DEBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10003DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for DetailTimelineEntry();
  v8 = *(*(v34 - 8) + 64);
  v9 = __chkstk_darwin(v34);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_10003D940(v24, v18);
      sub_10003D940(v21, v14);
      v25 = sub_1000D9060();
      sub_10003DAA0(v14);
      result = sub_10003DAA0(v18);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_10003DA38(v24, v11, type metadata accessor for DetailTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10003DA38(v11, v21, type metadata accessor for DetailTimelineEntry);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10003E0CC(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v106 = a1;
  v117 = type metadata accessor for DetailTimelineEntry();
  v112 = *(v117 - 8);
  v9 = *(v112 + 64);
  v10 = __chkstk_darwin(v117);
  v107 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v116 = &v102 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v102 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v102 - v18;
  v114 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v104 = a4;
    v21 = 0;
    v22 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v23 = v21;
      v24 = v21 + 1;
      if (v24 >= v20)
      {
        v34 = v24;
      }

      else
      {
        v115 = v20;
        v25 = *v114;
        v110 = v25;
        v26 = *(v112 + 72);
        v5 = v25 + v26 * v24;
        sub_10003D940(v5, v19);
        sub_10003D940(v25 + v26 * v23, v16);
        v111 = sub_1000D9060();
        sub_10003DAA0(v16);
        result = sub_10003DAA0(v19);
        v105 = v23;
        v27 = v23 + 2;
        v113 = v26;
        v28 = v110 + v26 * (v23 + 2);
        while (v115 != v27)
        {
          v29 = v6;
          v30 = v22;
          v31 = v111 == -1;
          sub_10003D940(v28, v19);
          sub_10003D940(v5, v16);
          v32 = sub_1000D9060();
          sub_10003DAA0(v16);
          result = sub_10003DAA0(v19);
          v33 = v31 ^ (v32 != -1);
          v22 = v30;
          v6 = v29;
          ++v27;
          v28 += v113;
          v5 += v113;
          if ((v33 & 1) == 0)
          {
            v34 = v27 - 1;
            goto LABEL_11;
          }
        }

        v34 = v115;
LABEL_11:
        v23 = v105;
        if (v111 == -1)
        {
          if (v34 < v105)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return result;
          }

          if (v105 < v34)
          {
            v102 = v22;
            v103 = v6;
            v35 = v113 * (v34 - 1);
            v5 = v34 * v113;
            v115 = v34;
            v36 = v105;
            v37 = v105 * v113;
            do
            {
              if (v36 != --v34)
              {
                v38 = *v114;
                if (!*v114)
                {
                  goto LABEL_131;
                }

                sub_10003DA38(v38 + v37, v107, type metadata accessor for DetailTimelineEntry);
                if (v37 < v35 || v38 + v37 >= (v38 + v5))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v37 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_10003DA38(v107, v38 + v35, type metadata accessor for DetailTimelineEntry);
              }

              ++v36;
              v35 -= v113;
              v5 -= v113;
              v37 += v113;
            }

            while (v36 < v34);
            v22 = v102;
            v6 = v103;
            v23 = v105;
            v34 = v115;
          }
        }
      }

      v39 = v114[1];
      if (v34 >= v39)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v34, v23))
      {
        goto LABEL_123;
      }

      if (v34 - v23 >= v104)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v23, v104))
      {
        goto LABEL_124;
      }

      if (v23 + v104 >= v39)
      {
        v5 = v114[1];
      }

      else
      {
        v5 = v23 + v104;
      }

      if (v5 < v23)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v34 == v5)
      {
LABEL_34:
        v5 = v34;
        if (v34 < v23)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v102 = v22;
        v103 = v6;
        v86 = *v114;
        v87 = *(v112 + 72);
        v88 = *v114 + v87 * (v34 - 1);
        v89 = -v87;
        v105 = v23;
        v90 = v23 - v34;
        v108 = v87;
        v109 = v5;
        v91 = v86 + v34 * v87;
        do
        {
          v115 = v34;
          v110 = v91;
          v111 = v90;
          v92 = v91;
          v93 = v90;
          v113 = v88;
          v94 = v88;
          do
          {
            sub_10003D940(v92, v19);
            sub_10003D940(v94, v16);
            v95 = sub_1000D9060();
            sub_10003DAA0(v16);
            result = sub_10003DAA0(v19);
            if (v95 != -1)
            {
              break;
            }

            if (!v86)
            {
              goto LABEL_128;
            }

            v96 = v116;
            sub_10003DA38(v92, v116, type metadata accessor for DetailTimelineEntry);
            swift_arrayInitWithTakeFrontToBack();
            sub_10003DA38(v96, v94, type metadata accessor for DetailTimelineEntry);
            v94 += v89;
            v92 += v89;
          }

          while (!__CFADD__(v93++, 1));
          v34 = v115 + 1;
          v5 = v109;
          v88 = v113 + v108;
          v90 = v111 - 1;
          v91 = v110 + v108;
        }

        while (v115 + 1 != v109);
        v22 = v102;
        v6 = v103;
        v23 = v105;
        if (v109 < v105)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10007B738(0, *(v22 + 2) + 1, 1, v22);
        v22 = result;
      }

      v41 = *(v22 + 2);
      v40 = *(v22 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_10007B738((v40 > 1), v41 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 2) = v42;
      v43 = &v22[16 * v41];
      *(v43 + 4) = v23;
      *(v43 + 5) = v5;
      v44 = *v106;
      if (!*v106)
      {
        goto LABEL_132;
      }

      v109 = v5;
      if (v41)
      {
        while (1)
        {
          v5 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v45 = *(v22 + 4);
            v46 = *(v22 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_54:
            if (v48)
            {
              goto LABEL_111;
            }

            v61 = &v22[16 * v42];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_114;
            }

            v67 = &v22[16 * v5 + 32];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_118;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v5 = v42 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v71 = &v22[16 * v42];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_68:
          if (v66)
          {
            goto LABEL_113;
          }

          v74 = &v22[16 * v5];
          v76 = *(v74 + 4);
          v75 = *(v74 + 5);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_116;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_75:
          v82 = v5 - 1;
          if (v5 - 1 >= v42)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*v114)
          {
            goto LABEL_129;
          }

          v83 = *&v22[16 * v82 + 32];
          v84 = *&v22[16 * v5 + 40];
          sub_10003E95C(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v22[16 * v5 + 32], *v114 + *(v112 + 72) * v84, v44);
          if (v6)
          {
          }

          if (v84 < v83)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_10003EE4C(v22);
          }

          if (v82 >= *(v22 + 2))
          {
            goto LABEL_108;
          }

          v85 = &v22[16 * v82];
          *(v85 + 4) = v83;
          *(v85 + 5) = v84;
          v118 = v22;
          result = sub_10003EDC0(v5);
          v22 = v118;
          v42 = *(v118 + 2);
          if (v42 <= 1)
          {
            goto LABEL_3;
          }
        }

        v49 = &v22[16 * v42 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_109;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_110;
        }

        v56 = &v22[16 * v42];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_112;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v60 >= v52)
        {
          v78 = &v22[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_119;
          }

          if (v47 < v81)
          {
            v5 = v42 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      v20 = v114[1];
      v21 = v109;
      if (v109 >= v20)
      {
        goto LABEL_95;
      }
    }
  }

  v22 = &_swiftEmptyArrayStorage;
LABEL_95:
  v5 = *v106;
  if (!*v106)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_10003EE4C(v22);
    v22 = result;
  }

  v118 = v22;
  v98 = *(v22 + 2);
  if (v98 >= 2)
  {
    while (*v114)
    {
      v99 = *&v22[16 * v98];
      v100 = *&v22[16 * v98 + 24];
      sub_10003E95C(*v114 + *(v112 + 72) * v99, *v114 + *(v112 + 72) * *&v22[16 * v98 + 16], *v114 + *(v112 + 72) * v100, v5);
      if (v6)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10003EE4C(v22);
      }

      if (v98 - 2 >= *(v22 + 2))
      {
        goto LABEL_121;
      }

      v101 = &v22[16 * v98];
      *v101 = v99;
      *(v101 + 1) = v100;
      v118 = v22;
      result = sub_10003EDC0(v98 - 1);
      v22 = v118;
      v98 = *(v118 + 2);
      if (v98 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_10003E95C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = a3;
  v40 = type metadata accessor for DetailTimelineEntry();
  v8 = *(*(v40 - 8) + 64);
  v9 = __chkstk_darwin(v40);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = v35 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v17 = v41 - a2;
  if (v41 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v18 = (a2 - a1) / v16;
  v44 = a1;
  v43 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35[1] = v4;
    v24 = a4 + v20;
    if (v20 < 1)
    {
      v27 = a4 + v20;
    }

    else
    {
      v25 = -v16;
      v26 = a4 + v20;
      v27 = v24;
      v37 = v11;
      v38 = v25;
      while (2)
      {
        while (1)
        {
          v35[0] = v27;
          v28 = a2 + v25;
          v39 = a2;
          while (1)
          {
            v30 = v41;
            if (a2 <= a1)
            {
              v44 = a2;
              v42 = v35[0];
              goto LABEL_60;
            }

            v36 = v27;
            v41 += v25;
            v31 = v26 + v25;
            sub_10003D940(v31, v14);
            a2 = v28;
            v32 = v28;
            v33 = v37;
            sub_10003D940(v32, v37);
            v34 = sub_1000D9060();
            sub_10003DAA0(v33);
            sub_10003DAA0(v14);
            if (v34 == -1)
            {
              break;
            }

            v27 = v31;
            if (v30 < v26 || v41 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v28 = a2;
            }

            else
            {
              v28 = a2;
              if (v30 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v26 = v31;
            v29 = v31 > a4;
            v25 = v38;
            a2 = v39;
            if (!v29)
            {
              goto LABEL_58;
            }
          }

          if (v30 < v39 || v41 >= v39)
          {
            break;
          }

          v27 = v36;
          v25 = v38;
          if (v30 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 <= a4)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v27 = v36;
        v25 = v38;
        if (v26 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v44 = a2;
    v42 = v27;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v42 = a4 + v19;
    if (v19 >= 1 && a2 < v41)
    {
      do
      {
        sub_10003D940(a2, v14);
        sub_10003D940(a4, v11);
        v23 = sub_1000D9060();
        sub_10003DAA0(v11);
        sub_10003DAA0(v14);
        if (v23 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v44 = a1;
      }

      while (a4 < v21 && a2 < v41);
    }
  }

LABEL_60:
  sub_10003EE60(&v44, &v43, &v42);
  return 1;
}

uint64_t sub_10003EDC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003EE4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10003EE60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for DetailTimelineEntry();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10003EF44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003F080(0, &qword_100116370, sub_100028708, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_10003F080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10003F0E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003DB6C(a1, a2);
  }

  return a1;
}

uint64_t sub_10003F0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F154(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_1000D9690();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_11;
  }

  sub_100023660(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

void sub_10003F338(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100044610(a4, a5);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10003F3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10003F444(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000D9690();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_100023660(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_10003F608()
{
  sub_100043588(319, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10003F338(319, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
    if (v1 <= 0x3F)
    {
      sub_1000D9690();
      if (v2 <= 0x3F)
      {
        sub_100023660(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10003F734@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v99 = a2;
  v5 = sub_1000D9690();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  __chkstk_darwin(v5);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v89 - v9;
  sub_10003F3CC(0, &qword_100116450, sub_100040538, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  v95 = *(v22 - 8);
  v96 = v22;
  v23 = *(v95 + 64);
  __chkstk_darwin(v22);
  v90 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v91 = &v89 - v26;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  v33 = sub_1000DB720();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v34 + 16);
  v89 = a1;
  v39(v38, a1, v33, v36);
  v40 = (*(v34 + 88))(v38, v33);
  if (v40 == enum case for WidgetFamily.systemSmall(_:))
  {
    v100 = xmmword_1000E0210;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    sub_1000DA240();
    sub_100040538();
    v42 = v41;
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v21, 1, v41);
    if (v44 != 1)
    {
      v45 = v99 & 1;
      __chkstk_darwin(v44);
      type metadata accessor for TickerCellViewModel(0);
      sub_1000DA1D0();
      (*(v43 + 8))(v21, v42);
      v46 = type metadata accessor for WatchlistOverviewContentViewModel(0);
      (*(v97 + 104))(&a3[v46[7]], enum case for PriceChangeDisplay.currency(_:), v98);
      v47 = v46[11];
      sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
      (*(*(v48 - 8) + 56))(&a3[v47], 1, 1, v48);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = (*(v95 + 32))(&a3[v46[5]], v32, v96);
      a3[v46[6]] = v45;
      *&a3[v46[8]] = 3;
      *&a3[v46[9]] = 1;
      a3[v46[10]] = v45;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v40 == enum case for WidgetFamily.systemMedium(_:))
  {
    v50 = v99;
    v51 = 3;
    if (v99)
    {
      v51 = 4;
    }

    *&v100 = 0;
    *(&v100 + 1) = v51;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    sub_1000DA240();
    sub_100040538();
    v53 = v52;
    v54 = *(v52 - 8);
    v55 = (*(v54 + 48))(v18, 1, v52);
    if (v55 == 1)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __chkstk_darwin(v55);
    v99 = v50 & 1;
    if (v50)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    if (v50)
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    v93 = v57;
    if (v50)
    {
      v58 = 2;
    }

    else
    {
      v58 = 3;
    }

    type metadata accessor for TickerCellViewModel(0);
    sub_1000DA1D0();
    (*(v54 + 8))(v18, v53);
    v60 = v97;
    v59 = v98;
    v61 = v94;
    (*(v97 + 104))(v94, enum case for PriceChangeDisplay.currency(_:), v98);
    v62 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v63 = v62[11];
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v64 - 8) + 56))(&a3[v63], 1, 1, v64);
    *a3 = 0;
    *(a3 + 1) = 0;
    (*(v95 + 32))(&a3[v62[5]], v29, v96);
    a3[v62[6]] = v56;
    result = (*(v60 + 32))(&a3[v62[7]], v61, v59);
    *&a3[v62[8]] = v58;
    *&a3[v62[9]] = v93;
    goto LABEL_29;
  }

  v65 = v99;
  if (v40 == enum case for WidgetFamily.systemLarge(_:))
  {
    v66 = 6;
    if (v99)
    {
      v66 = 12;
    }

    *&v100 = 0;
    *(&v100 + 1) = v66;
    sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    v67 = v93;
    sub_1000DA240();
    sub_100040538();
    v69 = v68;
    v70 = *(v68 - 8);
    v71 = (*(v70 + 48))(v67, 1, v68);
    if (v71 == 1)
    {
      goto LABEL_37;
    }

    __chkstk_darwin(v71);
    v99 = v65 & 1;
    if (v65)
    {
      v72 = 1;
    }

    else
    {
      v72 = 2;
    }

    if (v65)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    type metadata accessor for TickerCellViewModel(0);
    v74 = v91;
    sub_1000DA1D0();
    (*(v70 + 8))(v67, v69);
    v76 = v97;
    v75 = v98;
    v77 = v92;
    (*(v97 + 104))(v92, enum case for PriceChangeDisplay.currency(_:), v98);
    v62 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v78 = v62[11];
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v79 - 8) + 56))(&a3[v78], 1, 1, v79);
    *a3 = 0;
    *(a3 + 1) = 0;
    (*(v95 + 32))(&a3[v62[5]], v74, v96);
    a3[v62[6]] = v72;
    result = (*(v76 + 32))(&a3[v62[7]], v77, v75);
    *&a3[v62[8]] = 6;
    *&a3[v62[9]] = v73;
LABEL_29:
    v80 = v62[10];
    v81 = v99;
    goto LABEL_33;
  }

  if (v40 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
LABEL_39:
    *&v100 = 0;
    *(&v100 + 1) = 0xE000000000000000;
    sub_1000DBF50(65);
    v101._object = 0x80000001000E8850;
    v101._countAndFlagsBits = 0xD00000000000003DLL;
    sub_1000DBA00(v101);
    sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily);
    v102._countAndFlagsBits = sub_1000DC320();
    sub_1000DBA00(v102);

    v103._countAndFlagsBits = 11815;
    v103._object = 0xE200000000000000;
    sub_1000DBA00(v103);
    result = sub_1000DC0D0();
    __break(1u);
    return result;
  }

  v100 = xmmword_1000E0210;
  sub_1000435D8(0, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
  sub_1000405C8();
  sub_1000DA240();
  sub_100040538();
  v83 = v82;
  v84 = *(v82 - 8);
  if ((*(v84 + 48))(v13, 1, v82) == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  type metadata accessor for TickerCellViewModel(0);
  v85 = v90;
  sub_1000DA1D0();
  (*(v84 + 8))(v13, v83);
  v86 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(v97 + 104))(&a3[v86[7]], enum case for PriceChangeDisplay.currency(_:), v98);
  v87 = v86[11];
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  (*(*(v88 - 8) + 56))(&a3[v87], 1, 1, v88);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = (*(v95 + 32))(&a3[v86[5]], v85, v96);
  a3[v86[6]] = 3;
  *&a3[v86[8]] = 3;
  *&a3[v86[9]] = 1;
  v80 = v86[10];
  v81 = v65 & 1;
LABEL_33:
  a3[v80] = v81;
  return result;
}

void sub_100040538()
{
  if (!qword_100116458)
  {
    sub_1000435D8(255, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000405C8();
    v0 = sub_1000DA220();
    if (!v1)
    {
      atomic_store(v0, &qword_100116458);
    }
  }
}

unint64_t sub_1000405C8()
{
  result = qword_100116460;
  if (!qword_100116460)
  {
    sub_1000435D8(255, &qword_100115500, &type metadata for Int, &protocol witness table for Int, &type metadata accessor for Range);
    sub_1000287E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116460);
  }

  return result;
}

uint64_t sub_1000406E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003F3CC(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_100040844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10003F3CC(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for WatchlistOverviewContentViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

void sub_1000409B8()
{
  sub_10003F3CC(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100043588(319, &unk_100115860, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100043588(319, &unk_1001164D0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WatchlistOverviewContentViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100040B00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v114 = a2;
  sub_100043A34(0, &qword_1001165C0, sub_100043AC4);
  v118 = v3;
  v121 = *(v3 - 8);
  v4 = *(v121 + 64);
  __chkstk_darwin(v3);
  v117 = (&v95 - v5);
  sub_100023660(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  v11 = v10;
  v122 = *(v10 - 8);
  v12 = *(v122 + 64);
  __chkstk_darwin(v10);
  v116 = &v95 - v13;
  sub_1000439C0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  sub_10004362C(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  v28 = sub_1000DAC10();
  v111 = *(v28 - 8);
  v112 = v28;
  v29 = *(v111 + 64);
  __chkstk_darwin(v28);
  v110 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WatchlistOverviewContentView(0);
  v32 = a1;
  v33 = (a1 + *(v31 + 28));
  v34 = v33[1];
  v119 = v17;
  v120 = v11;
  v109 = v31;
  v115 = v33;
  if (v34)
  {
    v35 = v31;
    v105 = v9;
    v107 = v27;
    v108 = v20;
    v113 = v24;
    *&v189 = *v33;
    *(&v189 + 1) = v34;
    sub_100017740();

    v36 = sub_1000DB170();
    v102 = v37;
    v103 = v36;
    v39 = v38;
    v104 = v40;
    KeyPath = swift_getKeyPath();
    v41 = v39 & 1;
    LOBYTE(v170) = v39 & 1;
    LOBYTE(v157) = 0;
    v99 = swift_getKeyPath();
    LOBYTE(v189) = 0;
    v100 = sub_1000DADD0();
    sub_1000DB040();
    sub_1000DAFC0();
    v98 = sub_1000DB010();

    v97 = swift_getKeyPath();
    v42 = *(v35 + 24);
    v106 = v32;
    v43 = v32 + v42;
    v45 = *v43;
    v44 = *(v43 + 8);
    v47 = *(v43 + 16);
    v46 = *(v43 + 24);
    if (*(v43 + 32))
    {
      v136 = *v43;
      v137 = v44;
      v138 = v47;
      v139 = v46;
    }

    else
    {

      sub_1000DBDC0();
      v49 = sub_1000DAED0();
      sub_1000DA330();

      v50 = v110;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v45, v44, v47, v46, 0);
      (*(v111 + 8))(v50, v112);
      v45 = v136;
    }

    v51 = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = v45;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 40) = 0;
    sub_1000DB600();
    sub_1000DA7A0();
    v53 = v183;
    v54 = v184;
    v55 = v185;
    v56 = v186;
    v95 = v188;
    v96 = v187;
    v125 = 1;
    v124 = v184;
    v123 = v186;
    *&v126 = v103;
    *(&v126 + 1) = v102;
    LOBYTE(v127) = v41;
    *(&v127 + 1) = *v143;
    DWORD1(v127) = *&v143[3];
    *(&v127 + 1) = v104;
    *&v128 = 0;
    *(&v128 + 1) = KeyPath;
    v129 = 0;
    v130 = 0;
    *&v131 = 0;
    BYTE8(v131) = 0;
    HIDWORD(v131) = *&v142[3];
    *(&v131 + 9) = *v142;
    *&v132 = v99;
    *(&v132 + 1) = 1;
    LOBYTE(v133) = 0;
    BYTE3(v133) = v141;
    *(&v133 + 1) = v140;
    DWORD1(v133) = v100;
    *(&v133 + 1) = v97;
    *&v134 = v98;
    *(&v134 + 1) = v51;
    *&v135 = sub_10002B5D4;
    *(&v135 + 1) = v52;
    v146 = v128;
    v147 = 0u;
    v144 = v126;
    v145 = v127;
    v151 = v134;
    v152 = v135;
    v149 = v132;
    v150 = v133;
    v148 = v131;
    *&v157 = v103;
    *(&v157 + 1) = v102;
    LOBYTE(v158) = v41;
    *(&v158 + 1) = *v143;
    DWORD1(v158) = *&v143[3];
    *(&v158 + 1) = v104;
    *&v159 = 0;
    *(&v159 + 1) = KeyPath;
    v160 = 0uLL;
    *&v161 = 0;
    BYTE8(v161) = 0;
    *(&v161 + 9) = *v142;
    HIDWORD(v161) = *&v142[3];
    *&v162 = v99;
    *(&v162 + 1) = 1;
    LOBYTE(v163) = 0;
    *(&v163 + 1) = v140;
    BYTE3(v163) = v141;
    DWORD1(v163) = v100;
    *(&v163 + 1) = v97;
    *&v164 = v98;
    *(&v164 + 1) = v51;
    *&v165 = sub_10002B5D4;
    *(&v165 + 1) = v52;
    sub_10004451C(&v126, &v189, sub_10004333C);
    sub_100044398(&v157, sub_10004333C);
    v176 = v150;
    v177 = v151;
    v178 = v152;
    v172 = v146;
    v173 = v147;
    v174 = v148;
    v175 = v149;
    v170 = v144;
    v171 = v145;
    *&v179 = 0;
    BYTE8(v179) = 1;
    *&v180 = v53;
    BYTE8(v180) = v54;
    *&v181 = v55;
    BYTE8(v181) = v56;
    *&v182 = v96;
    *(&v182 + 1) = v95;
    nullsub_1(&v170, v57);
    v199 = v180;
    v200 = v181;
    v201 = v182;
    v195 = v176;
    v196 = v177;
    v198 = v179;
    v197 = v178;
    v191 = v172;
    v192 = v173;
    v194 = v175;
    v193 = v174;
    v190 = v171;
    v189 = v170;
    v27 = v107;
    v20 = v108;
    v24 = v113;
    v11 = v120;
    v48 = v121;
    v9 = v105;
    v32 = v106;
  }

  else
  {
    sub_100043EE8(&v189);
    v48 = v121;
  }

  *v27 = sub_1000DAD00();
  *(v27 + 1) = 0;
  v27[16] = 0;
  sub_100043F0C(0, &qword_100116610, sub_1000436FC);
  sub_100041750(v32, &v27[*(v58 + 44)]);
  v59 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  sub_10004451C(v115 + *(v59 + 44), v9, sub_100023660);
  v60 = v122;
  if ((*(v122 + 48))(v9, 1, v11) == 1)
  {
    sub_100044398(v9, sub_100023660);
    (*(v48 + 56))(v20, 1, 1, v118);
    v61 = v119;
  }

  else
  {
    v62 = v116;
    (*(v60 + 32))(v116, v9, v11);
    v63 = sub_1000DB600();
    v64 = v117;
    *v117 = v63;
    v64[1] = v65;
    sub_100043F70();
    sub_100042728(v32, v62, v64 + *(v66 + 44));
    v67 = v32 + *(v109 + 24);
    v68 = *(v67 + 16);
    if ((*(v67 + 32) & 1) == 0)
    {
      v70 = *v67;
      v69 = *(v67 + 8);
      v113 = v24;
      v71 = *(v67 + 24);

      sub_1000DBDC0();
      v72 = sub_1000DAED0();
      sub_1000DA330();

      v48 = v121;
      v73 = v110;
      sub_1000DAC00();
      swift_getAtKeyPath();
      v24 = v113;
      sub_100043FF4(v70, v69, v68, v71, 0);
      (*(v111 + 8))(v73, v112);
      v68 = v171;
    }

    v61 = v119;
    v74 = swift_getKeyPath();
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    *(v75 + 32) = v68;
    *(v75 + 40) = 0;
    v76 = v117;
    v77 = v118;
    v78 = (v117 + *(v118 + 36));
    *v78 = v74;
    v78[1] = sub_10002B050;
    v78[2] = v75;
    sub_100044018(v76, v20);
    (*(v48 + 56))(v20, 0, 1, v77);
    (*(v122 + 8))(v116, v120);
  }

  v154 = v199;
  v155 = v200;
  v156 = v201;
  v150 = v195;
  v151 = v196;
  v152 = v197;
  v153 = v198;
  v146 = v191;
  v147 = v192;
  v148 = v193;
  v149 = v194;
  v144 = v189;
  v145 = v190;
  sub_10004451C(v27, v24, sub_10004362C);
  sub_10004451C(v20, v61, sub_1000439C0);
  v79 = v155;
  v167 = v154;
  v168 = v155;
  v80 = v156;
  v169 = v156;
  v81 = v150;
  v82 = v151;
  v163 = v150;
  v164 = v151;
  v84 = v152;
  v83 = v153;
  v165 = v152;
  v166 = v153;
  v85 = v146;
  v86 = v147;
  v159 = v146;
  v160 = v147;
  v88 = v148;
  v87 = v149;
  v161 = v148;
  v162 = v149;
  v90 = v144;
  v89 = v145;
  v157 = v144;
  v158 = v145;
  v91 = v114;
  v114[10] = v154;
  v91[11] = v79;
  v91[12] = v80;
  v91[6] = v81;
  v91[7] = v82;
  v91[8] = v84;
  v91[9] = v83;
  v91[2] = v85;
  v91[3] = v86;
  v91[4] = v88;
  v91[5] = v87;
  *v91 = v90;
  v91[1] = v89;
  sub_1000431B0();
  v93 = v92;
  sub_10004451C(v24, v91 + *(v92 + 48), sub_10004362C);
  sub_10004451C(v61, v91 + *(v93 + 64), sub_1000439C0);
  sub_10004451C(&v157, &v170, sub_100043238);
  sub_100044398(v20, sub_1000439C0);
  sub_100044398(v27, sub_10004362C);
  sub_100044398(v61, sub_1000439C0);
  sub_100044398(v24, sub_10004362C);
  v181 = v155;
  v182 = v156;
  v176 = v150;
  v177 = v151;
  v179 = v153;
  v180 = v154;
  v178 = v152;
  v172 = v146;
  v173 = v147;
  v174 = v148;
  v175 = v149;
  v170 = v144;
  v171 = v145;
  return sub_100044398(&v170, sub_100043238);
}

uint64_t sub_100041750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_1000DB720();
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  __chkstk_darwin(v3);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v104 - v7;
  __chkstk_darwin(v8);
  v105 = &v104 - v9;
  __chkstk_darwin(v10);
  v107 = &v104 - v11;
  sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
  *&v127 = v12;
  *&v128 = *(v12 - 8);
  v13 = *(v128 + 64);
  __chkstk_darwin(v12);
  v111 = &v104 - v14;
  sub_100023660(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  *&v122 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v104 - v19;
  v20 = sub_1000DAC10();
  v114 = *(v20 - 8);
  v115 = v20;
  v21 = *(v114 + 64);
  __chkstk_darwin(v20);
  v113 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F338(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v28 = &v104 - v27;
  sub_1000437C0();
  v30 = v29;
  v31 = *(*(v29 - 1) + 64);
  __chkstk_darwin(v29);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000437A0(0);
  v121 = v34;
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v124 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v120 = &v104 - v38;
  __chkstk_darwin(v39);
  v123 = &v104 - v40;
  v41 = type metadata accessor for WatchlistOverviewContentView(0);
  v42 = a1 + *(v41 + 28);
  v43 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v44 = *(v25 + 16);
  v45 = v42 + v43[5];
  v118 = v24;
  v44(v28, v45, v24);
  v46 = *(v42 + v43[8]);
  v116 = *(v42 + v43[9]);
  v117 = v46;
  v112 = v41;
  v47 = *(v41 + 20);
  *&v126 = a1;
  v48 = a1 + v47;
  v49 = *v48;
  if (*(v48 + 8) != 1)
  {

    sub_1000DBDC0();
    v52 = sub_1000DAED0();
    sub_1000DA330();

    v53 = v113;
    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(v49, 0);
    (*(v114 + 8))(v53, v115);
    if ((v135 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v51 = *(v42 + v43[6]);
    v50 = v51 != 3;
    goto LABEL_6;
  }

  if (v49)
  {
    goto LABEL_5;
  }

LABEL_3:
  v50 = 0;
  v51 = *(v42 + v43[6]);
LABEL_6:
  v54 = v51 != 3;
  (*(v25 + 32))(v33, v28, v118);
  v55 = 0;
  v56 = v117;
  *&v33[v30[13]] = v116;
  *&v33[v30[14]] = v56;
  *&v33[v30[15]] = 0x4038000000000000;
  v33[v30[16]] = v50;
  v33[v30[17]] = v54;
  v57 = &v33[v30[18]];
  *v57 = sub_10004267C;
  v57[1] = 0;
  v58 = v127;
  if (!*(v42 + 8))
  {
    v59 = v126 + *(v112 + 24);
    v55 = *v59;
    if ((*(v59 + 32) & 1) == 0)
    {
      v60 = *(v59 + 16);
      v118 = *(v59 + 8);
      v61 = *(v59 + 24);
      v62 = v55;

      sub_1000DBDC0();
      v63 = sub_1000DAED0();
      v64 = v113;
      sub_1000DA330();

      v58 = v127;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v62, v118, v60, v61, 0);
      (*(v114 + 8))(v64, v115);
      v55 = v135;
    }
  }

  v118 = v55;
  v65 = v43[11];
  v66 = v119;
  sub_10004451C(v42 + v65, v119, sub_100023660);
  v67 = *(v128 + 48);
  v68 = v67(v66, 1, v58);
  sub_100044398(v66, sub_100023660);
  if (v68 == 1)
  {
    v69 = v126 + *(v112 + 24);
    v70 = *(v69 + 16);
    if ((*(v69 + 32) & 1) == 0)
    {
      v71 = *v69;
      v119 = *(v69 + 8);
      v117 = *(v69 + 24);

      sub_1000DBDC0();
      v72 = sub_1000DAED0();
      sub_1000DA330();

      v58 = v127;
      v73 = v113;
      sub_1000DAC00();
      swift_getAtKeyPath();
      sub_100043FF4(v71, v119, v70, v117, 0);
      (*(v114 + 8))(v73, v115);
      v70 = v136;
    }
  }

  else
  {
    v70 = 0;
  }

  KeyPath = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v118;
  *(v75 + 24) = 0;
  *(v75 + 32) = v70;
  *(v75 + 40) = 0;
  v76 = v120;
  sub_100044330(v33, v120, sub_1000437C0);
  v77 = (v76 + *(v121 + 36));
  *v77 = KeyPath;
  v77[1] = sub_10002B5D4;
  v77[2] = v75;
  v78 = v123;
  sub_100044330(v76, v123, sub_1000437A0);
  v79 = v122;
  sub_10004451C(v42 + v65, v122, sub_100023660);
  if (v67(v79, 1, v58) == 1)
  {
    sub_100044398(v79, sub_100023660);
LABEL_16:
    v127 = 0u;
    v128 = 0u;
    v83 = -256;
    v126 = 0u;
    v122 = 0u;
LABEL_25:
    v96 = v124;
    sub_10004451C(v78, v124, sub_1000437A0);
    v97 = v125;
    sub_10004451C(v96, v125, sub_1000437A0);
    sub_100043730();
    v99 = v97 + *(v98 + 48);
    v100 = v127;
    *v99 = v128;
    *(v99 + 16) = v100;
    v101 = v122;
    *(v99 + 32) = v126;
    *(v99 + 48) = v101;
    *(v99 + 64) = v83;
    sub_100044398(v78, sub_1000437A0);
    return sub_100044398(v96, sub_1000437A0);
  }

  v80 = v128;
  v81 = v111;
  (*(v128 + 32))(v111, v79, v58);
  v82 = sub_1000DA1A0();
  (*(v80 + 8))(v81, v58);
  if (v82)
  {
    goto LABEL_16;
  }

  v84 = v107;
  sub_10004C4D4(v107);
  v86 = v109;
  v85 = v110;
  v87 = (*(v109 + 88))(v84, v110);
  if (v87 == enum case for WidgetFamily.systemSmall(_:) || (v88 = v87, v87 == enum case for WidgetFamily.systemMedium(_:)))
  {
    v92 = v105;
    sub_10004C4D4(v105);
    v93 = v108;
    (*(v86 + 104))(v108, enum case for WidgetFamily.systemLarge(_:), v85);
    sub_100044610(&qword_100116638, &type metadata accessor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v94 = *(v86 + 8);
    v94(v93, v85);
    v94(v92, v85);
    v95 = 0x4020000000000000;
    if (v135 == v129)
    {
      v95 = 0x4030000000000000;
    }

    v149 = 0;
    v143 = 0;
    *&v135 = v95;
    BYTE8(v135) = 0;
    LOBYTE(v139) = 0;
    sub_1000435D8(0, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_1000443F8();
    sub_1000DAD90();
    v131 = v146;
    v132 = v147;
    v133 = v148;
    v129 = v144;
    v130 = v145;
    LOBYTE(v150) = 0;
    goto LABEL_24;
  }

  if (v87 == enum case for WidgetFamily.systemLarge(_:))
  {
    v89 = v106;
    sub_10004C4D4(v106);
    v90 = v108;
    (*(v86 + 104))(v108, v88, v85);
    sub_100044610(&qword_100116638, &type metadata accessor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v91 = *(v86 + 8);
    v91(v90, v85);
    v91(v89, v85);
    sub_1000DB600();
    sub_1000DA7A0();
    v142 = 1;
    v141 = v151;
    v140 = v153;
    v143 = 1;
    *&v135 = 0;
    BYTE8(v135) = 1;
    *&v136 = v150;
    BYTE8(v136) = v151;
    *&v137 = v152;
    BYTE8(v137) = v153;
    v138 = v154;
    LOBYTE(v139) = 1;
    sub_1000435D8(0, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_1000443F8();
    sub_1000DAD90();
    v131 = v146;
    v132 = v147;
    v133 = v148;
    v129 = v144;
    v130 = v145;
    v149 = 0;
LABEL_24:
    v134 = 0;
    sub_100043934();
    sub_10004449C();
    sub_1000DAD90();
    v127 = v136;
    v128 = v135;
    v122 = v138;
    v126 = v137;
    v83 = v139;
    goto LABEL_25;
  }

  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  sub_1000DBF50(59);
  v155._object = 0x80000001000E88C0;
  v155._countAndFlagsBits = 0xD000000000000037;
  sub_1000DBA00(v155);
  v103 = v108;
  sub_10004C4D4(v108);
  sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily);
  v156._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v156);

  (*(v86 + 8))(v103, v85);
  v157._countAndFlagsBits = 11815;
  v157._object = 0xE200000000000000;
  sub_1000DBA00(v157);
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_10004267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004451C(a1, a2, type metadata accessor for TickerCellViewModel);
  v3 = *(type metadata accessor for TickerCellView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_10003F3CC(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100042728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v61 = a3;
  sub_1000440A8(0, &qword_100116620, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent.Storage);
  v54 = v4;
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v55 = v49 - v6;
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  v62 = v7;
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v56 = v49 - v9;
  v60 = type metadata accessor for HeadlinesList();
  v10 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043B44(0, &qword_100116628, &type metadata accessor for _ConditionalContent.Storage);
  v59 = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v57 = v49 - v15;
  sub_100043C00(0, &qword_100116630, &type metadata accessor for _ConditionalContent.Storage);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v49 - v18;
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  v63 = v20;
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v49 - v22;
  v24 = type metadata accessor for HeadlineView(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000DB720();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v51 = v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v49 - v33;
  v53 = a1;
  sub_10004C4D4(v49 - v33);
  v52 = v29;
  v35 = (*(v29 + 88))(v34, v28);
  if (v35 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    sub_1000DA1F0();
    v36 = *(v24 + 20);
    *&v27[v36] = swift_getKeyPath();
    sub_10003F3CC(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    sub_10004451C(v27, v19, type metadata accessor for HeadlineView);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList);
    sub_1000DAD90();
    sub_100044234(v23, v57);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000442B4(v23);
    v37 = type metadata accessor for HeadlineView;
    v38 = v27;
    return sub_100044398(v38, v37);
  }

  v49[1] = v24;
  v50 = v23;
  v39 = v58;
  v40 = v12;
  v41 = v60;
  v42 = v57;
  if (v35 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v43 - 8) + 16))(v40, v39, v43);
    *(v40 + *(v41 + 20)) = 1;
    *(v40 + *(v41 + 24)) = 0x4028000000000000;
    sub_10004451C(v40, v19, type metadata accessor for HeadlinesList);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList);
    v44 = v50;
    sub_1000DAD90();
    sub_100044234(v44, v42);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000442B4(v44);
LABEL_7:
    v37 = type metadata accessor for HeadlinesList;
    v38 = v40;
    return sub_100044398(v38, v37);
  }

  if (v35 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_10003F338(0, &qword_1001152C0, sub_1000236D0, &qword_1001152D0, sub_1000236D0);
    (*(*(v45 - 8) + 16))(v40, v39, v45);
    *(v40 + *(v41 + 20)) = 3;
    *(v40 + *(v41 + 24)) = 0x4028000000000000;
    sub_10004451C(v40, v55, type metadata accessor for HeadlinesList);
    swift_storeEnumTagMultiPayload();
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList);
    v46 = v56;
    sub_1000DAD90();
    sub_100044114(v46, v42);
    swift_storeEnumTagMultiPayload();
    sub_100043D0C();
    sub_100043E08();
    sub_1000DAD90();
    sub_1000441A8(v46);
    goto LABEL_7;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1000DBF50(51);
  v66._object = 0x80000001000E8890;
  v66._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1000DBA00(v66);
  v48 = v51;
  sub_10004C4D4(v51);
  sub_100044610(&qword_100115310, &type metadata accessor for WidgetFamily);
  v67._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v67);

  (*(v52 + 8))(v48, v28);
  v68._countAndFlagsBits = 11815;
  v68._object = 0xE200000000000000;
  sub_1000DBA00(v68);
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_10004311C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD10();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100043F0C(0, &qword_100116508, sub_10004317C);
  return sub_100040B00(v1, (a1 + *(v3 + 44)));
}

void sub_1000431B0()
{
  if (!qword_100116518)
  {
    sub_100043238(255);
    sub_10004362C(255);
    sub_1000439C0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100116518);
    }
  }
}

void sub_1000432A0()
{
  if (!qword_100116530)
  {
    sub_10004333C(255);
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116530);
    }
  }
}

void sub_10004335C()
{
  if (!qword_100116540)
  {
    sub_1000433DC();
    sub_10004351C(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116540);
    }
  }
}

void sub_1000433DC()
{
  if (!qword_100116548)
  {
    sub_100043470();
    sub_1000435D8(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116548);
    }
  }
}

void sub_100043470()
{
  if (!qword_100116550)
  {
    sub_1000435D8(255, &qword_100115EC0, &type metadata for Text, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_10004351C(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116550);
    }
  }
}

void sub_10004351C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100043588(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100043588(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000435D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100043668(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100044610(a4, a5);
    v8 = sub_1000DB540();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100043730()
{
  if (!qword_100116570)
  {
    sub_1000437A0(255);
    sub_1000438AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100116570);
    }
  }
}

void sub_1000437C0()
{
  if (!qword_100116580)
  {
    type metadata accessor for TickerCellViewModel(255);
    type metadata accessor for TickerCellView(255);
    sub_100044610(&qword_100116588, type metadata accessor for TickerCellViewModel);
    sub_100044610(&qword_100116590, type metadata accessor for TickerCellView);
    v0 = type metadata accessor for TickerGrid();
    if (!v1)
    {
      atomic_store(v0, &qword_100116580);
    }
  }
}

void sub_1000438AC()
{
  if (!qword_100116598)
  {
    sub_1000440A8(255, &qword_1001165A0, sub_100043934, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100116598);
    }
  }
}

void sub_100043934()
{
  if (!qword_1001165A8)
  {
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    v0 = sub_1000DADA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001165A8);
    }
  }
}

void sub_1000439C0()
{
  if (!qword_1001165B8)
  {
    sub_100043A34(255, &qword_1001165C0, sub_100043AC4);
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_1001165B8);
    }
  }
}

void sub_100043A34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100043588(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100043AC4()
{
  if (!qword_1001165C8)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    sub_100043C70();
    v0 = sub_1000DB550();
    if (!v1)
    {
      atomic_store(v0, &qword_1001165C8);
    }
  }
}

void sub_100043B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100043C00(255, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
    v7 = v6;
    sub_1000440A8(255, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100043C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HeadlineView(255);
    v7 = type metadata accessor for HeadlinesList();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100043C70()
{
  result = qword_1001165E8;
  if (!qword_1001165E8)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    sub_100043D0C();
    sub_100043E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001165E8);
  }

  return result;
}

unint64_t sub_100043D0C()
{
  result = qword_1001165F0;
  if (!qword_1001165F0)
  {
    sub_100043C00(255, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
    sub_100044610(&qword_1001165F8, type metadata accessor for HeadlineView);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001165F0);
  }

  return result;
}

unint64_t sub_100043E08()
{
  result = qword_100116608;
  if (!qword_100116608)
  {
    sub_1000440A8(255, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
    sub_100044610(&qword_100116600, type metadata accessor for HeadlinesList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116608);
  }

  return result;
}

double sub_100043EE8(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_100043F0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100043F70()
{
  if (!qword_100116618)
  {
    sub_100043B44(255, &qword_1001165D0, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_100116618);
    }
  }
}

uint64_t sub_100043FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100044018(uint64_t a1, uint64_t a2)
{
  sub_100043A34(0, &qword_1001165C0, sub_100043AC4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000440A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, &type metadata for Never);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100044114(uint64_t a1, uint64_t a2)
{
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000441A8(uint64_t a1)
{
  sub_1000440A8(0, &qword_1001165E0, type metadata accessor for HeadlinesList, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044234(uint64_t a1, uint64_t a2)
{
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000442B4(uint64_t a1)
{
  sub_100043C00(0, &qword_1001165D8, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000443F8()
{
  result = qword_100116640;
  if (!qword_100116640)
  {
    sub_1000435D8(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116640);
  }

  return result;
}

unint64_t sub_10004449C()
{
  result = qword_100116648;
  if (!qword_100116648)
  {
    sub_100043934();
    sub_1000443F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116648);
  }

  return result;
}

uint64_t sub_10004451C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100045778(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100044780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_100045778(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for LineTicker()
{
  result = qword_1001166C8;
  if (!qword_1001166C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000448A0()
{
  sub_100044994(319, &unk_1001156D8);
  if (v0 <= 0x3F)
  {
    sub_100044994(319, &qword_1001156D0);
    if (v1 <= 0x3F)
    {
      sub_100045778(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100044994(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000DBE80();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000449FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000DAE60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100045354();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = sub_1000DAC50();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_100045588();
  sub_100044C2C(v1, &v12[*(v13 + 44)]);
  sub_1000DAE30();
  sub_100045620();
  sub_1000DB2A0();
  (*(v5 + 8))(v8, v4);
  sub_1000458AC(v12, sub_100045354);
  v15 = *(v1 + 8);
  v14 = *(v1 + 16);
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);
  v20 = *(v2 + 56);
  v21 = *(v2 + 64);
  LOBYTE(v2) = *v2;
  sub_100045678(0, &qword_100116748, sub_1000456E4, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  v23 = a1 + *(v22 + 36);
  *v23 = v2;
  *(v23 + 1) = *v26;
  *(v23 + 4) = *&v26[3];
  *(v23 + 8) = v15;
  *(v23 + 16) = v14;
  *(v23 + 24) = v17;
  *(v23 + 32) = v16;
  *(v23 + 40) = v18;
  *(v23 + 48) = v19;
  *(v23 + 56) = v20;
  *(v23 + 64) = v21;

  return sub_10002B054(v18, v19, v20, v21);
}

uint64_t sub_100044C2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000DB030();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v70 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DB720();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  __chkstk_darwin(v6);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = &v70 - v10;
  v79 = type metadata accessor for StockPriceView();
  v11 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100045460();
  v81 = v14;
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v84 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  __chkstk_darwin(v19);
  v83 = &v70 - v20;
  v21 = type metadata accessor for SymbolTrendView();
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v82 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  v28 = *a1;
  v30 = *(a1 + 1);
  v29 = *(a1 + 2);
  v31 = *(a1 + 3);
  v73 = *(a1 + 4);
  v32 = v73;
  KeyPath = swift_getKeyPath();
  *v27 = v28;
  *(v27 + 1) = v30;
  *(v27 + 2) = v29;
  *(v27 + 3) = v31;
  *(v27 + 4) = v32;
  v34 = v22[8];
  *&v27[v34] = swift_getKeyPath();
  sub_100045778(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v76 = v35;
  swift_storeEnumTagMultiPayload();
  v36 = v22[9];
  *&v27[v36] = swift_getKeyPath();
  v37 = v74;
  sub_100045778(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v38 = &v27[v22[10]];
  *v38 = KeyPath;
  v38[8] = 0;
  v40 = *(a1 + 5);
  v39 = *(a1 + 6);
  v42 = *(a1 + 7);
  v41 = *(a1 + 8);
  LODWORD(v36) = *(type metadata accessor for LineTicker() + 28);

  sub_10002B054(v40, v39, v42, v41);
  v43 = v77;
  v44 = v75;
  sub_10004C4D4(v75);
  v45 = v78;
  (*(v43 + 32))(v37, v44, v78);
  v46 = (*(v43 + 88))(v37, v45);
  if (v46 == enum case for WidgetFamily.accessoryCircular(_:) || v46 == enum case for WidgetFamily.accessoryRectangular(_:) || v46 == enum case for WidgetFamily.accessoryInline(_:))
  {
    v53 = sub_1000DAF70();
  }

  else
  {
    (*(v43 + 8))(v37, v45);
    sub_1000DB080();
    sub_1000DAF80();

    v78 = v41;
    v47 = v42;
    v48 = v39;
    v49 = v40;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    (*(v71 + 104))(v70, enum case for Font.Leading.tight(_:), v72);
    v53 = sub_1000DB060();

    (*(v51 + 8))(v50, v52);
    v40 = v49;
    v39 = v48;
    v42 = v47;
    v41 = v78;
  }

  v54 = swift_getKeyPath();
  *v13 = v40;
  v13[1] = v39;
  v13[2] = v42;
  v13[3] = v41;
  v13[4] = v53;
  v55 = v79;
  v56 = *(v79 + 24);
  *(v13 + v56) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v13 + *(v55 + 28);
  *v57 = v54;
  v57[8] = 0;
  v58 = *(v55 + 32);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();

  *(v13 + v58) = sub_1000D9DD0();
  v62 = v80;
  sub_1000457DC(v13, v80, type metadata accessor for StockPriceView);
  *(v62 + *(v81 + 36)) = 0x3FF0000000000000;
  v63 = v83;
  sub_1000457DC(v62, v83, sub_100045460);
  v64 = v82;
  sub_100045844(v27, v82, type metadata accessor for SymbolTrendView);
  v65 = v84;
  sub_100045844(v63, v84, sub_100045460);
  v66 = v85;
  sub_100045844(v64, v85, type metadata accessor for SymbolTrendView);
  sub_1000453E8();
  v68 = v66 + *(v67 + 48);
  *v68 = 0x4020000000000000;
  *(v68 + 8) = 0;
  sub_100045844(v65, v66 + *(v67 + 64), sub_100045460);
  sub_1000458AC(v63, sub_100045460);
  sub_1000458AC(v27, type metadata accessor for SymbolTrendView);
  sub_1000458AC(v65, sub_100045460);
  return sub_1000458AC(v64, type metadata accessor for SymbolTrendView);
}

void sub_100045354()
{
  if (!qword_100116708)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    sub_100045500();
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116708);
    }
  }
}

void sub_1000453E8()
{
  if (!qword_100116718)
  {
    type metadata accessor for SymbolTrendView();
    sub_100045460();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100116718);
    }
  }
}

void sub_100045460()
{
  if (!qword_100116720)
  {
    type metadata accessor for StockPriceView();
    sub_100045678(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116720);
    }
  }
}

unint64_t sub_100045500()
{
  result = qword_100116730;
  if (!qword_100116730)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116730);
  }

  return result;
}

void sub_100045588()
{
  if (!qword_100116738)
  {
    sub_100045778(255, &qword_100116710, sub_1000453E8, &type metadata accessor for TupleView);
    v0 = sub_1000DA800();
    if (!v1)
    {
      atomic_store(v0, &qword_100116738);
    }
  }
}

unint64_t sub_100045620()
{
  result = qword_100116740;
  if (!qword_100116740)
  {
    sub_100045354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116740);
  }

  return result;
}

void sub_100045678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000456E4()
{
  if (!qword_100116750)
  {
    sub_100045354();
    sub_100045620();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116750);
    }
  }
}

void sub_100045778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000457DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000458AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100045910()
{
  result = qword_100116760;
  if (!qword_100116760)
  {
    sub_100045678(255, &qword_100116748, sub_1000456E4, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
    sub_100045354();
    sub_100045620();
    swift_getOpaqueTypeConformance2();
    sub_1000459F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116760);
  }

  return result;
}

unint64_t sub_1000459F8()
{
  result = qword_100116768;
  if (!qword_100116768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116768);
  }

  return result;
}

uint64_t sub_100045A4C(uint64_t a1, char a2, char a3)
{
  v7 = sub_1000D91C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 16);
  sub_1000D9170();
  isa = sub_1000D9130().super.isa;
  (*(v8 + 8))(v11, v7);
  v14 = [v12 formattedCount:a1 withLocale:isa longform:a2 & 1 compactDisplay:a3 & 1];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_1000DB950();

  return v15;
}

uint64_t sub_100045B9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100045BF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116990);
  result = sub_1000D9F00();
  if (!v26)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116998);
  result = sub_1000D9F00();
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116978);
  result = sub_1000D9F00();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330);
  result = sub_1000D9F00();
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &unk_1001169A0);
  result = sub_1000D9F00();
  if (!v18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = type metadata accessor for WatchlistViewModelService(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC12StocksWidget25WatchlistViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v15 = sub_1000DA370();
  v16 = sub_100015294(v15, qword_100128DD8);
  (*(*(v15 - 8) + 16))(v13 + v14, v16, v15);
  sub_100023738(&v25, v13 + 16);
  sub_100023738(&v23, v13 + 56);
  sub_100023738(&v21, v13 + 96);
  sub_100023738(&v19, v13 + 136);
  result = sub_100023738(&v17, v13 + 176);
  a2[3] = v10;
  a2[4] = &off_100108FE8;
  *a2 = v13;
  return result;
}

uint64_t sub_100045EAC()
{
  v0 = type metadata accessor for DemoTimelineManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_logger;
  if (qword_1001140B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000DA370();
  v6 = sub_100015294(v5, qword_100128E38);
  (*(*(v5 - 8) + 16))(v3 + v4, v6, v5);
  v7 = (v3 + OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager_stocksSuiteKey);
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x80000001000E8980;
  v8 = OBJC_IVAR____TtC12StocksWidget19DemoTimelineManager____lazy_storage___demoDirectory;
  v9 = sub_1000D8F30();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  return v3;
}

uint64_t sub_100045FE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopStocksIntentHandler();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  a1[3] = v2;
  result = sub_100048180(&qword_100116988, type metadata accessor for NoopStocksIntentHandler);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_10004606C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330);
  result = sub_1000D9F00();
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116978);
  result = sub_1000D9F00();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116980);
  result = sub_1000D9F00();
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = type metadata accessor for TodayViewModelService();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12StocksWidget21TodayViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v13 = sub_1000DA370();
  v14 = sub_100015294(v13, qword_100128DD8);
  (*(*(v13 - 8) + 16))(v11 + v12, v14, v13);
  sub_100023738(&v19, v11 + 16);
  sub_100023738(&v17, v11 + 56);
  result = sub_100023738(&v15, v11 + 96);
  a2[3] = v8;
  a2[4] = &off_10010BFC8;
  *a2 = v11;
  return result;
}

uint64_t sub_100046268@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330);
  result = sub_1000D9F00();
  if (v8)
  {
    v5 = type metadata accessor for ReloadPolicyProvider();
    v6 = swift_allocObject();
    result = sub_100023738(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_10010CB08;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004631C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116968);
  result = sub_1000D9F00();
  if (!v34)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116970);
  result = sub_1000D9F00();
  v7 = v31;
  if (!v31)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950);
  result = sub_1000D9F00();
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100115330);
  result = sub_1000D9F00();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v32;
  sub_100006C7C(v27, v28);
  swift_getKeyPath();
  v10 = sub_1000D98E0();

  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E0);
  result = sub_1000D9F00();
  v12 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v26;
  v14 = a1[4];
  sub_100006C7C(a1, a1[3]);
  result = sub_1000D9F00();
  if (!v24)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = type metadata accessor for HeadlineViewModelService();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v20 = sub_1000DA370();
  v21 = sub_100015294(v20, qword_100128DD8);
  (*(*(v20 - 8) + 16))(&v18[v19], v21, v20);
  sub_100023738(&v33, (v18 + 16));
  *(v18 + 7) = v7;
  *(v18 + 8) = v22;
  sub_100023738(&v29, (v18 + 72));
  *(v18 + 14) = v10;
  *(v18 + 15) = v12;
  *(v18 + 16) = v13;
  sub_100023738(&v23, &v18[OBJC_IVAR____TtC12StocksWidget24HeadlineViewModelService_appConfigurationManager]);
  result = sub_100006D0C(v27);
  a2[3] = v15;
  a2[4] = &off_100109088;
  *a2 = v18;
  return result;
}

void *sub_100046674@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for QuoteDetailItemFactory();
  swift_allocObject();
  result = sub_1000967A4();
  a1[3] = v2;
  a1[4] = &off_10010B9D0;
  *a1 = result;
  return result;
}

uint64_t sub_1000466CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000480FC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  v9 = sub_1000D91C0();
  sub_1000D9F00();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = &type metadata for SystemTheme;
    v19 = &off_10010ADA8;
    v12 = type metadata accessor for BaseStyler();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    (*(v10 + 16))(v15 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_locale, v7, v9);
    sub_1000A5D40(&v17, 0, 2u, (v15 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_theme));
    (*(v10 + 8))(v7, v9);
    result = sub_100023738(&v17, v15 + OBJC_IVAR____TtC12StocksWidget10BaseStyler_systemTheme);
    a2[3] = v12;
    a2[4] = &off_100109B50;
    *a2 = v15;
  }

  return result;
}

uint64_t sub_10004688C()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D91C0();
  sub_1000DA070();
  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000469BC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950);
  result = sub_1000D9F00();
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E0);
  result = sub_1000D9EE0();
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  result = sub_1000D9EE0();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = type metadata accessor for MandatoryHeadlineService(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v13 = sub_1000DA370();
  v14 = sub_100015294(v13, qword_100128DD8);
  (*(*(v13 - 8) + 16))(&v11[v12], v14, v13);
  sub_100023738(&v19, (v11 + 112));
  *(v11 + 19) = v17;
  *(v11 + 20) = v18;
  *(v11 + 21) = v15;
  *(v11 + 22) = v16;
  result = sub_100048180(&qword_100116958, type metadata accessor for MandatoryHeadlineService);
  *a2 = v11;
  a2[1] = result;
  return result;
}

uint64_t sub_100046C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116940);
  result = sub_1000D9F00();
  if (v13)
  {
    v5 = type metadata accessor for TopStoriesMandatoryHeadlineService(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v8 = swift_allocObject();
    swift_defaultActor_initialize();
    v9 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v10 = sub_1000DA370();
    v11 = sub_100015294(v10, qword_100128DD8);
    (*(*(v10 - 8) + 16))(v8 + v9, v11, v10);
    sub_100023738(&v12, v8 + 112);
    result = sub_100048180(&qword_100116948, type metadata accessor for TopStoriesMandatoryHeadlineService);
    *a2 = v8;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046D60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_1001168E8);
  result = sub_1000D9F00();
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v21;
  v7 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116928);
  result = sub_1000D9F00();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116930);
  result = sub_1000D9F00();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = type metadata accessor for WidgetConfigMandatoryHeadlineService(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;
  if (qword_100114090 != -1)
  {
    swift_once();
  }

  v14 = sub_1000DA370();
  v15 = sub_100015294(v14, qword_100128DD8);
  (*(*(v14 - 8) + 16))(v12 + v13, v15, v14);
  *(v12 + 112) = v20;
  *(v12 + 120) = v6;
  sub_100023738(&v18, v12 + 128);
  sub_100023738(&v16, v12 + 168);
  result = sub_100048180(&qword_100116938, type metadata accessor for WidgetConfigMandatoryHeadlineService);
  *a2 = v12;
  a2[1] = result;
  return result;
}

uint64_t sub_100046F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_1001168F8, &protocolRef_FCJSONRecordTreeSourceType);
  result = sub_1000D9ED0();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    sub_100006C7C(a1, a1[3]);
    sub_1000481C8(0, &qword_100115330);
    result = sub_1000D9F00();
    if (v10)
    {
      type metadata accessor for WidgetSectionConfigRecordService();
      v8 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v8 + 112) = v6;
      sub_100023738(&v9, v8 + 120);
      result = sub_100048180(&qword_100116920, type metadata accessor for WidgetSectionConfigRecordService);
      *a2 = v8;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000470D4(void *a1)
{
  v2 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  result = sub_1000D9EF0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    sub_100006C7C(a1, a1[3]);
    sub_10004805C();
    result = sub_1000D9ED0();
    if (result)
    {
      v6 = result;
      v7 = [v4 recordSourceWithSchema:result];
      swift_unknownObjectRelease();

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000471C8(void *a1)
{
  v2 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  result = sub_1000D9EF0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    sub_100006C7C(a1, a1[3]);
    sub_100033DC0(0, &qword_1001168F0, &protocolRef_FCJSONRecordSourceType);
    result = sub_1000D9ED0();
    if (result)
    {
      v6 = result;
      sub_1000480A8();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1000E04C0;
      *(v7 + 32) = v6;
      swift_unknownObjectRetain();
      isa = sub_1000DBB00().super.isa;

      v9 = [v4 recordTreeSourceWithRecordSources:isa];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100047320()
{
  v0 = objc_allocWithZone(FCJSONRecordSourceSchema);
  v1 = sub_1000DB910();
  v2 = sub_1000DB910();
  isa = sub_1000DBB00().super.isa;
  v4 = sub_1000DBB00().super.isa;
  v5 = [v0 initWithRecordType:v1 recordIDPrefix:v2 keys:isa localizableKeys:v4];

  return v5;
}

uint64_t sub_1000473F8()
{
  type metadata accessor for WidgetTerminationService();
  swift_allocObject();
  return sub_1000BC34C();
}

uint64_t sub_100047430(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_100006C7C(a2, a2[3]);
  type metadata accessor for WidgetTerminationService();
  result = sub_1000D9EF0();
  if (result)
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000474D0(uint64_t a1)
{
  v2 = sub_1000D9F10();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DA0F0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  v24 = sub_1000481C8(0, &qword_1001168A8);
  sub_1000DA070();

  v10 = enum case for Scope.singleton(_:);
  v11 = v6[13];
  v11(v9, enum case for Scope.singleton(_:), v5);
  sub_1000D9EA0();

  v12 = v6[1];
  v12(v9, v5);
  sub_1000D9F40();
  type metadata accessor for DemoTimelineManager();
  sub_1000DA060();

  v11(v9, v10, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168B0);
  sub_1000DA070();

  v11(v9, v10, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100115328);
  sub_1000DA070();

  v11(v9, v10, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168C0);
  sub_1000DA070();

  v30 = v10;
  v11(v9, v10, v5);
  v28 = v6 + 13;
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100115348);
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000481C8(0, &unk_1001168D0);
  sub_1000DA070();

  v11(v9, v10, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_1001159E0);
  sub_1000DA070();

  v29 = a1;
  sub_1000D9F50();
  sub_1000DA050();

  sub_1000D9F50();
  sub_1000481C8(0, &qword_1001168E0);
  sub_1000DA070();

  v13 = v30;
  v11(v9, v30, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F50();
  sub_1000DA070();

  v11(v9, v13, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F50();
  sub_1000DA070();

  v14 = v30;
  v11(v9, v30, v5);
  sub_1000D9EA0();

  v22[1] = v6 + 1;
  v12(v9, v5);
  sub_1000D9F50();
  sub_1000481C8(0, &qword_1001168E8);
  sub_1000DA070();

  v11(v9, v14, v5);
  v23 = v11;
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F50();
  sub_100033DC0(0, &qword_1001168F0, &protocolRef_FCJSONRecordSourceType);
  v22[2] = "et20StocksWidgetAssembly";
  sub_1000DA060();

  v15 = v30;
  v11(v9, v30, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F40();
  sub_100033DC0(0, &qword_1001168F8, &protocolRef_FCJSONRecordTreeSourceType);
  sub_1000DA060();

  v16 = v15;
  v17 = v23;
  v23(v9, v16, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F50();
  sub_10004805C();
  sub_1000DA060();

  sub_1000D9F50();
  type metadata accessor for WidgetTerminationService();
  sub_1000DA060();

  v17(v9, v30, v5);
  sub_1000D9EA0();

  v12(v9, v5);
  sub_1000D9F60();
  sub_100006C7C(v31, v31[3]);
  v19 = v25;
  v18 = v26;
  v20 = v27;
  (*(v26 + 104))(v25, enum case for CallbackScope.any(_:), v27);
  sub_1000DA090();
  (*(v18 + 8))(v19, v20);
  return sub_100006D0C(v31);
}

unint64_t sub_10004805C()
{
  result = qword_100116900;
  if (!qword_100116900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116900);
  }

  return result;
}

void sub_1000480A8()
{
  if (!qword_100116910)
  {
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100116910);
    }
  }
}

void sub_1000480FC()
{
  if (!qword_100116960)
  {
    sub_1000D91C0();
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100116960);
    }
  }
}

uint64_t sub_100048154@<X0>(void *a1@<X8>)
{
  result = sub_1000D9580();
  *a1 = v3;
  return result;
}

uint64_t sub_100048180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000481C8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100048224()
{
  type metadata accessor for UnitNumberFormatter();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(SCICUNumberFormatter) init];
  *(v0 + 16) = result;
  qword_100128E70 = v0;
  return result;
}

uint64_t StockType.shouldShowCurrencySymbol.getter()
{
  v1 = v0;
  v2 = sub_1000D9C40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for StockType.unknown(_:) || v8 == enum case for StockType.currency(_:) || v8 == enum case for StockType.cryptocurrency(_:) || v8 == enum case for StockType.equity(_:) || v8 == enum case for StockType.etf(_:) || v8 == enum case for StockType.futures(_:))
  {
    return 1;
  }

  if (v8 != enum case for StockType.index(_:))
  {
    if (v8 != enum case for StockType.mutualFund(_:))
    {
      (*(v3 + 8))(v7, v2);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_100048410(void *a1)
{
  v3 = v1;
  sub_100049894(0, &qword_100116A88, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v27[-v9];
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100049780();
  sub_1000DC480();
  v12 = *v3;
  v13 = *(v3 + 8);
  v27[15] = 0;
  sub_1000DC280();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v27[14] = 1;
    sub_1000DC280();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v27[13] = 2;
    sub_1000DC280();
    v18 = v3[6];
    v19 = v3[7];
    v27[12] = 3;
    sub_1000DC270();
    v21 = v3[8];
    v22 = v3[9];
    v27[11] = 4;
    sub_1000DC2B0();
    v23 = type metadata accessor for PriceViewModel();
    v24 = v23[9];
    v27[10] = 5;
    sub_1000D9480();
    sub_1000498F8(&qword_100116A90, &type metadata accessor for ExchangeStatus);
    sub_1000DC2F0();
    v25 = v23[10];
    v27[9] = 6;
    sub_1000D9C40();
    sub_1000498F8(&qword_100116A98, &type metadata accessor for StockType);
    sub_1000DC2F0();
    v26 = v23[11];
    v27[8] = 7;
    sub_1000D91C0();
    sub_1000498F8(&qword_100116AA0, &type metadata accessor for Locale);
    sub_1000DC2F0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100048754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v56 = sub_1000D91C0();
  v54 = *(v56 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D9C40();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D9480();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049894(0, &qword_100116A60, &type metadata accessor for KeyedDecodingContainer);
  v63 = v13;
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = type metadata accessor for PriceViewModel();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v65 = a1;
  sub_100006C7C(a1, v22);
  sub_100049780();
  v62 = v16;
  v23 = v64;
  sub_1000DC470();
  if (v23)
  {
    return sub_100006D0C(v65);
  }

  v24 = v12;
  v25 = v59;
  v26 = v60;
  v64 = v17;
  v27 = v61;
  v73 = 0;
  v28 = v20;
  *v20 = sub_1000DC1B0();
  v20[8] = v29 & 1;
  v72 = 1;
  *(v20 + 2) = sub_1000DC1B0();
  v20[24] = v31 & 1;
  v71 = 2;
  *(v20 + 4) = sub_1000DC1B0();
  v20[40] = v32 & 1;
  v70 = 3;
  *(v20 + 6) = sub_1000DC1A0();
  *(v20 + 7) = v33;
  v69 = 4;
  v34 = sub_1000DC1E0();
  v52 = 0;
  *(v20 + 8) = v34;
  *(v20 + 9) = v35;
  v68 = 5;
  sub_1000498F8(&qword_100116A70, &type metadata accessor for ExchangeStatus);
  v36 = v24;
  v37 = v52;
  v38 = v52;
  sub_1000DC220();
  v53 = v38;
  if (v38)
  {
    (*(v25 + 8))(v62, v63);
    v39 = 0;
  }

  else
  {
    (*(v26 + 32))(&v28[v64[9]], v36, v9);
    v67 = 6;
    sub_1000498F8(&qword_100116A78, &type metadata accessor for StockType);
    v40 = v28;
    v41 = v58;
    v42 = v53;
    sub_1000DC220();
    v53 = v42;
    if (!v42)
    {
      (*(v57 + 32))(v40 + v64[10], v8, v41);
      v66 = 7;
      sub_1000498F8(&qword_100116A80, &type metadata accessor for Locale);
      v47 = v55;
      v48 = v56;
      v49 = v53;
      sub_1000DC220();
      v53 = v49;
      if (!v49)
      {
        (*(v25 + 8))(v62, v63);
        (*(v54 + 32))(v40 + v64[11], v47, v48);
        sub_1000497D4(v40, v27);
        sub_100006D0C(v65);
        return sub_100049838(v40);
      }

      (*(v25 + 8))(v62, v63);
      sub_100006D0C(v65);
      v50 = *(v40 + 56);

      v51 = *(v40 + 72);

      v46 = 1;
      v28 = v40;
      v44 = v64;
      goto LABEL_13;
    }

    (*(v25 + 8))(v62, v63);
    v39 = 1;
    v28 = v40;
    v37 = v52;
  }

  sub_100006D0C(v65);
  v43 = *(v28 + 7);

  v44 = v64;
  if (v37)
  {
    if (!v39)
    {
      return result;
    }
  }

  else
  {
    v45 = *(v28 + 9);

    if ((v39 & 1) == 0)
    {
      return result;
    }
  }

  v46 = 0;
LABEL_13:
  result = (*(v26 + 8))(&v28[v44[9]], v9);
  if (v46)
  {
    return (*(v57 + 8))(&v28[v44[10]], v58);
  }

  return result;
}

uint64_t sub_100048E30()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0x7079546B636F7473;
  if (v1 != 6)
  {
    v3 = 0x656C61636F6CLL;
  }

  v4 = 0x6B6361626C6C6166;
  if (v1 != 4)
  {
    v4 = 0x65676E6168637865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = 0x6168436563697270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100048F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100049B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100048F84(uint64_t a1)
{
  v2 = sub_100049780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100048FC0(uint64_t a1)
{
  v2 = sub_100049780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100049030()
{
  v1 = v0;
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for PriceChangeDisplay.currency(_:) || v8 == enum case for PriceChangeDisplay.percentage(_:))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19._countAndFlagsBits = 0x80000001000E89F0;
    v12._countAndFlagsBits = 0x65676E616863;
    v12._object = 0xE600000000000000;
    v13.value._countAndFlagsBits = 0;
    v13.value._object = 0;
    v14.super.isa = v11;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
  }

  else
  {
    if (v8 != enum case for PriceChangeDisplay.marketCapitalization(_:))
    {
      (*(v3 + 8))(v7, v2);
      return 0;
    }

    type metadata accessor for Localized();
    v16 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:v16];
    v19._countAndFlagsBits = 0x80000001000E89C0;
    v12._countAndFlagsBits = 0x632074656B72616DLL;
    v12._object = 0xEA00000000007061;
    v13.value._countAndFlagsBits = 0;
    v13.value._object = 0;
    v14.super.isa = v11;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
  }

  v17 = sub_1000D8E50(v12, v13, v14, v15, v19);

  return v17;
}

uint64_t sub_100049288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  v7 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v7;
  }

  if (*(a1 + 48) == *(a2 + 48) && v5 == v6)
  {
    return 1;
  }

  return sub_1000DC360();
}

uint64_t sub_100049350(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000D9480();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000D9C40();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_1000D91C0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_1000494D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
    return result;
  }

  v8 = sub_1000D9480();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000D9C40();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_1000D91C0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for PriceViewModel()
{
  result = qword_100116A08;
  if (!qword_100116A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049688()
{
  sub_100044994(319, &qword_100116A18);
  if (v0 <= 0x3F)
  {
    sub_100044994(319, &qword_100115C60);
    if (v1 <= 0x3F)
    {
      sub_1000D9480();
      if (v2 <= 0x3F)
      {
        sub_1000D9C40();
        if (v3 <= 0x3F)
        {
          sub_1000D91C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100049780()
{
  result = qword_100116A68;
  if (!qword_100116A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116A68);
  }

  return result;
}

uint64_t sub_1000497D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriceViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049838(uint64_t a1)
{
  v2 = type metadata accessor for PriceViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100049894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100049780();
    v7 = a3(a1, &type metadata for PriceViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000498F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PriceViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriceViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100049A94()
{
  result = qword_100116AA8;
  if (!qword_100116AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AA8);
  }

  return result;
}

unint64_t sub_100049AEC()
{
  result = qword_100116AB0;
  if (!qword_100116AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AB0);
  }

  return result;
}

unint64_t sub_100049B44()
{
  result = qword_100116AB8;
  if (!qword_100116AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116AB8);
  }

  return result;
}

uint64_t sub_100049B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E89A0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1000DC360() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546B636F7473 && a2 == 0xE900000000000065 || (sub_1000DC360() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100049E98(uint64_t a1)
{
  v2 = sub_1000DA6B0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000DAA30();
}

uint64_t sub_100049F84@<X0>(void *a1@<X8>)
{
  result = sub_1000DABD0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100049FB4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = type metadata accessor for DetailTimelineProvider(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A83C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A974();
  v53 = v11;
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004AA28();
  v55 = v15;
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  __chkstk_darwin(v15);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004AB14();
  v54 = v18;
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  __chkstk_darwin(v18);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9970();
  if (qword_1001140A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000DA370();
  v22 = sub_100015294(v21, qword_100128E08);
  (*(*(v21 - 8) + 16))(v4, v22, v21);
  type metadata accessor for DetailWidgetView();
  sub_10004CED0(&qword_100116AC8, type metadata accessor for DetailWidgetView);
  sub_10004CED0(&qword_100116AF0, type metadata accessor for DetailTimelineProvider);
  sub_1000DB770();
  sub_1000DACD0();
  v23 = sub_1000DB160();
  v25 = v24;
  v27 = v26;
  v28 = sub_10004CED0(&qword_100116AD8, sub_10004A83C);
  sub_1000DAD50();
  sub_100017794(v23, v25, v27 & 1);

  (*(v7 + 8))(v10, v6);
  sub_1000DACD0();
  v29 = sub_1000DB160();
  v31 = v30;
  v33 = v32;
  v58 = v6;
  v59 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v53;
  sub_1000DAD30();
  sub_100017794(v29, v31, v33 & 1);

  (*(v49 + 8))(v14, v35);
  sub_10004AC8C(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v36 = sub_1000DB720();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000E06E0;
  v41 = v40 + v39;
  v42 = *(v37 + 104);
  v42(v41, enum case for WidgetFamily.systemSmall(_:), v36);
  v42(v41 + v38, enum case for WidgetFamily.systemMedium(_:), v36);
  v42(v41 + 2 * v38, enum case for WidgetFamily.systemLarge(_:), v36);
  v42(v41 + 3 * v38, enum case for WidgetFamily.accessoryInline(_:), v36);
  v42(v41 + 4 * v38, enum case for WidgetFamily.accessoryRectangular(_:), v36);
  v42(v41 + 5 * v38, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v58 = v35;
  v59 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v50;
  v45 = v55;
  v46 = v57;
  sub_1000DAD40();

  (*(v51 + 8))(v46, v45);
  v58 = v45;
  v59 = v43;
  swift_getOpaqueTypeConformance2();
  v47 = v54;
  sub_1000DAD60();
  return (*(v52 + 8))(v44, v47);
}

uint64_t sub_10004A79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004D2D0(a1, a2, type metadata accessor for DetailTimelineEntry);
  v3 = type metadata accessor for DetailWidgetView();
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_10004AC58(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  return result;
}

void sub_10004A83C()
{
  if (!qword_100116AC0)
  {
    sub_1000D9970();
    type metadata accessor for DetailWidgetView();
    sub_10004CED0(&qword_1001152A0, &type metadata accessor for SymbolWidgetConfigurationIntent);
    sub_10004CED0(&qword_100116AC8, type metadata accessor for DetailWidgetView);
    v0 = sub_1000DB780();
    if (!v1)
    {
      atomic_store(v0, &qword_100116AC0);
    }
  }
}

uint64_t type metadata accessor for DetailWidgetView()
{
  result = qword_100116B50;
  if (!qword_100116B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A974()
{
  if (!qword_100116AD0)
  {
    sub_10004A83C();
    sub_10004CED0(&qword_100116AD8, sub_10004A83C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AD0);
    }
  }
}

void sub_10004AA28()
{
  if (!qword_100116AE0)
  {
    sub_10004A974();
    sub_10004A83C();
    sub_10004CED0(&qword_100116AD8, sub_10004A83C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AE0);
    }
  }
}

void sub_10004AB14()
{
  if (!qword_100116AE8)
  {
    sub_10004AA28();
    sub_10004A974();
    sub_10004A83C();
    sub_10004CED0(&qword_100116AD8, sub_10004A83C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116AE8);
    }
  }
}

void sub_10004AC8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10004ACF0@<X0>(void *a1@<X8>)
{
  result = sub_1000DABD0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10004AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailTimelineEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_10004AC8C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 32);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_10004AE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DetailTimelineEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_10004AC8C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

void sub_10004AFC0()
{
  type metadata accessor for DetailTimelineEntry();
  if (v0 <= 0x3F)
  {
    sub_10004AC8C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10004C3DC(319, &unk_1001164D0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10004B0A8()
{
  sub_10004AB14();
  sub_10004AA28();
  sub_10004A974();
  sub_10004A83C();
  sub_10004CED0(&qword_100116AD8, sub_10004A83C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v79 = sub_1000DAC10();
  v78 = *(v79 - 8);
  v3 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000DA980();
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DetailContentViewModel(0);
  v7 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v91 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DetailContentView(0);
  v9 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C328();
  v89 = v12;
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  __chkstk_darwin(v12);
  v92 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C2A4();
  v97 = v15;
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v87 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v77 - v19;
  sub_10004C6B0(0, &qword_100116BD8, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent.Storage);
  v94 = v20;
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v96 = &v77 - v22;
  v99 = type metadata accessor for DetailTimelineEntry();
  v23 = *(*(v99 - 1) + 64);
  __chkstk_darwin(v99);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DetailComplicationContentView();
  v26 = *(*(v93 - 1) + 64);
  __chkstk_darwin(v93);
  v28 = (&v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C1F0();
  v95 = v29;
  v81 = *(v29 - 8);
  v30 = *(v81 + 64);
  __chkstk_darwin(v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000DB720();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v77 - v39;
  v80 = type metadata accessor for DetailWidgetView();
  v41 = a1;
  v42 = a1 + *(v80 + 20);
  sub_10004CFD8(sub_10004AC58, sub_10002F35C, &type metadata accessor for WidgetFamily, v40);
  (*(v34 + 32))(v37, v40, v33);
  v43 = (*(v34 + 88))(v37, v33);
  if (v43 == enum case for WidgetFamily.accessoryCircular(_:) || v43 == enum case for WidgetFamily.accessoryRectangular(_:) || v43 == enum case for WidgetFamily.accessoryInline(_:))
  {
    sub_10004D2D0(v41, v25, type metadata accessor for DetailTimelineEntry);
    if (qword_1001141A8 != -1)
    {
      swift_once();
    }

    sub_100006E20(&unk_100128FD8, &v102);
    sub_100006C7C(&v102, v105);
    sub_10002F2F8();
    result = sub_1000D9F00();
    if (v101)
    {
      *v28 = swift_getKeyPath();
      sub_10004AC58(0);
      swift_storeEnumTagMultiPayload();
      v53 = v93;
      v54 = *(v93 + 5);
      *(v28 + v54) = swift_getKeyPath();
      sub_10004C9C4(0);
      swift_storeEnumTagMultiPayload();
      sub_10004C9F8(v25, v28 + *(v53 + 6), type metadata accessor for DetailTimelineEntry);
      sub_100023738(&v100, v28 + *(v53 + 7));
      sub_100006D0C(&v102);
      v55 = v41 + *(v99 + 5);
      v56 = *(v82 + 48);
      v57 = sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView);
      sub_1000DB200();
      sub_10004CA60(v28, type metadata accessor for DetailComplicationContentView);
      v58 = v81;
      v59 = v95;
      (*(v81 + 16))(v96, v32, v95);
      swift_storeEnumTagMultiPayload();
      v102 = v53;
      v103 = v57;
      swift_getOpaqueTypeConformance2();
      sub_10004C814();
      sub_1000DAD90();
      return (*(v58 + 8))(v32, v59);
    }

    __break(1u);
    goto LABEL_18;
  }

  (*(v34 + 8))(v37, v33);
  v44 = v99;
  v45 = v41;
  v46 = v41 + *(v99 + 5);
  v47 = v91;
  sub_10004D2D0(v46, v91, type metadata accessor for DetailContentViewModel);
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, &v102);
  sub_100006C7C(&v102, v105);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (!v101)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  KeyPath = swift_getKeyPath();
  v50 = v83;
  *&v11[*(v83 + 24)] = KeyPath;
  sub_10004AC58(0);
  swift_storeEnumTagMultiPayload();
  sub_10004C9F8(v47, v11, type metadata accessor for DetailContentViewModel);
  sub_100023738(&v100, &v11[*(v50 + 20)]);
  sub_100006D0C(&v102);
  v51 = v86;
  v52 = v84;
  if (*(v45 + *(v44 + 8)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v102 = _swiftEmptyArrayStorage;
    sub_10004CED0(&qword_100115C40, &type metadata accessor for RedactionReasons);
    sub_1000326FC(0);
    sub_10004CED0(&qword_100115C50, sub_1000326FC);
    sub_1000DBEE0();
  }

  sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView);
  sub_1000DB2F0();
  (*(v85 + 8))(v52, v51);
  sub_10004CA60(v11, type metadata accessor for DetailContentView);
  v60 = v45 + *(v80 + 24);
  v61 = *v60;
  v62 = *(v60 + 16);
  if (*(v60 + 32) != 1)
  {
    v63 = *(v60 + 8);
    v64 = *(v60 + 24);
    v65 = *v60;

    sub_1000DBDC0();
    v66 = sub_1000DAED0();
    sub_1000DA330();

    v67 = v77;
    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_100043FF4(v61, v63, v62, v64, 0);
    v68 = *(v78 + 8);
    v69 = v79;
    v68(v67, v79);
    v99 = v102;

    sub_1000DBDC0();
    v70 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_100043FF4(v61, v63, v62, v64, 0);
    v68(v67, v69);
    v62 = v104;
    v61 = v99;
  }

  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = v61;
  *(v72 + 24) = 0;
  *(v72 + 32) = v62;
  *(v72 + 40) = 0;
  v73 = v87;
  (*(v88 + 32))(v87, v92, v89);
  v74 = (v73 + *(v97 + 36));
  *v74 = v71;
  v74[1] = sub_10002B518;
  v74[2] = v72;
  v75 = v90;
  sub_10004C74C(v73, v90);
  sub_10004C7B0(v75, v96);
  swift_storeEnumTagMultiPayload();
  v76 = sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView);
  v102 = v93;
  v103 = v76;
  swift_getOpaqueTypeConformance2();
  sub_10004C814();
  sub_1000DAD90();
  return sub_10004C968(v75);
}

uint64_t sub_10004BF78@<X0>(uint64_t a1@<X8>)
{
  sub_10004B1E4(v1, a1);
  KeyPath = swift_getKeyPath();
  sub_10004C10C(0);
  v5 = (a1 + *(v4 + 36));
  sub_100031EB0(0);
  v7 = *(v6 + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_1000DA6B0();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = KeyPath;
  v10 = *(type metadata accessor for DetailTimelineEntry() + 28);
  v11 = swift_getKeyPath();
  sub_10004C6B0(0, &qword_100116BD0, sub_10004C10C, sub_100031DD4, &type metadata accessor for ModifiedContent);
  v13 = (a1 + *(v12 + 36));
  sub_100031DD4(0);
  v15 = *(v14 + 28);
  v16 = sub_1000D9690();
  result = (*(*(v16 - 8) + 16))(v13 + v15, v1 + v10, v16);
  *v13 = v11;
  return result;
}

void sub_10004C154()
{
  if (!qword_100116B98)
  {
    sub_10004C6B0(255, &qword_100116BA0, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DB3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116B98);
    }
  }
}

void sub_10004C1F0()
{
  if (!qword_100116BA8)
  {
    type metadata accessor for DetailComplicationContentView();
    sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116BA8);
    }
  }
}

void sub_10004C2A4()
{
  if (!qword_100116BB8)
  {
    sub_10004C328();
    sub_10004C3DC(255, &qword_100115740, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116BB8);
    }
  }
}

void sub_10004C328()
{
  if (!qword_100116BC0)
  {
    type metadata accessor for DetailContentView(255);
    sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116BC0);
    }
  }
}

void sub_10004C3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for EdgeInsets);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10004C430@<D0>(_OWORD *a1@<X8>)
{
  sub_10004CAC0();
  sub_1000DAC20();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004C480(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_10004CAC0();
  return sub_1000DAC30();
}

double sub_10004C554()
{
  v1 = sub_1000DAC10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 32) == 1)
  {
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    result = *v0;
    v10 = *(v0 + 8);
  }

  else
  {
    v11 = *v0;

    sub_1000DBDC0();
    v12 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10004CB14(v0);
    (*(v2 + 8))(v5, v1);
    return v13;
  }

  return result;
}

void sub_10004C6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_10004C74C(uint64_t a1, uint64_t a2)
{
  sub_10004C2A4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C7B0(uint64_t a1, uint64_t a2)
{
  sub_10004C2A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004C814()
{
  result = qword_100116BE0;
  if (!qword_100116BE0)
  {
    sub_10004C2A4();
    type metadata accessor for DetailContentView(255);
    sub_10004CED0(&qword_100116BC8, type metadata accessor for DetailContentView);
    swift_getOpaqueTypeConformance2();
    sub_10004C8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE0);
  }

  return result;
}

unint64_t sub_10004C8F4()
{
  result = qword_100116BE8;
  if (!qword_100116BE8)
  {
    sub_10004C3DC(255, &qword_100115740, &type metadata accessor for _EnvironmentKeyTransformModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE8);
  }

  return result;
}

uint64_t sub_10004C968(uint64_t a1)
{
  sub_10004C2A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004CA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10004CAC0()
{
  result = qword_100116BF0;
  if (!qword_100116BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF0);
  }

  return result;
}

uint64_t sub_10004CB14(uint64_t a1)
{
  sub_10004C3DC(0, &unk_1001164D0, &type metadata accessor for Environment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CB90()
{
  result = qword_100116BF8;
  if (!qword_100116BF8)
  {
    sub_10004C6B0(255, &qword_100116BD0, sub_10004C10C, sub_100031DD4, &type metadata accessor for ModifiedContent);
    sub_10004CC84();
    sub_10004CED0(&qword_100115C18, sub_100031DD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF8);
  }

  return result;
}

unint64_t sub_10004CC84()
{
  result = qword_100116C00;
  if (!qword_100116C00)
  {
    sub_10004C10C(255);
    sub_10004CD34();
    sub_10004CED0(&qword_100115C20, sub_100031EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C00);
  }

  return result;
}

unint64_t sub_10004CD34()
{
  result = qword_100116C08;
  if (!qword_100116C08)
  {
    sub_10004C154();
    sub_10004CDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C08);
  }

  return result;
}

unint64_t sub_10004CDAC()
{
  result = qword_100116C10;
  if (!qword_100116C10)
  {
    sub_10004C6B0(255, &qword_100116BA0, sub_10004C1F0, sub_10004C2A4, &type metadata accessor for _ConditionalContent);
    type metadata accessor for DetailComplicationContentView();
    sub_10004CED0(&qword_100116BB0, type metadata accessor for DetailComplicationContentView);
    swift_getOpaqueTypeConformance2();
    sub_10004C814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C10);
  }

  return result;
}

uint64_t sub_10004CED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004CFD8@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000DAC10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1(0, v13);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = (&v25 - v19);
  a2(v8, &v25 - v19, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = a3(0);
    return (*(*(v21 - 8) + 32))(a4, v20, v21);
  }

  else
  {
    v23 = *v20;
    sub_1000DBDC0();
    v24 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_10004D2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreparedSparkline(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_100057D8C(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10004D4B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreparedSparkline(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    sub_100057D8C(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_10004D630()
{
  type metadata accessor for PreparedSparkline(319);
  if (v0 <= 0x3F)
  {
    sub_100057D8C(319, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10004D750()
{
  result = qword_100116D48;
  if (!qword_100116D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116D48);
  }

  return result;
}

uint64_t sub_10004D7C0()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(&unk_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, &unk_100116C20);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v142 = a1;
  v141 = type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable(0);
  v3 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v140 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000DAE60();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = *(v138 + 64);
  __chkstk_darwin(v5);
  v137 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for SparklineView(0);
  v130 = *(v145 - 8);
  v8 = *(v130 + 64);
  __chkstk_darwin(v145);
  v132 = v9;
  v133 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052B50(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052B84();
  v15 = *(v14 - 8);
  v143 = v14;
  v144 = v15;
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053D0C();
  v113 = v19;
  v112 = *(v19 - 8);
  v20 = *(v112 + 64);
  __chkstk_darwin(v19);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053EE4();
  v116 = v23;
  v115 = *(v23 - 8);
  v24 = *(v115 + 64);
  __chkstk_darwin(v23);
  v114 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000540D0();
  v120 = v26;
  v118 = *(v26 - 8);
  v27 = *(v118 + 64);
  __chkstk_darwin(v26);
  v117 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054AC8();
  v123 = v29;
  v121 = *(v29 - 8);
  v30 = *(v121 + 64);
  __chkstk_darwin(v29);
  v119 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054F20();
  v126 = v32;
  v125 = *(v32 - 8);
  v33 = *(v125 + 64);
  __chkstk_darwin(v32);
  v122 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000552EC(0);
  v127 = v35;
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v124 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100055368();
  v135 = v38;
  v131 = *(v38 - 8);
  v39 = *(v131 + 64);
  __chkstk_darwin(v38);
  v128 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100055700();
  v136 = v41;
  v134 = *(v41 - 8);
  v42 = *(v134 + 64);
  __chkstk_darwin(v41);
  v129 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v2;
  sub_1000575B8(0, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
  sub_100053B68();
  sub_1000DA540();
  v44 = type metadata accessor for PreparedSparkline(0);
  v45 = v44[5];
  v46 = sub_1000DA660();
  v47 = *(v46 - 8);
  v48 = v13;
  v109 = *(v47 + 56);
  v108 = v47 + 56;
  v109(v13, 1, 1, v46);
  sub_100053DE0();
  v50 = v49;
  v51 = sub_1000581F8(&qword_100116E60, sub_100052B84);
  v52 = sub_100053E74();
  v53 = v22;
  v54 = v143;
  v110 = v50;
  sub_1000DB1C0();
  v111 = v48;
  sub_100058104(v48, sub_100052B50);
  result = (v144[1])(v18, v54);
  if (*(v2 + *(v145 + 32)) != 1 || (v56 = v2 + v44[8], (*(v56 + 8) & 1) != 0))
  {
    v57 = (v2 + v44[7]);
    v58 = *v57;
    v59 = v57[1];
LABEL_9:
    v151 = v58;
    v152 = v59;
    v61 = v2;
    v62 = v111;
    v109(v111, 1, 1, v46);
    sub_100057714(0, &qword_100116E78, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for ClosedRange);
    v64 = v63;
    v147 = v54;
    v148 = v110;
    v149 = v51;
    v150 = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = sub_100054034();
    v67 = v114;
    v68 = v113;
    sub_1000DB1D0();
    sub_100058104(v62, sub_100052B50);
    v69 = (*(v112 + 8))(v53, v68);
    v144 = &v108;
    __chkstk_darwin(v69);
    *(&v108 - 2) = v61;
    v70 = v61;
    sub_1000542B4(0);
    v72 = v71;
    v147 = v68;
    v148 = v64;
    v149 = OpaqueTypeConformance2;
    v150 = v66;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_100054E7C(&qword_100116F10, sub_1000542B4, sub_100054A94);
    v75 = v117;
    v76 = v116;
    sub_1000DB180();
    v77 = (*(v115 + 8))(v67, v76);
    __chkstk_darwin(v77);
    *(&v108 - 2) = v70;
    sub_100054D34(0);
    v79 = v78;
    v147 = v76;
    v148 = v72;
    v149 = v73;
    v150 = v74;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = sub_100054E7C(&qword_100116F38, sub_100054D34, sub_100054EEC);
    v82 = v119;
    v83 = v120;
    sub_1000DB1A0();
    (*(v118 + 8))(v75, v83);
    v84 = v133;
    sub_100057AC8(v70, v133, type metadata accessor for SparklineView);
    v85 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v86 = swift_allocObject();
    sub_100057C94(v84, v86 + v85, type metadata accessor for SparklineView);
    sub_1000551DC();
    v147 = v83;
    v148 = v79;
    v149 = v80;
    v150 = v81;
    swift_getOpaqueTypeConformance2();
    sub_10005523C();
    v87 = v122;
    v88 = v123;
    sub_1000DB1E0();

    (*(v121 + 8))(v82, v88);
    KeyPath = swift_getKeyPath();
    v90 = v127;
    v91 = v124;
    v92 = &v124[*(v127 + 36)];
    sub_100055334(0);
    v94 = *(v93 + 28);
    v95 = enum case for LayoutDirection.leftToRight(_:);
    v96 = sub_1000DA910();
    (*(*(v96 - 8) + 104))(v92 + v94, v95, v96);
    *v92 = KeyPath;
    (*(v125 + 32))(v91, v87, v126);
    v97 = v137;
    sub_1000DAE30();
    v98 = sub_1000553EC();
    v99 = v128;
    sub_1000DB2A0();
    (*(v138 + 8))(v97, v139);
    sub_100057768(v91, sub_1000552EC);
    v100 = v140;
    sub_100057AC8(v70, v140, type metadata accessor for PreparedSparkline);
    v147 = v90;
    v148 = v98;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = sub_1000581F8(&qword_100116F98, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
    v103 = v129;
    v104 = v135;
    v105 = v141;
    sub_1000DB2D0();
    sub_100058104(v100, type metadata accessor for SparklineViewAccessibilityChartDescriptorRepresentable);
    (*(v131 + 8))(v99, v104);
    v106 = *(v70 + *(v145 + 40));
    v147 = v104;
    v148 = v105;
    v149 = v101;
    v150 = v102;
    swift_getOpaqueTypeConformance2();
    v107 = v136;
    sub_1000DB1F0();
    return (*(v134 + 8))(v103, v107);
  }

  v59 = *v56;
  v60 = (v2 + v44[7]);
  v58 = *v60;
  if (v59 < *v60)
  {
    v58 = v59;
  }

  if (v59 <= v60[1])
  {
    v59 = v60[1];
  }

  if (v58 <= v59)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100052D68(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052C2C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(type metadata accessor for SparklineView(0) + 40));
  v22[4] = a1;
  sub_100052E30();
  sub_10005376C();
  sub_1000DA530();
  if (v16)
  {
    (*(v6 + 32))(a2, v9, v5);
  }

  else
  {
    sub_100053A80();
    v22[1] = v17;
    sub_1000581F8(&qword_100116E38, sub_100052D68);
    sub_100053B34(255);
    v19 = v18;
    v20 = sub_1000581F8(&qword_100116E30, sub_100053B34);
    v22[6] = v19;
    v22[7] = v20;
    swift_getOpaqueTypeConformance2();
    sub_1000DA3C0();
    (*(v6 + 8))(v9, v5);
    (*(v12 + 32))(a2, v15, v11);
  }

  sub_1000575B8(0, &qword_100116FE0, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional.Storage);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004EB08()
{
  sub_100053B34(0);
  sub_1000581F8(&qword_100116E30, sub_100053B34);
  return sub_1000DB1F0();
}

uint64_t sub_10004EB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1000DA400();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SparklineView(0);
  v7 = *(v6 - 8);
  v91 = v6 - 8;
  v80 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v81 = v9;
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000570C0(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000DA430();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000DA480();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v78 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000542E8(0);
  v93 = v19;
  v87 = *(v19 - 8);
  v20 = *(v87 + 64);
  __chkstk_darwin(v19);
  v77 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000DA980();
  v23 = *(v22 - 8);
  v89 = v22;
  v90 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v88 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = &v69 - v27;
  v28 = sub_1000D92D0();
  v84 = *(v28 - 8);
  v85 = v28;
  v29 = *(v84 + 64);
  __chkstk_darwin(v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000D9280();
  v74 = *(v32 - 8);
  v75 = v32;
  v33 = *(v74 + 64);
  __chkstk_darwin(v32);
  sub_100053DE0();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000D9270();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000DA5F0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v39;
  v49 = *(v39 + 104);
  v71 = enum case for Calendar.Component.hour(_:);
  v73 = v38;
  v70 = v49;
  v49(v42, v46);
  v50 = type metadata accessor for PreparedSparkline(0);
  sub_100057AC8(a1 + *(v50 + 20), v37, sub_100053DE0);
  sub_1000D9250();
  (*(v84 + 16))(v31, a1 + *(v50 + 24), v85);
  v51 = v87;
  sub_1000D9260();
  v52 = 1;
  v85 = v42;
  sub_1000DA5E0();
  v53 = sub_1000DA5D0();
  (*(v44 + 8))(v48, v43);
  v84 = *(v53 + 16);

  v54 = a1 + *(v91 + 52);
  v55 = v86;
  sub_10004CF18(v86);
  v56 = v88;
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons);
  v57 = v89;
  LOBYTE(v54) = sub_1000DBED0();
  v58 = *(v90 + 8);
  v58(v56, v57);
  v58(v55, v57);
  v59 = v92;
  if ((v54 & 1) == 0)
  {
    if (*(*a1 + 16))
    {
      v60 = v84 / 3;
      sub_1000DA460();
      v61 = v85;
      v62 = v73;
      v70(v85, v71, v73);
      v63 = v76;
      (*(v74 + 56))(v76, 1, 1, v75);
      sub_1000DA410();
      sub_100058104(v63, sub_1000570C0);
      (*(v72 + 8))(v61, v62);
      v64 = v82;
      sub_100057AC8(a1, v82, type metadata accessor for SparklineView);
      v65 = (*(v80 + 80) + 24) & ~*(v80 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v60;
      sub_100057C94(v64, v66 + v65, type metadata accessor for SparklineView);
      sub_1000DA3F0();
      sub_100054330();
      sub_1000547B4();
      v67 = v77;
      sub_1000DA630();
      (*(v51 + 32))(v59, v67, v93);
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }
  }

  return (*(v51 + 56))(v59, v52, 1, v93);
}

uint64_t sub_10004F430@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v201 = a3;
  v194 = a4;
  sub_1000573DC();
  v193 = v6;
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v192 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005744C();
  v184 = v9;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v183 = v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054454();
  v191 = v12;
  v190 = *(v12 - 8);
  v13 = *(v190 + 64);
  __chkstk_darwin(v12);
  v185 = v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000DA5A0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v162 = v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1000DA5C0();
  v179 = *(v181 - 8);
  v18 = *(v179 + 64);
  __chkstk_darwin(v181);
  v178 = v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005471C(0, &qword_100116EE8, &type metadata accessor for AxisTick);
  v180 = v20;
  v182 = *(v20 - 8);
  v21 = *(v182 + 64);
  __chkstk_darwin(v20);
  v200 = v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v199 = v153 - v24;
  v25 = sub_1000DA4E0();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v157 = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000DA520();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v172 = v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057714(0, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
  v155 = v31;
  v159 = *(v31 - 8);
  v32 = *(v159 + 64);
  __chkstk_darwin(v31);
  v154 = v153 - v33;
  sub_1000545E8();
  v175 = v34;
  v174 = *(v34 - 8);
  v35 = *(v174 + 64);
  __chkstk_darwin(v34);
  v173 = v153 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000544EC();
  v177 = v37;
  v176 = *(v37 - 8);
  v38 = *(v176 + 64);
  __chkstk_darwin(v37);
  v198 = v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v197 = v153 - v41;
  v171 = sub_1000D8FB0();
  v170 = *(v171 - 8);
  v42 = *(v170 + 64);
  __chkstk_darwin(v171);
  v167 = v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000D8FC0();
  v168 = *(v169 - 8);
  v44 = *(v168 + 64);
  __chkstk_darwin(v169);
  v166 = v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000D8EC0();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v165 = v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000D91C0();
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v164 = v153 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1000D92D0();
  v160 = *(v163 - 8);
  v52 = *(v160 + 64);
  __chkstk_darwin(v163);
  v161 = v153 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000D9280();
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v153[1] = v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057D8C(0, &qword_100116FC8, &type metadata accessor for Date.FormatStyle.TimeStyle, &type metadata accessor for Optional);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v153[0] = v153 - v59;
  sub_100057D8C(0, &qword_100116FD0, &type metadata accessor for Date.FormatStyle.DateStyle, &type metadata accessor for Optional);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v63 = v153 - v62;
  v196 = sub_1000D8FD0();
  v156 = *(v196 - 8);
  v64 = *(v156 + 64);
  __chkstk_darwin(v196);
  v158 = v153 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v195 = v153 - v67;
  sub_100054420(0);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68 - 8);
  v189 = v153 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v188 = v153 - v72;
  v73 = sub_1000DA390();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  v77 = v153 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005471C(0, &qword_100116EB0, &type metadata accessor for AxisGridLine);
  v79 = v78;
  v80 = *(v78 - 8);
  v81 = *(v80 + 64);
  __chkstk_darwin(v78);
  v83 = v153 - v82;
  sub_1000543A4();
  v85 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84 - 8);
  v186 = v153 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v202 = v153 - v88;
  v187 = a1;
  v89 = sub_1000DA650();
  v90 = a2 / 2;
  if (a2 / 2 == -1)
  {
    goto LABEL_6;
  }

  if (v90)
  {
    v89 %= v90;
  }

  if (!v89)
  {
LABEL_6:
    v91 = type metadata accessor for SparklineView(0);
    v92 = v201;
    v93 = (v201 + *(v91 + 56));
    v95 = *(v93 + 2);
    v94 = *(v93 + 3);
    v96 = *(v93 + 4);
    v208 = *v93;
    v209 = v95;
    v210 = v94;
    v211 = v96;

    sub_1000DA380();
    *&v204 = *(v92 + *(v91 + 60));
    sub_1000DA570();
    (*(v74 + 8))(v77, v73);
    v97 = v202;
    (*(v80 + 32))(v202, v83, v79);
    (*(v80 + 56))(v97, 0, 1, v79);
  }

  else
  {
    (*(v80 + 56))(v202, 1, 1, v79);
  }

  v98 = sub_1000DA650();
  if (a2 == -1)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    v98 %= a2;
  }

  if (!v98)
  {
LABEL_12:
    v101 = sub_1000D8F60();
    (*(*(v101 - 8) + 56))(v63, 1, 1, v101);
    v102 = sub_1000D8F50();
    (*(*(v102 - 8) + 56))(v153[0], 1, 1, v102);
    sub_1000D9250();
    v103 = *(type metadata accessor for PreparedSparkline(0) + 24);
    v104 = *(v160 + 16);
    v105 = v201;
    v106 = v161;
    v107 = v163;
    v104(v161, v201 + v103, v163);
    sub_1000D9260();
    v104(v106, v105 + v103, v107);
    sub_1000D9140();
    sub_1000D8EB0();
    v108 = v158;
    sub_1000D8F70();
    v109 = v167;
    sub_1000D8FA0();
    v110 = v166;
    sub_1000D8F90();
    (*(v170 + 8))(v109, v171);
    v111 = v195;
    sub_1000D8F80();
    (*(v168 + 8))(v110, v169);
    v112 = v156;
    v113 = *(v156 + 8);
    v171 = v156 + 8;
    v187 = v113;
    v114 = v196;
    v113(v108, v196);
    (*(v112 + 16))(v108, v111, v114);
    sub_1000DA510();
    sub_1000DA4D0();
    sub_1000581F8(&qword_100116FD8, &type metadata accessor for Date.FormatStyle);
    v115 = v154;
    sub_1000DA440();
    v116 = type metadata accessor for SparklineView(0);
    v117 = *(v105 + v116[12]);
    v118 = sub_100054698();
    v119 = v173;
    v120 = v155;
    sub_1000DA580();
    (*(v159 + 8))(v115, v120);
    v203 = *(v105 + v116[13]);
    *&v204 = v120;
    *(&v204 + 1) = v118;
    swift_getOpaqueTypeConformance2();
    v121 = v179;
    v122 = v197;
    v123 = v175;
    sub_1000DA570();
    (*(v174 + 8))(v119, v123);
    sub_1000DA590();
    v124 = (v105 + v116[14]);
    v126 = *(v124 + 2);
    v125 = *(v124 + 3);
    v127 = *(v124 + 4);
    v204 = *v124;
    v205 = v126;
    v206 = v125;
    v207 = v127;

    v128 = v178;
    sub_1000DA5B0();
    v203 = *(v105 + v116[15]);
    v129 = v199;
    v130 = v181;
    sub_1000DA570();
    (*(v121 + 8))(v128, v130);
    v131 = v176;
    v132 = *(v176 + 16);
    v133 = v198;
    v134 = v177;
    v132(v198, v122, v177);
    v135 = v182;
    v136 = *(v182 + 16);
    v137 = v180;
    v136(v200, v129, v180);
    v138 = v183;
    v132(v183, v133, v134);
    v139 = v184;
    v140 = *(v184 + 48);
    v141 = v200;
    v136(&v138[v140], v200, v137);
    v142 = v185;
    (*(v131 + 32))(v185, v138, v134);
    (*(v135 + 32))(v142 + *(v139 + 48), &v138[v140], v137);
    v143 = *(v135 + 8);
    v143(v199, v137);
    v144 = *(v131 + 8);
    v144(v197, v134);
    v187(v195, v196);
    v143(v141, v137);
    v144(v198, v134);
    v100 = v188;
    sub_100057548(v142, v188, sub_100054454);
    v99 = 0;
  }

  else
  {
    v99 = 1;
    v100 = v188;
  }

  (*(v190 + 56))(v100, v99, 1, v191);
  v145 = v202;
  v146 = v186;
  sub_1000574E0(v202, v186, sub_1000543A4);
  v147 = v189;
  sub_1000574E0(v100, v189, sub_100054420);
  sub_100054880();
  v148 = v192;
  sub_1000574E0(v146, v192, sub_1000543A4);
  sub_100054E7C(&qword_100116F00, sub_100054420, sub_10005493C);
  v149 = v193;
  v150 = *(v193 + 48);
  sub_1000574E0(v147, v148 + v150, sub_100054420);
  v151 = v194;
  sub_100057548(v148, v194, sub_1000543A4);
  sub_100057548(v148 + v150, v151 + *(v149 + 48), sub_100054420);
  sub_100057768(v100, sub_100054420);
  sub_100057768(v145, sub_1000543A4);
  sub_100057768(v147, sub_100054420);
  return sub_100057768(v146, sub_1000543A4);
}

uint64_t sub_1000508CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000DA400();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SparklineView(0);
  v7 = v6 - 8;
  v45 = *(v6 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1000DA430();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DA480();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054D68();
  v50 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000DA980();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  v27 = a1 + *(v7 + 52);
  sub_10004CF18(&v44 - v25);
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons);
  LOBYTE(v27) = sub_1000DBED0();
  v28 = *(v20 + 8);
  v28(v23, v19);
  v28(v26, v19);
  if ((v27 & 1) != 0 || !*(*a1 + 16))
  {
    v42 = 1;
    v40 = v50;
    v41 = v51;
  }

  else
  {
    sub_1000DA470();
    v52 = 0;
    sub_100056D08();
    sub_1000DA420();
    sub_100057AC8(a1, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SparklineView);
    v29 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v30 = swift_allocObject();
    sub_100057C94(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SparklineView);
    sub_1000DA3F0();
    sub_1000544EC();
    sub_1000545E8();
    v32 = v31;
    sub_100057714(255, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
    v34 = v33;
    v35 = sub_100054698();
    v52 = v34;
    v53 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = v32;
    v53 = &type metadata for Color;
    v54 = OpaqueTypeConformance2;
    v55 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v37 = v46;
    sub_1000DA630();
    v39 = v50;
    v38 = v51;
    (*(v16 + 32))(v51, v37, v50);
    v40 = v39;
    v41 = v38;
    v42 = 0;
  }

  return (*(v16 + 56))(v41, v42, 1, v40);
}

uint64_t sub_100050E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = sub_1000DA4E0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000DA520();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_100057714(0, &qword_100116ED8, &type metadata for Never, &protocol witness table for Never, &type metadata accessor for AxisValueLabel);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = v23 - v11;
  sub_1000545E8();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = xmmword_1000DFDC0;
  v28 = 0xA300000000000000;
  sub_1000DA510();
  sub_1000DA4D0();
  sub_10005706C();
  sub_1000DA440();
  v19 = type metadata accessor for SparklineView(0);
  v20 = *(a1 + *(v19 + 48));
  v21 = sub_100054698();
  sub_1000DA580();
  (*(v9 + 8))(v12, v8);
  v23[1] = *(a1 + *(v19 + 52));
  v24 = v8;
  v25 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1000DA570();
  return (*(v15 + 8))(v18, v14);
}

void sub_100051148(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000DAF10();
  v7 = *(a2 + *(type metadata accessor for SparklineView(0) + 56)) * 0.5;
  sub_1000DA690();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1000DA490();
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  sub_1000551DC();
  v18 = a3 + *(v17 + 36);
  *v18 = v6;
  *(v18 + 8) = v9;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
}

uint64_t sub_100051218(uint64_t a1)
{
  v2 = sub_1000DA910();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1000DAA90();
}

uint64_t sub_1000512E0()
{
  v1 = v0;
  v2 = sub_1000DA980();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = v0 + *(type metadata accessor for SparklineView(0) + 44);
  sub_10004CF18(v9);
  sub_1000DA970();
  sub_1000581F8(&qword_100115C40, &type metadata accessor for RedactionReasons);
  LOBYTE(v10) = sub_1000DBED0();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v9, v2);
  if ((v10 & 1) != 0 || !*(*v1 + 16))
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v14 = qword_100116C38;
    v15 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(*(v15 + 16) + 440))(v14);
  }

  else if (*(v1 + *(type metadata accessor for PreparedSparkline(0) + 36)))
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v12 = qword_100116C38;
    v13 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(v13 + 64))(v12, v13);
  }

  else
  {
    if (qword_1001140C8 != -1)
    {
      swift_once();
    }

    v17 = qword_100116C38;
    v18 = unk_100116C40;
    sub_100006C7C(qword_100116C20, qword_100116C38);
    (*(v18 + 56))(v17, v18);
  }

  return sub_1000DB390();
}

uint64_t sub_10005159C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100053670(0);
  v126 = v4;
  v125 = *(v4 - 8);
  v5 = *(v125 + 64);
  __chkstk_darwin(v4);
  v123 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053594();
  v129 = v7;
  v128 = *(v7 - 8);
  v8 = *(v128 + 64);
  __chkstk_darwin(v7);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053480();
  v11 = v10;
  v131 = *(v10 - 8);
  v12 = *(v131 + 64);
  __chkstk_darwin(v10);
  v130 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = &v115 - v15;
  sub_10005763C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v119 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v115 - v20;
  __chkstk_darwin(v21);
  v137 = &v115 - v22;
  sub_1000576A4();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v150 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v136 = &v115 - v27;
  sub_100053350(0);
  v141 = v28;
  v139 = *(v28 - 8);
  v29 = *(v139 + 64);
  __chkstk_darwin(v28);
  v138 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053288();
  v145 = v31;
  v143 = *(v31 - 8);
  v32 = *(v143 + 64);
  __chkstk_darwin(v31);
  v140 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053174();
  v146 = v34;
  v144 = *(v34 - 8);
  v35 = *(v144 + 64);
  __chkstk_darwin(v34);
  v142 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053030();
  v122 = v37;
  v121 = *(v37 - 8);
  v38 = *(v121 + 64);
  __chkstk_darwin(v37);
  v120 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v152 = &v115 - v41;
  sub_100057714(0, &qword_100116FF8, &type metadata for Double, &protocol witness table for Double, &type metadata accessor for PlottableValue);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v44 = sub_1000DA620();
  v116 = *(v44 - 8);
  v45 = *(v116 + 64);
  __chkstk_darwin(v44);
  v47 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052FAC();
  v134 = v48;
  v118 = *(v48 - 8);
  v49 = *(v118 + 64);
  __chkstk_darwin(v48);
  v51 = &v115 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EE4();
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  v117 = &v115 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EB0(0);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v149 = &v115 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v153 = &v115 - v61;
  v148 = type metadata accessor for PreparedSparkline(0);
  v62 = (a1 + *(v148 + 32));
  v147 = *v62;
  v135 = *(v62 + 8);
  v133 = a2;
  v132 = v11;
  if (v135)
  {
    goto LABEL_2;
  }

  v63 = v147;
  result = type metadata accessor for SparklineView(0);
  v65 = result;
  v66 = (a1 + *(v148 + 28));
  v67 = *v66;
  if (*(a1 + *(result + 32)))
  {
    if (v67 > v63)
    {
      v67 = v63;
    }

    v68 = v66[1];
    if (v68 < v63)
    {
      v68 = v63;
    }

    if (v67 > v68)
    {
      goto LABEL_23;
    }

    if (v67 > v63)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v68 = v66[1];
    if (v67 > v63)
    {
      goto LABEL_2;
    }
  }

  if (v68 >= v63)
  {
    sub_1000DACD0();
    *&v162 = v147;
    sub_1000DA450();

    sub_1000DA610();
    v69 = a1 + *(v65 + 24);
    v70 = *(v69 + 1);
    v162 = *v69;
    v163 = v70;
    v164 = *(v69 + 4);
    sub_1000DA3E0();
    (*(v116 + 8))(v47, v44);
    sub_1000512E0();
    v71 = *(a1 + *(v65 + 28));
    v72 = sub_1000DB350();

    v154 = v72;
    *&v159 = v44;
    *(&v159 + 1) = &protocol witness table for RuleMark;
    swift_getOpaqueTypeConformance2();
    v73 = v117;
    v74 = v134;
    sub_1000DA3B0();

    (*(v118 + 8))(v51, v74);
    v75 = v153;
    (*(v54 + 32))(v153, v73, v53);
    (*(v54 + 56))(v75, 0, 1, v53);
    goto LABEL_14;
  }

LABEL_2:
  (*(v54 + 56))(v153, 1, 1, v53);
LABEL_14:
  v134 = *a1;
  *&v159 = v134;

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_100053418(0);
  v77 = v76;
  v78 = sub_1000D9090();
  v79 = sub_1000581F8(&qword_100116DC8, sub_100053418);
  v80 = v138;
  v137 = v77;
  v136 = v78;
  v118 = v79;
  sub_1000DA600();
  v81 = type metadata accessor for SparklineView(0);
  v82 = a1 + v81[5];
  v161 = *(v82 + 4);
  v83 = *(v82 + 1);
  v159 = *v82;
  v160 = v83;
  v84 = sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
  v85 = v140;
  v86 = v141;
  sub_1000DA3E0();
  (*(v139 + 8))(v80, v86);
  v158 = sub_1000512E0();
  v154 = v86;
  v155 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = v142;
  v89 = v145;
  sub_1000DA3B0();

  (*(v143 + 8))(v85, v89);
  v90 = a1 + v81[9];
  v91 = *v90;
  LODWORD(v85) = v90[8];
  v154 = v89;
  v155 = &type metadata for Color;
  v156 = OpaqueTypeConformance2;
  v157 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v145 = v91;
  LODWORD(v143) = v85;
  v92 = v146;
  sub_1000DA3D0();
  (*(v144 + 8))(v88, v92);
  v154 = v134;

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  sub_1000DACD0();
  swift_getKeyPath();
  sub_1000DA4B0();

  result = sub_1000DACD0();
  if (v135 & 1 | ((*(a1 + v81[8]) & 1) == 0))
  {
    v93 = *(a1 + *(v148 + 28));
LABEL_21:
    v158 = *&v93;
    type metadata accessor for PreparedSparkline.Entry(0);
    sub_1000DA4A0();

    v96 = v123;
    sub_1000DA560();
    sub_100024A74(0, &qword_100117000);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1000E08A0;
    sub_1000512E0();
    v98 = sub_1000DB350();

    *(v97 + 32) = v98;
    sub_1000512E0();
    v99 = sub_1000DB350();

    *(v97 + 40) = v99;
    v154 = sub_1000DB5B0();
    v100 = sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738);
    v101 = v124;
    v102 = v126;
    sub_1000DA3B0();

    (*(v125 + 8))(v96, v102);
    v154 = v102;
    v155 = &type metadata for Gradient;
    v156 = v100;
    v157 = &protocol witness table for Gradient;
    swift_getOpaqueTypeConformance2();
    v103 = v127;
    v104 = v129;
    sub_1000DA3D0();
    (*(v128 + 8))(v101, v104);
    v105 = v149;
    sub_1000574E0(v153, v149, sub_100052EB0);
    v154 = v105;
    v106 = v121;
    v107 = v120;
    v108 = v152;
    v109 = v122;
    (*(v121 + 16))(v120, v152, v122);
    v155 = v107;
    v110 = v131;
    v111 = v130;
    v112 = v132;
    (*(v131 + 16))(v130, v103, v132);
    v156 = v111;
    sub_1000528A8(&v154, v133);
    v113 = *(v110 + 8);
    v113(v103, v112);
    v114 = *(v106 + 8);
    v114(v108, v109);
    sub_100057768(v153, sub_100052EB0);
    v113(v111, v112);
    v114(v107, v109);
    return sub_100057768(v149, sub_100052EB0);
  }

  v94 = v147;
  v95 = (a1 + *(v148 + 28));
  v93 = *v95;
  if (*v95 > v147)
  {
    v93 = v147;
  }

  if (v95[1] >= v147)
  {
    v94 = v95[1];
  }

  if (v93 <= v94)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000528A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000577C8();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100052EB0(0);
  sub_100053994();
  sub_1000574E0(*a1, v8, sub_100052EB0);
  sub_100053030();
  v10 = v9;
  sub_100053174();
  sub_100053288();
  sub_100053350(255);
  sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
  v11 = *(v5 + 56);
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v8[v11], a1[1], v10);
  sub_100053480();
  v14 = v13;
  sub_100053594();
  sub_100053670(255);
  sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738);
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], v16, v14);
  sub_100057548(v8, a2, sub_100052EB0);
  (*(v12 + 32))(a2 + *(v5 + 56), &v8[v11], v10);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v8[v15], v14);
}

void sub_100052B84()
{
  if (!qword_100116D58)
  {
    sub_1000575B8(255, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
    sub_100053B68();
    v0 = sub_1000DA550();
    if (!v1)
    {
      atomic_store(v0, &qword_100116D58);
    }
  }
}

void sub_100052C2C()
{
  if (!qword_100116D68)
  {
    sub_100052D68(255);
    sub_100053A80();
    sub_1000581F8(&qword_100116E38, sub_100052D68);
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D68);
    }
  }
}

void sub_100052DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100052E30()
{
  if (!qword_100116D78)
  {
    sub_100052EB0(255);
    sub_100053030();
    sub_100053480();
    v0 = sub_1000DA3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116D78);
    }
  }
}

void sub_100052EE4()
{
  if (!qword_100116D88)
  {
    sub_100052FAC();
    sub_1000DA620();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D88);
    }
  }
}

void sub_100052FAC()
{
  if (!qword_100116D90)
  {
    sub_1000DA620();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D90);
    }
  }
}

void sub_100053030()
{
  if (!qword_100116D98)
  {
    sub_100053174();
    sub_100053288();
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116D98);
    }
  }
}

void sub_100053174()
{
  if (!qword_100116DA0)
  {
    sub_100053288();
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DA0);
    }
  }
}

void sub_100053288()
{
  if (!qword_100116DA8)
  {
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DA8);
    }
  }
}

void sub_100053384()
{
  if (!qword_100116DB8)
  {
    sub_100053418(255);
    sub_1000581F8(&qword_100116DC8, sub_100053418);
    v0 = sub_1000DA500();
    if (!v1)
    {
      atomic_store(v0, &qword_100116DB8);
    }
  }
}

void sub_100053480()
{
  if (!qword_100116DE0)
  {
    sub_100053594();
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DE0);
    }
  }
}

void sub_100053594()
{
  if (!qword_100116DE8)
  {
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116DE8);
    }
  }
}

void sub_1000536A4()
{
  if (!qword_100116DF8)
  {
    sub_100053418(255);
    sub_1000581F8(&qword_100116DC8, sub_100053418);
    v0 = sub_1000DA4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116DF8);
    }
  }
}

unint64_t sub_10005376C()
{
  result = qword_100116E10;
  if (!qword_100116E10)
  {
    sub_100052E30();
    sub_100053994();
    sub_100053174();
    sub_100053288();
    sub_100053350(255);
    sub_100054E7C(&qword_100116DD0, sub_100053350, sub_10005344C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100053594();
    sub_100053670(255);
    sub_100054E7C(&qword_100116E00, sub_100053670, sub_100053738);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E10);
  }

  return result;
}

unint64_t sub_100053994()
{
  result = qword_100116E18;
  if (!qword_100116E18)
  {
    sub_100052EB0(255);
    sub_100052FAC();
    sub_1000DA620();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E18);
  }

  return result;
}

void sub_100053A80()
{
  if (!qword_100116E20)
  {
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E20);
    }
  }
}

unint64_t sub_100053B68()
{
  result = qword_100116E40;
  if (!qword_100116E40)
  {
    sub_1000575B8(255, &qword_100116D60, sub_100052C2C, sub_100052D68, &type metadata accessor for BuilderConditional);
    sub_100052D68(255);
    sub_100053A80();
    sub_1000581F8(&qword_100116E38, sub_100052D68);
    sub_100053B34(255);
    sub_1000581F8(&qword_100116E30, sub_100053B34);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116E40);
  }

  return result;
}

void sub_100053D0C()
{
  if (!qword_100116E48)
  {
    sub_100052B84();
    sub_100053DE0();
    sub_1000581F8(&qword_100116E60, sub_100052B84);
    sub_100053E74();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100116E48);
    }
  }
}