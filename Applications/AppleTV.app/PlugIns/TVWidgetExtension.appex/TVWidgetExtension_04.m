uint64_t sub_100075150@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v42 = sub_1000D1DBC();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001256E8);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v41 = &v39 - v6;
  v45 = sub_100006334(&qword_1001256F0) - 8;
  __chkstk_darwin(v45);
  v44 = &v39 - v7;
  v46 = sub_100006334(&qword_1001256F8) - 8;
  __chkstk_darwin(v46);
  v39 = &v39 - v8;
  v50 = sub_100006334(&qword_100125700);
  __chkstk_darwin(v50);
  v49 = &v39 - v9;
  v10 = type metadata accessor for SportsWidgetPlayByPlayView();
  v11 = v1 + *(v10 + 20);
  v12 = *(v11 + 8);
  *&v52 = *v11;
  *(&v52 + 1) = v12;
  sub_10000F320();

  v13 = sub_1000D260C();
  v15 = v14;
  LOBYTE(v12) = v16;
  v18 = v17;
  v19 = *(v11 + 48);
  v40 = ~v19;
  v20 = (v19 & 1) == 0;
  KeyPath = swift_getKeyPath();
  *&v52 = v13;
  *(&v52 + 1) = v15;
  LOBYTE(v53) = v12 & 1;
  *(&v53 + 1) = v18;
  *&v54 = KeyPath;
  BYTE8(v54) = v20;
  sub_1000B2124(v4);
  (*(v43 + 8))(v4, v42);
  sub_100006334(&qword_100125708);
  sub_100075FAC();
  v22 = v41;
  sub_1000D27BC();
  v23 = v13;
  v24 = v39;
  sub_10000F374(v23, v15, v12 & 1);

  v25 = v2 + *(v10 + 24);
  v26 = *(v25 + *(type metadata accessor for SportsWidgetPlayByPlayLayout() + 28));
  v27 = swift_getKeyPath();
  v28 = v44;
  (*(v47 + 32))(v44, v22, v48);
  v29 = (v28 + *(v45 + 44));
  *v29 = v27;
  v29[1] = v26;

  v30 = sub_1000D23CC();
  v31 = swift_getKeyPath();
  sub_10000F998(v28, v24, &qword_1001256F0);
  v32 = (v24 + *(v46 + 44));
  *v32 = v31;
  v32[1] = v30;
  if (v40)
  {
    sub_1000D2B5C();
  }

  else
  {
    sub_1000D2B6C();
  }

  sub_1000D1E2C();
  v33 = v49;
  sub_10000F998(v24, v49, &qword_1001256F8);
  v34 = (v33 + *(v50 + 36));
  v35 = v57;
  v34[4] = v56;
  v34[5] = v35;
  v34[6] = v58;
  v36 = v53;
  *v34 = v52;
  v34[1] = v36;
  v37 = v55;
  v34[2] = v54;
  v34[3] = v37;
  sub_100076074();
  sub_1000D262C();
  return sub_10000F938(v33, &qword_100125700);
}

uint64_t sub_1000756E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v33 = sub_1000D1DBC();
  v6 = *(v33 - 8);
  v7 = __chkstk_darwin(v33);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = a1 + *(type metadata accessor for SportsWidgetPlayByPlayView() + 24);
  v13 = type metadata accessor for SportsWidgetPlayByPlayLayout();
  v14 = *(v12 + v13[10]);
  v15 = *(v12 + v13[14]);
  sub_1000B2124(v11);
  LOBYTE(a1) = sub_1000D1D9C();
  v16 = *(v6 + 8);
  v17 = v11;
  v18 = v33;
  v16(v17, v33);
  v19 = 8.0;
  if (a1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 8.0;
  }

  sub_1000B2124(v9);
  v21 = sub_1000D1D9C();
  v16(v9, v18);
  if (v21)
  {
    v19 = 0.0;
  }

  v22 = *(v12 + v13[12]);
  sub_1000D1BEC();

  v23 = sub_1000D2B5C();
  *&v41 = v14;
  v24 = v34;
  BYTE8(v41) = v34;
  *(&v41 + 9) = v64[0];
  HIDWORD(v41) = *(v64 + 3);
  *&v42 = v15;
  *(&v42 + 1) = v19;
  v43 = v38;
  v44 = v39;
  v25 = v40;
  *&v45 = v40;
  *(&v45 + 1) = v22;
  LOWORD(v46) = 256;
  WORD3(v46) = v63;
  *(&v46 + 2) = v62;
  *(&v46 + 1) = v23;
  v47 = v26;
  *&v37[38] = v38;
  *&v37[22] = v42;
  *&v37[6] = v41;
  *&v37[102] = v26;
  *&v37[86] = v46;
  *&v37[70] = v45;
  *&v37[54] = v39;
  *a4 = v14;
  *(a4 + 8) = v24;
  *(a4 + 16) = v15;
  *(a4 + 24) = v20;
  *(a4 + 32) = v35;
  *(a4 + 40) = 256;
  v27 = *v37;
  v28 = *&v37[16];
  v29 = *&v37[48];
  *(a4 + 74) = *&v37[32];
  *(a4 + 58) = v28;
  *(a4 + 42) = v27;
  v30 = *&v37[64];
  v31 = *&v37[80];
  *(a4 + 136) = *&v37[94];
  *(a4 + 122) = v31;
  *(a4 + 106) = v30;
  *(a4 + 90) = v29;
  v48 = v14;
  v49 = v24;
  *&v50[3] = *(v64 + 3);
  *v50 = v64[0];
  v51 = v15;
  v52 = v19;
  v53 = v38;
  v54 = v39;
  v55 = v25;
  v56 = v22;
  v57 = 256;
  v59 = v63;
  v58 = v62;
  v60 = v23;
  v61 = v26;

  sub_10000F8D0(&v41, &v36, &qword_1001256E0);
  sub_10000F938(&v48, &qword_1001256E0);
}

double sub_100075A74@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v16 = sub_1000D217C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Width = a7;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!a1)
  {
LABEL_5:
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    Width = CGRectGetWidth(v33);
  }

LABEL_6:
  v29 = Width;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    goto LABEL_12;
  }

  v28 = a8;
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetHeight(v34);
  if (a1 >= 3u)
  {
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    v28 = CGRectGetMaxX(v38) - a7 - v28;
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    CGRectGetMinY(v39);
    goto LABEL_17;
  }

  a8 = v28;
LABEL_12:
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  v28 = CGRectGetMinX(v35) + a8;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  if (a1 != 2)
  {
    CGRectGetMinY(*&v21);
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_17:
    v40.origin.x = a3;
    v40.origin.y = a4;
    v40.size.width = a5;
    v40.size.height = a6;
    CGRectGetHeight(v40);
    goto LABEL_18;
  }

  CGRectGetMaxY(*&v21);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetWidth(v36);
LABEL_15:
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetWidth(v37);
LABEL_18:
  (*(v17 + 104))(v19, enum case for RoundedCornerStyle.continuous(_:), v16);
  sub_1000D24EC();
  result = *&v30;
  v26 = v31;
  *a2 = v30;
  *(a2 + 16) = v26;
  *(a2 + 32) = v32;
  return result;
}

double sub_100075D48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100075A74(*(v5 + 8), v9, a2, a3, a4, a5, *v5, *(v5 + 16));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_100075D98(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D1B7C();
  return sub_10001B4F4;
}

uint64_t sub_100075E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076580();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100075E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076580();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100075EE8(uint64_t a1)
{
  v2 = sub_100076580();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100075F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_1001256C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100075FAC()
{
  result = qword_100125710;
  if (!qword_100125710)
  {
    sub_10000637C(&qword_100125708);
    sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125710);
  }

  return result;
}

unint64_t sub_100076074()
{
  result = qword_100125718;
  if (!qword_100125718)
  {
    sub_10000637C(&qword_100125700);
    sub_100076100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125718);
  }

  return result;
}

unint64_t sub_100076100()
{
  result = qword_100125720;
  if (!qword_100125720)
  {
    sub_10000637C(&qword_1001256F8);
    sub_1000761B8();
    sub_10000FC38(&qword_100124A00, &qword_100124A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125720);
  }

  return result;
}

unint64_t sub_1000761B8()
{
  result = qword_100125728;
  if (!qword_100125728)
  {
    sub_10000637C(&qword_1001256F0);
    sub_10000637C(&qword_100125708);
    sub_100075FAC();
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001251C0, &qword_1001251A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125728);
  }

  return result;
}

uint64_t sub_1000762AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000762F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100076348()
{
  result = qword_100125730;
  if (!qword_100125730)
  {
    sub_10000637C(&qword_100125690);
    sub_1000763D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125730);
  }

  return result;
}

unint64_t sub_1000763D4()
{
  result = qword_100125738;
  if (!qword_100125738)
  {
    sub_10000637C(&qword_100125680);
    sub_10000FC38(&qword_100125740, &qword_100125748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125738);
  }

  return result;
}

unint64_t sub_1000764D4()
{
  result = qword_100125760;
  if (!qword_100125760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125760);
  }

  return result;
}

unint64_t sub_10007652C()
{
  result = qword_100125768;
  if (!qword_100125768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125768);
  }

  return result;
}

unint64_t sub_100076580()
{
  result = qword_100125770;
  if (!qword_100125770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125770);
  }

  return result;
}

id sub_1000765D4()
{
  result = [objc_allocWithZone(type metadata accessor for TVWidgetCache()) init];
  qword_10013C318 = result;
  return result;
}

