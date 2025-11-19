uint64_t sub_69DC4()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0920);
  v1 = sub_48A4(v0, qword_E0920);
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_69E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = sub_6A420(a1, a2, a3);
  v4 = sub_591C(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_AA54();
  v11 = v10 - v9;
  v37 = sub_A2D04();
  v12 = sub_591C(v37);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_AA54();
  v17 = v16 - v15;
  v36 = sub_A2EA4();
  v18 = sub_591C(v36);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_AA54();
  v23 = sub_6A40C();
  sub_4F714(v23, v24);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v25 = sub_A2FE4();
  sub_591C(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_A6E70;
  (*(v27 + 104))(v31 + v30, enum case for Calendar.Component.hour(_:), v25);
  sub_608AC(v31);
  sub_6A3E8();

  (*(v6 + 8))(v11, v38);
  sub_A2C84();
  v32 = sub_6A3D0();
  v33(v32);
  (*(v20 + 8))(v3, v36);
  if ((v6 + 8))
  {
    v34 = v39;
  }

  else
  {
    v34 = v17;
  }

  if (v34 >= v39)
  {
    return v39;
  }

  else
  {
    return v34;
  }
}

uint64_t sub_6A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = sub_6A420(a1, a2, a3);
  v4 = sub_591C(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_AA54();
  v11 = v10 - v9;
  v37 = sub_A2D04();
  v12 = sub_591C(v37);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_AA54();
  v17 = v16 - v15;
  v36 = sub_A2EA4();
  v18 = sub_591C(v36);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_AA54();
  v23 = sub_6A40C();
  sub_4FE7C(v23, v24);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v25 = sub_A2FE4();
  sub_591C(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_A6E70;
  (*(v27 + 104))(v31 + v30, enum case for Calendar.Component.hour(_:), v25);
  sub_608AC(v31);
  sub_6A3E8();

  (*(v6 + 8))(v11, v38);
  sub_A2C84();
  v32 = sub_6A3D0();
  v33(v32);
  (*(v20 + 8))(v3, v36);
  if (v30)
  {
    v34 = 0;
  }

  else
  {
    v34 = v17;
  }

  if (v34 >= v39)
  {
    return v39;
  }

  else
  {
    return v34;
  }
}

uint64_t sub_6A3D0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_6A3E8()
{
  v2 = *(v0 - 104);

  return sub_A2F64();
}

uint64_t sub_6A420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a3;
  *(v3 - 104) = a1;

  return sub_A3004();
}

uint64_t sub_6A440(uint64_t a1, uint64_t a2)
{
  v5 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_A3784();
  sub_AA64();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_AA54();
  v17 = v16 - v15;
  (*(v11 + 16))(v16 - v15, a1, v9);
  sub_6B368(a2, v8);
  sub_A760(v2 + 16, v52);
  sub_A3454();
  sub_A7C4(v52, v52[3]);
  sub_AA64();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_AA54();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  v26 = type metadata accessor for DailyBriefingOutputPublisher();
  v50[3] = v26;
  v50[4] = &off_D2D00;
  v50[0] = v25;
  v27 = type metadata accessor for AddViewsPublisherFlow();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  sub_A7C4(v50, v26);
  sub_AA64();
  v32 = *(v31 + 64);
  __chkstk_darwin(v33);
  sub_AA54();
  v36 = (v35 - v34);
  (*(v37 + 16))(v35 - v34);
  v38 = *v36;
  v48 = v26;
  v49 = &off_D2D00;
  *&v47 = v38;
  v39 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v40 = sub_A43D4();
  v41 = sub_48A4(v40, qword_E0BA0);
  (*(*(v40 - 8) + 16))(v30 + v39, v41, v40);
  v42 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dialogService;
  v43 = sub_A3584();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v30 + v42) = sub_A3574();
  sub_A814(&v47, v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher);
  (*(v11 + 32))(v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_templatingResult, v17, v9);
  sub_6B430(v8, v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext);
  sub_A814(&v51, v30 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_aceService);
  sub_761C(v50);
  sub_761C(v52);
  return v30;
}

uint64_t sub_6A7EC()
{
  sub_761C((v0 + 16));
  sub_761C((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_6A850()
{
  type metadata accessor for AddViewsPublisherFlow();
  sub_6B3D8();
  return sub_A3334();
}

uint64_t sub_6A8B0()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_A3944();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_6A9A4, 0, 0);
}

uint64_t sub_6A9A4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_810AC(0xD00000000000001ALL, 0x80000000000B2960, 0xD000000000000033, 0x80000000000B2980, 0x2865747563657865, 0xE900000000000029);
  v4 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dialogService);
  v5 = sub_A3564();
  v0[8] = v5;
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_A6E80;
  *(v6 + 32) = v5;
  sub_6B368(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext, v2);
  v7 = v5;
  sub_A3934();
  v8 = *sub_7584((v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher), *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher + 24));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_6AB64;
  v10 = v0[7];

  return sub_88BB4(v10);
}

uint64_t sub_6AB64()
{
  sub_5950();
  v1 = *(*v0 + 72);
  v2 = *v0;
  sub_5930();
  *v3 = v2;

  return _swift_task_switch(sub_6AC54, 0, 0);
}

uint64_t sub_6AC54()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_A3664();

  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_6ACFC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  (*(v3 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher));
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_templatingResult;
  v5 = sub_A3784();
  sub_5908(v5);
  (*(v6 + 8))(v0 + v4);
  sub_A8B4(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext);
  v7 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dialogService);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_aceService));
  return v0;
}

uint64_t sub_6ADC4()
{
  sub_6ACFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AddViewsPublisherFlow()
{
  result = qword_DEDB8;
  if (!qword_DEDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6AE70()
{
  v0 = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_A3784();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_6AF8C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_6AF8C()
{
  if (!qword_DEDC8)
  {
    sub_A3744();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DEDC8);
    }
  }
}

uint64_t sub_6AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_6B094;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_6B094()
{
  sub_5950();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_6B1A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6B244;

  return sub_6A8B0();
}

uint64_t sub_6B244()
{
  sub_5950();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_5930();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_6B32C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddViewsPublisherFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_6B368(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6B3D8()
{
  result = qword_DEEA0;
  if (!qword_DEEA0)
  {
    type metadata accessor for AddViewsPublisherFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEA0);
  }

  return result;
}

uint64_t sub_6B430(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_AA8C();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_6B4CC()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_A4B54(41);

  v3 = v2[3];
  v0[18] = v3;
  v4 = v2[4];
  v0[19] = v4;
  v0[20] = sub_7584(v2, v3);
  v5 = *(v4 + 16);
  v0[21] = v5;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xEFBB000000000000;
  v6 = sub_25648();
  v23._countAndFlagsBits = v5(v6);
  sub_A46D4(v23);

  v24._countAndFlagsBits = 0xD00000000000001ALL;
  v24._object = 0x80000000000B2C20;
  sub_A46D4(v24);
  sub_6DDDC();
  sub_810AC(v7, 0xED0000203A544143, v8, v9, 0xD000000000000018, v10);

  v11 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catExecutor);
  v12 = sub_25648();
  v13 = v5(v12);
  v15 = v14;
  v0[23] = v14;
  v16 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v21 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_6B6EC;
  v18 = v0[16];
  v19 = v0[14];

  return v21(v19, v13, v15, v18);
}

uint64_t sub_6B6EC()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = *(v2 + 192);
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_6B814, 0, 0);
  }

  else
  {
    v7 = *(v3 + 184);

    sub_AA9C();

    return v8();
  }
}

void sub_6B814()
{
  v1 = v0;
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v27 = v0[22];
  v7 = v0[17];

  v28 = sub_7584((v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender), *(v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender + 24));
  sub_A4B54(79);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD00000000000002CLL;
  v30._object = 0x80000000000B2C60;
  sub_A46D4(v30);
  v31._countAndFlagsBits = v4(v6, v5);
  sub_A46D4(v31);

  v32._countAndFlagsBits = 0xD00000000000001FLL;
  v32._object = 0x80000000000B2C90;
  sub_A46D4(v32);
  v0[11] = v2;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v8 = v0[5];
  v9 = v0[6];
  v10 = *v28;

  sub_931E8(4, 3, v8, v9);
  sub_4D424();

  sub_A4B54(48);

  v33._countAndFlagsBits = v4(v6, v5);
  sub_A46D4(v33);

  v34._countAndFlagsBits = 8238;
  v34._object = 0xE200000000000000;
  sub_A46D4(v34);
  sub_A4B54(31);
  v1[7] = 0;
  v1[8] = 0xE000000000000000;
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x80000000000B2D20;
  sub_A46D4(v35);
  v1[12] = v2;
  sub_A4C44();
  v11 = v1[7];
  v12 = v1[8];

  v36._countAndFlagsBits = v11;
  v36._object = v12;
  sub_A46D4(v36);

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v26 = v1[25];
  v14 = v1[21];
  v13 = v1[22];
  v15 = v1[19];
  v16 = v1[20];
  v17 = v1[18];
  v18 = sub_A43D4();
  sub_48A4(v18, qword_E0BA0);
  sub_6DDDC();
  sub_81094(0xD00000000000002CLL, 0x80000000000B2C60, v19, v20, v21, v22);

  swift_beginAccess();
  v25 = static FatalError.fatalErrorClosure;

  sub_A4B54(48);

  v37._countAndFlagsBits = v14(v17, v15);
  sub_A46D4(v37);

  v38._countAndFlagsBits = 8238;
  v38._object = 0xE200000000000000;
  sub_A46D4(v38);
  sub_A4B54(31);
  v1[9] = 0;
  v1[10] = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD00000000000001DLL;
  v39._object = 0x80000000000B2D20;
  sub_A46D4(v39);
  v1[13] = v26;
  sub_A4C44();
  v23 = v1[9];
  v24 = v1[10];

  v40._countAndFlagsBits = v23;
  v40._object = v24;
  sub_A46D4(v40);

  v25();
}

uint64_t sub_6BCA8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64);
  sub_11FC0();
  __chkstk_darwin(v4);
  sub_4C704(a2, &v7 - v5, &qword_DB5A8, &unk_A67C0);
  return sub_A3854();
}

uint64_t sub_6BD4C()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_A3784();
  v1[7] = v3;
  sub_5940(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_5940(v7);
  v1[10] = v8;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6BE60()
{
  sub_5950();
  if (qword_DA918 != -1)
  {
    sub_6DDAC();
  }

  v1 = v0[5];
  v0[13] = qword_E0940;
  v0[14] = *(v1 + 16);

  v2 = sub_6DDCC();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6BEF8()
{
  sub_5950();
  v1 = *(v0 + 104);
  sub_6D01C(*(v0 + 112));

  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6BF5C()
{
  sub_5950();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_6C03C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_6C03C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6C13C()
{
  sub_5950();
  *(v0 + 136) = qword_E0940;

  v1 = sub_6DDCC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6C1A8()
{
  sub_5950();
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 112);

  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6C228()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = v0[8];
    v30 = *(v3 + 72);
    v5 = (v29 + 32);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[7];
      sub_4C704(v4, v7, &qword_DDCA0, &qword_A9AF0);
      sub_5AB94(v7, v8);
      if (sub_CF2C(v8, 1, v9) == 1)
      {
        sub_11E34(v0[11], &qword_DDCA0, &qword_A9AF0);
      }

      else
      {
        v10 = *v5;
        (*v5)(v0[9], v0[11], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v6 + 2);
          sub_55440();
          v6 = v15;
        }

        v11 = *(v6 + 2);
        if (v11 >= *(v6 + 3) >> 1)
        {
          sub_55440();
          v6 = v16;
        }

        v12 = v0[9];
        v13 = v0[7];
        *(v6 + 2) = v11 + 1;
        v10(&v6[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v11], v12, v13);
      }

      v4 += v30;
      --v2;
    }

    while (v2);
    v17 = v0[18];
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[9];
  v22 = v0[6];
  v21 = v0[7];
  v32._countAndFlagsBits = sub_A4774();
  sub_A46D4(v32);

  sub_6DDDC();
  sub_810AC(v23, 0xEA00000000002067, v24, v25, 0xD000000000000014, v26);

  v27 = v0[1];

  return v27(v6);
}

uint64_t sub_6C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  v5 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_6C580, 0, 0);
}

uint64_t sub_6C580()
{
  v1 = 0;
  v2 = *(v0 + 136);
  v27 = *(v2 + 16);
  v3 = v2 + 32;
  while (v27 != v1)
  {
    *(v0 + 16) = v1;
    sub_6DB48(v3, v0 + 24);
    if (!*(v0 + 48))
    {
      break;
    }

    v31 = v3;
    v32 = v1;
    v4 = *(v0 + 16);
    v30 = *(v0 + 24);
    v5 = *(v0 + 56);
    v29 = *(v0 + 64);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v28 = *(v0 + 40);
    v10 = sub_A4814();
    sub_A924(v6, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = (v11 + 16);
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = v4;
    *(v11 + 48) = v8;
    *(v11 + 72) = v28;
    *(v11 + 56) = v30;
    *(v11 + 88) = v5;
    *(v11 + 96) = v29;
    sub_4C704(v6, v7, &qword_DB5B8, &qword_AAD60);
    LODWORD(v7) = sub_CF2C(v7, 1, v10);

    v13 = *(v0 + 152);
    if (v7 == 1)
    {
      sub_11E34(*(v0 + 152), &qword_DB5B8, &qword_AAD60);
    }

    else
    {
      sub_A4804();
      (*(*(v10 - 8) + 8))(v13, v10);
    }

    if (*v12)
    {
      v14 = *(v11 + 24);
      v15 = *v12;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_A47C4();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = **(v0 + 128);
    v20 = swift_allocObject();
    *(v20 + 16) = &unk_AAA58;
    *(v20 + 24) = v11;

    if (v18 | v16)
    {
      v21 = v0 + 72;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = v16;
      *(v0 + 96) = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 160);
    *(v0 + 104) = 1;
    *(v0 + 112) = v21;
    *(v0 + 120) = v19;
    swift_task_create();

    sub_11E34(v22, &qword_DB5B8, &qword_AAD60);
    v3 = v31 + 48;
    v1 = v32 + 1;
  }

  v24 = *(v0 + 152);
  v23 = *(v0 + 160);

  sub_AA9C();

  return v25();
}

uint64_t sub_6C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_A3784();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_6C954, 0, 0);
}

uint64_t sub_6C954()
{
  v1 = v0[5];
  sub_A4B54(32);

  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[4];
    v0[2] = v1 + 1;
    sub_25648();
    v12._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v12);

    v13._countAndFlagsBits = 543584032;
    v13._object = 0xE400000000000000;
    sub_A46D4(v13);
    v0[3] = *(v4 + 16);
    sub_25648();
    v14._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v14);

    v15._object = 0x80000000000B2C00;
    v15._countAndFlagsBits = 0xD000000000000013;
    sub_A46D4(v15);
    sub_810AC(0x206B736154, 0xE500000000000000, 0xD000000000000033, 0x80000000000AFCC0, 0xD000000000000014, 0x80000000000B2BE0);

    v6 = *(v3 + 40);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_6CB40;
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[4];

    return sub_6B4A0(v8, v9, v6);
  }

  return result;
}

uint64_t sub_6CB40()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_6CC24()
{
  sub_5950();
  if (qword_DA918 != -1)
  {
    sub_6DDAC();
  }

  *(v0 + 96) = qword_E0940;

  v1 = sub_6DDCC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6CCB0()
{
  sub_5950();
  v1 = v0[12];
  sub_6D2EC(v0[10], v0[5]);

  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6CD1C()
{
  sub_5950();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_AA9C();

  return v1();
}

uint64_t sub_6CD90()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_logger;
  v2 = sub_A43D4();
  sub_7A14(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catExecutor);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_aceService));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_featureFlags));
  return v0;
}

uint64_t sub_6CE88()
{
  sub_6CD90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_6CF08()
{
  result = sub_A43D4();
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

uint64_t sub_6CFD4()
{
  type metadata accessor for ExecutedCATsState();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  qword_E0940 = v0;
  return result;
}

uint64_t sub_6D01C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8) + 64);
  sub_11FC0();
  __chkstk_darwin(v5);
  v7 = (&v18 - v6);
  if (qword_DAA10 != -1)
  {
    sub_6DD8C();
  }

  v8 = sub_A43D4();
  sub_48A4(v8, qword_E0C60);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_A4B54(51);
  v21._countAndFlagsBits = 0xD000000000000030;
  v21._object = 0x80000000000B2B80;
  sub_A46D4(v21);
  v20 = a1;
  v22._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  sub_A46D4(v23);
  v9 = v19;
  sub_6DDDC();
  sub_810C4(v10, v9, v11, v12, 0xD00000000000001FLL, v13);

  v14 = sub_A3784();
  sub_A924(v7, 1, 1, v14);
  v15 = sub_6D1E4(v7, a1);
  swift_beginAccess();
  v16 = *(v2 + 112);
  *(v2 + 112) = v15;
}

