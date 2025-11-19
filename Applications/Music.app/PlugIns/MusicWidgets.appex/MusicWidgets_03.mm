uint64_t sub_100056218()
{
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Using placeholder: error getting stations %{public}@", v3, 0xCu);
    sub_10001036C(v4, &qword_1006DFD00);
  }

  if (qword_1006DF9A0 != -1)
  {
    swift_once();
  }

  v17 = unk_1006FC1D0;
  v18 = qword_1006FC1C8;
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 16);
  v7 = type metadata accessor for WidgetMusicItem();
  v8 = sub_10000C49C(v7, qword_1006FC1D8);
  v9 = sub_100572D98();
  *(v9 + 16) = 6;
  v10 = *(v7 - 8);
  v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  sub_1000584C0(v8, v11, type metadata accessor for WidgetMusicItem);
  v12 = *(v10 + 72);
  sub_1000584C0(v8, v11 + v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 2 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 3 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 4 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 5 * v12, type metadata accessor for WidgetMusicItem);
  v13 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v10 + 56))(v6 + v13[7], 1, 1, v7);

  sub_10056CA98();

  *(v6 + v13[5]) = v9;
  *(v6 + v13[6]) = 3;
  *(v6 + v13[8]) = 0;
  v14 = (v6 + v13[9]);
  *v14 = v18;
  v14[1] = v17;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100056570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_10056CAA8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v9 = sub_100572578();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E28A0);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = sub_100009DCC(&qword_1006E0520);
  v7[22] = swift_task_alloc();
  v7[23] = sub_100009DCC(&qword_1006E0510);
  v7[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618);
  v7[25] = swift_task_alloc();
  v11 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();
  v12 = sub_1005725D8();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000568B4, 0, 0);
}

uint64_t sub_1000568B4()
{
  v21 = v0;
  v1 = *(v0[30] + 16);
  v1(v0[32], v0[3], v0[29]);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  if (v4)
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136446210;
    v1(v7, v5, v8);
    v10 = sub_100572978();
    v12 = v11;
    (*(v6 + 8))(v5, v8);
    v13 = sub_10008190C(v10, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating timeline in %{public}s", v9, 0xCu);
    sub_100010474(v19);
  }

  else
  {
    v14 = v0[29];
    v15 = v0[30];

    (*(v15 + 8))(v5, v14);
  }

  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_100056ABC;
  v17 = v0[28];

  return sub_10005588C(v17);
}

uint64_t sub_100056ABC()
{

  return _swift_task_switch(sub_100056BB8, 0, 0);
}

uint64_t sub_100056BB8()
{
  v47 = v0;
  if (sub_100054A44())
  {
    v1 = *(v0 + 216);
    v40 = *(v0 + 224);
    v41 = *(v0 + 136);
    v44 = *(v0 + 128);
    v2 = *(v0 + 120);
    v42 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 88);
    v38 = *(v0 + 80);
    v39 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10056CA68();
    sub_10056C9D8();
    v9 = *(v7 + 8);
    v9(v5, v8);
    sub_100572558();
    v9(v6, v8);
    sub_100009DCC(&qword_1006E28A8);
    v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10057B510;
    sub_1000584C0(v40, v11 + v10, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    (*(v4 + 16))(v39, v3, v38);
    sub_100058478(&qword_1006E2898, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    sub_100572638();
    v12 = *(v2 + 16);
    v12(v44, v41, v42);
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      v18 = *(v0 + 112);
      v19 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v19 = 136446210;
      v43 = v14;
      v20 = v17;
      v12(v15, v17, v18);
      v21 = sub_100572978();
      v23 = v22;
      v24 = *(v16 + 8);
      v24(v20, v18);
      v25 = sub_10008190C(v21, v23, &v46);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v43, "Timeline for placeholder using %{public}s", v19, 0xCu);
      sub_100010474(v45);
    }

    else
    {
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v30 = *(v0 + 112);

      v24 = *(v29 + 8);
      v24(v28, v30);
    }

    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);
    v35 = *(v0 + 80);
    (*(v0 + 32))(v31);
    v24(v31, v32);
    (*(v34 + 8))(v33, v35);
    sub_100034768(*(v0 + 224), type metadata accessor for RadioWidgetTimelineProvider.Entry);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    if (qword_1006DF8D0 != -1)
    {
      swift_once();
    }

    v26 = qword_1006FC040;
    *(v0 + 272) = qword_1006FC040;
    v27 = swift_task_alloc();
    *(v0 + 280) = v27;
    *v27 = v0;
    v27[1] = sub_100057110;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 288, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v26, &type metadata for NowPlayingDataProvider.PlayerState);
  }
}

uint64_t sub_100057110()
{

  return _swift_task_switch(sub_10005720C, 0, 0);
}

uint64_t sub_10005720C()
{
  v46 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v42 = *(v0 + 288);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, v2, &qword_1006E0510);
  sub_10006F60C(*(v2 + *(v5 + 44)), *(v2 + *(v5 + 44) + 8), v3);
  sub_10001036C(v2, &qword_1006E0510);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground, v4, &qword_1006E0520);
  v7 = sub_10006FEA0(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8));
  sub_10001036C(v4, &qword_1006E0520);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = v7;
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v14 = *(v0 + 160);
  v15 = *(v0 + 120);
  v40 = *(v0 + 112);
  v41 = *(v0 + 152);
  sub_100019990(v7);
  *(v11 + v12[6]) = v42;
  sub_1000199A0(v13, v11 + v12[7]);
  v16 = v12[8];

  *(v11 + v16) = v8;
  sub_100009DCC(&qword_1006E28A8);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057B510;
  sub_1000584C0(v11, v18 + v17, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_100572568();
  sub_100058478(&qword_1006E2898, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_100572638();
  v19 = *(v15 + 16);
  v19(v41, v14, v40);
  v20 = sub_10056DF68();
  v21 = sub_100573448();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 152);
  if (v22)
  {
    v24 = *(v0 + 144);
    v44 = v21;
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v27 = 136446210;
    v19(v24, v23, v26);
    v28 = sub_100572978();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v23, v26);
    v32 = sub_10008190C(v28, v30, &v45);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v44, "Timeline using %{public}s", v27, 0xCu);
    sub_100010474(v43);
  }

  else
  {
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);

    v31 = *(v34 + 8);
    v31(v23, v33);
  }

  v35 = *(v0 + 200);
  v36 = *(v0 + 160);
  v37 = *(v0 + 112);
  (*(v0 + 32))(v36);
  v31(v36, v37);
  sub_10001036C(v35, &qword_1006E0618);
  sub_100034768(*(v0 + 224), type metadata accessor for RadioWidgetTimelineProvider.Entry);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100057720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v29 = a7;
  v27[0] = a1;
  v27[1] = a6;
  v9 = v7;
  v11 = sub_1005725D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009DCC(&qword_1006DFD60);
  __chkstk_darwin(v18 - 8);
  v20 = v27 - v19;
  v21 = sub_100572F48();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1000584C0(v9, v17, type metadata accessor for RadioWidgetTimelineProvider);
  (*(v12 + 16))(v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27[0], v11);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v16 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10005852C(v17, v24 + v22);
  (*(v12 + 32))(v24 + v23, v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v25 = (v24 + ((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v28;
  v25[1] = a3;

  sub_100006194(0, 0, v20, v29, v24);
}

uint64_t sub_1000579C0()
{
  v1 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v1);
  v3 = v30 - v2;
  v31[0] = 0x203A65746164;
  v31[1] = 0xE600000000000000;
  sub_10056CAA8();
  sub_100058478(&qword_1006DFD50, &type metadata accessor for Date);
  v32._countAndFlagsBits = sub_100574408();
  sub_100572A98(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_100572A98(v33);
  v34._countAndFlagsBits = v31[0];
  v4 = v31[1];
  v31[0] = 0x287972746E45;
  v31[1] = 0xE600000000000000;
  v34._object = v4;
  sub_100572A98(v34);

  v5 = v31[0];
  v6 = v31[1];
  strcpy(v31, "stations: ");
  BYTE3(v31[1]) = 0;
  HIDWORD(v31[1]) = -369098752;
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  type metadata accessor for WidgetMusicItem();
  v35._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  sub_100572A98(v36);
  v8 = v31[0];
  v9 = v31[1];
  v31[0] = v5;
  v31[1] = v6;

  v37._countAndFlagsBits = v8;
  v37._object = v9;
  sub_100572A98(v37);

  v10 = v31[0];
  v11 = v31[1];
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(v31, "playerState: ");
  HIWORD(v31[1]) = -4864;
  LOBYTE(v30[0]) = *(v0 + v7[6]);
  sub_100009DCC(&qword_1006E2760);
  v38._countAndFlagsBits = sub_100572978();
  sub_100572A98(v38);

  v39._countAndFlagsBits = 8236;
  v39._object = 0xE200000000000000;
  sub_100572A98(v39);
  v12 = v31[0];
  v13 = v31[1];
  v31[0] = v10;
  v31[1] = v11;

  v40._countAndFlagsBits = v12;
  v40._object = v13;
  sub_100572A98(v40);

  v15 = v31[0];
  v14 = v31[1];
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_100573ED8(23);

  v31[0] = 0xD000000000000013;
  v31[1] = 0x80000001005AAC30;
  sub_10000CC8C(v0 + v7[7], v3, &qword_1006E0618);
  v41._countAndFlagsBits = sub_100572978();
  sub_100572A98(v41);

  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  sub_100572A98(v42);
  v16 = v31[0];
  v17 = v31[1];
  v31[0] = v15;
  v31[1] = v14;

  v43._countAndFlagsBits = v16;
  v43._object = v17;
  sub_100572A98(v43);

  v19 = v31[0];
  v18 = v31[1];
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_100573ED8(20);

  v31[0] = 0xD000000000000012;
  v31[1] = 0x80000001005AAC50;
  v30[0] = *(v0 + v7[8]);
  v20 = v30[0];
  sub_100009DCC(&unk_1006E11E8);
  v44._countAndFlagsBits = sub_100572978();
  sub_100572A98(v44);

  v21 = v31[0];
  v22 = v31[1];
  v31[0] = v19;
  v31[1] = v18;

  v45._countAndFlagsBits = v21;
  v45._object = v22;
  sub_100572A98(v45);

  v24 = v31[0];
  v23 = v31[1];
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(v31, "errorMessage: ");
  HIBYTE(v31[1]) = -18;
  v25 = v0 + v7[9];
  v26 = *(v25 + 8);
  v30[0] = *v25;
  v30[1] = v26;

  sub_100009DCC(&qword_1006DFD58);
  v46._countAndFlagsBits = sub_100572978();
  sub_100572A98(v46);

  v27 = v31[0];
  v28 = v31[1];
  v31[0] = v24;
  v31[1] = v23;

  v47._countAndFlagsBits = v27;
  v47._object = v28;
  sub_100572A98(v47);

  v48._countAndFlagsBits = 41;
  v48._object = 0xE100000000000000;
  sub_100572A98(v48);

  return v31[0];
}

uint64_t sub_100057EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100009DCC(&qword_1006E0618);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100057FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009DCC(&qword_1006E0618);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100058114()
{
  sub_10056CAA8();
  if (v0 <= 0x3F)
  {
    sub_1000582A8(319, &qword_1006DFF08, type metadata accessor for WidgetMusicItem, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100016918(319, &qword_1006E0688);
      if (v2 <= 0x3F)
      {
        sub_1000582A8(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000582A8(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100016918(319, &qword_1006DFE60);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000582A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100058320(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000583A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100058478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000584C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005852C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058590(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1005725D8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000CB98;

  return sub_100056570(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

void sub_100058720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100009DCC(&qword_1006E1ED8);
      v7 = *(type metadata accessor for WidgetMusicItem() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for WidgetMusicItem();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1000588C0()
{
  v1 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1005725D8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_10056DF88();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_100058A38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1005725D8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000116F0;

  return sub_10005528C(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_100058BD0()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100058D44, 0, 0);
}

uint64_t sub_100058D44()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100058E04;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_100058E04()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100063724;
  }

  else
  {
    v5 = sub_100063728;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100058F74()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000590E8, 0, 0);
}

uint64_t sub_1000590E8()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1000591A8;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_1000591A8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100042434;
  }

  else
  {
    v5 = sub_100059318;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100059318()
{
  v1 = sub_100570DF8();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

id sub_1000593C0()
{
  type metadata accessor for RecentlyPlayedWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10005990C();
  qword_1006FC208 = result;
  return result;
}

uint64_t sub_100059400()
{
  v1[2] = v0;
  v1[3] = sub_100009DCC(&qword_1006E2A78);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000594A0, 0, 0);
}

uint64_t sub_1000594A0()
{
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ITEMS", v3, 2u);
  }

  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  sub_10000CC8C(*(v6 + 16) + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items, v5, &qword_1006E2A78);
  v7 = sub_100071ED8(*(v5 + *(v4 + 44)), *(v5 + *(v4 + 44) + 8));
  sub_10001036C(v5, &qword_1006E2A78);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ITEMS cache hit", v11, 2u);
    }

    sub_100061CF4(v7);

    v12 = v0[1];

    return v12(v7);
  }

  else
  {
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ITEMS cache miss", v14, 2u);
    }

    v15 = swift_task_alloc();
    v0[5] = v15;
    *v15 = v0;
    v15[1] = sub_100059740;

    return sub_100059CE4();
  }
}

uint64_t sub_100059740(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100059894, 0, 0);
  }
}

uint64_t sub_100059894()
{
  sub_100061CF4(*(v0 + 48));
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_10005990C()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedWidgetDataProvider.Cache(0);
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items;
  sub_10006AC28(0x796C746E65636552, 0xEE00646579616C50, (v6 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items));
  v8 = (v7 + *(sub_100009DCC(&qword_1006E2A78) + 44));
  *v8 = 0x736D657469;
  v8[1] = 0xE500000000000000;
  *(v0 + 16) = v6;
  static Logger.music(_:)();
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = sub_1005728D8();
  v13 = v12;

  if (v11 == 0x646957636973754DLL && v13 == 0xEC00000073746567)
  {
  }

  else
  {
    v14 = sub_100574498();

    if ((v14 & 1) == 0)
    {
      return v1;
    }
  }

  v15 = sub_10056DF68();
  v16 = sub_100573448();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059C70()
{
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items, &qword_1006E2A78);

  return swift_deallocClassInstance();
}

id sub_100059D04()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_1005728D8();
  v5 = v4;

  if (v3 == 0x636973754DLL && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_100574498();
  }

  *(v0 + 48) = v7 & 1;
  if (qword_1006DFA20 != -1)
  {
    swift_once();
  }

  if (qword_1006FC270)
  {
    v8 = qword_1006FC270;
    v9 = sub_1000A6750();
    v10 = (v9 == 2) | v9;
    v11 = sub_1000A6758();

    v12 = v11 | v10;
    if (v11 == 2)
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 49) = v12 & 1;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v14 = result;
    *(v0 + 50) = [result hasProperNetworkConditionsToShowCloudMedia];

    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_100059F20;

    return sub_100058F74();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100059F20(char a1)
{
  *(*v1 + 51) = a1;

  return _swift_task_switch(sub_10005A020, 0, 0);
}

uint64_t sub_10005A020()
{
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 51);
    v4 = *(v0 + 50);
    v5 = *(v0 + 49);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    *v7 = 67240960;
    *(v7 + 4) = v6;
    *(v7 + 8) = 1026;
    *(v7 + 10) = v5;
    *(v7 + 14) = 1026;
    *(v7 + 16) = v4;
    *(v7 + 20) = 1026;
    *(v7 + 22) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH ITEMS: isMusicProcess: %{BOOL,public}d, areRemoteQueriesEnabled: %{BOOL,public}d, canShowCloudMedia: %{BOOL,public}d, canPlayCatalogContent: %{BOOL,public}d", v7, 0x1Au);
  }

  v8 = *(v0 + 51);
  v9 = *(v0 + 50);
  v10 = *(v0 + 49);
  v11 = *(v0 + 48);

  if (v11 != 1 || v10 == 0 || v9 == 0 || v8 == 0)
  {
    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    *v15 = v0;
    v15[1] = sub_10005A380;

    return sub_10005BEE0();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 32) = v17;
    *v17 = v0;
    v17[1] = sub_10005A214;

    return sub_10005A480();
  }
}

uint64_t sub_10005A214(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_10005A380;

    return sub_10005BEE0();
  }
}

uint64_t sub_10005A380(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10005A480()
{
  v1[3] = v0;
  v2 = sub_100009DCC(&qword_1006E2AB0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100009DCC(&qword_1006E2AB8);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_100570D78();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E2AC0);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10005A678, 0, 0);
}

uint64_t sub_10005A678()
{
  v0[16] = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS", v3, 2u);
  }

  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[11];

  sub_100570CC8();
  sub_1000636DC(&qword_1006E2AC8, &type metadata accessor for RecentlyPlayedMusicItem);
  sub_100571098();
  (*(v6 + 104))(v4, enum case for MusicDataRequest.Source.widgets(_:), v5);
  sub_100571068();
  sub_100571078();
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_10005A84C;
  v8 = v0[13];
  v9 = v0[9];

  return MusicRecentlyPlayedRequest.response()(v9, v8);
}