id sub_1000766DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWidgetCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVWidgetCache()
{
  result = qword_1001257B0;
  if (!qword_1001257B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000767C8()
{
  sub_1000768CC(319, &qword_1001257C0, type metadata accessor for TVWidgetEntry);
  if (v0 <= 0x3F)
  {
    sub_1000768CC(319, &qword_100122F10, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000768CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000D385C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100076920()
{
  v1 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_1000D19FC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - v10;
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
  swift_beginAccess();
  sub_10000F8D0(v0 + v14, v3, &qword_100122E90);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000F938(v3, &qword_100122E90);
  }

  else
  {
    (*(v5 + 32))(v13, v3, v4);
    sub_1000D19EC();
    sub_1000D19DC();
    v15 = sub_1000D199C();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v11, v4);
    if (v15)
    {
      result = sub_100002C80();
      if (result)
      {
        v18 = result;
        sub_1000D37AC();
        sub_1000D1B2C();

        v16(v13, v4);
        return 1;
      }

      goto LABEL_11;
    }

    v16(v13, v4);
  }

  result = sub_100002C80();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  sub_1000D37AC();
  sub_1000D1B2C();

  sub_1000770E0();
  return 0;
}

void sub_100076C3C(uint64_t a1)
{
  v3 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_100006334(&qword_1001257C8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for TVWidgetEntry();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(a1, 1, v12);
  v15 = sub_100002C80();
  v27 = v15;
  if (v14 == 1)
  {
    if (v15)
    {
      sub_1000D37AC();
      sub_1000D1B2C();
      v16 = v27;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v25 = v5;
  v26 = v1;
  if (!v15)
  {
    goto LABEL_12;
  }

  sub_1000D37AC();
  sub_1000D1B2C();

  sub_10000F8D0(a1, v11, &qword_1001257C8);
  v17 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
  v18 = v26;
  swift_beginAccess();
  sub_10007701C(v11, v18 + v17, &qword_1001257C8);
  swift_endAccess();
  sub_10000F8D0(a1, v9, &qword_1001257C8);
  if (v13(v9, 1, v12) == 1)
  {
    sub_10000F938(v9, &qword_1001257C8);
    v19 = sub_1000D19FC();
    v20 = v25;
    (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  }

  else
  {
    v21 = sub_1000D19FC();
    v22 = *(v21 - 8);
    v20 = v25;
    (*(v22 + 16))(v25, v9, v21);
    sub_100077084(v9);
    (*(v22 + 56))(v20, 0, 1, v21);
  }

  v23 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
  v24 = v26;
  swift_beginAccess();
  sub_10007701C(v20, v24 + v23, &qword_100122E90);
  swift_endAccess();
}

uint64_t sub_10007701C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006334(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100077084(uint64_t a1)
{
  v2 = type metadata accessor for TVWidgetEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000770E0()
{
  v1 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100006334(&qword_1001257C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  result = sub_100002C80();
  if (result)
  {
    v8 = result;
    sub_1000D37AC();
    sub_1000D1B2C();

    v9 = type metadata accessor for TVWidgetEntry();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
    swift_beginAccess();
    sub_10007701C(v6, v0 + v10, &qword_1001257C8);
    swift_endAccess();
    v11 = sub_1000D19FC();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
    swift_beginAccess();
    sub_10007701C(v3, v0 + v12, &qword_100122E90);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000772F0()
{
  v1 = sub_1000D329C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  sub_100098FF4(v4);
  v6 = v5;
  sub_1000D325C();
  v7 = sub_1000D326C();
  v8 = *(v2 + 8);
  v8(v4, v1);
  sub_1000D325C();
  v9 = sub_1000D326C();
  v8(v4, v1);
  if (v9)
  {
    sub_1000D2B6C();
  }

  else
  {
    sub_1000D2B7C();
  }

  sub_1000D2B6C();
  sub_1000D2B2C();
  sub_1000D325C();
  v10 = sub_1000D326C();
  v8(v4, v1);
  if (v10)
  {
    sub_1000D2B6C();
  }

  else
  {
    sub_1000D2B7C();
  }

  v11 = 4.0;
  if (v7)
  {
    v11 = -4.0;
  }

  v12 = v6 - v11;
  sub_1000D2B7C();
  sub_1000D2B2C();
  return v12;
}

uint64_t sub_100077538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D329C();
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

uint64_t sub_10007760C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D329C();
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

uint64_t type metadata accessor for TVWidgetHeaderViewLayout()
{
  result = qword_100125828;
  if (!qword_100125828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100077714()
{
  result = sub_1000D329C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000777AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D19FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100077888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D19FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TVWidgetEntry()
{
  result = qword_1001258C0;
  if (!qword_1001258C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007798C()
{
  sub_1000D19FC();
  if (v0 <= 0x3F)
  {
    sub_100077A28();
    if (v1 <= 0x3F)
    {
      sub_100077A8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100077A28()
{
  if (!qword_1001258D0)
  {
    sub_10000637C(&qword_1001258D8);
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_1001258D0);
    }
  }
}

void sub_100077A8C()
{
  if (!qword_1001258E0)
  {
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_1001258E0);
    }
  }
}

uint64_t sub_100077B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for TVWidgetEntry() + 20));
  if (!v3)
  {
    goto LABEL_19;
  }

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1000D397C();
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  v5 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_1000D38FC();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *(v6 + 74);
    if (v8 == 2 || (v8 & 1) == 0)
    {
    }

    else
    {
      sub_1000D391C();
      sub_1000D393C();
      sub_1000D394C();
      sub_1000D392C();
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_16;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v3 + 8 * v5 + 32);

  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_1000D397C();
  }

LABEL_19:
  sub_1000D33DC();
  v9 = sub_1000D33FC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_100077D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D19FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_100077DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a4;
  v26 = a2;
  v27 = a3;
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1000D344C();
  sub_10007C940(&qword_100125998, &type metadata accessor for WidgetFamily);
  v16 = sub_1000D39BC();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  sub_1000D19EC();
  result = sub_100002C80();
  if (result)
  {
    v20 = result;
    sub_100006334(&qword_100122C50);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000E0440;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100018744();
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;

    sub_1000D37AC();
    sub_1000D1B2C();

    (*(v6 + 16))(v9, v11, v5);
    v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    *(v23 + 24) = v18;
    (*(v6 + 32))(v23 + v22, v9, v5);
    v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    v25 = v27;
    *v24 = v26;
    v24[1] = v25;

    sub_1000782B4(v28, sub_10007CC28, v23, v29);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000780DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v19 = a6;
  v9 = sub_1000D19FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100002C80();
  if (result)
  {
    v14 = result;
    sub_100006334(&qword_100122C50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000E2080;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100018744();
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;

    sub_1000D19EC();
    sub_1000D196C();
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    *(v15 + 96) = &type metadata for Double;
    *(v15 + 104) = &protocol witness table for Double;
    *(v15 + 72) = v17;
    sub_1000D37AC();
    sub_1000D1B2C();

    return v19(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000782B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a2;
  v70 = a1;
  *&v68 = sub_1000D346C();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D2C2C();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D2C4C();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006334(&qword_1001257C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for TVWidgetEntry();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v64 = a4;
  sub_100079554(v15);
  v23 = (*(v17 + 48))(v15, 1, v16);
  v65 = a3;
  if (v23 == 1)
  {
    sub_10000F938(v15, &qword_1001257C8);
  }

  else
  {
    sub_10007C724(v15, v22);
    sub_10007CB04(0, &qword_100124668);
    v59 = sub_1000D37DC();
    sub_10007C788(v22, v20);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v69;
    *(v25 + 24) = a3;
    sub_10007C724(v20, v25 + v24);
    v75 = sub_10007C8DC;
    v76 = v25;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100079E60;
    v74 = &unk_10011B988;
    v26 = _Block_copy(&aBlock);

    sub_1000D2C3C();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10007C940(&qword_100124670, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006334(&qword_100124678);
    sub_10000FC38(&qword_100124680, &qword_100124678);
    v27 = v63;
    sub_1000D38AC();
    v28 = v59;
    sub_1000D37EC();
    _Block_release(v26);

    (*(v62 + 8))(v9, v27);
    (*(v60 + 8))(v12, v61);
    sub_100077084(v22);
  }

  v29 = v67;
  (*(v66 + 16))(v67, v70, v68);
  v30 = objc_allocWithZone(type metadata accessor for TVWidgetFetchOperation());
  v31 = sub_10009973C(v29);
  result = sub_100002C80();
  if (!result)
  {
    goto LABEL_18;
  }

  v33 = result;
  sub_100006334(&qword_100122C50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000E0440;
  v35 = v65;
  v36 = v69;
  if (*&v31[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
  {
    v37 = *&v31[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v38 = *&v31[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  }

  else
  {
    v68 = xmmword_1000E0440;
    sub_10007CB04(0, &qword_100122C58);
    v39 = v31;
    v40 = sub_1000D381C();
    v41 = swift_allocObject();
    *(v41 + 16) = v68;
    *(v41 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v41 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v41 + 32) = v39;
    v42 = v39;
    v43 = sub_1000D382C();

    v37 = sub_1000D360C();
    v38 = v44;
  }

  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100018744();
  *(v34 + 32) = v37;
  *(v34 + 40) = v38;

  sub_1000D37AC();
  sub_1000D1B2C();

  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v31;
  v47 = v64;
  v46[4] = v64;
  v46[5] = v36;
  v46[6] = v35;
  v75 = sub_10007C6CC;
  v76 = v46;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_100079E60;
  v74 = &unk_10011B938;
  v48 = _Block_copy(&aBlock);
  v49 = v31;

  v50 = v49;

  v51 = v47;
  sub_10007C714(sub_10007C6CC);

  [v50 setCompletionBlock:v48];
  _Block_release(v48);

  if (sub_1000D345C())
  {
    result = sub_1000D320C();
  }

  else
  {
    result = sub_1000D321C();
  }

  v53 = (v52 + -3.0) * 1000.0;
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v53 > -9.22337204e18)
  {
    if (v53 < 9.22337204e18)
    {
      v54 = v53;
      v55 = swift_allocObject();
      v55[2] = v45;
      v55[3] = v50;
      v55[4] = v51;
      v55[5] = v36;
      v55[6] = v35;

      v56 = v50;

      v57 = v51;
      sub_1000B68E8(v56, v54, sub_10007C6E4, v55);
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_100078B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a4;
  v28 = a2;
  v29 = a3;
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_1000D323C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1000D344C();
  sub_10007C940(&qword_100125998, &type metadata accessor for WidgetFamily);
  v16 = sub_1000D39BC();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  sub_1000D19EC();
  result = sub_100002C80();
  if (result)
  {
    v20 = result;
    sub_100006334(&qword_100122C50);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000E0440;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100018744();
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;

    sub_1000D37AC();
    sub_1000D1B2C();

    (*(v6 + 16))(v9, v11, v5);
    v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v6 + 32))(v24 + v22, v9, v5);
    v25 = (v24 + v23);
    *v25 = v16;
    v25[1] = v18;
    v26 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
    v27 = v29;
    *v26 = v28;
    v26[1] = v27;

    sub_1000782B4(v30, sub_10007C5F8, v24, v31);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100078EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v51 = a4;
  v52 = a5;
  v8 = sub_1000D33BC();
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_1001259A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v50 - v13;
  v14 = sub_1000D33FC();
  v64 = *(v14 - 8);
  v65 = v14;
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000D19FC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = *(v18 + 16);
  v54 = &v50 - v23;
  v22();
  sub_1000D19EC();
  sub_1000D196C();
  v25 = v24;
  v26 = *(v18 + 8);
  v55 = v18 + 8;
  v56 = v17;
  v53 = v26;
  v26(v21, v17);
  v27 = type metadata accessor for TVWidgetEntry();
  v28 = *(v27 + 20);
  v58 = a1;
  v59 = v12;
  v29 = *(a1 + v28);
  v60 = v10;
  v61 = v11;
  v50 = v27;
  if (!v29)
  {
    goto LABEL_19;
  }

  if (v29 >> 62)
  {
LABEL_22:
    v30 = sub_1000D397C();
    if (!v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_19;
    }
  }

  v31 = 0;
  v66 = &_swiftEmptyArrayStorage;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v32 = sub_1000D38FC();
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v34 = *(v32 + 74);
    if (v34 == 2 || (v34 & 1) == 0)
    {
    }

    else
    {
      sub_1000D391C();
      sub_1000D393C();
      sub_1000D394C();
      sub_1000D392C();
    }

    ++v31;
    if (v33 == v30)
    {
      goto LABEL_16;
    }
  }

  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v32 = *(v29 + 8 * v31 + 32);

  v33 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  if ((v66 & 0x8000000000000000) != 0 || (v66 & 0x4000000000000000) != 0)
  {
    sub_1000D397C();
  }

LABEL_19:
  sub_1000D33DC();
  sub_1000D33EC();
  v36 = v35;
  (*(v64 + 8))(v16, v65);
  sub_10007CB04(0, &qword_1001244F0);
  v37 = sub_1000D383C();
  sub_1000D37AC();
  sub_1000D1B2C();

  result = sub_100002C80();
  if (result)
  {
    v39 = result;
    sub_100006334(&qword_100122C50);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1000E5A50;
    *(v40 + 56) = &type metadata for String;
    v41 = sub_100018744();
    *(v40 + 64) = v41;
    v42 = v52;
    *(v40 + 32) = v51;
    *(v40 + 40) = v42;

    v43 = v54;
    v44 = sub_1000D195C();
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v41;
    *(v40 + 72) = v44;
    *(v40 + 80) = v45;
    sub_1000D19BC();
    *(v40 + 136) = &type metadata for Double;
    *(v40 + 144) = &protocol witness table for Double;
    *(v40 + 112) = v46;
    *(v40 + 176) = &type metadata for Double;
    *(v40 + 184) = &protocol witness table for Double;
    *(v40 + 152) = v25;
    *(v40 + 216) = &type metadata for Float;
    *(v40 + 224) = &protocol witness table for Float;
    *(v40 + 192) = v36;
    sub_1000D37AC();
    sub_1000D1B2C();

    sub_100006334(&qword_1001259B0);
    v47 = (*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000E0440;
    sub_10007C788(v58, v48 + v47);
    sub_1000D33AC();
    sub_10007C940(&qword_100125990, type metadata accessor for TVWidgetEntry);
    v49 = v57;
    sub_1000D350C();
    v63(v49);
    (*(v59 + 8))(v49, v61);
    return v53(v43, v56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100079554@<X0>(uint64_t a1@<X8>)
{
  v18 = &type metadata for TVWidgetFeature;
  v19 = sub_10007CA64();
  v2 = sub_1000D1A4C();
  sub_10007CAB8(v17);
  if (v2)
  {
    sub_1000D1B1C();
    sub_1000D1B0C();
    v3 = sub_1000D1AFC();

    if ((v3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1000D1A7C();
    v10 = sub_1000D1A5C();
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_self();
      v13 = sub_1000D35FC();
      LODWORD(v12) = [v12 acknowledgementNeededForPrivacyIdentifier:v13 account:v11];

      if (!v12)
      {

        v16 = type metadata accessor for TVWidgetEntry();
        return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
      }

      result = sub_100002C80();
      if (!result)
      {
        goto LABEL_18;
      }

      v14 = result;
      sub_1000D37AC();
      sub_1000D1B2C();

      sub_1000D19EC();
    }

    else
    {
      result = sub_100002C80();
      if (!result)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v15 = result;
      sub_1000D37AC();
      sub_1000D1B2C();

      sub_1000D19EC();
    }

    v6 = type metadata accessor for TVWidgetEntry();
    v7 = v6;
    *(a1 + *(v6 + 20)) = 0;
    *(a1 + *(v6 + 24)) = 3;
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v7);
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 isNetworkReachable];

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  result = sub_100002C80();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  sub_1000D37AC();
  sub_1000D1B2C();

  sub_1000D19EC();
  v6 = type metadata accessor for TVWidgetEntry();
  v7 = v6;
  *(a1 + *(v6 + 20)) = 0;
  *(a1 + *(v6 + 24)) = 2;
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_100079834(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D19EC();
  a1(a3, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100079918(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D2C2C();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000D2C4C();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007CB04(0, &qword_100124668);
  v23 = sub_1000D37DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_10007CA34;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100079E60;
  aBlock[3] = &unk_10011B9D8;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  v19 = a3;

  sub_1000D2C3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10007C940(&qword_100124670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006334(&qword_100124678);
  sub_10000FC38(&qword_100124680, &qword_100124678);
  sub_1000D38AC();
  v20 = v23;
  sub_1000D37EC();
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

id sub_100079C38(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    result = sub_100002C80();
    if (result)
    {
      v10 = result;
      sub_100006334(&qword_100122C50);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000E0440;
      if (*&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
      {
        v12 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
        v13 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
      }

      else
      {
        sub_10007CB04(0, &qword_100122C58);
        v14 = sub_1000D381C();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1000E0440;
        *(v15 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v15 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
        *(v15 + 32) = a2;
        v16 = a2;
        v17 = sub_1000D382C();

        v12 = sub_1000D360C();
        v13 = v18;
      }

      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_100018744();
      *(v11 + 32) = v12;
      *(v11 + 40) = v13;

      sub_1000D37AC();
      sub_1000D1B2C();

      return sub_10007B3A8(a2, 0, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100079E60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100079EA4(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  v9 = sub_1000D2C7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007CB04(0, &qword_100124668);
  *v12 = sub_1000D37DC();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1000D2C9C();
  result = (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    return result;
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  result = sub_100002C80();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = result;
  sub_100006334(&qword_100122C50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E0440;
  if (*&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
  {
    v17 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v18 = *&a2[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  }

  else
  {
    v24 = xmmword_1000E0440;
    sub_10007CB04(0, &qword_100122C58);
    v19 = sub_1000D381C();
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v20 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v20 + 32) = a2;
    v21 = a2;
    v22 = sub_1000D382C();

    v17 = sub_1000D360C();
    v18 = v23;
  }

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100018744();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;

  sub_1000D37AC();
  sub_1000D1B2C();

  return sub_10007B3A8(a2, 1, a4, a5);
}

uint64_t sub_10007A1BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D323C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D344C();
  v6 = sub_100086C78(v5);
  (*(v3 + 8))(v5, v2);
  sub_1000D19EC();
  result = type metadata accessor for TVWidgetEntry();
  *(a1 + *(result + 20)) = v6;
  *(a1 + *(result + 24)) = 4;
  return result;
}

uint64_t sub_10007A2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000119BC;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10007A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10007A434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a1;
  LODWORD(v62) = a3;
  v58 = a2;
  v69 = a5;
  v5 = sub_100006334(&qword_100122248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_100006334(&qword_100122240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  *&v70 = sub_100006334(&qword_100125918);
  v59 = *(v70 - 8);
  __chkstk_darwin(v70);
  v14 = &v56 - v13;
  v71 = sub_100006334(&qword_100125920);
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v57 = &v56 - v15;
  v16 = sub_100006334(&qword_100125928);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  __chkstk_darwin(v16);
  v72 = &v56 - v18;
  v19 = sub_100006334(&qword_100125930);
  v20 = *(v19 - 8);
  v67 = v19;
  v68 = v20;
  __chkstk_darwin(v19);
  v64 = &v56 - v21;
  v22 = [objc_allocWithZone(NSOperationQueue) init];
  v23 = sub_1000D35FC();
  [v22 setName:v23];

  [v22 setMaxConcurrentOperationCount:1];
  [v22 setQualityOfService:25];
  v73 = v22;
  sub_100006334(&qword_100125938);
  sub_10007B090();
  sub_10007B178();
  sub_1000D339C();
  v24 = sub_10000FC38(&qword_100122250, &qword_100122248);
  sub_1000D227C();
  (*(v6 + 8))(v8, v5);
  v73 = v5;
  v74 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000D226C();
  (*(v10 + 8))(v12, v9);

  v26 = sub_1000D25EC();
  v28 = v27;
  LOBYTE(v23) = v29;
  v73 = v9;
  v74 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v70;
  sub_1000D222C();
  sub_10000F374(v26, v28, v23 & 1);

  (*(v59 + 8))(v14, v31);
  v62 = sub_100006334(&qword_100125968);
  v32 = sub_1000D323C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000E5A60;
  v37 = v36 + v35;
  LODWORD(v61) = enum case for WidgetFamily.systemSmall(_:);
  v38 = *(v33 + 104);
  v38(v36 + v35);
  (v38)(v37 + v34, enum case for WidgetFamily.systemMedium(_:), v32);
  (v38)(v37 + 2 * v34, enum case for WidgetFamily.systemLarge(_:), v32);
  (v38)(v37 + 3 * v34, enum case for WidgetFamily.systemExtraLarge(_:), v32);
  v73 = v70;
  v74 = v30;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v71;
  v41 = v57;
  sub_1000D220C();

  (*(v63 + 8))(v41, v40);
  sub_100006334(&qword_100125970);
  sub_1000D329C();
  v42 = swift_allocObject();
  v70 = xmmword_1000E0440;
  *(v42 + 16) = xmmword_1000E0440;
  sub_1000D327C();
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  (v38)(v43 + v35, v61, v32);
  v73 = v71;
  v74 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  v46 = v64;
  v45 = v65;
  v47 = v72;
  sub_1000D221C();

  v48 = v47;
  v49 = v45;
  (*(v66 + 8))(v48, v45);
  sub_1000D215C();
  v50 = sub_1000D25EC();
  v52 = v51;
  LOBYTE(v28) = v53;
  v73 = v49;
  v74 = v44;
  swift_getOpaqueTypeConformance2();
  v54 = v67;
  sub_1000D21EC();
  sub_10000F374(v50, v52, v28 & 1);

  return (*(v68 + 8))(v46, v54);
}

uint64_t sub_10007ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetEntry();
  v5 = *(a1 + *(v4 + 20));
  v6 = *(a1 + *(v4 + 24));

  sub_100099144(v21);
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for TVWidgetView(0);
  *(a2 + v8[7]) = KeyPath;
  sub_100006334(&qword_100125978);
  swift_storeEnumTagMultiPayload();
  *a2 = v5;
  *(a2 + 8) = v6;
  v9 = v21[5];
  *(a2 + 80) = v21[4];
  *(a2 + 96) = v9;
  *(a2 + 112) = v21[6];
  v10 = v21[1];
  *(a2 + 16) = v21[0];
  *(a2 + 32) = v10;
  v11 = v21[3];
  *(a2 + 48) = v21[2];
  *(a2 + 64) = v11;
  v12 = a2 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v8[9];
  *(a2 + v13) = swift_getKeyPath();
  sub_100006334(&qword_100125980);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v8[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = swift_getKeyPath();
  v16 = (a2 + *(sub_100006334(&qword_100125938) + 36));
  v17 = *(sub_100006334(&qword_100125958) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = sub_1000D1BBC();
  result = (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  return result;
}

void sub_10007AFC8(uint64_t a1@<X8>)
{
  v2 = sub_1000D215C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100002C80();
  if (v9)
  {
    v10 = v9;
    sub_1000D37AC();
    sub_1000D1B2C();

    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v8;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10007B090()
{
  result = qword_100125940;
  if (!qword_100125940)
  {
    sub_10000637C(&qword_100125938);
    sub_10007C940(&qword_100125948, type metadata accessor for TVWidgetView);
    sub_10000FC38(&qword_100125950, &qword_100125958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125940);
  }

  return result;
}

unint64_t sub_10007B178()
{
  result = qword_100125960;
  if (!qword_100125960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125960);
  }

  return result;
}

uint64_t sub_10007B1CC()
{
  sub_1000D204C();
  sub_10007C940(&qword_100125988, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000D20FC();
  return v1;
}

uint64_t sub_10007B248@<X0>(_BYTE *a1@<X8>)
{
  sub_1000D204C();
  sub_10007C940(&qword_100125988, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000D20FC();
  *a1 = v3;
  return result;
}

uint64_t sub_10007B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

id sub_10007B3A8(void *a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v111 = a4;
  v112 = a3;
  v5 = sub_100006334(&qword_1001257C8);
  v6 = __chkstk_darwin(v5 - 8);
  v110 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v100 - v8;
  v10 = type metadata accessor for TVWidgetEntry();
  v114 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v109 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v100 - v13;
  v15 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v15 - 8);
  v17 = v100 - v16;
  v18 = sub_1000D19FC();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v107 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v108 = v100 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v100 - v25;
  __chkstk_darwin(v24);
  v28 = v100 - v27;
  sub_1000D19AC();
  v113 = v26;
  if (a1)
  {
    objc_sync_enter(a1);
    v29 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__suggestedRefreshDate;
    swift_beginAccess();
    sub_10000F8D0(a1 + v29, v17, &qword_100122E90);
    objc_sync_exit(a1);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v26, v17, v18);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  (*(v19 + 16))(v26, v28, v18);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_10000F938(v17, &qword_100122E90);
  }

  if (!a1)
  {
    v30 = v114;
    (*(v114 + 7))(v9, 1, 1, v10);
    goto LABEL_11;
  }

LABEL_8:
  v30 = v114;
  objc_sync_enter(a1);
  v31 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__widgetEntry;
  swift_beginAccess();
  sub_10000F8D0(a1 + v31, v9, &qword_1001257C8);
  objc_sync_exit(a1);
  v32 = *(v30 + 6);
  if (v32(v9, 1, v10) != 1)
  {
    sub_10007C724(v9, v14);
    goto LABEL_14;
  }

LABEL_11:
  sub_1000D19EC();
  *&v14[*(v10 + 20)] = 0;
  v14[*(v10 + 24)] = 2;
  v32 = *(v30 + 6);
  if (v32(v9, 1, v10) != 1)
  {
    sub_10000F938(v9, &qword_1001257C8);
  }

  if (!a1)
  {
    goto LABEL_33;
  }

LABEL_14:
  v33 = a1;
  objc_sync_enter(v33);
  v34 = *&v33[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetFetchOperation__error];
  swift_errorRetain();
  objc_sync_exit(v33);
  if (!v34)
  {

LABEL_33:
    v57 = v113;
    v112(v14, v113);
    sub_100077084(v14);
    v58 = *(v19 + 8);
    v58(v57, v18);
    return (v58)(v28, v18);
  }

  v106 = v28;
  v35 = sub_1000D187C();

  v36 = [v35 domain];
  v37 = sub_1000D360C();
  v39 = v38;

  if (v37 == sub_1000D360C() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_1000D39CC();

    if ((v41 & 1) == 0)
    {

LABEL_32:
      v28 = v106;
      goto LABEL_33;
    }
  }

  v105 = v35;
  v42 = [v35 userInfo];
  v43 = sub_1000D351C();

  v44 = sub_1000D360C();
  if (!*(v43 + 16))
  {

LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  v104 = v33;
  v46 = sub_1000232F8(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {

    v33 = v104;
    goto LABEL_30;
  }

  sub_10007C988(*(v43 + 56) + 32 * v46, v116);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v28 = v106;
  v49 = v104;
  if (v115 != 500)
  {
LABEL_51:

    goto LABEL_33;
  }

  result = sub_100002C80();
  if (!result)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v51 = result;
  v52 = sub_100006334(&qword_100122C50);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1000E0440;
  v53 = *&v49[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
  v100[1] = v52;
  v103 = xmmword_1000E0440;
  v100[0] = &v49[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
  if (v53)
  {
    v54 = *&v49[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
    v55 = v49;
    v56 = v53;
  }

  else
  {
    sub_10007CB04(0, &qword_100122C58);
    v59 = v49;
    v60 = v51;
    v61 = v59;
    v62 = sub_1000D381C();
    v63 = swift_allocObject();
    *(v63 + 16) = v103;
    *(v63 + 56) = type metadata accessor for TVWidgetAsyncOperation();
    *(v63 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
    *(v63 + 32) = v61;
    v64 = v61;
    v65 = sub_1000D382C();

    v54 = sub_1000D360C();
    v56 = v66;

    v51 = v60;
  }

  v67 = v102;
  *(v102 + 56) = &type metadata for String;
  v101 = sub_100018744();
  v67[8] = v101;
  v67[4] = v54;
  v67[5] = v56;

  sub_1000D37AC();
  sub_1000D1B2C();

  if (qword_1001220C0 != -1)
  {
    swift_once();
  }

  v68 = qword_10013C318;
  v69 = sub_100076920();
  result = sub_100002C80();
  v70 = result;
  v28 = v106;
  if ((v69 & 1) == 0)
  {
    if (!result)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_1000D37AC();
    sub_1000D1B2C();

    v73 = v110;
    (*(v114 + 7))(v110, 1, 1, v10);
LABEL_46:
    sub_10000F938(v73, &qword_1001257C8);
    result = sub_100002C80();
    if (result)
    {
      v81 = result;
      v82 = swift_allocObject();
      *(v82 + 16) = v103;
      v83 = *(v100[0] + 8);
      if (v83)
      {
        v84 = *v100[0];

        v49 = v104;
      }

      else
      {
        sub_10007CB04(0, &qword_100122C58);
        v85 = sub_1000D381C();
        v86 = swift_allocObject();
        *(v86 + 16) = v103;
        *(v86 + 56) = type metadata accessor for TVWidgetAsyncOperation();
        *(v86 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
        v49 = v104;
        *(v86 + 32) = v104;
        v87 = v49;
        v88 = sub_1000D382C();

        v84 = sub_1000D360C();
        v83 = v89;

        v28 = v106;
      }

      v90 = v101;
      *(v82 + 56) = &type metadata for String;
      *(v82 + 64) = v90;
      *(v82 + 32) = v84;
      *(v82 + 40) = v83;
      sub_1000D37AC();
      sub_1000D1B2C();

      goto LABEL_51;
    }

    goto LABEL_55;
  }

  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1000D37AC();
  sub_1000D1B2C();

  v71 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
  swift_beginAccess();
  v72 = v68 + v71;
  v73 = v110;
  sub_10000F8D0(v72, v110, &qword_1001257C8);
  v74 = v32(v73, 1, v10);
  v75 = v113;
  if (v74 == 1)
  {
    goto LABEL_46;
  }

  sub_10007C724(v73, v109);
  result = sub_100002C80();
  if (result)
  {
    v76 = result;
    v77 = swift_allocObject();
    *(v77 + 16) = v103;
    v78 = *(v100[0] + 8);
    if (v78)
    {
      v79 = *v100[0];

      v80 = v104;
    }

    else
    {
      sub_10007CB04(0, &qword_100122C58);
      v91 = sub_1000D381C();
      v92 = swift_allocObject();
      *(v92 + 16) = v103;
      *(v92 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v92 + 64) = sub_10007C940(&qword_100122C60, type metadata accessor for TVWidgetAsyncOperation);
      v80 = v104;
      *(v92 + 32) = v104;
      v114 = v80;
      v93 = sub_1000D382C();

      v79 = sub_1000D360C();
      v78 = v94;

      v28 = v106;
    }

    v95 = v101;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = v95;
    *(v77 + 32) = v79;
    *(v77 + 40) = v78;
    sub_1000D37AC();
    sub_1000D1B2C();

    sub_100077084(v14);
    v96 = v109;
    sub_10007C788(v109, v14);
    v97 = v107;
    sub_1000D19EC();
    v98 = v108;
    sub_1000D19DC();

    v99 = *(v19 + 8);
    v99(v97, v18);
    sub_100077084(v96);
    v99(v75, v18);
    (*(v19 + 32))(v75, v98, v18);
    goto LABEL_33;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10007C328()
{
  sub_10000637C(&qword_100125930);
  sub_10000637C(&qword_100125928);
  sub_10000637C(&qword_100125920);
  sub_10000637C(&qword_100125918);
  sub_10000637C(&qword_100122240);
  sub_10000637C(&qword_100122248);
  sub_10000FC38(&qword_100122250, &qword_100122248);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007C544()
{
  v1 = sub_1000D19FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

id sub_10007C5F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000D19FC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_100078EDC(a1, a2, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_10007C6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007C714(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007C724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C7EC()
{
  v1 = *(type metadata accessor for TVWidgetEntry() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1000D19FC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007C8DC()
{
  v1 = *(type metadata accessor for TVWidgetEntry() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100079834(v2, v3, v4);
}

uint64_t sub_10007C940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007C988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10007C9E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10007CA64()
{
  result = qword_1001259A0;
  if (!qword_1001259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259A0);
  }

  return result;
}

uint64_t sub_10007CAB8(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10007CB04(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007CB4C()
{
  v1 = sub_1000D19FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

id sub_10007CC28(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000D19FC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000780DC(a1, a2, v7, v8, v2 + v6, v9);
}

id sub_10007CCF4@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_100006334(&qword_1001259C0);
  __chkstk_darwin(v24);
  v3 = v22 - v2;
  v4 = sub_100006334(&qword_1001259C8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v23 = sub_1000D215C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_100002C80();
  if (result)
  {
    v18 = result;
    v22[1] = a1;
    sub_1000D37AC();
    sub_1000D1B2C();

    result = sub_100002D08();
    if (result)
    {
      v19 = result;
      sub_1000D37AC();
      sub_1000D1B2C();

      sub_100006334(&qword_1001259D0);
      sub_1000D1BFC();
      v20 = *(v5 + 16);
      v20(v8, v10, v4);
      *v3 = v23;
      *(v3 + 1) = v12;
      v3[16] = v14 & 1;
      *(v3 + 3) = v16;
      v20(&v3[*(v24 + 64)], v8, v4);

      sub_1000D1BFC();
      v21 = *(v5 + 8);
      v21(v10, v4);
      v21(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007CFCC()
{
  sub_100006334(&qword_1001259D0);

  return sub_1000D1BFC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10007D054();
  sub_1000D1C7C();
  return 0;
}

unint64_t sub_10007D054()
{
  result = qword_1001259B8;
  if (!qword_1001259B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259B8);
  }

  return result;
}

unint64_t sub_10007D0D8()
{
  result = qword_1001259D8;
  if (!qword_1001259D8)
  {
    sub_10000637C(&qword_1001259E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259D8);
  }

  return result;
}

uint64_t sub_10007D13C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007D184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVWidgetFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TVWidgetFeature(_WORD *result, int a2, int a3)
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

unint64_t sub_10007D2C4()
{
  result = qword_1001259E8;
  if (!qword_1001259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001259E8);
  }

  return result;
}

Swift::Int sub_10007D318()
{
  sub_1000D3A4C();
  sub_1000D3A5C(0);
  return sub_1000D3A6C();
}

Swift::Int sub_10007D384()
{
  sub_1000D3A4C();
  sub_1000D3A5C(0);
  return sub_1000D3A6C();
}

unint64_t sub_10007D3F0()
{
  result = qword_100125A10;
  if (!qword_100125A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A10);
  }

  return result;
}

uint64_t sub_10007D488()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C320);
  sub_100006610(v10, qword_10013C320);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10007D774()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C338);
  sub_100006610(v0, qword_10013C338);
  return sub_1000D188C();
}

uint64_t sub_10007D7D8()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C350);
  v1 = sub_100006610(v0, qword_10013C350);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007D898()
{
  result = swift_getKeyPath();
  qword_10013C368 = result;
  return result;
}

uint64_t sub_10007D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10007D8E4, 0, 0);
}

uint64_t sub_10007D8E4()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_1001220E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C368;
  *(v0 + 152) = qword_10013C368;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100125B88, &qword_100125B90);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_10007DA50;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for VideosPlaybackCellularQuality, v5);
}

uint64_t sub_10007DA50()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10007DBC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DBC0()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C368;
  v0[25] = qword_10013C368;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_10007DCA4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_10007DCA4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10007DE14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007DE14()
{
  *(v0 + 227) = *(v0 + 226);
  sub_10002CB10();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10007DE9C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10007DF10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10007DF84()
{
  if (qword_1001220E0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10007DFE4()
{
  result = qword_100125A28;
  if (!qword_100125A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A28);
  }

  return result;
}

unint64_t sub_10007E03C()
{
  result = qword_100125A30;
  if (!qword_100125A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A30);
  }

  return result;
}

uint64_t sub_10007E14C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001220D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C350);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10007E1D0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10007D8C0(a1, v5, v4);
}

uint64_t sub_10007E27C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FCD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10007E2C4()
{
  result = qword_100125A38;
  if (!qword_100125A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A38);
  }

  return result;
}

unint64_t sub_10007E31C()
{
  result = qword_100125A40;
  if (!qword_100125A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A40);
  }

  return result;
}

uint64_t sub_10007E390()
{
  **(v0 + 16) = sub_1000A34D8() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E440()
{
  sub_1000A3C90(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007E4DC()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000800D4();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10007E54C()
{
  result = qword_100125A48;
  if (!qword_100125A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A48);
  }

  return result;
}

uint64_t sub_10007E5A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10007F208();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10007E654()
{
  result = qword_100125A50;
  if (!qword_100125A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A50);
  }

  return result;
}

unint64_t sub_10007E6AC()
{
  result = qword_100125A58;
  if (!qword_100125A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A58);
  }

  return result;
}

unint64_t sub_10007E704()
{
  result = qword_100125A60;
  if (!qword_100125A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A60);
  }

  return result;
}

uint64_t sub_10007E758(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10007F208();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10007E80C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10007F208();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10007E8C0()
{
  result = qword_100125A68;
  if (!qword_100125A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A68);
  }

  return result;
}

unint64_t sub_10007E918()
{
  result = qword_100125A70;
  if (!qword_100125A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A70);
  }

  return result;
}

unint64_t sub_10007E970()
{
  result = qword_100125A78;
  if (!qword_100125A78)
  {
    sub_10000637C(&qword_100125A80);
    sub_10007E918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A78);
  }

  return result;
}

uint64_t sub_10007E9F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10007E54C();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10007EB1C(uint64_t a1)
{
  v2 = sub_10007F064();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10007E704();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10007EBC4()
{
  sub_10007EF90();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10007EC68(uint64_t a1)
{
  v2 = sub_10007E704();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10007ECB4(uint64_t a1)
{
  v2 = sub_10007E31C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10007ED00(uint64_t a1)
{
  v2 = sub_10007EDA8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10007ED50()
{
  result = qword_100125A98;
  if (!qword_100125A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A98);
  }

  return result;
}

unint64_t sub_10007EDA8()
{
  result = qword_100125AA0;
  if (!qword_100125AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AA0);
  }

  return result;
}

unint64_t sub_10007EDFC()
{
  result = qword_100125AA8;
  if (!qword_100125AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AA8);
  }

  return result;
}

unint64_t sub_10007EE54()
{
  result = qword_100125AB0;
  if (!qword_100125AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AB0);
  }

  return result;
}

unint64_t sub_10007EEB0()
{
  result = qword_100125AB8;
  if (!qword_100125AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125AB8);
  }

  return result;
}

unint64_t sub_10007EF04(void *a1)
{
  a1[1] = sub_10007EF3C();
  a1[2] = sub_10007EF90();
  result = sub_10007E31C();
  a1[3] = result;
  return result;
}

unint64_t sub_10007EF3C()
{
  result = qword_100125B08;
  if (!qword_100125B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B08);
  }

  return result;
}

unint64_t sub_10007EF90()
{
  result = qword_100125B10;
  if (!qword_100125B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B10);
  }

  return result;
}

unint64_t sub_10007EFE8()
{
  result = qword_100125B18;
  if (!qword_100125B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B18);
  }

  return result;
}

unint64_t sub_10007F03C(uint64_t a1)
{
  result = sub_10007F064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007F064()
{
  result = qword_100125B50;
  if (!qword_100125B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B50);
  }

  return result;
}

unint64_t sub_10007F100()
{
  result = qword_100125B68;
  if (!qword_100125B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B68);
  }

  return result;
}

unint64_t sub_10007F158()
{
  result = qword_100125B70;
  if (!qword_100125B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B70);
  }

  return result;
}

unint64_t sub_10007F1B0()
{
  result = qword_100125B78;
  if (!qword_100125B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B78);
  }

  return result;
}

unint64_t sub_10007F208()
{
  result = qword_100125B80;
  if (!qword_100125B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125B80);
  }

  return result;
}

uint64_t sub_10007F25C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_100080474();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsPlaybackCellularQualityWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = qword_1001259F0;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_10002CABC();
  sub_10002CDD4();
  sub_10007E31C();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100125A00;
  v53 = off_100125A08;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_10007F8C8@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10007F93C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100121FF8 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C118;
  v21 = *(qword_10013C118 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_100025118(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_10007FC18()
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10007FCD0()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125B98);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10007E704();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125BA0);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10002CABC();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000800D4()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsPlaybackCellularQualityEntity;
  sub_100006334(&qword_100122D88);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125A20);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125B88, &qword_100125B90);
  sub_10002CABC();
  sub_1000D178C();
  return v7;
}

unint64_t sub_1000803F8(uint64_t a1)
{
  result = sub_100080420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100080420()
{
  result = qword_100125BF0;
  if (!qword_100125BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BF0);
  }

  return result;
}

unint64_t sub_100080474()
{
  result = qword_100125BF8;
  if (!qword_100125BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125BF8);
  }

  return result;
}

uint64_t sub_1000804C8()
{
  sub_10000637C(&qword_100122978);
  sub_10000637C(&qword_100122970);
  sub_10000637C(&qword_100122968);
  sub_10000637C(&qword_100122960);
  sub_10000FC38(&qword_1001229A0, &qword_100122960);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100080654()
{
  result = qword_100125C00;
  if (!qword_100125C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C00);
  }

  return result;
}

uint64_t sub_1000806EC()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C370);
  sub_100006610(v10, qword_10013C370);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000809DC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C388);
  sub_100006610(v0, qword_10013C388);
  return sub_1000D188C();
}

uint64_t sub_100080A40()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C3A0);
  v1 = sub_100006610(v0, qword_10013C3A0);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100080B00()
{
  result = swift_getKeyPath();
  qword_10013C3B8 = result;
  return result;
}

uint64_t sub_100080B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100080B4C, 0, 0);
}

uint64_t sub_100080B4C()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100122100 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C3B8;
  *(v0 + 152) = qword_10013C3B8;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100125D78, &qword_100125D80);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_100080CB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for VideosPlaybackWiFiQuality, v5);
}

uint64_t sub_100080CB8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100080E28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100080E28()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C3B8;
  v0[25] = qword_10013C3B8;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100080F0C;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_100080F0C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008107C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008107C()
{
  *(v0 + 227) = *(v0 + 226);
  sub_10002D048();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_100081104(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_100081178(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_1000811EC()
{
  if (qword_100122100 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10008124C()
{
  result = qword_100125C18;
  if (!qword_100125C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C18);
  }

  return result;
}

unint64_t sub_1000812A4()
{
  result = qword_100125C20;
  if (!qword_100125C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C20);
  }

  return result;
}

uint64_t sub_1000813B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001220F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C3A0);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100081438(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_100080B28(a1, v5, v4);
}

uint64_t sub_1000814E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000830A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008152C()
{
  result = qword_100125C28;
  if (!qword_100125C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C28);
  }

  return result;
}

unint64_t sub_100081584()
{
  result = qword_100125C30;
  if (!qword_100125C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C30);
  }

  return result;
}

uint64_t sub_1000815F8()
{
  **(v0 + 16) = sub_1000A3528() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000816A8()
{
  sub_1000A3CE0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081744()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000834A8();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000817B4()
{
  result = qword_100125C38;
  if (!qword_100125C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C38);
  }

  return result;
}

uint64_t sub_100081808(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100082470();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000818BC()
{
  result = qword_100125C40;
  if (!qword_100125C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C40);
  }

  return result;
}

unint64_t sub_100081914()
{
  result = qword_100125C48;
  if (!qword_100125C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C48);
  }

  return result;
}

unint64_t sub_10008196C()
{
  result = qword_100125C50;
  if (!qword_100125C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C50);
  }

  return result;
}

uint64_t sub_1000819C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100082470();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100081A74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100082470();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100081B28()
{
  result = qword_100125C58;
  if (!qword_100125C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C58);
  }

  return result;
}

unint64_t sub_100081B80()
{
  result = qword_100125C60;
  if (!qword_100125C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C60);
  }

  return result;
}

unint64_t sub_100081BD8()
{
  result = qword_100125C68;
  if (!qword_100125C68)
  {
    sub_10000637C(&qword_100125C70);
    sub_100081B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C68);
  }

  return result;
}

uint64_t sub_100081C5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000817B4();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100081D84(uint64_t a1)
{
  v2 = sub_1000822CC();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008196C();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100081E2C()
{
  sub_1000821F8();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100081ED0(uint64_t a1)
{
  v2 = sub_10008196C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100081F1C(uint64_t a1)
{
  v2 = sub_100081584();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100081F68(uint64_t a1)
{
  v2 = sub_100082010();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100081FB8()
{
  result = qword_100125C88;
  if (!qword_100125C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C88);
  }

  return result;
}

unint64_t sub_100082010()
{
  result = qword_100125C90;
  if (!qword_100125C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C90);
  }

  return result;
}

unint64_t sub_100082064()
{
  result = qword_100125C98;
  if (!qword_100125C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C98);
  }

  return result;
}

unint64_t sub_1000820BC()
{
  result = qword_100125CA0;
  if (!qword_100125CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CA0);
  }

  return result;
}

unint64_t sub_100082118()
{
  result = qword_100125CA8;
  if (!qword_100125CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CA8);
  }

  return result;
}

unint64_t sub_10008216C(void *a1)
{
  a1[1] = sub_1000821A4();
  a1[2] = sub_1000821F8();
  result = sub_100081584();
  a1[3] = result;
  return result;
}

unint64_t sub_1000821A4()
{
  result = qword_100125CF8;
  if (!qword_100125CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CF8);
  }

  return result;
}

unint64_t sub_1000821F8()
{
  result = qword_100125D00;
  if (!qword_100125D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D00);
  }

  return result;
}

unint64_t sub_100082250()
{
  result = qword_100125D08;
  if (!qword_100125D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D08);
  }

  return result;
}

unint64_t sub_1000822A4(uint64_t a1)
{
  result = sub_1000822CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000822CC()
{
  result = qword_100125D40;
  if (!qword_100125D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D40);
  }

  return result;
}

unint64_t sub_100082368()
{
  result = qword_100125D58;
  if (!qword_100125D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D58);
  }

  return result;
}

unint64_t sub_1000823C0()
{
  result = qword_100125D60;
  if (!qword_100125D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D60);
  }

  return result;
}

unint64_t sub_100082418()
{
  result = qword_100125D68;
  if (!qword_100125D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D68);
  }

  return result;
}

unint64_t sub_100082470()
{
  result = qword_100125D70;
  if (!qword_100125D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D70);
  }

  return result;
}

void sub_1000824C4()
{
  sub_1000D38DC(20);
  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DBBD0;
  v4._countAndFlagsBits = 0xD000000000000012;
  sub_1000D366C(v4);
  qword_10013C3C0 = 0;
  *algn_10013C3C8 = 0xE000000000000000;
}

void sub_100082574()
{
  sub_1000D38DC(35);

  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DBBB0;
  v4._countAndFlagsBits = 0xD000000000000016;
  sub_1000D366C(v4);
  qword_10013C3D0 = 0x742065736F6F6843;
  *algn_10013C3D8 = 0xEB00000000206568;
}

uint64_t sub_100082644@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - v3;
  v36 = sub_100006334(&qword_100122968);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v27 = v25 - v4;
  v38 = sub_100006334(&qword_100122970);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = v25 - v5;
  v37 = sub_100006334(&qword_100122978);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v25 - v6;
  strcpy(v40, "com.apple.tv.");
  HIWORD(v40[1]) = -4864;
  v7 = sub_10008384C();
  v26 = *(v7 + 40);
  v47._countAndFlagsBits = (v26)(&type metadata for TVSettingsPlaybackWifiQualityWidget, v7);
  sub_1000D366C(v47);

  v25[2] = v40[0];
  v25[1] = v40[1];
  if (qword_100122108 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_10002CFF4();
  sub_10002D39C();
  sub_100081584();
  sub_100013998();
  v8 = v28;
  sub_1000D32CC();
  v40[0] = v26();
  v40[1] = v9;
  v45 = 0x746567646957;
  v46 = 0xE600000000000000;
  v43 = 0x656C67676F54;
  v44 = 0xE600000000000000;
  v10 = sub_10000F320();
  v11 = sub_1000D387C();
  v13 = v12;

  v40[0] = v11;
  v40[1] = v13;
  v14 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v15 = v27;
  v16 = v30;
  sub_1000D223C();

  (*(v29 + 8))(v8, v16);
  if (qword_100122110 != -1)
  {
    swift_once();
  }

  v45 = qword_10013C3D0;
  v46 = *algn_10013C3D8;
  v40[0] = v16;
  v40[1] = &type metadata for String;
  v41 = v14;
  v42 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  v19 = v36;
  sub_1000D21FC();
  (*(v33 + 8))(v15, v19);
  v40[0] = v19;
  v40[1] = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v10;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32;
  v22 = v38;
  sub_1000D224C();
  (*(v34 + 8))(v18, v22);
  v40[0] = v22;
  v40[1] = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v37;
  sub_1000D227C();
  return (*(v35 + 8))(v21, v23);
}

uint64_t sub_100082D20@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122108 != -1)
  {
    swift_once();
  }

  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100082DC4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100121FE8 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C0F8;
  v21 = *(qword_10013C0F8 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_100025118(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_1000830A4()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125D88);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008196C();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125D90);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10002CFF4();
  sub_1000D156C();
  return v22;
}

uint64_t sub_1000834A8()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsPlaybackWifiQualityEntity;
  sub_100006334(&qword_100122D80);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125C10);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125D78, &qword_100125D80);
  sub_10002CFF4();
  sub_1000D178C();
  return v7;
}

unint64_t sub_1000837D0(uint64_t a1)
{
  result = sub_1000837F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000837F8()
{
  result = qword_100125DE0;
  if (!qword_100125DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125DE0);
  }

  return result;
}

unint64_t sub_10008384C()
{
  result = qword_100125DE8;
  if (!qword_100125DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125DE8);
  }

  return result;
}

unint64_t sub_1000838B4()
{
  result = qword_100125E10;
  if (!qword_100125E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E10);
  }

  return result;
}

uint64_t sub_10008394C()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C3E0);
  sub_100006610(v10, qword_10013C3E0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100083C38()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C3F8);
  sub_100006610(v0, qword_10013C3F8);
  return sub_1000D188C();
}

uint64_t sub_100083C9C()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C410);
  v1 = sub_100006610(v0, qword_10013C410);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100083D5C()
{
  result = swift_getKeyPath();
  qword_10013C428 = result;
  return result;
}

uint64_t sub_100083D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100083DA8, 0, 0);
}

uint64_t sub_100083DA8()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100122130 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C428;
  *(v0 + 152) = qword_10013C428;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100125F88, &qword_100125F90);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_100083F14;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for VideosDownloadCellularQuality, v5);
}

