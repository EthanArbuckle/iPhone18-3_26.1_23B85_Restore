uint64_t sub_1006A00FC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1006A0884;
  }

  else
  {
    v2 = sub_1006A0210;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A0210()
{
  sub_100007484(v0 + 16, v0 + 48);
  sub_1001F1160(&qword_100AD6710);
  if (!swift_dynamicCast())
  {
    v31 = *(v0 + 400);
    sub_1006A0C2C();
    swift_allocError();
    *v32 = 0;
LABEL_21:
    swift_willThrow();

LABEL_22:
    sub_1000074E0(v0 + 16);

    v34 = *(v0 + 8);

    return v34();
  }

  v1 = *(v0 + 288);
  if (!*(v1 + 16) || (v2 = sub_10000E53C(0x7364496D616461, 0xE700000000000000), (v3 & 1) == 0))
  {
    v31 = *(v0 + 400);

    sub_1006A0C2C();
    swift_allocError();
    *v33 = 1;
    goto LABEL_21;
  }

  sub_100007484(*(v1 + 56) + 32 * v2, v0 + 112);
  sub_1000076D4((v0 + 112), (v0 + 80));
  sub_100007484(v0 + 80, v0 + 144);
  sub_1001F1160(&unk_100AF23A0);
  if (!swift_dynamicCast())
  {
    v35 = *(v0 + 400);

    sub_1006A0C2C();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();

LABEL_30:
    sub_1000074E0(v0 + 80);
    goto LABEL_22;
  }

  v4 = *(v0 + 296);
  if (!*(v1 + 16) || (v5 = sub_10000E53C(0x7365726F6373, 0xE600000000000000), (v6 & 1) == 0))
  {
    v37 = *(v0 + 400);

    sub_1006A0C2C();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();

    goto LABEL_30;
  }

  sub_100007484(*(v1 + 56) + 32 * v5, v0 + 208);

  sub_1000076D4((v0 + 208), (v0 + 176));
  sub_100007484(v0 + 176, v0 + 240);
  sub_1001F1160(&unk_100AD6720);
  if (!swift_dynamicCast())
  {
    v39 = *(v0 + 400);

    sub_1006A0C2C();
    swift_allocError();
    *v40 = 4;
    swift_willThrow();

LABEL_29:
    sub_1000074E0(v0 + 176);
    goto LABEL_30;
  }

  v7 = *(v0 + 304);
  if (*(v4 + 16) != *(v7 + 16))
  {
    v41 = *(v0 + 400);

    sub_1006A0C2C();
    swift_allocError();
    *v42 = 5;
    swift_willThrow();

    goto LABEL_29;
  }

  v8 = *(v0 + 392);
  *(v0 + 272) = v4;
  *(v0 + 280) = v7;
  sub_1001F1160(&qword_100AF23B0);
  sub_1006A0C80();
  v9 = sub_1007A24E4();

  if (v8)
  {
    v10 = *(v0 + 360);
    v11 = *(v0 + 336);
    v12 = *(v0 + 312);
    sub_1003BD14C(0, *(v0 + 392), 0);
    v13 = 0;
    v14 = *(v10 + 16);
    v10 += 16;
    v46 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v15 = v12 + v46;
    v45 = *(v10 + 56);
    v47 = (v11 + 8);
    v48 = v14;
    v16 = (v10 - 8);
    v17 = (v10 + 16);
    while (1)
    {
      v18 = *(v0 + 344);
      v19 = *(v0 + 328);
      v48(*(v0 + 368), v15, *(v0 + 352));
      sub_100799AE4();
      v20 = sub_10079A5F4();
      result = (*v47)(v18, v19);
      if (v20 < 0)
      {
        break;
      }

      if (!*(v9 + 16) || (sub_1002F9CDC(v20), (v22 & 1) == 0))
      {
        sub_100799AF4();
      }

      v23 = *(v0 + 368);
      v24 = *(v0 + 352);
      sub_100799B04();
      (*v16)(v23, v24);
      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1003BD14C(v25 > 1, v26 + 1, 1);
        v27 = v26 + 1;
      }

      v28 = *(v0 + 392);
      v29 = *(v0 + 376);
      v30 = *(v0 + 352);
      ++v13;
      _swiftEmptyArrayStorage[2] = v27;
      (*v17)(_swiftEmptyArrayStorage + v46 + v26 * v45, v29, v30);
      v15 += v45;
      if (v13 == v28)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    v43 = *(v0 + 400);

    sub_1000074E0(v0 + 176);
    sub_1000074E0(v0 + 80);
    sub_1000074E0(v0 + 16);

    v44 = *(v0 + 8);

    return v44(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1006A0884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006A093C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_10069FD14(a1);
}

id sub_1006A09D4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_data;
  *&v2[OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_data] = 0;
  v6 = OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData;
  *&v2[OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData] = 0;
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x80000001008C5580;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65736163657375;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x80000001008E65C0;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684632420;
  *(inited + 136) = 0xE400000000000000;
  v8 = sub_10023A724();
  *(inited + 144) = a1;
  *(inited + 168) = v8;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001008E65E0;
  sub_1001F1160(&qword_100AF23C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10080B690;
  *(v9 + 32) = 0x7364496D616461;
  *(v9 + 40) = 0xE700000000000000;
  *(v9 + 48) = a2;
  v10 = a1;
  v11 = sub_1001F00D8(v9);
  swift_setDeallocating();
  sub_1006A0CE4(v9 + 32);
  *(inited + 216) = sub_1001F1160(&unk_100AF23D0);
  *(inited + 192) = v11;
  v12 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  *&v2[v5] = sub_10058096C(v12);

  v13 = sub_10058096C(v12);

  *&v2[v6] = v13;

  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

unint64_t sub_1006A0C2C()
{
  result = qword_100AF2398;
  if (!qword_100AF2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2398);
  }

  return result;
}

unint64_t sub_1006A0C80()
{
  result = qword_100AF23B8;
  if (!qword_100AF23B8)
  {
    sub_1001F1234(&qword_100AF23B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF23B8);
  }

  return result;
}

uint64_t sub_1006A0CE4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF23C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006A0D60()
{
  result = qword_100AF23E0;
  if (!qword_100AF23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF23E0);
  }

  return result;
}

void sub_1006A0DB4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    type metadata accessor for BKTapActionView();
    sub_1006C10D4(&unk_100AF2660, type metadata accessor for BKTapActionView);
    sub_1007A2864();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1007A3654())
        {
          type metadata accessor for BKTapActionView();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_10004DC54();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006A1008@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1006C56B4(v12, v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1006C571C(v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      if (v14)
      {
        break;
      }

      sub_1006C571C(v10, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1006C5144(v10, v18, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1006A11FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v74 = sub_1007A1C14();
  v5 = *(v74 - 8);
  __chkstk_darwin(v74);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A0124();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v65 - v13;
  v14 = sub_1001F1160(&unk_100AF2970);
  __chkstk_darwin(v14 - 8);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v65 - v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  v24 = sub_1001F1160(&qword_100ADFEE0);
  __chkstk_darwin(v24 - 8);
  v75 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v28 = (&v65 - v27);
  v79 = a1;
  sub_1007A0154();
  sub_1000077D8(v23, v20, &unk_100AF2970);
  v71 = *(v9 + 48);
  v29 = v71(v20, 1, v8);
  v76 = a2;
  v68 = v7;
  v69 = v9;
  v73 = v5;
  v67 = v11;
  v70 = v8;
  if (v29 == 1)
  {
    sub_100007840(v23, &unk_100AF2970);
    v30 = type metadata accessor for HistoryModel.Entry(0);
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = v28;
    v32 = v80;
    v33 = v8;
  }

  else
  {
    v34 = v7;
    v35 = v80;
    (*(v9 + 32))();
    (*(v9 + 16))(v11, v35, v8);

    sub_1007A0114();
    swift_getObjectType();
    v36 = sub_1007A0A84();
    v66 = v37;
    (*(v73 + 8))(v34, v74);
    v38 = type metadata accessor for HistoryModel.Entry(0);
    sub_1007A00F4();

    v39 = *(v9 + 8);
    v40 = v11;
    v41 = v70;
    v39(v40, v70);
    v42 = v66;
    *v28 = v36;
    v28[1] = v42;
    v43 = v80;
    v39(v80, v41);
    sub_100007840(v23, &unk_100AF2970);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v31 = v28;
    v32 = v43;
    v33 = v41;
  }

  v44 = v78;
  sub_1007A0144();
  v45 = v72;
  sub_1000077D8(v44, v72, &unk_100AF2970);
  v46 = v71(v45, 1, v33);
  v47 = v75;
  if (v46 == 1)
  {

    v48 = sub_1007A0164();
    (*(*(v48 - 8) + 8))(v79, v48);
    sub_100007840(v44, &unk_100AF2970);
    v49 = type metadata accessor for HistoryModel.Entry(0);
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  }

  else
  {
    v50 = v69;
    (*(v69 + 32))(v32, v45, v33);
    v51 = v67;
    (*(v50 + 16))(v67, v32, v33);
    v52 = v31;
    v53 = v68;
    sub_1007A0114();
    swift_getObjectType();
    v54 = sub_1007A0A84();
    v56 = v55;
    v57 = v53;
    v31 = v52;
    (*(v73 + 8))(v57, v74);
    v58 = type metadata accessor for HistoryModel.Entry(0);
    sub_1007A00F4();

    v59 = *(v50 + 8);
    v60 = v70;
    v59(v51, v70);
    *v47 = v54;
    v47[1] = v56;
    v61 = sub_1007A0164();
    (*(*(v61 - 8) + 8))(v79, v61);
    v59(v80, v60);
    sub_100007840(v78, &unk_100AF2970);
    (*(*(v58 - 8) + 56))(v47, 0, 1, v58);
  }

  v62 = v77;
  sub_10020B3C8(v31, v77, &qword_100ADFEE0);
  v63 = type metadata accessor for HistoryModel(0);
  return sub_10020B3C8(v47, v62 + *(v63 + 20), &qword_100ADFEE0);
}

uint64_t sub_1006A1960()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 4)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006A1B38(double a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_1007A1354())
  {
    sub_1007A0364();
  }

  else
  {
    sub_1006ABE30(a1);
  }

  sub_1004A9D34(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006A1C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 152);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1006A1D0C()
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A04();
}

uint64_t sub_1006A1DDC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1006A1E88()
{
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A04();
}

id sub_1006A1F54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v4 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  *a2 = v4;

  return v4;
}

uint64_t sub_1006A2040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v4 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v5 = sub_10079BC44();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1006A2138(uint64_t a1)
{
  v2 = sub_10079BC44();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100579640(v5);
}

uint64_t sub_1006A2204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);
  return result;
}

uint64_t sub_1006A22DC(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    v10 = sub_1007A0A84();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1006A24A0(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    v10 = sub_1007A0A24();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1006A2664()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF23F0);
  sub_100008B98(v0, qword_100AF23F0);
  type metadata accessor for BookReaderPresenter();
  sub_1001F1160(&qword_100AF25B0);
  sub_1007A22E4();
  return sub_10079ACD4();
}

uint64_t sub_1006A2708(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_contentSelectionInteractor);
  v2 = a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  swift_unknownObjectWeakLoadStrong();
  *(v1 + 24) = *(v2 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1006A27B4(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1001F1160(&qword_100AF2650);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v17 - v10;
  sub_1000077D8(a1, &v17 - v10, &qword_100AF2650);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_10020B3C8(v11, v13 + v12, &qword_100AF2650);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  sub_10000A7C4(0, &qword_100AD1E10);
  v14 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v15 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v15)
  {

    sub_1006C4AA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006A29EC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF2650);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_10079FFA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v4, &qword_100AF2650);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100007840(v4, &qword_100AF2650);
  }

  (*(v6 + 32))(v8, v4, v5);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_getKeyPath();
    v13[1] = v11;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v12 = swift_weakLoadStrong();

    if (v12)
    {
      sub_10079F014();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006A2C38()
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  Strong = swift_weakLoadStrong();

  return Strong;
}

void sub_1006A2D08(void *a1)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController;
  v7 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController);
  *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController) = a1;
  v8 = a1;

  v9 = *(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v10 = *(v1 + v6) != 0;
  v11 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v9 + v11, v5, type metadata accessor for State);
  v5[6] = v10;

  sub_100444C5C(v5);
}