uint64_t sub_10005A84C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10005AC6C;
  }

  else
  {
    v2 = sub_10005A960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005A960()
{
  sub_1005711E8();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10005AA28;

  return sub_10006D1E0(&unk_10057F108, 0);
}

uint64_t sub_10005AA28(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[5];
    v6 = v4[6];
    v8 = v4[4];
    v4[20] = a1;
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_10005AB7C, 0, 0);
  }
}

uint64_t sub_10005AB7C()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  sub_100061CF4(v1);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10005AC6C()
{
  v18 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = v0[14];
    v16 = v0[15];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08);
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS ERROR %{public}s", v6, 0xCu);
    sub_100010474(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10005AE80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100570CC8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005AF40, 0, 0);
}

uint64_t sub_10005AF40()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001CBA0;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10005AFF0(v3, v2);
}

uint64_t sub_10005AFF0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_100009DCC(&unk_1006E1E90);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_100571F08();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_1005722D8();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_100571B78();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = sub_100570CC8();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10005B324, 0, 0);
}

uint64_t sub_10005B324()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    (*(*(v0 + 240) + 96))(v5, *(v0 + 232));
    (*(v8 + 32))(v6, v5, v7);
    v9 = sub_100571B28();
    v11 = v10;
    v12 = sub_100571AC8();
LABEL_5:
    v16 = v12;
    v17 = v13;
    (*(v8 + 8))(v6, v7);
    goto LABEL_10;
  }

  if (v4 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    v14 = *(v0 + 248);
    v8 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 240) + 96))(v14, *(v0 + 232));
    (*(v8 + 32))(v6, v14, v7);
    v9 = sub_1005721A8();
    v11 = v15;
    v12 = sub_100572158();
    goto LABEL_5;
  }

  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  if (v4 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 160);
    (*(v19 + 96))(*(v0 + 248), *(v0 + 232));
    (*(v22 + 32))(v21, v18, v23);
    v9 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v11 = v24;
    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v9 = sub_100570C88();
    v11 = v25;
    (*(v19 + 8))(v18, v20);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  *(v0 + 32) = sub_100570C98();
  *(v0 + 40) = v28;
  *(v0 + 48) = sub_100570CB8();
  *(v0 + 56) = v29;
  sub_100062248(v26);
  sub_100570CA8();
  v30 = sub_100571E58();
  *(v0 + 272) = v30;
  v31 = *(v30 - 8);
  *(v0 + 280) = v31;
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    sub_10001036C(*(v0 + 128), &unk_1006DFD20);
    *(v0 + 304) = 0;
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 328) = v33;
    *(v0 + 336) = v32;
    *(v0 + 344) = v35;
    *(v0 + 352) = v34;
    sub_100062A3C(v36);
    sub_100570C78();
    *(v0 + 360) = sub_10056D578();
    *(v0 + 368) = v40;
    (*(v39 + 8))(v37, v38);
    *(v0 + 376) = sub_100062D70();
    v41 = swift_task_alloc();
    *(v0 + 384) = v41;
    *v41 = v0;
    v41[1] = sub_10005BA18;

    return sub_10007524C();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v43 = 140.0;
    }

    else
    {
      v43 = 125.0;
    }

    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *v44 = v0;
    v44[1] = sub_10005B790;

    return sub_10003E58C(v43);
  }
}

uint64_t sub_10005B790(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 128);
  *(*v1 + 296) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10005B8F0, 0, 0);
}

uint64_t sub_10005B8F0()
{
  *(v0 + 304) = *(v0 + 296);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
  *(v0 + 328) = v2;
  *(v0 + 336) = v1;
  *(v0 + 344) = v4;
  *(v0 + 352) = v3;
  sub_100062A3C(v5);
  sub_100570C78();
  *(v0 + 360) = sub_10056D578();
  *(v0 + 368) = v9;
  (*(v8 + 8))(v6, v7);
  *(v0 + 376) = sub_100062D70();
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_10005BA18;

  return sub_10007524C();
}

uint64_t sub_10005BA18(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10005BB18, 0, 0);
}

uint64_t sub_10005BB18()
{
  v33 = *(v0 + 392);
  v32 = *(v0 + 376);
  v30 = *(v0 + 360);
  v31 = *(v0 + 368);
  v28 = *(v0 + 344);
  v29 = *(v0 + 352);
  v24 = *(v0 + 328);
  v25 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 320);
  v38 = *(v0 + 304);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v36 = *(v0 + 240);
  v37 = *(v0 + 232);
  v1 = *(v0 + 144);
  v21 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v35 = *(v0 + 72);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v34 = v9[25];
  *&v6[v34] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v21, v2);
  sub_10003CEF4(v3, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v29;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v26;
  *(v11 + 1) = v27;
  v12 = &v6[v9[11]];
  *v12 = v30;
  *(v12 + 1) = v31;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v32;
  v6[v9[16]] = v33;
  sub_10000CC8C(v4, &v6[v9[17]], &unk_1006E1E90);
  sub_10000CC8C(v5, &v6[v9[18]], &unk_1006E1E90);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  (*(v36 + 8))(v35, v37);
  sub_10001036C(v5, &unk_1006E1E90);
  sub_10001036C(v4, &unk_1006E1E90);
  sub_10006367C(v3, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v21, v2);
  *&v6[v34] = v38;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10005BEE0()
{
  v1[14] = v0;
  v1[15] = *(type metadata accessor for WidgetMusicItem() - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = sub_10056CAA8();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_100009DCC(&qword_1006E0500);
  v1[25] = swift_task_alloc();
  sub_100009DCC(&unk_1006E1E90);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_1005722D8();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_100571B78();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E2A80);
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006DFCC8);
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E2A88);
  v1[46] = v7;
  v1[47] = *(v7 - 8);
  v1[48] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E2A90);
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E2A98);
  v1[52] = v9;
  v1[53] = *(v9 - 8);
  v1[54] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E2AA0);
  v1[55] = v10;
  v1[56] = *(v10 - 8);
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10005C418, 0, 0);
}

uint64_t sub_10005C418()
{
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH LOCAL ITEMS", v3, 2u);
  }

  sub_100570F18();
  sub_100570E98();
  swift_getKeyPath();
  sub_100570EE8();

  sub_100570EF8();
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_10005C598;
  v5 = v0[55];
  v6 = v0[51];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10005C598()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10005FDAC;
  }

  else
  {
    v2 = sub_10005C6AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C6AC()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  sub_100570F68();
  (*(v2 + 8))(v1, v3);
  sub_100570F18();
  sub_100570E98();
  swift_getKeyPath();
  sub_100570EE8();

  sub_100570EF8();
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_10005C7E4;
  v5 = v0[46];
  v6 = v0[42];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10005C7E4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_10005FF5C;
  }

  else
  {
    v2 = sub_10005C8F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C8F8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  sub_100570F68();
  (*(v2 + 8))(v1, v3);
  sub_100063478(&qword_1006E2AA8, &qword_1006E2A98);
  v4 = sub_1005731C8();
  if (v4)
  {
    v5 = v4;
    sub_100041490(0, v4 & ~(v4 >> 63), 0);
    result = sub_1005731B8();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v7 = *(v0 + 280);
    do
    {
      v8 = *(v0 + 312);
      v9 = sub_1005732E8();
      (*(v7 + 16))(v8);
      v9(v0 + 16, 0);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100041490(v10 > 1, v11 + 1, 1);
      }

      v12 = *(v0 + 312);
      v13 = *(v0 + 272);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
      sub_100573218();
      --v5;
    }

    while (v5);
  }

  sub_100063478(&qword_1006DFDB0, &qword_1006DFCC8);
  v14 = sub_1005731C8();
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  sub_10004140C(0, v14 & ~(v14 >> 63), 0);
  result = sub_1005731B8();
  if (v15 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v16 = *(v0 + 232);
  do
  {
    v17 = *(v0 + 264);
    v18 = sub_1005732E8();
    (*(v16 + 16))(v17);
    v18(v0 + 48, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10004140C(v19 > 1, v20 + 1, 1);
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    _swiftEmptyArrayStorage[2] = v20 + 1;
    (*(v16 + 32))(_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
    sub_100573218();
    --v15;
  }

  while (v15);
LABEL_13:
  v23 = *(v0 + 280);
  *(v0 + 560) = _swiftEmptyArrayStorage;
  *(v0 + 496) = _swiftEmptyArrayStorage;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2] || _swiftEmptyArrayStorage[2] > 5uLL)
  {
LABEL_23:
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v72 = *(v0 + 432);
    v73 = *(v0 + 440);
    v40 = *(v0 + 424);
    v41 = *(v0 + 376);
    v70 = *(v0 + 384);
    v71 = *(v0 + 416);
    v42 = *(v0 + 360);
    v69 = *(v0 + 368);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);

    sub_100061CF4(v45);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v70, v69);
    (*(v40 + 8))(v72, v71);
    (*(v38 + 8))(v39, v73);

    v46 = *(v0 + 8);

    return v46(_swiftEmptyArrayStorage);
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 272);
  (*(v23 + 16))(v24, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v25);
  sub_100571B18();
  (*(v23 + 8))(v24, v25);
  *(v0 + 520) = &_swiftEmptyArrayStorage[2];
  *(v0 + 512) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    (*(v27 + 16))(v26, _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v28);
    sub_100572188();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 200);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v34;
  sub_100015128(v29, v31);
  sub_100015128(v30, v31 + v34);
  v35 = *(v32 + 48);
  LODWORD(v33) = v35(v31, 1, v33);
  v36 = *(v0 + 160);
  result = v35(v31 + v34, 1, v36);
  if (v33 == 1)
  {
    v37 = result == 1;
    result = _swiftEmptyArrayStorage;
    if (!v37)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        (*(*(v0 + 232) + 16))(*(v0 + 240), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        result = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = _swiftEmptyArrayStorage;
          *(v0 + 96) = _swiftEmptyArrayStorage;
          if (!isUniquelyReferenced_nonNull_native || (v53 - 1) > _swiftEmptyArrayStorage[3] >> 1)
          {
            v55 = sub_100040E10(isUniquelyReferenced_nonNull_native, v53, 1, _swiftEmptyArrayStorage);
            *(v0 + 96) = v55;
          }

          *(v0 + 584) = v55;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v56 = swift_task_alloc();
          *(v0 + 592) = v56;
          *v56 = v0;
          v56[1] = sub_10005F384;
          v57 = *(v0 + 240);
          v58 = *(v0 + 128);
LABEL_46:

          return sub_100060144(v58, v57);
        }

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    goto LABEL_23;
  }

  if (result == 1)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 280) + 16))(*(v0 + 288), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
      result = _swiftEmptyArrayStorage;
      v47 = _swiftEmptyArrayStorage[2];
      if (!v47)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = _swiftEmptyArrayStorage;
      *(v0 + 80) = _swiftEmptyArrayStorage;
      if (!v48 || (v47 - 1) > _swiftEmptyArrayStorage[3] >> 1)
      {
        v49 = sub_100040DE8(v48, v47, 1, _swiftEmptyArrayStorage);
        *(v0 + 80) = v49;
      }

      *(v0 + 568) = v49;
      sub_100063530(0, 1, 0, &type metadata accessor for Album);
      v50 = swift_task_alloc();
      *(v0 + 576) = v50;
      *v50 = v0;
      v50[1] = sub_10005E95C;
      v51 = *(v0 + 288);
      v52 = *(v0 + 136);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v59 = *(v0 + 176);
  v60 = *(*(v0 + 168) + 32);
  v60(*(v0 + 184), *(v0 + 200), v36);
  v60(v59, v31 + v34, v36);
  result = sub_10056CA08();
  if (result)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 232) + 16))(*(v0 + 248), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      result = _swiftEmptyArrayStorage;
      v61 = _swiftEmptyArrayStorage[2];
      if (v61)
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = _swiftEmptyArrayStorage;
        *(v0 + 96) = _swiftEmptyArrayStorage;
        if (!v62 || (v61 - 1) > _swiftEmptyArrayStorage[3] >> 1)
        {
          v63 = sub_100040E10(v62, v61, 1, _swiftEmptyArrayStorage);
          *(v0 + 96) = v63;
        }

        *(v0 + 528) = v63;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v64 = swift_task_alloc();
        *(v0 + 536) = v64;
        *v64 = v0;
        v64[1] = sub_10005D4E0;
        v57 = *(v0 + 248);
        v58 = *(v0 + 152);
        goto LABEL_46;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(*(v0 + 280) + 16))(*(v0 + 296), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
  result = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage[2];
  if (!v65)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = _swiftEmptyArrayStorage;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  if (!v66 || (v65 - 1) > _swiftEmptyArrayStorage[3] >> 1)
  {
    v67 = sub_100040DE8(v66, v65, 1, _swiftEmptyArrayStorage);
    *(v0 + 80) = v67;
  }

  *(v0 + 544) = v67;
  sub_100063530(0, 1, 0, &type metadata accessor for Album);
  v68 = swift_task_alloc();
  *(v0 + 552) = v68;
  *v68 = v0;
  v68[1] = sub_10005DF20;
  v51 = *(v0 + 296);
  v52 = *(v0 + 144);
LABEL_55:

  return sub_100060F28(v52, v51);
}