uint64_t sub_100083F14()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100084084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100084084()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C428;
  v0[25] = qword_10013C428;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100084168;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_100084168()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_1000842D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000842D8()
{
  *(v0 + 227) = *(v0 + 226);
  sub_100048468();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_100084360(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_1000843D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_100084448()
{
  if (qword_100122130 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000844A8()
{
  result = qword_100125E28;
  if (!qword_100125E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E28);
  }

  return result;
}

unint64_t sub_100084500()
{
  result = qword_100125E30;
  if (!qword_100125E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E30);
  }

  return result;
}

uint64_t sub_100084610@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122128 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C410);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100084694(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_100083D84(a1, v5, v4);
}

uint64_t sub_100084740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008618C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100084788()
{
  result = qword_100125E38;
  if (!qword_100125E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E38);
  }

  return result;
}

unint64_t sub_1000847E0()
{
  result = qword_100125E40;
  if (!qword_100125E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E40);
  }

  return result;
}

uint64_t sub_100084854()
{
  **(v0 + 16) = sub_1000A3578() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100084904()
{
  sub_1000A4000(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000849A0()
{
  v1 = *(v0 + 16);
  *v1 = sub_100086590();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100084A10()
{
  result = qword_100125E48;
  if (!qword_100125E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E48);
  }

  return result;
}

uint64_t sub_100084A64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000856CC();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100084B18()
{
  result = qword_100125E50;
  if (!qword_100125E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E50);
  }

  return result;
}

unint64_t sub_100084B70()
{
  result = qword_100125E58;
  if (!qword_100125E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E58);
  }

  return result;
}

unint64_t sub_100084BC8()
{
  result = qword_100125E60;
  if (!qword_100125E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E60);
  }

  return result;
}