uint64_t sub_1006A2E1C(uint64_t a1)
{
  v261 = a1;
  v230 = sub_1001F1160(&qword_100AE88B0);
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v156 - v2;
  v233 = sub_1001F1160(&qword_100AF26D0);
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v231 = &v156 - v3;
  v224 = sub_1001F1160(&qword_100AF26D8);
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v156 - v4;
  v227 = sub_1001F1160(&qword_100AF26E0);
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v225 = &v156 - v5;
  v216 = sub_1001F1160(&qword_100AF26E8);
  __chkstk_darwin(v216);
  v214 = &v156 - v6;
  v218 = sub_1001F1160(&qword_100AF26F0);
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v215 = &v156 - v7;
  v221 = sub_1001F1160(&qword_100AF26F8);
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v156 - v8;
  v210 = sub_1001F1160(&qword_100AF2700);
  __chkstk_darwin(v210);
  v207 = &v156 - v9;
  v206 = sub_1001F1160(&qword_100AF2708);
  __chkstk_darwin(v206);
  v243 = &v156 - v10;
  v209 = sub_1001F1160(&qword_100AF2710);
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v205 = &v156 - v11;
  v213 = sub_1001F1160(&qword_100AF2718);
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v156 - v12;
  v204 = sub_1001F1160(&qword_100AF2720);
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = &v156 - v13;
  v14 = sub_1001F1160(&unk_100AE6AA0);
  v258 = *(v14 - 8);
  v259 = v14;
  __chkstk_darwin(v14);
  v246 = &v156 - v15;
  v164 = sub_1001F1160(&qword_100AE1540);
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v160 = &v156 - v16;
  v165 = sub_1001F1160(&qword_100AF2728);
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v161 = &v156 - v17;
  v168 = sub_1001F1160(&qword_100AF2730);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v156 - v18;
  v242 = sub_1001F1160(&qword_100AF2738);
  v253 = *(v242 - 8);
  __chkstk_darwin(v242);
  v241 = &v156 - v19;
  v245 = sub_1001F1160(&unk_100AF2740);
  v201 = *(v245 - 8);
  __chkstk_darwin(v245);
  v244 = &v156 - v20;
  v240 = sub_1001F1160(&unk_100AEA120);
  v252 = *(v240 - 8);
  __chkstk_darwin(v240);
  v239 = &v156 - v21;
  v200 = sub_1001F1160(&qword_100AF2750);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v156 - v22;
  v159 = sub_1001F1160(&qword_100AF2758);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - v23;
  v194 = sub_1001F1160(&qword_100AF2760);
  v195 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v156 - v24;
  v196 = sub_1001F1160(&qword_100AF2768);
  v197 = *(v196 - 8);
  __chkstk_darwin(v196);
  v193 = &v156 - v25;
  v186 = sub_1001F1160(&qword_100AF2770);
  v187 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v156 - v26;
  v188 = sub_1001F1160(&qword_100AF2778);
  v189 = *(v188 - 8);
  __chkstk_darwin(v188);
  v183 = &v156 - v27;
  v190 = sub_1001F1160(&unk_100AF2780);
  v191 = *(v190 - 8);
  __chkstk_darwin(v190);
  v185 = &v156 - v28;
  v238 = sub_1001F1160(&unk_100AE1530);
  v251 = *(v238 - 8);
  __chkstk_darwin(v238);
  v237 = &v156 - v29;
  v178 = sub_1001F1160(&qword_100AF2790);
  v179 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v156 - v30;
  v180 = sub_1001F1160(&qword_100AF2798);
  v181 = *(v180 - 1);
  __chkstk_darwin(v180);
  v177 = &v156 - v31;
  v175 = sub_1001F1160(&unk_100AF27A0);
  v182 = *(v175 - 8);
  __chkstk_darwin(v175);
  v174 = &v156 - v32;
  v172 = sub_1001F1160(&qword_100ADD120);
  v173 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v156 - v33;
  v34 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v34 - 8);
  v36 = &v156 - v35;
  v37 = sub_1001F1160(&qword_100AF27B0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v156 - v39;
  v41 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8);
  v170 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider);
  v236 = v41;
  ObjectType = swift_getObjectType();
  v263 = sub_1007A1394();
  v42 = sub_10000A7C4(0, &qword_100AD1E10);
  v43 = sub_1007A2D74();
  v264 = v43;
  v256 = sub_1007A2D24();
  v44 = *(v256 - 1);
  v250 = *(v44 + 56);
  v257 = v44 + 56;
  (v250)(v36, 1, 1, v256);
  sub_1001F1160(&unk_100AEB8B0);
  v248 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
  v249 = sub_100017E1C();
  sub_10079BAB4();
  v45 = v36;
  sub_100007840(v36, &qword_100AD7EB0);

  swift_allocObject();
  v46 = v169;
  swift_unknownObjectWeakInit();
  v255 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&qword_100AF27B8, &qword_100AF27B0);
  sub_10079BB04();

  (*(v38 + 8))(v40, v37);
  v47 = OBJC_IVAR____TtC5Books19BookReaderPresenter_subscribers;
  swift_beginAccess();
  v260 = sub_1001F1160(&unk_100AF27C0);
  v262 = sub_100005920(&qword_100AEBCC0, &unk_100AF27C0);
  sub_10079B864();
  swift_endAccess();

  v263 = sub_1007A13E4();
  v48 = v42;
  v49 = sub_1007A2D74();
  v264 = v49;
  v247 = v45;
  v50 = v250;
  (v250)(v45, 1, 1, v256);
  v51 = sub_1001F1160(&unk_100AF27D0);
  v52 = sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  v53 = v171;
  v236 = v51;
  ObjectType = v52;
  sub_10079BAB4();
  sub_100007840(v45, &qword_100AD7EB0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120);
  v54 = v172;
  sub_10079BB04();

  (*(v173 + 8))(v53, v54);
  v254 = v47;
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v263 = *(*(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController) + 48);
  sub_1001F1160(&qword_100ADECD8);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8);
  v263 = sub_10079BA14();
  v234 = v48;
  v55 = sub_1007A2D74();
  v264 = v55;
  v56 = v247;
  v50(v247, 1, 1, v256);
  sub_1001F1160(&qword_100AE8998);
  sub_100005920(&qword_100AF2800, &qword_100AE8998);
  v57 = v174;
  sub_10079BAB4();
  sub_100007840(v56, &qword_100AD7EB0);

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  v60 = v261;
  *(v59 + 16) = v58;
  *(v59 + 24) = v60;
  sub_100005920(&qword_100AF2808, &unk_100AF27A0);

  v61 = v175;
  sub_10079BB04();

  (*(v182 + 8))(v57, v61);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_getObjectType();
  v62 = sub_1007A0574();
  v63 = *(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v263 = v62;
  type metadata accessor for BookReaderInteractor(0);
  v182 = v63;
  v264 = sub_1004AA40C();
  sub_1001F1160(&qword_100AF2810);
  sub_1001F1160(&unk_100AEA1E0);
  sub_100005920(&qword_100AF2818, &qword_100AF2810);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  v64 = v176;
  sub_10079B7A4();
  v65 = sub_1007A2D74();
  v263 = v65;
  v66 = v247;
  (v250)(v247, 1, 1, v256);
  sub_100005920(&qword_100AF2820, &qword_100AF2790);
  v67 = v177;
  v68 = v178;
  sub_10079BAB4();
  sub_100007840(v66, &qword_100AD7EB0);

  (*(v179 + 8))(v64, v68);
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1006C5290;
  *(v70 + 24) = v69;
  sub_100005920(&qword_100AF2828, &qword_100AF2798);
  v71 = v180;
  sub_10079BB04();

  (*(v181 + 8))(v67, v71);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v72 = sub_1001F1160(&qword_100AD50E0);
  v73 = v237;
  v248 = v72;
  sub_10079B974();
  swift_endAccess();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  v76 = v261;
  *(v75 + 16) = v261;
  *(v75 + 24) = v74;
  v77 = sub_100005920(&qword_100AD82D0, &unk_100AE1530);

  v78 = v238;
  v181 = v77;
  sub_10079BB04();

  v79 = v251[1];
  ++v251;
  v180 = v79;
  (v79)(v73, v78);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_getKeyPath();
  v263 = v76;
  sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  swift_beginAccess();

  sub_1001F1160(&qword_100AF2830);
  v80 = v184;
  sub_10079B974();
  swift_endAccess();

  sub_100005920(&qword_100AF2838, &qword_100AF2770);
  v81 = v183;
  v82 = v186;
  sub_10079BAD4();
  (*(v187 + 8))(v80, v82);
  sub_100005920(&qword_100AF2840, &qword_100AF2778);
  sub_1006C10D4(&qword_100AF2848, type metadata accessor for HistoryModel);
  v83 = v185;
  v84 = v188;
  sub_10079BAF4();
  (*(v189 + 8))(v81, v84);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF2850, &unk_100AF2780);
  v85 = v190;
  sub_10079BB04();

  (*(v191 + 8))(v83, v85);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v86 = v192;
  sub_1005C5BEC();
  v87 = sub_1007A2D74();
  v263 = v87;
  v88 = v247;
  (v250)(v247, 1, 1, v256);
  sub_100005920(&qword_100AF2858, &qword_100AF2760);
  v89 = v193;
  v90 = v194;
  sub_10079BAB4();
  sub_100007840(v88, &qword_100AD7EB0);

  (*(v195 + 8))(v86, v90);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF2860, &qword_100AF2768);
  v91 = v196;
  sub_10079BB04();

  (*(v197 + 8))(v89, v91);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  if (sub_1006A2C38())
  {
    v92 = v157;
    sub_10079F044();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_getOpaqueTypeConformance2();
    v93 = v159;
    sub_10079BB04();

    (*(v158 + 8))(v92, v93);
    swift_beginAccess();
    sub_10079B864();
    swift_endAccess();
  }

  v250 = *(v261 + 112);
  v263 = *(v250 + 36);
  v257 = sub_1001F1160(&unk_100AD1E40);
  v256 = sub_100005920(&qword_100AF2870, &unk_100AD1E40);
  v263 = sub_10079BA14();
  v94 = v198;
  sub_10079BAF4();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF2878, &qword_100AF2750);
  v95 = v200;
  sub_10079BB04();

  (*(v199 + 8))(v94, v95);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v263 = sub_1004A8E10();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v96 = v261;
  v97 = *(v261 + OBJC_IVAR____TtC5Books19BookReaderViewModel_overlayViewModel) + OBJC_IVAR____TtC5Books16OverlayViewModel__overlay;
  swift_beginAccess();
  v98 = sub_1001F1160(&unk_100AF2880);
  v99 = v239;
  v200 = v98;
  v234 = v97;
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_100005920(&unk_100AEA130, &unk_100AEA120);
  v101 = v240;
  v199 = v100;
  sub_10079BB04();

  v102 = v252[1];
  ++v252;
  v198 = v102;
  (v102)(v99, v101);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v103 = *(v96 + 168);
  swift_beginAccess();
  v104 = v237;
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = v238;
  sub_10079BB04();

  (v180)(v104, v105);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v249 = v103;
  swift_beginAccess();
  v106 = sub_1001F1160(&qword_100AF2890);
  v107 = v241;
  v247 = v106;
  sub_10079B974();
  swift_endAccess();
  v108 = sub_100005920(&qword_100AF2898, &qword_100AF2738);
  v109 = v244;
  v110 = v242;
  v238 = v108;
  sub_10079BA74();
  v111 = *(v253 + 8);
  v253 += 8;
  v237 = v111;
  (v111)(v107, v110);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = sub_100005920(&qword_100AF28A0, &unk_100AF2740);
  v113 = v245;
  v248 = v112;
  sub_10079BB04();

  (*(v201 + 8))(v109, v113);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v114 = v261;
  v263 = *(v261 + OBJC_IVAR____TtC5Books19BookReaderViewModel_showThemeCustomizationTipSubject);
  v263 = sub_10079BA14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  if (*(v114 + 176))
  {
    swift_beginAccess();

    sub_1001F1160(&unk_100AE1570);
    v115 = v160;
    sub_10079B974();
    swift_endAccess();

    sub_100005920(&qword_100AF2950, &qword_100AE1540);
    v116 = v161;
    v117 = v164;
    sub_10079BA74();
    (*(v162 + 8))(v115, v117);
    sub_100005920(&qword_100AF2958, &qword_100AF2728);
    v118 = v166;
    v119 = v165;
    sub_10079BAF4();
    (*(v163 + 8))(v116, v119);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005920(&unk_100AF2960, &qword_100AF2730);
    v120 = v168;
    sub_10079BB04();

    (*(v167 + 8))(v118, v120);
    swift_beginAccess();
    sub_10079B864();
    swift_endAccess();
  }

  v261 = *(v46 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  swift_beginAccess();

  v257 = sub_1001F1160(&qword_100AE3CD0);
  v121 = v246;
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v255 = sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0);
  v122 = v259;
  sub_10079BB04();

  v123 = v258 + 8;
  v256 = *(v258 + 8);
  v256(v121, v122);
  v258 = v123;
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v124 = v239;
  sub_10079B974();
  swift_endAccess();
  v125 = v202;
  v126 = v240;
  sub_10079BA54();
  (v198)(v124, v126);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v252 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100005920(&qword_100AF28A8, &qword_100AF2720);
  v127 = v204;
  sub_10079BB04();

  (*(v203 + 8))(v125, v127);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v128 = v259;
  sub_10079BA64();

  v256(v121, v128);
  sub_1007A2B54();
  v129 = v250;
  v263 = *(v250 + 25);
  sub_1001F1160(&unk_100AD1E30);
  sub_100005920(&qword_100ADC868, &unk_100AD1E30);
  v263 = sub_10079BA14();
  v264 = v129[26];
  sub_1001F1160(&unk_100AF28B0);
  sub_100005920(&qword_100ADC878, &unk_100AF28B0);
  v264 = sub_10079BA14();
  sub_1001F1160(&qword_100AF28C0);
  sub_1001F1160(&qword_100AF28C8);
  v251 = &protocol conformance descriptor for Publishers.MapKeyPath<A, B>;
  sub_100005920(&unk_100AF28D0, &qword_100AF2708);
  swift_getOpaqueTypeConformance2();
  v250 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&qword_100AE8950, &qword_100AF28C0);
  sub_100005920(&qword_100AF28E0, &qword_100AF28C8);
  v130 = v205;
  sub_10079B7C4();
  sub_100005920(&qword_100AF28E8, &qword_100AF2710);
  v131 = v211;
  v132 = v209;
  sub_10079BA54();
  (*(v208 + 8))(v130, v132);
  v133 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v134 = swift_allocObject();
  *(v134 + 16) = sub_1006C5330;
  *(v134 + 24) = v133;
  sub_100005920(&unk_100AF28F0, &qword_100AF2718);
  v135 = v213;
  sub_10079BB04();

  (*(v212 + 8))(v131, v135);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();
  v136 = v241;
  sub_10079B974();
  swift_endAccess();
  v137 = v242;
  sub_10079BA74();
  (v237)(v136, v137);
  swift_getObjectType();
  v263 = sub_10079F504();
  swift_getKeyPath();
  sub_1001F1160(&unk_100AEA1A0);
  sub_100005920(&qword_100AF2900, &unk_100AEA1A0);
  sub_10079BA64();

  sub_100005920(&qword_100AF2908, &qword_100AF26E8);
  v138 = v215;
  sub_10079B7A4();
  sub_100005920(&qword_100AF2910, &qword_100AF26F0);
  v139 = v219;
  v140 = v218;
  sub_10079BA54();
  (*(v217 + 8))(v138, v140);
  v141 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1006C5370;
  *(v142 + 24) = v141;
  sub_100005920(&qword_100AF2918, &qword_100AF26F8);
  v143 = v221;
  sub_10079BB04();

  (*(v220 + 8))(v139, v143);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  v144 = v246;
  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v145 = v222;
  v146 = v259;
  sub_10079BA64();

  v256(v144, v146);
  sub_100005920(&qword_100AF2920, &qword_100AF26D8);
  sub_1006C10D4(&qword_100AF2928, &type metadata accessor for BookContentHeaderStyle);
  v147 = v225;
  v148 = v224;
  sub_10079BAF4();
  (*(v223 + 8))(v145, v148);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF2930, &qword_100AF26E0);
  v149 = v227;
  sub_10079BB04();

  (*(v226 + 8))(v147, v149);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  swift_beginAccess();

  sub_10079B974();
  swift_endAccess();

  swift_getKeyPath();
  v150 = v228;
  v151 = v259;
  sub_10079BA64();

  v256(v144, v151);
  sub_100005920(&qword_100AE88E0, &qword_100AE88B0);
  v152 = v231;
  v153 = v230;
  sub_10079BAF4();
  (*(v229 + 8))(v150, v153);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AF2940, &qword_100AF26D0);
  v154 = v233;
  sub_10079BB04();

  (*(v232 + 8))(v152, v154);
  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();
}

id sub_1006A68A0()
{
  ObjectType = swift_getObjectType();
  v5[3] = ObjectType;
  v5[0] = v0;
  v2 = v0;
  sub_1007A2B34();
  sub_1000074E0(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for BookReaderPresenter()
{
  result = qword_100AF2530;
  if (!qword_100AF2530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A6BFC(uint64_t a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = &Strong[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v7[32] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = sub_10079EE14();
      sub_1005787C0(v12);
      v13 = sub_10079EF24();
      sub_100579480(v13);
      v14 = sub_10079EE44();
      v15 = &enum case for ColorScheme.dark(_:);
      if ((v14 & 1) == 0)
      {
        v15 = &enum case for ColorScheme.light(_:);
      }

      (*(v3 + 104))(v5, *v15, v2);
      sub_100579640(v5);
      sub_10044A40C(a1, v11);
      sub_100697090(a1);
    }
  }
}

uint64_t sub_1006A6DD4()
{
  v0 = type metadata accessor for State(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v5 = result;
    swift_getObjectType();

    v6 = sub_1007A1364();
    v7 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v4 + v7, v2, type metadata accessor for State);
    v2[*(v0 + 80)] = v6 & 1;
    sub_100444C5C(v2);
  }

  return result;
}

uint64_t sub_1006A6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = result + OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 1;
    v7 = *(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController);
    swift_beginAccess();
    v8 = v7[7];
    v9 = v7[6];
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *(a3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin)), vceqq_f64(v8, *(a3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin + 16))))) & 1) == 0)
    {
      sub_100578FC4(v9.f64[0], v9.f64[1], v8.f64[0], v8.f64[1]);
    }

    sub_10057D260();
    type metadata accessor for PublishedBool();
    sub_1006C10D4(&qword_100AF2980, type metadata accessor for PublishedBool);
    sub_10079B8B4();
    sub_10079B934();
  }

  return result;
}

void sub_1006A70DC(uint64_t a1)
{
  v2 = sub_1007A0164();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_weakLoadStrong();
    if (v14)
    {
      v15 = v14;
      swift_getKeyPath();
      v17 = v15;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v16 = *&v13[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
      (*(v3 + 16))(v5, a1, v2);
      swift_unknownObjectRetain();
      sub_1006A11FC(v5, v16, v11);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1006C56B4(v11, v8, type metadata accessor for HistoryModel);
      sub_10079B9B4();
      sub_1006C571C(v11, type metadata accessor for HistoryModel);
    }
  }
}

void sub_1006A737C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent))
  {
    *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1006A2C38();

    if (v6)
    {
      sub_10079EF84(v2);
    }
  }
}

uint64_t sub_1006A74EC()
{
  v0 = sub_1007A3854();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v19[-v5];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = type metadata accessor for State(0);
  __chkstk_darwin(v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v15 = result;

    v16 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v14 + v16, v12, type metadata accessor for State);
    v17 = *(v10 + 76);
    sub_1007A3834();
    sub_1007A3844();
    v18 = *(v1 + 8);
    v18(v3, v0);
    sub_1006C10D4(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      (*(v1 + 32))(v9, v6, v0);
    }

    else
    {
      v18(v6, v0);
      (*(v1 + 16))(v9, &v12[v17], v0);
    }

    (*(v1 + 40))(&v12[v17], v9, v0);
    sub_100444C5C(v12);
  }

  return result;
}

void sub_1006A77CC(uint64_t *a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v6 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_weakLoadStrong();

    if (v9)
    {
      v10 = *(v9 + 168);

      v11 = *(v10 + 16);
      v12 = sub_1007A2744();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_1007A26F4();
      swift_retain_n();

      v13 = sub_1007A26E4();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = &protocol witness table for MainActor;
      *(v14 + 32) = v11;
      *(v14 + 40) = v6;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 48) = v5;
      *(v14 + 72) = 1;
      *(v14 + 74) = v16;
      *(v14 + 78) = v17;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = 0;
      *(v14 + 104) = 1;
      sub_1003457A0(0, 0, v4, &unk_10083E298, v14);
    }
  }
}

void sub_1006A79B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1007A0624();

    sub_10044539C((v2 & 1) == 0);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9B4();
  }
}

uint64_t sub_1006A7AA0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_100445924(v1 ^ 1);
  }

  return result;
}

void sub_1006A7B24(unsigned __int8 *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(*(Strong + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = Strong;

    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v9, v4, type metadata accessor for State);
    v4[4] = v5;
    sub_100444C5C(v4);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = swift_weakLoadStrong();

    if (v12)
    {
      v13 = *(v12 + 112);

      if (v5 == *(v13 + 264))
      {
        *(v13 + 264) = v5;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v15[-2] = v13;
        LOBYTE(v15[-1]) = v5;
        v15[2] = v13;
        sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState);
        sub_100797A04();
      }
    }
  }
}

uint64_t sub_1006A7D78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    v5 = (*(*(v4 - 8) + 48))(a1, 1, v4) != 1;
    sub_100445C80(v5);
  }

  return result;
}

uint64_t sub_1006A7E3C(char *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = result;

    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v9, v4, type metadata accessor for State);
    v4[7] = v5;
    sub_100444C5C(v4);
  }

  return result;
}

uint64_t sub_1006A7F48(char *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = result;

    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v9, v4, type metadata accessor for State);
    v4[8] = v5;
    sub_100444C5C(v4);
  }

  return result;
}

uint64_t sub_1006A8054(char *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = result;

    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v9, v4, type metadata accessor for State);
    v4[9] = v5;
    sub_100444C5C(v4);
  }

  return result;
}

uint64_t sub_1006A8174(char *a1)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v8 = result;

    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v7 + v9, v4, type metadata accessor for State);
    v4[10] = v5;
    sub_100444C5C(v4);
  }

  return result;
}

void sub_1006A8280(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_weakLoadStrong();

    if (v4)
    {
      sub_10057E4EC(a1);
    }
  }
}

uint64_t sub_1006A8304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  sub_1000077D8(a1, &v17 - v8, &qword_100ADB1C0);
  v10 = type metadata accessor for OverlayViewModel.Overlay(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &qword_100ADB1C0);
    v12 = 0;
  }

  else
  {
    v12 = sub_100460F88();
    sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
  }

  sub_1000077D8(a2, v6, &qword_100ADB1C0);
  if (v11(v6, 1, v10) == 1)
  {
    sub_100007840(v6, &qword_100ADB1C0);
    v13 = 0;
  }

  else
  {
    v13 = sub_100460F88();
    sub_1006C571C(v6, type metadata accessor for OverlayViewModel.Overlay);
  }

  if (v13)
  {
    v14 = v12 == v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v12)
  {
    return v15;
  }

  else
  {
    return v13 == 0;
  }
}

void sub_1006A84F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006A8554(a1);
  }
}

uint64_t sub_1006A8554(uint64_t a1)
{
  v37 = a1;
  v2 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v2 - 8);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v38 = v1;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();
  }

  else
  {
    v19 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  sub_1000077D8(v18, v15, &qword_100ADB1C0);
  v20 = type metadata accessor for OverlayViewModel.Overlay(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v15, 1, v20) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v15, type metadata accessor for OverlayViewModel.Overlay);
    if (EnumCaseMultiPayload == 1)
    {
      if (sub_1006A2C38())
      {
        sub_10079F0D4(0);
      }
    }

    else
    {
      v23 = *(v38 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
      *(v23 + 16) = 0;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 64);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(ObjectType, v24);
        swift_unknownObjectRelease();
      }
    }
  }

  v26 = v37;
  sub_1000077D8(v37, v12, &qword_100ADB1C0);
  if (v21(v12, 1, v20) != 1)
  {
    v27 = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v12, type metadata accessor for OverlayViewModel.Overlay);
    if (v27 == 1)
    {
      if (sub_1006A2C38())
      {
        sub_10079F0D4(1);
      }
    }

    else
    {
      v28 = *(v38 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
      *(v28 + 16) = 1;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = *(v28 + 64);
        v30 = swift_getObjectType();
        (*(v29 + 8))(v30, v29);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_1000077D8(v26, v9, &qword_100ADB1C0);
  if (v21(v9, 1, v20) == 1)
  {
    sub_100007840(v9, &qword_100ADB1C0);
  }

  else
  {
    v31 = swift_getEnumCaseMultiPayload();
    sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
    if (v31 == 2)
    {
      sub_1007A0B24();
LABEL_24:
      v32 = v18;
      return sub_100007840(v32, &qword_100ADB1C0);
    }
  }

  sub_1000077D8(v18, v6, &qword_100ADB1C0);
  if (v21(v6, 1, v20) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100007840(v18, &qword_100ADB1C0);
      return sub_1006C571C(v6, type metadata accessor for OverlayViewModel.Overlay);
    }

    v33 = v36;
    sub_1006C5144(v6, v36, type metadata accessor for OverlayViewModel.Search);
    sub_1007A0B44();
    sub_1006C571C(v33, type metadata accessor for OverlayViewModel.Search);
    goto LABEL_24;
  }

  sub_100007840(v18, &qword_100ADB1C0);
  v32 = v6;
  return sub_100007840(v32, &qword_100ADB1C0);
}

uint64_t sub_1006A8B70(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = 0;
  if (a1 == a7 && ((a2 ^ a8) & 1) == 0)
  {
    v14 = a3 == a9 && a4 == a10;
    if (v14 || (v15 = a5, v16 = a6, v17 = sub_1007A3AB4(), a5 = v15, a6 = v16, v18 = v17, result = 0, (v18 & 1) != 0))
    {
      result = (a6 | a12) == 0;
      if (a6)
      {
        if (a12)
        {
          if (a5 == a11 && a6 == a12)
          {
            return 1;
          }

          else
          {

            return sub_1007A3AB4();
          }
        }
      }
    }
  }

  return result;
}

void sub_1006A8CA4(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1006C1934(a1, a2 & 1, a5, a6);
  }
}