void *sub_6D1E4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_4BF0(&qword_DDCA0, &qword_A9AF0);
      v4 = sub_A4794();
      v4[2] = v2;
      v5 = *(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_4C704(v3, i, &qword_DDCA0, &qword_A9AF0);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_11E34(v3, &qword_DDCA0, &qword_A9AF0);
    return v4;
  }

  return result;
}

void sub_6D2EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_5940(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_11FC0();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  swift_beginAccess();
  v14 = *(v3 + 112);
  if (*(v14 + 16) > a2)
  {
    v15 = sub_A3784();
    sub_7A14(v15);
    (*(v16 + 16))(v13, a1, v15);
    sub_A924(v13, 0, 1, v15);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 112) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_6DA18(v14);
      v14 = v25;
      *(v3 + 112) = v25;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v14 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          sub_6DA2C(v13, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2);
          *(v3 + 112) = v14;
          swift_endAccess();
          if (qword_DAA10 == -1)
          {
LABEL_6:
            v18 = sub_A43D4();
            sub_48A4(v18, qword_E0C60);
            v28[0] = 0;
            v28[1] = 0xE000000000000000;
            sub_A4B54(21);

            strcpy(v28, "Added result ");
            HIWORD(v28[1]) = -4864;
            v27 = a2 + 1;
            v29._countAndFlagsBits = sub_A4E24();
            sub_A46D4(v29);

            v30._countAndFlagsBits = 543584032;
            v30._object = 0xE400000000000000;
            sub_A46D4(v30);
            v27 = *(*(v3 + 112) + 16);
            v31._countAndFlagsBits = sub_A4E24();
            sub_A46D4(v31);

            v19 = v28[1];
            sub_6DDDC();
            sub_810C4(v20, v19, v21, v22, 0xD00000000000001BLL, v23);

            return;
          }
        }

        sub_6DD8C();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_DAA10 != -1)
  {
LABEL_11:
    sub_6DD8C();
  }

  v24 = sub_A43D4();
  sub_48A4(v24, qword_E0C60);
  sub_82B54(0xD00000000000002DLL, 0x80000000000B2B30, 0xD000000000000033, 0x80000000000AFCC0, 0xD00000000000001BLL, 0x80000000000B2B60);
}

uint64_t sub_6D650()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_6D70C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_6D760(a1, a2);
}

uint64_t sub_6D760(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_4BF0(&qword_DC748, &qword_A8330) - 8) + 64);
  sub_11FC0();
  __chkstk_darwin(v10);
  sub_4C704(a1, &v14 - v11, &qword_DC748, &qword_A8330);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_A4274();
  (*(v5 + 8))(a2, v4);
  sub_11E34(a1, &qword_DC748, &qword_A8330);
  return v12;
}

uint64_t sub_6D914(uint64_t a1, int *a2)
{
  v8 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  v5 = sub_18584(v4);
  *v5 = v6;
  v5[1] = sub_3D378;

  return v8(a1);
}

uint64_t sub_6DA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DA9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  v8 = sub_18584(v7);
  *v8 = v9;
  v8[1] = sub_A648;

  return sub_6C4D4(a1, a2, v6, v5);
}

uint64_t sub_6DB80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_761C(v0 + 7);
  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_6DBD8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_18584(v8);
  *v9 = v10;
  v9[1] = sub_18540;

  return sub_6C890(a1, v3, v4, v5, v6, v7, (v1 + 7));
}

uint64_t sub_6DCA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_6DCDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_6DCF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6DD30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_6DD8C()
{

  return swift_once();
}

uint64_t sub_6DDAC()
{

  return swift_once();
}

uint64_t sub_6DDE8(unint64_t a1)
{

  result = sub_1DDB8(3, a1);
  v4 = v3;
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  v9 = v8 >> 1;
  while (1)
  {
    if (v9 == v6)
    {
      swift_unknownObjectRelease();
      return v7;
    }

    if (v6 >= v9)
    {
      break;
    }

    v10 = *(v4 + 8 * v6);
    type metadata accessor for DBReminder();
    v11 = v10;
    sub_8CE00(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
    sub_A4744();
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_A4784();
    }

    result = sub_A47A4();
    v7 = v20;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_6DEE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_58F8();
}

uint64_t sub_6DEFC()
{
  v1 = v0[2];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_AA280;
  sub_10944();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = v4;
  v5 = *v1;
  v6 = sub_6DDE8(*v1);
  v7 = sub_4BF0(&qword_DF288, &qword_AAAF0);
  *(v2 + 48) = v6;
  sub_10944();
  *(v2 + 72) = v8;
  *(v2 + 80) = 0xD000000000000016;
  *(v2 + 88) = v9;
  *(v2 + 96) = sub_1BF68(v5);
  sub_10944();
  *(v2 + 120) = &type metadata for Double;
  *(v2 + 128) = 0xD000000000000010;
  *(v2 + 136) = v10;
  v11 = v1[1];
  *(v2 + 144) = sub_6DDE8(v11);
  sub_10944();
  *(v2 + 168) = v7;
  *(v2 + 176) = 0xD000000000000015;
  *(v2 + 184) = v12;
  *(v2 + 192) = sub_1BF68(v11);
  sub_10944();
  *(v2 + 216) = &type metadata for Double;
  *(v2 + 224) = 0xD000000000000013;
  *(v2 + 232) = v13;
  v14 = sub_1BF68(v5);
  result = sub_1BF68(v11);
  if (__OFADD__(v14, result))
  {
    __break(1u);
  }

  else
  {
    v16 = v0[4];
    *(v2 + 264) = &type metadata for Double;
    *(v2 + 240) = (v14 + result);
    v17 = *(v16 + 16);
    sub_2E790(&unk_AAAF8);
    v21 = v18;
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_6E104;
    v20 = v0[3];

    return v21(v2, v20, v17);
  }

  return result;
}

uint64_t sub_6E104()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_595C();

  return v7(v6);
}

uint64_t sub_6E228(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a2;
  *(v4 + 120) = a1;
  return sub_58F8();
}

uint64_t sub_6E244()
{
  sub_25654();
  sub_71CCC();
  *(v2 + 40) = &type metadata for Features;
  v3 = sub_35DA4();
  sub_71B88(v3);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v4 = sub_AB4C(v0);
    sub_71FA8(v4);
    sub_2E790(&unk_AAB78);
    v17 = v5;
    v6 = swift_task_alloc();
    v7 = sub_71FC0(v6);
    *v7 = v8;
    sub_72054(v7);
    v9 = sub_71D2C();
    v10 = v1;
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB70);
    v17 = v11;
    v12 = swift_task_alloc();
    v13 = sub_71FCC(v12);
    *v13 = v14;
    sub_72054(v13);
    v15 = *(v2 + 64);
    v9 = sub_71D2C();
  }

  return v17(v9, v10);
}

uint64_t sub_6E388()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  sub_7203C(v5);
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6E46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return sub_58F8();
}

uint64_t sub_6E484()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB48);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB40);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_6E5DC, 0, 0);
}

uint64_t sub_6E5DC()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB08);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB00);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return sub_58F8();
}

uint64_t sub_6E728()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB30);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB28);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E85C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_595C();

  return v7(v6);
}

uint64_t sub_6E95C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  sub_7203C(v5);
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6EA40()
{
  *(v0 + 56) = *(v0 + 112);
  type metadata accessor for AddViewsPublisherFlow();
  sub_6B3D8();
  sub_A3324();

  v1 = sub_595C();

  return v2(v1);
}

uint64_t sub_6EAD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a2;
  *(v4 + 120) = a1;
  return sub_58F8();
}

uint64_t sub_6EAEC()
{
  sub_25654();
  sub_71CCC();
  *(v2 + 40) = &type metadata for Features;
  v3 = sub_35DA4();
  sub_71B88(v3);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v4 = sub_AB4C(v0);
    sub_71FA8(v4);
    sub_2E790(&unk_AAB60);
    v17 = v5;
    v6 = swift_task_alloc();
    v7 = sub_71FC0(v6);
    *v7 = v8;
    sub_72054(v7);
    v9 = sub_71D2C();
    v10 = v1;
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB58);
    v17 = v11;
    v12 = swift_task_alloc();
    v13 = sub_71FCC(v12);
    *v13 = v14;
    sub_72054(v13);
    v15 = *(v2 + 64);
    v9 = sub_71D2C();
  }

  return v17(v9, v10);
}

uint64_t sub_6EC30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  *(v4 + 248) = a2;
  *(v4 + 376) = a1;
  v6 = *(*(sub_A3544() - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v7 = sub_A3864();
  *(v4 + 280) = v7;
  v8 = *(v7 - 8);
  *(v4 + 288) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v10 = sub_A4354();
  *(v4 + 304) = v10;
  v11 = *(v10 - 8);
  *(v4 + 312) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 40) = &type metadata for CalendarDialogs;
  *(v4 + 48) = &off_D04E0;
  *(v4 + 16) = a1;

  return _swift_task_switch(sub_6ED9C, 0, 0);
}

uint64_t sub_6ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  *(v17 + 80) = &type metadata for Features;
  v19 = sub_35DA4();
  sub_720A0(v19);
  sub_71F24();
  if (v16)
  {
    sub_71C34();
    sub_71F9C();
  }

  else
  {
    v20 = *(v17 + 264);
    sub_71FF0();
    sub_71FE4();
    sub_71FD8();
    sub_71D78();
    sub_82B54(v21, v22, v23, v24, v25, v26);
  }

  v52 = *(v17 + 320);
  v27 = *(v17 + 264);
  v28 = *(v17 + 376);
  sub_71C7C();

  sub_71A94();
  v29 = sub_7584((v17 + 16), &type metadata for CalendarDialogs);
  *(v17 + 328) = v29;
  v53._countAndFlagsBits = sub_5D9C(v28);
  sub_A46D4(v53);

  v30._countAndFlagsBits = 0xD000000000000018;
  sub_2E844(v30, "nlContextUpdate:)");
  v31 = *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catGlobals);
  sub_A4244();
  sub_A4534();
  sub_71FFC();
  v54._countAndFlagsBits = 0xD000000000000031;
  v54._object = v18;
  sub_A46D4(v54);

  sub_71D78();
  sub_810AC(v32, v33, v34, v35, v36, v37);

  sub_A42B4();
  sub_71C54();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v17 + 336) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v39 = sub_5D9C(*v29);
  sub_71DC0(v39, v40);
  v41 = async function pointer to static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)[1];
  v42 = swift_task_alloc();
  *(v17 + 352) = v42;
  *v42 = v17;
  sub_71D3C(v42);
  sub_25660();

  return static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v52, 0, a13, a14, a15, a16);
}