uint64_t sub_10005D4E0()
{

  return _swift_task_switch(sub_10005D5DC, 0, 0);
}

uint64_t sub_10005D5DC()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  v10 = *(v0 + 528);
  v11 = *(v0 + 504);
  *(v0 + 560) = v10;
  *(v0 + 496) = v1;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      (*(v14 + 16))(v12, v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      sub_100571B18();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_16:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v29 = *(v0 + 424);
    v55 = *(v0 + 384);
    v56 = *(v0 + 416);
    v30 = *(v0 + 376);
    v54 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 344);

    sub_100061CF4(v34);
    (*(v31 + 8))(v32, v33);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v27 + 8))(v28, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!v10[2] || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v10 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v10;
  if (v10[2])
  {
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    (*(v16 + 16))(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    sub_100572188();
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_100015128(v18, v20);
  sub_100015128(v19, v20 + v23);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v10[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v10[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v10;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v10[3] >> 1)
        {
          v10 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v10);
          *(v0 + 96) = v10;
        }

        *(v0 + 584) = v10;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v11[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v11[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v37 || (v36 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v37, v36, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 568) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v25);
    v47(v46, v20 + v23, v25);
    result = sub_10056CA08();
    if (result)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v10[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!v49 || (v48 - 1) > v10[3] >> 1)
          {
            v10 = sub_100040E10(v49, v48, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 528) = v10;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v11[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v11[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v52 || (v51 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v52, v51, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 544) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005DF20()
{

  return _swift_task_switch(sub_10005E01C, 0, 0);
}

uint64_t sub_10005E01C()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 544);
  v12 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v11;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      (*(v15 + 16))(v13, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
      sub_100571B18();
      (*(v15 + 8))(v13, v14);
      goto LABEL_11;
    }

LABEL_16:
    v28 = *(v0 + 448);
    v58 = *(v0 + 440);
    v59 = *(v0 + 456);
    v29 = *(v0 + 424);
    v56 = *(v0 + 416);
    v57 = *(v0 + 432);
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v54 = *(v0 + 368);
    v55 = *(v0 + 384);
    v32 = *(v0 + 344);
    v33 = *(v0 + 352);

    sub_100061CF4(v34);
    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v28 + 8))(v59, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!*(v10 + 16) || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v12 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v12;
  if (v12[2])
  {
    v16 = *(v0 + 256);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v16, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v18);
    sub_100572188();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v24;
  sub_100015128(v19, v21);
  sub_100015128(v20, v21 + v24);
  v25 = *(v23 + 48);
  LODWORD(v22) = v25(v21, 1, v22);
  v26 = *(v0 + 160);
  result = v25(v21 + v24, 1, v26);
  if (v22 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v12[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v12[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v12;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v12[3] >> 1)
        {
          v12 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v12);
          *(v0 + 96) = v12;
        }

        *(v0 + 584) = v12;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v11[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v11[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v37 || (v36 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v37, v36, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 568) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v26);
    v47(v46, v21 + v24, v26);
    result = sub_10056CA08();
    if (result)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v12[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!v49 || (v48 - 1) > v12[3] >> 1)
          {
            v12 = sub_100040E10(v49, v48, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 528) = v12;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v11[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v11[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v52 || (v51 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v52, v51, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 544) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005E95C()
{

  return _swift_task_switch(sub_10005EA58, 0, 0);
}

uint64_t sub_10005EA58()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v7, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 568);
  v11 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v10;
  if (v10[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      (*(v14 + 16))(v12, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      sub_100571B18();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_16:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v29 = *(v0 + 424);
    v55 = *(v0 + 384);
    v56 = *(v0 + 416);
    v30 = *(v0 + 376);
    v54 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 344);

    sub_100061CF4(v34);
    (*(v31 + 8))(v32, v33);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v27 + 8))(v28, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!*(*(v0 + 560) + 16) || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v11 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v11;
  if (v11[2])
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v15, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    sub_100572188();
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_100015128(v18, v20);
  sub_100015128(v19, v20 + v23);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v11[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v11[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v11;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v11[3] >> 1)
        {
          v11 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v11);
          *(v0 + 96) = v11;
        }

        *(v0 + 584) = v11;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v10[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v10[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v37 || (v36 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v37, v36, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 568) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v25);
    v47(v46, v20 + v23, v25);
    result = sub_10056CA08();
    if (result)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v11[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!v49 || (v48 - 1) > v11[3] >> 1)
          {
            v11 = sub_100040E10(v49, v48, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 528) = v11;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v10[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v10[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v52 || (v51 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v52, v51, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 544) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005F384()
{

  return _swift_task_switch(sub_10005F480, 0, 0);
}

uint64_t sub_10005F480()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0(v2 > 1, v3 + 1, 1, v1);
  }

  v4 = *(v0 + 600);
  v5 = *(v0 + 200);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v1[2] = v3 + 1;
  v8 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  sub_10001036C(v5 + v4, &unk_1006E1E90);
  v9 = *(v0 + 584);
  v10 = *(v0 + 504);
  *(v0 + 560) = v9;
  *(v0 + 496) = v1;
  if (v10[2])
  {
    if (*v8 <= 5uLL)
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 272);
      v13 = *(v0 + 280);
      (*(v13 + 16))(v11, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
      sub_100571B18();
      (*(v13 + 8))(v11, v12);
      goto LABEL_11;
    }

LABEL_16:
    v26 = *(v0 + 448);
    v27 = *(v0 + 456);
    v56 = *(v0 + 432);
    v57 = *(v0 + 440);
    v28 = *(v0 + 424);
    v54 = *(v0 + 384);
    v55 = *(v0 + 416);
    v29 = *(v0 + 376);
    v53 = *(v0 + 368);
    v30 = *(v0 + 352);
    v31 = *(v0 + 360);
    v32 = *(v0 + 344);

    sub_100061CF4(v33);
    (*(v30 + 8))(v31, v32);
    (*(v29 + 8))(v54, v53);
    (*(v28 + 8))(v56, v55);
    (*(v26 + 8))(v27, v57);

    v34 = *(v0 + 8);

    return v34(v1);
  }

  if (!v9[2] || *v8 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v9 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v8;
  *(v0 + 512) = v9;
  if (v9[2])
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    (*(v15 + 16))(v14, v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);
    sub_100572188();
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v22;
  sub_100015128(v17, v19);
  sub_100015128(v18, v19 + v22);
  v23 = *(v21 + 48);
  LODWORD(v20) = v23(v19, 1, v20);
  v24 = *(v0 + 160);
  result = v23(v19 + v22, 1, v24);
  if (v20 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v9[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v40 = v9[2];
      if (v40)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v9;
        if (!isUniquelyReferenced_nonNull_native || (v40 - 1) > v9[3] >> 1)
        {
          v9 = sub_100040E10(isUniquelyReferenced_nonNull_native, v40, 1, v9);
          *(v0 + 96) = v9;
        }

        *(v0 + 584) = v9;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v42 = swift_task_alloc();
        *(v0 + 592) = v42;
        *v42 = v0;
        v42[1] = sub_10005F384;
        v43 = *(v0 + 240);
        v44 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v44, v43);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v10[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v35 = v10[2];
    if (!v35)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v36 || (v35 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v36, v35, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 568) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v37 = swift_task_alloc();
    *(v0 + 576) = v37;
    *v37 = v0;
    v37[1] = sub_10005E95C;
    v38 = *(v0 + 288);
    v39 = *(v0 + 136);
  }

  else
  {
    v45 = *(v0 + 176);
    v46 = *(*(v0 + 168) + 32);
    v46(*(v0 + 184), *(v0 + 200), v24);
    v46(v45, v19 + v22, v24);
    result = sub_10056CA08();
    if (result)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v47 = v9[2];
        if (v47)
        {
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!v48 || (v47 - 1) > v9[3] >> 1)
          {
            v9 = sub_100040E10(v48, v47, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 528) = v9;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v49 = swift_task_alloc();
          *(v0 + 536) = v49;
          *v49 = v0;
          v49[1] = sub_10005D4E0;
          v43 = *(v0 + 248);
          v44 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v10[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v50 = v10[2];
    if (!v50)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v51 || (v50 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v51, v50, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 544) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v52 = swift_task_alloc();
    *(v0 + 552) = v52;
    *v52 = v0;
    v52[1] = sub_10005DF20;
    v38 = *(v0 + 296);
    v39 = *(v0 + 144);
  }

  return sub_100060F28(v39, v38);
}

uint64_t sub_10005FDAC()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005FF5C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);
  (*(v0[56] + 8))(v0[57], v0[55]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100060144(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100009DCC(&unk_1006E1E90);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD38);
  v2[10] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40);
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100060378, 0, 0);
}

uint64_t sub_100060378()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  *(v0 + 16) = sub_1005721E8();
  *(v0 + 24) = v3;
  *(v0 + 32) = sub_100572168();
  *(v0 + 40) = v4;
  v5 = sub_1005721A8();
  sub_1000B30D8(v5, v6, v1);

  sub_1005722B8();
  v7 = sub_100571E58();
  *(v0 + 160) = v7;
  v8 = *(v7 - 8);
  *(v0 + 168) = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10001036C(*(v0 + 128), &unk_1006DFD20);
    *(v0 + 192) = 0;
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    *(v0 + 200) = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 216) = v10;
    *(v0 + 224) = v9;
    sub_100572148();
    v17 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v17 - 8) + 56))(v12, 0, 11, v17);
    *(v0 + 232) = sub_1005721A8();
    *(v0 + 240) = v18;
    *(v0 + 248) = sub_100572158();
    *(v0 + 256) = v19;
    sub_1005720C8();
    *(v0 + 264) = sub_10056D578();
    *(v0 + 272) = v20;
    (*(v14 + 8))(v11, v13);
    sub_100009DCC(&qword_1006DFD48);
    v21 = swift_allocObject();
    *(v0 + 280) = v21;
    *(v21 + 16) = xmmword_10057B500;
    sub_100572068();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v16, 1);
    sub_100572078();
    v22 = sub_10056D558();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    *(v21 + 33) = TextBadge.init(for:)(v15);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_100060A70;

    return sub_100074DBC();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v25 = 140.0;
    }

    else
    {
      v25 = 125.0;
    }

    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_1000606EC;

    return sub_10003E58C(v25);
  }
}

uint64_t sub_1000606EC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10006084C, 0, 0);
}

uint64_t sub_10006084C()
{
  *(v0 + 192) = *(v0 + 184);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v0 + 200) = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;
  sub_100572148();
  v9 = sub_100009DCC(&qword_1006DFD30);
  (*(*(v9 - 8) + 56))(v4, 0, 11, v9);
  *(v0 + 232) = sub_1005721A8();
  *(v0 + 240) = v10;
  *(v0 + 248) = sub_100572158();
  *(v0 + 256) = v11;
  sub_1005720C8();
  *(v0 + 264) = sub_10056D578();
  *(v0 + 272) = v12;
  (*(v6 + 8))(v3, v5);
  sub_100009DCC(&qword_1006DFD48);
  v13 = swift_allocObject();
  *(v0 + 280) = v13;
  *(v13 + 16) = xmmword_10057B500;
  sub_100572068();
  *(v13 + 32) = TextBadge.init(for:isPlayable:)(v8, 1);
  sub_100572078();
  v14 = sub_10056D558();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  *(v13 + 33) = TextBadge.init(for:)(v7);
  v15 = swift_task_alloc();
  *(v0 + 288) = v15;
  *v15 = v0;
  v15[1] = sub_100060A70;

  return sub_100074DBC();
}

uint64_t sub_100060A70(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100060B70, 0, 0);
}

