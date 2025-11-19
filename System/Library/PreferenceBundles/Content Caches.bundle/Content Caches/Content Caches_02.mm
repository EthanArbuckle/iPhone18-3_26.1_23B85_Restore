uint64_t sub_305B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_305F0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = sub_32C44();
    sub_2F714(&v7, v1, v3);

    v5(v6, 0);

    sub_2BBB4(v1, v3);
  }

  return result;
}

uint64_t sub_306F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3070C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30754()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_307B4()
{
  v1 = (v0 + *(type metadata accessor for FavoredServer() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for FavoredServer()
{
  result = qword_47BA0;
  if (!qword_47BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30840()
{
  v1 = (v0 + *(type metadata accessor for FavoredServer() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_30880()
{
  v1 = (v0 + *(type metadata accessor for FavoredServer() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *sub_308C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_32AB4();
  result = type metadata accessor for FavoredServer();
  v15 = (a7 + result[5]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + result[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_30940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FavoredServer();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32AB4();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v9 = sub_26C8(0x7472617473, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_F670(*(a1 + 56) + 32 * v9, &v28);
  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v11 = v27;
    if (*(a1 + 16))
    {
      v12 = v26;
      v13 = sub_26C8(6581861, 0xE300000000000000);
      if (v14)
      {
        sub_F670(*(a1 + 56) + 32 * v13, &v28);
        v30 = v28;
        v31 = v29;
        if (!*(&v29 + 1))
        {
LABEL_16:

          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v15 = v27;
          if (!*(a1 + 16) || (v16 = v26, v17 = sub_26C8(0x656372756F73, 0xE600000000000000), (v18 & 1) == 0))
          {

            goto LABEL_18;
          }

          sub_F670(*(a1 + 56) + 32 * v17, &v28);

          v30 = v28;
          v31 = v29;
          if (*(&v29 + 1))
          {
            if (swift_dynamicCast())
            {
              v19 = v26;
              v20 = v27;
              v21 = &v8[v4[5]];
              *v21 = v12;
              *(v21 + 1) = v11;
              v22 = &v8[v4[6]];
              *v22 = v16;
              *(v22 + 1) = v15;
              v23 = &v8[v4[7]];
              *v23 = v19;
              *(v23 + 1) = v20;
              sub_24220(v8, a2);
              (*(v5 + 56))(a2, 0, 1, v4);
              return sub_30C5C(v8);
            }

            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:

    goto LABEL_18;
  }

LABEL_14:

  sub_F6E0(&v30);
LABEL_19:
  v25 = sub_32AC4();
  (*(*(v25 - 8) + 8))(v8, v25);
  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_30C5C(uint64_t a1)
{
  v2 = type metadata accessor for FavoredServer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32AC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_30DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32AC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_30E5C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_30E94();
  return v3;
}

uint64_t sub_30E94()
{
  v1 = sub_279C(&qword_45600, &qword_341D8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v42 - v3;
  v5 = sub_32AE4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_33224();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = xmmword_35B40;
  *(v0 + 32) = xmmword_35B50;
  *(v0 + 48) = xmmword_35B60;
  *(v0 + 64) = xmmword_35B70;
  *(v0 + 80) = xmmword_35B80;
  sub_33214();
  v9 = sub_2A72C();
  swift_beginAccess();
  v10 = *v9;
  sub_32AD4();
  *(v0 + 96) = sub_33284();
  *(v0 + 104) = v11;
  sub_33214();
  swift_beginAccess();
  v12 = *v9;
  sub_32AD4();
  *(v0 + 112) = sub_33284();
  *(v0 + 120) = v13;
  sub_33214();
  swift_beginAccess();
  v14 = *v9;
  sub_32AD4();
  *(v0 + 128) = sub_33284();
  *(v0 + 136) = v15;
  sub_33214();
  swift_beginAccess();
  v16 = *v9;
  sub_32AD4();
  *(v0 + 144) = sub_33284();
  *(v0 + 152) = v17;
  sub_32964();
  v18 = sub_32974();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v4, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL, v4, v18);
    v21 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);
    sub_33214();
    swift_beginAccess();
    v22 = *v9;
    sub_32AD4();
    *v21 = sub_33284();
    v21[1] = v23;
    v24 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);
    sub_33214();
    swift_beginAccess();
    v25 = *v9;
    sub_32AD4();
    *v24 = sub_33284();
    v24[1] = v26;
    v27 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);
    sub_33214();
    swift_beginAccess();
    v28 = *v9;
    sub_32AD4();
    *v27 = sub_33284();
    v27[1] = v29;
    v30 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);
    sub_33214();
    swift_beginAccess();
    v31 = *v9;
    sub_32AD4();
    *v30 = sub_33284();
    v30[1] = v32;
    v33 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);
    sub_33214();
    swift_beginAccess();
    v34 = *v9;
    sub_32AD4();
    *v33 = sub_33284();
    v33[1] = v35;
    v36 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);
    sub_33214();
    swift_beginAccess();
    v37 = *v9;
    sub_32AD4();
    *v36 = sub_33284();
    v36[1] = v38;
    v39 = (v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);
    sub_33214();
    swift_beginAccess();
    v40 = *v9;
    sub_32AD4();
    *v39 = sub_33284();
    v39[1] = v41;
    sub_32B54();
    return v0;
  }

  return result;
}

uint64_t sub_31634()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31784@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_279C(&qword_45600, &qword_341D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  sub_32964();
  v6 = sub_32974();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_31898()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_319E4()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31B34()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31C7C()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31DA4()
{
  v0 = sub_32AE4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_33224();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_33214();
  v4 = sub_2A72C();
  swift_beginAccess();
  v5 = *v4;
  sub_32AD4();
  return sub_33284();
}

uint64_t sub_31EC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_31EF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_31F28()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_31F58()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_31F88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL;
  v4 = sub_32974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_32000()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle + 8);

  return v1;
}

uint64_t sub_3203C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle + 8);

  return v1;
}

uint64_t sub_32078()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription + 8);

  return v1;
}

uint64_t sub_320B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle + 8);

  return v1;
}

uint64_t sub_320F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription + 8);

  return v1;
}

uint64_t sub_3212C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle + 8);

  return v1;
}