uint64_t sub_100084C1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000856CC();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100084CD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000856CC();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100084D84()
{
  result = qword_100125E68;
  if (!qword_100125E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E68);
  }

  return result;
}

unint64_t sub_100084DDC()
{
  result = qword_100125E70;
  if (!qword_100125E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E70);
  }

  return result;
}

unint64_t sub_100084E34()
{
  result = qword_100125E78;
  if (!qword_100125E78)
  {
    sub_10000637C(&qword_100125E80);
    sub_100084DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E78);
  }

  return result;
}

uint64_t sub_100084EB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100084A10();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100084FE0(uint64_t a1)
{
  v2 = sub_100085528();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100084BC8();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100085088()
{
  sub_100085454();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10008512C(uint64_t a1)
{
  v2 = sub_100084BC8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100085178(uint64_t a1)
{
  v2 = sub_1000847E0();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000851C4(uint64_t a1)
{
  v2 = sub_10008526C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100085214()
{
  result = qword_100125E98;
  if (!qword_100125E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E98);
  }

  return result;
}

unint64_t sub_10008526C()
{
  result = qword_100125EA0;
  if (!qword_100125EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EA0);
  }

  return result;
}

unint64_t sub_1000852C0()
{
  result = qword_100125EA8;
  if (!qword_100125EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EA8);
  }

  return result;
}

unint64_t sub_100085318()
{
  result = qword_100125EB0;
  if (!qword_100125EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EB0);
  }

  return result;
}

unint64_t sub_100085374()
{
  result = qword_100125EB8;
  if (!qword_100125EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125EB8);
  }

  return result;
}