uint64_t sub_1006A8D54(char a1, char a2, uint64_t a3)
{
  v6 = sub_1007A1D04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 25) = a2;
  sub_10000A7C4(0, &qword_100AD1E10);

  *v9 = sub_1007A2D74();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  LOBYTE(a3) = sub_1007A1D34();
  result = (*(v7 + 8))(v9, v6);
  if (a3)
  {

    sub_1006A8EDC(*(v10 + 16), *(v10 + 24), *(v10 + 25));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A8EDC(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1006A8F4C(a2 & 1, a3 & 1);
  }
}

uint64_t sub_1006A8F4C(char a1, char a2)
{
  result = swift_weakLoadStrong();
  if (a2)
  {
    if (result)
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v6 = 0;
        v7 = 0;
LABEL_8:
        sub_10079EFF4(v6, v7);
      }
    }
  }

  else if (result)
  {
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v8 = swift_weakLoadStrong();

    if (v8)
    {
      v6 = (a1 & 1) == 0;
      v7 = 1;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006A90CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10079F4E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v9 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_10000A7C4(0, &qword_100AD1E10);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    sub_1006C5A14(&type metadata accessor for BookContentHeaderStyle, sub_1006A9330);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A9330()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v2 = swift_weakLoadStrong();

      if (v2)
      {
        sub_10079EFC4();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1006A944C(char *a1, uint64_t a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  sub_10000A7C4(0, &qword_100AD1E10);

  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  LOBYTE(a2) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {

    sub_1006A95C4(*(v9 + 16), *(v9 + 24));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006A95C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v5 = swift_weakLoadStrong();

      if (v5)
      {
        sub_10079F094(a2 & 1, 1);
      }
    }

    else
    {
    }
  }
}

id sub_1006A96E0()
{
  v1 = OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(sub_1007A10B4());
    v6 = sub_1007A1084();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1006A976C(int a1)
{
  v49 = a1;
  v1 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v1 - 8);
  v42 = &v41 - v2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_1007A21D4();
  v43 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v11 + 16);
  v47(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = objc_opt_self();
  v45 = ObjCClassFromMetadata;
  v18 = [v44 bundleForClass:ObjCClassFromMetadata];
  v46 = *(v4 + 16);
  v46(v6, v9, v3);
  v50 = v13;
  v51 = v6;
  v41 = sub_1007A22D4();
  v54 = v19;
  v20 = *(v4 + 8);
  v55 = v9;
  v21 = v9;
  v22 = v20;
  v23 = v3;
  v53 = v4 + 8;
  v20(v21, v3);
  v24 = v43;
  v25 = *(v11 + 8);
  v52 = v11 + 8;
  v48 = v25;
  v25(v16, v43);
  sub_1007A2154();
  v26 = v55;
  sub_100796C94();
  v47(v50, v16, v24);
  v27 = [v44 bundleForClass:v45];
  v46(v51, v26, v3);
  v28 = sub_1007A22D4();
  v30 = v29;
  v22(v55, v23);
  v48(v16, v24);
  Strong = swift_weakLoadStrong();
  v32 = v54;
  if (Strong)
  {
    v33 = *(Strong + 168);

    v34 = *(v33 + 16);
    v35 = sub_1007A2744();
    v36 = v42;
    (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
    sub_1007A26F4();
    swift_retain_n();

    v37 = sub_1007A26E4();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = &protocol witness table for MainActor;
    v39 = v41;
    *(v38 + 32) = v34;
    *(v38 + 40) = v39;
    *(v38 + 48) = v32;
    *(v38 + 56) = v28;
    *(v38 + 64) = v30;
    *(v38 + 72) = 2;
    *(v38 + 74) = v56;
    *(v38 + 78) = v57;
    *(v38 + 88) = 0;
    *(v38 + 96) = 0;
    *(v38 + 80) = 0;
    *(v38 + 104) = 1;
    sub_1003457A0(0, 0, v36, &unk_10083DBF8, v38);
  }
}

void sub_1006A9D38()
{
  sub_1006A9E58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006A9E58()
{
  if (!qword_100AF2540)
  {
    sub_10079FFA4();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2540);
    }
  }
}

uint64_t sub_1006A9EB0(char a1)
{
  v3 = sub_1007A1C54();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v9 = sub_1007A2D74();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1006C577C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2CA78;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C10D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_1006AA1AC(uint64_t a1, char a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) == (a2 & 1))
    {
      *(result + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) = a2 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A04();
    }
  }

  return result;
}

uint64_t sub_1006AA310()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10057D260();
    type metadata accessor for PublishedBool();
    sub_1006C10D4(&qword_100AF2980, type metadata accessor for PublishedBool);
    sub_10079B8B4();
    sub_10079B934();
  }

  return result;
}

uint64_t sub_1006AA3D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v43 = &v37 - v5;
  v6 = type metadata accessor for OverlayViewModel.Overlay(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v8;
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v41 = type metadata accessor for OverlayViewModel.Search(0);
  __chkstk_darwin(v41);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v48 = sub_1001F1160(&qword_100ADB388);
  v20 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v37 - v21;
  Strong = swift_weakLoadStrong();
  v46 = v7;
  if (!Strong)
  {
    (*(v7 + 56))(v14, 1, 1, v6);
    goto LABEL_7;
  }

  v38 = v19;
  v39 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
  v20 = v39;

  v24 = v46;

  if ((*(v24 + 48))(v14, 1, v6) == 1)
  {
LABEL_7:
    v26 = sub_100007840(v14, &qword_100ADB1C0);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v25 = v38;
    sub_1006C5144(v14, v38, type metadata accessor for OverlayViewModel.Search);
    (*(v20 + 32))(v22, v25, v48);
    if (!v47)
    {
      return (*(v20 + 8))(v22, v48);
    }

    goto LABEL_9;
  }

  v26 = sub_1006C571C(v14, type metadata accessor for OverlayViewModel.Overlay);
LABEL_8:
  __chkstk_darwin(v26);
  *(&v37 - 16) = 0;
  sub_1006C10D4(&unk_100AF2558, type metadata accessor for BookReaderPresenter);
  sub_1007A0B54();
  (*(v20 + 16))(v16, v22, v48);
  v16[*(v41 + 20)] = 0;
  sub_1006C56B4(v16, v11, type metadata accessor for OverlayViewModel.Search);
  swift_storeEnumTagMultiPayload();
  v27 = sub_1007A2744();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  ObjectType = v16;
  v29 = v22;
  v30 = v45;
  sub_1006C56B4(v11, v45, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();
  v31 = v3;
  v32 = sub_1007A26E4();
  v33 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v31;
  v35 = v30;
  v22 = v29;
  sub_1006C5144(v35, v34 + v33, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v28, &unk_10083DCB8, v34);

  sub_1006C571C(v11, type metadata accessor for OverlayViewModel.Overlay);
  sub_1006C571C(ObjectType, type metadata accessor for OverlayViewModel.Search);
  if (v47)
  {
LABEL_9:
    v49._countAndFlagsBits = v40;
    v49._object = v47;
    sub_10079FD54(v49);
  }

  return (*(v20 + 8))(v22, v48);
}

uint64_t sub_1006AAA54@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_100009864(a1, a3);
  sub_1007A0284();
  sub_1006C10D4(&qword_100AEE0F0, &type metadata accessor for SearchViewModel);

  *(a3 + 40) = sub_10079C024();
  *(a3 + 48) = v5;
  *(a3 + 56) = a2;
  sub_10079DFE4();
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  v6 = *(type metadata accessor for SearchView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006AAB68(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - v7;
  v8 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1007969B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService];
  v16 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v15 + v16, v28);
  sub_10000E3E8(v28, v29);
  v31._countAndFlagsBits = a1;
  v31._object = a2;
  if (sub_10079ED04(v31))
  {
    sub_1006AAF68();
LABEL_3:
    LOBYTE(v17) = 0;
    goto LABEL_4;
  }

  v26 = v3;
  sub_10000E3E8(v28, v29);
  v32._countAndFlagsBits = a1;
  v32._object = a2;
  if (sub_10079ED14(v32))
  {
    sub_10000E3E8(v28, v29);
    sub_10079EC94();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100007840(v10, &unk_100AD5AC0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_1006AB464(v14, v28);
      (*(v12 + 8))(v14, v11);
    }

    goto LABEL_3;
  }

  v19 = v26;
  v17 = *&v26[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  swift_getObjectType();
  if (sub_10079F9E4())
  {
    v20 = v30;
    sub_10070B9CC(a1, a2);
    if (v20)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v17 + 184) = a1;
    *(v17 + 192) = a2;
  }

  v21 = sub_1007A2744();
  LOBYTE(v17) = 1;
  v22 = v27;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  sub_1007A26F4();
  v23 = v19;
  v24 = sub_1007A26E4();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v23;
  sub_100345AA0(0, 0, v22, &unk_10083DF40, v25);

LABEL_4:
  sub_1000074E0(v28);
  return v17 & 1;
}

uint64_t sub_1006AAF68()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if ((*(v6 + 48))(v13, 1, v5) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_1006C571C(v13, type metadata accessor for OverlayViewModel.Overlay);
      if (EnumCaseMultiPayload == 4)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  sub_100007840(v13, &qword_100ADB1C0);
LABEL_7:
  v32 = v6;
  v33 = v4;
  v16 = *&v1[OBJC_IVAR____TtC5Books19BookReaderPresenter_tocModuleFactory];
  swift_getObjectType();
  sub_10079F9D4();
  v17 = sub_10079F384();

  v37 = &off_100A2BB00;
  v18 = swift_unknownObjectWeakInit();
  sub_10030396C(v18, v35);
  v19 = *(v16 + 32);
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v20 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = v19;
      sub_100430BF4(v36);
      type metadata accessor for TOCModule();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1006C11EC(v35, v23 + 16);
      *(v23 + 32) = v17 & 1;
      *(v23 + 33) = 0;
      *(v23 + 40) = v22;
      swift_unknownObjectWeakAssign();

      *(v23 + 56) = v21;
      swift_unownedRetain();

      *v10 = v23;
      v10[8] = 0;
      swift_storeEnumTagMultiPayload();
      v24 = sub_1007A2744();
      v25 = v33;
      (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
      v26 = v34;
      sub_1006C56B4(v10, v34, type metadata accessor for OverlayViewModel.Overlay);
      sub_1007A26F4();
      swift_retain_n();
      v27 = v1;
      v28 = sub_1007A26E4();
      v29 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v27;
      sub_1006C5144(v26, v30 + v29, type metadata accessor for OverlayViewModel.Overlay);
      sub_1003457A0(0, 0, v25, &unk_10083DCB0, v30);

      return sub_1006C571C(v10, type metadata accessor for OverlayViewModel.Overlay);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006AB464(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_10079F7E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006B6B38(v11);
  v12 = sub_1007A07B4();
  v13 = sub_1006C2428(v2, a1, v11, a2, v12);
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v20 = 1;
    v14 = sub_1007A2744();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v16 = v13;
    v17 = sub_1007A26E4();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v15;
    *(v18 + 40) = v16;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
    *(v18 + 80) = v20;

    sub_1003457A0(0, 0, v7, &unk_10083DED8, v18);
  }
}

uint64_t sub_1006AB6C4()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  if (!swift_weakLoadStrong())
  {
    v9 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_7:
    sub_100007840(v2, &qword_100ADB1C0);
    return 2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (!EnumCaseMultiPayload)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      v10[1] = v6;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v7 = *(v6 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);

      return v7;
    }
  }

  return 2;
}

uint64_t sub_1006AB930@<X0>(BOOL *a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100009864(result + 184, v5);

    sub_10000E3E8(v5, v5[3]);
    type metadata accessor for ThemeOptionsContainerPresenter();
    v3 = sub_1004B0E98();
    result = sub_1000074E0(v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1006AB9E8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v2 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  __chkstk_darwin(v8);
  v10 = v26 - v9;
  v11 = sub_1001F1160(&qword_100AF26C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - v13;
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v30 = a1;
      v31 = v12;
      swift_getKeyPath();
      v32 = v18;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v19 = swift_weakLoadStrong();

      if (v19)
      {
        v29 = v19;
        v20 = sub_10079F054();
        v27 = v21;
        v28 = v20;
        v26[3] = sub_10079F0C4();
        v22 = sub_10000E3E8((v16 + 184), *(v16 + 208));
        swift_getObjectType();
        sub_10079F4F4();
        v23 = *v22;
        type metadata accessor for ThemeOptionsContainerPresenter();
        sub_1006C10D4(&qword_100AF26C8, type metadata accessor for ThemeOptionsContainerPresenter);
        sub_1007A16D4();

        v30 = *(v23 + 32);
        v24 = v31;
        (*(v31 + 16))(v10, v14, v11);
        v25 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
        v10[*(v25 + 20)] = 0;
        (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
        sub_1000077D8(v10, v7, &qword_100AE65A8);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000077D8(v7, v4, &qword_100AE65A8);

        sub_10079B9B4();

        sub_100007840(v7, &qword_100AE65A8);
        sub_100007840(v10, &qword_100AE65A8);
        (*(v24 + 8))(v14, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1006ABE30(double a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A79C8(v4);
  sub_1006C571C(v4, type metadata accessor for _BookReaderInteractorState);
  v5 = sub_1007A0CE4();
  v7 = v6;
  if (v5 == sub_1007A0CE4() && v7 == v8)
  {

LABEL_9:
    if (a1 <= 0.7)
    {
      return sub_1007A0364();
    }

    return sub_1007A0384();
  }

  v10 = sub_1007A3AB4();

  if (v10)
  {
    goto LABEL_9;
  }

  if (a1 >= 0.3)
  {
    return sub_1007A0364();
  }

  return sub_1007A0384();
}

uint64_t sub_1006ABF84()
{
  v1 = v0;
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + 112);
    swift_getKeyPath();
    v15 = v8;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState);

    sub_100797A14();

    if (*(v8 + 281))
    {
      swift_getKeyPath();
      v15 = v7;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v9 = v7 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v10 = (v9 + *(type metadata accessor for BookReaderChromeState() + 44));
      if ((*v10 & 1) == 0 && !v10[1])
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v1;
        sub_10000A7C4(0, &qword_100AD1E10);
        v12 = v1;
        *v5 = sub_1007A2D74();
        (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
        v13 = sub_1007A1D34();
        result = (*(v3 + 8))(v5, v2);
        if ((v13 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_1006AC544(*(v11 + 16));

        goto LABEL_14;
      }

      sub_10079E514();
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v14 = 0x8000000000000008;
        goto LABEL_11;
      }
    }

    else
    {
      sub_10079E514();
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v14 = 0x8000000000000000;
LABEL_11:
        REActionMenuState.transition(to:)(v14);
LABEL_13:

LABEL_14:
      }
    }

    sub_10079BF94();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1006AC2E8(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1007A1874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  (*(v8 + 32))(v12 + v11, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_10000A7C4(0, &qword_100AD1E10);
  v13 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v14)
  {

    sub_1006C5A14(&type metadata accessor for ReadingLoupeVisibilityState, sub_1006B1A34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AC544(uint64_t a1)
{
  v2 = sub_1007A3854();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for State(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v16 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v15 + v16, v14, type metadata accessor for State);
  v17 = qword_100AD1640;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = *(v12 + 72);
  sub_1007A3834();
  sub_1007A3844();
  v19 = *(v3 + 8);
  v19(v6, v2);
  sub_1006C10D4(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant);
  if (sub_1007A20E4())
  {
    (*(v3 + 32))(v11, v9, v2);
  }

  else
  {
    v19(v9, v2);
    (*(v3 + 16))(v11, &v14[v18], v2);
  }

  (*(v3 + 40))(&v14[v18], v11, v2);
  sub_100444C5C(v14);
}

uint64_t sub_1006AC830()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - v8;
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  result = swift_weakLoadStrong();
  if (result)
  {

    v13 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_1000077D8(v11, v9, &qword_100ADB1C0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000077D8(v9, v3, &qword_100ADB1C0);

    sub_10079B9B4();
    sub_100461420(v6);

    sub_100007840(v6, &qword_100ADB1C0);
    sub_100007840(v9, &qword_100ADB1C0);
    return sub_100007840(v11, &qword_100ADB1C0);
  }

  return result;
}

uint64_t sub_1006ACA98()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 3)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006ACC70(char a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  if ((a1 & 1) == 0)
  {
    sub_1004A79C8(v4);
    sub_1006C571C(v4, type metadata accessor for _BookReaderInteractorState);
    v15 = sub_1007A0CE4();
    v17 = v16;
    if (v15 == sub_1007A0CE4() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_1007A3AB4();

      v14 = 0;
      if ((v20 & 1) == 0)
      {
        return sub_1004AB134(v14);
      }
    }

    goto LABEL_16;
  }

  sub_1004A79C8(&v22 - v6);
  sub_1006C571C(v7, type metadata accessor for _BookReaderInteractorState);
  v8 = sub_1007A0CE4();
  v10 = v9;
  if (v8 == sub_1007A0CE4() && v10 == v11)
  {

    v14 = 0;
    return sub_1004AB134(v14);
  }

  v13 = sub_1007A3AB4();

  if ((v13 & 1) == 0)
  {
LABEL_16:
    v14 = 1;
    return sub_1004AB134(v14);
  }

  v14 = 0;
  return sub_1004AB134(v14);
}

uint64_t sub_1006ACE50(uint64_t a1, void (*a2)(void))
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_10000A7C4(0, &qword_100AD1E10);
  v9 = v2;
  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {

    a2(*(v8 + 16));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006ACFC0()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    v4 = 1;
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  v4 = 0;
LABEL_6:
  sub_100007840(v2, &qword_100ADB1C0);
  return v4;
}

void sub_1006AD160(uint64_t a1)
{
  v2 = *(*(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 56);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_100529680(a1, 1);
      return;
    }

LABEL_8:
    sub_1004178E4(a1, 1);
    return;
  }

  if (!*(*(*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 56))
  {
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100597250(a1, 1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1006AD200()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = swift_getEnumCaseMultiPayload() != 4;
      sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
      return v4;
    }
  }

  else
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  sub_100007840(v2, &qword_100ADB1C0);
  return 1;
}

uint64_t sub_1006AD3D0()
{
  v1[2] = v0;
  sub_1007A26F4();
  v1[3] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1006AD468, v3, v2);
}

uint64_t sub_1006AD468()
{
  v1 = sub_1006A2C38();
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1006AD550;

    return sub_10022B4D0(6);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006AD550(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);

  return _swift_task_switch(sub_1006AD678, v6, v5);
}

uint64_t sub_1006AD678()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1006AD764;
    v3 = v0[8];

    return BookContentModule.select(annotationID:)(v3, v1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006AD764(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1006AD88C, v4, v3);
}

uint64_t sub_1006AD88C()
{
  v14 = v0;
  if (*(v0 + 96) == 1)
  {

    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_1006ADAD8;

    return sub_1006ADC64();
  }

  else
  {

    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AF23F0);

    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    if (v6)
    {
      v8 = *(v0 + 64);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      v11 = sub_1000070F4(v8, v7, &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Not presenting style picker for %s because selection failed", v9, 0xCu);
      sub_1000074E0(v10);
    }

    else
    {
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1006ADAD8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1006ADBF8, v3, v2);
}

uint64_t sub_1006ADBF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006ADC64()
{
  v1[2] = v0;
  sub_1007A26F4();
  v1[3] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1006ADCFC, v3, v2);
}

uint64_t sub_1006ADCFC()
{
  v18 = v0;
  v1 = sub_1006A2C38();
  *(v0 + 48) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController);
  v3 = OBJC_IVAR____TtC5Books24BookReaderMenuController_mode;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  if (*(v2 + v3))
  {

LABEL_4:
    v4 = *(v0 + 16);

    v5 = *(*(v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController) + OBJC_IVAR____TtC5Books24BookReaderMenuController_mode);
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AF23F0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v0 + 80) = v5;
      v11 = sub_1007A22E4();
      v13 = sub_1000070F4(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Refusing to build highlight style picker because mode is %s", v9, 0xCu);
      sub_1000074E0(v10);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }

  *(v2 + v3) = 1;
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_1006ADF60;

  return BookContentModule.presentEditMenu()();
}

uint64_t sub_1006ADF60(char a1)
{
  v2 = *v1;
  *(*v1 + 81) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1006AE088, v4, v3);
}

uint64_t sub_1006AE088()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  *(v2 + v1) = 0;
  v3 = *(v0 + 81);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1006AE108()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v3 = type metadata accessor for OverlayViewModel.Overlay(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = swift_getEnumCaseMultiPayload() != 2;
      sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
      return v4;
    }
  }

  else
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  }

  sub_100007840(v2, &qword_100ADB1C0);
  return 1;
}

uint64_t sub_1006AE2D8()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_100007840(v2, &qword_100ADB1C0);
    return sub_1006AA3D8(0, 0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload != 2)
  {
    return sub_1006AA3D8(0, 0);
  }

  return result;
}