uint64_t sub_100060B70()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v2, v3);
  sub_10003CEF4(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_10000CC8C(v5, &v6[v9[17]], &unk_1006E1E90);
  sub_10000CC8C(v4, &v6[v9[18]], &unk_1006E1E90);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v19 = sub_1005722D8();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_10001036C(v4, &unk_1006E1E90);
  sub_10001036C(v5, &unk_1006E1E90);
  sub_10006367C(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v2, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100060F28(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100009DCC(&unk_1006E1E90);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD38);
  v2[10] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40);
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006115C, 0, 0);
}

uint64_t sub_10006115C()
{
  v1 = v0[19];
  v2 = v0[16];
  v0[2] = sub_100571B48();
  v0[3] = v3;
  v0[4] = sub_100571AD8();
  v0[5] = v4;
  v5 = sub_100571B28();
  sub_1000B30D8(v5, v6, v1);

  sub_100571B68();
  v7 = sub_100571E58();
  v0[20] = v7;
  v8 = *(v7 - 8);
  v0[21] = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10001036C(v0[16], &unk_1006DFD20);
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[12];
    v16 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    v0[24] = 0;
    v0[25] = v10;
    v0[26] = v9;
    v0[27] = v12;
    v0[28] = v11;
    v19 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v19 - 8) + 56))(v13, 1, 11, v19);
    v0[29] = sub_100571B28();
    v0[30] = v20;
    v0[31] = sub_100571AC8();
    v0[32] = v21;
    sub_100571A98();
    v0[33] = sub_10056D578();
    v0[34] = v22;
    (*(v16 + 8))(v14, v15);
    sub_100009DCC(&qword_1006DFD48);
    v23 = swift_allocObject();
    v0[35] = v23;
    *(v23 + 16) = xmmword_10057B500;
    sub_100571B08();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v18, 1);
    sub_100571A88();
    v24 = sub_10056D558();
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    *(v23 + 33) = TextBadge.init(for:)(v17);
    v25 = swift_task_alloc();
    v0[36] = v25;
    *v25 = v0;
    v25[1] = sub_10006183C;

    return sub_100075004();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v27 = 140.0;
    }

    else
    {
      v27 = 125.0;
    }

    v28 = swift_task_alloc();
    v0[22] = v28;
    *v28 = v0;
    v28[1] = sub_1000614C8;

    return sub_10003E58C(v27);
  }
}

uint64_t sub_1000614C8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100061628, 0, 0);
}

uint64_t sub_100061628()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v0[24] = v0[23];
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v4;
  v0[28] = v3;
  v11 = sub_100009DCC(&qword_1006DFD30);
  (*(*(v11 - 8) + 56))(v5, 1, 11, v11);
  v0[29] = sub_100571B28();
  v0[30] = v12;
  v0[31] = sub_100571AC8();
  v0[32] = v13;
  sub_100571A98();
  v0[33] = sub_10056D578();
  v0[34] = v14;
  (*(v8 + 8))(v6, v7);
  sub_100009DCC(&qword_1006DFD48);
  v15 = swift_allocObject();
  v0[35] = v15;
  *(v15 + 16) = xmmword_10057B500;
  sub_100571B08();
  *(v15 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
  sub_100571A88();
  v16 = sub_10056D558();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  *(v15 + 33) = TextBadge.init(for:)(v9);
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_10006183C;

  return sub_100075004();
}

uint64_t sub_10006183C(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_10006193C, 0, 0);
}

uint64_t sub_10006193C()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem();
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v2, v3);
  sub_10003CEF4(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_10000CC8C(v5, &v6[v9[17]], &unk_1006E1E90);
  sub_10000CC8C(v4, &v6[v9[18]], &unk_1006E1E90);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v19 = sub_100571B78();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_10001036C(v4, &unk_1006E1E90);
  sub_10001036C(v5, &unk_1006E1E90);
  sub_10006367C(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v2, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

void sub_100061CF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetMusicItem() - 8;
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    *&v6 = 136446210;
    v21 = v6;
    v22 = v11;
    v23 = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
    do
    {
      sub_10003CEF4(v10, v8, type metadata accessor for WidgetMusicItem);
      v19 = sub_10056DF68();
      v20 = sub_100573448();
      if (os_log_type_enabled(v19, v20))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = v21;
        v14 = sub_1000397E0();
        v15 = v2;
        v17 = v16;
        sub_10006367C(v8, type metadata accessor for WidgetMusicItem);
        v18 = sub_10008190C(v14, v17, &v24);
        v2 = v15;

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "ITEM %{public}s", v12, 0xCu);
        sub_100010474(v13);

        v11 = v22;
      }

      else
      {

        sub_10006367C(v8, type metadata accessor for WidgetMusicItem);
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_100061F34()
{

  v1 = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
  v2 = sub_10056DF88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100062028()
{
  sub_1000620B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000620B8()
{
  if (!qword_1006E29E0)
  {
    sub_100010324(&qword_1006DFF98);
    sub_1000621AC(&qword_1006DFFC0, &qword_1006DFFC8);
    sub_1000621AC(&qword_1006DFFA0, &qword_1006DFFA8);
    v0 = type metadata accessor for FileBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E29E0);
    }
  }
}

uint64_t sub_1000621AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98);
    sub_1000636DC(a2, type metadata accessor for WidgetMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100062248@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_100571F08();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005722D8();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(qword_1006E1D50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v48 = &v47 - v11;
  v12 = __chkstk_darwin(v10);
  v49 = &v47 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = sub_100571B78();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100570CC8();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, v56, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v20 + 32))(v22, v26, v19);
    sub_100571B38();
    v28 = sub_10056C8A8();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v18, 1, v28) == 1)
    {
      v31 = sub_100571B28();
      sub_1000B3260(v31, v32, v55);

      (*(v20 + 8))(v22, v19);
      result = v30(v18, 1, v28);
      if (result != 1)
      {
        return sub_10001036C(v18, qword_1006E1D50);
      }
    }

    else
    {
      (*(v20 + 8))(v22, v19);
      return (*(v29 + 32))(v55, v18, v28);
    }

    return result;
  }

  if (v27 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v26, v23);
    v35 = v53;
    v34 = v54;
    (*(v53 + 32))(v5, v26, v54);
    sub_1005721B8();
    v36 = sub_10056C8A8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    if (v38(v16, 1, v36) == 1)
    {
      v39 = sub_1005721A8();
      sub_1000B30D8(v39, v40, v55);

      (*(v35 + 8))(v5, v34);
      goto LABEL_13;
    }

    (*(v35 + 8))(v5, v34);
    return (*(v37 + 32))(v55, v16, v36);
  }

  if (v27 != enum case for RecentlyPlayedMusicItem.station(_:))
  {
    sub_10056C868();
    v45 = sub_10056C8A8();
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v9, 1, v45);
    if (result != 1)
    {
      (*(v46 + 32))(v55, v9, v45);
      return (*(v24 + 8))(v26, v23);
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v24 + 96))(v26, v23);
  v42 = v50;
  v41 = v51;
  v43 = v52;
  (*(v51 + 32))(v50, v26, v52);
  v16 = v49;
  sub_100571ED8();
  v36 = sub_10056C8A8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v16, 1, v36) != 1)
  {
    (*(v41 + 8))(v42, v43);
    return (*(v37 + 32))(v55, v16, v36);
  }

  v44 = v48;
  sub_10056C868();
  result = (v38)(v44, 1, v36);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v41 + 8))(v42, v43);
  (*(v37 + 32))(v55, v44, v36);
LABEL_13:
  result = (v38)(v16, 1, v36);
  if (result != 1)
  {
    return sub_10001036C(v16, qword_1006E1D50);
  }

  return result;
}

uint64_t sub_100062A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100570CC8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v13 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v13 - 8) + 56))(a1, 1, 11, v13);
    return (*(v9 + 8))(v11, v8);
  }

  else if (v12 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    sub_100572148();
    (*(v5 + 8))(v7, v4);
    v15 = sub_100009DCC(&qword_1006DFD30);
    return (*(*(v15 - 8) + 56))(a1, 0, 11, v15);
  }

  else
  {
    v16 = enum case for RecentlyPlayedMusicItem.station(_:);
    v17 = v12;
    v18 = sub_100009DCC(&qword_1006DFD30);
    if (v17 == v16)
    {
      v19 = 9;
    }

    else
    {
      v19 = 1;
    }

    (*(*(v18 - 8) + 56))(a1, v19, 11, v18);
    return (*(v9 + 8))(v11, v8);
  }
}

void *sub_100062D70()
{
  v1 = v0;
  v2 = sub_100571F08();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005722D8();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006DFD38);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100009DCC(&qword_1006DFD40);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_100571B78();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100570CC8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    (*(v18 + 96))(v20, v17);
    (*(v14 + 32))(v16, v20, v13);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B500;
    sub_100571B08();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    sub_100571A88();
    v23 = sub_10056D558();
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    *(v22 + 33) = TextBadge.init(for:)(v9);
    (*(v14 + 8))(v16, v13);
  }

  else if (v21 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    (*(v18 + 96))(v20, v17);
    v25 = v35;
    v24 = v36;
    (*(v35 + 32))(v6, v20, v36);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B500;
    sub_100572068();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    sub_100572078();
    v26 = sub_10056D558();
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    *(v22 + 33) = TextBadge.init(for:)(v9);
    (*(v25 + 8))(v6, v24);
  }

  else if (v21 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    (*(v18 + 96))(v20, v17);
    v27 = v32;
    v28 = v33;
    v29 = v34;
    (*(v33 + 32))(v32, v20, v34);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B510;
    sub_100571EB8();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    (*(v18 + 8))(v20, v17);
    return _swiftEmptyArrayStorage;
  }

  return v22;
}

uint64_t sub_100063384(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  return a4(v5, v6);
}

void *sub_1000633D4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100063448@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100063478(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000634CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10006367C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000636DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006372C()
{
  v0 = sub_10056C758();
  sub_10000C910(v0, qword_1006FC210);
  sub_10000C49C(v0, qword_1006FC210);
  return sub_10056C738();
}

uint64_t sub_100063790@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10056C758();
  v3 = sub_10000C49C(v2, qword_1006FC210);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100063838(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100067194();
  *v4 = v2;
  v4[1] = sub_1000638E4;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000638E4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000639EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100066000();
  *a1 = result;
  return result;
}

uint64_t sub_100063A14(uint64_t a1)
{
  v2 = sub_100063E98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100063A6C(uint64_t a1)
{
  v2 = sub_100065970();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100063AB8()
{
  v1 = sub_100009DCC(&qword_1006E2B88);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100009DCC(&qword_1006E1428);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_10056C758();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_100572868();
  __chkstk_darwin(v9 - 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  sub_100572858();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100572848(v15);
  v16._countAndFlagsBits = v10;
  v16._object = v11;
  sub_100572838(v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100572848(v17);
  sub_10056C748();
  (*(v8 + 56))(v6, 1, 1, v7);
  v12 = sub_10056C138();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  return sub_10056C148();
}

uint64_t sub_100063D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000CB98;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100063DD0(uint64_t a1)
{
  v2 = sub_100064304();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static MusicItemID.entityIdentifier(for:)()
{

  return sub_1005713D8();
}

unint64_t sub_100063E98()
{
  result = qword_1006E2AD0;
  if (!qword_1006E2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AD0);
  }

  return result;
}

unint64_t sub_100063EF0()
{
  result = qword_1006E2AD8;
  if (!qword_1006E2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AD8);
  }

  return result;
}

unint64_t sub_100063F48()
{
  result = qword_1006E2AE0;
  if (!qword_1006E2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AE0);
  }

  return result;
}

unint64_t sub_100063FA0()
{
  result = qword_1006E2AE8;
  if (!qword_1006E2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AE8);
  }

  return result;
}

unint64_t sub_100064048()
{
  result = qword_1006E2AF0;
  if (!qword_1006E2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AF0);
  }

  return result;
}

unint64_t sub_1000640A0()
{
  result = qword_1006E2AF8;
  if (!qword_1006E2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AF8);
  }

  return result;
}

unint64_t sub_1000640F8()
{
  result = qword_1006E2B00;
  if (!qword_1006E2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B00);
  }

  return result;
}

unint64_t sub_10006414C()
{
  result = qword_1006E2B08;
  if (!qword_1006E2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B08);
  }

  return result;
}

unint64_t sub_1000641A4()
{
  result = qword_1006E2B10;
  if (!qword_1006E2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B10);
  }

  return result;
}

unint64_t sub_1000641FC()
{
  result = qword_1006E2B18;
  if (!qword_1006E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B18);
  }

  return result;
}