unint64_t sub_1000853C8(void *a1)
{
  a1[1] = sub_100085400();
  a1[2] = sub_100085454();
  result = sub_1000847E0();
  a1[3] = result;
  return result;
}

unint64_t sub_100085400()
{
  result = qword_100125F08;
  if (!qword_100125F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F08);
  }

  return result;
}

unint64_t sub_100085454()
{
  result = qword_100125F10;
  if (!qword_100125F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F10);
  }

  return result;
}

unint64_t sub_1000854AC()
{
  result = qword_100125F18;
  if (!qword_100125F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F18);
  }

  return result;
}

unint64_t sub_100085500(uint64_t a1)
{
  result = sub_100085528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100085528()
{
  result = qword_100125F50;
  if (!qword_100125F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F50);
  }

  return result;
}

unint64_t sub_1000855C4()
{
  result = qword_100125F68;
  if (!qword_100125F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F68);
  }

  return result;
}

unint64_t sub_10008561C()
{
  result = qword_100125F70;
  if (!qword_100125F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F70);
  }

  return result;
}

unint64_t sub_100085674()
{
  result = qword_100125F78;
  if (!qword_100125F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F78);
  }

  return result;
}

unint64_t sub_1000856CC()
{
  result = qword_100125F80;
  if (!qword_100125F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F80);
  }

  return result;
}

uint64_t sub_100085720@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_100086930();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsDownloadCellularQualityWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = qword_100125DF0;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_100048414();
  sub_10004872C();
  sub_1000847E0();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100125E00;
  v53 = off_100125E08;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_100085D8C@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100085E00@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122050 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C1D8;
  v21 = *(qword_10013C1D8 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_10002511C(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_1000860DC()
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10008618C()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_100125F98);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_100084BC8();
  v22 = sub_1000D157C();
  sub_100006334(&qword_100125FA0);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100048414();
  sub_1000D156C();
  return v22;
}

uint64_t sub_100086590()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadCellularQualityEntity;
  sub_100006334(&qword_100122D78);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100125E20);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125F88, &qword_100125F90);
  sub_100048414();
  sub_1000D178C();
  return v7;
}

unint64_t sub_1000868B4(uint64_t a1)
{
  result = sub_1000868DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000868DC()
{
  result = qword_100125FF0;
  if (!qword_100125FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125FF0);
  }

  return result;
}

unint64_t sub_100086930()
{
  result = qword_100125FF8;
  if (!qword_100125FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125FF8);
  }

  return result;
}

UIImage sub_100086994()
{
  sub_100086A14();
  v1._object = 0x80000001000DBDE0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  result.super.isa = sub_1000D380C(v1).super.isa;
  qword_10013C430 = result.super.isa;
  return result;
}

unint64_t sub_100086A14()
{
  result = qword_100126098;
  if (!qword_100126098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100126098);
  }

  return result;
}

uint64_t sub_100086A60(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v3 = qword_10013C430;
      v14 = xmmword_1000E9290;
      v4 = xmmword_1000E92A0;
    }

    else
    {
      if (qword_100122138 != -1)
      {
        swift_once();
      }

      v3 = qword_10013C430;
      v14 = xmmword_1000E9290;
      v4 = xmmword_1000E92B0;
    }

    v13 = v4;
    v10 = v3;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    v3 = 0;
    v13 = xmmword_1000E92A0;
    v14 = xmmword_1000E9290;
LABEL_15:
    v16._countAndFlagsBits = sub_1000D39BC();
    sub_1000D366C(v16);

    v15[0] = a2;
    v17._countAndFlagsBits = sub_1000D39BC();
    sub_1000D366C(v17);

    v8 = *(&v14 + 1);
    v9 = v14;
    v6 = *(&v13 + 1);
    v7 = v13;
    goto LABEL_16;
  }

  if (qword_100122138 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C430;
  v5 = qword_10013C430;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_16:
  v15[0] = v3;
  v15[1] = v9;
  v15[2] = v8;
  v15[3] = v7;
  v15[4] = v6;
  type metadata accessor for TVWidgetContentViewModel();
  swift_allocObject();
  v11 = sub_100089F08(v15);

  return v11;
}

void *sub_100086C78(uint64_t a1)
{
  v2 = sub_1000D323C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &_swiftEmptyArrayStorage;
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100086A60(0, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(3u, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(3u, 1);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 3;
LABEL_9:
    v8 = 2;
    goto LABEL_14;
  }

  if (v6 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_100086A60(0, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  if (v6 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_100086A60(2u, 0);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    sub_100086A60(1u, 1);
    sub_1000D36AC();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000D36DC();
    }

    sub_1000D36EC();
    v7 = 1;
    goto LABEL_9;
  }

  if (v6 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    (*(v3 + 8))(v5, v2);
    return &_swiftEmptyArrayStorage;
  }

  sub_100086A60(2u, 0);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 1);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 2);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 3);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 4);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  sub_100086A60(1u, 5);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  v7 = 1;
  v8 = 6;
LABEL_14:
  sub_100086A60(v7, v8);
  sub_1000D36AC();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000D36DC();
  }

  sub_1000D36EC();
  return v11;
}

id sub_100087254()
{
  type metadata accessor for TVSettingsDataProxy();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedPreferences];
  *(v0 + 16) = result;
  qword_10013C438 = v0;
  return result;
}