void sub_1006AE4B8()
{
  sub_10022FB30(&v7);
  v8 = v7;
  v0 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    v1 = v8;
    sub_1000077D8(&v8, v6, &qword_100AF2618);
    sub_1006AA3D8(v1, v0);
    sub_100007840(&v8, &qword_100AF2618);
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AF23F0);
    oslog = sub_10079ACC4();
    v3 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to perform find selection. Missing state", v4, 2u);
    }
  }
}

uint64_t sub_1006AE638(char a1)
{
  swift_getObjectType();
  if ((a1 & 1) == 0 && sub_1007A13B4() == 4)
  {
    sub_1007A09E4();
  }

  return sub_1007A1194();
}

uint64_t sub_1006AE6C0()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(swift_allocObject() + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v5 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {

    sub_1006AB930(&v9);

    return !v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AE834(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1006AE8D4, v4, v3);
}

uint64_t sub_1006AE8D4()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v0[8] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[9] = v2;
  v0[10] = v1;

  return _swift_task_switch(sub_1006AE970, v2, v1);
}

uint64_t sub_1006AE970()
{
  v0[11] = *(v0[7] + 64);
  v0[12] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1006AEA08, v2, v1);
}

uint64_t sub_1006AEA08()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1006AEAD0;
  v4 = *(v0 + 128);

  return dispatch thunk of ReadingSettingsManaging.changeJustification(to:)(v4, ObjectType, v1);
}

uint64_t sub_1006AEAD0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006AEBF0, v3, v2);
}

uint64_t sub_1006AEBF0()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1006AEC54, v1, v2);
}

uint64_t sub_1006AEC54()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1006AECB8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 128) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1006AED58, v4, v3);
}

uint64_t sub_1006AED58()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor);
  v0[8] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[9] = v2;
  v0[10] = v1;

  return _swift_task_switch(sub_1006AEDF4, v2, v1);
}

uint64_t sub_1006AEDF4()
{
  v0[11] = *(v0[7] + 64);
  v0[12] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1006AEE8C, v2, v1);
}

uint64_t sub_1006AEE8C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1006AEF54;
  v4 = *(v0 + 128);

  return dispatch thunk of ReadingSettingsManaging.changeAllowMultipleColumns(to:)(v4, ObjectType, v1);
}

uint64_t sub_1006AEF54()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1006AF074, v3, v2);
}

uint64_t sub_1006AF074()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_1006AF0D8, v1, v2);
}

uint64_t sub_1006AF0D8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004EA6AC, v1, v2);
}

uint64_t sub_1006AF13C()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1004B06E4;

  return sub_1006AF1E8();
}

uint64_t sub_1006AF1E8()
{
  v1[7] = v0;
  v2 = sub_1007A3864();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1001F1160(&qword_100ADB1C0);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1007A26F4();
  v1[13] = sub_1007A26E4();
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_1006AF32C;

  return sub_1006B4E74();
}

uint64_t sub_1006AF32C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_1006AF46C;

  return sub_1006B5330();
}

uint64_t sub_1006AF46C()
{
  v1 = *v0;

  v3 = sub_1007A2694();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return _swift_task_switch(sub_1006AF5B0, v3, v2);
}

uint64_t sub_1006AF5B0()
{
  v0[18] = OBJC_IVAR____TtC5Books19BookReaderPresenter_viewModel;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100009864(Strong + 184, (v0 + 2));

    sub_10000E3E8(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1006AF8E0;

    return sub_1004B0820(1);
  }

  if (!swift_weakLoadStrong())
  {
    v6 = v0[11];

    v7 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_9;
  }

  v4 = v0[11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {

LABEL_9:
    sub_100007840(v0[11], &qword_100ADB1C0);

    v8 = v0[1];

    return v8();
  }

  sub_100007840(v0[11], &qword_100ADB1C0);
  sub_1006AC830();
  sub_1007A3B54();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1006AFC84;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1006AF8E0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1006AFA00, v3, v2);
}

uint64_t sub_1006AFA00()
{
  sub_1000074E0((v0 + 2));
  if (!swift_weakLoadStrong())
  {
    v3 = v0[11];

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = v0[11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(v0[11], &qword_100ADB1C0);

    v5 = v0[1];

    return v5();
  }

  sub_100007840(v0[11], &qword_100ADB1C0);
  sub_1006AC830();
  sub_1007A3B54();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1006AFC84;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1006AFC84()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1006C5AC0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1006AFE18;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1006AFE18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006AFE88(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10056D8CC(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006AFF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F1160(&qword_100ADB1C0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_1007A26F4();
  v5[9] = sub_1007A26E4();
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = sub_1006B0044;

  return sub_1006AF1E8();
}

uint64_t sub_1006B0044()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006B0180, v1, v0);
}

uint64_t sub_1006B0180()
{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v12 = v0[4];
    v8 = v0[3];

    sub_1006C56B4(v8, v5, type metadata accessor for OverlayViewModel.Overlay);
    v9 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_1000077D8(v5, v6, &qword_100ADB1C0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000077D8(v6, v12, &qword_100ADB1C0);

    sub_10079B9B4();
    sub_100461420(v7);

    sub_100007840(v7, &qword_100ADB1C0);
    sub_100007840(v6, &qword_100ADB1C0);
    sub_100007840(v5, &qword_100ADB1C0);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006B041C()
{
  v0 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 112);

    swift_getKeyPath();
    v19 = v4;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
  }

  v5 = sub_100214FD4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 168);

    v14 = *(v13 + 16);
    v15 = sub_1007A2744();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    sub_1007A26F4();
    swift_retain_n();

    v16 = sub_1007A26E4();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v14;
    *(v17 + 40) = v5;
    *(v17 + 48) = v7;
    *(v17 + 56) = v9;
    *(v17 + 64) = v11;
    *(v17 + 72) = 258;
    *(v17 + 74) = v20;
    *(v17 + 78) = v21;
    *(v17 + 88) = 0;
    *(v17 + 96) = 0;
    *(v17 + 80) = 0;
    *(v17 + 104) = 1;
    sub_1003457A0(0, 0, v2, &unk_10083DBD0, v17);
  }
}

uint64_t sub_1006B06C8()
{
  v0 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 112);

    swift_getKeyPath();
    v19 = v4;
    sub_1006C10D4(&qword_100ADB430, type metadata accessor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
  }

  v5 = sub_10021529C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 168);

    v14 = *(v13 + 16);
    v15 = sub_1007A2744();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    sub_1007A26F4();
    swift_retain_n();

    v16 = sub_1007A26E4();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v14;
    *(v17 + 40) = v5;
    *(v17 + 48) = v7;
    *(v17 + 56) = v9;
    *(v17 + 64) = v11;
    *(v17 + 72) = 258;
    *(v17 + 74) = v20;
    *(v17 + 78) = v21;
    *(v17 + 88) = 0;
    *(v17 + 96) = 0;
    *(v17 + 80) = 0;
    *(v17 + 104) = 1;
    sub_1003457A0(0, 0, v2, &unk_10083DBA0, v17);
  }
}

uint64_t sub_1006B0974()
{
  v0 = sub_1007A1D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10);

  *v3 = sub_1007A2D74();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_1007A1D34();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {

    sub_1006B0AB8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B0AB8()
{
  v0 = type metadata accessor for State(0);
  __chkstk_darwin(v0);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
    v5 = result;

    v6 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_1006C56B4(v4 + v6, v2, type metadata accessor for State);
    v2[*(v0 + 92)] = (v2[*(v0 + 92)] & 1) == 0;
    sub_100444C5C(v2);
  }

  return result;
}

uint64_t sub_1006B0BD8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v2 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);

    if (v2 == 1)
    {
      result = sub_1006AB6C4();
      if (result)
      {
        return result;
      }

      LOBYTE(result) = 1;
      return sub_1006B0CE4(result);
    }
  }

  v4 = sub_1006AB6C4();
  result = 0;
  if (v4 == 2 || (v4 & 1) != 0)
  {
    return sub_1006B0CE4(result);
  }

  return result;
}

uint64_t sub_1006B0CE4(char a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for OverlayViewModel.Overlay(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v33[1] = &off_100A2BAD8;
  v14 = swift_unknownObjectWeakInit();
  sub_100303A28(v14, v32);
  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  v30 = v8;
  v31 = v6;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  sub_1006C111C(v33);
  type metadata accessor for BookmarkNotesModule();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1006C1170(v32, v18 + 16);
  *(v18 + 32) = 256;
  *(v18 + 34) = 0;
  swift_unknownObjectWeakAssign();

  *(v18 + 48) = v17;
  swift_unownedRetain();

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = a1 & 1;
    if (*(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) == (a1 & 1))
    {
      *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = v21;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v29[1] = v7;
      v29[2] = v29;
      __chkstk_darwin(KeyPath);
      v29[-2] = v20;
      LOBYTE(v29[-1]) = v21;
      v33[0] = v20;
      sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);

      sub_100797A04();
    }
  }

  else
  {
  }

  *v13 = v18;
  v13[8] = 0;
  swift_storeEnumTagMultiPayload();
  v23 = sub_1007A2744();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_1006C56B4(v13, v10, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();

  v25 = v2;
  v26 = sub_1007A26E4();
  v27 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v25;
  sub_1006C5144(v10, v28 + v27, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v24, &unk_10083DCA8, v28);

  return sub_1006C571C(v13, type metadata accessor for OverlayViewModel.Overlay);
}

uint64_t sub_1006B1160()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for OverlayViewModel.Overlay(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v22 - v10);
  v12 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_shareModuleFactory];
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  ObjectType = swift_getObjectType();
  type metadata accessor for ShareModule();
  *v11 = sub_10051CACC(v14, ObjectType, v13);
  swift_storeEnumTagMultiPayload();
  v16 = sub_1007A2744();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1006C56B4(v11, v8, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();
  swift_retain_n();
  swift_unknownObjectRetain();
  v17 = v1;
  v18 = sub_1007A26E4();
  v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;
  sub_1006C5144(v8, v20 + v19, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v4, &unk_10083DC10, v20);

  return sub_1006C571C(v11, type metadata accessor for OverlayViewModel.Overlay);
}

uint64_t sub_1006B141C(uint64_t a1)
{
  v2 = sub_1004A8620();
  sub_1004A8804((v2 & 1) == 0);
  v3 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 80);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B14B4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v29 = v27 - v3;
  v4 = type metadata accessor for OverlayViewModel.Overlay(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27[1] = v6;
  v28 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v10 - 8);
  v12 = v27 - v11;
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if ((*(v5 + 48))(v12, 1, v4) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      result = sub_1006C571C(v12, type metadata accessor for OverlayViewModel.Overlay);
      if (EnumCaseMultiPayload == 1)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100007840(v12, &qword_100ADB1C0);
LABEL_7:
  sub_1006C10D4(&qword_100AF2548, type metadata accessor for BookReaderPresenter);
  v15 = sub_1007A19F4();
  Strong = swift_weakLoadStrong();
  v17 = v5;
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
    v19 = *(Strong + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage + 8);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *v9 = v15;
  *(v9 + 4) = 0;
  *(v9 + 2) = v18;
  *(v9 + 3) = v19;
  swift_storeEnumTagMultiPayload();
  v20 = sub_1007A2744();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  v22 = v28;
  sub_1006C56B4(v9, v28, type metadata accessor for OverlayViewModel.Overlay);
  sub_1007A26F4();

  v23 = v1;
  swift_retain_n();
  v24 = sub_1007A26E4();
  v25 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v23;
  sub_1006C5144(v22, v26 + v25, type metadata accessor for OverlayViewModel.Overlay);
  sub_1003457A0(0, 0, v21, &unk_10083DC78, v26);

  return sub_1006C571C(v9, type metadata accessor for OverlayViewModel.Overlay);
}

uint64_t sub_1006B1974(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_1007A1364();
  sub_1007A1374();
  return sub_1006B06C8();
}

uint64_t sub_1006B1A34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007A1874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 16))(v6, a2, v3);
  return sub_1007A13D4();
}

uint64_t sub_1006B1B80()
{
  result = sub_1006AB6C4();
  if (result == 2 || (result & 1) != 0)
  {

    return sub_1006B0CE4(0);
  }

  return result;
}

uint64_t sub_1006B1BC8()
{
  result = sub_1006AB6C4();
  if ((result & 1) == 0)
  {

    return sub_1006B0CE4(1);
  }

  return result;
}

uint64_t sub_1006B1CE4(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0374();
  }

  else
  {
    sub_1007A0394();
  }

  v6 = sub_1007079BC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1006B1DDC(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0374();
  }

  else
  {
    sub_1007A0394();
  }

  sub_1004A9D34(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006B1EC8()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  *(v5 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) = 0;
  *(v5 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 0;
  sub_1005B63DC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    v13 = v7;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    sub_10079B904();
    if (v13 != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v12 - 2) = v7;
      *(&v12 - 8) = 1;
      v13 = v7;
      sub_100797A04();
    }
  }

  *(swift_allocObject() + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v9 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v10 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v10)
  {

    sub_1006B21AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B21AC()
{

  sub_1004455C4();
}

char *sub_1006B21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a7;
  v36 = a6;
  v37 = a1;
  v12 = sub_10079F594();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v34 = *(v16 + 1);
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      v33 = type metadata accessor for BookReaderAccessoryHighlightsController();
      v30 = a3;
      v21 = a4;
      v22 = *&v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider];
      v31 = *&v7[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8];
      (*(v13 + 16))(v15, v35, v12);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v23 = v7;
      v24 = sub_100737ECC(v37, a2, v30, v22, v31, v18, v34, v20, v21, a5, v7, &off_100A2BB38, v15, ObjectType, v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_1006C10D4(&qword_100AF2608, type metadata accessor for BookReaderAccessoryHighlightsController);
      sub_1006C10D4(&qword_100AF2610, type metadata accessor for BookReaderAccessoryHighlightsController);
      return v24;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AF23F0);
  v27 = sub_10079ACC4();
  v28 = sub_1007A29B4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not create highlights controller, missing annotation provider services", v29, 2u);
  }

  return 0;
}

id sub_1006B252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a4;
  v111 = a3;
  v112 = a2;
  v113 = a1;
  v7 = sub_1001F1160(&qword_100AF4EA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v76 - v9;
  v106 = sub_1007A2D54();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AF2568);
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = v76 - v13;
  v14 = sub_1001F1160(&qword_100AF2570);
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin(v14);
  v105 = v76 - v15;
  v16 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v16 - 8);
  v98 = v76 - v17;
  v18 = sub_10079EF54();
  v109 = *(v18 - 8);
  v110 = v18;
  __chkstk_darwin(v18);
  v97 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v20 - 8);
  v99 = v76 - v21;
  v93 = sub_1001F1160(&qword_100AF25B8);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v23 = v76 - v22;
  v96 = sub_1001F1160(&unk_100AF25C0);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v76 - v24;
  v25 = sub_10079F594();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v82 = v23;
      v84 = v10;
      v85 = v8;
      v86 = v7;
      v87 = v5;
      v32 = *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider + 8];
      v83 = v26;
      v88 = *(v26 + 16);
      v89 = Strong;
      v88(v28, a5, v25);
      v79 = type metadata accessor for BookReaderAccessoryNotesController(0);
      v33 = objc_allocWithZone(v79);
      v91 = v25;
      v34 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_delegate];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v35 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_paginatingService + 8] = 0;
      swift_unknownObjectWeakInit();
      v78 = v30;
      v36 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_readingSettingsProvider];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_readingSettingsProvider + 8] = 0;
      swift_unknownObjectWeakInit();
      v37 = &v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_annotationProviderService];
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_annotationProviderService + 8] = 0;
      swift_unknownObjectWeakInit();
      v90 = v28;
      swift_weakInit();
      v38 = *(v109 + 56);
      v81 = v109 + 56;
      v80 = v38;
      v38(&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme], 1, 1, v110);
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_noteOrder] = _swiftEmptyArrayStorage;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_notes] = _swiftEmptyDictionarySingleton;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_cancellables] = &_swiftEmptySetSingleton;
      v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_layoutIsReady] = 0;
      *&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_documentOrdinal] = v113;
      *(v35 + 1) = v111;
      swift_unknownObjectWeakAssign();
      *(v36 + 1) = v32;
      swift_unknownObjectWeakAssign();
      *(v37 + 1) = v78;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      swift_weakAssign();
      *(v34 + 1) = &off_100A2BB50;
      swift_unknownObjectWeakAssign();
      v88(&v33[OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_adornmentState], v90, v91);
      v117.receiver = v33;
      v117.super_class = v79;
      v39 = objc_msgSendSuper2(&v117, "init");
      v40 = qword_100AD1C20;
      v87 = v39;
      if (v40 != -1)
      {
        swift_once();
      }

      v41 = sub_10079ACE4();
      sub_100008B98(v41, qword_100AF6F70);
      v42 = sub_10079ACC4();
      v43 = sub_1007A29A4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v42, v43, "Created for ordinal: %ld", v44, 0xCu);
      }

      swift_getObjectType();
      v116 = sub_1007A1394();
      sub_1001F1160(&unk_100AEB8B0);
      v88 = &protocol conformance descriptor for AnyPublisher<A, B>;
      sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
      v45 = v82;
      sub_10079BAD4();

      v76[1] = sub_10000A7C4(0, &qword_100AD1E10);
      v46 = sub_1007A2D74();
      v116 = v46;
      v78 = sub_1007A2D24();
      v47 = *(v78 - 8);
      v77 = *(v47 + 56);
      v79 = (v47 + 56);
      v48 = v99;
      v77(v99, 1, 1, v78);
      sub_100005920(&unk_100AF4ED0, &qword_100AF25B8);
      v76[2] = sub_100017E1C();
      v49 = v94;
      v50 = v93;
      sub_10079BAB4();
      sub_100007840(v48, &qword_100AD7EB0);

      (*(v92 + 8))(v45, v50);
      swift_allocObject();
      v51 = v87;
      swift_unknownObjectWeakInit();
      sub_100005920(&unk_100AF25E0, &unk_100AF25C0);
      v52 = v51;
      v53 = v96;
      sub_10079BB04();

      (*(v95 + 8))(v49, v53);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      v54 = v97;
      sub_1007A1344();
      v56 = v109;
      v55 = v110;
      v57 = v98;
      (*(v109 + 16))(v98, v54, v110);
      v80(v57, 0, 1, v55);
      v58 = OBJC_IVAR____TtC5Books34BookReaderAccessoryNotesController_currentTheme;
      swift_beginAccess();
      sub_10069802C(v57, v52 + v58);
      swift_endAccess();
      sub_10077F294();
      (*(v56 + 8))(v54, v55);
      sub_1001F1160(&unk_100AF2580);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100812CF0;
      swift_getObjectType();
      *(v59 + 32) = sub_10079FA84();
      *(v59 + 40) = sub_10079FA74();
      *(v59 + 48) = sub_10079F794();
      sub_1001F1160(&unk_100AEA1E0);
      sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
      v60 = v100;
      sub_10079B814();
      v61 = v103;
      sub_1007A2D34();
      v62 = sub_1007A2D74();
      v116 = v62;
      v77(v48, 1, 1, v78);
      sub_100005920(&unk_100AF4EE0, &qword_100AF2568);
      v63 = v105;
      v64 = v102;
      sub_10079BAC4();
      sub_100007840(v48, &qword_100AD7EB0);

      (*(v104 + 8))(v61, v106);
      v65 = v87;
      (*(v101 + 8))(v60, v64);
      v66 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v67 = swift_allocObject();
      *(v67 + 16) = sub_1006C16B4;
      *(v67 + 24) = v66;
      sub_100005920(&qword_100AF2598, &qword_100AF2570);
      v68 = v108;
      sub_10079BB04();

      (*(v107 + 8))(v63, v68);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      v116 = sub_10079F774();
      sub_1001F1160(&unk_100AEA190);
      sub_100005920(&unk_100AF25F0, &unk_100AEA190);
      v69 = v84;
      sub_10079BA74();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100005920(&unk_100AF4EF0, &qword_100AF4EA0);
      v70 = v86;
      sub_10079BB04();

      (*(v85 + 8))(v69, v70);
      swift_beginAccess();
      sub_10079B854();
      swift_endAccess();

      sub_10077F294();
      swift_unknownObjectRelease();

      (*(v83 + 8))(v90, v91);
      sub_1006C10D4(&qword_100AF2600, type metadata accessor for BookReaderAccessoryNotesController);
      return v65;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v71 = sub_10079ACE4();
  sub_100008B98(v71, qword_100AF23F0);
  v72 = sub_10079ACC4();
  v73 = sub_1007A29B4();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Could not create notes controller, missing annotation provider services", v74, 2u);
  }

  return 0;
}