unint64_t sub_100064254()
{
  result = qword_1006E2B20;
  if (!qword_1006E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B20);
  }

  return result;
}

unint64_t sub_1000642AC()
{
  result = qword_1006E2B28;
  if (!qword_1006E2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B28);
  }

  return result;
}

unint64_t sub_100064304()
{
  result = qword_1006E2B30;
  if (!qword_1006E2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B30);
  }

  return result;
}

unint64_t sub_10006435C()
{
  result = qword_1006E2B38;
  if (!qword_1006E2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B38);
  }

  return result;
}

unint64_t sub_1000643F8()
{
  result = qword_1006E2B50;
  if (!qword_1006E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B50);
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10006447C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1005713D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000644C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_100009DCC(&qword_1006E1F60);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E1F30);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100009DCC(&qword_1006E1428);
  v3[24] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E2B80);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[27] = v7;
  v8 = swift_task_alloc();
  v3[28] = v8;
  *v8 = v3;
  v8[1] = sub_1000646FC;

  return sub_100064DB0(v7);
}

uint64_t sub_1000646FC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100064D00;
  }

  else
  {
    v2 = sub_100064810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064810()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = sub_10056C128();
  (*(v1 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[20];
    v7 = v0[16];
    result = sub_1000414D4(0, v5, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v45 = v4 + v42;
    v50 = (v7 + 8);
    v52 = v7;
    v51 = (v7 + 32);
    v46 = v6;
    v43 = v5;
    v44 = v4;
    v40 = (v6 + 32);
    v41 = (v6 + 8);
    while (v9 < *(v4 + 16))
    {
      v48 = v9;
      v49 = v10;
      v12 = v0[21];
      v11 = v0[22];
      v13 = v0[19];
      v47 = *(v46 + 72);
      v14 = *(v46 + 16);
      v14(v11, v45 + v47 * v9, v13);
      v14(v12, v11, v13);
      result = sub_10056C0E8();
      v15 = result;
      v53 = *(result + 16);
      if (v53)
      {
        v16 = 0;
        while (v16 < *(v15 + 16))
        {
          v17 = v0[14];
          v18 = v0[13];
          v19 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v20 = *(v52 + 72);
          (*(v52 + 16))(v0[18], v15 + v19 + v20 * v16, v0[15]);
          sub_10056C028();

          v21 = v0[4];
          v22 = v0[5];

          v0[8] = v21;
          v0[9] = v22;
          v0[10] = v18;
          v0[11] = v17;
          sub_10001B550();
          LOBYTE(v21) = sub_100573CF8();

          if (v21)
          {
            v23 = *v51;
            (*v51)(v0[17], v0[18], v0[15]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100041514(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v25 = _swiftEmptyArrayStorage[2];
            v24 = _swiftEmptyArrayStorage[3];
            if (v25 >= v24 >> 1)
            {
              sub_100041514(v24 > 1, v25 + 1, 1);
            }

            v26 = v0[17];
            v27 = v0[15];
            _swiftEmptyArrayStorage[2] = v25 + 1;
            result = v23(_swiftEmptyArrayStorage + v19 + v25 * v20, v26, v27);
          }

          else
          {
            result = (*v50)(v0[18], v0[15]);
          }

          if (v53 == ++v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      v29 = v0[22];
      v28 = v0[23];
      v30 = v0[21];
      v31 = v0[19];

      sub_10056C0F8();
      (*v41)(v29, v31);
      v32 = *v40;
      (*v40)(v28, v30, v31);
      v10 = v49;
      v34 = v49[2];
      v33 = v49[3];
      v4 = v44;
      if (v34 >= v33 >> 1)
      {
        sub_1000414D4(v33 > 1, v34 + 1, 1);
        v10 = v49;
      }

      v35 = v0[23];
      v36 = v0[19];
      v10[2] = v34 + 1;
      result = v32(v10 + v42 + v34 * v47, v35, v36);
      v9 = v48 + 1;
      if (v48 + 1 == v43)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v37 = v0[24];
    v38 = sub_10056C758();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    sub_1000642AC();
    sub_10056C118();

    v39 = v0[1];

    return v39();
  }

  return result;
}

uint64_t sub_100064D00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064DB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100009DCC(&qword_1006E1F30);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E1428);
  v1[6] = swift_task_alloc();
  v1[7] = *(sub_100009DCC(&qword_1006E1F40) - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_100064F84;

  return sub_10006D82C(&unk_10057F6A0, 0, &off_100680200);
}

uint64_t sub_100064F84(uint64_t a1)
{
  *(*v2 + 88) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000650AC, 0, 0);
  }
}

uint64_t sub_1000650AC()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v6 = (v4 + 32);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v0[8];
      v8 = v0[9];
      v10 = v0[3];
      sub_10006704C(v5, v8);
      sub_1000670BC(v8, v9);
      if ((*(v4 + 48))(v9, 1, v10) == 1)
      {
        sub_10006712C(v0[8]);
      }

      else
      {
        v11 = *v6;
        (*v6)(v0[5], v0[8], v0[3]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100040E38(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_100040E38(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = v0[5];
        v15 = v0[3];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      }

      v5 += v20;
      --v2;
    }

    while (v2);
  }

  v16 = v0[6];
  v17 = sub_10056C758();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1000642AC();
  sub_10056C118();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100065318(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  sub_10056C758();
  *(v2 + 24) = swift_task_alloc();
  type metadata accessor for WidgetChartDiskCache(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return _swift_task_switch(sub_1000653E0, 0, 0);
}

uint64_t sub_1000653E0()
{
  if (qword_1006DF8A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1006FC038;
  v3 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  *(v0 + 40) = qword_1006FC038;
  *(v0 + 48) = v3;
  v4 = *(v0 + 72);
  sub_100066F8C(v2 + v3, v1);
  v5 = sub_100006494(v4);
  sub_100066FF0(v1);
  if (v5)
  {
    sub_100003320();
    sub_10056C738();
    sub_1000642AC();
    sub_10056C108();
    v6 = *(v0 + 16);
    v7 = sub_100009DCC(&qword_1006E1F30);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_1000655C0;
    v11 = *(v0 + 72);

    return sub_10000D9B4(v11);
  }
}

uint64_t sub_1000655C0(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000656C0, 0, 0);
}

uint64_t sub_1000656C0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 72);
    sub_100066F8C(*(v0 + 40) + *(v0 + 48), v1);

    sub_100006FEC(v2);

    sub_100066FF0(v1);
    sub_100003320();
    sub_10056C738();
    sub_1000642AC();
    sub_10056C108();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 16);
  v5 = sub_100009DCC(&qword_1006E1F30);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return sub_1000644C8(a1, a2, a3);
}

unint64_t sub_1000658C0()
{
  result = qword_1006E2B58;
  if (!qword_1006E2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B58);
  }

  return result;
}

unint64_t sub_100065918()
{
  result = qword_1006E2B60;
  if (!qword_1006E2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B60);
  }

  return result;
}

unint64_t sub_100065970()
{
  result = qword_1006E2B68;
  if (!qword_1006E2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B68);
  }

  return result;
}

uint64_t sub_1000659C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000671F8;

  return sub_100066304(a1);
}

uint64_t sub_100065A6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_100064DB0(a1);
}

uint64_t sub_100065B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100065BC4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100065BC4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100065CC8()
{
  result = qword_1006E2B70;
  if (!qword_1006E2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B70);
  }

  return result;
}

uint64_t sub_100065D60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10006414C();
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100065E14(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_100065EC0;

  return sub_100066AC8(v1 + 16);
}

uint64_t sub_100065EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100066000()
{
  v18 = sub_10056C178();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006E1418);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100009DCC(&qword_1006E1428);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10056C758();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100009DCC(&qword_1006E2B90);
  sub_10056C738();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_10056C058();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_10006414C();
  return sub_10056C0A8();
}

uint64_t sub_100066304(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for WidgetChartDiskCache(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100066394, 0, 0);
}

uint64_t sub_100066394()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 40) = v2;
      *(v0 + 48) = v3;
      v4 = *(v0 + 16) + 16 * v2;
      *(v0 + 56) = *(v4 + 32);
      *(v0 + 64) = *(v4 + 40);
      v5 = qword_1006DF8A8;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = 0;
      v7 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
      *(v0 + 72) = qword_1006FC038;
      *(v0 + 80) = v7;
LABEL_6:
      *(v0 + 88) = v6;
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      v10 = *(v0 + 24);
      v11 = *(&off_100680228 + v6 + 32);
      *(v0 + 112) = v11;
      sub_100066F8C(v9 + v8, v10);
      v12 = sub_100006494(v11);
      sub_100066FF0(v10);
      if (!v12)
      {
        break;
      }

      v13 = (v12 + 72);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v16 = *(v13 - 5);
        v15 = *(v13 - 4);
        v18 = *(v13 - 3);
        v17 = *(v13 - 2);
        v19 = *(v13 - 1);
        v20 = *v13;
        if (v16 == *(v0 + 56) && v15 == *(v0 + 64))
        {
          v16 = *(v0 + 56);
LABEL_18:

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3 = *(v0 + 48);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v3 = sub_100040A04(0, *(v3 + 2) + 1, 1, *(v0 + 48));
          }

          v24 = *(v3 + 2);
          v23 = *(v3 + 3);
          if (v24 >= v23 >> 1)
          {
            v3 = sub_100040A04((v23 > 1), v24 + 1, 1, v3);
          }

          *(v3 + 2) = v24 + 1;
          v25 = &v3[48 * v24];
          *(v25 + 4) = v16;
          *(v25 + 5) = v15;
          *(v25 + 6) = v18;
          *(v25 + 7) = v17;
          *(v25 + 8) = v19;
          *(v25 + 9) = v20;
          goto LABEL_23;
        }

        v13 += 6;
        if (sub_100574498())
        {
          goto LABEL_18;
        }
      }

      v6 = *(v0 + 88) + 1;
      if (*(v0 + 88) != 2)
      {
        goto LABEL_6;
      }

      v3 = *(v0 + 48);
LABEL_23:
      v2 = *(v0 + 40) + 1;
      if (v2 == *(v0 + 32))
      {
        goto LABEL_29;
      }
    }

    v26 = swift_task_alloc();
    *(v0 + 96) = v26;
    *v26 = v0;
    v26[1] = sub_1000666A0;

    return sub_10000D9B4(v11);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_29:

    v28 = *(v0 + 8);

    return v28(v3);
  }
}

uint64_t sub_1000666A0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000667A0, 0, 0);
}

uint64_t sub_1000667A0()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
LABEL_12:
    v13 = *(v0 + 88) + 1;
    if (*(v0 + 88) != 2)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      goto LABEL_25;
    }

    v14 = *(v0 + 48);
    goto LABEL_21;
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  sub_100066F8C(*(v0 + 72) + *(v0 + 80), v2);

  sub_100006FEC(v3);

  sub_100066FF0(v2);
  while (1)
  {
    v4 = (v1 + 72);
    v5 = *(v1 + 16) + 1;
    while (1)
    {
      if (!--v5)
      {

        goto LABEL_12;
      }

      v7 = *(v4 - 5);
      v6 = *(v4 - 4);
      v9 = *(v4 - 3);
      v8 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v7 == *(v0 + 56) && v6 == *(v0 + 64))
      {
        break;
      }

      v4 += 6;
      if (sub_100574498())
      {
        goto LABEL_16;
      }
    }

    v7 = *(v0 + 56);
LABEL_16:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_100040A04(0, *(v14 + 2) + 1, 1, *(v0 + 48));
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_100040A04((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v19 + 1;
    v20 = &v14[48 * v19];
    *(v20 + 4) = v7;
    *(v20 + 5) = v6;
    *(v20 + 6) = v9;
    *(v20 + 7) = v8;
    *(v20 + 8) = v11;
    *(v20 + 9) = v10;
LABEL_21:
    v21 = *(v0 + 40) + 1;
    if (v21 == *(v0 + 32))
    {
      break;
    }

    *(v0 + 40) = v21;
    *(v0 + 48) = v14;
    v22 = *(v0 + 16) + 16 * v21;
    *(v0 + 56) = *(v22 + 32);
    *(v0 + 64) = *(v22 + 40);
    v23 = qword_1006DF8A8;

    if (v23 != -1)
    {
      swift_once();
    }

    v13 = 0;
    v15 = qword_1006FC038;
    v16 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
    *(v0 + 72) = qword_1006FC038;
    *(v0 + 80) = v16;
LABEL_25:
    *(v0 + 88) = v13;
    v24 = *(v0 + 24);
    v25 = *(&off_100680228 + v13 + 32);
    *(v0 + 112) = v25;
    sub_100066F8C(v15 + v16, v24);
    v1 = sub_100006494(v25);
    sub_100066FF0(v24);
    if (!v1)
    {
      v26 = swift_task_alloc();
      *(v0 + 96) = v26;
      *v26 = v0;
      v26[1] = sub_1000666A0;

      return sub_10000D9B4(v25);
    }
  }

  v28 = *(v0 + 8);

  return v28(v14);
}

uint64_t sub_100066AC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for WidgetChartDiskCache(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100066B58, 0, 0);
}

uint64_t sub_100066B58()
{
  if (qword_1006DF8A8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_1006FC038;
  v3 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  v0[4] = qword_1006FC038;
  v0[5] = v3;
  sub_100066F8C(v2 + v3, v1);
  v4 = sub_100006494(1);
  sub_100066FF0(v1);
  if (v4)
  {
    sub_1000642AC();
    v5 = sub_100572CF8();

    if (v5[2])
    {
      v7 = v5[4];
      v6 = v5[5];
      v9 = v5[6];
      v8 = v5[7];
      v11 = v5[8];
      v10 = v5[9];
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v11 = 0;
      v10 = 0;
    }

    v14 = v0[2];

    *v14 = v7;
    v14[1] = v6;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v11;
    v14[5] = v10;
    v15 = v0[1];

    return v15();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_100066D3C;

    return sub_10000D9B4(1);
  }
}

uint64_t sub_100066D3C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100066E3C, 0, 0);
}