unint64_t sub_1000872B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000026;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0x6165707041707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100087560()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000875BC()
{
  sub_100006334(&qword_100126168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E5A70;
  sub_100006334(&qword_100122B38);
  *(inited + 32) = sub_1000D361C();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  sub_100006334(&qword_100122D80);
  *(inited + 56) = sub_1000D361C();
  *(inited + 64) = v2;
  *(inited + 72) = 3;
  sub_100006334(&qword_100122D88);
  *(inited + 80) = sub_1000D361C();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  sub_100006334(&qword_100122D98);
  *(inited + 104) = sub_1000D361C();
  *(inited + 112) = v4;
  *(inited + 120) = 4;
  sub_100006334(&qword_100122D68);
  *(inited + 128) = sub_1000D361C();
  *(inited + 136) = v5;
  *(inited + 144) = 5;
  sub_100006334(&qword_100122D78);
  *(inited + 152) = sub_1000D361C();
  *(inited + 160) = v6;
  *(inited + 168) = 6;
  sub_100006334(&qword_100122DA0);
  *(inited + 176) = sub_1000D361C();
  *(inited + 184) = v7;
  *(inited + 192) = 10;
  sub_100006334(&qword_1001228C8);
  *(inited + 200) = sub_1000D361C();
  *(inited + 208) = v8;
  *(inited + 216) = 7;
  sub_100006334(&qword_100122DB0);
  *(inited + 224) = sub_1000D361C();
  *(inited + 232) = v9;
  *(inited + 240) = 13;
  sub_100006334(&qword_100122D90);
  *(inited + 248) = sub_1000D361C();
  *(inited + 256) = v10;
  *(inited + 264) = 12;
  sub_100006334(&qword_100122D58);
  *(inited + 272) = sub_1000D361C();
  *(inited + 280) = v11;
  *(inited + 288) = 16;
  sub_100006334(&qword_100122D60);
  *(inited + 296) = sub_1000D361C();
  *(inited + 304) = v12;
  *(inited + 312) = 15;
  sub_100006334(&qword_100122DA8);
  *(inited + 320) = sub_1000D361C();
  *(inited + 328) = v13;
  *(inited + 336) = 19;
  sub_100006334(&qword_100122D70);
  *(inited + 344) = sub_1000D361C();
  *(inited + 352) = v14;
  *(inited + 360) = 20;
  v15 = sub_100024078(inited);
  swift_setDeallocating();
  sub_100006334(&qword_100126170);
  result = swift_arrayDestroy();
  off_1001260A0 = v15;
  return result;
}

uint64_t sub_10008796C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000872B0(*a1);
  v5 = v4;
  if (v3 == sub_1000872B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000D39CC();
  }

  return v8 & 1;
}

Swift::Int sub_1000879F4()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000872B0(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100087A58()
{
  sub_1000872B0(*v0);
  sub_1000D364C();
}

Swift::Int sub_100087AAC()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000872B0(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100087B0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100087D88();
  *a1 = result;
  return result;
}

unint64_t sub_100087B3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000872B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TVPreferencesStoreKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVPreferencesStoreKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100087CCC()
{
  result = qword_100126178;
  if (!qword_100126178)
  {
    sub_10000637C(&qword_100126180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126178);
  }

  return result;
}

unint64_t sub_100087D34()
{
  result = qword_100126188;
  if (!qword_100126188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126188);
  }

  return result;
}

uint64_t sub_100087D88()
{
  v0 = sub_1000D39EC();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

double sub_100087DDC(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_1000D323C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, enum case for WidgetFamily.systemLarge(_:), v3);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v8 = *(v4 + 8);
  v8(v6, v3);
  result = 18.0;
  if (v14 != v13 && (*(v2 + 72) & 1) == 0)
  {
    (v7)(v6, enum case for WidgetFamily.systemSmall(_:), v3, 18.0);
    sub_1000D369C();
    sub_1000D369C();
    v8(v6, v3);
    if (v14 == v13 || (v7(v6, enum case for WidgetFamily.systemMedium(_:), v3), sub_1000D369C(), sub_1000D369C(), v8(v6, v3), result = 0.0, v14 == v13))
    {
      v10 = sub_10001AC58();
      v11 = sub_1000D37FC();

      result = 14.0;
      if (v11)
      {
        return 17.0;
      }
    }
  }

  return result;
}

uint64_t sub_100088034@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D286C();
  v3 = sub_1000D287C();
  v4 = sub_1000D249C();
  sub_1000D249C();
  v5 = sub_1000D24CC();

  result = CTFontHasExuberatedLineHeight();
  *a1 = v2;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  return result;
}

__n128 sub_1000880CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000880F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100088138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008819C()
{
  v0 = sub_1000D1DBC();
  sub_1000065AC(v0, qword_10013C440);
  v1 = sub_100006610(v0, qword_10013C440);
  v2 = enum case for DynamicTypeSize.xxxLarge(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

__n128 sub_100088234(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100088250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100088298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000882FC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v40 = a3;
  v10 = sub_1000D1DDC();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D1DBC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v41 = &v38 - v18;
  v43 = 0;
  v44 = 0xE000000000000000;
  if (a2)
  {
    v45._countAndFlagsBits = a1;
    v45._object = a2;
    sub_1000D366C(v45);
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    sub_1000D366C(v46);
  }

  v47._countAndFlagsBits = 0x38383A383838;
  v47._object = 0xE600000000000000;
  sub_1000D366C(v47);
  if (a4)
  {
    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    v48._countAndFlagsBits = v40;
    v48._object = a4;
    sub_1000D366C(v48);
    sub_1000D366C(v42);
  }

  v40 = v10;
  if (qword_100121F40 != -1)
  {
    swift_once();
  }

  v19 = sub_100006610(v13, qword_10013BF68);
  sub_100043508();
  v20 = sub_1000D354C();
  v21 = *(v14 + 16);
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = a5;
  }

  v21(v17, v22, v13);
  if (qword_100122150 != -1)
  {
    swift_once();
  }

  v23 = sub_100006610(v13, qword_10013C440);
  v24 = sub_1000D353C();
  v25 = v41;
  if (v24)
  {
    v21(v41, v23, v13);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v14 + 32))(v41, v17, v13);
  }

  v26 = v39;
  v27 = sub_10001AC58();
  v28 = v40;
  (*(v26 + 16))(v12, v38, v40);
  v29 = (*(v26 + 88))(v12, v28);
  if (v29 != enum case for LegibilityWeight.regular(_:) && v29 != enum case for LegibilityWeight.bold(_:))
  {
    (*(v26 + 8))(v12, v28);
  }

  v30 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v27];
  v31 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v30];
  v32 = objc_opt_self();
  [v31 pointSize];
  v33 = [v32 monospacedDigitSystemFontOfSize:? weight:?];

  v34 = v33;
  sub_1000D368C();
  v36 = v35;

  (*(v14 + 8))(v25, v13);
  return v36;
}

unint64_t sub_100088808()
{
  result = qword_100126190;
  if (!qword_100126190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126190);
  }

  return result;
}

unint64_t sub_10008885C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v6 = sub_1000889BC();
    v7 = v2;
    v8._countAndFlagsBits = 45;
    v8._object = 0xE100000000000000;
    sub_1000D366C(v8);
    if (*(v0 + 24))
    {
      v3._countAndFlagsBits = 1702195828;
    }

    else
    {
      v3._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 24))
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    v3._object = v4;
    sub_1000D366C(v3);

    v1 = v6;
    *(v0 + 32) = v6;
    *(v0 + 40) = v7;
  }

  return v1;
}

uint64_t sub_10008892C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100088990@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008885C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000889BC()
{
  v1 = (v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  if (*(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_100088A38(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

unint64_t sub_100088A38(uint64_t a1)
{
  v2 = sub_1000D191C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100122DB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = *(a1 + 73);
  v10 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  swift_beginAccess();
  sub_10000F8D0(a1 + v10, v8, &qword_100122DB8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10000F938(v8, &qword_100122DB8);
    v11 = *(a1 + 24);
    if (!v11)
    {
      return 0xD00000000000001ELL;
    }

    v12 = *(a1 + 40);
    if (!v12)
    {
      return 0xD00000000000001ELL;
    }

    v13 = *(a1 + 32);
    v21 = *(a1 + 16);
    v22 = v11;

    v23._countAndFlagsBits = 45;
    v23._object = 0xE100000000000000;
    sub_1000D366C(v23);
    v24._countAndFlagsBits = v13;
    v24._object = v12;
    sub_1000D366C(v24);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10000F938(v8, &qword_100122DB8);
    v15 = sub_1000D18EC();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21 = v15;
    v22 = v17;
  }

  v25._countAndFlagsBits = 45;
  v25._object = 0xE100000000000000;
  sub_1000D366C(v25);
  if (v9)
  {
    v18._countAndFlagsBits = 1702195828;
  }

  else
  {
    v18._countAndFlagsBits = 0x65736C6166;
  }

  if (v9)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v18._object = v19;
  sub_1000D366C(v18);

  return v21;
}

uint64_t sub_100088CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D181C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = sub_100006334(&qword_100126500);
  __chkstk_darwin(v11 - 8);
  v13 = v28 - v12;
  v14 = sub_1000D186C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D184C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000F938(v13, &qword_100126500);
    v18 = sub_1000D191C();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a2, a1, v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }

  else
  {
    v28[0] = v8;
    v28[1] = a2;
    (*(v15 + 32))(v17, v13, v14);
    v21 = sub_1000D182C();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = &_swiftEmptyArrayStorage;
    }

    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      sub_1000D360C();
    }

    sub_1000D180C();

    v25 = v28[0];
    (*(v5 + 16))(v28[0], v10, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100089D30(0, v22[2] + 1, 1, v22);
    }

    v27 = v22[2];
    v26 = v22[3];
    if (v27 >= v26 >> 1)
    {
      v22 = sub_100089D30(v26 > 1, v27 + 1, 1, v22);
    }

    v22[2] = v27 + 1;
    (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v25, v4);
    sub_1000D183C();
    sub_1000D185C();
    (*(v5 + 8))(v10, v4);
    return (*(v15 + 8))(v17, v14);
  }
}

id sub_100089104()
{
  v1 = v0;
  v2 = sub_100006334(&qword_1001264F8);
  __chkstk_darwin(v2 - 8);
  v68 = &v62 - v3;
  v4 = sub_100006334(&qword_100122E90);
  v5 = __chkstk_darwin(v4 - 8);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v62 - v8;
  __chkstk_darwin(v7);
  v10 = &v62 - v9;
  v11 = sub_1000D19FC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v62 - v17;
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  swift_beginAccess();
  v22 = v12;
  sub_10000F8D0(v1 + v21, v10, &qword_100122E90);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    return sub_10000F938(v10, &qword_100122E90);
  }

  v64 = v23;
  (*(v22 + 32))(v20, v10, v11);
  sub_1000D19EC();
  sub_1000D19DC();
  v26 = (v22 + 8);
  v25 = *(v22 + 8);
  v25(v15, v11);
  v27 = v22;
  v28 = sub_1000D199C();
  v25(v18, v11);
  v62 = v18;
  v63 = v27;
  v65 = v25;
  if (v28)
  {
    *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 1;
    sub_1000D19EC();
    sub_1000D19DC();
    v25(v15, v11);
    v29 = sub_1000D199C();
    v25(v18, v11);
    if (v29)
    {
      v30 = v63;
      v31 = v69;
      (*(v63 + 16))(v69, v20, v11);
      (*(v30 + 56))(v31, 0, 1, v11);
      v32 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
      swift_beginAccess();
      v33 = v1 + v32;
      v34 = v31;
    }

    else
    {
      v37 = v69;
      sub_1000D19DC();
      (*(v63 + 56))(v37, 0, 1, v11);
      v38 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
      swift_beginAccess();
      v33 = v1 + v38;
      v34 = v37;
    }

    sub_10007701C(v34, v33, &qword_100122E90);
    swift_endAccess();
  }

  else
  {
    v35 = v69;
    sub_1000D19DC();
    (*(v27 + 56))(v35, 0, 1, v11);
    v36 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
    swift_beginAccess();
    sub_10007701C(v35, v1 + v36, &qword_100122E90);
    swift_endAccess();
  }

  v69 = v26;
  v66 = v20;
  result = sub_100002C80();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v39 = result;
  sub_100006334(&qword_100122C50);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000E3AA0;
  v42 = *(v1 + 16);
  v41 = *(v1 + 24);
  *(v40 + 56) = &type metadata for String;
  v43 = sub_100018744();
  *(v40 + 64) = v43;
  if (v41)
  {
    v44 = v42;
  }

  else
  {
    v44 = 7104878;
  }

  v45 = 0xE300000000000000;
  if (v41)
  {
    v45 = v41;
  }

  *(v40 + 32) = v44;
  *(v40 + 40) = v45;
  v46 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate;
  swift_beginAccess();
  v47 = v1 + v46;
  v48 = v67;
  sub_10000F8D0(v47, v67, &qword_100122E90);
  if (v64(v48, 1, v11))
  {

    sub_10000F938(v48, &qword_100122E90);
    v49 = (v40 + 72);
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v43;
    v50 = v68;
    v51 = v65;
  }

  else
  {
    v53 = v62;
    (*(v63 + 16))(v62, v48, v11);

    sub_10000F938(v48, &qword_100122E90);
    v50 = v68;
    sub_1000D1A1C();
    v54 = sub_1000D1A2C();
    (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
    v55 = sub_1000D194C();
    v52 = v56;
    sub_10000F938(v50, &qword_1001264F8);
    v51 = v65;
    v65(v53, v11);
    v49 = (v40 + 72);
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v43;
    if (v52)
    {
      *v49 = v55;
      goto LABEL_20;
    }
  }

  *v49 = 7104878;
  v52 = 0xE300000000000000;
LABEL_20:
  *(v40 + 80) = v52;
  sub_1000D1A1C();
  v57 = sub_1000D1A2C();
  (*(*(v57 - 8) + 56))(v50, 0, 1, v57);
  v58 = v66;
  v59 = sub_1000D194C();
  v61 = v60;
  sub_10000F938(v50, &qword_1001264F8);
  *(v40 + 136) = &type metadata for String;
  *(v40 + 144) = v43;
  *(v40 + 112) = v59;
  *(v40 + 120) = v61;
  sub_1000D37AC();
  sub_1000D1B2C();

  return v51(v58, v11);
}

uint64_t sub_1000898E0(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a1 & 1) != 0 && a3 >> 60 != 15)
  {
    v8 = objc_allocWithZone(UIImage);
    sub_10003C490(a2, a3);
    sub_10003C490(a2, a3);
    isa = sub_1000D192C().super.isa;
    v10 = [v8 initWithData:isa];

    sub_10003C3F4(a2, a3);
    if (v10)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      sub_10003C3F4(a2, a3);
      if (Strong)
      {
        v12 = *(Strong + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image);
        *(Strong + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = v10;
      }

      else
      {
      }
    }

    else
    {
      sub_10003C3F4(a2, a3);
    }
  }

  return a5();
}