uint64_t sub_1006B370C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v94 = a8;
  ObjectType = a7;
  v96 = a6;
  v93 = a4;
  v113 = a3;
  v109 = a2;
  v97 = a1;
  v11 = sub_1007A1D04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1001F1160(&qword_100AF1958);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v19 - 8);
  v107 = &v77 - v20;
  v21 = sub_1007A2D54();
  v102 = *(v21 - 8);
  v103 = v21;
  __chkstk_darwin(v21);
  v101 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001F1160(&qword_100AF2568);
  v99 = *(v23 - 8);
  v100 = v23;
  __chkstk_darwin(v23);
  v98 = &v77 - v24;
  v25 = sub_1001F1160(&qword_100AF2570);
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v104 = &v77 - v26;
  v110 = sub_10079ACE4();
  v92 = *(v110 - 8);
  __chkstk_darwin(v110);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10079F594();
  v108 = *(v28 - 8);
  __chkstk_darwin(v28);
  v112 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v9 + OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  v31 = *(v30 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();
LABEL_8:
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    sub_100008B98(v110, qword_100AF23F0);
    v74 = sub_10079ACC4();
    v75 = sub_1007A29B4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Could not create notes controller, missing annotation provider services", v76, 2u);
    }

    return 0;
  }

  v82 = v18;
  v83 = v16;
  v84 = v15;
  v85 = v14;
  v86 = v12;
  v87 = v11;
  v81 = a9;
  v80 = *(v108 + 16);
  v88 = Strong;
  v80(v112, a5, v28);
  v90 = *(*(v9 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v33 = type metadata accessor for BookReaderAccessoryAccessibilityController();
  v79 = v33;
  v34 = objc_allocWithZone(v33);
  v115 = v33;

  sub_1001F1160(&qword_100AF2578);
  sub_1007A22E4();
  sub_10079ACD4();
  v89 = v28;
  swift_unknownObjectWeakInit();
  v35 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_paginatingService + 8] = 0;
  swift_unknownObjectWeakInit();
  v36 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_annotationProviderService];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v78 = v31;
  v37 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_bookContentAccessoryAccessibilityHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  v38 = &v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_pageNumberProvider];
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_pageNumberProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v39 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentLocation;
  v40 = sub_10079FD44();
  (*(*(v40 - 8) + 56))(&v34[v39], 1, 1, v40);
  v41 = OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_currentTheme;
  v42 = sub_10079EF54();
  (*(*(v42 - 8) + 56))(&v34[v41], 1, 1, v42);
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_noteOrder] = _swiftEmptyArrayStorage;
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_cancellables] = &_swiftEmptySetSingleton;
  v43 = v97;
  *&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_documentOrdinal] = v97;
  *(v35 + 1) = v113;
  swift_unknownObjectWeakAssign();
  *(v36 + 1) = v78;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  *(v37 + 1) = v81;
  swift_unknownObjectWeakAssign();
  *(v38 + 1) = ObjectType;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v80(&v34[OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_adornmentState], v112, v89);
  v116.receiver = v34;
  v116.super_class = v79;
  v44 = objc_msgSendSuper2(&v116, "init");
  v45 = v92;
  v46 = v91;
  v47 = v110;
  (*(v92 + 16))(v91, v44 + OBJC_IVAR____TtC5Books42BookReaderAccessoryAccessibilityController_logger, v110);
  v96 = v44;
  v48 = sub_10079ACC4();
  v49 = sub_1007A29A4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v48, v49, "Created for ordinal: %ld", v50, 0xCu);
  }

  (*(v45 + 8))(v46, v47);
  sub_1001F1160(&unk_100AF2580);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10080EFF0;
  ObjectType = swift_getObjectType();
  *(v51 + 32) = sub_10079FA84();
  *(v51 + 40) = sub_10079FA74();
  v97 = sub_1001F1160(&unk_100AEA1E0);
  v110 = sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
  v52 = v98;
  sub_10079B814();
  v53 = v101;
  sub_1007A2D34();
  sub_10000A7C4(0, &qword_100AD1E10);
  v54 = sub_1007A2D74();
  v115 = v54;
  v55 = sub_1007A2D24();
  v56 = *(v55 - 8);
  v93 = *(v56 + 56);
  v94 = v56 + 56;
  v57 = v107;
  v93(v107, 1, 1, v55);
  sub_100005920(&unk_100AF4EE0, &qword_100AF2568);
  v92 = sub_100017E1C();
  v58 = v104;
  v59 = v100;
  sub_10079BAC4();
  sub_100007840(v57, &qword_100AD7EB0);

  (*(v102 + 8))(v53, v103);
  (*(v99 + 8))(v52, v59);
  v60 = swift_allocObject();
  v61 = v96;
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1006C169C;
  *(v62 + 24) = v60;
  sub_100005920(&qword_100AF2598, &qword_100AF2570);
  v63 = v61;
  v64 = v106;
  sub_10079BB04();

  (*(v105 + 8))(v58, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v115 = sub_10079F9F4();
  v65 = sub_1007A2D74();
  v114 = v65;
  v93(v57, 1, 1, v55);
  v66 = v82;
  sub_10079BAB4();
  sub_100007840(v57, &qword_100AD7EB0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AF25A0, &qword_100AF1958);
  v67 = v84;
  sub_10079BB04();

  (*(v83 + 8))(v66, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v68 = swift_allocObject();
  *(v68 + 16) = v90;
  *(v68 + 24) = v63;

  v69 = sub_1007A2D74();
  v70 = v85;
  *v85 = v69;
  v71 = v86;
  v72 = v87;
  (*(v86 + 104))(v70, enum case for DispatchPredicate.onQueue(_:), v87);
  LOBYTE(v60) = sub_1007A1D34();
  result = (*(v71 + 8))(v70, v72);
  if (v60)
  {

    sub_1004BC8F8(*(v68 + 16));

    sub_1004BBB70();
    sub_1004BC620();
    swift_unknownObjectRelease();

    (*(v108 + 8))(v112, v89);
    sub_1006C10D4(&qword_100AF25A8, type metadata accessor for BookReaderAccessoryAccessibilityController);
    return v63;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 344) = a5;
  *(v5 + 304) = a4;
  sub_1007A26F4();
  *(v5 + 312) = sub_1007A26E4();
  v7 = sub_1007A2694();
  *(v5 + 320) = v7;
  *(v5 + 328) = v6;

  return _swift_task_switch(sub_1006B4760, v7, v6);
}

uint64_t sub_1006B4760()
{
  sub_10022FB30((v0 + 16));
  if (*(v0 + 208))
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1006B484C;
    v2 = *(v0 + 344);

    return sub_10022B4D0(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1006B484C()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_1006B4980, v3, v2);
}

uint64_t sub_1006B4980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a6(a1, 1, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1006B4AA8(uint64_t a1, void *a2)
{
  v4 = sub_1001F1160(&unk_100ADA050);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1004FA248;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2BFD8;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1006B4C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1007A1D04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  sub_10000A7C4(0, &qword_100AD1E10);
  v12 = v3;
  v13 = a1;
  sub_1000260E8(a2);
  *v10 = sub_1007A2D74();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = sub_1007A1D34();
  result = (*(v8 + 8))(v10, v7);
  if (v14)
  {

    sub_1006B4DF0(*(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B4DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005670B0(a2, 1, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B4E74()
{
  v1[2] = v0;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1006B4F10, v3, v2);
}

uint64_t sub_1006B4F10()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v0[8] = sub_1007A26E4();
    v4 = sub_1007A2694();
    v0[9] = v4;
    v0[10] = v3;

    return _swift_task_switch(sub_1006B4FF0, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1006B4FF0()
{
  v1 = v0[7];
  v2 = sub_1007A26E4();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1006B50F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001008E68E0, sub_1006C0FCC, v3, &type metadata for () + 8);
}

uint64_t sub_1006B50F8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1006B5258, v3, v2);
}

uint64_t sub_1006B5258()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1006B52BC, v1, v2);
}

uint64_t sub_1006B52BC()
{
  v1 = *(v0 + 56);

  sub_1006A2D08(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B5330()
{
  v1[2] = v0;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1006B53CC, v3, v2);
}

uint64_t sub_1006B53CC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v0[7] = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = [v4 presentingViewController];
    if (v5)
    {

      v6 = v4;
      v0[9] = sub_1007A26E4();
      v8 = sub_1007A2694();
      v0[10] = v8;
      v0[11] = v7;

      return _swift_task_switch(sub_1006B54E4, v8, v7);
    }
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006B54E4()
{
  v1 = v0[8];
  v2 = sub_1007A26E4();
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1006B55EC;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD000000000000012, 0x80000001008E68E0, sub_1006C5ADC, v3, &type metadata for () + 8);
}

uint64_t sub_1006B55EC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006B574C, v3, v2);
}

uint64_t sub_1006B574C()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_1006B57B4, v2, v3);
}

uint64_t sub_1006B57B4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];

  v4 = *(v3 + v1);
  *(v3 + v1) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006B5834()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1006B58E0;

  return sub_1006B4E74();
}

uint64_t sub_1006B58E0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006C5AE0, v1, v0);
}

uint64_t sub_1006B5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1007A26F4();
  v6[11] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_1006B5AB8, v8, v7);
}

uint64_t sub_1006B5AB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1006B5BDC;

    return sub_1006AF1E8();
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_1006B5DB0(*(v0 + 72), *(v0 + 80));
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1006B5BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_1006B5D1C, v4, v3);
}

uint64_t sub_1006B5D1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1006B5DB0(*(v0 + 72), *(v0 + 80));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006B5DB0(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v5;
  v4[32] = *(a2 + 32);
  [a1 setTransitioningDelegate:v2];
  v6 = a1;
  sub_1006A2D08(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = v2;
    sub_1005670B0(v6, 1, sub_1006C4C78, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v2;
  }
}

uint64_t sub_1006B5E98(void *a1)
{
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(swift_allocObject() + 16) = a1;
  sub_10000A7C4(0, &qword_100AD1E10);
  v6 = a1;
  *v5 = sub_1007A2D74();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = sub_1007A1D34();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {

    sub_1006B5FFC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B5FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1006B6078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_1001F1160(&unk_100AD6170);
  v6[16] = swift_task_alloc();
  v7 = sub_1001F1160(&unk_100AE6A30);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1007A26F4();
  v6[20] = sub_1007A26E4();
  v9 = sub_1007A2694();
  v6[21] = v9;
  v6[22] = v8;

  return _swift_task_switch(sub_1006B61B4, v9, v8);
}

uint64_t sub_1006B61B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1006B652C;

    return sub_1006AF1E8();
  }

  else
  {

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [*(v0 + 112) popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        v8 = swift_weakLoadStrong();
        if (v8)
        {
          v9 = v8;
          swift_getKeyPath();
          *(v0 + 96) = v9;
          sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
          sub_100797A14();

          v10 = *(v9 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v0 + 136);
        v12 = *(v0 + 144);
        v14 = *(v0 + 120);
        v13 = *(v0 + 128);
        v15 = *(v0 + 112);
        [v7 setBackgroundColor:v10];

        [v7 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v15];
        [v7 _setCentersPopoverIfSourceViewNotSet:1];
        sub_1000077D8(v14, v13, &unk_100AD6170);
        if ((*(v12 + 48))(v13, 1, v11) == 1)
        {
          v16 = *(v0 + 128);

          sub_100007840(v16, &unk_100AD6170);
        }

        else
        {
          v18 = *(v0 + 144);
          v17 = *(v0 + 152);
          v19 = *(v0 + 136);
          (*(v18 + 32))(v17, *(v0 + 128), v19);
          sub_10079FEB4();
          [v7 setSourceRect:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
          v20 = sub_10079FEF4();
          [v7 setSourceView:v20];

          (*(v18 + 8))(v17, v19);
        }
      }

      v21 = *(v0 + 112);
      v22 = *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
      *&v5[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = v21;

      v23 = v21;
      sub_1006B6948();
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1006B652C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_1006B666C, v4, v3);
}

uint64_t sub_1006B666C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(v0 + 112) popoverPresentationController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_weakLoadStrong();
      if (v5)
      {
        v6 = v5;
        swift_getKeyPath();
        *(v0 + 96) = v6;
        sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
        sub_100797A14();

        v7 = *(v6 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      [v4 setBackgroundColor:v7];

      [v4 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v12];
      [v4 _setCentersPopoverIfSourceViewNotSet:1];
      sub_1000077D8(v11, v10, &unk_100AD6170);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        v13 = *(v0 + 128);

        sub_100007840(v13, &unk_100AD6170);
      }

      else
      {
        v15 = *(v0 + 144);
        v14 = *(v0 + 152);
        v16 = *(v0 + 136);
        (*(v15 + 32))(v14, *(v0 + 128), v16);
        sub_10079FEB4();
        [v4 setSourceRect:{*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40)}];
        v17 = sub_10079FEF4();
        [v4 setSourceView:v17];

        (*(v15 + 8))(v14, v16);
      }
    }

    v18 = *(v0 + 112);
    v19 = *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
    *&v2[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = v18;

    v20 = v18;
    sub_1006B6948();
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_1006B6948()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v6 = *&v0[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController];
  if (v6)
  {
    v7 = v6;
    if ([v7 readyForDisplay])
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      *(v8 + 24) = v7;
      sub_10000A7C4(0, &qword_100AD1E10);
      v9 = v7;
      v10 = v0;
      *v4 = sub_1007A2D74();
      (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
      v11 = sub_1007A1D34();
      (*(v2 + 8))(v4, v1);
      if (v11)
      {

        sub_1006B8614(*(v8 + 16), *(v8 + 24));
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v12 = [v7 failedToLoad];

      if (v12)
      {
        v13 = *&v0[v5];
        *&v0[v5] = 0;
      }
    }
  }
}

uint64_t sub_1006B6B38@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_10079BC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AF2688);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_1001F1160(&unk_100AF2690);
  __chkstk_darwin(v7 - 8);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_getKeyPath();
    v33 = v16;
    sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v17 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v14, v16 + v17, v1);

    v18 = *(v2 + 56);
    v18(v14, 0, 1, v1);
  }

  else
  {
    v18 = *(v2 + 56);
    v18(v14, 1, 1, v1);
  }

  (*(v2 + 104))(v11, enum case for ColorScheme.dark(_:), v1);
  v18(v11, 0, 1, v1);
  v19 = *(v4 + 48);
  sub_1000077D8(v14, v6, &unk_100AF2690);
  sub_1000077D8(v11, &v6[v19], &unk_100AF2690);
  v20 = *(v2 + 48);
  if (v20(v6, 1, v1) == 1)
  {
    sub_100007840(v11, &unk_100AF2690);
    sub_100007840(v14, &unk_100AF2690);
    if (v20(&v6[v19], 1, v1) == 1)
    {
      sub_100007840(v6, &unk_100AF2690);
LABEL_12:
      v22 = &enum case for BookContentUserInterfaceStyle.dark(_:);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v21 = v31;
  sub_1000077D8(v6, v31, &unk_100AF2690);
  if (v20(&v6[v19], 1, v1) == 1)
  {
    sub_100007840(v11, &unk_100AF2690);
    sub_100007840(v14, &unk_100AF2690);
    (*(v2 + 8))(v21, v1);
LABEL_9:
    sub_100007840(v6, &qword_100AF2688);
    goto LABEL_10;
  }

  v23 = v30;
  (*(v2 + 32))(v30, &v6[v19], v1);
  sub_1006C10D4(&qword_100AEB098, &type metadata accessor for ColorScheme);
  v24 = v21;
  v25 = sub_1007A2124();
  v26 = *(v2 + 8);
  v26(v23, v1);
  sub_100007840(v11, &unk_100AF2690);
  sub_100007840(v14, &unk_100AF2690);
  v26(v24, v1);
  sub_100007840(v6, &unk_100AF2690);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = &enum case for BookContentUserInterfaceStyle.light(_:);
LABEL_13:
  v27 = *v22;
  v28 = sub_10079F7E4();
  return (*(*(v28 - 8) + 104))(v32, v27, v28);
}

void sub_1006B70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, uint64_t a10)
{
  v69 = a8;
  v73 = a7;
  v66 = a6;
  v72 = a5;
  v65 = a4;
  v71 = a3;
  v64 = a2;
  v70 = a1;
  v12 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v12 - 8);
  v68 = &v64 - v13;
  v14 = sub_10079EF54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = sub_10079F7E4();
  v22 = *(v21 - 8);
  v79 = v21;
  v80 = v22;
  __chkstk_darwin(v21);
  v74 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v77 = &v64 - v25;
  sub_1006B6B38(&v64 - v25);
  v76 = sub_1007A07A4();
  swift_getObjectType();
  sub_1007A1344();
  v78 = sub_10079EE14();
  v26 = *(v15 + 8);
  v26(v20, v14);
  sub_1007A1344();
  v27 = sub_10079EF24();
  v26(v17, v14);
  v28 = v68;
  v29 = v69;
  sub_1006C10D4(&unk_100AF26A0, type metadata accessor for BookReaderPresenter);
  v30 = sub_1007A0084();
  v31 = objc_allocWithZone(v30);
  v67 = v10;
  v32 = sub_1007A0074();
  sub_100009864(v29, v84);
  v82 = v30;
  v83 = &protocol witness table for FootnoteRouter;
  v81 = v32;
  v33 = objc_allocWithZone(sub_1007A0534());
  v75 = v32;
  v34 = sub_1007A0524();
  v35 = objc_allocWithZone(BKExpandedContentResource);
  v36 = [v35 init];
  sub_1000077D8(v70, v28, &unk_100AD5AC0);
  v37 = sub_1007969B4();
  v38 = *(v37 - 8);
  v40 = 0;
  if ((*(v38 + 48))(v28, 1, v37) != 1)
  {
    sub_100796944(v39);
    v40 = v41;
    (*(v38 + 8))(v28, v37);
  }

  [v36 setSourceURL:v40];

  if (v71)
  {
    v42 = sub_1007A2214();
    [v36 setResource:v42];
  }

  v43 = v78;
  if (v72)
  {
    v44 = sub_1007A2214();
  }

  else
  {
    v44 = 0;
  }

  [v36 setTitle:v44];

  if (v73)
  {
    v45 = sub_1007A2214();
  }

  else
  {
    v45 = 0;
  }

  [v36 setContentType:v45];

  [v36 setZoomScale:a9];
  sub_10000E3E8(v29, v29[3]);
  v46 = sub_10079EC14();
  [v36 setCacheItem:v46];

  v48 = v79;
  v47 = v80;
  v49 = v74;
  (*(v80 + 104))(v74, enum case for BookContentUserInterfaceStyle.dark(_:), v79);
  v50 = v77;
  v51 = sub_10079F7D4();
  v53 = *(v47 + 8);
  v52 = v47 + 8;
  v74 = v53;
  (v53)(v49, v48);
  v54 = objc_allocWithZone(BKFootnoteViewController2);
  v55 = v76;
  v56 = [v54 initWithResource:v36 stylesheetSet:v76 backgroundColor:v43 textColor:v27];
  v73 = v27;
  v57 = v56;
  [v56 setPresenter:v34];
  if (v57)
  {
    v72 = a10;
    if (v51)
    {
      v58 = 5;
    }

    else
    {
      v58 = 2;
    }

    [v57 setDelegate:v34];
    v80 = v52;
    sub_10000E3E8(v29, v29[3]);
    v59 = v57;
    [v59 setAllowsRemoteInspection:sub_10079EC54() & 1];

    v60 = objc_opt_self();
    v61 = v59;
    v62 = [v60 themeForEPUBTheme:v58];
    [v61 setTheme:v62];

    [v61 prepareForDisplay];
    (v74)(v50, v79);
    v63 = v61;
    sub_1006C0C08(v63, v72);
  }

  else
  {
    [0 prepareForDisplay];

    (v74)(v50, v48);
  }
}