uint64_t sub_6F008()
{
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[44];
  v6 = v3[43];
  v7 = v3[42];
  *v4 = *v2;
  v3[45] = v1;

  sub_71F84();
  v9 = *(v8 + 320);
  v10 = v3[39];
  v11 = v3[38];
  if (!v1)
  {
    v3[46] = v0;
  }

  (*(v10 + 8))(v9, v11);
  sub_715C8((v3 + 12));
  sub_71C24();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_6F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_71EA4();
  sub_59C4();
  sub_71F5C();
  v15 = swift_task_alloc();
  sub_71FB4(v15);
  sub_71C9C();

  sub_A760(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider, (v12 + 17));
  v16 = v12[20];
  v17 = v12[21];
  sub_71B4C(v12 + 17);

  v18 = sub_71C44();
  v19(v18);
  sub_761C(v12 + 17);
  sub_761C(v12 + 2);

  sub_595C();
  sub_59E4();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_6F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  sub_71DF4();
  sub_71D04();
  *(v15 + 200) = v19;
  v16[26] = v20;
  v37._countAndFlagsBits = v17 + 15;
  v37._object = 0x80000000000B2F30;
  sub_A46D4(v37);
  v38._countAndFlagsBits = sub_5D9C(*v14);
  sub_A46D4(v38);

  v39._object = 0x80000000000B2C90;
  sub_71EDC(v39);
  v16[29] = v18;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88();
  v21 = *(v15 + 200);
  v22 = v16[26];
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v23 = v16[45];
  v24 = v16[41];
  v25 = sub_A43D4();
  sub_48A4(v25, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4();
  sub_72080();
  sub_71EF4();
  sub_71D04();
  sub_72060(v26);
  v40._countAndFlagsBits = sub_5D9C(*v24);
  sub_A46D4(v40);

  v41._object = 0x80000000000B2C90;
  sub_71EDC(v41);
  v16[30] = v23;
  sub_71F0C();
  v27 = v16[28];
  sub_71B04();
  sub_1A6AC();

  return v34(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_6F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = *(*(sub_A3544() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = sub_A3864();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_A4354();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_6F5A4, 0, 0);
}

uint64_t sub_6F7C8()
{
  sub_25654();
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[37];
  v6 = v3[36];
  *v4 = *v2;
  v3[38] = v1;

  sub_71F84();
  v8 = *(v7 + 280);
  v9 = v3[34];
  v10 = v3[33];
  if (!v1)
  {
    v3[39] = v0;
  }

  (*(v9 + 8))(v8, v10);
  sub_715C8((v3 + 7));
  sub_71C24();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_71EA4();
  sub_59C4();
  sub_71CDC();
  v15 = swift_task_alloc();
  sub_71FB4(v15);
  sub_71C9C();

  sub_A760(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider, (v12 + 12));
  v16 = v12[15];
  v17 = v12[16];
  sub_71B4C(v12 + 12);

  v18 = sub_71C44();
  v19(v18);
  sub_761C(v12 + 12);

  sub_595C();
  sub_59E4();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_6FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  v16 = v15[38];
  sub_71E24();
  sub_71D04();
  *(v14 + 160) = v17;
  v15[21] = v18;
  v34._countAndFlagsBits = 0xD00000000000002ELL;
  v34._object = 0x80000000000B2F30;
  sub_A46D4(v34);
  v35._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x80000000000AF260;
  sub_A46D4(v35);
  sub_71D10();
  v15[24] = v16;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88();
  v19 = *(v14 + 160);
  v20 = v15[21];
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v21 = v15[38];
  v22 = sub_A43D4();
  sub_48A4(v22, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4();
  sub_71E44();
  sub_71EF4();
  sub_71D04();
  sub_720C0(v23);
  v36._countAndFlagsBits = 0xD000000000000023;
  v36._object = 0x80000000000AF260;
  sub_A46D4(v36);
  sub_71D10();
  v15[25] = v21;
  sub_71F0C();
  v24 = v15[23];
  sub_71B04();
  sub_1A6AC();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_6FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = *(*(sub_A3544() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = sub_A3864();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_A4354();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_6FD28, 0, 0);
}

uint64_t sub_6FF4C()
{
  sub_25654();
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[37];
  v6 = v3[36];
  *v4 = *v2;
  v3[38] = v1;

  sub_71F84();
  v8 = *(v7 + 280);
  v9 = v3[34];
  v10 = v3[33];
  if (!v1)
  {
    v3[39] = v0;
  }

  (*(v9 + 8))(v8, v10);
  sub_715C8((v3 + 7));
  sub_71C24();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_700DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_71EA4();
  sub_59C4();
  sub_71CDC();
  v15 = swift_task_alloc();
  sub_71FB4(v15);
  sub_71C9C();

  sub_A760(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider, (v12 + 12));
  v16 = v12[15];
  v17 = v12[16];
  sub_71B4C(v12 + 12);

  v18 = sub_71C44();
  v19(v18);
  sub_761C(v12 + 12);

  sub_595C();
  sub_59E4();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_701BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  v16 = v15[38];
  sub_71E24();
  sub_71D04();
  *(v14 + 160) = v17;
  v15[21] = v18;
  v34._countAndFlagsBits = 0xD00000000000002ELL;
  v34._object = 0x80000000000B2F30;
  sub_A46D4(v34);
  v35._countAndFlagsBits = 0xD000000000000027;
  v35._object = 0x80000000000AEE60;
  sub_A46D4(v35);
  sub_71D10();
  v15[24] = v16;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88();
  v19 = *(v14 + 160);
  v20 = v15[21];
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v21 = v15[38];
  v22 = sub_A43D4();
  sub_48A4(v22, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4();
  sub_71E44();
  sub_71EF4();
  sub_71D04();
  sub_720C0(v23);
  v36._countAndFlagsBits = 0xD000000000000027;
  v36._object = 0x80000000000AEE60;
  sub_A46D4(v36);
  sub_71D10();
  v15[25] = v21;
  sub_71F0C();
  v24 = v15[23];
  sub_71B04();
  sub_1A6AC();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_70360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = *(*(sub_A3544() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = sub_A3864();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_A4354();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_704AC, 0, 0);
}

uint64_t sub_706C8()
{
  sub_25654();
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[37];
  v6 = v3[36];
  *v4 = *v2;
  v3[38] = v1;

  sub_71F84();
  v8 = *(v7 + 280);
  v9 = v3[34];
  v10 = v3[33];
  if (!v1)
  {
    v3[39] = v0;
  }

  (*(v9 + 8))(v8, v10);
  sub_715C8((v3 + 7));
  sub_71C24();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  v16 = v15[38];
  sub_71E24();
  sub_71D04();
  *(v14 + 160) = v17;
  v15[21] = v18;
  v35._countAndFlagsBits = 0xD00000000000002ELL;
  v35._object = 0x80000000000B2F30;
  sub_A46D4(v35);
  v36._object = 0x80000000000B2F60;
  sub_71EDC(v36);
  sub_71D10();
  v15[24] = v16;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88();
  v19 = *(v14 + 160);
  v20 = v15[21];
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v21 = v15[38];
  v22 = sub_A43D4();
  sub_48A4(v22, qword_E0BA0);
  sub_81094(v19, v20, 0xD000000000000021, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70);

  sub_71DA4();
  sub_71E44();
  sub_71EF4();
  sub_71D04();
  off_DF718 = v23;
  v15[23] = v24;
  v37._countAndFlagsBits = 0xD00000000000002ELL;
  v37._object = 0x80000000000B2F30;
  sub_A46D4(v37);
  v38._object = 0x80000000000B2F60;
  sub_71EDC(v38);
  sub_71D10();
  v15[25] = v21;
  sub_71F0C();
  v25 = v15[23];
  sub_71B04();
  sub_1A6AC();

  return v32(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_70A24(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  *(v4 + 248) = a2;
  *(v4 + 376) = a1;
  v6 = *(*(sub_A3544() - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v7 = sub_A3864();
  *(v4 + 280) = v7;
  v8 = *(v7 - 8);
  *(v4 + 288) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v10 = sub_A4354();
  *(v4 + 304) = v10;
  v11 = *(v10 - 8);
  *(v4 + 312) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 40) = &type metadata for CommonDialogs;
  *(v4 + 48) = &off_D30C8;
  *(v4 + 16) = a1;

  return _swift_task_switch(sub_70B90, 0, 0);
}

uint64_t sub_70B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  *(v17 + 80) = &type metadata for Features;
  v19 = sub_35DA4();
  sub_720A0(v19);
  sub_71F24();
  if (v16)
  {
    sub_71C34();
    sub_71F9C();
  }

  else
  {
    v20 = *(v17 + 264);
    sub_71FF0();
    sub_71FE4();
    sub_71FD8();
    sub_71D78();
    sub_82B54(v21, v22, v23, v24, v25, v26);
  }

  v52 = *(v17 + 320);
  v27 = *(v17 + 264);
  v28 = *(v17 + 376);
  sub_71C7C();

  sub_71A94();
  v29 = sub_7584((v17 + 16), &type metadata for CommonDialogs);
  *(v17 + 328) = v29;
  v53._countAndFlagsBits = sub_955B4(v28);
  sub_A46D4(v53);

  v30._countAndFlagsBits = 0xD000000000000018;
  sub_2E844(v30, "nlContextUpdate:)");
  v31 = *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catGlobals);
  sub_A4244();
  sub_A4534();
  sub_71FFC();
  v54._countAndFlagsBits = 0xD000000000000031;
  v54._object = v18;
  sub_A46D4(v54);

  sub_71D78();
  sub_810AC(v32, v33, v34, v35, v36, v37);

  sub_A42B4();
  sub_71C54();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v17 + 336) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v39 = sub_955B4(*v29);
  sub_71DC0(v39, v40);
  v41 = async function pointer to static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)[1];
  v42 = swift_task_alloc();
  *(v17 + 352) = v42;
  *v42 = v17;
  sub_71D3C(v42);
  sub_25660();

  return static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v52, 0, a13, a14, a15, a16);
}

uint64_t sub_70DFC()
{
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[44];
  v6 = v3[43];
  v7 = v3[42];
  *v4 = *v2;
  v3[45] = v1;

  sub_71F84();
  v9 = *(v8 + 320);
  v10 = v3[39];
  v11 = v3[38];
  if (!v1)
  {
    v3[46] = v0;
  }

  (*(v10 + 8))(v9, v11);
  sub_715C8((v3 + 12));
  sub_71C24();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_70FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  sub_71DF4();
  sub_71D04();
  *(v15 + 200) = v19;
  v16[26] = v20;
  v37._countAndFlagsBits = v17 + 15;
  v37._object = 0x80000000000B2F30;
  sub_A46D4(v37);
  v38._countAndFlagsBits = sub_955B4(*v14);
  sub_A46D4(v38);

  v39._object = 0x80000000000B2C90;
  sub_71EDC(v39);
  v16[29] = v18;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88();
  v21 = *(v15 + 200);
  v22 = v16[26];
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v23 = v16[45];
  v24 = v16[41];
  v25 = sub_A43D4();
  sub_48A4(v25, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4();
  sub_72080();
  sub_71EF4();
  sub_71D04();
  sub_72060(v26);
  v40._countAndFlagsBits = sub_955B4(*v24);
  sub_A46D4(v40);

  v41._object = 0x80000000000B2C90;
  sub_71EDC(v41);
  v16[30] = v23;
  sub_71F0C();
  v27 = v16[28];
  sub_71B04();
  sub_1A6AC();

  return v34(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_71164(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  v7 = sub_A3784();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  *(v4 + 88) = v10;
  *(v4 + 40) = &type metadata for CalendarDialogs;
  *(v4 + 48) = &off_D04E0;
  *(v4 + 16) = a1;
  v11 = swift_task_alloc();
  *(v4 + 96) = v11;
  *v11 = v4;
  v11[1] = sub_7129C;

  return sub_6B4A0(v10, v4 + 16, a2);
}

uint64_t sub_7129C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_71380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v5 = sub_A3784();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[11] = v8;
  v3[5] = &type metadata for WeatherDialogs;
  v3[6] = &off_D11A8;
  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_7129C;

  return sub_6B4A0(v8, (v3 + 2), a1);
}

uint64_t sub_714A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v5 = sub_A3784();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[11] = v8;
  v3[5] = &type metadata for RemindersDialogs;
  v3[6] = &off_D1078;
  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_7129C;

  return sub_6B4A0(v8, (v3 + 2), a1);
}

uint64_t sub_715C8(uint64_t a1)
{
  v2 = sub_4BF0(&unk_DF290, &unk_AAB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v5 = sub_A3784();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[11] = v8;
  v3[5] = &type metadata for MapsDialogs;
  v3[6] = &off_D2DA8;
  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_7175C;

  return sub_6B4A0(v8, (v3 + 2), a1);
}

uint64_t sub_7175C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_71840()
{
  sub_25654();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = *sub_7584((v0[8] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider), *(v0[8] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider + 24));
  sub_6A440(v1, v4);
  (*(v2 + 8))(v1, v3);
  sub_761C(v0 + 2);

  v6 = sub_595C();

  return v7(v6);
}

uint64_t sub_71900(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  v7 = sub_A3784();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  *(v4 + 88) = v10;
  *(v4 + 40) = &type metadata for CommonDialogs;
  *(v4 + 48) = &off_D30C8;
  *(v4 + 16) = a1;
  v11 = swift_task_alloc();
  *(v4 + 96) = v11;
  *v11 = v4;
  v11[1] = sub_7129C;

  return sub_6B4A0(v10, v4 + 16, a2);
}

void sub_71A48()
{
  v5 = *(v2 + 64);

  sub_810AC(0x6E65207369204652, 0xEE002E64656C6261, v3 + 11, v1 | 0x8000000000000000, 0xD000000000000028, v0 | 0x8000000000000000);
}

void sub_71ABC()
{

  sub_810AC(0x6964207369204652, 0xEF2E64656C626173, v2 + 11, v1 | 0x8000000000000000, 0xD000000000000028, v0 | 0x8000000000000000);
}

void sub_71B1C(uint64_t a1@<X8>)
{

  sub_81094(v2, v3, v4 + 2, a1 | 0x8000000000000000, v4 - 7, (v1 - 32) | 0x8000000000000000);
}

uint64_t sub_71B4C(void *a1)
{
  sub_7584(a1, v3);

  return dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)(v2, v1, v3, v4);
}

uint64_t sub_71B88(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 48) = a1;

  return sub_A3954();
}

uint64_t sub_71BA8(uint64_t a1)
{
  *(v1 + 288) = a1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 56) = 0u;

  return sub_A4344();
}

uint64_t sub_71BD8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 280);
  v5 = *(v2 + 208);
  return v3;
}

void sub_71BF4()
{
  v5 = *(v1 + 280);
  v3 = *(v1 + 224);
  v4 = *(v0 + 3752);

  sub_A4B54(41);
}

uint64_t sub_71C64(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[10];
  return v2[8];
}

void sub_71C7C()
{

  sub_A4B54(41);
}

uint64_t sub_71C9C()
{

  return OutputGenerationManifest.init(dialogPhase:_:)(v1, v0, v2);
}

uint64_t sub_71CDC()
{
  v2 = v0[39];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v9 = v0[27];
  v8 = v0[28];

  return static DialogPhase.completion.getter();
}

void sub_71D10()
{
  v2._countAndFlagsBits = 0xD00000000000001FLL;

  v2._object = (v0 | 0x8000000000000000);
  sub_A46D4(v2);
}

uint64_t sub_71D3C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 320);
  v5 = *(v3 + 248);
  return v2;
}

uint64_t sub_71D64(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  return v2;
}

uint64_t sub_71D88()
{

  return sub_A4C44();
}

uint64_t sub_71DA4()
{

  return swift_beginAccess();
}

uint64_t sub_71DC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a2;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0;
  *(v2 + 96) = 0u;

  return sub_A4344();
}

void sub_71DF4()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);

  sub_A4B54(81);
}

void sub_71E24()
{

  sub_A4B54(81);
}

uint64_t sub_71E44()
{
  v2 = v0[1];
  v4 = *v0;
}

void sub_71E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_810AC(a1, v11, a3, a10, a5, v10);
}

uint64_t sub_71E84()
{
}

void sub_71EDC(Swift::String a1)
{
  a1._countAndFlagsBits = 0xD00000000000001FLL;

  sub_A46D4(a1);
}

void sub_71EF4()
{

  sub_A4B54(81);
}

uint64_t sub_71F0C()
{

  return sub_A4C44();
}

uint64_t sub_71F24()
{

  return sub_761C(v0);
}

uint64_t sub_71F5C()
{
  v2 = v0[46];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];

  return static DialogPhase.completion.getter();
}

uint64_t sub_71FFC()
{
}

void sub_72020()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_A46D4(v3);
}

uint64_t sub_7203C(uint64_t a1)
{
  *(v1 + 112) = a1;
}

uint64_t sub_72054(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  return result;
}

void sub_72060(uint64_t a1@<X8>)
{
  *(v2 + 216) = a1;
  *(v3 + 224) = v1;

  v7._countAndFlagsBits = v4 + 15;
  v7._object = (v5 | 0x8000000000000000);
  sub_A46D4(v7);
}

uint64_t sub_72080()
{
  v2 = v0[1];
  v4 = *v0;
}

uint64_t sub_720A0(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 88) = a1;

  return sub_A3954();
}

void sub_720C0(uint64_t a1@<X8>)
{
  *(v2 + 176) = a1;
  *(v3 + 184) = v1;

  v7._countAndFlagsBits = v4 + 15;
  v7._object = (v5 | 0x8000000000000000);
  sub_A46D4(v7);
}

id sub_720E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[4];
  sub_7584(a1, a1[3]);
  if (sub_A34D4())
  {

    return sub_721A4(a2, a3, a4);
  }

  else
  {
    v9 = [objc_allocWithZone(SAUIButton) init];
    sub_7320C(a4, v9);
    sub_73284(a2, a3, v9);
    return v9;
  }
}

id sub_721A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SASTItemGroup) init];
  sub_29D54(0, &unk_DF2A0, SASTButtonItem_ptr);

  v7 = sub_4D24C(a1, a2, a3, 1);
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v8 = sub_7352C();
  *(v8 + 16) = xmmword_A6E80;
  *(v8 + 32) = v7;
  sub_7335C(v8, v6, &qword_DF310, &qword_AAB98, &selRef_setTemplateItems_);
  return v6;
}

uint64_t sub_7228C(uint64_t a1, void *a2)
{
  v2 = sub_A35B4();
  v3 = sub_591C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_AA54();
  v10 = v9 - v8;
  v11 = sub_A37A4();
  v12 = sub_591C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_AA54();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(SASettingOpenLocationServicesSettings) init];
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v21 = sub_7352C();
  *(v21 + 16) = xmmword_A6E80;
  result = sub_A3774();
  if (*(result + 16))
  {
    (*(v14 + 16))(v19, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v11);

    sub_A3794();
    (*(v14 + 8))(v19, v11);
    v23 = sub_A35A4();
    v25 = v24;
    (*(v5 + 8))(v10, v2);
    v26 = sub_7352C();
    *(v26 + 16) = xmmword_A6E80;
    *(v26 + 32) = v20;
    v27 = v20;
    v28 = sub_720E0(a2, v23, v25, v26);

    *(v21 + 32) = v28;

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_724D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = [objc_allocWithZone(SASTItemGroup) init];
  sub_29D54(0, &unk_DF2A0, SASTButtonItem_ptr);
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v12 = sub_7352C();
  *(v12 + 16) = xmmword_A6E80;

  sub_D6E0(a5);
  v13 = sub_A3594();

  *(v12 + 32) = v13;
  v14 = sub_4D24C(a1, a2, v12, 1);
  v15 = sub_7352C();
  *(v15 + 16) = xmmword_A6E80;

  sub_D6E0(a6);
  v16 = sub_A3594();

  *(v15 + 32) = v16;
  v17 = sub_4D24C(a3, a4, v15, 1);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AAB80;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  v19 = v14;
  v20 = v17;
  sub_7335C(v18, v11, &qword_DF310, &qword_AAB98, &selRef_setTemplateItems_);
  v21 = sub_7352C();
  *(v21 + 16) = xmmword_A6E80;
  *(v21 + 32) = v11;

  return v21;
}

uint64_t sub_726A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(SAUIConfirmationView) init];
  v7 = sub_A45C4();
  [v6 setConfirmText:v7];

  v8 = sub_A45C4();
  [v6 setDenyText:v8];

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v9 = sub_7352C();
  *(v9 + 16) = xmmword_A6E80;
  v10 = objc_opt_self();
  sub_29D54(0, &qword_DF318, SKIDirectInvocationPayload_ptr);
  v11 = sub_73198();
  sub_4BF0(&unk_DF320, &qword_AABA0);
  inited = swift_initStackObject();
  sub_73544(inited, xmmword_A6E70);
  sub_A4B04();
  inited[6].n128_u64[0] = &type metadata for String;
  inited[4].n128_u64[1] = 0x6D7269666E6F43;
  inited[5].n128_u64[0] = 0xE700000000000000;
  v13 = sub_A4544();
  sub_732DC(v13, v11);
  v14 = a5[4];
  sub_7584(a5, a5[3]);
  v15 = sub_A3514();
  v16 = [v10 runSiriKitExecutorCommandWithContext:v15 payload:v11];

  v17 = [v10 wrapCommandInStartLocalRequest:v16];
  *(v9 + 32) = v17;
  sub_7335C(v9, v6, &unk_DD870, &qword_A9410, &selRef_setConfirmCommands_);
  v18 = sub_7352C();
  *(v18 + 16) = xmmword_A6E80;
  v19 = sub_73198();
  v20 = swift_initStackObject();
  sub_73544(v20, xmmword_A6E70);
  sub_A4B04();
  v20[6].n128_u64[0] = &type metadata for String;
  v20[4].n128_u64[1] = 0x656E696C636544;
  v20[5].n128_u64[0] = 0xE700000000000000;
  v21 = sub_A4544();
  sub_732DC(v21, v19);
  v22 = a5[4];
  sub_7584(a5, a5[3]);
  v23 = sub_A3514();
  v24 = [v10 runSiriKitExecutorCommandWithContext:v23 payload:v19];

  v25 = [v10 wrapCommandInStartLocalRequest:v24];
  *(v18 + 32) = v25;
  sub_7335C(v18, v6, &unk_DD870, &qword_A9410, &selRef_setDenyCommands_);
  v26 = [objc_allocWithZone(SAUIConfirmationOption) init];
  sub_5CDC(v6, &selRef_confirmText);
  if (v27)
  {
    v28 = sub_A45C4();
  }

  else
  {
    v28 = 0;
  }

  [v26 setLabel:{v28, 1, 2}];

  v29 = sub_A45F4();
  sub_733DC(v29, v30, v26);
  if (sub_73440(v6, &selRef_confirmCommands))
  {
    sub_4BF0(&unk_DD870, &qword_A9410);
    v31.super.isa = sub_A4754().super.isa;
  }

  else
  {
    v31.super.isa = 0;
  }

  [v26 setCommands:v31.super.isa];

  v32 = [objc_allocWithZone(SAUIConfirmationOption) init];
  sub_5CDC(v6, &selRef_denyText);
  if (v33)
  {
    v34 = sub_A45C4();
  }

  else
  {
    v34 = 0;
  }

  [v32 setLabel:v34];

  v35 = sub_A45F4();
  sub_733DC(v35, v36, v32);
  if (sub_73440(v6, &selRef_denyCommands))
  {
    sub_4BF0(&unk_DD870, &qword_A9410);
    v37.super.isa = sub_A4754().super.isa;
  }

  else
  {
    v37.super.isa = 0;
  }

  [v32 setCommands:v37.super.isa];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_AAB80;
  *(v38 + 32) = v26;
  *(v38 + 40) = v32;
  v39 = v26;
  v40 = v32;
  sub_734A8(v38, v6);
  v41 = sub_7352C();
  *(v41 + 16) = xmmword_A6E80;
  *(v41 + 32) = v6;

  return v41;
}