uint64_t sub_100066E3C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[3];
    sub_100066F8C(v0[4] + v0[5], v2);

    sub_100006FEC(1);

    sub_100066FF0(v2);
    sub_1000642AC();
    v3 = sub_100572CF8();

    if (v3[2])
    {
      v5 = v3[4];
      v4 = v3[5];
      v6 = v3[6];
      v1 = v3[7];
      v8 = v3[8];
      v7 = v3[9];

      goto LABEL_7;
    }

    v5 = 0;
    v4 = 0;
    v6 = 0;
    v1 = 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  v8 = 0;
  v7 = 0;
LABEL_7:
  v9 = v0[2];

  *v9 = v5;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v1;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100066F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetChartDiskCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066FF0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetChartDiskCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006704C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000670BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006712C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100067194()
{
  result = qword_1006E2B98;
  if (!qword_1006E2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B98);
  }

  return result;
}

uint64_t sub_1000671FC()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  __chkstk_darwin(v1 - 8);
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC228 = result;
  unk_1006FC230 = v3;
  return result;
}

uint64_t sub_100067320(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0618);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1005725B8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000674B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100009DCC(&qword_1006E0618);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1005725B8();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100067654()
{
  sub_10056CAA8();
  if (v0 <= 0x3F)
  {
    sub_100016918(319, &qword_1006E0688);
    if (v1 <= 0x3F)
    {
      sub_100067800(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100067800(319, &qword_1006DFF08, type metadata accessor for WidgetMusicItem, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100067800(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1005725B8();
            if (v5 <= 0x3F)
            {
              sub_100016918(319, &qword_1006DFE60);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100067800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100067878(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000678F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100067988()
{
  v0 = sub_10056CAA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  sub_10000C910(v7, qword_1006FC238);
  v8 = sub_10000C49C(v7, qword_1006FC238);
  v9 = type metadata accessor for WidgetMusicItem();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_10056CA98();
  if (qword_1006DF9F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1005725B8();
  v11 = sub_10000C49C(v10, qword_1006E2BA0);
  (*(*(v10 - 8) + 16))(v8 + v7[9], v11, v10);
  (*(v1 + 32))(v8, v3, v0);
  *(v8 + v7[5]) = 3;
  result = sub_10006A154(v6, v8 + v7[6]);
  *(v8 + v7[7]) = _swiftEmptyArrayStorage;
  *(v8 + v7[8]) = 0;
  v13 = (v8 + v7[10]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

unint64_t sub_100067BDC()
{
  result = qword_1006E2D20;
  if (!qword_1006E2D20)
  {
    type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2D20);
  }

  return result;
}

uint64_t sub_100067C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v6 = swift_task_alloc();
  v5[4] = v6;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_100067D00;

  return sub_100067E8C(v6);
}

uint64_t sub_100067D00()
{

  return _swift_task_switch(sub_100067DFC, 0, 0);
}

uint64_t sub_100067DFC()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100069F14(v1, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100067E8C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100067EAC, 0, 0);
}

uint64_t sub_100067EAC()
{
  if (sub_100058BC8())
  {
    v1 = sub_10056DF68();
    v2 = sub_100573428();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Can't use widget: privacyAcknowledgementRequired", v3, 2u);
    }

    v4 = v0[3];

    v5 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
    v6 = v5[6];
    v7 = type metadata accessor for WidgetMusicItem();
    (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v9 = qword_1006FC158;
    v8 = unk_1006FC160;

    sub_10056CA98();
    if (qword_1006DF9F0 != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    v11 = sub_1005725B8();
    v12 = sub_10000C49C(v11, qword_1006E2BA0);
    (*(*(v11 - 8) + 16))(v10 + v5[9], v12, v11);
    *(v10 + v5[5]) = 3;
    *(v10 + v5[7]) = _swiftEmptyArrayStorage;
    *(v10 + v5[8]) = 0;
    v13 = (v10 + v5[10]);
    *v13 = v9;
    v13[1] = v8;
    v14 = v0[1];

    return v14();
  }

  else
  {
    if (qword_1006DF9D0 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[5] = v16;
    *v16 = v0;
    v16[1] = sub_100068188;

    return sub_100059400();
  }
}

uint64_t sub_100068188(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_100068408;
  }

  else
  {
    v4 = sub_10006829C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006829C()
{
  v1 = v0[3];
  v2 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v3 = v2[6];
  v4 = type metadata accessor for WidgetMusicItem();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  if (qword_1006DF9F8 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = sub_1005725B8();
  v8 = sub_10000C49C(v7, qword_1006E2BB8);
  (*(*(v7 - 8) + 16))(v6 + v2[9], v8, v7);
  sub_10056CA98();
  *(v6 + v2[5]) = 3;
  *(v6 + v2[7]) = v5;
  *(v6 + v2[8]) = 0;
  v9 = (v6 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100068408()
{
  v22 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[7];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08);
    v6 = sub_100572978();
    v8 = sub_10008190C(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not fetch items - error=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  v9 = v0[3];
  v10 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v11 = v10[6];
  v12 = type metadata accessor for WidgetMusicItem();
  (*(*(v12 - 8) + 56))(v9 + v11, 1, 1, v12);
  if (qword_1006DF980 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC188;
  v13 = unk_1006FC190;

  sub_10056CA98();
  if (qword_1006DF9F0 != -1)
  {
    swift_once();
  }

  v15 = v0[3];
  v16 = sub_1005725B8();
  v17 = sub_10000C49C(v16, qword_1006E2BA0);
  (*(*(v16 - 8) + 16))(v15 + v10[9], v17, v16);

  *(v15 + v10[5]) = 3;
  *(v15 + v10[7]) = _swiftEmptyArrayStorage;
  *(v15 + v10[8]) = 0;
  v18 = (v15 + v10[10]);
  *v18 = v14;
  v18[1] = v13;
  v19 = v0[1];

  return v19();
}

uint64_t sub_1000686E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100009DCC(qword_1006E2D28);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_100009DCC(&qword_1006E0518);
  v6[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_10056CAA8();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v10 = sub_100572578();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = sub_100009DCC(&qword_1006E0520);
  v6[31] = swift_task_alloc();
  v6[32] = sub_100009DCC(&qword_1006E0510);
  v6[33] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618);
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_100068A9C, 0, 0);
}

uint64_t sub_100068A9C()
{
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 280) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_100068BB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 312, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_100068BB4()
{

  return _swift_task_switch(sub_100068CB0, 0, 0);
}

uint64_t sub_100068CB0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  *(v0 + 313) = *(v0 + 312);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, v3, &qword_1006E0510);
  sub_10006F60C(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v1);
  sub_10001036C(v3, &qword_1006E0510);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, v5, &qword_1006E0520);
  v7 = sub_10006FEA0(*(v5 + *(v6 + 44)), *(v5 + *(v6 + 44) + 8));
  sub_10001036C(v5, &qword_1006E0520);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = v7;
  }

  *(v0 + 296) = v8;
  sub_100019990(v7);
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_100068E48;
  v11 = *(v0 + 232);

  return sub_100067E8C(v11);
}

uint64_t sub_100068E48()
{

  return _swift_task_switch(sub_100068F44, 0, 0);
}

uint64_t sub_100068F44()
{
  v1 = *(v0 + 313);
  sub_10056CA98();
  if (!v1)
  {
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);
    v36 = *(v0 + 72);
    v37 = *(v0 + 80);
    v38 = *(v0 + 64);
    sub_10000CC8C(*(*(v0 + 280) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v36, &qword_1006E0518);
    sub_10007051C(*(v36 + *(v38 + 44)), *(v36 + *(v38 + 44) + 8), v37);
    sub_10001036C(v36, &qword_1006E0518);
    if ((*(v35 + 48))(v37, 1, v34) == 1)
    {
      sub_10001036C(*(v0 + 80), &qword_1006E0528);
    }

    else
    {
      v45 = *(v0 + 104);
      sub_100069EAC(*(v0 + 80), v45, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      sub_100012D44();
      sub_100069F14(v45, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    }

    v46 = *(v0 + 296);
    v47 = *(v0 + 272);
    v48 = *(v0 + 232);
    v49 = *(v0 + 184);
    v50 = *(v0 + 136);
    v51 = *(v0 + 112);
    v52 = *(v0 + 120);
    sub_10056C9D8();
    sub_100572558();
    (*(v52 + 8))(v50, v51);
    *(v48 + v49[5]) = 0;
    sub_1000199A0(v47, v48 + v49[6]);
    v53 = v49[8];
    v54 = *(v48 + v53);
    v79 = v46;

    *(v48 + v53) = v46;
    if (qword_1006DFA00 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 232);
    v56 = *(v0 + 216);
    v57 = *(v0 + 184);
    v58 = sub_1005725B8();
    v59 = sub_10000C49C(v58, qword_1006E2BD0);
    (*(*(v58 - 8) + 24))(v55 + *(v57 + 36), v59, v58);
    sub_100069DD8(v55, v56, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v41 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
    v43 = v41[2];
    v60 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v60 >> 1)
    {
      v41 = sub_10004108C(v60 > 1, v43 + 1, 1, v41);
    }

    v32 = *(v0 + 216);
    goto LABEL_21;
  }

  if (v1 != 1)
  {
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    sub_100572568();
    sub_100069DD8(v40, v39, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v41 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
    v43 = v41[2];
    v42 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v41 = sub_10004108C(v42 > 1, v43 + 1, 1, v41);
    }

    v79 = *(v0 + 296);
    v32 = *(v0 + 224);
LABEL_21:
    v61 = *(v0 + 192);
    v41[2] = v44;
    v33 = v41 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v43;
    goto LABEL_22;
  }

  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 232);
  v5 = *(v0 + 184);
  sub_100572568();
  v6 = v5[5];
  *(v4 + v6) = 1;
  v76 = v6;
  v77 = v5[6];
  sub_1000199A0(v3, v4 + v77);
  v7 = v5[8];
  v8 = *(v4 + v7);
  v79 = v2;

  v78 = v7;
  *(v4 + v7) = v2;
  if (qword_1006DF9F8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = sub_1005725B8();
  v13 = sub_10000C49C(v12, qword_1006E2BB8);
  (*(*(v12 - 8) + 24))(v9 + *(v11 + 36), v13, v12);
  sub_100069DD8(v9, v10, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v14 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10004108C(v15 > 1, v16 + 1, 1, v14);
  }

  v17 = *(v0 + 232);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 112);
  v14[2] = v16 + 1;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = *(v20 + 72);
  v26 = v14 + v24 + v25 * v16;
  v27 = v14;
  sub_100069EAC(v18, v26, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v22 + 40))(v17, v21, v23);
  *(v4 + v76) = 3;
  sub_10001036C(v4 + v77, &qword_1006E0618);
  v28 = type metadata accessor for WidgetMusicItem();
  (*(*(v28 - 8) + 56))(v4 + v77, 1, 1, v28);

  *(v4 + v78) = 0;
  sub_100069DD8(v17, v19, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v29 = v27;
  v31 = v27[2];
  v30 = v27[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_10004108C(v30 > 1, v31 + 1, 1, v27);
  }

  v32 = *(v0 + 200);
  *(v29 + 16) = v31 + 1;
  v33 = v29 + v24 + v31 * v25;
LABEL_22:
  sub_100069EAC(v32, v33, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v74 = *(v0 + 272);
  v75 = *(v0 + 232);
  v62 = *(v0 + 160);
  v63 = *(v0 + 152);
  v73 = *(v0 + 144);
  v64 = *(v0 + 120);
  v71 = *(v0 + 176);
  v72 = *(v0 + 112);
  v66 = *(v0 + 48);
  v65 = *(v0 + 56);
  v70 = *(v0 + 40);
  v67 = *(v0 + 24);
  (*(v62 + 16))(*(v0 + 168));
  sub_100067BDC();
  sub_100572638();
  v67(v65);

  (*(v66 + 8))(v65, v70);
  (*(v64 + 8))(v73, v72);
  (*(v62 + 8))(v71, v63);
  sub_10001036C(v74, &qword_1006E0618);
  sub_100069F14(v75, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_10006975C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF9E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC238);
  return sub_100069DD8(v3, a1, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
}

uint64_t sub_1000697DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006DFD60);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_100572F48();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_100069DD8(v5, v10, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;
  sub_100069EAC(v10, v16 + v15, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);

  sub_100006194(0, 0, v13, &unk_10057F810, v16);
}

uint64_t sub_1000699B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v10 = sub_100009DCC(&qword_1006DFD60);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_100572F48();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_100069DD8(v5, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_100069EAC(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;

  sub_100006194(0, 0, v12, &unk_10057F7E8, v15);
}

uint64_t sub_100069B9C()
{
  v1 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_10056DF88();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100069C88(uint64_t a1)
{
  v4 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000CB98;

  return sub_1000686E4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100069DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069E50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1005725B8();
  sub_10000C910(v3, a2);
  sub_10000C49C(v3, a2);
  return sub_1005725A8();
}

uint64_t sub_100069EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069F74()
{
  v1 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_10056DF88();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10006A050(uint64_t a1)
{
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_100067C34(a1, v4, v5, v6, v7);
}

uint64_t sub_10006A154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_10006A1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v11 = v10[5];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 3)
  {
    if (v13 != 3)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v13 == 3)
  {
    return 0;
  }

  if (!v12)
  {
    v14 = 0xE700000000000000;
    v15 = 0x676E6979616C70;
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v12 != 1)
  {
    v14 = 0xE700000000000000;
    v15 = 0x646570706F7473;
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (v13 == 1)
    {
      v16 = 0xE600000000000000;
      if (v15 != 0x646573756170)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0xE700000000000000;
      if (v15 != 0x646570706F7473)
      {
        goto LABEL_20;
      }
    }

LABEL_18:
    if (v14 == v16)
    {

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = 0xE600000000000000;
  v15 = 0x646573756170;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_15:
  v16 = 0xE700000000000000;
  if (v15 == 0x676E6979616C70)
  {
    goto LABEL_18;
  }

LABEL_20:
  v17 = sub_100574498();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v18 = v10[6];
  v19 = *(v7 + 48);
  sub_10000CC8C(a1 + v18, v9, &qword_1006E0618);
  sub_10000CC8C(a2 + v18, &v9[v19], &qword_1006E0618);
  v20 = type metadata accessor for WidgetMusicItem();
  v21 = *(*(v20 - 8) + 48);
  if (v21(v9, 1, v20) != 1)
  {
    sub_10000CC8C(v9, v6, &qword_1006E0618);
    if (v21(&v9[v19], 1, v20) != 1)
    {
      v22 = sub_10003CD6C(v6, &v9[v19]);
      sub_100069F14(&v9[v19], type metadata accessor for WidgetMusicItem);
      sub_100069F14(v6, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v9, &qword_1006E0618);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    sub_100069F14(v6, type metadata accessor for WidgetMusicItem);
LABEL_26:
    sub_10001036C(v9, &qword_1006E0DE8);
    return 0;
  }

  if (v21(&v9[v19], 1, v20) != 1)
  {
    goto LABEL_26;
  }

  sub_10001036C(v9, &qword_1006E0618);
LABEL_28:
  if (sub_10006B354(*(a1 + v10[7]), *(a2 + v10[7])))
  {
    v23 = v10[8];
    v24 = *(a1 + v23);
    v25 = *(a2 + v23);
    if (v24)
    {
      if (!v25)
      {
        return 0;
      }

      sub_1000168CC();
      v26 = v25;
      v27 = v24;
      v28 = sub_100573A58();

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    if (sub_100572598())
    {
      v29 = v10[10];
      v30 = (a1 + v29);
      v31 = *(a1 + v29 + 8);
      v32 = (a2 + v29);
      v33 = v32[1];
      if (v31)
      {
        return v33 && (*v30 == *v32 && v31 == v33 || (sub_100574498() & 1) != 0);
      }

      if (!v33)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006A63C()
{
  result = type metadata accessor for WidgetDiskCache();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetDiskCache();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t type metadata accessor for WidgetDiskCache()
{
  result = qword_1006E2E08;
  if (!qword_1006E2E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetDiskCache();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(qword_1006E1D50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10056DF88();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10006AA10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(qword_1006E1D50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10056DF88();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10006AB40()
{
  sub_100040738();
  if (v0 <= 0x3F)
  {
    sub_10006ABDC();
    if (v1 <= 0x3F)
    {
      sub_10056DF88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10006ABDC()
{
  result = qword_1006E2E18;
  if (!qword_1006E2E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E2E18);
  }

  return result;
}

uint64_t sub_10006AC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v13 = sub_1005735D8();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100573598();
  __chkstk_darwin(v6);
  v7 = sub_100570BC8();
  __chkstk_darwin(v7 - 8);
  v12 = *(type metadata accessor for WidgetDiskCache() + 20);
  sub_10006ABDC();
  sub_100570BB8();
  v17 = _swiftEmptyArrayStorage;
  sub_10006B200();
  sub_100009DCC(&qword_1006E2E58);
  sub_10006B258();
  sub_100573DA8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v8 = sub_100573628();
  v9 = v14;
  *&v14[v12] = v8;
  static Logger.music(_:)();
  v10 = [objc_opt_self() defaultManager];
  sub_10006AEBC(v9);
}

uint64_t sub_10006AEBC@<X0>(char *a1@<X8>)
{
  v2 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10056C8A8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v22 = &v20 - v11;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  NSFileManager.musicAppGroupCachesURL.getter(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10006B2BC(v4);
    v16 = 1;
  }

  else
  {
    v21 = a1;
    v20 = *(v6 + 32);
    v20(v13, v4, v5);
    URL.appending(_:)();
    URL.appending(_:)();
    v17 = *(v6 + 8);
    v17(v9, v5);
    v18 = [v14 defaultManager];
    NSFileManager.createDirectoryIfNeeded(at:)();
    v17(v13, v5);

    a1 = v21;
    v20(v21, v22, v5);
    v16 = 0;
  }

  return (*(v6 + 56))(a1, v16, 1, v5);
}

uint64_t sub_10006B1D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056C8C8();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

unint64_t sub_10006B200()
{
  result = qword_1006E2E50;
  if (!qword_1006E2E50)
  {
    sub_100573598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E50);
  }

  return result;
}

unint64_t sub_10006B258()
{
  result = qword_1006E2E60;
  if (!qword_1006E2E60)
  {
    sub_100010324(&qword_1006E2E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E60);
  }

  return result;
}

uint64_t sub_10006B2BC(uint64_t a1)
{
  v2 = sub_100009DCC(qword_1006E1D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  v5 = __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v47 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_100081FB4(v13, v10, type metadata accessor for WidgetMusicItem);
    sub_100081FB4(v14, v7, type metadata accessor for WidgetMusicItem);
    v16 = v4[9];
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v7[v16];
    v20 = v17 == *v19 && v18 == *(v19 + 1);
    if (!v20 && (sub_100574498() & 1) == 0)
    {
      v21 = v4[10];
      v22 = &v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v7[v21];
      v25 = *(v24 + 1);
      v26 = !v23 || v25 == 0;
      if (v26 || (*v22 == *v24 ? (v32 = v23 == v25) : (v32 = 0), !v32 && (sub_100574498() & 1) == 0))
      {
        v27 = v4[11];
        v28 = *&v10[v27];
        v29 = *&v10[v27 + 8];
        v30 = &v7[v27];
        v31 = v28 == *v30 && v29 == *(v30 + 1);
        if (!v31 && (sub_100574498() & 1) == 0)
        {
          break;
        }
      }
    }

    v33 = v4[12];
    v34 = &v10[v33];
    v35 = *&v10[v33 + 8];
    v36 = &v7[v33];
    v37 = *(v36 + 1);
    if (v35)
    {
      if (v37)
      {
        v38 = *v34 == *v36 && v35 == v37;
        if (v38 || (sub_100574498() & 1) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (!v37)
    {
      goto LABEL_5;
    }

    v39 = v4[13];
    v40 = &v10[v39];
    v41 = *&v10[v39 + 8];
    v42 = &v7[v39];
    v43 = *(v42 + 1);
    v44 = v43 == 0;
    if (v41)
    {
      if (!v43)
      {
        break;
      }

      if (*v40 == *v42 && v41 == v43)
      {
LABEL_5:
        sub_10008201C(v7, type metadata accessor for WidgetMusicItem);
        sub_10008201C(v10, type metadata accessor for WidgetMusicItem);
        goto LABEL_6;
      }

      v44 = sub_100574498();
    }

    sub_10008201C(v7, type metadata accessor for WidgetMusicItem);
    sub_10008201C(v10, type metadata accessor for WidgetMusicItem);
    if ((v44 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v14 += v15;
    v13 += v15;
    if (!--v11)
    {
      return 1;
    }
  }

  sub_10008201C(v7, type metadata accessor for WidgetMusicItem);
  sub_10008201C(v10, type metadata accessor for WidgetMusicItem);
  return 0;
}

void *sub_10006B704(void *result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      v9 = a3(0);
      v10 = sub_100572D98();
      v10[2] = a2;
      v11 = *(v9 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      sub_100081FB4(v7, v10 + v12, a4);
      v13 = a2 - 1;
      if (a2 != 1)
      {
        v14 = *(v11 + 72);
        v15 = v10 + v14 + v12;
        do
        {
          sub_100081FB4(v7, v15, a4);
          v15 += v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    sub_10008201C(v7, a5);
    return v10;
  }

  return result;
}

void *sub_10006B808(void *result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      sub_100009DCC(a3);
      v6 = sub_100572D98();
      v6[2] = a2;
      v7 = *(sub_100009DCC(a3) - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_10000CC8C(v5, v6 + v8, a3);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v7 + 72);
        v11 = v6 + v10 + v8;
        do
        {
          sub_10000CC8C(v5, v11, a3);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    sub_10001036C(v5, a3);
    return v6;
  }

  return result;
}

uint64_t sub_10006B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006BA7C, 0, 0);
}

uint64_t sub_10006BA7C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  (*(*(v0 + 96) + 56))(*(v0 + 128), 1, 1, *(v0 + 88));
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 56);
    *(v0 + 48) = sub_10006B808(*(v0 + 128), (v2 >> 1) - v1, &qword_1006E0618);
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *(v3 + 16) = v0 + 16;
    *(v3 + 24) = v6;
    *(v3 + 40) = v0 + 48;
    sub_100009DCC(&qword_1006E3078);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_10006BBE8;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006BBE8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10008B9A0;
  }

  else
  {
    v2 = sub_10008B9D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[2] = a3;
  return _swift_task_switch(sub_10006BD40, 0, 0);
}

uint64_t sub_10006BD40()
{
  v1 = *(*(v0 + 48) + 16);
  if (!v1)
  {
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_100009DCC(&qword_1006E31B8);
  v2 = sub_100572D98();
  v2[2] = v1;
  v3 = v2 + 4;
  if (v1 == 1)
  {
    v4 = 0;
LABEL_8:
    v7 = v1 - v4;
    do
    {
      *v3++ = 1;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v4 = v1 & 0x7FFFFFFFFFFFFFFELL;
  v3 += v1 & 0x7FFFFFFFFFFFFFFELL;
  v5 = v2 + 33;
  v6 = v1 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v5 - 1) = 257;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  if (v1 != v4)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(v0 + 24) = v2;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = v0 + 16;
  *(v8 + 24) = v9;
  *(v8 + 40) = v0 + 24;
  sub_100009DCC(&qword_1006E31B0);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_10006BEE8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006BEE8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10006C12C;
  }

  else
  {
    v2 = sub_10006C018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006C018()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v3 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_10004081C(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v4 = sub_10004081C((v5 > 1), v6 + 1, 1, v4);
        }

        *(v4 + 2) = v7;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_10006C12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006C2EC, 0, 0);
}

uint64_t sub_10006C2EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  (*(*(v0 + 96) + 56))(*(v0 + 128), 1, 1, *(v0 + 88));
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 56);
    *(v0 + 48) = sub_10006B808(*(v0 + 128), (v2 >> 1) - v1, &qword_1006E0618);
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *(v3 + 16) = v0 + 16;
    *(v3 + 24) = v6;
    *(v3 + 40) = v0 + 48;
    sub_100009DCC(&qword_1006E3078);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_10006C458;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006C458()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10006C7B4;
  }

  else
  {
    v2 = sub_10006C588;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006C588()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v16 = v0[12];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[15];
      v8 = v0[11];
      sub_10000CC8C(v4, v7, &qword_1006E0618);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[15];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E0618);
      }

      else
      {
        sub_10008237C(v10, v0[13], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000407D0(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1000407D0(v11 > 1, v12 + 1, 1, v6);
        }

        v13 = v0[13];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006C7B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006C99C, 0, 0);
}

uint64_t sub_10006C99C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  (*(*(v0 + 96) + 56))(*(v0 + 128), 1, 1, *(v0 + 88));
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 56);
    *(v0 + 48) = sub_10006B808(*(v0 + 128), (v2 >> 1) - v1, &qword_1006E0618);
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *(v3 + 16) = v0 + 16;
    *(v3 + 24) = v6;
    *(v3 + 40) = v0 + 48;
    sub_100009DCC(&qword_1006E3078);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_10006BBE8;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006CB08(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicPin();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_100009DCC(&qword_1006E1F80) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006CC3C, 0, 0);
}

uint64_t sub_10006CC3C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(*(v0 + 56) + 56))(v1, 1, 1, *(v0 + 48));
  sub_100009DCC(&qword_1006E32E0);
  sub_100010BC0(&qword_1006E32E8, &qword_1006E32E0);
  v3 = sub_1005731C8();
  *(v0 + 16) = sub_10006B808(v1, v3, &qword_1006E1F80);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v7;
  *(v4 + 40) = v0 + 16;
  sub_100009DCC(&qword_1006E32F0);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_10006CDF8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006CDF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10006D154;
  }

  else
  {
    v2 = sub_10006CF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006CF28()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_10000CC8C(v4, v7, &qword_1006E1F80);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E1F80);
      }

      else
      {
        sub_10008237C(v10, v0[8], type metadata accessor for WidgetMusicPin);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100040D74(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_100040D74(v11 > 1, v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicPin);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006D154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006D1E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicItem();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006D314, 0, 0);
}

uint64_t sub_10006D314()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(*(v0 + 56) + 56))(v1, 1, 1, *(v0 + 48));
  sub_100009DCC(&qword_1006E2AB0);
  sub_100010BC0(&qword_1006E3120, &qword_1006E2AB0);
  v3 = sub_1005731C8();
  *(v0 + 16) = sub_10006B808(v1, v3, &qword_1006E0618);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v7;
  *(v4 + 40) = v0 + 16;
  sub_100009DCC(&qword_1006E3078);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_10006D4D0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006D4D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10008B9A4;
  }

  else
  {
    v2 = sub_10006D600;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006D600()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_10000CC8C(v4, v7, &qword_1006E0618);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E0618);
      }

      else
      {
        sub_10008237C(v10, v0[8], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000407D0(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1000407D0(v11 > 1, v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006D82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = sub_100009DCC(&qword_1006E1F40);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(sub_100009DCC(&qword_1006E1F50) - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[2] = a3;

  return _swift_task_switch(sub_10006D974, 0, 0);
}

uint64_t sub_10006D974()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v6 = *(v0 + 32);
  (*(*(v0 + 64) + 56))(v1, 1, 1, *(v0 + 56));
  *(v0 + 24) = sub_10006B808(v1, *(v2 + 16), &qword_1006E1F50);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v6;
  *(v3 + 40) = v0 + 24;
  sub_100009DCC(&qword_1006E31E0);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_10006DAD8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006DAD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10006DE2C;
  }

  else
  {
    v2 = sub_10006DC08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006DC08()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v16 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[11];
      v8 = v0[7];
      sub_10000CC8C(v4, v7, &qword_1006E1F50);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[11];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E1F50);
      }

      else
      {
        sub_100019B40(v10, v0[9], &qword_1006E1F40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100040E5C(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100040E5C(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = v0[9];
        v5[2] = v12 + 1;
        sub_100019B40(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, &qword_1006E1F40);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_10006DE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  return _swift_task_switch(sub_10006DEE4, 0, 0);
}

uint64_t sub_10006DEE4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80) >> 1;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 56);
    *(v0 + 48) = sub_1000898A8(1, v3 - v2);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *(v4 + 16) = v0 + 16;
    *(v4 + 24) = v7;
    *(v4 + 40) = v0 + 48;
    sub_100009DCC(&qword_1006E30D0);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_10006E020;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10006E020()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10006E2AC;
  }

  else
  {
    v2 = sub_10006E150;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10006E150()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v1 + 16);
      if (v3 >= v4)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = v3 + 1;
      if (v5 == 1)
      {
        break;
      }

LABEL_9:
      v3 = v6;
      v9 = v5;
      sub_100572CE8();
      if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    v7 = (v1 + 40 + 8 * v3);
    while (v2 != v6)
    {
      if (v4 == v6)
      {
        goto LABEL_15;
      }

      v8 = *v7++;
      v5 = v8;
      ++v6;
      if (v8 != 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:

  v10 = *(v0 + 8);

  v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10006E2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E340@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_100009DCC(a1);
  sub_100010BC0(a2, a1);
  sub_1005731B8();
  sub_100573208();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = sub_1005732E8();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_10006E4E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006DFD70);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E31D0, type metadata accessor for WidgetChartDiskCache.ChartList);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006DFD70);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006DFD70);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006DFD70);
    sub_10001036C(v41, &qword_1006DFD70);
    return (v58)(v52, v51);
  }
}

uint64_t sub_10006ED78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006DFCE0);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E31A8, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006DFCE0);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006DFCE0);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006DFCE0);
    sub_10001036C(v41, &qword_1006DFCE0);
    return (v58)(v52, v51);
  }
}

uint64_t sub_10006F60C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006E0618);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for WidgetMusicItem();
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for WidgetMusicItem();
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006DFFC8, type metadata accessor for WidgetMusicItem);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006E0618);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006E0618);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006E0618);
    sub_10001036C(v41, &qword_1006E0618);
    return (v58)(v52, v51);
  }
}

uint64_t sub_10006FEA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_10000CC8C(v3, v8, qword_1006E1D50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001036C(v8, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v16 = sub_10056DF68();
    v17 = sub_100573428();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10008190C(a1, a2, v38);
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to get widget cache url for loading item named %{public}s", v18, 0xCu);
      sub_100010474(v19);
    }

    return 1;
  }

  else
  {
    v35 = a1;
    URL.appending(_:)();
    v21 = *(v10 + 8);
    v21(v8, v9);
    (*(v10 + 32))(v15, v13, v9);
    v22 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v22);
    *(&v33 - 2) = v15;
    sub_1005735F8();
    v36 = v21;
    v24 = v38[0];
    v23 = v38[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100014D24();
    sub_10056C278();

    v20 = v38[0];

    v25 = sub_10056DF68();
    v26 = sub_100573448();

    v34 = v25;
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v27 = 136446466;
      *(v27 + 4) = sub_10008190C(v35, a2, v38);
      *(v27 + 12) = 2082;
      v37 = v20;
      sub_10003E57C(v20);
      sub_100009DCC(&qword_1006E1ED0);
      v28 = sub_100572978();
      v30 = sub_10008190C(v28, v29, v38);

      *(v27 + 14) = v30;
      v31 = v34;
      _os_log_impl(&_mh_execute_header, v34, v26, "Loaded cached item named %{public}s, value %{public}s", v27, 0x16u);
      swift_arrayDestroy();

      sub_10008246C(v24, v23);
    }

    else
    {
      sub_10008246C(v24, v23);
    }

    v36(v15, v9);
  }

  return v20;
}