void sub_1006B7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _OWORD *a6)
{
  v28 = a6;
  v12 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_10079F7E4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006B6B38(v18);
  v19 = sub_1006C35F8(v6, a1, a2, v18, a3, a4, a5);
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v20 = sub_1007A2744();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();

    v22 = v19;
    v23 = sub_1007A26E4();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = &protocol witness table for MainActor;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;
    v25 = v28;
    v26 = v28[1];
    *(v24 + 48) = *v28;
    *(v24 + 64) = v26;
    *(v24 + 80) = *(v25 + 32);

    sub_1003457A0(0, 0, v14, &unk_10083DEC8, v24);
  }
}

void sub_1006B7A9C(uint64_t a1@<X0>, char a2@<W3>, BOOL *a3@<X8>)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_100796944(v7);
      v10 = v9;
      [v8 assetViewController:a1 requestOpenURL:v9 likelyUserInitiated:a2 & 1];
      swift_unknownObjectRelease();
    }
  }

  *a3 = a1 == 0;
}

uint64_t sub_1006B7B34(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a3;
  v72 = a2;
  v65 = sub_1007A1D04();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  sub_1007A2154();
  sub_100796C94();
  v67 = *(v12 + 16);
  v71 = v12 + 16;
  v67(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = ObjCClassFromMetadata;
  v74 = objc_opt_self();
  v19 = [v74 bundleForClass:ObjCClassFromMetadata];
  v73 = *(v5 + 16);
  v78 = v5 + 16;
  v66 = v7;
  v59 = v4;
  v73(v7, v10, v4);
  sub_1007A22D4();
  v69 = *(v5 + 8);
  v77 = v5 + 8;
  v69(v10, v4);
  v20 = *(v12 + 8);
  v75 = v12 + 8;
  v76 = v20;
  v21 = v11;
  v20(v17, v11);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = v61;
  v23[2] = v72;
  v23[3] = v24;
  v23[4] = v22;

  v25 = sub_1007A2214();

  v83 = sub_1006C4B6C;
  v84 = v23;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v60 = &v81;
  v81 = sub_100201C54;
  v82 = &unk_100A2C3C0;
  v26 = _Block_copy(&aBlock);

  v58 = objc_opt_self();
  v62 = [v58 actionWithTitle:v25 style:1 handler:v26];
  _Block_release(v26);

  sub_1007A2154();
  sub_100796C94();
  v57 = v14;
  v67(v14, v17, v21);
  v27 = [v74 bundleForClass:v70];
  v28 = v59;
  v73(v66, v10, v59);
  sub_1007A22D4();
  v69(v10, v28);
  v76(v17, v21);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = v72;
  v30[3] = v24;
  v30[4] = v29;

  v31 = sub_1007A2214();

  v83 = sub_1006C4B90;
  v84 = v30;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_100201C54;
  v82 = &unk_100A2C410;
  v32 = _Block_copy(&aBlock);

  v72 = [v58 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  sub_1007A2154();
  sub_100796C94();
  v33 = v57;
  v34 = v21;
  v35 = v67;
  v67(v57, v17, v21);
  v36 = v70;
  v37 = [v74 bundleForClass:v70];
  v38 = v66;
  v73(v66, v10, v28);
  v61 = sub_1007A22D4();
  v60 = v39;
  v40 = v69;
  v69(v10, v28);
  v76(v17, v34);
  sub_1007A2154();
  sub_100796C94();
  v35(v33, v17, v34);
  v41 = [v74 bundleForClass:v36];
  v73(v38, v10, v28);
  sub_1007A22D4();
  v40(v10, v28);
  v42 = v72;
  v76(v17, v34);
  v43 = sub_1007A2214();

  v44 = sub_1007A2214();
  v45 = v62;

  v46 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:1];

  [v46 addAction:v45];
  [v46 addAction:v42];
  v47 = swift_allocObject();
  v48 = v68;
  *(v47 + 16) = v68;
  *(v47 + 24) = v46;
  sub_10000A7C4(0, &qword_100AD1E10);
  v49 = v48;
  v50 = v46;
  v51 = sub_1007A2D74();
  v52 = v63;
  *v63 = v51;
  v53 = v64;
  v54 = v65;
  (*(v64 + 104))(v52, enum case for DispatchPredicate.onQueue(_:), v65);
  LOBYTE(v43) = sub_1007A1D34();
  result = (*(v53 + 8))(v52, v54);
  if (v43)
  {

    sub_1006B8614(*(v47 + 16), *(v47 + 24));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006B856C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_getObjectType();
      sub_1007A1A34();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1006B8614(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005670B0(a2, 1, 0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B8680()
{
  v0 = sub_1001F1160(&unk_100AE7C50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if ((sub_1004A8620() & 1) != 0 || (sub_1004A8C68(v2), v3 = sub_1001F1160(&unk_100AF2670), v4 = (*(*(v3 - 8) + 48))(v2, 1, v3), result = sub_100007840(v2, &unk_100AE7C50), v4 != 1))
  {
    v6 = sub_1004A8620();
    sub_1004A8804((v6 & 1) == 0);
    v7 = sub_1004A8620();
    return sub_1006A976C(v7 & 1);
  }

  return result;
}

uint64_t sub_1006B87A0()
{
  v1 = sub_1007A1D04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(swift_allocObject() + 16) = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v5 = v0;
  *v4 = sub_1007A2D74();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = sub_1007A1D34();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {

    sub_1006B890C(&v8);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B890C@<X0>(void *a1@<X8>)
{
  sub_10022FB30(v6);
  v8 = v7;
  v2 = *(&v7 + 1);
  v3 = v7;
  if (!*(&v7 + 1))
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  return sub_1000077D8(&v8, &v5, &qword_100AD60D0);
}

uint64_t sub_1006B8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for State(0);
  v4[7] = swift_task_alloc();
  sub_1007A26F4();
  v4[8] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B8A4C, v6, v5);
}

uint64_t sub_1006B8A4C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = *(*(v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager) + 24);
  v5 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_1006C56B4(v4 + v5, v1, type metadata accessor for State);
  *(v1 + *(v3 + 88)) = (*(v1 + *(v3 + 88)) & 1) == 0;

  sub_100444C5C(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006B8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1006B8BD0, v6, v5);
}

uint64_t sub_1006B8BD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1006B8CC8;

    return sub_1005684C4();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1006B8CC8()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1006B8E0C, v3, v2);
}

uint64_t sub_1006B8E0C()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B8E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B8F18, v6, v5);
}

uint64_t sub_1006B8F18()
{

  sub_100445FDC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B8F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1007A26F4();
  v6[5] = sub_1007A26E4();
  v8 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9038, v8, v7);
}

uint64_t sub_1006B9038()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1006C42B8(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1006B90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9148, v6, v5);
}

uint64_t sub_1006B9148()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568AB0();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1006B9278, v7, v6);
}

uint64_t sub_1006B9278()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568D34();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B9314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007A26F4();
  v4[4] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1006B93AC, v6, v5);
}

uint64_t sub_1006B93AC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100568FE8();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006B9440(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB4D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44[-1] - v7;
  Strong = swift_weakLoadStrong();
  if (Strong && (v10 = Strong, swift_getKeyPath(), v44[2] = v10, sub_1006C10D4(&qword_100AF2550, type metadata accessor for BookReaderViewModel), sub_100797A14(), , v11 = swift_unknownObjectWeakLoadStrong(), , v11) && (v12 = OBJC_IVAR____TtC5Books22PageCurlViewController_tapActionViews, v13 = swift_beginAccess(), v14 = *(v11 + v12), __chkstk_darwin(v13), *(&v43 - 2) = a1, , sub_1006A0DB4(sub_1006C4B4C, (&v43 - 4), v14), v16 = v15, swift_unknownObjectRelease(), , v16))
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AF23F0);
    (*(v3 + 16))(v8, a1, v2);
    v18 = v16;
    v19 = sub_10079ACC4();
    v20 = sub_1007A2994();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v21 = 136315394;
      v22 = [v18 description];
      v23 = sub_1007A2254();
      v25 = v24;

      v26 = sub_1000070F4(v23, v25, v44);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_100005920(&qword_100AF2658, &unk_100ADB4D0);
      v27 = sub_1007A3A74();
      v29 = v28;
      (*(v3 + 8))(v8, v2);
      v30 = sub_1000070F4(v27, v29, v44);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "#unhandled_tap Found chrome view %s at %s ... invoking its action", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v41 = *&v18[OBJC_IVAR____TtC5Books15BKTapActionView_action];

    v41(v42);

    return 1;
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v31 = sub_10079ACE4();
    sub_100008B98(v31, qword_100AF23F0);
    (*(v3 + 16))(v5, a1, v2);
    v32 = sub_10079ACC4();
    v33 = sub_1007A2994();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      sub_100005920(&qword_100AF2658, &unk_100ADB4D0);
      v36 = sub_1007A3A74();
      v38 = v37;
      (*(v3 + 8))(v5, v2);
      v39 = sub_1000070F4(v36, v38, v44);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "#unhandled_tap No chrome view at %s", v34, 0xCu);
      sub_1000074E0(v35);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }
}

uint64_t sub_1006B9A58()
{
  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AF23F0);
  v1 = sub_10079ACC4();
  v2 = sub_1007A2994();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "#unhandled_tap toggling chrome", v3, 2u);
  }

  sub_100445FDC();
}