uint64_t sub_100089A10()
{

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL, &qword_100122DB8);
  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate, &qword_100122E90);

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, &qword_100122E90);

  sub_10000F938(v0 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, &qword_100122DB8);

  return v0;
}

uint64_t sub_100089B10()
{
  sub_100089A10();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWidgetContentViewModel()
{
  result = qword_100126298;
  if (!qword_100126298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100089BBC()
{
  sub_100019A48(319, &qword_100122E28, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_100019A48(319, &qword_100122F10, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100089D04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000889BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

size_t sub_100089D30(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006334(&qword_100126508);
  v10 = *(sub_1000D181C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000D181C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100089F08(uint64_t *a1)
{
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 73) = 514;
  v3 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  v4 = sub_1000D191C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  v7 = sub_1000D19FC();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = 0;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 0;
  v8(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, 1, 1, v7);
  v10 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_cropCode);
  *v10 = 0;
  v10[1] = 0;
  v5(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, 1, 1, v4);
  v11 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  *v11 = 0;
  v11[1] = 0;
  v12 = *(a1 + 1);
  v17 = *(a1 + 3);
  v13 = v17;
  v18 = v12;
  *(v1 + 16) = v12;
  *(v1 + 32) = v13;
  v16 = *a1;
  *(v1 + v9) = v16;
  sub_10000F8D0(&v18, v15, &qword_1001264E8);
  sub_10000F8D0(&v17, v15, &qword_1001264E8);
  sub_10000F8D0(&v16, v15, &qword_1001264F0);
  return v1;
}

uint64_t sub_10008A0FC(void *a1)
{
  v3 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v3 - 8);
  v62 = &v55 - v4;
  v5 = sub_1000D191C();
  v55 = *(v5 - 8);
  v6 = v55;
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100122DB8);
  __chkstk_darwin(v9 - 8);
  v57 = &v55 - v10;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 73) = 514;
  v56 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  v11 = *(v6 + 56);
  v11(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL, 1, 1, v5);
  v12 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  v13 = sub_1000D19FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v61 = v12;
  v15(v1 + v12, 1, 1, v13);
  v63 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image) = 0;
  *(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) = 0;
  v59 = v15;
  v60 = v13;
  v58 = v16;
  v15(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_refreshDate, 1, 1, v13);
  v17 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_cropCode);
  *v17 = 0;
  v17[1] = 0;
  v11(v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_imageUrl, 1, 1, v5);
  v18 = (v1 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel____lazy_storage___id);
  *v18 = 0;
  v18[1] = 0;
  v19 = [a1 title];
  v20 = sub_1000D360C();
  v22 = v21;

  *(v1 + 16) = v20;
  *(v1 + 24) = v22;

  v23 = [a1 subtitleComposed];
  v24 = sub_1000D360C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = &selRef_subtitleComposed;
  }

  else
  {
    v28 = &selRef_subtitle;
  }

  v29 = [a1 *v28];
  v30 = sub_1000D360C();
  v32 = v31;

  *(v1 + 32) = v30;
  *(v1 + 40) = v32;

  v33 = [a1 imageURLTemplate];
  v34 = sub_1000D360C();
  v36 = v35;

  *(v1 + 48) = v34;
  *(v1 + 56) = v36;

  [a1 imageAspectRatio];
  *(v1 + 64) = v37;
  *(v1 + 72) = 0;
  v38 = [a1 actionURL];
  sub_1000D18FC();

  v39 = v57;
  sub_100088CD8(v8, v57);
  (*(v55 + 8))(v8, v5);
  v40 = v56;
  swift_beginAccess();
  sub_10007701C(v39, v1 + v40, &qword_100122DB8);
  swift_endAccess();
  *(v1 + 73) = [a1 isLiveEvent];
  v41 = [a1 rentalExpirationDate];
  v42 = v62;
  if (v41)
  {
    v43 = v41;
    sub_1000D19CC();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v59(v42, v44, 1, v60);
  v45 = v61;
  swift_beginAccess();
  sub_10007701C(v42, v1 + v45, &qword_100122E90);
  swift_endAccess();
  *(v1 + 74) = [a1 isNewEpisode];
  v46 = [a1 cropCode];
  if (v46)
  {
    v47 = v46;
    v48 = sub_1000D360C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *v17 = v48;
  v17[1] = v50;

  if (qword_100122138 != -1)
  {
    swift_once();
  }

  v51 = qword_10013C430;
  v52 = *(v1 + v63);
  *(v1 + v63) = qword_10013C430;
  v53 = v51;

  sub_100089104();
  return v1;
}

id sub_10008A688(void *a1, CGFloat a2, CGFloat a3)
{
  UIGraphicsBeginImageContextWithOptions(*&a2, 0, 0.0);
  [a1 setFill];
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a2;
  v11.size.height = a3;
  UIRectFill(v11);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v6)
  {
    v7 = [(UIImage *)v6 CGImage];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage:v7];

      return v9;
    }
  }

  return 0;
}

unint64_t sub_10008A76C()
{
  result = qword_100126530;
  if (!qword_100126530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126530);
  }

  return result;
}

uint64_t sub_10008A804()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C488);
  sub_100006610(v10, qword_10013C488);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10008AAEC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C4A0);
  sub_100006610(v0, qword_10013C4A0);
  return sub_1000D188C();
}

uint64_t sub_10008AB50()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C4B8);
  v1 = sub_100006610(v0, qword_10013C4B8);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10008AC10()
{
  result = swift_getKeyPath();
  qword_10013C4D0 = result;
  return result;
}

uint64_t sub_10008AC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10008AC5C, 0, 0);
}

uint64_t sub_10008AC5C()
{
  sub_1000D154C();
  v0[5] = v0[2];
  v1 = v0[3];
  v2 = v0[4];
  v0[17] = v1;
  v0[18] = v2;
  v0[6] = v1;
  v0[7] = v2;
  sub_1000D154C();
  if (qword_100122170 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C4D0;
  v0[19] = qword_10013C4D0;

  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = sub_10000FC38(&qword_1001266A8, &qword_1001266B0);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_10008ADBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 28, v3, &type metadata for TVSettingsAppAppearance, v5);
}

uint64_t sub_10008ADBC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10008AF2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008AF2C()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C4D0;
  v0[25] = qword_10013C4D0;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_10008B010;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 225, v4, v6);
}

uint64_t sub_10008B010()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008B180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008B180()
{
  *(v0 + 226) = *(v0 + 225);
  sub_100046508();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10008B208(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10008B27C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10008B2F0()
{
  if (qword_100122170 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10008B350()
{
  result = qword_100126548;
  if (!qword_100126548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126548);
  }

  return result;
}

unint64_t sub_10008B3A8()
{
  result = qword_100126550;
  if (!qword_100126550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126550);
  }

  return result;
}

uint64_t sub_10008B4B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122168 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C4B8);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10008B53C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10008AC38(a1, v5, v4);
}

uint64_t sub_10008B5E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D104();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008B630()
{
  result = qword_100126558;
  if (!qword_100126558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126558);
  }

  return result;
}

unint64_t sub_10008B688()
{
  result = qword_100126560;
  if (!qword_100126560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126560);
  }

  return result;
}

uint64_t sub_10008B6FC()
{
  **(v0 + 16) = sub_1000A35C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B7A8()
{
  sub_1000A4050(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B844()
{
  v1 = *(v0 + 16);
  *v1 = sub_10008D508();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10008B8B0()
{
  result = qword_100126568;
  if (!qword_100126568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126568);
  }

  return result;
}

uint64_t sub_10008B904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008C624();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10008B9B8()
{
  result = qword_100126570;
  if (!qword_100126570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126570);
  }

  return result;
}

unint64_t sub_10008BA10()
{
  result = qword_100126578;
  if (!qword_100126578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126578);
  }

  return result;
}

unint64_t sub_10008BA64()
{
  result = qword_100126580;
  if (!qword_100126580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126580);
  }

  return result;
}

uint64_t sub_10008BAB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008C624();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10008BB6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008C624();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10008BC20()
{
  result = qword_100126588;
  if (!qword_100126588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126588);
  }

  return result;
}

unint64_t sub_10008BC74()
{
  result = qword_100126590;
  if (!qword_100126590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126590);
  }

  return result;
}

unint64_t sub_10008BCCC()
{
  result = qword_100126598;
  if (!qword_100126598)
  {
    sub_10000637C(&qword_1001265A0);
    sub_10008BC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126598);
  }

  return result;
}

uint64_t sub_10008BD50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008B8B0();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10008BE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013B8C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10008BF2C(uint64_t a1)
{
  v2 = sub_10008C47C();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008BA64();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10008BFD4()
{
  sub_10008C3A8();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10008C078(uint64_t a1)
{
  v2 = sub_10008BA64();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10008C0C4(uint64_t a1)
{
  v2 = sub_10008B688();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10008C110(uint64_t a1)
{
  v2 = sub_10008C1B8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008C160()
{
  result = qword_1001265B8;
  if (!qword_1001265B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265B8);
  }

  return result;
}

unint64_t sub_10008C1B8()
{
  result = qword_1001265C0;
  if (!qword_1001265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265C0);
  }

  return result;
}

unint64_t sub_10008C20C()
{
  result = qword_1001265C8;
  if (!qword_1001265C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265C8);
  }

  return result;
}

unint64_t sub_10008C264()
{
  result = qword_1001265D0;
  if (!qword_1001265D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265D0);
  }

  return result;
}

unint64_t sub_10008C2C8()
{
  result = qword_1001265D8;
  if (!qword_1001265D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001265D8);
  }

  return result;
}

unint64_t sub_10008C31C(void *a1)
{
  a1[1] = sub_10008C354();
  a1[2] = sub_10008C3A8();
  result = sub_10008B688();
  a1[3] = result;
  return result;
}

unint64_t sub_10008C354()
{
  result = qword_100126628;
  if (!qword_100126628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126628);
  }

  return result;
}

unint64_t sub_10008C3A8()
{
  result = qword_100126630;
  if (!qword_100126630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126630);
  }

  return result;
}

unint64_t sub_10008C400()
{
  result = qword_100126638;
  if (!qword_100126638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126638);
  }

  return result;
}

unint64_t sub_10008C454(uint64_t a1)
{
  result = sub_10008C47C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008C47C()
{
  result = qword_100126670;
  if (!qword_100126670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126670);
  }

  return result;
}

unint64_t sub_10008C518()
{
  result = qword_100126688;
  if (!qword_100126688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126688);
  }

  return result;
}

unint64_t sub_10008C570()
{
  result = qword_100126690;
  if (!qword_100126690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126690);
  }

  return result;
}

unint64_t sub_10008C5C8()
{
  result = qword_100126698;
  if (!qword_100126698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126698);
  }

  return result;
}

unint64_t sub_10008C624()
{
  result = qword_1001266A0;
  if (!qword_1001266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001266A0);
  }

  return result;
}

uint64_t sub_10008C678@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_10008D8A4();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsAppAppearanceWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = *aAppAppearance;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_1000464B4();
  sub_100046808();
  sub_10008B688();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100126520;
  v53 = off_100126528;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_10008CCE4@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10008CD58@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122030 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C198;
  v21 = *(qword_10013C198 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_100023520(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_10008D034()
{
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_10008D104()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001266B8);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008BA64();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001266C0);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 3;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_1000464B4();
  sub_1000D156C();
  return v22;
}

uint64_t sub_10008D508()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsAppAppearanceEntity;
  sub_100006334(&qword_100122D70);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100126540);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_1001266A8, &qword_1001266B0);
  sub_1000464B4();
  sub_1000D178C();
  return v7;
}

unint64_t sub_10008D828(uint64_t a1)
{
  result = sub_10008D850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008D850()
{
  result = qword_100126710;
  if (!qword_100126710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126710);
  }

  return result;
}

unint64_t sub_10008D8A4()
{
  result = qword_100126718;
  if (!qword_100126718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126718);
  }

  return result;
}

unint64_t sub_10008D90C()
{
  result = qword_100126720;
  if (!qword_100126720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126720);
  }

  return result;
}

uint64_t sub_10008D9A4()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C4D8);
  sub_100006610(v10, qword_10013C4D8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10008DC94()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C4F0);
  sub_100006610(v0, qword_10013C4F0);
  return sub_1000D188C();
}

uint64_t sub_10008DCF8()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C508);
  v1 = sub_100006610(v0, qword_10013C508);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10008DDB8()
{
  result = swift_getKeyPath();
  qword_10013C520 = result;
  return result;
}

uint64_t sub_10008DDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10008DE04, 0, 0);
}

uint64_t sub_10008DE04()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100122190 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C520;
  *(v0 + 152) = qword_10013C520;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100126898, &qword_1001268A0);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_10008DF70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for VideosDownloadWiFiQuality, v5);
}