uint64_t sub_10007051C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006E0528);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E02E0, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006E0528);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006E0528);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006E0528);
    sub_10001036C(v41, &qword_1006E0528);
    return (v58)(v52, v51);
  }
}

uint64_t sub_100070DB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006E0790);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for WidgetMusicRecommendation(0);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for WidgetMusicRecommendation(0);
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E3118, type metadata accessor for WidgetMusicRecommendation);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006E0790);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006E0790);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006E0790);
    sub_10001036C(v41, &qword_1006E0790);
    return (v58)(v52, v51);
  }
}

uint64_t sub_100071644@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v63 = sub_100009DCC(&qword_1006E0AE0);
  v7 = __chkstk_darwin(v63);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v65 = v4;
  v24 = v23;
  sub_10000CC8C(v4, v15, qword_1006E1D50);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    v25 = v66;
    sub_10001036C(v15, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v26 = sub_10056DF68();
    v27 = sub_100573428();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for loading item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v30 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  else
  {
    v56 = a1;
    v57 = a2;
    URL.appending(_:)();
    v58 = *(v17 + 8);
    v59 = v17 + 8;
    v58(v15, v24);
    v32 = *(v17 + 32);
    v60 = v24;
    v32(v22, v20, v24);
    v33 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    v34 = *(*(v33 - 8) + 56);
    v61 = v12;
    v34(v12, 1, 1, v33);
    v35 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v35);
    *(&v53 - 2) = v22;
    sub_1005735F8();
    v55 = v22;
    v36 = v34;
    v37 = v67[0];
    v38 = v67[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E3180, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    v39 = v64;
    sub_10056C278();
    v54 = v37;

    v36(v39, 0, 1, v33);
    v40 = v39;
    v41 = v61;
    sub_10008B71C(v40, v61, &qword_1006E0AE0);
    v42 = v57;

    v43 = sub_10056DF68();
    v44 = sub_100573448();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v66;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_10008190C(v56, v42, v67);
      *(v47 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v41, v62, &qword_1006E0AE0);
      v48 = sub_100572978();
      v50 = sub_10008190C(v48, v49, v67);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Loaded cached item named %{public}s, value %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v54, v38);

    v51 = v60;
    v52 = v55;
    swift_beginAccess();
    sub_10000CC8C(v41, v46, &qword_1006E0AE0);
    sub_10001036C(v41, &qword_1006E0AE0);
    return (v58)(v52, v51);
  }
}