char *sub_1006B9B64()
{
  v0 = sub_100796CF4();
  __chkstk_darwin(v0 - 8);
  v2 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v80 - v8;
  sub_10022FB30(v85);
  v82 = v4;
  v83 = v2;
  v84 = v6;
  if (v85[3])
  {
    sub_1007A2154();
    (*(v4 + 16))(v6, v9, v3);
    sub_100796C94();
    v10 = sub_1007A22B4();
    v12 = v11;
    (*(v4 + 8))(v9, v3);
    v13 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_10000B3D8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_10022FB30(v86);
  if (v86[33])
  {
    sub_10022FB30(&v87);
    v17 = sub_100787658();
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_10000B3D8((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
  }

  v23 = v84;
  sub_10022FB30(v88);
  if (v88[35])
  {
    sub_1007A2154();
    v24 = v82;
    (*(v82 + 16))(v23, v9, v3);
    sub_100796C94();
    v25 = sub_1007A22B4();
    v27 = v26;
    (*(v24 + 8))(v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v29 = *(v13 + 2);
    v28 = *(v13 + 3);
    if (v29 >= v28 >> 1)
    {
      v13 = sub_10000B3D8((v28 > 1), v29 + 1, 1, v13);
    }

    *(v13 + 2) = v29 + 1;
    v30 = &v13[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v27;
  }

  sub_10022FB30(v89);
  v81 = v3;
  if (v89[24])
  {
    sub_10022FB30(&v90);
    v31 = sub_100787894();
    v33 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v35 = *(v13 + 2);
    v34 = *(v13 + 3);
    if (v35 >= v34 >> 1)
    {
      v13 = sub_10000B3D8((v34 > 1), v35 + 1, 1, v13);
    }

    *(v13 + 2) = v35 + 1;
    v36 = &v13[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v33;
  }

  sub_10022FB30(v91);
  if (v91[24])
  {
    sub_10022FB30(&v92);
    v37 = sub_100787414();
    v39 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v41 = *(v13 + 2);
    v40 = *(v13 + 3);
    if (v41 >= v40 >> 1)
    {
      v13 = sub_10000B3D8((v40 > 1), v41 + 1, 1, v13);
    }

    *(v13 + 2) = v41 + 1;
    v42 = &v13[16 * v41];
    *(v42 + 4) = v37;
    *(v42 + 5) = v39;
  }

  sub_10022FB30(&v93);
  *(v104 + 9) = *(v95 + 9);
  v103 = v94;
  v104[0] = v95[0];
  v43 = *(v95 + 9) >> 56;
  if (v43)
  {
    v44 = v104[0];
    v109 = v94;
    v108[0] = *(&v104[0] + 1);
    v108[1] = *(v95 + 9) >> 56;
    sub_1000077D8(&v103, v100, &qword_100AD6180);
    sub_1002BB1A4(v108, v100);
    sub_100007840(&v109, &qword_100AD4F30);
    v110[0] = v44;
    sub_100007840(v110, &qword_100AD6188);
    sub_1002308AC(v108);
    if (*(&v44 + 1))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  if (v43 == 0xE000000000000000)
  {

    goto LABEL_42;
  }

LABEL_36:
  v45 = sub_1007A3AB4();

  if ((v45 & 1) == 0)
  {
    v46 = sub_1005FBE34(0, 0xE000000000000000);
    v48 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v50 = *(v13 + 2);
    v49 = *(v13 + 3);
    if (v50 >= v49 >> 1)
    {
      v13 = sub_10000B3D8((v49 > 1), v50 + 1, 1, v13);
    }

    *(v13 + 2) = v50 + 1;
    v51 = &v13[16 * v50];
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
  }

LABEL_42:
  sub_10022FB30(v96);
  v52 = v84;
  if (v96[1])
  {
    sub_1007A2154();
    v53 = v81;
    v54 = v82;
    (*(v82 + 16))(v52, v9, v81);
    sub_100796C94();
    v55 = sub_1007A22B4();
    v57 = v56;
    (*(v54 + 8))(v9, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v59 = *(v13 + 2);
    v58 = *(v13 + 3);
    if (v59 >= v58 >> 1)
    {
      v13 = sub_10000B3D8((v58 > 1), v59 + 1, 1, v13);
    }

    *(v13 + 2) = v59 + 1;
    v60 = &v13[16 * v59];
    *(v60 + 4) = v55;
    *(v60 + 5) = v57;
  }

  sub_10022FB30(&v97);
  *(v102 + 9) = *(v99 + 9);
  v101 = v98;
  v102[0] = v99[0];
  v61 = *(v99 + 9) >> 56;
  if (v61)
  {
    v62 = v102[0];
    v106 = v98;
    v105[0] = *(&v102[0] + 1);
    v105[1] = *&v102[1];
    sub_1000077D8(&v101, v100, &unk_100AE7C40);
    sub_1002BB1A4(v105, v100);
    sub_100007840(&v106, &qword_100AD4F30);
    v107 = v62;
    sub_100007840(&v107, &qword_100AD6188);
    sub_1002308AC(v105);
    v63 = v81;
    if (*(&v62 + 1))
    {
      goto LABEL_54;
    }
  }

  else
  {
    v61 = 0xE000000000000000;
    v63 = v81;
  }

  if (v61 == 0xE000000000000000)
  {

    goto LABEL_60;
  }

LABEL_54:
  v64 = sub_1007A3AB4();

  if ((v64 & 1) == 0)
  {
    v65 = sub_1005FB8C4(0, 0xE000000000000000);
    v67 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v69 = *(v13 + 2);
    v68 = *(v13 + 3);
    if (v69 >= v68 >> 1)
    {
      v13 = sub_10000B3D8((v68 > 1), v69 + 1, 1, v13);
    }

    *(v13 + 2) = v69 + 1;
    v70 = &v13[16 * v69];
    *(v70 + 4) = v65;
    *(v70 + 5) = v67;
  }

LABEL_60:
  sub_10022FB30(v100);
  v71 = v84;
  if (v100[19])
  {
    sub_1007A2154();
    v72 = v82;
    (*(v82 + 16))(v71, v9, v63);
    sub_100796C94();
    v73 = sub_1007A22B4();
    v75 = v74;
    (*(v72 + 8))(v9, v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10000B3D8(0, *(v13 + 2) + 1, 1, v13);
    }

    v77 = *(v13 + 2);
    v76 = *(v13 + 3);
    if (v77 >= v76 >> 1)
    {
      v13 = sub_10000B3D8((v76 > 1), v77 + 1, 1, v13);
    }

    *(v13 + 2) = v77 + 1;
    v78 = &v13[16 * v77];
    *(v78 + 4) = v73;
    *(v78 + 5) = v75;
  }

  return v13;
}

uint64_t sub_1006BA620(uint64_t a1, uint64_t a2)
{
  v3[369] = v2;
  v3[368] = a2;
  v3[367] = a1;
  sub_100796CF4();
  v3[370] = swift_task_alloc();
  v4 = sub_1007A21D4();
  v3[371] = v4;
  v3[372] = *(v4 - 8);
  v3[373] = swift_task_alloc();
  v3[374] = swift_task_alloc();
  v3[375] = sub_1007A26F4();
  v3[376] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v3[377] = v6;
  v3[378] = v5;

  return _swift_task_switch(sub_1006BA75C, v6, v5);
}

uint64_t sub_1006BA75C()
{
  v129 = v0;
  v1 = *(v0 + 2992);
  v2 = *(v0 + 2984);
  v3 = *(v0 + 2976);
  v4 = *(v0 + 2968);
  v5 = *(v0 + 2944);
  v6 = *(v0 + 2936);
  sub_1007A2154();
  v127 = *(v3 + 16);
  v127(v2, v1, v4);
  sub_100796C94();
  v7 = sub_1007A22B4();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v1, v4);
  if (v7 == v6 && v9 == v5)
  {

    goto LABEL_5;
  }

  v11 = sub_1007A3AB4();

  if (v11)
  {
LABEL_5:

    sub_10022FB30((v0 + 2320));
    if (*(v0 + 2344))
    {
      sub_100226F6C();
    }

    goto LABEL_7;
  }

  v14 = *(v0 + 2992);
  v15 = *(v0 + 2984);
  v16 = *(v0 + 2968);
  v17 = *(v0 + 2944);
  v18 = *(v0 + 2936);
  sub_1007A2154();
  v127(v15, v14, v16);
  sub_100796C94();
  v19 = sub_1007A22B4();
  v21 = v20;
  v10(v14, v16);
  if (v19 == v18 && v21 == v17)
  {
    goto LABEL_12;
  }

  v22 = sub_1007A3AB4();

  if (v22)
  {
    goto LABEL_14;
  }

  v24 = *(v0 + 2992);
  v25 = *(v0 + 2984);
  v26 = *(v0 + 2968);
  v27 = *(v0 + 2944);
  v28 = *(v0 + 2936);
  sub_1007A2154();
  v127(v25, v24, v26);
  sub_100796C94();
  v29 = sub_1007A22B4();
  v31 = v30;
  v10(v24, v26);
  if (v29 == v28 && v31 == v27)
  {
LABEL_12:

    goto LABEL_14;
  }

  v32 = sub_1007A3AB4();

  if (v32)
  {
LABEL_14:
    sub_10022FB30((v0 + 2032));
    if (*(v0 + 2296))
    {
      *(v0 + 3032) = sub_1007A26E4();
      v23 = swift_task_alloc();
      *(v0 + 3040) = v23;
      *v23 = v0;
      v23[1] = sub_1006BBA4C;

      return sub_10022C598();
    }

    goto LABEL_62;
  }

  v33 = *(v0 + 2992);
  v34 = *(v0 + 2984);
  v35 = *(v0 + 2968);
  v36 = *(v0 + 2944);
  v37 = *(v0 + 2936);
  sub_1007A2154();
  v127(v34, v33, v35);
  sub_100796C94();
  v38 = sub_1007A22B4();
  v40 = v39;
  v10(v33, v35);
  if (v38 == v37 && v40 == v36)
  {

    goto LABEL_25;
  }

  v41 = sub_1007A3AB4();

  if (v41)
  {
LABEL_25:
    sub_10022FB30((v0 + 1744));
    if (*(v0 + 2024))
    {
      *(v0 + 3048) = sub_1007A26E4();
      v42 = swift_task_alloc();
      *(v0 + 3056) = v42;
      *v42 = v0;
      v42[1] = sub_1006BBBF0;

      return sub_10022CACC();
    }

LABEL_62:

    goto LABEL_7;
  }

  v43 = *(v0 + 2992);
  v44 = *(v0 + 2984);
  v45 = *(v0 + 2968);
  v46 = *(v0 + 2944);
  v47 = *(v0 + 2936);
  sub_1007A2154();
  v127(v44, v43, v45);
  sub_100796C94();
  v48 = sub_1007A22B4();
  v50 = v49;
  v10(v43, v45);
  if (v48 != v47 || v50 != v46)
  {
    v51 = sub_1007A3AB4();

    if (v51)
    {
      goto LABEL_33;
    }

    v53 = *(v0 + 2992);
    v54 = *(v0 + 2984);
    v55 = *(v0 + 2968);
    v126 = *(v0 + 2944);
    v56 = *(v0 + 2936);
    sub_1007A2154();
    v127(v54, v53, v55);
    sub_100796C94();
    v57 = sub_1007A22B4();
    v59 = v58;
    v10(v53, v55);
    if (v57 != v56 || v59 != v126)
    {
      v60 = sub_1007A3AB4();

      if (v60)
      {
        goto LABEL_33;
      }

      v61 = *(v0 + 2992);
      v62 = *(v0 + 2984);
      v63 = *(v0 + 2968);
      v64 = *(v0 + 2944);
      v65 = *(v0 + 2936);
      sub_1007A2154();
      v127(v62, v61, v63);
      sub_100796C94();
      v66 = sub_1007A22B4();
      v68 = v67;
      v10(v61, v63);
      if (v66 == v65 && v68 == v64)
      {
        goto LABEL_42;
      }

      v69 = sub_1007A3AB4();

      if (v69)
      {
        goto LABEL_44;
      }

      v71 = *(v0 + 2992);
      v72 = *(v0 + 2984);
      v73 = *(v0 + 2968);
      v74 = *(v0 + 2944);
      v75 = *(v0 + 2936);
      sub_1007A2154();
      v127(v72, v71, v73);
      sub_100796C94();
      v76 = sub_1007A22B4();
      v78 = v77;
      v10(v71, v73);
      if (v76 == v75 && v78 == v74)
      {
LABEL_42:

LABEL_44:
        sub_10022FB30((v0 + 1168));
        if (!*(v0 + 1360))
        {
          goto LABEL_62;
        }

        *(v0 + 3072) = sub_1007A26E4();
        v70 = swift_task_alloc();
        *(v0 + 3080) = v70;
        *v70 = v0;
        v70[1] = sub_1006BBEB4;

        return sub_10022B4D0(6);
      }

      v79 = sub_1007A3AB4();

      if (v79)
      {
        goto LABEL_44;
      }

      v80 = *(v0 + 2944);
      v81 = *(v0 + 2936);
      if (sub_1005FBE34(0, 0xE000000000000000) == v81 && v82 == v80)
      {
      }

      else
      {
        v83 = sub_1007A3AB4();

        if ((v83 & 1) == 0)
        {
          v89 = *(v0 + 2992);
          v90 = *(v0 + 2984);
          v91 = *(v0 + 2968);
          v92 = *(v0 + 2944);
          v93 = *(v0 + 2936);
          sub_1007A2154();
          v127(v90, v89, v91);
          sub_100796C94();
          v94 = sub_1007A22B4();
          v96 = v95;
          v10(v89, v91);
          if (v94 == v93 && v96 == v92)
          {
          }

          else
          {
            v98 = sub_1007A3AB4();

            if ((v98 & 1) == 0)
            {
              v99 = *(v0 + 2944);
              v100 = *(v0 + 2936);
              if (sub_1005FB8C4(0, 0xE000000000000000) == v100 && v101 == v99)
              {
              }

              else
              {
                v102 = sub_1007A3AB4();

                if ((v102 & 1) == 0)
                {
                  v109 = *(v0 + 2992);
                  v110 = *(v0 + 2984);
                  v111 = *(v0 + 2968);
                  v112 = *(v0 + 2944);
                  v113 = *(v0 + 2936);
                  sub_1007A2154();
                  v127(v110, v109, v111);
                  sub_100796C94();
                  v114 = sub_1007A22B4();
                  v116 = v115;
                  v10(v109, v111);
                  if (v114 == v113 && v116 == v112)
                  {
                  }

                  else
                  {
                    v117 = sub_1007A3AB4();

                    if ((v117 & 1) == 0)
                    {

                      if (qword_100AD1AE0 != -1)
                      {
                        swift_once();
                      }

                      v119 = sub_10079ACE4();
                      sub_100008B98(v119, qword_100AF23F0);

                      v120 = sub_10079ACC4();
                      v121 = sub_1007A29B4();

                      if (os_log_type_enabled(v120, v121))
                      {
                        v122 = *(v0 + 2944);
                        v123 = *(v0 + 2936);
                        v124 = swift_slowAlloc();
                        v125 = swift_slowAlloc();
                        v128 = v125;
                        *v124 = 136315138;
                        *(v124 + 4) = sub_1000070F4(v123, v122, &v128);
                        _os_log_impl(&_mh_execute_header, v120, v121, "Unknown bkax action: %s", v124, 0xCu);
                        sub_1000074E0(v125);
                      }

                      goto LABEL_7;
                    }
                  }

                  sub_10022FB30((v0 + 16));
                  if (!*(v0 + 168))
                  {
                    goto LABEL_62;
                  }

                  *(v0 + 3128) = sub_1007A26E4();
                  v118 = swift_task_alloc();
                  *(v0 + 3136) = v118;
                  *v118 = v0;
                  v118[1] = sub_1006BC454;

                  return sub_100229624();
                }
              }

              sub_10022FB30((v0 + 304));
              *(v0 + 2633) = *(v0 + 409);
              v103 = *(v0 + 400);
              *(v0 + 2608) = *(v0 + 384);
              *(v0 + 2624) = v103;
              v104 = *(v0 + 2640);
              if (v104)
              {
                v105 = *(v0 + 2632);
                v106 = *(v0 + 2624);
                *(v0 + 2824) = *(v0 + 384);
                *(v0 + 2840) = v105;
                *(v0 + 2848) = v104;
                sub_1000077D8(v0 + 2608, v0 + 2704, &unk_100AE7C40);
                sub_1002BB1A4(v0 + 2840, v0 + 2888);
                sub_100007840(v0 + 2824, &qword_100AD4F30);
                *(v0 + 2920) = v106;
                sub_100007840(v0 + 2920, &qword_100AD6188);
                sub_1002308AC(v0 + 2840);
              }

              else
              {
                v105 = 0;
                v104 = 0xE000000000000000;
              }

              if (v105 || v104 != 0xE000000000000000)
              {
                v107 = sub_1007A3AB4();

                if (v107)
                {
                  goto LABEL_62;
                }

                *(v0 + 3112) = sub_1007A26E4();
                v108 = swift_task_alloc();
                *(v0 + 3120) = v108;
                *v108 = v0;
                v108[1] = sub_1006BC2B0;

                return sub_10022863C();
              }

              goto LABEL_60;
            }
          }

          sub_10022FB30((v0 + 592));
          if (*(v0 + 600))
          {
            sub_1006AE4B8();
          }

          goto LABEL_7;
        }
      }

      sub_10022FB30((v0 + 880));
      *(v0 + 2681) = *(v0 + 937);
      v84 = *(v0 + 928);
      *(v0 + 2656) = *(v0 + 912);
      *(v0 + 2672) = v84;
      v85 = *(v0 + 2688);
      if (v85)
      {
        v86 = *(v0 + 2680);
        v87 = *(v0 + 2672);
        *(v0 + 2856) = *(v0 + 912);
        *(v0 + 2872) = v86;
        *(v0 + 2880) = v85;
        sub_1000077D8(v0 + 2656, v0 + 2752, &qword_100AD6180);
        sub_1002BB1A4(v0 + 2872, v0 + 2904);
        sub_100007840(v0 + 2856, &qword_100AD4F30);
        *(v0 + 2928) = v87;
        sub_100007840(v0 + 2928, &qword_100AD6188);
        sub_1002308AC(v0 + 2872);
      }

      else
      {
        v86 = 0;
        v85 = 0xE000000000000000;
      }

      if (v86 || v85 != 0xE000000000000000)
      {
        v88 = sub_1007A3AB4();

        if (v88)
        {
          goto LABEL_62;
        }

        *(v0 + 3096) = sub_1007A26E4();
        v97 = swift_task_alloc();
        *(v0 + 3104) = v97;
        *v97 = v0;
        v97[1] = sub_1006BC10C;

        return sub_100227218();
      }

LABEL_60:

LABEL_7:

      v12 = *(v0 + 8);

      return v12();
    }
  }

LABEL_33:
  sub_10022FB30((v0 + 1456));
  if (!*(v0 + 1648))
  {
    goto LABEL_62;
  }

  v52 = swift_task_alloc();
  *(v0 + 3064) = v52;
  *v52 = v0;
  v52[1] = sub_1006BBD94;

  return sub_1006AD3D0();
}

uint64_t sub_1006BBA4C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BBB88, v1, v0);
}

uint64_t sub_1006BBB88()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BBBF0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BBD2C, v1, v0);
}

uint64_t sub_1006BBD2C()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BBD94()
{
  v1 = *v0;

  v2 = *(v1 + 3024);
  v3 = *(v1 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v3, v2);
}

uint64_t sub_1006BBEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[350] = v2;
  v3[351] = a1;
  v3[352] = a2;
  v3[386] = a2;

  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC000, v5, v4);
}

uint64_t sub_1006BC000()
{
  v1 = v0[386];

  if (v1)
  {
    sub_1006C29EC(v0[351], v0[386]);
  }

  v2 = v0[378];
  v3 = v0[377];

  return _swift_task_switch(sub_1006BC08C, v3, v2);
}

uint64_t sub_1006BC08C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006BC10C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC248, v1, v0);
}

uint64_t sub_1006BC248()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BC2B0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC3EC, v1, v0);
}

uint64_t sub_1006BC3EC()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BC454()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006BC590, v1, v0);
}

uint64_t sub_1006BC590()
{

  v1 = *(v0 + 3024);
  v2 = *(v0 + 3016);

  return _swift_task_switch(sub_1006C5ABC, v2, v1);
}

uint64_t sub_1006BC644()
{
  result = swift_weakLoadStrong();
  if (result)
  {

    REActionMenuState.transition(to:)(0x8000000000000000);
  }

  return result;
}

uint64_t sub_1006BC6C8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController];
  if (*(v2 + OBJC_IVAR____TtC5Books24BookReaderMenuController_mode))
  {
    return sub_1005FA1CC(a1);
  }

  return sub_1006BFE7C(a1, v1, v2);
}

uint64_t sub_1006BC830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1007A26F4();
  v12 = v5;
  v13 = sub_1007A26E4();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  a5(0, 0, v10, a4, v14);
}

uint64_t sub_1006BC964(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return sub_1006BA620(a1, a2);
}

uint64_t sub_1006BCB4C()
{
  v1 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1007969B4();
  __chkstk_darwin(v4);
  v5 = sub_1007968D4();
  v7 = v6;
  v13[2] = v5;
  v13[3] = v6;
  sub_1002060B4();
  if (sub_1007A28A4())
  {
    sub_1006AAB68(v5, v7);
  }

  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1007A26F4();
  v9 = v0;
  v10 = sub_1007A26E4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1003457A0(0, 0, v3, &unk_10083DF30, v11);

  return 1;
}

