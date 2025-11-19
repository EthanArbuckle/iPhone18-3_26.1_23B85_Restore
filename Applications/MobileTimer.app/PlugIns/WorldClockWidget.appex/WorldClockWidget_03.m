uint64_t sub_100064034(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007094(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000640B8()
{
  result = qword_10008BE58;
  if (!qword_10008BE58)
  {
    sub_100007094(&qword_10008BE48);
    sub_100064170();
    sub_100011308(&qword_10008B388, &qword_10008B378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE58);
  }

  return result;
}

unint64_t sub_100064170()
{
  result = qword_10008BE60;
  if (!qword_10008BE60)
  {
    sub_100007094(&qword_10008BE68);
    sub_100064034(&qword_10008BE70, &qword_10008BE78, &unk_10007D420, sub_100064220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE60);
  }

  return result;
}

unint64_t sub_100064220()
{
  result = qword_10008BE80;
  if (!qword_10008BE80)
  {
    sub_100007094(&qword_10008BE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE80);
  }

  return result;
}

uint64_t sub_10006429C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000642FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_100050270(a1, a2, a3 & 1);
}

uint64_t sub_100064338(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000070DC(a1, a2, a3 & 1);
}

unint64_t sub_100064374()
{
  result = qword_10008BEF0;
  if (!qword_10008BEF0)
  {
    sub_100007094(&qword_10008BEE8);
    sub_10006442C();
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BEF0);
  }

  return result;
}

unint64_t sub_10006442C()
{
  result = qword_10008BEF8;
  if (!qword_10008BEF8)
  {
    sub_100007094(&qword_10008BF00);
    sub_100011308(&qword_10008A020, &qword_10008A028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BEF8);
  }

  return result;
}

unint64_t sub_1000644E4()
{
  result = qword_10008BF50;
  if (!qword_10008BF50)
  {
    sub_100007094(&qword_10008BF40);
    sub_10006385C();
    sub_100011308(&qword_10008BDD8, &qword_10008BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BF50);
  }

  return result;
}

uint64_t sub_10006459C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000645F0()
{
  result = qword_10008BFC8;
  if (!qword_10008BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BFC8);
  }

  return result;
}

double sub_10006464C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

uint64_t sub_1000646B0()
{
  v0 = sub_10006BBAC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB9C();
  v4 = sub_10006BB8C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t type metadata accessor for WorldClockCity()
{
  result = qword_10008FC30;
  if (!qword_10008FC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000647FC(char a1)
{
  result = type metadata accessor for WorldClockCity();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_100064874()
{
  v1 = *(v0 + *(type metadata accessor for WorldClockCity() + 24));

  return v1;
}

uint64_t sub_1000648B4()
{
  v1 = *(v0 + *(type metadata accessor for WorldClockCity() + 28));

  return v1;
}

uint64_t sub_1000648F4()
{
  v1 = *(v0 + *(type metadata accessor for WorldClockCity() + 32));

  return v1;
}

uint64_t sub_100064934@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorldClockCity() + 36);
  v4 = sub_10006BB7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1000649B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorldClockCity() + 40);
  v4 = sub_10006BB7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100064A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorldClockCity() + 44);

  return sub_1000062E0(v3, a1);
}