uint64_t sub_10008DF70()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10008E0E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E0E0()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C520;
  v0[25] = qword_10013C520;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_10008E1C4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_10008E1C4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_10008E334;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E334()
{
  *(v0 + 227) = *(v0 + 226);
  sub_1000489A0();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10008E3BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10008E430(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10008E4A4()
{
  if (qword_100122190 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10008E504()
{
  result = qword_100126738;
  if (!qword_100126738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126738);
  }

  return result;
}

unint64_t sub_10008E55C()
{
  result = qword_100126740;
  if (!qword_100126740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126740);
  }

  return result;
}

uint64_t sub_10008E66C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122188 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C508);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10008E6F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10008DDE0(a1, v5, v4);
}

uint64_t sub_10008E79C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009035C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008E7E4()
{
  result = qword_100126748;
  if (!qword_100126748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126748);
  }

  return result;
}

unint64_t sub_10008E83C()
{
  result = qword_100126750;
  if (!qword_100126750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126750);
  }

  return result;
}

uint64_t sub_10008E8B0()
{
  **(v0 + 16) = sub_1000A37A8() & 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E960()
{
  sub_1000A4318(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E9FC()
{
  v1 = *(v0 + 16);
  *v1 = sub_100090760();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10008EA6C()
{
  result = qword_100126758;
  if (!qword_100126758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126758);
  }

  return result;
}

uint64_t sub_10008EAC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008F728();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10008EB74()
{
  result = qword_100126760;
  if (!qword_100126760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126760);
  }

  return result;
}

unint64_t sub_10008EBCC()
{
  result = qword_100126768;
  if (!qword_100126768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126768);
  }

  return result;
}

unint64_t sub_10008EC24()
{
  result = qword_100126770;
  if (!qword_100126770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126770);
  }

  return result;
}

uint64_t sub_10008EC78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008F728();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10008ED2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008F728();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10008EDE0()
{
  result = qword_100126778;
  if (!qword_100126778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126778);
  }

  return result;
}

unint64_t sub_10008EE38()
{
  result = qword_100126780;
  if (!qword_100126780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126780);
  }

  return result;
}

unint64_t sub_10008EE90()
{
  result = qword_100126788;
  if (!qword_100126788)
  {
    sub_10000637C(&qword_100126790);
    sub_10008EE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126788);
  }

  return result;
}

uint64_t sub_10008EF14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008EA6C();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10008F03C(uint64_t a1)
{
  v2 = sub_10008F584();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10008EC24();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10008F0E4()
{
  sub_10008F4B0();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10008F188(uint64_t a1)
{
  v2 = sub_10008EC24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10008F1D4(uint64_t a1)
{
  v2 = sub_10008E83C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10008F220(uint64_t a1)
{
  v2 = sub_10008F2C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008F270()
{
  result = qword_1001267A8;
  if (!qword_1001267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267A8);
  }

  return result;
}

unint64_t sub_10008F2C8()
{
  result = qword_1001267B0;
  if (!qword_1001267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267B0);
  }

  return result;
}

unint64_t sub_10008F31C()
{
  result = qword_1001267B8;
  if (!qword_1001267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267B8);
  }

  return result;
}

unint64_t sub_10008F374()
{
  result = qword_1001267C0;
  if (!qword_1001267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267C0);
  }

  return result;
}

unint64_t sub_10008F3D0()
{
  result = qword_1001267C8;
  if (!qword_1001267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001267C8);
  }

  return result;
}

unint64_t sub_10008F424(void *a1)
{
  a1[1] = sub_10008F45C();
  a1[2] = sub_10008F4B0();
  result = sub_10008E83C();
  a1[3] = result;
  return result;
}

unint64_t sub_10008F45C()
{
  result = qword_100126818;
  if (!qword_100126818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126818);
  }

  return result;
}

unint64_t sub_10008F4B0()
{
  result = qword_100126820;
  if (!qword_100126820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126820);
  }

  return result;
}

unint64_t sub_10008F508()
{
  result = qword_100126828;
  if (!qword_100126828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126828);
  }

  return result;
}

unint64_t sub_10008F55C(uint64_t a1)
{
  result = sub_10008F584();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008F584()
{
  result = qword_100126860;
  if (!qword_100126860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126860);
  }

  return result;
}

unint64_t sub_10008F620()
{
  result = qword_100126878;
  if (!qword_100126878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126878);
  }

  return result;
}

unint64_t sub_10008F678()
{
  result = qword_100126880;
  if (!qword_100126880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126880);
  }

  return result;
}

unint64_t sub_10008F6D0()
{
  result = qword_100126888;
  if (!qword_100126888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126888);
  }

  return result;
}

unint64_t sub_10008F728()
{
  result = qword_100126890;
  if (!qword_100126890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126890);
  }

  return result;
}

void sub_10008F77C()
{
  sub_1000D38DC(19);
  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DC280;
  v4._countAndFlagsBits = 0xD000000000000011;
  sub_1000D366C(v4);
  qword_10013C528 = 0;
  unk_10013C530 = 0xE000000000000000;
}

void sub_10008F82C()
{
  sub_1000D38DC(35);

  v0 = WLKIsRegulatedSKU();
  v1 = v0 == 0;
  if (v0)
  {
    v2._countAndFlagsBits = 1312902231;
  }

  else
  {
    v2._countAndFlagsBits = 0x69462D6957;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  v4._object = 0x80000001000DC260;
  v4._countAndFlagsBits = 0xD000000000000016;
  sub_1000D366C(v4);
  qword_10013C538 = 0x742065736F6F6843;
  unk_10013C540 = 0xEB00000000206568;
}

uint64_t sub_10008F8FC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - v3;
  v36 = sub_100006334(&qword_100122968);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v27 = v25 - v4;
  v38 = sub_100006334(&qword_100122970);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = v25 - v5;
  v37 = sub_100006334(&qword_100122978);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v25 - v6;
  strcpy(v40, "com.apple.tv.");
  HIWORD(v40[1]) = -4864;
  v7 = sub_100090B04();
  v26 = *(v7 + 40);
  v47._countAndFlagsBits = (v26)(&type metadata for TVSettingsDownloadWifiQualityWidget, v7);
  sub_1000D366C(v47);

  v25[2] = v40[0];
  v25[1] = v40[1];
  if (qword_100122198 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_10004894C();
  sub_100048CA0();
  sub_10008E83C();
  sub_100013998();
  v8 = v28;
  sub_1000D32CC();
  v40[0] = v26();
  v40[1] = v9;
  v45 = 0x746567646957;
  v46 = 0xE600000000000000;
  v43 = 0x656C67676F54;
  v44 = 0xE600000000000000;
  v10 = sub_10000F320();
  v11 = sub_1000D387C();
  v13 = v12;

  v40[0] = v11;
  v40[1] = v13;
  v14 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v15 = v27;
  v16 = v30;
  sub_1000D223C();

  (*(v29 + 8))(v8, v16);
  if (qword_1001221A0 != -1)
  {
    swift_once();
  }

  v45 = qword_10013C538;
  v46 = unk_10013C540;
  v40[0] = v16;
  v40[1] = &type metadata for String;
  v41 = v14;
  v42 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v31;
  v19 = v36;
  sub_1000D21FC();
  (*(v33 + 8))(v15, v19);
  v40[0] = v19;
  v40[1] = &type metadata for String;
  v41 = OpaqueTypeConformance2;
  v42 = v10;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v32;
  v22 = v38;
  sub_1000D224C();
  (*(v34 + 8))(v18, v22);
  v40[0] = v22;
  v40[1] = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v37;
  sub_1000D227C();
  return (*(v35 + 8))(v21, v23);
}

uint64_t sub_10008FFD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122198 != -1)
  {
    swift_once();
  }

  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10009007C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122040 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C1B8;
  v21 = *(qword_10013C1B8 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_10002511C(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_10009035C()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001268A8);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_10008EC24();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001268B0);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = 2;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_10004894C();
  sub_1000D156C();
  return v22;
}

uint64_t sub_100090760()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadWifiQualityEntity;
  sub_100006334(&qword_100122D68);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100126730);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100126898, &qword_1001268A0);
  sub_10004894C();
  sub_1000D178C();
  return v7;
}

unint64_t sub_100090A88(uint64_t a1)
{
  result = sub_100090AB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100090AB0()
{
  result = qword_100126900;
  if (!qword_100126900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126900);
  }

  return result;
}

unint64_t sub_100090B04()
{
  result = qword_100126908;
  if (!qword_100126908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126908);
  }

  return result;
}

uint64_t sub_100090B68()
{
  sub_1000D2CFC();
  sub_100097C0C();
  v0 = objc_allocWithZone(sub_1000D317C());
  result = sub_1000D316C();
  qword_100126910 = result;
  return result;
}

uint64_t sub_100090BC4()
{
  v0 = sub_1000D314C();
  __chkstk_darwin(v0 - 8);
  sub_1000D2CFC();
  sub_100097C0C();
  v1 = objc_allocWithZone(sub_1000D317C());
  v2 = sub_1000D316C();
  sub_1000D313C();
  result = sub_1000D315C();
  qword_100126918 = v2;
  return result;
}

id sub_100090C78()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:0];
  result = [v0 setTimeStyle:1];
  qword_100126920 = v0;
  return result;
}

id sub_100090CDC(uint64_t a1, int a2, uint64_t a3)
{
  v64[1] = a3;
  v68 = a2;
  v4 = sub_1000D318C();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v65 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100126928);
  __chkstk_darwin(v6 - 8);
  v8 = v64 - v7;
  v9 = sub_1000D312C();
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D305C();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = __chkstk_darwin(v12);
  v71 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = v64 - v15;
  v16 = sub_1000D2EBC();
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v76 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100006334(&qword_100126930);
  __chkstk_darwin(v18 - 8);
  v20 = v64 - v19;
  v21 = sub_1000D2D5C();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v64 - v26;
  v28 = a1;
  v30 = v29;
  sub_10000F8D0(v28, v20, &qword_100126930);
  if ((*(v22 + 48))(v20, 1, v30) == 1)
  {
    v31 = &qword_100126930;
    v32 = v20;
LABEL_3:
    sub_10000F938(v32, v31);
    return 0;
  }

  (*(v22 + 32))(v27, v20, v30);
  (*(v22 + 16))(v25, v27, v30);
  if ((*(v22 + 88))(v25, v30) != enum case for SportsActivityClock.soccer(_:))
  {
    v40 = *(v22 + 8);
    v40(v27, v30);
    v40(v25, v30);
    return 0;
  }

  v64[0] = v27;
  (*(v22 + 96))(v25, v30);
  v33 = v74;
  v34 = v76;
  v35 = v25;
  v36 = v75;
  (*(v74 + 32))(v76, v35, v75);
  v37 = v30;
  sub_1000D2E9C();
  sub_1000D311C();
  (*(v70 + 8))(v11, v9);
  v38 = v72;
  v39 = v73;
  if ((*(v72 + 48))(v8, 1, v73) == 1)
  {
    (*(v33 + 8))(v34, v36);
    (*(v22 + 8))(v64[0], v30);
    v31 = &qword_100126928;
    v32 = v8;
    goto LABEL_3;
  }

  v42 = v69;
  (*(v38 + 32))(v69, v8, v39);
  (*(v38 + 104))(v71, enum case for SportingEventClockPeriodType.shootouts(_:), v39);
  sub_100097BC4(&qword_100126938, &type metadata accessor for SportingEventClockPeriodType);
  sub_1000D369C();
  sub_1000D369C();
  if (v79 == v77 && v80 == v78)
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_1000D39CC();
  }

  v44 = v76;
  v45 = *(v38 + 8);
  v45(v71, v39);

  if ((v43 & 1) == 0)
  {
    v45(v42, v39);
    (*(v74 + 8))(v44, v75);
    (*(v22 + 8))(v64[0], v30);
    return 0;
  }

  v46 = sub_1000D2D7C();
  v48 = v65;
  v47 = v66;
  v49 = v67;
  (*(v66 + 104))(v65, enum case for SportingEventCompetitorScoreStatisticType.StatisticName.shootout(_:), v67);
  if (*(v46 + 16) && (v50 = sub_100023678(v48), (v51 & 1) != 0))
  {
    v52 = v48;
    v53 = *(*(v46 + 56) + 8 * v50);
    (*(v47 + 8))(v52, v49);
  }

  else
  {

    (*(v47 + 8))(v48, v49);
    v53 = 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v54 = result;
    v55 = sub_1000D35FC();
    v56 = [v54 localizedStringForKey:v55];

    if (v56)
    {
      v57 = sub_1000D360C();
      v59 = v58;
    }

    else
    {
      v59 = 0xE100000000000000;
      v57 = 80;
    }

    if (v68 == 2)
    {
      v79 = v57;
      v80 = v59;
      v77 = v53;
      v81._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v81);

      v60 = v79;
      v45(v42, v39);
      (*(v74 + 8))(v76, v75);
      (*(v22 + 8))(v64[0], v37);
      return v60;
    }

    else
    {
      if (v68)
      {
        v79 = v57;
        v80 = v59;
        v82._countAndFlagsBits = 32;
        v82._object = 0xE100000000000000;
        sub_1000D366C(v82);
        v77 = v53;
        v61._countAndFlagsBits = sub_1000D39BC();
      }

      else
      {
        v77 = v53;
        v79 = sub_1000D39BC();
        v80 = v62;
        v83._countAndFlagsBits = 32;
        v83._object = 0xE100000000000000;
        sub_1000D366C(v83);
        v61._countAndFlagsBits = v57;
        v61._object = v59;
      }

      sub_1000D366C(v61);

      v63 = v79;
      v45(v42, v39);
      (*(v74 + 8))(v76, v75);
      (*(v22 + 8))(v64[0], v37);
      return v63;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}