uint64_t sub_1006BCF94(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v20 = sub_1007A1D04();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1007969B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v11 + 8);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = Strong;
  *(v15 + 24) = v13;
  (*(v9 + 32))(v15 + v14, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v15 + v14 + v10) = v19;
  sub_10000A7C4(0, &qword_100AD1E10);
  *v7 = sub_1007A2D74();
  v16 = v20;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v20);
  LOBYTE(v13) = sub_1007A1D34();
  result = (*(v5 + 8))(v7, v16);
  if (v13)
  {

    sub_1006C4F54(&v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BD1F8()
{
  sub_1006A2D08(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void sub_1006BD27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a1;
  v22[2] = a2;
  v6 = sub_1007A1D04();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001F1160(&unk_100AE6A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  swift_getObjectType();
  sub_1007A1744();
  v13 = sub_1007A16E4();
  v14 = v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 8);
  (*(v10 + 16))(v12, a3, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = Strong;
  *(v18 + 3) = v16;
  *(v18 + 4) = v13;
  (*(v10 + 32))(&v18[v17], v12, v9);
  sub_10000A7C4(0, &qword_100AD1E10);
  v19 = v13;
  *v8 = sub_1007A2D74();
  v21 = v23;
  v20 = v24;
  (*(v23 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v24);
  LOBYTE(v13) = sub_1007A1D34();
  (*(v21 + 8))(v8, v20);
  if (v13)
  {

    sub_1006C5874(&v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006BD5B0(uint64_t a1)
{
  swift_getObjectType();
  sub_1007A1744();
  result = sub_1007A1714();
  if (!v3)
  {

    return a1;
  }

  return result;
}

uint64_t sub_1006BD64C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1007A1D04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v11 + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = Strong;
  *(v14 + 24) = v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  sub_10000A7C4(0, &qword_100AD1E10);
  v15 = a1;
  sub_1000260E8(a2);
  *v10 = sub_1007A2D74();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  LOBYTE(v13) = sub_1007A1D34();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v17 = *(v14 + 16);

    if (v17)
    {
      sub_1005670B0(*(v14 + 32), 1, *(v14 + 40), *(v14 + 48));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006BD804(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController;
  v4 = *(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController);
  if (v4)
  {
    sub_10000A7C4(0, &qword_100AD7CB0);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = sub_1007A3184();

    if (a1)
    {
      v8 = *(v2 + v3);
      *(v2 + v3) = 0;
    }
  }
}

uint64_t sub_1006BD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10079FF94();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1001F1160(&qword_100AF2650);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1001F1160(&qword_100ADB1C0);
  v5[15] = swift_task_alloc();
  sub_1007A26F4();
  v5[16] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_1006BDA78, v8, v7);
}

uint64_t sub_1006BDA78()
{
  v1 = sub_1006A2C38();
  v0[19] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v3 = v0[15];
    if (Strong)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v4 = type metadata accessor for OverlayViewModel.Overlay(0);
      if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
      {
        v5 = v0[15];
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
        if (EnumCaseMultiPayload == 2)
        {
          v7 = swift_task_alloc();
          v0[20] = v7;
          *v7 = v0;
          v7[1] = sub_1006BDD58;

          return sub_1006AF1E8();
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = type metadata accessor for OverlayViewModel.Overlay(0);
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    }

    sub_100007840(v0[15], &qword_100ADB1C0);
LABEL_13:
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1006BDEB4;
    v12 = v0[9];

    return BookContentModule.revealSearchResult(_:)(v12);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006BDD58()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 168) = v3;
  *v3 = v2;
  v3[1] = sub_1006BDEB4;
  v4 = *(v1 + 72);

  return BookContentModule.revealSearchResult(_:)(v4);
}

uint64_t sub_1006BDEB4()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1006BDFD4, v3, v2);
}

uint64_t sub_1006BDFD4()
{

  sub_1007A0414();
  if (v1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v7 = v0[8];
    (*(v5 + 104))(v4, enum case for SelectionInfo.PresentationLifecycle.removeAfterDisplay(_:), v6);
    sub_10079EFE4();

    (*(v5 + 8))(v4, v6);
    v8 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
    swift_beginAccess();
    sub_1000077D8(v7 + v8, v3, &qword_100AF2650);
    swift_beginAccess();
    sub_1006C4A34(v2, v7 + v8);
    swift_endAccess();
    sub_1006A27B4(v3);

    sub_100007840(v3, &qword_100AF2650);
    sub_100007840(v2, &qword_100AF2650);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006BE1A8()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 2)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006BE380(uint64_t a1)
{
  v3 = sub_1007A0424();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  sub_1007A26F4();
  v11 = v1;
  v12 = sub_1007A26E4();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v11;
  (*(v4 + 32))(&v14[v13], v6, v3);
  sub_1003457A0(0, 0, v9, &unk_10083DF50, v14);
}

uint64_t sub_1006BE580(uint64_t a1)
{
  v3 = sub_1007A1D04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10079EF54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  (*(v8 + 32))(v12 + v11, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_10000A7C4(0, &qword_100AD1E10);
  v13 = v1;
  *v6 = sub_1007A2D74();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = sub_1007A1D34();
  result = (*(v4 + 8))(v6, v3);
  if (v14)
  {

    sub_1006C50E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BE7B4()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    return sub_100007840(v2, &qword_100ADB1C0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1006C571C(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 1)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1006BE994(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1004618D8(a1 & 1);
  }

  return result;
}

uint64_t sub_1006BEA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1001F1160(&qword_100ADB1C0);
  v6[5] = swift_task_alloc();
  sub_1007A26F4();
  v6[6] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1006BEAF4, v8, v7);
}

uint64_t sub_1006BEAF4()
{
  if (!swift_weakLoadStrong())
  {
    v3 = *(v0 + 40);

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = *(v0 + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(*(v0 + 40), &qword_100ADB1C0);
LABEL_6:
    sub_1006AAB68(*(v0 + 24), *(v0 + 32));

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 40);
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    sub_1006C571C(v7, type metadata accessor for OverlayViewModel.Overlay);
    goto LABEL_6;
  }

  sub_1006C571C(v7, type metadata accessor for OverlayViewModel.Overlay);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1006BEEAC;

  return sub_1006AF1E8();
}

uint64_t sub_1006BEEAC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1006BEFCC, v3, v2);
}

uint64_t sub_1006BEFCC()
{

  sub_1006AAB68(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006BF17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1001F1160(&qword_100ADB1C0);
  v5[4] = swift_task_alloc();
  sub_1007A26F4();
  v5[5] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1006BF24C, v7, v6);
}

uint64_t sub_1006BF24C()
{
  if (!swift_weakLoadStrong())
  {
    v3 = v0[4];

    v4 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    goto LABEL_5;
  }

  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_5:
    sub_100007840(v0[4], &qword_100ADB1C0);
LABEL_8:
    sub_1004A9DC8(v0[3]);

    v6 = v0[1];

    return v6();
  }

  v5 = v0[4];
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
    goto LABEL_8;
  }

  sub_1006C571C(v5, type metadata accessor for OverlayViewModel.Overlay);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1006BF4D0;

  return sub_1006AF1E8();
}

uint64_t sub_1006BF4D0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1006BF5F0, v3, v2);
}

uint64_t sub_1006BF5F0()
{

  sub_1004A9DC8(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1006BF670(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = sub_1007A1D04();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001F1160(&unk_100AE6A30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationSharingAssetActivityItemProvider + 8);
  ObjectType = swift_getObjectType();
  sub_1002155E8(v23, ObjectType, v12);
  v14 = sub_1007A16E4();
  v15 = v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_router;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(v15 + 8);
  (*(v9 + 16))(v11, a2, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = Strong;
  *(v19 + 3) = v17;
  *(v19 + 4) = v14;
  (*(v9 + 32))(&v19[v18], v11, v8);
  sub_10000A7C4(0, &qword_100AD1E10);
  v20 = v14;
  *v7 = sub_1007A2D74();
  v22 = v24;
  v21 = v25;
  (*(v24 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v25);
  LOBYTE(v14) = sub_1007A1D34();
  (*(v22 + 8))(v7, v21);
  if (v14)
  {

    sub_1006C5874(&v26);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006BF928(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v8 = sub_1001F1160(&unk_100AD6170);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  if (a1)
  {
    v11 = sub_1001F1160(&unk_100AE6A30);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, a3, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_100568090(a2, v10);
    sub_100007840(v10, &unk_100AD6170);
  }

  *a4 = a1 == 0;
}

uint64_t sub_1006BFAAC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB6B0);
  __chkstk_darwin(v2 - 8);
  sub_1000077D8(a1, &v5 - v3, &unk_100ADB6B0);
  return sub_10079C654();
}

uint64_t sub_1006BFB54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_1006BFBD0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1000077D8(a1, &v12 - v9, &qword_100ADB1C0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000077D8(v10, v4, &qword_100ADB1C0);

  sub_10079B9B4();
  sub_100461420(v7);
  sub_100007840(v7, &qword_100ADB1C0);
  return sub_100007840(v10, &qword_100ADB1C0);
}

uint64_t sub_1006BFD88@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1006BFE08()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1006BFE7C(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  [a1 removeMenuForIdentifier:UIMenuLookup];
  [a1 removeMenuForIdentifier:UIMenuServices];
  [a1 removeMenuForIdentifier:UIMenuStandardEdit];
  sub_1006C00E4(1, a2, a3);
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1005FA338();
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1005FAAB0();
  sub_1007A25C4();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  sub_1001F1160(&unk_100AF2620);
  sub_10000A7C4(0, &qword_100AD8170);
  sub_100005920(&unk_100AF2630, &unk_100AF2620);
  v6 = sub_1007A24D4();

  sub_10020B548(v6, UIMenuRoot);
}

UIMenu sub_1006C00E4(char a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v5 = sub_100796CF4();
  __chkstk_darwin(v5 - 8);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v48 - v13;
  v50 = sub_1001F1160(&qword_100AED578);
  v15 = swift_allocObject();
  v16 = 0;
  v49 = xmmword_10080EFF0;
  *(v15 + 16) = xmmword_10080EFF0;
  if (a1)
  {
    v16 = sub_1005FB280();
  }

  *(v15 + 32) = v16;
  sub_1007A2154();
  v57 = *(v9 + 16);
  v58 = v9 + 16;
  v57(v11, v14, v8);
  sub_100796C94();
  v52 = v11;
  v54 = v7;
  sub_1007A22B4();
  v17 = *(v9 + 8);
  v55 = v8;
  v59 = v17;
  v60 = v9 + 8;
  v17(v14, v8);
  v18 = a3;
  v19 = sub_1007A2214();
  v51 = objc_opt_self();
  v20 = [v51 systemImageNamed:v19];

  v21 = sub_10000A7C4(0, &qword_100AECAB0);
  memset(v65, 0, 32);
  v22 = v20;
  v23 = v18;
  v53 = v21;
  v24 = sub_1007A3414();
  v25 = sub_1005F9E30(v24);

  *(v15 + 40) = v25;
  v63 = v15;
  sub_10022FB30(v64);
  if (v64[33])
  {
    sub_10022FB30(v65);
    if (v66)
    {
      sub_1007A2154();
      v26 = v52;
      v27 = v55;
      v28 = v57;
      v57(v52, v14, v55);
      sub_100796C94();
      v48[1] = v23;
      v48[0] = sub_1007A22B4();
      v56 = v29;
      v30 = v59;
      v59(v14, v27);
      v31 = sub_1007A2214();
      v51 = [v51 systemImageNamed:v31];

      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      sub_1007A2154();
      v28(v26, v14, v27);
      sub_100796C94();
      sub_1007A22B4();
      v30(v14, v27);
      v61 = 0u;
      v62 = 0u;
      v32 = sub_1007A3414();
      v33 = sub_1005F9E30(v32);

      v34 = v50;
      *(v50 + 32) = v33;
      sub_1007A2154();
      v57(v26, v14, v27);
      sub_100796C94();
      sub_1007A22B4();
      v59(v14, v27);
      v61 = 0u;
      v62 = 0u;
      v35 = sub_1007A3414();
      v36 = sub_1005F9E30(v35);

      *(v34 + 40) = v36;
      *&v61 = v34;
      sub_1001F1160(&qword_100AED580);
      sub_10000A7C4(0, &qword_100AE8DB0);
      sub_100005920(&qword_100AED588, &qword_100AED580);
      v37 = sub_1007A24D4();

      *&v61 = v37;
      sub_1001F1160(&unk_100AF2640);
      sub_100005920(&qword_100AE12E8, &unk_100AF2640);
      if (sub_1007A28A4())
      {
        sub_10000A7C4(0, &qword_100AD8170);
        v69._countAndFlagsBits = v48[0];
        v69._object = v56;
        v71.value._countAndFlagsBits = 0;
        v71.value._object = 0;
        v67.value.super.isa = v51;
        v67.is_nil = 0;
        v38.value = 0;
        sub_1007A30C4(v69, v71, v67, v38, 0xFFFFFFFFFFFFFFFFLL, v37, v47);
      }

      else
      {
      }
    }

    else
    {
      sub_1007A2154();
      v39 = v55;
      v57(v52, v14, v55);
      sub_100796C94();
      sub_1007A22B4();
      v59(v14, v39);
      v40 = sub_1007A2214();
      v41 = [v51 systemImageNamed:v40];

      v61 = 0u;
      v62 = 0u;
      v42 = v41;
      v43 = sub_1007A3414();
      sub_1005F9E30(v43);
    }

    sub_1007A25C4();
    if (*(v63 + 16) >= *(v63 + 24) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v15 = v63;
  }

  *&v61 = v15;
  sub_1001F1160(&qword_100AED580);
  sub_10000A7C4(0, &qword_100AE8DB0);
  sub_100005920(&qword_100AED588, &qword_100AED580);
  v44 = sub_1007A24D4();

  *&v61 = v44;
  sub_1001F1160(&unk_100AF2640);
  sub_100005920(&qword_100AE12E8, &unk_100AF2640);
  if (sub_1007A28A4())
  {
    sub_10000A7C4(0, &qword_100AD8170);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v72.value._countAndFlagsBits = 0;
    v72.value._object = 0;
    v68.value.super.isa = 0;
    v68.is_nil = 0;
    v45.value = 17;
    return sub_1007A30C4(v70, v72, v68, v45, 0xFFFFFFFFFFFFFFFFLL, v44, v47);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1006C0C08(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD6170);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000077D8(a2, v7, &unk_100AD6170);
  sub_1007A26F4();

  v13 = a1;
  v14 = sub_1007A26E4();
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v12;
  v16[5] = v13;
  sub_10020B3C8(v7, v16 + v15, &unk_100AD6170);

  sub_1003457A0(0, 0, v10, &unk_10083DEF8, v16);
}

uint64_t sub_1006C0E40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1002AE5A8(a1, v4, v5, v6, v1 + 40, v7, v8);
}

uint64_t sub_1006C0F18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009A34;

  return sub_1006B5834();
}

uint64_t sub_1006C0FDC(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayViewModel.Overlay(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006AFF38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C10D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C1250()
{
  v1 = *(type metadata accessor for OverlayViewModel.Overlay(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      goto LABEL_11;
    }

LABEL_9:

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v4 = sub_1001F1160(&qword_100ADB388);
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_9;
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1006C13A8()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1006C5788;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A2CAC8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C10D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1006C16C4(uint64_t a1)
{
  if (a1 && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    swift_unknownObjectRetain();
    sub_1004AEEF8(v2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1AE0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AF23F0);
    swift_unknownObjectRetain();
    oslog = sub_10079ACC4();
    v4 = sub_1007A29B4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008E6BE0, &v8);
      sub_1000074E0(v6);
    }
  }
}

uint64_t sub_1006C1888()
{
  sub_1004AC424(0);
  swift_getObjectType();
  sub_1007A1514();
  swift_getObjectType();
  sub_10079F9C4();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10057AD64(0);
  }

  return result;
}

void sub_1006C1934(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v8 = sub_100796CF4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v16 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v76 - v17);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v79 = v10;
    v80 = a2;
    v83 = v18;
    v20 = *(Strong + 168);

    v81 = v4;
    v21 = *(v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService);
    v22 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v21 + v22, v84);
    sub_10000E3E8(v84, v85);
    if (sub_10079EC84())
    {
      v82 = v20;
      v23 = *(v20 + 16);
      v24 = sub_1007A2744();
      v25 = *(v24 - 8);
      v26 = *(v25 + 56);
      v27 = v83;
      v76 = v25 + 56;
      v77 = v26;
      v26(v83, 1, 1, v24);
      v28 = sub_1007A26F4();
      swift_retain_n();
      v78 = v28;
      v29 = sub_1007A26E4();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v23;
      sub_1003457A0(0, 0, v27, &unk_10083E258, v30);

      if (a1)
      {
        swift_getObjectType();
        if (sub_10079F4F4() == 2)
        {
          goto LABEL_20;
        }
      }

      sub_1007A2154();
      v41 = v79 + 16;
      (*(v79 + 16))(v12, v15, v9);
      sub_100796C94();
      v42 = (v41 - 8);
      if (v80)
      {
        v43 = sub_1007A22B4();
        v45 = v44;
        (*v42)(v15, v9);
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = v83;
        v48 = *(v82 + 16);
        v77(v83, 1, 1, v24);
        swift_retain_n();

        v49 = sub_1007A26E4();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = &protocol witness table for MainActor;
        *(v50 + 32) = v48;
        *(v50 + 40) = v43;
        *(v50 + 48) = v45;
        *(v50 + 56) = xmmword_100816EB0;
        *(v50 + 72) = 1;
        *(v50 + 80) = sub_1006C5600;
        *(v50 + 88) = v46;
        sub_1003457A0(0, 0, v47, &unk_10083E268, v50);

LABEL_26:

        goto LABEL_27;
      }

      v57 = sub_1007A22B4();
      v59 = v58;
      (*v42)(v15, v9);
      v60 = v83;
      v61 = *(v82 + 16);
      v77(v83, 1, 1, v24);
      swift_retain_n();

      v62 = sub_1007A26E4();
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = &protocol witness table for MainActor;
      *(v63 + 32) = v61;
      *(v63 + 40) = v57;
      *(v63 + 48) = v59;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      *(v63 + 72) = 0;
      *(v63 + 80) = 0;
      *(v63 + 88) = 0;
      sub_1003457A0(0, 0, v60, &unk_10083E260, v63);

LABEL_25:

      goto LABEL_26;
    }

    if (a1 == 2 && a4)
    {
      v35 = *(v20 + 16);
      v36 = sub_1007A2744();
      v37 = v83;
      (*(*(v36 - 8) + 56))(v83, 1, 1, v36);
      sub_1007A26F4();
      swift_retain_n();

      v38 = sub_1007A26E4();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = &protocol witness table for MainActor;
      v40 = v82;
      *(v39 + 32) = v35;
      *(v39 + 40) = v40;
      *(v39 + 48) = a4;
      *(v39 + 56) = xmmword_10083D730;
      *(v39 + 72) = 1;
      *(v39 + 74) = v86;
      *(v39 + 78) = v87;
      *(v39 + 80) = 0;
      *(v39 + 88) = 0;
      sub_1003457A0(0, 0, v37, &unk_10083E250, v39);

LABEL_20:

LABEL_27:
      sub_1000074E0(v84);
      return;
    }

    v51 = *(v20 + 16);
    v52 = sub_1007A2744();
    v53 = *(*(v52 - 8) + 56);
    v54 = v83;
    v53(v83, 1, 1, v52);
    sub_1007A26F4();
    swift_retain_n();
    v55 = sub_1007A26E4();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = &protocol witness table for MainActor;
    v56[4] = v51;
    sub_1003457A0(0, 0, v54, &unk_10083E238, v56);

    if (a1)
    {
      swift_getObjectType();
      if (sub_10079F4F4() == 2)
      {
        goto LABEL_20;
      }

      sub_10000E3E8(v84, v85);
      v71 = sub_10079EC64();
      v73 = v72;
      v74 = *(v20 + 16);
      v54 = v83;
      v53(v83, 1, 1, v52);
      swift_retain_n();

      v75 = sub_1007A26E4();
      v69 = swift_allocObject();
      *(v69 + 16) = v75;
      *(v69 + 24) = &protocol witness table for MainActor;
      *(v69 + 32) = v74;
      *(v69 + 40) = v71;
      *(v69 + 48) = v73;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      *(v69 + 72) = 0;
      *(v69 + 74) = v86;
      *(v69 + 78) = v87;
      *(v69 + 80) = 0;
      *(v69 + 88) = 0;
      v70 = &unk_10083E240;
    }

    else
    {
      sub_10000E3E8(v84, v85);
      v64 = sub_10079EC64();
      v66 = v65;
      v67 = *(v20 + 16);
      v53(v54, 1, 1, v52);
      swift_retain_n();

      v68 = sub_1007A26E4();
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = &protocol witness table for MainActor;
      *(v69 + 32) = v67;
      *(v69 + 40) = v64;
      *(v69 + 48) = v66;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      *(v69 + 72) = 0;
      *(v69 + 74) = v86;
      *(v69 + 78) = v87;
      *(v69 + 80) = 0;
      *(v69 + 88) = 0;
      v70 = &unk_10083E248;
    }

    sub_1003457A0(0, 0, v54, v70, v69);

    goto LABEL_25;
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AF23F0);
  v83 = sub_10079ACC4();
  v32 = sub_1007A29B4();
  if (os_log_type_enabled(v83, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v83, v32, "Unable to update persistent infobar message because there is no infobar module", v33, 2u);
  }

  v34 = v83;
}

id sub_1006C2428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v64 = a3;
  v63 = sub_10079F7E4();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007969B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter);
  v62 = a2;
  sub_100796944(v19);
  v21 = v20;
  v22 = BEDoesURLPointToUSDZFile();

  if (v22)
  {
    v61 = v8;
    v23 = v63;
    v24 = [objc_allocWithZone(BKARQuicklookViewController) init];
    sub_1007968E4();
    sub_100796904();
    v25 = *(v10 + 8);
    v25(v18, v9);
    sub_100796944(v26);
    v28 = v27;
    v25(v15, v9);
    v29 = BEURLHandlerAssetInfoPathForBookURL();

    if (v29)
    {
      sub_100796974();

      sub_100796944(v30);
      v29 = v31;
      v25(v12, v9);
    }

    v32 = v65;
    v33 = v61;
    [v24 setARModelDataURL:{v29, v60}];

    [v24 setDataSource:v24];
    (*(v32 + 104))(v33, enum case for BookContentUserInterfaceStyle.dark(_:), v23);
    v34 = sub_10079F7D4();
    (*(v32 + 8))(v33, v23);
    if (v34)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v24 setOverrideUserInterfaceStyle:v35];
  }

  else
  {
    v36 = sub_1007A0CA4();
    v37 = objc_allocWithZone(v36);
    v38 = a1;
    v39 = sub_1007A0C94();
    v40 = v61;
    sub_100009864(v61, v69);
    v67 = v36;
    v68 = &protocol witness table for ExpandedContentRouter;
    v66 = v39;
    v41 = objc_allocWithZone(sub_1007A1334());
    v42 = v39;
    v43 = sub_1007A1324();
    v44 = [objc_allocWithZone(BKExpandedContentResource) init];
    sub_100796944(v45);
    v47 = v46;
    [v44 setResource:v46];

    sub_10000E3E8(v40, v40[3]);
    v48 = sub_10079EC14();
    [v44 setCacheItem:v48];

    v49 = v65;
    v50 = v63;
    (*(v65 + 104))(v8, enum case for BookContentUserInterfaceStyle.dark(_:), v63);
    LOBYTE(v48) = sub_10079F7D4();
    (*(v49 + 8))(v8, v50);
    if (v48)
    {
      v51 = 5;
    }

    else
    {
      v51 = 2;
    }

    v52 = [objc_opt_self() themeForEPUBTheme:v51];
    v53 = [objc_allocWithZone(BKExpandedWebContentViewController2) initWithResource:v44];
    v24 = v53;
    if (v53)
    {
      v54 = v40;
      if (v60 == 1)
      {
        [v53 showInvertedImage];
      }

      v55 = v43;
      v56 = v24;
      [v56 setPresenter:v55];
      [v56 setDelegate:v55];

      sub_10000E3E8(v54, v54[3]);
      [v56 setAllowsRemoteInspection:sub_10079EC54() & 1];
      v57 = v56;
      v58 = v52;
      [v57 setTheme:v58];
    }

    else
    {
    }
  }

  return v24;
}