uint64_t sub_100064A94(char a1)
{
  result = type metadata accessor for WorldClockCity();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_100064B30(char a1)
{
  result = type metadata accessor for WorldClockCity();
  *(v1 + *(result + 52)) = a1;
  return result;
}

BOOL sub_100064BD8()
{
  v1 = v0;
  v2 = sub_10006BB7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v36 - v6;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  if (*(v1 + *(type metadata accessor for WorldClockCity() + 48)))
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  sub_100026608(-2, v24);
  sub_100026608(-1, v21);
  v39 = v18;
  sub_100026608(1, v18);
  sub_100026608(2, v15);
  sub_100026608(-2, v12);
  v38 = v9;
  sub_100026608(-1, v9);
  v25 = v41;
  sub_100026608(1, v41);
  v26 = v40;
  sub_100026608(2, v40);
  if ((!sub_10006BB4C() || sub_10006BB4C() == -1) && sub_10006BB4C() == 1 || (!sub_10006BB4C() || sub_10006BB4C() == -1) && sub_10006BB4C() == 1 || (!sub_10006BB4C() || sub_10006BB4C() == -1) && sub_10006BB4C() == 1 || (!sub_10006BB4C() || sub_10006BB4C() == -1) && sub_10006BB4C() == 1)
  {
    v27 = *(v37 + 8);
    v28 = v25;
    v29 = v36;
    v27(v26, v36);
    v27(v28, v29);
    v27(v38, v29);
    v27(v12, v29);
    v27(v15, v29);
    v27(v39, v29);
    v27(v21, v29);
    v27(v24, v29);
    return 1;
  }

  if (!sub_10006BB4C() || sub_10006BB4C() == -1)
  {
    v33 = sub_10006BB4C();
    v34 = v36;
    v35 = *(v37 + 8);
    v35(v26, v36);
    v35(v41, v34);
    v35(v38, v34);
    v35(v12, v34);
    v35(v15, v34);
    v35(v39, v34);
    v35(v21, v34);
    v35(v24, v34);
    return v33 == 1;
  }

  else
  {
    v31 = v36;
    v32 = *(v37 + 8);
    v32(v26, v36);
    v32(v41, v31);
    v32(v38, v31);
    v32(v12, v31);
    v32(v15, v31);
    v32(v39, v31);
    v32(v21, v31);
    v32(v24, v31);
    return 0;
  }
}

uint64_t sub_1000651C8()
{
  v1 = sub_10006BCDC();
  v39 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10006BB7C();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v34 - v8;
  __chkstk_darwin(v10);
  v40 = v34 - v11;
  v12 = sub_100003500(&qword_100088BE0);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10006BD3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v42 = v34 - v20;
  v21 = type metadata accessor for WorldClockCity();
  if (*(v0 + *(v21 + 48)) == 1)
  {
    v43 = 11565;
    v44 = 0xE200000000000000;
LABEL_7:
    sub_10002B2FC();
    return sub_10006C5BC();
  }

  if (*(v0 + *(v21 + 52)) == 1)
  {
LABEL_6:
    v43 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_7;
  }

  sub_10006BCEC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100009204(v14, &qword_100088BE0);
    goto LABEL_6;
  }

  v36 = v0;
  (*(v16 + 32))(v42, v14, v15);
  sub_10006BB6C();
  v37 = sub_10006BCFC();
  v38 = v15;
  v23 = *(v4 + 8);
  v24 = v41;
  v23(v9, v41);
  sub_10006BD2C();
  sub_10006BB6C();
  v25 = sub_10006BCFC();
  v26 = v24;
  v27 = v38;
  v35 = v23;
  v23(v9, v26);
  v34[0] = *(v16 + 8);
  v34[1] = v16 + 8;
  (v34[0])(v18, v27);
  if (__OFSUB__(v37, v25))
  {
    __break(1u);
  }

  else
  {
    v28 = v40;
    sub_10006BAFC();
    sub_10006BCBC();
    sub_10006BC6C();
    v29 = *(v39 + 8);
    v29(v3, v1);
    sub_10006BCBC();
    sub_10006BC6C();
    v29(v3, v1);
    v25 = sub_10006BB4C();
    v30 = v6;
    v31 = v41;
    v32 = v35;
    v35(v30, v41);
    v32(v9, v31);
    if (v25 == -1 || !v25 || v25 == 1)
    {
      sub_10006C14C();
      v33 = sub_10006C59C();
      v32(v28, v31);
      (v34[0])(v42, v27);
      return v33;
    }
  }

  type metadata accessor for ComparisonResult();
  v43 = v25;
  result = sub_10006CDBC();
  __break(1u);
  return result;
}

uint64_t sub_1000657E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_100088BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  type metadata accessor for WorldClockCity();
  sub_10006BCEC();
  v5 = sub_10006BD3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_10006BD1C();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_100009204(v4, &qword_100088BE0);
  }

  return result;
}