uint64_t sub_72CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a1;
  v4 = sub_A35B4();
  v5 = sub_591C(v4);
  v54 = v6;
  v55 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_AA54();
  v53 = v10 - v9;
  v50 = sub_A37A4();
  v11 = sub_591C(v50);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_AA54();
  v18 = v17 - v16;
  v19 = sub_4BF0(&qword_DC748, &qword_A8330);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - v21;
  v23 = sub_A2C44();
  v24 = sub_591C(v23);
  v51 = v25;
  v52 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_AA54();
  v30 = v29 - v28;
  v57 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_A2C34();
  sub_A2C24();
  sub_A2C14();
  sub_4BF0(&unk_DF340, qword_AABA8);
  v31 = *(sub_A2BE4() - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_A9830;
  sub_A2BD4();

  sub_A2BD4();

  sub_A2BF4();
  sub_A2C04();
  v34 = sub_A2DB4();
  v36 = 0;
  if (sub_CF2C(v22, 1, v34) != 1)
  {
    sub_A2D54(v35);
    v36 = v37;
    (*(*(v34 - 8) + 8))(v22, v34);
  }

  v38 = v57;
  [v57 setPunchOutUri:v36];

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v39 = sub_7352C();
  v49 = xmmword_A6E80;
  *(v39 + 16) = xmmword_A6E80;
  result = sub_A3774();
  if (*(result + 16))
  {
    v41 = v50;
    (*(v13 + 16))(v18, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v50);

    v42 = v53;
    sub_A3794();
    (*(v13 + 8))(v18, v41);
    v43 = sub_A35A4();
    v45 = v44;
    (*(v54 + 8))(v42, v55);
    v46 = sub_7352C();
    *(v46 + 16) = v49;
    *(v46 + 32) = v38;
    v47 = v38;
    v48 = sub_720E0(v56, v43, v45, v46);

    *(v39 + 32) = v48;

    (*(v51 + 8))(v30, v52);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_73198()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_A45C4();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

void sub_7320C(uint64_t a1, void *a2)
{
  sub_4BF0(&unk_DD870, &qword_A9410);
  isa = sub_A4754().super.isa;
  [a2 setCommands:isa];
}

void sub_73284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();
  [a3 setText:v4];
}

void sub_732DC(uint64_t a1, void *a2)
{
  isa = sub_A4504().super.isa;

  [a2 setUserData:isa];
}

void sub_7335C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_4BF0(a3, a4);
  isa = sub_A4754().super.isa;

  [a2 *a5];
}

void sub_733DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();

  [a3 setType:v4];
}

uint64_t sub_73440(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_4BF0(&unk_DD870, &qword_A9410);
  v4 = sub_A4764();

  return v4;
}

void sub_734A8(uint64_t a1, void *a2)
{
  sub_29D54(0, &unk_DF330, SAUIConfirmationOption_ptr);
  isa = sub_A4754().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

uint64_t sub_7352C()
{

  return swift_allocObject();
}

Swift::Int sub_73660()
{
  v0 = sub_797F4();
  sub_79694(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_73720()
{
  v0 = sub_797F4();
  sub_79694(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_737D8()
{
  sub_797F4();
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_73880(uint64_t a1, void (*a2)(uint64_t))
{
  sub_797F4();
  a2(a1);
  sub_797D0();

  return sub_A4F44();
}

Swift::Int sub_738E8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_797F4();
  a2(v5, a1);
  return sub_A4F44();
}

Swift::Int sub_73930(Swift::UInt32 a1)
{
  sub_797F4();
  sub_A4F34(a1);
  return sub_A4F44();
}

uint64_t sub_739BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      sub_7965C();
      break;
  }

  sub_A46A4();
}

uint64_t sub_73AB0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      break;
    default:
      sub_7965C();
      break;
  }

  sub_A46A4();
}

uint64_t sub_73BC0()
{
  sub_796FC();
  switch(v0)
  {
    case 1:
      sub_7971C();
      break;
    case 2:
      sub_797A0();
      break;
    default:
      break;
  }

  sub_A46A4();
}

uint64_t sub_73C94(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_7965C();
      break;
    default:
      break;
  }

  sub_A46A4();
}

uint64_t sub_73D78()
{
  sub_A46A4();
}

uint64_t sub_73E34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_7984C();
      sub_7965C();
      break;
    case 2:
    case 3:
      break;
    default:
      sub_7965C();
      break;
  }

  sub_A46A4();
}

uint64_t sub_73F20(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      sub_7984C();
      sub_7965C();
      break;
    default:
      break;
  }

  sub_A46A4();
}

uint64_t sub_74010(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      break;
    default:
      sub_7965C();
      break;
  }

  sub_A46A4();
}

uint64_t sub_74104(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_69D6C();
    sub_796DC();
  }

  else
  {
    sub_7965C();
  }

  sub_A46A4();
}

uint64_t sub_74188(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_A46A4();
}

uint64_t sub_74200()
{
  sub_A46A4();
}

uint64_t sub_7436C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_79858();
  }

  sub_A46A4();
}

uint64_t sub_743E0()
{
  sub_A46A4();
}

uint64_t sub_744D0()
{
  sub_A46A4();
}

uint64_t sub_745C8()
{
  sub_796FC();
  switch(v0)
  {
    case 2:
      sub_7971C();
      break;
    case 4:
      sub_797A0();
      break;
    default:
      break;
  }

  sub_A46A4();
}

uint64_t sub_7466C()
{
  sub_A46A4();
}

uint64_t sub_746D4()
{
  sub_A46A4();
}

uint64_t sub_74748()
{
  sub_A46A4();
}

Swift::Int sub_74800()
{
  sub_797B8();
  sub_7980C();

  return sub_A4F44();
}

Swift::Int sub_74878()
{
  sub_797B8();
  sub_7980C();

  return sub_A4F44();
}

Swift::Int sub_748F0()
{
  sub_797B8();
  sub_7980C();

  return sub_A4F44();
}

Swift::Int sub_749A4()
{
  sub_797B8();
  if (!v0)
  {
    sub_79858();
  }

  sub_7980C();

  return sub_A4F44();
}

Swift::Int sub_74A6C()
{
  sub_797B8();
  if (v0)
  {
    sub_69D6C();
    sub_796DC();
  }

  else
  {
    sub_7965C();
  }

  sub_7980C();

  return sub_A4F44();
}

Swift::Int sub_74BA8()
{
  v0 = sub_A4F14();
  sub_79694(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_74C54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_A4F14();
  a3(a2);
  sub_797D0();

  return sub_A4F44();
}

Swift::Int sub_74CC0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_A4F14();
  a3(v6, a2);
  return sub_A4F44();
}

Swift::Int sub_74D0C()
{
  v0 = sub_A4F14();
  sub_79694(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_74D64()
{
  sub_A4F14();
  sub_A46A4();
  return sub_A4F44();
}

Swift::Int sub_74DB0()
{
  sub_797B8();
  sub_A4F34(v0);
  return sub_A4F44();
}

uint64_t sub_74DEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1BF68(a1);
  v8 = result;
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_A4B74();
      v10 = result;
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v10;
    sub_30A44(&v11, a2, a3);
    if (v3)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_74EE8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CFB38;
  v7._object = a2;
  v4 = sub_A4CE4(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_74F68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_74EE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_74F98()
{
  type metadata accessor for GreetingFlow();
  sub_79604(&qword_DF4B8, type metadata accessor for GreetingFlow);
  return sub_A3334();
}

uint64_t sub_75028()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_10AAC();
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_750AC()
{
  v1 = v0[3];
  sub_A4B54(33);

  sub_10944();
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_state;
  v0[5] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_state;
  v28 = v3;
  if (*(v1 + v2))
  {
    v4._countAndFlagsBits = 0x6574656C706D6F63;
  }

  else
  {
    v4._countAndFlagsBits = 0x6572676F72506E69;
  }

  if (*(v1 + v2))
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEA00000000007373;
  }

  v0[6] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_logger;
  v4._object = v5;
  sub_A46D4(v4);

  sub_AA40();
  sub_810AC(v7, v28, 0xD00000000000002ALL, v6 | 0x8000000000000000, v8, 0xE900000000000029);

  if (*(v1 + v2))
  {
    v9 = v0[3];
    v10 = v0[4];
    sub_A4814();
    sub_504C4();
    sub_A924(v11, v12, v13, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v9;

    v16 = sub_79894();
    v20 = sub_8A090(v16, v17, v18, v19, v15);
    v0[11] = v20;
    v21 = async function pointer to Task<>.value.getter[1];
    v22 = swift_task_alloc();
    v0[12] = v22;
    v23 = sub_A3684();
    *v22 = v0;
    v22[1] = sub_759A4;
    v24 = v0[2];

    return Task<>.value.getter(v24, v20, v23);
  }

  else
  {
    v25 = *(v0[3] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams + 152);
    v26 = swift_task_alloc();
    v0[7] = v26;
    *v26 = v0;
    v26[1] = sub_75340;

    return sub_4F0F8();
  }
}

uint64_t sub_75340()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7542C()
{
  sub_5950();
  if (*(v0 + 104) == 1)
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 64) = v1;
    *v1 = v2;
    v1[1] = sub_7552C;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_75DE0();
  }

  else
  {
    v6 = *(*(*(v0 + 24) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState);
    *(v0 + 72) = v6;

    return _swift_task_switch(sub_756D0, v6, 0);
  }
}

uint64_t sub_7552C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_75610()
{
  sub_AB40();
  v1 = v0[3];
  *(v1 + v0[5]) = 1;
  type metadata accessor for DBSiriKitEventSender();
  swift_initStaticObject();
  sub_931E8(132, *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_name), 0, 0);
  sub_4D424();

  v2 = v0[4];

  sub_AA9C();

  return v3();
}

uint64_t sub_756D0()
{
  sub_5950();
  *(v0 + 105) = *(*(v0 + 72) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback);

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_75740()
{
  sub_5950();
  if (*(v0 + 105))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    sub_787B4();
    v3 = *(v0 + 32);

    sub_AA9C();

    return v4();
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    sub_AA40();
    sub_810AC(v8 + 19, v9 | 0x8000000000000000, 0xD00000000000002ALL, v10 | 0x8000000000000000, v11, 0xE900000000000029);
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_75860;
    v13 = *(v0 + 24);

    return sub_77974();
  }
}

uint64_t sub_75860()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_75944()
{
  sub_5950();
  v1 = v0[2];
  v2 = v0[3];
  sub_787B4();
  v3 = v0[4];

  sub_AA9C();

  return v4();
}

uint64_t sub_759A4()
{
  sub_AB40();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = *(v1 + 32);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_75ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[6] = a1;
  v10[7] = a4;
  v11 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v12 = swift_task_alloc();
  v10[8] = v12;
  *v12 = v10;
  v12[1] = sub_75B68;

  return static Task<>.sleep(nanoseconds:)(60000000, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_75B68()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 72) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_75C64()
{
  sub_5950();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_787B4();
  sub_AA9C();

  return v3();
}

uint64_t sub_75CBC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_2BB18();
  sub_A4B54(36);

  sub_10944();
  v13 = v4;
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v15._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v15);

  sub_AA40();
  sub_810AC(v9, v13, 0xD00000000000002ALL, v8 | 0x8000000000000000, v10, 0xE900000000000029);

  sub_787B4();

  sub_AA9C();

  return v11();
}

uint64_t sub_75DE0()
{
  sub_5950();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v3);
  v5 = *(v4 + 64);
  v1[10] = sub_10AAC();
  v6 = sub_A3944();
  v1[11] = v6;
  sub_5940(v6);
  v1[12] = v7;
  v9 = *(v8 + 64);
  v1[13] = sub_10AAC();
  v10 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v10);
  v12 = *(v11 + 64);
  v1[14] = sub_10AAC();
  v13 = sub_A4354();
  sub_10A88(v13);
  v15 = *(v14 + 64);
  v1[15] = sub_10AAC();
  v16 = sub_A3784();
  v1[16] = v16;
  sub_5940(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = sub_10AAC();
  v20 = sub_A2EA4();
  v1[19] = v20;
  sub_5940(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = sub_10AAC();
  v24 = sub_A42E4();
  v1[22] = v24;
  sub_5940(v24);
  v1[23] = v25;
  v27 = *(v26 + 64);
  v1[24] = sub_10AAC();
  v28 = sub_AA8C();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_75FE0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[9];
  v0[25] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_logger;
  sub_810AC(0xD000000000000022, 0x80000000000B3170, 0xD00000000000002ALL, 0x80000000000B3010, 0xD000000000000019, 0x80000000000B31A0);
  sub_A2E94();
  sub_76AA8(v1);
  (*(v2 + 8))(v1, v3);
  sub_798C0();
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[9];
  sub_A42C4();
  type metadata accessor for DailyBriefingGreetingCATs();
  sub_A4344();
  v0[26] = sub_A4284();
  (*(v6 + 16))(v9, v5, v7);
  sub_A924(v9, 0, 1, v7);
  v11 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams;
  v0[27] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams;
  v12 = *(v10 + v11 + 152);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_76214;

  return sub_4F0F8();
}

uint64_t sub_76214()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 224);
  *v2 = *v0;
  *(v1 + 256) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_76300()
{
  sub_5950();
  v1 = *(*(v0 + 72) + *(v0 + 216) + 320);
  swift_task_alloc();
  sub_1A6A0();
  *(v0 + 232) = v2;
  *v2 = v3;
  v2[1] = sub_763AC;
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);

  return sub_99644(v6, v7, v4, v1);
}

uint64_t sub_763AC()
{
  sub_AB40();
  sub_AAA8();
  sub_25540();
  *v3 = v2;
  v5 = v4[29];
  v6 = v4[26];
  v7 = v4[14];
  v8 = *v1;
  sub_5930();
  *v9 = v8;
  *(v10 + 240) = v0;

  sub_794C8(v7, &qword_DF4B0, &qword_AC5F0);

  sub_40210();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_764F8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = (*(v0 + 72) + *(v0 + 216));
  v5 = v4[12];
  sub_7584(v4 + 8, v4[11]);
  sub_A3494();
  sub_A3744();
  sub_504C4();
  sub_A924(v6, v7, v8, v9);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_A35C4();
  sub_794C8(v0 + 16, &qword_DE4F0, &unk_AADA0);
  sub_794C8(v3, &qword_DB5A8, &unk_A67C0);
  v10 = *sub_7584(v4 + 30, v4[33]);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_76678;
  v12 = *(v0 + 104);

  return sub_88BB4(v12);
}

uint64_t sub_76678()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 248);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_7675C()
{
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  sub_79788();
  v7 = v0[9];
  v12 = v0[10];
  v8 = v0[8];
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  sub_79738(inited, *(v7 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_name));
  sub_4D424();

  sub_A35F4();
  (*(v1 + 8))(v2, v3);

  sub_AA9C();

  return v10();
}