uint64_t sub_32168()
{
  v1 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription);
  v2 = *(v0 + OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription + 8);

  return v1;
}

unint64_t sub_321F8()
{
  result = qword_468C0;
  if (!qword_468C0)
  {
    type metadata accessor for InfoViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_468C0);
  }

  return result;
}

uint64_t type metadata accessor for InfoViewModel()
{
  result = qword_47C40;
  if (!qword_47C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_32328()
{
  v1 = *(v0 + 13);

  v2 = *(v0 + 15);

  v3 = *(v0 + 17);

  v4 = *(v0 + 19);

  v5 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel_moreInfoURL;
  v6 = sub_32974();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_statusIndicatorsTitle + 8];

  v8 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelTitle + 8];

  v9 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_reachableLabelDescription + 8];

  v10 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelTitle + 8];

  v11 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_unreachableLabelDescription + 8];

  v12 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelTitle + 8];

  v13 = *&v0[OBJC_IVAR____TtC14Content_Caches13InfoViewModel_favoredLabelDescription + 8];

  v14 = OBJC_IVAR____TtC14Content_Caches13InfoViewModel___observationRegistrar;
  v15 = sub_32B64();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  return v0;
}

uint64_t sub_32474()
{
  sub_32328();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_324D4()
{
  result = sub_32974();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_32B64();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_325EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20[1] = a2;
  v23 = sub_33274();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_32974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_32954();
  sub_32934();
  v18 = *(v9 + 8);
  v18(v13, v8);
  sub_32944();
  v18(v15, v8);
  v24 = v21;
  v25 = v22;
  sub_33264();
  sub_1288C();
  sub_334D4();
  return (*(v4 + 8))(v7, v23);
}