void sub_100065940(char a1)
{
  v3 = sub_10006BB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100088BE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10006BD3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = type metadata accessor for WorldClockCity();
  if ((*(v1 + *(v17 + 48)) & 1) == 0 && (*(v1 + *(v17 + 52)) & 1) == 0)
  {
    sub_10006BCEC();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100009204(v9, &qword_100088BE0);
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      v25 = objc_opt_self();
      sub_10006BB6C();
      isa = sub_10006BB1C().super.isa;
      v18 = *(v4 + 8);
      v18(v6, v3);
      sub_10006BB6C();
      v27 = sub_10006BCFC();
      v18(v6, v3);
      sub_10006BD2C();
      sub_10006BB6C();
      v19 = sub_10006BCFC();
      v18(v6, v3);
      v20 = *(v11 + 8);
      v20(v13, v10);
      v21 = v27 - v19;
      if (__OFSUB__(v27, v19))
      {
        __break(1u);
      }

      else
      {
        v22 = isa;
        v23 = [v25 dayAndTimeZoneOffsetStringFromDate:isa withTimeZoneOffset:v21 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:0 hoursOnly:1 numericOnly:a1 & 1];

        if (v23)
        {
          sub_10006CB7C();

          v20(v16, v10);
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100065CC0()
{
  v0 = sub_10006BB7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_100088BE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10006BD3C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  type metadata accessor for WorldClockCity();
  sub_10006BCEC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100009204(v6, &qword_100088BE0);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  sub_10006BB6C();
  v15 = sub_10006BCFC();
  v16 = *(v1 + 8);
  v16(v3, v0);
  sub_10006BD2C();
  sub_10006BB6C();
  v17 = sub_10006BCFC();
  v16(v3, v0);
  v18 = *(v8 + 8);
  v18(v10, v7);
  result = (v18)(v13, v7);
  v19 = v15 - v17;
  if (__OFSUB__(v15, v17))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v19 < 0)
  {
    v20 = __OFSUB__(0, v19);
    v19 = v17 - v15;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  return v19 < 3600;
}

BOOL sub_100065F94()
{
  sub_100065940(1);
  v0 = sub_10006CBAC();

  return v0 > 0;
}

uint64_t sub_100065FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006BB7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB6C();
  v6 = *(v3 + 16);
  v6(a1, v5, v2);
  v7 = type metadata accessor for WorldClockCity();
  v6(a1 + v7[9], v5, v2);
  v6(a1 + v7[10], v5, v2);
  v8 = v7[11];
  (*(v3 + 32))(a1 + v8, v5, v2);
  result = (*(v3 + 56))(a1 + v8, 0, 1, v2);
  *(a1 + v7[5]) = 0;
  v10 = (a1 + v7[6]);
  *v10 = 11565;
  v10[1] = 0xE200000000000000;
  v11 = (a1 + v7[7]);
  *v11 = 11565;
  v11[1] = 0xE200000000000000;
  v12 = (a1 + v7[8]);
  *v12 = 11565;
  v12[1] = 0xE200000000000000;
  *(a1 + v7[12]) = 1;
  *(a1 + v7[13]) = 0;
  return result;
}

uint64_t sub_100066180@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  v20 = sub_10006BB7C();
  v21 = *(*(v20 - 8) + 32);
  v21(a9, a1, v20);
  v22 = type metadata accessor for WorldClockCity();
  *(a9 + v22[5]) = a2;
  v23 = (a9 + v22[6]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + v22[7]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + v22[8]);
  *v25 = a7;
  v25[1] = a8;
  v21(a9 + v22[9], a10, v20);
  v21(a9 + v22[10], a11, v20);
  result = sub_100003490(a12, a9 + v22[11]);
  *(a9 + v22[12]) = a13;
  *(a9 + v22[13]) = a14;
  return result;
}

uint64_t sub_1000662E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_1000887E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_10006BB7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = objc_opt_self();
  v16 = &AlarmDataProvider;
  v17 = [v15 widgetOverrideDate];
  if (v17)
  {
    v18 = v17;
    sub_10006BB3C();

    v19 = *(v9 + 32);
    v19(v7, v11, v8);
    v20 = *(v9 + 56);
    v20(v7, 0, 1, v8);
    v19(v14, v7, v8);
    v16 = &AlarmDataProvider;
  }

  else
  {
    v20 = *(v9 + 56);
    v20(v7, 1, 1, v8);
    sub_10006BB6C();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_100009204(v7, &qword_1000887E8);
    }
  }

  v21 = [v15 v16[23].weak_ivar_lyt];
  if (v21)
  {
    sub_10006BB3C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v20(v4, v22, 1, v8);
  sub_100009204(v4, &qword_1000887E8);
  v23 = *(v9 + 16);
  v23(a1, v14, v8);
  v24 = type metadata accessor for WorldClockCity();
  v23(a1 + v24[9], v14, v8);
  v23(a1 + v24[10], v14, v8);
  v25 = v24[11];
  (*(v9 + 32))(a1 + v25, v14, v8);
  result = (v20)(a1 + v25, 0, 1, v8);
  *(a1 + v24[5]) = v21 != 0;
  v27 = (a1 + v24[6]);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (a1 + v24[7]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (a1 + v24[8]);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(a1 + v24[12]) = 0;
  *(a1 + v24[13]) = 1;
  return result;
}

uint64_t sub_100066694()
{
  v1 = sub_100003500(&qword_1000887E8);
  __chkstk_darwin(v1);
  v3 = v10 - v2;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_10006CD2C(148);
  v11._countAndFlagsBits = 0xD000000000000021;
  v11._object = 0x800000010006E950;
  sub_10006CBBC(v11);
  v4 = type metadata accessor for WorldClockCity();
  sub_10006CBBC(*(v0 + v4[6]));
  v12._object = 0x800000010006E980;
  v12._countAndFlagsBits = 0xD000000000000010;
  sub_10006CBBC(v12);
  sub_10006CBBC(*(v0 + v4[7]));
  v13._countAndFlagsBits = 0x6F7A656D6974202CLL;
  v13._object = 0xEB000000003A656ELL;
  sub_10006CBBC(v13);
  sub_10006CBBC(*(v0 + v4[8]));
  v14._countAndFlagsBits = 0x7369726E7573202CLL;
  v14._object = 0xEF203A6574614465;
  sub_10006CBBC(v14);
  sub_10006BB7C();
  sub_1000675E8(&qword_100088800, &type metadata accessor for Date);
  v15._countAndFlagsBits = sub_10006CD9C();
  sub_10006CBBC(v15);

  v16._countAndFlagsBits = 0x7465736E7573202CLL;
  v16._object = 0xEE00203A65746144;
  sub_10006CBBC(v16);
  v17._countAndFlagsBits = sub_10006CD9C();
  sub_10006CBBC(v17);

  v18._countAndFlagsBits = 0x694D7478656E202CLL;
  v18._object = 0xEF3A746867696E64;
  sub_10006CBBC(v18);
  sub_1000062E0(v0 + v4[11], v3);
  v19._countAndFlagsBits = sub_10006CB8C();
  sub_10006CBBC(v19);

  v20._countAndFlagsBits = 0xD000000000000011;
  v20._object = 0x800000010006E9A0;
  sub_10006CBBC(v20);
  if (*(v0 + v4[12]))
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v4[12]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10006CBBC(v5);

  v21._countAndFlagsBits = 0x6E616C427369202CLL;
  v21._object = 0xEB00000000203A6BLL;
  sub_10006CBBC(v21);
  if (*(v0 + v4[13]))
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v4[13]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_10006CBBC(v7);

  return v10[0];
}

void sub_1000669B4()
{
  v1 = sub_10006BB7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_1000887E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_1000675E8(&qword_10008C020, &type metadata accessor for Date);
  sub_10006CB1C();
  v8 = type metadata accessor for WorldClockCity();
  sub_10006CDEC(*(v0 + v8[5]));
  sub_10006CB9C();
  sub_10006CB9C();
  sub_10006CB9C();
  sub_10006CB1C();
  sub_10006CB1C();
  sub_1000062E0(v0 + v8[11], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_10006CDEC(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_10006CDEC(1u);
    sub_10006CB1C();
    (*(v2 + 8))(v4, v1);
  }

  sub_10006CDEC(*(v0 + v8[12]));
  sub_10006CDEC(*(v0 + v8[13]));
}

Swift::Int sub_100066C4C()
{
  sub_10006CDCC();
  sub_1000669B4();
  return sub_10006CDFC();
}

uint64_t sub_100066C8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10006BBAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB9C();
  v6 = sub_10006BB8C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

Swift::Int sub_100066D6C()
{
  sub_10006CDCC();
  sub_1000669B4();
  return sub_10006CDFC();
}

void *sub_100066DC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_10008C0D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10008C0D0);
    }
  }
}