uint64_t sub_768B4()
{
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[9];
  sub_A4B54(46);

  sub_10944();
  v12 = v5;
  v0[7] = v2;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v14._countAndFlagsBits = sub_A4644();
  sub_A46D4(v14);

  sub_81094(0xD00000000000002CLL, v12, 0xD00000000000002ALL, 0x80000000000B3010, 0xD000000000000019, 0x80000000000B31A0);

  sub_79788();
  v6 = v0[9];
  v11 = v0[10];
  v7 = v0[8];
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  sub_79738(inited, *(v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_name));
  sub_4D424();

  sub_A35F4();
  (*(v3 + 8))(0xD000000000000019, v1);

  sub_AA9C();

  return v9();
}

uint64_t sub_76AA8(uint64_t a1)
{
  sub_A2F34();
  sub_AA64();
  v79 = v2;
  v80 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_AA54();
  v8 = v7 - v6;
  v78 = sub_A3004();
  sub_AA64();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_AA54();
  v16 = v15 - v14;
  v17 = sub_4BF0(&qword_DE158, qword_A9A88);
  v18 = sub_10A88(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v63 - v21;
  v23 = sub_A4094();
  sub_AA64();
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  sub_AA54();
  v31 = v30 - v29;
  if (qword_DA8E0 != -1)
  {
    swift_once();
  }

  v32 = qword_E08E0;
  v75 = *(v25 + 104);
  v76 = v25 + 104;
  v75(v31, enum case for DateTime.DateTimeRange.DefinedDateTimeRange.evening(_:), v23);
  sub_A4054();
  sub_504C4();
  v74 = v33;
  sub_A924(v34, v35, v36, v33);
  sub_A2FD4();
  sub_A2F24();
  v37 = sub_A40A4();
  v72 = sub_79604(&qword_DE160, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
  v73 = v37;
  sub_A4544();
  sub_7986C();
  v67 = v32;
  v38 = sub_59B30();
  v68 = a1;
  v39 = v38;

  v40 = *(v80 + 8);
  v80 += 8;
  v71 = v40;
  v40(v8, v79);
  v42 = *(v10 + 8);
  v41 = v10 + 8;
  v43 = v78;
  v70 = v42;
  v42(v16, v78);
  sub_794C8(v22, &qword_DE158, qword_A9A88);
  v44 = *(v25 + 8);
  v77 = v25 + 8;
  v69 = v44;
  v44(v31, v23);
  if (v39)
  {
    return 2;
  }

  v75(v31, enum case for DateTime.DateTimeRange.DefinedDateTimeRange.morning(_:), v23);
  v45 = 1;
  sub_504C4();
  sub_A924(v46, v47, v48, v74);
  sub_A2FD4();
  sub_A2F24();
  sub_A4544();
  v49 = sub_59B30();
  v50 = v79;
  v66 = v49;

  v64 = v8;
  v51 = v8;
  v52 = v50;
  v71(v51, v50);
  v65 = v41;
  v70(v16, v43);
  sub_794C8(v22, &qword_DE158, qword_A9A88);
  v53 = sub_79824();
  v54(v53);
  if ((v66 & 1) == 0)
  {
    v75(v31, enum case for DateTime.DateTimeRange.DefinedDateTimeRange.afternoon(_:), v23);
    sub_504C4();
    sub_A924(v55, v56, v57, v74);
    sub_A2FD4();
    v58 = v64;
    sub_A2F24();
    sub_A4544();
    sub_7986C();
    v59 = sub_59B30();

    v71(v58, v52);
    v70(v16, v78);
    sub_794C8(v22, &qword_DE158, qword_A9A88);
    v60 = sub_79824();
    v61(v60);
    if (v59)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v45;
}

uint64_t sub_76FF0()
{
  result = sub_798C0();
  switch(v1)
  {
    case 1:
      v2 = 1314017101;
      goto LABEL_4;
    case 2:
      v2 = 1313166917;
LABEL_4:
      result = v2 | 0x474E4900000000;
      break;
    case 3:
      result = 0x524548544FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_77078(uint64_t a1)
{
  sub_810AC(0xD00000000000001DLL, 0x80000000000B3130, 0xD00000000000002ALL, 0x80000000000B3010, 0xD000000000000011, 0x80000000000B3150);
  v3 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_allFlowSpecs);
  v4 = v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams;
  sub_79468(v4 + 24, v88);
  sub_79468(v4 + 160, v87);
  sub_79468(v4 + 240, v86);
  v68 = *(v4 + 320);
  v5 = qword_DA838;
  v67 = v3;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_E0608;
  sub_792A0();
  v66 = v6;

  v65 = sub_A4544();
  v7 = type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v83 = v7;
  v84 = &off_D1B20;
  sub_79668();
  v85 = sub_79604(v9, v10);
  *&v82 = inited;
  v11 = type metadata accessor for OfflineStateProvider();
  v12 = swift_allocObject();
  sub_A7C4(v87, v87[3]);
  sub_AADC();
  sub_AA64();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_AA54();
  v17 = sub_79880(v16);
  v18(v17);
  sub_A7C4(v86, v86[3]);
  sub_AADC();
  sub_AA64();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  sub_AA54();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  v26 = *v2;
  v27 = *v24;
  v28 = type metadata accessor for TemplatingProvider();
  v81[3] = v28;
  v81[4] = &off_D1F98;
  v81[0] = v26;
  v29 = type metadata accessor for DailyBriefingOutputPublisher();
  v80[3] = v29;
  v80[4] = &off_D2D00;
  v80[0] = v27;
  v79[3] = v11;
  v79[4] = &off_D29E8;
  v79[0] = v12;
  v30 = type metadata accessor for DailyBriefingFlow();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  sub_A7C4(v81, v28);
  sub_AADC();
  sub_AA64();
  v35 = *(v34 + 64);
  __chkstk_darwin(v36);
  sub_AA54();
  v38 = sub_79880(v37);
  v39(v38);
  sub_A7C4(v80, v29);
  sub_AADC();
  sub_AA64();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  sub_AA54();
  v45 = (v44 - v43);
  (*(v46 + 16))(v44 - v43);
  sub_A7C4(v79, v11);
  sub_AADC();
  sub_AA64();
  v48 = *(v47 + 64);
  __chkstk_darwin(v49);
  sub_AA54();
  v52 = (v51 - v50);
  (*(v53 + 16))(v51 - v50);
  v54 = *v2;
  v55 = *v45;
  v56 = *v52;
  v77 = v28;
  v78 = &off_D1F98;
  *&v76 = v54;
  v74 = v29;
  v75 = &off_D2D00;
  *&v73 = v55;
  v71 = v11;
  v72 = &off_D29E8;
  *&v70 = v56;
  v57 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v58 = sub_A43D4();
  sub_48A4(v58, qword_E0BA0);
  sub_18594(v58);
  (*(v59 + 16))(v33 + v57);
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_state) = 0;
  v60 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_dialogService;
  v61 = sub_A3584();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  *(v33 + v60) = sub_A3574();
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_currentFlowSpec) = a1;
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_allFlowSpecs) = v67;
  sub_A814(v88, v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_aceService);
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_knowledgeStore) = v66;
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_specExecutionStatus) = v65;
  sub_A814(&v76, v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_templatingProvider);
  sub_A814(&v73, v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_outputPublisher);
  sub_A82C(&v82, (v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_siriKitEventSender));
  sub_A814(&v70, v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_offlineStateProvider);
  *(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17DailyBriefingFlow_platformSupportsNews) = v68;

  sub_761C(v79);
  sub_761C(v80);
  sub_761C(v81);
  sub_761C(v86);
  sub_761C(v87);
  *&v82 = v33;
  sub_79604(&qword_DB5A0, type metadata accessor for DailyBriefingFlow);
  sub_A3644();
}

uint64_t sub_777CC()
{
  v1 = v0;
  sub_810AC(0xD000000000000017, 0x80000000000B30F0, 0xD00000000000002ALL, 0x80000000000B3010, 0xD000000000000012, 0x80000000000B3110);
  sub_792A0();
  v2 = sub_A4544();
  v3 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_allFlowSpecs);
  v11[0] = v2;
  swift_bridgeObjectRetain_n();
  sub_74DEC(v3, v2, v11);

  v4 = v11[0];
  sub_1A2C4(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams, v11);
  type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  v6 = type metadata accessor for OfflineFlow();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v11[0] = sub_792F4(v4, v11, inited, v9);
  sub_79604(&qword_DB590, type metadata accessor for OfflineFlow);
  sub_A3644();
}