uint64_t sub_100071ED8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_10000CC8C(v3, v8, qword_1006E1D50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001036C(v8, qword_1006E1D50);
    type metadata accessor for WidgetDiskCache();

    v16 = sub_10056DF68();
    v17 = sub_100573428();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10008190C(a1, a2, v40);
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to get widget cache url for loading item named %{public}s", v18, 0xCu);
      sub_100010474(v19);
    }

    return 0;
  }

  else
  {
    v37 = a1;
    URL.appending(_:)();
    v21 = v10 + 8;
    v22 = *(v10 + 8);
    v22(v8, v9);
    (*(v10 + 32))(v15, v13, v9);
    v23 = type metadata accessor for WidgetDiskCache();
    __chkstk_darwin(v23);
    *(&v33 - 2) = v15;
    sub_1005735F8();
    v36 = v21;
    v38 = v22;
    v24 = v40[0];
    v25 = v40[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100009DCC(&qword_1006DFF98);
    sub_10008B284(&qword_1006DFFC0, &qword_1006DFFC8);
    sub_10056C278();
    v34 = v24;
    v35 = v25;

    v20 = v40[0];

    v26 = sub_10056DF68();
    v27 = sub_100573448();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_10008190C(v37, a2, v40);
      *(v28 + 12) = 2082;
      v39 = v20;

      sub_100009DCC(&qword_1006E3158);
      v29 = sub_100572978();
      v31 = sub_10008190C(v29, v30, v40);

      *(v28 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Loaded cached item named %{public}s, value %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v34, v35);

    v38(v15, v9);
  }

  return v20;
}

void sub_100072588(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = sub_100570B88();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100570BC8();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006DFD70);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_10056C8A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_10000CC8C(v3, v14, qword_1006E1D50);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_10001036C(v14, qword_1006E1D50);
    v25 = v70;

    v26 = sub_10056DF68();
    v27 = sub_100573448();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_10000CC8C(v61, v57, &qword_1006DFD70);
    v34 = v60;
    sub_100081FB4(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_100019B40(v33, v40 + v36, &qword_1006DFD70);
    sub_10008237C(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_10008AA08;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681BA0;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    sub_100570BA8();
    v71 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058);
    v47 = v64;
    v48 = v67;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

void sub_100072D98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = sub_100570B88();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100570BC8();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006DFCE0);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_10056C8A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_10000CC8C(v3, v14, qword_1006E1D50);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_10001036C(v14, qword_1006E1D50);
    v25 = v70;

    v26 = sub_10056DF68();
    v27 = sub_100573448();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_10000CC8C(v61, v57, &qword_1006DFCE0);
    v34 = v60;
    sub_100081FB4(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_100019B40(v33, v40 + v36, &qword_1006DFCE0);
    sub_10008237C(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_10008A510;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681B28;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    sub_100570BA8();
    v71 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058);
    v47 = v64;
    v48 = v67;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

void sub_1000735A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = sub_100570B88();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100570BC8();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E0790);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_10056C8A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_10000CC8C(v3, v14, qword_1006E1D50);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_10001036C(v14, qword_1006E1D50);
    v25 = v70;

    v26 = sub_10056DF68();
    v27 = sub_100573448();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_10000CC8C(v61, v57, &qword_1006E0790);
    v34 = v60;
    sub_100081FB4(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_100019B40(v33, v40 + v36, &qword_1006E0790);
    sub_10008237C(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_1000823E4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681998;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    sub_100570BA8();
    v71 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058);
    v47 = v64;
    v48 = v67;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

void sub_100073DB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = sub_100570B88();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100570BC8();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E0AE0);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_100009DCC(qword_1006E1D50);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_10056C8A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_10000CC8C(v3, v14, qword_1006E1D50);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_10001036C(v14, qword_1006E1D50);
    v25 = v70;

    v26 = sub_10056DF68();
    v27 = sub_100573448();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10008190C(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_10000CC8C(v61, v57, &qword_1006E0AE0);
    v34 = v60;
    sub_100081FB4(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_100019B40(v33, v40 + v36, &qword_1006E0AE0);
    sub_10008237C(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_100089DB0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681A88;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    sub_100570BA8();
    v71 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058);
    v47 = v64;
    v48 = v67;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

uint64_t sub_1000745E4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_100009DCC(a2);
    sub_100010BC0(a4, a2);
    sub_1005731B8();
    sub_100573208();
    sub_1005731D8();
    if (v10)
    {
      sub_100573208();
    }

    else
    {
      v8 = v9;
    }

    result = sub_1005731B8();
    if (v8 >= v9)
    {
      sub_1005732D8();
      (*(*(v7 - 8) + 8))(v4, v7);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100074754(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WidgetMusicItem();
    return a2;
  }

  return result;
}

uint64_t sub_1000747E8()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074968, v4, v3);
}

uint64_t sub_100074968()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571C48();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Track);
}

uint64_t sub_100074A30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10008B9E4;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10008B9E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100074B74()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074CF4, v4, v3);
}

uint64_t sub_100074CF4()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571F08();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Station);
}

uint64_t sub_100074DBC()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074F3C, v4, v3);
}

uint64_t sub_100074F3C()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_1005722D8();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Playlist);
}

uint64_t sub_100075004()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100075184, v4, v3);
}

uint64_t sub_100075184()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571B78();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Album);
}

uint64_t sub_10007524C()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1000753CC, v4, v3);
}

uint64_t sub_1000753CC()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100570CC8();
  *v1 = v0;
  v1[1] = sub_100075494;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for RecentlyPlayedMusicItem);
}

uint64_t sub_100075494()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100075970;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1000755D8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000755D8()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000CC8C(v1, v3, &qword_1006E3100);
  sub_10000CC8C(v2, v3 + v8, &qword_1006E3100);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_10001036C(v0[9], &qword_1006E3100);
    sub_10001036C(v10, &qword_1006E3100);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[7], &qword_1006E3100);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_10000CC8C(v0[7], v0[8], &qword_1006E3100);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_10001036C(v0[9], &qword_1006E3100);
    sub_10001036C(v15, &qword_1006E3100);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_10001036C(v0[7], &qword_1006E30F8);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100082424(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = sub_1005727E8();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_10001036C(v16, &qword_1006E3100);
  sub_10001036C(v15, &qword_1006E3100);
  v23(v17, v22);
  sub_10001036C(v26, &qword_1006E3100);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}