uint64_t sub_100066E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006BB7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003500(&qword_1000887E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_100003500(&qword_10008C0D8);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  if ((sub_10006BB2C() & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = type metadata accessor for WorldClockCity();
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    goto LABEL_3;
  }

  v17 = v14;
  v18 = *(v14 + 24);
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_10006CDAC() & 1) == 0)
  {
    goto LABEL_3;
  }

  v23 = v17[7];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (sub_10006CDAC() & 1) == 0)
  {
    goto LABEL_3;
  }

  v27 = v17[8];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (sub_10006CDAC() & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((sub_10006BB2C() & 1) == 0 || (sub_10006BB2C() & 1) == 0)
  {
    goto LABEL_3;
  }

  v31 = v17[11];
  v32 = *(v11 + 48);
  sub_1000062E0(a1 + v31, v13);
  v37 = v32;
  sub_1000062E0(a2 + v31, &v13[v32]);
  v33 = *(v5 + 48);
  if (v33(v13, 1, v4) != 1)
  {
    sub_1000062E0(v13, v10);
    if (v33(&v13[v37], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v37], v4);
      sub_1000675E8(&qword_10008C0E0, &type metadata accessor for Date);
      v34 = sub_10006CB3C();
      v35 = *(v5 + 8);
      v35(v7, v4);
      v35(v10, v4);
      sub_100009204(v13, &qword_1000887E8);
      if ((v34 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_25;
    }

    (*(v5 + 8))(v10, v4);
LABEL_23:
    sub_100009204(v13, &qword_10008C0D8);
    goto LABEL_3;
  }

  if (v33(&v13[v37], 1, v4) != 1)
  {
    goto LABEL_23;
  }

  sub_100009204(v13, &qword_1000887E8);
LABEL_25:
  if (*(a1 + v17[12]) == *(a2 + v17[12]))
  {
    v15 = *(a1 + v17[13]) ^ *(a2 + v17[13]) ^ 1;
    return v15 & 1;
  }

LABEL_3:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1000672BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BB7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100003500(&qword_1000887E8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100067404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10006BB7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100003500(&qword_1000887E8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100067538()
{
  sub_10006BB7C();
  if (v0 <= 0x3F)
  {
    sub_100006774();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000675E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006763C()
{
  swift_getKeyPath();
  sub_100067774();
  sub_10006BD5C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1000676C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100067774();
  sub_10006BD5C();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

unint64_t sub_100067774()
{
  result = qword_100089220;
  if (!qword_100089220)
  {
    type metadata accessor for ClockWidgetEnvironmentObject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089220);
  }

  return result;
}

uint64_t type metadata accessor for ClockWidgetEnvironmentObject()
{
  result = qword_10008FD50;
  if (!qword_10008FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100067818(char a1)
{
  swift_beginAccess();
  sub_100010D34();
  result = sub_10006CB3C();
  if (result)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100067774();
    sub_10006BD4C();
  }

  return result;
}

uint64_t sub_100067988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_100067A68(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16WorldClockWidget28ClockWidgetEnvironmentObject___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100067774();
  sub_10006BD5C();

  *v4 = v1;
  swift_getKeyPath();
  sub_10006BD7C();

  swift_beginAccess();
  return sub_100067B78;
}

void sub_100067B78(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_10006BD6C();

  free(v1);
}

uint64_t sub_100067C04(char a1)
{
  v2 = swift_allocObject();
  sub_10006BD8C();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_100067C50(char a1)
{
  sub_10006BD8C();
  *(v1 + 16) = a1;
  return v1;
}

BOOL sub_100067C8C()
{
  swift_getKeyPath();
  sub_100067774();
  sub_10006BD5C();

  swift_beginAccess();
  return (*(v0 + 16) & 0xFB) == 0;
}

BOOL sub_100067D1C()
{
  swift_getKeyPath();
  sub_100067774();
  sub_10006BD5C();

  swift_beginAccess();
  return *(v0 + 16) == 0;
}

uint64_t sub_100067DA8()
{
  v1 = OBJC_IVAR____TtC16WorldClockWidget28ClockWidgetEnvironmentObject___observationRegistrar;
  v2 = sub_10006BD9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100067E08()
{
  v1 = OBJC_IVAR____TtC16WorldClockWidget28ClockWidgetEnvironmentObject___observationRegistrar;
  v2 = sub_10006BD9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100067EAC()
{
  result = sub_10006BD9C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100067F48()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10008FD68 = result;
  return result;
}

uint64_t sub_100067F9C()
{
  v0 = sub_10006BDBC();
  sub_1000263C4(v0, qword_100090058);
  sub_100022560(v0, qword_100090058);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDAC();
}

uint64_t sub_1000680B4()
{
  v0 = sub_10006BDBC();
  sub_1000263C4(v0, qword_100090070);
  sub_100022560(v0, qword_100090070);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDAC();
}

uint64_t sub_1000681CC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090088);
  sub_100022560(v0, qword_100090088);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000682E4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000900A0);
  sub_100022560(v0, qword_1000900A0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000683FC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000900B8);
  sub_100022560(v0, qword_1000900B8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068514()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000900D0);
  sub_100022560(v0, qword_1000900D0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068754()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090118);
  sub_100022560(v0, qword_100090118);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006886C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090130);
  sub_100022560(v0, qword_100090130);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068984()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090148);
  sub_100022560(v0, qword_100090148);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068A9C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090160);
  sub_100022560(v0, qword_100090160);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068BB4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090178);
  sub_100022560(v0, qword_100090178);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068CCC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090190);
  sub_100022560(v0, qword_100090190);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068DE4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000901A8);
  sub_100022560(v0, qword_1000901A8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100068EFC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000901C0);
  sub_100022560(v0, qword_1000901C0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069014()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000901D8);
  sub_100022560(v0, qword_1000901D8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006912C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000901F0);
  sub_100022560(v0, qword_1000901F0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069244()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090208);
  sub_100022560(v0, qword_100090208);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006935C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090220);
  sub_100022560(v0, qword_100090220);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069474()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090238);
  sub_100022560(v0, qword_100090238);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006958C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090250);
  sub_100022560(v0, qword_100090250);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000696A4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090268);
  sub_100022560(v0, qword_100090268);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000697BC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090280);
  sub_100022560(v0, qword_100090280);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000698D4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090298);
  sub_100022560(v0, qword_100090298);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_1000699EC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000902B0);
  sub_100022560(v0, qword_1000902B0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069B04()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000902C8);
  sub_100022560(v0, qword_1000902C8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069C1C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000902E0);
  sub_100022560(v0, qword_1000902E0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069D34()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000902F8);
  sub_100022560(v0, qword_1000902F8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069E4C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090310);
  sub_100022560(v0, qword_100090310);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_100069F64()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090328);
  sub_100022560(v0, qword_100090328);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A07C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090340);
  sub_100022560(v0, qword_100090340);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A194()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090358);
  sub_100022560(v0, qword_100090358);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A2AC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090370);
  sub_100022560(v0, qword_100090370);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A3C4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090388);
  sub_100022560(v0, qword_100090388);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A4DC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000903A0);
  sub_100022560(v0, qword_1000903A0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A5F4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000903B8);
  sub_100022560(v0, qword_1000903B8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A70C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000903D0);
  sub_100022560(v0, qword_1000903D0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A824()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000903E8);
  sub_100022560(v0, qword_1000903E8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006A93C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090400);
  sub_100022560(v0, qword_100090400);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AA54()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090418);
  sub_100022560(v0, qword_100090418);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AB6C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090430);
  sub_100022560(v0, qword_100090430);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AC84()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090448);
  sub_100022560(v0, qword_100090448);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AD9C()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090460);
  sub_100022560(v0, qword_100090460);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AEB4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090478);
  sub_100022560(v0, qword_100090478);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006AFCC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_100090490);
  sub_100022560(v0, qword_100090490);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006B0E4()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000904A8);
  sub_100022560(v0, qword_1000904A8);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006B1FC()
{
  v0 = sub_10006BDDC();
  sub_1000263C4(v0, qword_1000904C0);
  sub_100022560(v0, qword_1000904C0);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v1 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006B330(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10006BDDC();
  sub_1000263C4(v3, a2);
  sub_100022560(v3, a2);
  if (qword_10008FD60 != -1)
  {
    swift_once();
  }

  v4 = qword_10008FD68;
  return sub_10006BDCC();
}

uint64_t sub_10006B40C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100022560(v4, a3);
}

uint64_t sub_10006B4A4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100022560(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}