uint64_t sub_77974()
{
  sub_5950();
  v1[3] = v0;
  v2 = sub_A40F4();
  v1[4] = v2;
  sub_5940(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = sub_10AAC();
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_77A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_AB40();
  v11 = v10[3];
  v12 = sub_A45C4();
  v10[7] = v12;
  v13 = swift_allocObject();
  v10[8] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = async function pointer to withTimeout<A>(seconds:operation:)[1];
  v15 = v12;

  swift_task_alloc();
  sub_1A6A0();
  v10[9] = v20;
  *v20 = v21;
  v20[1] = sub_77B30;

  return withTimeout<A>(seconds:operation:)(v10 + 11, &unk_AAD80, v13, &type metadata for Bool, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_77B30()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_40210();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_77C3C()
{
  sub_5950();

  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_77CA8()
{
  sub_79838();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  v0[2] = v1;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v5 = swift_dynamicCast();
  v6 = v0[10];
  v7 = v0[7];
  if (v5)
  {
    v8 = v0[5];
    v33 = v0[6];
    v10 = v0[3];
    v9 = v0[4];

    sub_2BB18();
    sub_A4B54(26);

    v11 = sub_A45F4();
    v13 = v12;

    v35._countAndFlagsBits = v11;
    v35._object = v13;
    sub_A46D4(v35);

    v36._countAndFlagsBits = 0x6F2064656D697420;
    v36._object = 0xEB000000002E7475;
    sub_A46D4(v36);
    sub_6DDDC();
    sub_798A8(v14, 0xED0000206E6F6974, v15, v16, v17, v18);

    (*(v8 + 8))(v33, v9);
    v19 = v0[2];
  }

  else
  {
    v20 = v0[2];
    v21 = v0[3];

    sub_2BB18();
    sub_A4B54(28);

    v22 = sub_A45F4();
    v24 = v23;

    v37._countAndFlagsBits = v22;
    v37._object = v24;
    sub_A46D4(v37);

    v38._countAndFlagsBits = 0x6465726F72726520;
    v38._object = 0xED00002E74756F20;
    sub_A46D4(v38);
    sub_6DDDC();
    sub_798A8(v25, 0xED0000206E6F6974, v26, v27, v28, v29);
  }

  v30 = v0[6];

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_77F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(sub_4BF0(&qword_DF498, &qword_AAD90) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_A49E4();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_7804C, 0, 0);
}

uint64_t sub_7804C()
{
  sub_AB40();
  v1 = v0[9];
  v2 = v0[4];
  v3 = [objc_opt_self() defaultCenter];
  sub_A49F4();

  sub_A49D4();
  swift_task_alloc();
  sub_1A6A0();
  v0[10] = v4;
  *v4 = v5;
  v4[1] = sub_7814C;
  v6 = v0[9];
  v7 = v0[6];
  sub_40210();

  return sub_78488(v8, v9, v10);
}

uint64_t sub_7814C()
{
  sub_5950();
  sub_AAA8();
  v3 = *(v2 + 80);
  v4 = *v1;
  sub_5930();
  *v5 = v4;

  if (!v0)
  {
    sub_40210();

    return _swift_task_switch(v7, v8, v9);
  }

  return result;
}

uint64_t sub_78248()
{
  sub_79838();
  v1 = *(v0 + 48);
  v2 = sub_A2BC4();
  v3 = sub_CF2C(v1, 1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  if (v3 == 1)
  {
    (*(v5 + 8))(*(v0 + 72), *(v0 + 56));
    sub_2BB18();
    sub_A4B54(32);

    v26._countAndFlagsBits = sub_79760();
    sub_A46D4(v26);

    v27._countAndFlagsBits = 0xD000000000000011;
    v27._object = 0x80000000000B30D0;
    sub_A46D4(v27);
    sub_6DDDC();
    sub_798A8(v9, v24, v10, v11, v12, v13);

    v14 = 0;
  }

  else
  {
    sub_2BB18();
    sub_A4B54(25);

    v28._countAndFlagsBits = sub_79760();
    sub_A46D4(v28);

    v29._countAndFlagsBits = 0x7265676769727420;
    v29._object = 0xEA00000000006465;
    sub_A46D4(v29);
    sub_6DDDC();
    sub_798A8(v15, v24, v16, v17, v18, v19);

    (*(v5 + 8))(v4, v6);
    sub_794C8(v1, &qword_DF498, &qword_AAD90);
    v14 = 1;
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  **(v0 + 24) = v14;

  sub_AA9C();

  return v22();
}

uint64_t sub_78488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = sub_A49E4();
  v6 = sub_79604(&qword_DF4A0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_7857C;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, v5, v6);
}

uint64_t sub_7857C()
{
  sub_AB40();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v8 = *v1;
  sub_5930();
  *v9 = v8;
  v3[6] = v0;

  if (v0)
  {
    if (v7)
    {
      v10 = v3[3];
      v11 = v3[4];
      swift_getObjectType();
      v12 = sub_A47C4();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v18 = sub_78710;
  }

  else
  {
    if (v7)
    {
      v15 = v3[3];
      v16 = v3[4];
      swift_getObjectType();
      v12 = sub_A47C4();
      v14 = v17;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v18 = sub_786EC;
  }

  return _swift_task_switch(v18, v12, v14);
}

uint64_t sub_78710()
{
  sub_5950();
  *(v0 + 16) = *(v0 + 48);
  sub_4BF0(&qword_DBB90, &qword_A7540);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_AA9C();

  return v1();
}

uint64_t sub_787B4()
{
  v1 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v2 = sub_10A88(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_A4814();
  sub_504C4();
  sub_A924(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  v10 = sub_79894();
  sub_89E10(v10, v11, v12, v13, v9);

  v14 = *(*(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_nextFlowSpec);
  if (v14)
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;

    sub_A4B54(34);

    sub_10944();
    v27 = 0xD00000000000001ALL;
    v28 = v15;
    (*(*v14 + 240))(v24);
    v16 = v25;
    v17 = v26;
    sub_7584(v24, v25);
    v29._countAndFlagsBits = (*(v17 + 8))(v16, v17);
    sub_A46D4(v29);

    sub_761C(v24);
    v30._countAndFlagsBits = 0x2E776F6C6620;
    v30._object = 0xE600000000000000;
    sub_A46D4(v30);
    v18 = v28;
    sub_6DDDC();
    sub_810AC(v19, v18, v20, v21, 0xD000000000000013, v22);

    sub_77078(v14);
  }

  else
  {
    sub_810AC(0xD00000000000003DLL, 0x80000000000B2FD0, 0xD00000000000002ALL, 0x80000000000B3010, 0xD000000000000013, 0x80000000000B3040);
    return sub_777CC();
  }
}

uint64_t sub_78A6C()
{
  sub_AB40();
  v1 = v0[4];
  sub_A4B54(25);

  sub_10944();
  v0[2] = 0xD000000000000016;
  v0[3] = v2;
  v3 = *(*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin10DBExecutor_callbackState);
  v0[5] = v3;

  return _swift_task_switch(sub_78B34, v3, 0);
}

uint64_t sub_78B34()
{
  sub_5950();
  *(v0 + 48) = *(*(v0 + 40) + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21ExecutorCallbackState_didCallback);

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_78BA4()
{
  sub_AB40();
  v1 = *(v0 + 32);
  if (*(v0 + 48))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_A46D4(v2);

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  sub_A46D4(v13);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_6DDDC();
  sub_810AC(v6, v5, v7, v8, 0xD000000000000013, v9);

  sub_AA9C();

  return v10();
}

uint64_t sub_78CA0()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_logger;
  v2 = sub_A43D4();
  sub_18594(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1A564(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_flowParams);
  v4 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_allFlowSpecs);

  v5 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_executor);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_templatingProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin12GreetingFlow_catProvider));
  return v0;
}

uint64_t sub_78D4C()
{
  sub_78CA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GreetingFlow()
{
  result = qword_DF378;
  if (!qword_DF378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_78DF8()
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for GreetingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x78F98);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_78FD4()
{
  result = qword_DF490;
  if (!qword_DF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF490);
  }

  return result;
}

uint64_t sub_7904C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_75028();
}

uint64_t sub_790E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GreetingFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_79128()
{
  sub_AB40();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_1A6A0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = sub_79680(v5);

  return sub_78A4C(v7, v8, v3, v4);
}

uint64_t sub_791C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_79208()
{
  sub_AB40();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_1A6A0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_79680(v4);

  return sub_77F50(v6, v7, v2);
}

unint64_t sub_792A0()
{
  result = qword_DF4A8;
  if (!qword_DF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4A8);
  }

  return result;
}

uint64_t sub_792F4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for DBSiriKitEventSender();
  v17 = &off_D1B20;
  sub_79668();
  v18 = sub_79604(v8, v9);
  *&v15 = a3;
  v10 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_logger;
  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v11 = sub_A43D4();
  sub_48A4(v11, qword_E0BA0);
  sub_18594(v11);
  (*(v12 + 16))(a4 + v10);
  *(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state) = 0;
  v13 = a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name;
  *(v13 + 24) = &type metadata for CommonSpecs;
  *(v13 + 32) = &off_D2128;
  *v13 = 8;
  memcpy((a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams), a2, 0x141uLL);
  sub_A82C(&v15, (a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender));
  *(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus) = a1;
  return a4;
}

uint64_t sub_79468(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_18594(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_794C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4BF0(a2, a3);
  sub_18594(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_79524()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_79564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_AB40();
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  swift_task_alloc();
  sub_1A6A0();
  *(v11 + 16) = v15;
  *v15 = v16;
  v17 = sub_79680(v15);

  return sub_75ACC(v17, v18, v13, v14, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_79604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_79738(uint64_t a1, char a2)
{

  return sub_931E8(132, a2, 0, 0);
}

uint64_t sub_79760()
{

  return sub_A45F4();
}

void sub_79788()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
}

uint64_t sub_797B8()
{

  return sub_A4F14();
}

uint64_t sub_797D0()
{

  return sub_A46A4();
}

uint64_t sub_797F4()
{

  return sub_A4F14();
}

uint64_t sub_7980C()
{

  return sub_A46A4();
}

uint64_t sub_79824()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 176);
  return result;
}

void sub_798A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{

  sub_810AC(a1, a2, a3, a4, 0xD000000000000026, a6);
}

const char *sub_79900(uint64_t a1, uint64_t a2, unsigned int a3)
{
  switch(a3 >> 12)
  {
    case 1:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v12 = sub_79D5C();
      *(v12 + 16) = xmmword_A9830;
      *(v12 + 32) = a1;
      *(v12 + 88) = &type metadata for Int;
      *(v12 + 56) = &type metadata for Int;
      *(v12 + 64) = a2;
      result = "UpcomingRemindersCount=%{signpost.telemetry:number1,public}@ OverdueRemindersCount=%{signpost.telemetry:number2,public}@ enableTelemetry=YES";
      break;
    case 2:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v9 = sub_79D5C();
      *(v9 + 16) = xmmword_A9830;
      *(v9 + 32) = a1 & 1;
      *(v9 + 88) = &type metadata for Int;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = a2;
      result = "ShouldMentionAQI=%{signpost.telemetry:number1,public}@ CountOfExpectedConditions=%{signpost.telemetry:number2,public}@ enableTelemetry=YES";
      break;
    case 3:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v10 = sub_79D44();
      sub_79D34(v10, &type metadata for Int, xmmword_A6E70);
      result = "CalendarEventCount=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 4:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v7 = sub_79D44();
      sub_79D34(v7, &type metadata for Int, xmmword_A6E70);
      result = "ImportantEventCount=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 5:
      v13 = a3;
      v14 = (a3 >> 8) & 0xF;
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v15 = sub_79D5C();
      *(v15 + 16) = xmmword_A9830;
      if (v13)
      {
        v16 = 0x65736963657270;
        v17 = 0x64656C6261736964;
        if (!(a1 | a2))
        {
          v17 = 0x6E776F6E6B6E75;
        }

        v18 = 0xE800000000000000;
        if (!(a1 | a2))
        {
          v18 = 0xE700000000000000;
        }

        if (v13 == 1)
        {
          v19 = 0xE700000000000000;
        }

        else
        {
          v16 = v17;
          v19 = v18;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        v16 = 0x657372616F63;
      }

      *(v15 + 32) = v16;
      *(v15 + 40) = v19;
      *(v15 + 88) = &type metadata for Int;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = (v14 + 1);
      result = "LocationAccess=%{signpost.telemetry:string1,public}@ CoordinateStatus=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 6:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v20 = sub_79D44();
      sub_79D34(v20, &type metadata for Int, xmmword_A6E70);
      result = "RemindersCount=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 7:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v11 = sub_79D44();
      sub_79D34(v11, &type metadata for Int, xmmword_A6E70);
      result = "CountOfEntries=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 8:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v22 = sub_79D44();
      sub_79D34(v22, &type metadata for Double, xmmword_A6E70);
      result = "ETA=%{signpost.telemetry:number1,public}@ enableTelemetry=YES";
      break;
    case 9:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v8 = sub_79D44();
      *(v8 + 16) = xmmword_A6E70;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 32) = a1;
      *(v8 + 40) = a2;

      result = "Error=%{signpost.telemetry:string1,public}@ enableTelemetry=YES";
      break;
    case 10:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v21 = sub_79D44();
      *(v21 + 16) = xmmword_A6E70;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 32) = 0x73736563637553;
      *(v21 + 40) = 0xE700000000000000;
      result = "Status=%{signpost.telemetry:string1,public}@ enableTelemetry=YES";
      break;
    default:
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v5 = sub_79D5C();
      *(v5 + 16) = xmmword_A9830;
      *(v5 + 32) = a1;
      *(v5 + 88) = &type metadata for Int;
      *(v5 + 56) = &type metadata for Int;
      *(v5 + 64) = a2 + 1;
      result = "UpcomingEventsCount=%{signpost.telemetry:number1,public}@ CalendarPreprocessingResultType=%{signpost.telemetry:number2,public}@ enableTelemetry=YES";
      break;
  }

  return result;
}

__n128 *sub_79D34@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[3].n128_u64[1] = a2;
  result[2].n128_u64[0] = v3;
  return result;
}

uint64_t sub_79D44()
{

  return swift_allocObject();
}

uint64_t sub_79D5C()
{

  return swift_allocObject();
}

uint64_t sub_79D74()
{
  v0 = sub_A2FE4();
  v1 = sub_591C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A3004();
  v9 = sub_591C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2FD4();
  (*(v3 + 104))(v7, enum case for Calendar.Component.hour(_:), v0);
  v16 = sub_A2FF4();
  (*(v3 + 8))(v7, v0);
  (*(v11 + 8))(v15, v8);
  if (v16 < 4)
  {
    return 0;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 1;
  }

  if ((v16 - 6) < 4)
  {
    return 2;
  }

  if (v18 == 10)
  {
    return 3;
  }

  if ((v16 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
  {
    return 4;
  }

  if (v18 == 16)
  {
    return 5;
  }

  if (v16 < 18)
  {
    goto LABEL_20;
  }

  if (v16 < 0x14)
  {
    return 6;
  }

  if (v16 == 20)
  {
    return 7;
  }

  if ((v16 - 21) >= 3)
  {
LABEL_20:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v19 = sub_A43D4();
    sub_48A4(v19, qword_E0BA0);
    sub_81094(0xD000000000000021, 0x80000000000B3720, 0xD000000000000021, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70);
    swift_beginAccess();
    v20 = static FatalError.fatalErrorClosure;

    v20();
  }

  return 8;
}

__n128 sub_7A088(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_7A094(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7A0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7A124(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5 = sub_A4454();
  v43 = sub_591C(v5);
  v44 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v43);
  sub_AA54();
  v42 = v10 - v9;
  v34 = sub_A4964();
  v11 = sub_591C(v34);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_AA54();
  v18 = v17 - v16;
  v19 = sub_A4954();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  sub_AA54();
  v21 = sub_A44B4();
  v22 = sub_591C(v21);
  v40 = v23;
  v41 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_AA54();
  v28 = v27 - v26;
  sub_29D54(0, &qword_DD0F8, OS_dispatch_queue_ptr);
  sub_A44A4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_7B148(&qword_DE7A8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_4BF0(&qword_DE7B0, &qword_AAFD0);
  sub_7B190(&qword_DE7B8, &qword_DE7B0, &qword_AAFD0);
  sub_A4AC4();
  (*(v13 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v29 = sub_A4994();
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  *(v30 + 32) = a4;
  *(v30 + 40) = a5;
  *(v30 + 48) = a1;
  aBlock[4] = sub_7B11C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7A7E8;
  aBlock[3] = &unk_D2620;
  v31 = _Block_copy(aBlock);
  v32 = a5;
  sub_A4474();
  sub_7B148(&qword_DD508, &type metadata accessor for DispatchWorkItemFlags);
  sub_4BF0(&qword_DD510, &unk_AAE40);
  sub_7B190(&qword_DD518, &qword_DD510, &unk_AAE40);
  sub_A4AC4();
  sub_A4984();
  _Block_release(v31);

  (*(v44 + 8))(v42, v43);
  (*(v40 + 8))(v28, v41);
}

uint64_t sub_7A58C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a4;
  v5 = a3;
  sub_79900(a2, a3, a4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v27 = v5;
    v28 = v4;
    v31 = _swiftEmptyArrayStorage;
    sub_7AC94(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = v8 + 32;
    do
    {
      sub_B924(v11, v30);
      sub_B924(v30, v29);
      v12 = sub_A4644();
      v14 = v13;
      sub_761C(v30);
      v31 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_7AC94((v15 > 1), v16 + 1, 1);
        v10 = v31;
      }

      v10[2] = v16 + 1;
      v17 = &v10[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += 32;
      --v9;
    }

    while (v9);

    v4 = v28;
    v5 = v27;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  sub_A49A4();
  sub_79900(a2, v5, v4);

  sub_4BF0(&qword_DF4C8, &qword_AAE38);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_A9830;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_7ACB4();
  *(v18 + 64) = v19;
  v20 = v10[2];
  if (v20)
  {
    v22 = v10[4];
    v21 = v10[5];
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  *(v18 + 32) = v22;
  *(v18 + 40) = v23;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  if (v20 <= 1)
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v25 = v10[6];
    v24 = v10[7];
  }

  *(v18 + 72) = v25;
  *(v18 + 80) = v24;
  sub_A4364();
}

uint64_t sub_7A7E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_7A82C()
{
  v0 = sub_A43A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A49C4();
  sub_A4394();
  sub_A4364();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_7A988()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_A4A14();
  qword_E09D8 = result;
  return result;
}

uint64_t sub_7AA04()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_A4A14();
  qword_E09E0 = result;
  return result;
}

uint64_t sub_7AA7C()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_7B4C8();
  qword_E09E8 = result;
  return result;
}

uint64_t sub_7AAD4()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_A4A14();
  qword_E09F0 = result;
  return result;
}

uint64_t sub_7AB4C()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_A4A14();
  qword_E09F8 = result;
  return result;
}

uint64_t sub_7ABC4()
{
  sub_29D54(0, &qword_DF4D8, OS_os_log_ptr);
  result = sub_7B4C8();
  qword_E0A00 = result;
  return result;
}

size_t sub_7AC1C(size_t a1, int64_t a2, char a3)
{
  result = sub_7B300(a1, a2, a3, *v3, &qword_DF4F0, &qword_AAE68, &type metadata accessor for SpeakableString, sub_559E0);
  *v3 = result;
  return result;
}

char *sub_7AC74(char *a1, int64_t a2, char a3)
{
  result = sub_7AEE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7AC94(char *a1, int64_t a2, char a3)
{
  result = sub_7AFE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_7ACB4()
{
  result = qword_DF4D0;
  if (!qword_DF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4D0);
  }

  return result;
}

size_t sub_7AD08(size_t a1, int64_t a2, char a3)
{
  result = sub_7B300(a1, a2, a3, *v3, &qword_DDCD0, qword_AAE80, type metadata accessor for CalendarEvent, sub_559C8);
  *v3 = result;
  return result;
}

size_t sub_7AD60(size_t a1, int64_t a2, char a3)
{
  result = sub_7B300(a1, a2, a3, *v3, &qword_DF4F8, &qword_AAE78, &type metadata accessor for URL, sub_55A38);
  *v3 = result;
  return result;
}

void *sub_7ADB8()
{
  v1 = *v0;
  sub_7B4F8();
  result = sub_7B20C(v2, v3, v4, v5, v6, v7, v8);
  *v0 = result;
  return result;
}

void *sub_7ADEC(void *a1, int64_t a2, char a3)
{
  result = sub_7B20C(a1, a2, a3, *v3, &qword_DF4E8, &qword_AAE58, sub_55C78);
  *v3 = result;
  return result;
}

size_t sub_7AE30(size_t a1, int64_t a2, char a3)
{
  result = sub_7B300(a1, a2, a3, *v3, &qword_DF4E0, &qword_AAE50, &type metadata accessor for UsoIdentifier, sub_55A98);
  *v3 = result;
  return result;
}

size_t sub_7AE88(size_t a1, int64_t a2, char a3)
{
  result = sub_7B300(a1, a2, a3, *v3, &qword_DDCC0, &qword_AAE60, type metadata accessor for CurrentWeatherForecast, sub_55AB0);
  *v3 = result;
  return result;
}

char *sub_7AEE0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_4BF0(&qword_DF4C0, qword_AADC0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_55A18((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_7AFE4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_4BF0(&qword_DBB88, &unk_A6EB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_559F8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_7B0E4()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_7B11C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  return sub_7A82C();
}

uint64_t sub_7B130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7B148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7B190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_7B20C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void *, int64_t, void *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = a4[3];
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
    v12 = a4[2];
    if (v11 <= v12)
    {
      v13 = a4[2];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_4BF0(a5, a6);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * v15 - 64;
      if (v9)
      {
LABEL_13:
        a7(a4 + 4, v12, v14 + 4);
        a4[2] = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v14 + 4, a4 + 4, v12);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_7B300(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_4BF0(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_7B4C8()
{

  return sub_A4A14();
}

uint64_t sub_7B510(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_A48D4();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_7E7FC(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_7B5D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_80EB8();
  v3 = sub_A48D4();
  v9 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_7E948(&v8, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_7B668(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_A48D4();
  v10 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_80E08(v5, v8);
      sub_7EF98(v9, v8);
      sub_80E64(v9);
      v5 += 40;
      --v4;
    }

    while (v4);

    return v10;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

BOOL sub_7B710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

char *sub_7B73C()
{
  v0 = type metadata accessor for MapsSuggestionFetcher();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_7BE50();
  qword_E0A08 = v3;
  return result;
}

uint64_t sub_7B77C()
{
  sub_5950();
  v1[10] = v2;
  v1[11] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5B8, &qword_AAD60) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_7B814, v0, 0);
}

uint64_t sub_7B814()
{
  sub_AB40();
  v1 = v0[11];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v3 = v0[12];
    v4 = sub_A4814();
    sub_A924(v3, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2 = sub_7DA04(0, 0, v3, &unk_AAFA0, v5);
    v6 = *(v1 + 112);
  }

  v0[13] = v2;
  *(v1 + 112) = v2;

  v7 = async function pointer to Task.value.getter[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = sub_4BF0(&qword_DC738, &qword_AAF90);
  v10 = sub_4BF0(&qword_DBB90, &qword_A7540);
  *v8 = v0;
  v8[1] = sub_7B990;

  return Task.value.getter(v0 + 2, v2, v9, v10, &protocol self-conformance witness table for Error);
}

uint64_t sub_7B990()
{
  sub_AB40();
  v2 = *v1;
  sub_25540();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[13];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v7 = v2[11];
  if (v0)
  {
    v8 = sub_7BB3C;
  }

  else
  {
    v8 = sub_7BAD0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_7BAD0()
{
  sub_5950();
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  *v5 = *(v0 + 16);
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;

  sub_AA9C();

  return v6();
}

uint64_t sub_7BB3C()
{
  sub_5950();
  v1 = v0[15];
  v2 = v0[11] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsSuggestionFetcher_logger;
  sub_81094(0xD000000000000035, 0x80000000000B38D0, 0xD000000000000034, 0x80000000000B3910, 0x29286863746566, 0xE700000000000000);

  v3 = v0[12];
  v4 = v0[10];
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;

  sub_AA9C();

  return v5();
}

uint64_t sub_7BC0C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);

    sub_4BF0(&qword_DC738, &qword_AAF90);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4834();

    v2 = *(v0 + 112);
  }

  *(v0 + 112) = 0;
}

uint64_t sub_7BCAC()
{
  v1 = *(v0 + 112);

  sub_761C((v0 + 120));
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsSuggestionFetcher_logger;
  v3 = sub_A43D4();
  sub_18594(v3);
  (*(v4 + 8))(v0 + v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_7BD20()
{
  sub_7BCAC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MapsSuggestionFetcher()
{
  result = qword_DF530;
  if (!qword_DF530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7BDA0()
{
  result = sub_A43D4();
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

char *sub_7BE50()
{
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  *(v0 + 18) = &type metadata for MapsSuggestionFetcherHelper;
  *(v0 + 19) = &off_D27C0;
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsSuggestionFetcher_logger;
  if (qword_DA9F8 != -1)
  {
    sub_81074();
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0C18);
  sub_18594(v2);
  (*(v3 + 16))(&v0[v1]);
  return v0;
}

void sub_7BF08()
{
  v0 = [objc_opt_self() forDevice];
  v1 = [v0 withoutTracker];

  sub_4BF0(&qword_DF630, &qword_AAFD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_A6E70;
  v3 = objc_allocWithZone(MapsSuggestionsBlockFilter);
  v8 = sub_7E614(sub_7C0A4, 0);
  sub_29D54(0, &qword_DF638, MapsSuggestionsBlockFilter_ptr);
  sub_80DA0();
  v4 = v8;
  sub_A4B04();

  sub_7B668(inited);
  isa = sub_A48B4().super.isa;

  v6 = [v1 withPreFilters:{isa, v8}];

  v7 = [v6 build];
  if (v7)
  {
    qword_E0A10 = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_7C0A8()
{
  result = [objc_allocWithZone(type metadata accessor for DailyBriefingMapsSink()) init];
  qword_E0A18 = result;
  return result;
}

uint64_t sub_7C0DC()
{
  v0 = sub_A4964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_A4954();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_A44B4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_29D54(0, &qword_DD0F8, OS_dispatch_queue_ptr);
  sub_A4484();
  v10[1] = _swiftEmptyArrayStorage;
  sub_5FF9C();
  sub_4BF0(&qword_DE7B0, &qword_AAFD0);
  sub_5FFF4();
  sub_A4AC4();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_A4994();
  qword_E0A20 = result;
  return result;
}

uint64_t sub_7C2F4()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0A28);
  v1 = sub_48A4(v0, qword_E0A28);
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0C18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_7C3BC(uint64_t a1)
{
  v1[13] = a1;
  v2 = sub_A43A4();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_7C47C, 0, 0);
}

uint64_t sub_7C47C()
{
  if (qword_DA970 != -1)
  {
    sub_81054();
  }

  v1 = sub_A43D4();
  *(v0 + 136) = sub_48A4(v1, qword_E0A28);
  sub_810AC(0xD00000000000001DLL, 0x80000000000B3950, 0xD000000000000034, 0x80000000000B3910, 0x6B736154656B616DLL, 0xEA00000000002928);
  if (qword_DA9B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v3 = *algn_E0B48;
  *(v0 + 144) = qword_E0B40;
  *(v0 + 152) = v3;
  *(v0 + 208) = byte_E0B50;
  v4 = qword_E0B58;
  *(v0 + 160) = qword_E0B58;
  v5 = v4;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  sub_4BF0(&qword_DF618, &qword_AAFA8);
  *v7 = v0;
  v7[1] = sub_7C67C;
  sub_40210();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v9, v10, 0x6B736154656B616DLL, 0xEA00000000002928, v11, 0, v12);
}

uint64_t sub_7C67C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_5930();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7C778()
{
  sub_5950();
  v1 = *(v0 + 96);
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1BF68(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 208);
  sub_7A58C(*(v0 + 128), v2, 0, 0x7000u);
  *(v0 + 192) = sub_7D10C();
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_7C858;

  return sub_7D1D8();
}

uint64_t sub_7C858()
{
  sub_5950();
  sub_AAA8();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[23];
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7C974()
{
  sub_5950();
  v1 = *(v0 + 104);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;

  sub_AA9C();

  return v5();
}

uint64_t sub_7C9FC()
{
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v1 = *(v0 + 136);
  v10 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 176);
  v4 = *(v0 + 208);
  sub_A4B54(42);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v16._object = 0x80000000000B3970;
  v16._countAndFlagsBits = 0xD000000000000028;
  sub_A46D4(v16);
  sub_A4C44();
  sub_81094(*(v0 + 80), *(v0 + 88), 0xD000000000000034, 0x80000000000B3910, 0x6B736154656B616DLL, 0xEA00000000002928);

  sub_40210();
  sub_7A58C(v5, v6, v7, 0x7000u);
  sub_7E5C0();
  swift_allocError();
  swift_willThrow();

  (*(v3 + 8))(v2, v13);

  sub_AA9C();

  return v8();
}

void sub_7CBB0(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DF628, &qword_AAFC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  if (qword_DA958 != -1)
  {
    swift_once();
  }

  v7 = qword_DA960;
  v8 = qword_E0A10;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_E0A18;
  GEOGetUserTransportTypePreference();
  v10 = GEOTransportTypeFromGEOTransportTypePreference();
  (*(v3 + 16))(v6, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v6, v2);
  aBlock[4] = sub_80CFC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7D068;
  aBlock[3] = &unk_D26C0;
  v13 = _Block_copy(aBlock);

  if (qword_DA968 != -1)
  {
    swift_once();
  }

  [v8 oneShotTopSuggestionsForSink:v9 count:3 transportType:v10 callback:v13 onQueue:qword_E0A20];
  _Block_release(v13);
}

uint64_t sub_7CE3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0A28);
    sub_A4B54(42);

    swift_getErrorValue();
    v5._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v5);

    sub_81094(0xD000000000000028, 0x80000000000B3BA0, 0xD000000000000034, 0x80000000000B3910, 0x6B736154656B616DLL, 0xEA00000000002928);

    sub_4BF0(&qword_DF628, &qword_AAFC8);
    return sub_A47D4();
  }

  else
  {
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v4 = sub_A43D4();
    sub_48A4(v4, qword_E0A28);
    sub_810AC(0xD00000000000002DLL, 0x80000000000B3B70, 0xD000000000000034, 0x80000000000B3910, 0x6B736154656B616DLL, 0xEA00000000002928);

    sub_4BF0(&qword_DF628, &qword_AAFC8);
    return sub_A47E4();
  }
}

uint64_t sub_7D068(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_29D54(0, &qword_DC740, MapsSuggestionsEntry_ptr);
    v4 = sub_A4764();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_7D10C()
{
  v0 = [objc_allocWithZone(MapsSuggestionsRealNetworkRequester) init];
  v1 = [objc_opt_self() sharedPredictor];
  v2 = [objc_allocWithZone(MapsSuggestionsETARequirements) initWithMaxAge:300.0 maxDistance:150.0 minAccuracy:150.0];
  v3 = [objc_allocWithZone(MapsSuggestionsETARequester) initWithNetworkRequester:v0 transportModePredictor:v1 requirements:v2];

  return v3;
}

uint64_t sub_7D1D8()
{
  sub_5950();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = sub_A43D4();
  v0[16] = v4;
  v5 = *(v4 - 8);
  v0[17] = v5;
  v6 = *(v5 + 64) + 15;
  v0[18] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7D294()
{
  if (qword_DA970 != -1)
  {
    sub_81054();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = sub_48A4(v3, qword_E0A28);
  v0[19] = v5;
  (*(v2 + 16))(v1, v5, v3);
  sub_A4B54(43);

  v0[10] = 0xD000000000000011;
  v0[11] = 0x80000000000B39A0;
  if (v4)
  {
    v6 = sub_1BF68(v0[14]);
  }

  else
  {
    v6 = 0;
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v0[12] = v6;
  v27._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v27);

  v28._countAndFlagsBits = 0xD000000000000018;
  v28._object = 0x80000000000B39C0;
  sub_A46D4(v28);
  sub_810C4(v0[10], v0[11], 0xD000000000000034, 0x80000000000B3910, 0xD000000000000022, 0x80000000000B39E0);

  (*(v8 + 8))(v7, v9);
  if (v4 && (v10 = v0[14], sub_1BF68(v10)))
  {
    v11 = v0[14] & 0xC000000000000001;
    sub_1BF70(0, v11 == 0, v10);
    if (v11)
    {
      v12 = sub_A4B74();
    }

    else
    {
      v12 = *(v10 + 32);
    }

    v13 = v12;
    v0[20] = v12;
    v14 = MapsSuggestionsMostRecentLocation();
    v0[21] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = v0[15];
      v17 = swift_allocObject();
      v0[22] = v17;
      v17[2] = v16;
      v17[3] = v13;
      v17[4] = v15;
      v18 = v16;
      v19 = v13;
      v20 = v15;
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_7D61C;

      return sub_3B580(&unk_AAFC0, v17, 0xD000000000000022, 0x80000000000B39E0, 2.0);
    }
  }

  else
  {
    sub_810AC(0xD000000000000019, 0x80000000000B3A10, 0xD000000000000034, 0x80000000000B3910, 0xD000000000000022, 0x80000000000B39E0);
  }

  v23 = v0[18];
  v24 = v0[13];
  v24[2] = 0u;
  v24[3] = 0u;
  *v24 = 0u;
  v24[1] = 0u;

  sub_AA9C();

  return v25();
}

uint64_t sub_7D61C()
{
  sub_AB40();
  v3 = v2;
  sub_AAA8();
  v5 = v4;
  sub_25540();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  sub_5930();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (!v0)
  {
    v11 = *(v5 + 176);

    *(v5 + 200) = v3 & 1;
  }

  sub_40210();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_7D738()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  sub_A4B54(47);

  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_A46D4(v3);

  sub_810C4(0xD00000000000002DLL, 0x80000000000B3A50, 0xD000000000000034, 0x80000000000B3910, 0xD000000000000022, 0x80000000000B39E0);

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  sub_7DF14(v6, v0 + 16);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);

  v7 = *(v0 + 144);
  v8 = *(v0 + 104);
  *v8 = v14;
  v8[1] = v13;
  v8[2] = v12;
  v8[3] = v11;

  sub_AA9C();

  return v9();
}

uint64_t sub_7D8AC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  sub_81094(0xD000000000000016, 0x80000000000B3A30, 0xD000000000000034, 0x80000000000B3910, 0xD000000000000022, 0x80000000000B39E0);
  if (qword_DAA78 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 192);
  sub_7A124(1, qword_E0DF8, unk_E0E00, byte_E0E08, qword_E0E10);

  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_7DF14(v5, v0 + 16);
  v13 = *(v0 + 16);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  v10 = *(v0 + 64);

  v6 = *(v0 + 144);
  v7 = *(v0 + 104);
  *v7 = v13;
  v7[1] = v12;
  v7[2] = v11;
  v7[3] = v10;

  sub_AA9C();

  return v8();
}

uint64_t sub_7DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_18380(a3, v23 - v10);
  v12 = sub_A4814();
  v13 = sub_CF2C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_183F0(v11);
  }

  else
  {
    sub_A4804();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_A47C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_A4674() + 32;

      sub_4BF0(&qword_DC738, &qword_AAF90);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_183F0(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_183F0(a3);
  sub_4BF0(&qword_DC738, &qword_AAF90);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_7DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_7DC88, 0, 0);
}

uint64_t sub_7DC88()
{
  sub_AB40();
  v1 = v0[3];
  v2 = type metadata accessor for ETARequesterService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v0[6] = v5;
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin19ETARequesterService_logger;
  v7 = qword_DA9F8;
  v8 = v1;
  if (v7 == -1)
  {
    v9 = v8;
  }

  else
  {
    sub_81074();
    v9 = v0[3];
  }

  v10 = sub_A43D4();
  sub_48A4(v10, qword_E0C18);
  sub_18594(v10);
  (*(v11 + 16))(v5 + v6);
  *(v5 + 16) = v9;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_7DDC0;
  v14 = v0[4];
  v13 = v0[5];

  return sub_66E9C(v14, v13);
}

uint64_t sub_7DDC0()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7DEB0()
{
  sub_5950();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  *v3 = v1;
  sub_AA9C();

  return v4();
}

void sub_7DF14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v4)
  {
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v21 = sub_A43D4();
    sub_48A4(v21, qword_E0A28);
    v22 = 0x6620746F6E6E6143;
    v23 = 0xEF41544520646E69;
    goto LABEL_21;
  }

  v5 = v4;
  [v4 seconds];
  v7 = v6;

  if (v7 <= 600.0)
  {
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v24 = sub_A43D4();
    sub_48A4(v24, qword_E0A28);
    sub_A4B54(45);
    v30._countAndFlagsBits = 0x20666F20415445;
    v30._object = 0xE700000000000000;
    sub_A46D4(v30);
    sub_A48A4();
    v31._countAndFlagsBits = 0x7365726874203C20;
    v31._object = 0xEE00203A646C6F68;
    sub_A46D4(v31);
    sub_A48A4();
    v32._countAndFlagsBits = 0xD000000000000014;
    v32._object = 0x80000000000B3AA0;
    sub_A46D4(v32);
    sub_82B54(0, 0xE000000000000000, 0xD000000000000034, 0x80000000000B3910, 0xD000000000000016, 0x80000000000B3A80);

    goto LABEL_22;
  }

  v8 = off_DDE58;

  v9 = sub_7B710([v2 type], v8);

  if (!v9)
  {
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v25 = sub_A43D4();
    sub_48A4(v25, qword_E0A28);
    v26 = ". Not displaying ETA";
    v22 = 0xD000000000000015;
    goto LABEL_20;
  }

  v10 = [v2 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v10 || (v11 = v10, LODWORD(v12) = [v10 transportType], v11, (sub_56D28(v12, objc_msgSend(v2, "type")) & 1) == 0))
  {
    if (qword_DA970 != -1)
    {
      swift_once();
    }

    v27 = sub_A43D4();
    sub_48A4(v27, qword_E0A28);
    v26 = "EntryType not allowed";
    v22 = 0xD000000000000024;
LABEL_20:
    v23 = v26 | 0x8000000000000000;
LABEL_21:
    sub_82B54(v22, v23, 0xD000000000000034, 0x80000000000B3910, 0xD000000000000016, 0x80000000000B3A80);
LABEL_22:
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v28 = 0;
    v2 = 0;
    v12 = 0;
    v7 = 0.0;
    goto LABEL_23;
  }

  v13 = [v2 undecoratedTitle];
  v14 = sub_A45F4();
  v16 = v15;

  v17 = [v2 ETAForKey:@"MapsSuggestionsETAKey"];
  if (v17)
  {
    v18 = sub_80BFC(v17);
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v28 = [v2 type];
  v12 = v12;
  v29 = v2;
LABEL_23:
  *a2 = v7;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v28;
  *(a2 + 56) = v2;
}

BOOL sub_7E414(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFB88;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_7E468@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7E414(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_7E49C@<X0>(void *a1@<X8>)
{
  result = sub_7E3F8();
  *a1 = 0xD00000000000001ALL;
  a1[1] = v3;
  return result;
}

uint64_t sub_7E4EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7E524()
{
  sub_AB40();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_79680(v4);

  return sub_7C3BC(v5);
}

unint64_t sub_7E5C0()
{
  result = qword_DF620;
  if (!qword_DF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF620);
  }

  return result;
}

id sub_7E614(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_7E6B8;
  v6[3] = &unk_D26E8;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithBlock:v3];
  _Block_release(v3);

  return v4;
}

uint64_t sub_7E6B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_7E710()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7E758()
{
  sub_AB40();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_79680(v5);

  return sub_7DC64(v6, v7, v3, v4);
}

BOOL sub_7E7FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_A4F14();
  sub_A46A4();
  v9 = sub_A4F44();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_A4E44() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_7F7F8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_7E948(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_A4F14();
  sub_13894(a2);
  sub_A46A4();

  v7 = sub_A4F44();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE900000000000065;
      v12 = 0x6E61636972727568;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v11 = 0xE700000000000000;
          v12 = 0x6F64616E726F74;
          break;
        case 2:
          v12 = 0x6C616369706F7274;
          v11 = 0xED00006D726F7453;
          break;
        case 3:
          v11 = 0xE800000000000000;
          v12 = 0x6472617A7A696C62;
          break;
        case 4:
          v11 = 0xE400000000000000;
          v12 = 1818845544;
          break;
        case 5:
          v12 = 0x737265646E756874;
          v13 = 1836216180;
          goto LABEL_27;
        case 6:
          v11 = 0xE500000000000000;
          v12 = 0x7465656C73;
          break;
        case 7:
          v11 = 0xE500000000000000;
          v14 = 2003791475;
          goto LABEL_23;
        case 8:
          v12 = 0x53676E69776F6C62;
          v15 = 7827310;
          goto LABEL_25;
        case 9:
          v11 = 0xE500000000000000;
          v14 = 1852399986;
          goto LABEL_23;
        case 0xA:
          v11 = 0xE500000000000000;
          v14 = 1802464627;
          goto LABEL_23;
        case 0xB:
          v11 = 0xE400000000000000;
          v12 = 1953723748;
          break;
        case 0xC:
          v11 = 0xE500000000000000;
          v14 = 1684957559;
          goto LABEL_23;
        case 0xD:
          v11 = 0xE500000000000000;
          v14 = 1734831974;
LABEL_23:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v11 = 0xE400000000000000;
          v12 = 1702519144;
          break;
        case 0xF:
          v11 = 0xE600000000000000;
          v12 = 0x7964756F6C63;
          break;
        case 0x10:
          v12 = 0x6C43796C74726170;
          v13 = 2036626799;
          goto LABEL_27;
        case 0x11:
          v11 = 0xE500000000000000;
          v12 = 0x7261656C63;
          break;
        case 0x12:
          v11 = 0xE400000000000000;
          v12 = 1684828003;
          break;
        case 0x13:
          v11 = 0xE300000000000000;
          v12 = 7630696;
          break;
        case 0x14:
          v12 = 0x6F6C43646578696DLL;
          v15 = 7955573;
LABEL_25:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v11 = 0xEA00000000007261;
          v12 = 0x656C43646578696DLL;
          break;
        case 0x16:
          v12 = 0x6C69617641746F6ELL;
          v13 = 1701601889;
LABEL_27:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v16 = 0x6E61636972727568;
      v17 = 0xE900000000000065;
      switch(a2)
      {
        case 1:
          v17 = 0xE700000000000000;
          v16 = 0x6F64616E726F74;
          break;
        case 2:
          v16 = 0x6C616369706F7274;
          v17 = 0xED00006D726F7453;
          break;
        case 3:
          v17 = 0xE800000000000000;
          v16 = 0x6472617A7A696C62;
          break;
        case 4:
          v17 = 0xE400000000000000;
          v16 = 1818845544;
          break;
        case 5:
          v16 = 0x737265646E756874;
          v18 = 1836216180;
          goto LABEL_53;
        case 6:
          v17 = 0xE500000000000000;
          v16 = 0x7465656C73;
          break;
        case 7:
          v17 = 0xE500000000000000;
          v19 = 2003791475;
          goto LABEL_49;
        case 8:
          v16 = 0x53676E69776F6C62;
          v20 = 7827310;
          goto LABEL_51;
        case 9:
          v17 = 0xE500000000000000;
          v19 = 1852399986;
          goto LABEL_49;
        case 10:
          v17 = 0xE500000000000000;
          v19 = 1802464627;
          goto LABEL_49;
        case 11:
          v17 = 0xE400000000000000;
          v16 = 1953723748;
          break;
        case 12:
          v17 = 0xE500000000000000;
          v19 = 1684957559;
          goto LABEL_49;
        case 13:
          v17 = 0xE500000000000000;
          v19 = 1734831974;
LABEL_49:
          v16 = v19 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v17 = 0xE400000000000000;
          v16 = 1702519144;
          break;
        case 15:
          v17 = 0xE600000000000000;
          v16 = 0x7964756F6C63;
          break;
        case 16:
          v16 = 0x6C43796C74726170;
          v18 = 2036626799;
          goto LABEL_53;
        case 17:
          v17 = 0xE500000000000000;
          v16 = 0x7261656C63;
          break;
        case 18:
          v17 = 0xE400000000000000;
          v16 = 1684828003;
          break;
        case 19:
          v17 = 0xE300000000000000;
          v16 = 7630696;
          break;
        case 20:
          v16 = 0x6F6C43646578696DLL;
          v20 = 7955573;
LABEL_51:
          v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v17 = 0xEA00000000007261;
          v16 = 0x656C43646578696DLL;
          break;
        case 22:
          v16 = 0x6C69617641746F6ELL;
          v18 = 1701601889;
LABEL_53:
          v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v12 == v16 && v11 == v17)
      {
        break;
      }

      v22 = sub_A4E44();

      if (v22)
      {
        goto LABEL_63;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

LABEL_63:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_61:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    sub_7F960(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_7EF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_A4AE4(*(*v2 + 40));
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_80E08(a2, v17);
      v16 = *v3;
      sub_7FFFC(v17, v8, isUniquelyReferenced_nonNull_native);
      *v3 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    sub_80E08(*(v5 + 48) + 40 * v8, v17);
    v10 = sub_A4AF4();
    sub_80E64(v17);
    if (v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  sub_80E64(a2);
  sub_80E08(*(v5 + 48) + 40 * v8, a1);
  return v9 == 0;
}

uint64_t sub_7F0D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DF658, &unk_AAFF0);
  result = sub_A4B24();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_92BFC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_A4F14();
    sub_A46A4();
    result = sub_A4F44();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_7F334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DE7E8, &unk_AA270);
  result = sub_A4B24();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_92BFC(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_A4F14();
    sub_13894(v17);
    sub_A46A4();

    result = sub_A4F44();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_7F59C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DF648, &unk_AAFE0);
  result = sub_A4B24();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_92BFC(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v29 = *v17;
    v30 = *(v17 + 16);
    v31 = *(v17 + 32);
    result = sub_A4AE4(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v6 + 48) + 40 * v21;
    *v26 = v29;
    *(v26 + 16) = v30;
    *(v26 + 32) = v31;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_7F7F8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_7F0D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_80568(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_A4F14();
      sub_A46A4();
      result = sub_A4F44();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_A4E44() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_8015C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_A4E94();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int sub_7F960(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_7F334(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_802B4();
        goto LABEL_68;
      }

      sub_8079C(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_A4F14();
    sub_13894(v6);
    sub_A46A4();

    result = sub_A4F44();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        v13 = 0xE900000000000065;
        v14 = 0x6E61636972727568;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE700000000000000;
            v14 = 0x6F64616E726F74;
            break;
          case 2:
            v14 = 0x6C616369706F7274;
            v13 = 0xED00006D726F7453;
            break;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x6472617A7A696C62;
            break;
          case 4:
            v13 = 0xE400000000000000;
            v14 = 1818845544;
            break;
          case 5:
            v14 = 0x737265646E756874;
            v15 = 1836216180;
            goto LABEL_34;
          case 6:
            v13 = 0xE500000000000000;
            v14 = 0x7465656C73;
            break;
          case 7:
            v13 = 0xE500000000000000;
            v16 = 2003791475;
            goto LABEL_30;
          case 8:
            v14 = 0x53676E69776F6C62;
            v17 = 7827310;
            goto LABEL_32;
          case 9:
            v13 = 0xE500000000000000;
            v16 = 1852399986;
            goto LABEL_30;
          case 0xA:
            v13 = 0xE500000000000000;
            v16 = 1802464627;
            goto LABEL_30;
          case 0xB:
            v13 = 0xE400000000000000;
            v14 = 1953723748;
            break;
          case 0xC:
            v13 = 0xE500000000000000;
            v16 = 1684957559;
            goto LABEL_30;
          case 0xD:
            v13 = 0xE500000000000000;
            v16 = 1734831974;
LABEL_30:
            v14 = v16 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
            break;
          case 0xE:
            v13 = 0xE400000000000000;
            v14 = 1702519144;
            break;
          case 0xF:
            v13 = 0xE600000000000000;
            v14 = 0x7964756F6C63;
            break;
          case 0x10:
            v14 = 0x6C43796C74726170;
            v15 = 2036626799;
            goto LABEL_34;
          case 0x11:
            v13 = 0xE500000000000000;
            v14 = 0x7261656C63;
            break;
          case 0x12:
            v13 = 0xE400000000000000;
            v14 = 1684828003;
            break;
          case 0x13:
            v13 = 0xE300000000000000;
            v14 = 7630696;
            break;
          case 0x14:
            v14 = 0x6F6C43646578696DLL;
            v17 = 7955573;
LABEL_32:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0x15:
            v14 = 0x656C43646578696DLL;
            v13 = 0xEA00000000007261;
            break;
          case 0x16:
            v14 = 0x6C69617641746F6ELL;
            v15 = 1701601889;
LABEL_34:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v18 = 0x6E61636972727568;
        v19 = 0xE900000000000065;
        switch(v6)
        {
          case 1:
            v19 = 0xE700000000000000;
            v18 = 0x6F64616E726F74;
            break;
          case 2:
            v18 = 0x6C616369706F7274;
            v19 = 0xED00006D726F7453;
            break;
          case 3:
            v19 = 0xE800000000000000;
            v18 = 0x6472617A7A696C62;
            break;
          case 4:
            v19 = 0xE400000000000000;
            v18 = 1818845544;
            break;
          case 5:
            v18 = 0x737265646E756874;
            v20 = 1836216180;
            goto LABEL_60;
          case 6:
            v19 = 0xE500000000000000;
            v18 = 0x7465656C73;
            break;
          case 7:
            v19 = 0xE500000000000000;
            v21 = 2003791475;
            goto LABEL_56;
          case 8:
            v18 = 0x53676E69776F6C62;
            v22 = 7827310;
            goto LABEL_58;
          case 9:
            v19 = 0xE500000000000000;
            v21 = 1852399986;
            goto LABEL_56;
          case 10:
            v19 = 0xE500000000000000;
            v21 = 1802464627;
            goto LABEL_56;
          case 11:
            v19 = 0xE400000000000000;
            v18 = 1953723748;
            break;
          case 12:
            v19 = 0xE500000000000000;
            v21 = 1684957559;
            goto LABEL_56;
          case 13:
            v19 = 0xE500000000000000;
            v21 = 1734831974;
LABEL_56:
            v18 = v21 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
            break;
          case 14:
            v19 = 0xE400000000000000;
            v18 = 1702519144;
            break;
          case 15:
            v19 = 0xE600000000000000;
            v18 = 0x7964756F6C63;
            break;
          case 16:
            v18 = 0x6C43796C74726170;
            v20 = 2036626799;
            goto LABEL_60;
          case 17:
            v19 = 0xE500000000000000;
            v18 = 0x7261656C63;
            break;
          case 18:
            v19 = 0xE400000000000000;
            v18 = 1684828003;
            break;
          case 19:
            v19 = 0xE300000000000000;
            v18 = 7630696;
            break;
          case 20:
            v18 = 0x6F6C43646578696DLL;
            v22 = 7955573;
LABEL_58:
            v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 21:
            v18 = 0x656C43646578696DLL;
            v19 = 0xEA00000000007261;
            break;
          case 22:
            v18 = 0x6C69617641746F6ELL;
            v20 = 1701601889;
LABEL_60:
            v19 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        if (v14 == v18 && v13 == v19)
        {
          break;
        }

        v24 = sub_A4E44();

        if (v24)
        {
          goto LABEL_72;
        }

        a2 = (a2 + 1) & v12;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

LABEL_71:

LABEL_72:
      sub_A4E94();
      __break(1u);
      JUMPOUT(0x7FF44);
    }
  }

LABEL_68:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v6;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_71;
  }

  *(v25 + 16) = v28;
  return result;
}

Swift::Int sub_7FFFC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_7F59C(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_809D4(v7 + 1);
LABEL_10:
      v15 = *v3;
      result = sub_A4AE4(*(*v3 + 40));
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_80E08(*(v15 + 48) + 40 * a2, v18);
        v17 = sub_A4AF4();
        sub_80E64(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_803F4();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_A4E94();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

void *sub_8015C()
{
  v1 = v0;
  sub_4BF0(&qword_DF658, &unk_AAFF0);
  v2 = *v0;
  v3 = sub_A4B14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_802B4()
{
  v1 = v0;
  sub_4BF0(&qword_DE7E8, &unk_AA270);
  v2 = *v0;
  v3 = sub_A4B14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_803F4()
{
  v1 = v0;
  sub_4BF0(&qword_DF648, &unk_AAFE0);
  v2 = *v0;
  v3 = sub_A4B14();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_80E08(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_80568(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DF658, &unk_AAFF0);
  result = sub_A4B24();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_A4F14();

        sub_A46A4();
        result = sub_A4F44();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_8079C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DE7E8, &unk_AA270);
  result = sub_A4B24();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_A4F14();
        sub_13894(v16);
        sub_A46A4();

        result = sub_A4F44();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_809D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_4BF0(&qword_DF648, &unk_AAFE0);
  result = sub_A4B24();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        sub_80E08(*(v3 + 48) + 40 * (v13 | (v7 << 6)), v28);
        result = sub_A4AE4(*(v6 + 40));
        v16 = -1 << *(v6 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v24 = *(v6 + 48) + 40 * v19;
        v25 = v28[0];
        v26 = v28[1];
        *(v24 + 32) = v29;
        *v24 = v25;
        *(v24 + 16) = v26;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_80BFC(void *a1)
{
  v2 = [a1 longTrafficString];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_A45F4();

  return v3;
}

uint64_t sub_80C6C()
{
  v1 = sub_4BF0(&qword_DF628, &qword_AAFC8);
  sub_18594(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_80CFC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_4BF0(&qword_DF628, &qword_AAFC8) - 8) + 80);

  return sub_7CE3C(a1, a2);
}

uint64_t sub_80D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_80DA0()
{
  result = qword_DF640;
  if (!qword_DF640)
  {
    sub_29D54(255, &qword_DF638, MapsSuggestionsBlockFilter_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF640);
  }

  return result;
}

unint64_t sub_80EB8()
{
  result = qword_DF650;
  if (!qword_DF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsSuggestionFetcherError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x80FA8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_80FF8()
{
  result = qword_DF660;
  if (!qword_DF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF660);
  }

  return result;
}

uint64_t sub_81054()
{

  return swift_once();
}

uint64_t sub_81074()
{

  return swift_once();
}

void sub_810DC(uint64_t a1, unint64_t a2)
{
  if (qword_DA9D0 != -1)
  {
    sub_82CC8();
    swift_once();
  }

  v4 = sub_A43D4();
  sub_48A4(v4, qword_E0BA0);

  v5 = sub_A43B4();
  v6 = sub_A4934();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_8257C(a1, a2, &v15);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_761C(v8);
    sub_82CDC();
    sub_82CDC();
  }

  v9 = sub_A43B4();
  v10 = sub_A4934();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "FatalError", v11, 2u);
    sub_82CDC();
  }

  sub_82CA4();
  sub_8130C(a1, a2, v12, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70, v13);

  sub_82D08();
  v14 = static FatalError.fatalErrorClosure;

  v14();
}

void sub_8130C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t))
{
  v12 = sub_4BF0(&qword_DF678, &qword_AB1C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v59 - v15;
  v17 = a7(v14);
  v65 = sub_A43B4();
  if (os_log_type_enabled(v65, v17))
  {
    v61 = a6;
    v62 = a5;
    v60 = v17;
    v63 = a1;
    v64 = a2;
    v18 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v72 = v59;
    *v18 = 136315650;
    v19 = sub_A45C4();
    v20 = [v19 lastPathComponent];

    v21 = sub_A45F4();
    v23 = v22;

    v70 = v21;
    v71 = v23;
    v68 = v21;
    v69 = v23;
    v66 = 46;
    v67 = 0xE100000000000000;
    sub_A2F34();
    v24 = sub_82CF4();
    sub_A924(v24, v25, v26, v27);
    sub_10760();

    v34 = sub_82C74(v28, v29, v30, v31, v32, v33, &type metadata for String);
    LOBYTE(v20) = v35;
    sub_82AEC(v16);

    if ((v20 & 1) == 0)
    {
      v36 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v36 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v36 < v34 >> 14)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      sub_A4694();
    }

    v37 = sub_8257C(v70, v71, &v72);

    *(v18 + 4) = v37;
    *(v18 + 12) = 2080;
    v38 = v62;
    v70 = v62;
    v71 = v61;
    v68 = v62;
    v69 = v61;
    v66 = 40;
    v67 = 0xE100000000000000;
    v39 = sub_82CF4();
    v41 = v40;
    sub_A924(v39, v42, v43, v44);

    v51 = sub_82C74(v45, v46, v47, v48, v49, v50, &type metadata for String);
    v53 = v52;
    sub_82AEC(v16);
    v55 = v63;
    v54 = v64;
    if (v53)
    {
LABEL_12:
      v57 = sub_8257C(v70, v71, &v72);

      *(v18 + 14) = v57;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_8257C(v55, v54, &v72);
      _os_log_impl(&dword_0, v65, v60, "[%s#%s] %s", v18, 0x20u);
      swift_arrayDestroy();
      sub_82CDC();
      sub_82CDC();

      return;
    }

    v56 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v56 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v56 >= v51 >> 14)
    {
      sub_A4694();
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v58 = v65;
}