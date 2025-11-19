uint64_t sub_18C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_190AC;

  return ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)(a1, a2, a3, a4, a5);
}

uint64_t sub_18FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C6020, &qword_1712D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19040(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6020, &qword_1712D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WellnessCATs()
{
  result = qword_1C6028;
  if (!qword_1C6028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1913C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1712E0;
  *(v8 + 32) = 0x6570795461746164;
  *(v8 + 40) = 0xE800000000000000;
  sub_1955C(a1, v7, &qword_1C5800, &unk_16F510);
  v9 = sub_16D5CC();
  if (sub_369C(v7, 1, v9) == 1)
  {
    sub_C878(v7, &qword_1C5800, &unk_16F510);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    v10 = sub_9910((v8 + 48));
    (*(*(v9 - 8) + 32))(v10, v7, v9);
  }

  *(v8 + 80) = 7368801;
  *(v8 + 88) = 0xE300000000000000;
  if (a2)
  {
    v11 = sub_16D5AC();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;

  sub_16D57C();
}

uint64_t sub_19344(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_19398(a1, a2);
}

uint64_t sub_19398(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1955C(a1, &v14 - v11, &qword_1C57F8, &unk_172510);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v12;
}

uint64_t sub_19524()
{
  v0 = sub_16D59C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_1955C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL sub_195C8(uint64_t a1)
{
  v2 = sub_16C80C();
  v3 = sub_42F0(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v70 = v8 - v7;
  v9 = sub_16C7DC();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_4304();
  v17 = v16 - v15;
  v18 = sub_16DBEC();
  v19 = sub_42F0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v67 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v63 = &v59 - v27;
  __chkstk_darwin(v26);
  v29 = &v59 - v28;
  v30 = sub_16DBBC();
  sub_8B48();
  v31 = *(v21 + 16);
  v65 = v21 + 16;
  v66 = v30;
  v64 = v31;
  v31(v29, v30, v18);
  (*(v12 + 16))(v17, a1, v9);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v62 = v18;
    v35 = v34;
    v60 = swift_slowAlloc();
    v71 = v60;
    *v35 = 136315138;
    sub_1B8D0(&qword_1C5998, &type metadata accessor for Input);
    v36 = sub_16E68C();
    v61 = a1;
    v37 = v21;
    v39 = v38;
    (*(v12 + 8))(v17, v9);
    v40 = sub_3AB7C(v36, v39, &v71);
    v21 = v37;

    *(v35 + 4) = v40;
    _os_log_impl(&def_259DC, v32, v33, "LoggingCorrectionsFlow on(correction:) for input: %s", v35, 0xCu);
    sub_2D64(v60);
    sub_8A2C();
    v18 = v62;
    sub_8A2C();
  }

  else
  {

    (*(v12 + 8))(v17, v9);
  }

  v41 = *(v21 + 8);
  v41(v29, v18);
  v42 = v70;
  sub_16C7CC();
  v44 = v68;
  v43 = v69;
  v45 = (*(v68 + 88))(v42, v69);
  v46 = enum case for Parse.uso(_:);
  if (v45 == enum case for Parse.uso(_:))
  {
    (*(v44 + 8))(v42, v43);
    v47 = v66;
    sub_1B9B4();
    v48 = v63;
    v64(v63, v47, v18);
    v49 = sub_16DBDC();
    v50 = sub_16E36C();
    if (os_log_type_enabled(v49, v50))
    {
      *sub_1BA38() = 0;
      sub_1BA70(&def_259DC, v51, v52, "LoggingCorrectionsFlow got USO parse...");
      sub_8A2C();
    }

    v41(v48, v18);
  }

  else
  {
    v53 = v66;
    sub_8B48();
    v64(v67, v53, v18);
    v54 = sub_16DBDC();
    v55 = sub_16E36C();
    if (os_log_type_enabled(v54, v55))
    {
      *sub_1BA38() = 0;
      sub_1BA70(&def_259DC, v56, v57, "LoggingCorrectionsFlow encountered non-uso parse. Not handling.");
      v42 = v70;
      sub_8A2C();
    }

    v41(v67, v18);
    (*(v44 + 8))(v42, v43);
  }

  return v45 == v46;
}

uint64_t sub_19B1C()
{
  v0 = sub_16DBEC();
  v1 = sub_42F0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBBC();
  sub_8B48();
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1BA38();
    *v12 = 0;
    _os_log_impl(&def_259DC, v10, v11, "LoggingCorrectionsFlow on(input:) - This is unexpected", v12, 2u);
    sub_8A2C();
  }

  (*(v3 + 8))(v8, v0);
  return 0;
}

uint64_t sub_19C5C()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_16DBEC();
  v1[14] = v3;
  sub_888C(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_19D20()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = *(v2 + 16);
  sub_16DBBC();
  v4 = (v1 + 16);
  v5 = v0[14];
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = v0[17];
      sub_1B9B4();
      v7 = *v4;
      v8 = sub_1B9F0();
      v9(v8);
      v10 = sub_16DBDC();
      v11 = sub_16E36C();
      if (sub_1BA1C(v11))
      {
        v12 = sub_1BA38();
        sub_1BA50(v12);
        sub_1B9D0(&def_259DC, v13, v14, "LoggingCorrectionsFlow Execute - Correcting");
        sub_1BA00();
      }

      v15 = v0[17];
      v16 = v0[14];
      v17 = v0[15];

      v18 = *(v17 + 8);
      v19 = sub_C9F8();
      v20(v19);
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_1A014;
      v22 = v0[12];
      v23 = v0[13];

      return sub_1A1F0();
    }

    v44 = v0[16];
    sub_1B9B4();
    v45 = *v4;
    v46 = sub_1B9F0();
    v47(v46);
    v48 = sub_16DBDC();
    v49 = sub_16E36C();
    if (sub_1BA1C(v49))
    {
      v50 = sub_1BA38();
      sub_1BA50(v50);
      sub_1B9D0(&def_259DC, v51, v52, "LoggingCorrectionsFlow Execute - Done");
      sub_1BA00();
    }

    v54 = v0[15];
    v53 = v0[16];
    v55 = v0[14];
    v56 = v0[12];

    v57 = *(v54 + 8);
    v58 = sub_C9F8();
    v59(v58);
    sub_16C50C();
  }

  else
  {
    v25 = v0[18];
    sub_1B9B4();
    v26 = *v4;
    v27 = sub_1B9F0();
    v28(v27);
    v29 = sub_16DBDC();
    v30 = sub_16E36C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "LoggingCorrectionsFlow Execute - Ready");
      sub_1BA00();
    }

    v34 = v0[18];
    v35 = v0[14];
    v36 = v0[15];
    v37 = v0[12];
    v38 = v0[13];

    v39 = *(v36 + 8);
    v40 = sub_C9F8();
    v41(v40);
    *(v2 + 16) = 1;
    v0[11] = v38;
    type metadata accessor for MedsLoggingCorrectionsFlow();
    sub_1B99C();
    sub_1B8D0(v42, v43);
    sub_16C4DC();
  }

  v61 = v0[17];
  v60 = v0[18];
  v62 = v0[16];

  sub_C9BC();

  return v63();
}

uint64_t sub_1A014()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1A0F8()
{
  sub_8A88();
  *(v0[13] + 16) = 2;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  sub_C9BC();

  return v4();
}

uint64_t sub_1A170()
{
  type metadata accessor for MedsLoggingCorrectionsFlow();
  sub_1B99C();
  sub_1B8D0(v0, v1);
  return sub_16C33C();
}

uint64_t sub_1A1F0()
{
  sub_8A88();
  v1[77] = v0;
  v1[76] = v2;
  v3 = sub_16C46C();
  v1[78] = v3;
  sub_888C(v3);
  v1[79] = v4;
  v6 = *(v5 + 64) + 15;
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[82] = v7;
  sub_888C(v7);
  v1[83] = v8;
  v10 = *(v9 + 64) + 15;
  v1[84] = swift_task_alloc();
  v11 = sub_16C71C();
  v1[85] = v11;
  sub_888C(v11);
  v1[86] = v12;
  v14 = *(v13 + 64) + 15;
  v1[87] = swift_task_alloc();
  v15 = sub_16DBEC();
  v1[88] = v15;
  sub_888C(v15);
  v1[89] = v16;
  v18 = *(v17 + 64) + 15;
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v19 = sub_17960();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1A3CC()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[77];
  v5 = [objc_allocWithZone(sub_16D87C()) init];
  v0[94] = v5;
  v6 = *(v4 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_matchingMeds);
  sub_16D86C();
  isa = sub_16E2BC().super.isa;
  [v5 setMatchingMeds:isa];

  v8 = sub_16DBBC();
  v0[95] = v8;
  sub_8B48();
  v9 = *(v2 + 16);
  v0[96] = v9;
  v0[97] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v3);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1BA38();
    sub_1BA50(v12);
    _os_log_impl(&def_259DC, v10, v11, "LoggingCorrectionsFlow doCorrection - Undoing", v3, 2u);
    sub_1BA00();
  }

  v13 = v0[93];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[77];

  v17 = *(v14 + 8);
  v0[98] = v17;
  v17(v13, v15);
  v18 = *(v16 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_intentHandler);
  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = sub_1A634;
  v19 = swift_continuation_init();
  v0[57] = sub_2440(&qword_1C6248, &qword_171598);
  v0[50] = _NSConcreteStackBlock;
  v0[51] = 1107296256;
  v0[52] = sub_53C4;
  v0[53] = &unk_1B9918;
  v0[54] = v19;
  [v18 handleUndoMeds:v5 completion:v0 + 50];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1A634()
{
  sub_8A88();
  v4 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_1A708, 0, 0);
}

uint64_t sub_1A708()
{
  v48 = v0;
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[92];
  v5 = v0[88];
  v6 = v0[73];
  v0[99] = v6;
  sub_1B9B4();
  v7 = sub_1B9F0();
  v2(v7);
  v8 = v6;
  v9 = sub_16DBDC();
  v10 = sub_16E36C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&def_259DC, v9, v10, "LoggingCorrectionsFlow Received intent response: %@", v11, 0xCu);
    sub_1B918(v12, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  v14 = v0[98];
  v15 = v0[92];
  v16 = v0[88];
  v0[100] = (v0[89] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = v14(v15, v16);
  v18 = *(&stru_20.maxprot + (swift_isaMask & *v8));
  if ((v18)(v17) == 4)
  {
    v19 = v0[77];
    v20 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider;
    v0[101] = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider;
    v21 = *sub_2D20((v19 + v20 + 80), *(v19 + v20 + 104));
    v22 = swift_task_alloc();
    v0[102] = v22;
    *v22 = v0;
    v22[1] = sub_1AB4C;

    return sub_10C040();
  }

  else
  {
    v24 = v0[97];
    v25 = v0[96];
    v26 = v0[95];
    v27 = v0[90];
    v28 = v0[88];
    sub_1B9B4();
    v25(v27, v26, v28);
    v29 = v8;
    v30 = sub_16DBDC();
    v31 = sub_16E37C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[98];
    v34 = v0[90];
    v35 = v0[88];
    if (v32)
    {
      v45 = v0[88];
      v46 = v29;
      v36 = swift_slowAlloc();
      v44 = v34;
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      v0[74] = v18();
      v38 = sub_16E1EC();
      v40 = sub_3AB7C(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&def_259DC, v30, v31, "Intent handler failed with code: %s", v36, 0xCu);
      sub_2D64(v37);
      sub_8A2C();
      v29 = v46;
      sub_8A2C();

      v33(v44, v45);
    }

    else
    {

      v33(v34, v35);
    }

    v41 = v0[94];
    v42 = v0[76];
    sub_8284(v0[77] + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider, (v0 + 10));
    sub_82E0();
    sub_16C4EC();

    sub_8334((v0 + 10));
    sub_1B96C();

    sub_C9BC();

    return v43();
  }
}

uint64_t sub_1AB4C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *(v4 + 816);
  v7 = *v2;
  sub_C990();
  *v8 = v7;

  if (v1)
  {

    v9 = sub_1AF14;
  }

  else
  {
    *(v5 + 824) = a1;
    v9 = sub_1AC6C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1AC6C()
{
  v18 = v0[94];
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v14 = v0[84];
  v15 = v0[103];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[99];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v16 = (v8 + v0[101]);
  v17 = v0[76];
  (*(v2 + 104))(v1, enum case for CorrectionsExitValue.success(_:), v3);
  v9 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v2 + 40))(v8 + v9, v1, v3);
  swift_endAccess();
  sub_16C43C();
  (*(v6 + 16))(v5, v4, v7);
  sub_16C75C();
  (*(v6 + 8))(v4, v7);
  v10 = [v15 patternId];
  sub_16E1BC();

  sub_16C76C();
  v11 = v16[4];
  sub_2D20(v16, v16[3]);
  v0[75] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();
  sub_16C4FC();

  (*(v19 + 8))(v14, v20);
  sub_1B96C();

  sub_C9BC();

  return v12();
}

uint64_t sub_1AF14()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[91];
  v5 = v0[88];
  sub_1B9B4();
  v2(v4, v3, v5);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (sub_1BA1C(v7))
  {
    v8 = sub_1BA38();
    sub_1BA50(v8);
    sub_1B9D0(&def_259DC, v9, v10, "LoggingCorrectionsFlow Error executing pattern");
    sub_1BA00();
  }

  v11 = v0[101];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v22 = v0[94];
  v15 = v0[91];
  v16 = v0[88];
  v17 = v0[77];
  v18 = v0[76];

  v19 = sub_C9F8();
  v14(v19);
  sub_8284(v17 + v11, (v0 + 30));
  sub_82E0();
  sub_16C32C();
  sub_8334((v0 + 30));
  sub_16C4FC();

  sub_1B96C();

  sub_C9BC();

  return v20();
}

uint64_t sub_1B0AC()
{
  v1 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  v2 = sub_16C71C();
  sub_1BA5C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_kWellnessFlowPluginIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_matchingMeds);

  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_flowConfig));
  sub_C938(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_provider);
  v6 = *(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_intentHandler);
  swift_unknownObjectRelease();
  sub_1B918(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionInput, &qword_1C6250, &qword_1715A8);
  return v0;
}

uint64_t sub_1B174()
{
  sub_1B0AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MedsLoggingCorrectionsFlow()
{
  result = qword_1C60D8;
  if (!qword_1C60D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B220()
{
  v0 = sub_16C71C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B334();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B334()
{
  if (!qword_1C60E8)
  {
    sub_16C7DC();
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C60E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MedsLoggingCorrectionsFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MedsLoggingCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1B4E0);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MedsLoggingCorrectionsFlow.CorrectionsTask(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1B5B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B5F0()
{
  result = qword_1C6230;
  if (!qword_1C6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6230);
  }

  return result;
}

unint64_t sub_1B648()
{
  result = qword_1C6238;
  if (!qword_1C6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6238);
  }

  return result;
}

uint64_t sub_1B69C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18WellnessFlowPlugin26MedsLoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_16C71C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1B784()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return sub_19C5C();
}

uint64_t sub_1B820()
{
  type metadata accessor for MedsLoggingCorrectionsFlow();

  return sub_16C37C();
}

uint64_t sub_1B8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2440(a2, a3);
  sub_1BA5C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B96C()
{
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[87];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[80];
}

uint64_t sub_1B9B4()
{

  return swift_beginAccess();
}

void sub_1B9D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1BA00()
{
}

BOOL sub_1BA1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BA38()
{

  return swift_slowAlloc();
}

void sub_1BA70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1BAA0()
{
  sub_1C45C();

  return sub_16C33C();
}

uint64_t sub_1BAF4()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[10] = v7;
  sub_888C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[14] = v11;
  sub_888C(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1BC5C, 0, 0);
}

uint64_t sub_1BC5C()
{
  sub_8A88();
  v1 = *sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1BCFC;

  return sub_7A690(0);
}

uint64_t sub_1BCFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_1BFD4;
  }

  else
  {
    *(v4 + 144) = a1;
    v8 = sub_1BE20;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1BE20()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v18 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[5];
  v9 = v0[6];
  sub_16C45C();
  (*(v5 + 16))(v6, v4, v7);
  sub_16C75C();
  (*(v5 + 8))(v4, v7);
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  v11 = v9[4];
  sub_2D20(v9, v9[3]);
  sub_16C2FC();
  sub_16C4FC();

  (*(v3 + 8))(v2, v18);
  v12 = v0[16];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BFD4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_16DBBC();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E37C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Failed to execute appRestricted pattern", v7, 2u);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v11 = v0[5];

  (*(v9 + 8))(v8, v10);
  sub_16C50C();
  v12 = v0[16];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C1E8;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_1C1E8()
{
  sub_8A88();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_1C2DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_1BAF4();
}

uint64_t sub_1C374()
{
  sub_8A88();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_C990();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_1C45C()
{
  result = qword_1C6258;
  if (!qword_1C6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6258);
  }

  return result;
}

uint64_t sub_1C4B0(void *__src, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  memcpy((v7 + 16), __src, 0xA0uLL);
  sub_17464(a2, v7 + 176);
  sub_17464(a3, v7 + 216);
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  return v7;
}

uint64_t sub_1C538()
{
  v0 = sub_16DBEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "In MedNameDisambiguationStrategy's actionForInput().", v8, 2u);
    sub_8A2C();
  }

  (*(v1 + 8))(v4, v0);
  return sub_16C47C();
}

uint64_t sub_1C69C()
{
  sub_8A88();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64);
  v1[18] = sub_8BC0();
  v5 = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  v1[19] = v5;
  v6 = *(*(v5 - 8) + 64);
  v1[20] = sub_8BC0();
  v7 = sub_16C46C();
  v1[21] = v7;
  sub_888C(v7);
  v1[22] = v8;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[25] = v11;
  sub_888C(v11);
  v1[26] = v12;
  v14 = *(v13 + 64);
  v1[27] = sub_8BC0();
  v15 = sub_16DBEC();
  v1[28] = v15;
  sub_888C(v15);
  v1[29] = v16;
  v18 = *(v17 + 64);
  v1[30] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1C84C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BA38();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "MedNameDisambiguationStrategy: makePromptForDisambiguation", v7, 2u);
    sub_8A2C();
  }

  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];
  v32 = v0[19];
  v33 = v0[18];
  v29 = v0[27];
  v30 = v0[17];
  v31 = v0[16];

  (*(v9 + 8))(v8, v10);
  sub_16C44C();
  (*(v13 + 16))(v11, v12, v14);
  sub_16C75C();
  (*(v13 + 8))(v12, v14);
  sub_16C79C();
  sub_8388(v30 + 56, (v0 + 2));
  v16 = sub_2D20(v0 + 2, v0[5]);
  sub_2440(&qword_1C63E8, &unk_1717E0);
  v17 = sub_16C74C();
  v0[31] = v17;
  LOBYTE(v13) = *(v30 + 280);
  v18 = *v16;
  v19 = v32[12];
  v20 = sub_16D5CC();

  sub_214C(v15 + v19, 1, 1, v20);
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v15 + 9) = 65792;
  *(v15 + 16) = v17;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  *(v15 + 40) = 0;
  *(v15 + 48) = 1;
  *(v15 + v32[13]) = v13;
  v21 = v15 + v32[14];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v15 + v32[15];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = *(v30 + 256);
  v24 = *(v30 + 264);

  sub_16E23C();

  sub_214C(v33, 0, 1, v20);
  sub_8640(v33, v15 + v19);
  *(v15 + 40) = *(v30 + 272);
  *(v15 + 48) = 0;
  v25 = sub_79FFC();
  v0[32] = v25;
  v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v34 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = swift_task_alloc();
  v0[33] = v27;
  *v27 = v0;
  v27[1] = sub_1CBB0;

  return v34(0xD00000000000001CLL, 0x800000000017AE40, v25);
}

uint64_t sub_1CBB0()
{
  sub_8A88();
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 272) = v6;
  *(v7 + 280) = v0;

  sub_8ACC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1CCD4()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[17];
  sub_1E148(v0[20]);

  sub_2D64(v0 + 2);
  v5 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v4 + 176, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  sub_2D20(v0 + 7, v6);
  v8 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1CE14;
  v10 = v0[34];
  v11 = v0[27];
  v12 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v12, v10, v11, v6, v7);
}

uint64_t sub_1CE14()
{
  sub_8A88();
  v2 = *(*v1 + 288);
  v3 = *v1;
  sub_C990();
  *v4 = v3;
  *(v5 + 296) = v0;

  sub_8ACC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1CF18()
{
  v1 = v0[31];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[17];
  sub_1E148(v0[20]);

  (*(v3 + 8))(v2, v4);
  sub_2D64(v0 + 2);
  v6 = v0[35];
  sub_1E1C4();

  sub_C9BC();

  return v7();
}

uint64_t sub_1CFF4()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);

  (*(v3 + 8))(v2, v4);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v9();
}

uint64_t sub_1D0D4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 56));
  v4 = *(v0 + 296);
  sub_1E1C4();

  sub_C9BC();

  return v5();
}

uint64_t sub_1D198()
{
  sub_8A88();
  v0[83] = v1;
  v0[82] = v2;
  v3 = sub_16C7FC();
  v0[84] = v3;
  sub_888C(v3);
  v0[85] = v4;
  v6 = *(v5 + 64);
  v0[86] = sub_8BC0();
  v7 = sub_16C80C();
  v0[87] = v7;
  sub_888C(v7);
  v0[88] = v8;
  v10 = *(v9 + 64) + 15;
  v0[89] = swift_task_alloc();
  v0[90] = swift_task_alloc();
  v11 = sub_16DBEC();
  v0[91] = v11;
  sub_888C(v11);
  v0[92] = v12;
  v14 = *(v13 + 64) + 15;
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v0[95] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1D310()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BA38();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "MedNameDisambiguationStrategy: parseDisambiguationResponse", v7, 2u);
    sub_8A2C();
  }

  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v12 = *(v0 + 712);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = *(v0 + 664);

  v16 = *(v9 + 8);
  v16(v8, v10);
  sub_16C7CC();
  (*(v13 + 16))(v12, v11, v14);
  v94 = v16;
  if ((*(v13 + 88))(v12, v14) == enum case for Parse.directInvocation(_:))
  {
    v17 = *(v0 + 712);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    v20 = *(v0 + 672);
    (*(*(v0 + 704) + 96))(v17, *(v0 + 696));
    (*(v19 + 32))(v18, v17, v20);
    v21 = sub_16C7EC();
    if (v21)
    {
      sub_17400(0x656C756465686373, 0xEA00000000004449, v21, (v0 + 400));

      if (*(v0 + 424))
      {
        v22 = swift_dynamicCast();
        v23 = *(v0 + 632);
        if (v22)
        {
          v24 = *(v0 + 632);
        }

        else
        {
          v24 = 0;
        }

        if (v22)
        {
          v25 = *(v0 + 640);
        }

        else
        {
          v25 = 0;
        }

LABEL_17:
        v44 = *(v0 + 688);
        v45 = sub_16C7EC();
        if (v45)
        {
          sub_17400(0x697461636964656DLL, 0xEC00000044496E6FLL, v45, (v0 + 432));

          if (*(v0 + 456))
          {
            if (swift_dynamicCast())
            {
              v46 = *(v0 + 688);
              v92 = *(v0 + 608);
              v95 = *(v0 + 600);
              v47 = sub_16C7EC();
              if (v47)
              {
                sub_17400(0x6874676E65727473, 0xE800000000000000, v47, (v0 + 464));

                if (*(v0 + 488))
                {
                  v48 = swift_dynamicCast();
                  v49 = *(v0 + 648);
                  if (!v48)
                  {
                    v49 = 0;
                  }

                  v90 = v49;
                  v50 = v48 ^ 1;
LABEL_37:
                  v76 = *(v0 + 688);
                  v77 = sub_16C7EC();
                  if (v77)
                  {
                    sub_17400(0x6874676E65727473, 0xEC00000074696E55, v77, (v0 + 496));

                    if (*(v0 + 520))
                    {
                      v78 = swift_dynamicCast();
                      v79 = *(v0 + 616);
                      v80 = *(v0 + 624);
                      if (!v78)
                      {
                        v79 = 0;
                        v80 = 0;
                      }

                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    *(v0 + 496) = 0u;
                    *(v0 + 512) = 0u;
                  }

                  sub_C878(v0 + 496, &qword_1C63E0, &unk_1717D0);
                  v79 = 0;
                  v80 = 0;
LABEL_43:
                  v89 = *(v0 + 720);
                  v81 = *(v0 + 704);
                  v82 = *(v0 + 696);
                  v83 = *(v0 + 688);
                  v84 = *(v0 + 680);
                  v85 = *(v0 + 672);
                  v86 = *(v0 + 656);
                  *(v0 + 336) = v24;
                  *(v0 + 344) = v25;
                  *(v0 + 352) = v95;
                  *(v0 + 360) = v92;
                  *(v0 + 368) = v90;
                  *(v0 + 376) = v50;
                  *(v0 + 384) = v79;
                  *(v0 + 392) = v80;
                  sub_2440(&qword_1C63D8, &qword_1717C8);
                  sub_16C72C();
                  v87 = *(v0 + 352);
                  *(v0 + 272) = *(v0 + 336);
                  *(v0 + 288) = v87;
                  v88 = *(v0 + 384);
                  *(v0 + 304) = *(v0 + 368);
                  *(v0 + 320) = v88;
                  sub_C878(v0 + 272, &qword_1C63D8, &qword_1717C8);
                  (*(v84 + 8))(v83, v85);
                  (*(v81 + 8))(v89, v82);
                  goto LABEL_32;
                }
              }

              else
              {
                *(v0 + 464) = 0u;
                *(v0 + 480) = 0u;
              }

              sub_C878(v0 + 464, &qword_1C63E0, &unk_1717D0);
              v90 = 0;
              v50 = 1;
              goto LABEL_37;
            }

            goto LABEL_29;
          }
        }

        else
        {

          *(v0 + 432) = 0u;
          *(v0 + 448) = 0u;
        }

        sub_C878(v0 + 432, &qword_1C63E0, &unk_1717D0);
LABEL_29:
        v51 = *(v0 + 752);
        v52 = *(v0 + 728);
        sub_8B48();
        v53 = sub_1E1AC();
        v54(v53);
        v55 = sub_16DBDC();
        v56 = sub_16E36C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = sub_1BA38();
          *v57 = 0;
          _os_log_impl(&def_259DC, v55, v56, "error in parseDisambiguationResponse for medication name; could not unpack directInvocation.", v57, 2u);
          sub_8A2C();
        }

        v58 = *(v0 + 752);
        v59 = *(v0 + 736);
        v60 = *(v0 + 728);
        v61 = *(v0 + 704);
        v91 = *(v0 + 696);
        v93 = *(v0 + 720);
        v62 = *(v0 + 688);
        v63 = *(v0 + 680);
        v64 = *(v0 + 672);
        v65 = *(v0 + 656);

        v94(v58, v60);
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        *(v0 + 240) = 0;
        *(v0 + 248) = 1;
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        sub_2440(&qword_1C63D8, &qword_1717C8);
        sub_16C72C();
        v66 = *(v0 + 224);
        *(v0 + 144) = *(v0 + 208);
        *(v0 + 160) = v66;
        v67 = *(v0 + 256);
        *(v0 + 176) = *(v0 + 240);
        *(v0 + 192) = v67;
        sub_C878(v0 + 144, &qword_1C63D8, &qword_1717C8);
        (*(v63 + 8))(v62, v64);
        (*(v61 + 8))(v93, v91);
        goto LABEL_32;
      }
    }

    else
    {
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0u;
    }

    sub_C878(v0 + 400, &qword_1C63E0, &unk_1717D0);
    v24 = 0;
    v25 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 744);
  v27 = *(v0 + 728);
  sub_8B48();
  v28 = sub_1E1AC();
  v29(v28);
  v30 = sub_16DBDC();
  v31 = sub_16E36C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_1BA38();
    *v32 = 0;
    _os_log_impl(&def_259DC, v30, v31, "error in parsing disambiguation response for medication name.", v32, 2u);
    sub_8A2C();
  }

  v33 = *(v0 + 744);
  v34 = *(v0 + 736);
  v35 = *(v0 + 728);
  v36 = *(v0 + 720);
  v37 = *(v0 + 712);
  v38 = *(v0 + 704);
  v39 = *(v0 + 696);
  v40 = *(v0 + 656);

  v94(v33, v35);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  sub_2440(&qword_1C63D8, &qword_1717C8);
  sub_16C72C();
  v41 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v41;
  v42 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v42;
  sub_C878(v0 + 16, &qword_1C63D8, &qword_1717C8);
  v43 = *(v38 + 8);
  v43(v36, v39);
  v43(v37, v39);
LABEL_32:
  v68 = *(v0 + 760);
  v69 = *(v0 + 752);
  v70 = *(v0 + 744);
  v71 = *(v0 + 720);
  v72 = *(v0 + 712);
  v73 = *(v0 + 688);

  sub_C9BC();

  return v74();
}

uint64_t *sub_1DB58()
{
  sub_C938((v0 + 2));
  sub_2D64(v0 + 22);
  sub_2D64(v0 + 27);
  v1 = v0[33];

  return v0;
}

uint64_t sub_1DB90()
{
  sub_1DB58();

  return _swift_deallocClassInstance(v0, 281, 7);
}

uint64_t sub_1DC18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_1D198();
}

uint64_t sub_1DCB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_1C69C();
}

uint64_t sub_1DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MedNameDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t sub_1DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MedNameDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t sub_1DEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF9C;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_1DF9C()
{
  sub_8A88();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_C990();
  *v3 = v2;

  sub_C9BC();

  return v4();
}

uint64_t sub_1E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t sub_1E148(uint64_t a1)
{
  v2 = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1C4()
{
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[18];
}

uint64_t type metadata accessor for HeightQueryModel()
{
  result = qword_1C64A0;
  if (!qword_1C64A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeightQueryModel.isDifferenceNegligible.setter(char a1)
{
  result = type metadata accessor for HeightQueryModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1E634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v5);
  v7 = *(v6 + 40);
  v8 = sub_8B9C();
  v9(v8);
  return v4;
}

uint64_t HeightQueryModel.minHeightSymbolic.getter()
{
  Model = type metadata accessor for HeightQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t HeightQueryModel.minHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 44));
  v6 = v5[1];

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.maxHeightSymbolic.getter()
{
  Model = type metadata accessor for HeightQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t HeightQueryModel.maxHeightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 48));
  v6 = v5[1];

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t HeightQueryModel.heightSymbolic.getter()
{
  Model = type metadata accessor for HeightQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t HeightQueryModel.heightSymbolic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(sub_20640() + 52));
  v6 = v5[1];

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t sub_1E8C0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_4304();
  v16 = v15 - v14;
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  sub_206AC(v7);
  if (v17)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v18 = sub_16BE5C();
    sub_2068C(v18, v19);
    return (*(v11 + 8))(v16, v8);
  }
}

uint64_t sub_1EA54(uint64_t a1, char a2, uint64_t a3)
{
  v34[1] = a1;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v34 - v13;
  __chkstk_darwin(v12);
  v16 = v34 - v15;
  v17 = sub_16D5CC();
  v18 = sub_42F0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_4304();
  v25 = v24 - v23;
  v26 = 0;
  if ((a2 & 1) == 0)
  {
    sub_86B0(a3, v16, &qword_1C5800, &unk_16F510);
    sub_206AC(v16);
    if (v31)
    {
      v27 = v16;
    }

    else
    {
      (*(v20 + 32))(v25, v16, v17);
      v28 = sub_16D2DC();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      sub_16D2CC();
      sub_16D40C();

      (*(v20 + 16))(v14, v25, v17);
      sub_214C(v14, 0, 1, v17);
      sub_16D3FC();

      sub_8748(v14, &qword_1C5800, &unk_16F510);
      sub_16D3EC();

      sub_16D2EC();
      sub_206AC(v11);
      if (!v31)
      {
        v26 = sub_16D5BC();

        v32 = *(v20 + 8);
        v32(v25, v17);
        v32(v11, v17);
        return v26;
      }

      (*(v20 + 8))(v25, v17);

      v27 = v11;
    }

    sub_8748(v27, &qword_1C5800, &unk_16F510);
    return 0;
  }

  return v26;
}

uint64_t sub_1ED58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686769654878616DLL && a2 == 0xE900000000000074;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000000017AE60 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x800000000017AEA0 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000000017AEC0 == a2;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x7953746867696568 && a2 == 0xEE0063696C6F626DLL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_16E6BC();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1F07C(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x746867696568;
      break;
    case 2:
      v3 = 1215848813;
      goto LABEL_7;
    case 3:
      v3 = 1215195501;
LABEL_7:
      result = v3 | 0x6867696500000000;
      break;
    case 4:
      result = 0x6562614C65746164;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7953746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1F1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ED58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1F208@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1F074();
  *a1 = result;
  return result;
}

uint64_t sub_1F230(uint64_t a1)
{
  v2 = sub_1F5EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1F26C(uint64_t a1)
{
  v2 = sub_1F5EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeightQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C6400, &qword_171808);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v34[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_1F5EC();
  sub_16E77C();
  v34[15] = 0;
  sub_16C11C();
  sub_20594();
  sub_1FDF4(v14, v15);
  sub_205DC();
  sub_16E63C();
  if (!v2)
  {
    Model = type metadata accessor for HeightQueryModel();
    sub_2061C((v3 + Model[5]));
    v34[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_2061C((v3 + Model[6]));
    v34[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_2061C((v3 + Model[7]));
    v34[12] = 3;
    sub_20584();
    sub_16E62C();
    v17 = Model[8];
    v34[11] = 4;
    sub_16D5CC();
    sub_205C4();
    sub_1FDF4(v18, v19);
    sub_205DC();
    sub_16E63C();
    v20 = *(v3 + Model[9]);
    v34[10] = 5;
    sub_205DC();
    sub_16E65C();
    v21 = Model[10];
    v34[9] = 6;
    type metadata accessor for SnippetHeaderModel();
    sub_205AC();
    sub_1FDF4(v22, v23);
    sub_205DC();
    sub_16E63C();
    v24 = (v3 + Model[11]);
    v25 = *v24;
    v26 = v24[1];
    v34[8] = 7;
    sub_20584();
    sub_16E61C();
    v27 = (v3 + Model[12]);
    v28 = *v27;
    v29 = v27[1];
    v34[7] = 8;
    sub_20584();
    sub_16E61C();
    v30 = (v3 + Model[13]);
    v31 = *v30;
    v32 = v30[1];
    v34[6] = 9;
    sub_20584();
    sub_16E61C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1F5EC()
{
  result = qword_1C6408;
  if (!qword_1C6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6408);
  }

  return result;
}

uint64_t HeightQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v79 = &v76 - v7;
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v14 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v14);
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v80 = &v76 - v18;
  v19 = sub_2440(&qword_1C6428, &qword_171810);
  v20 = sub_42F0(v19);
  v81 = v21;
  v82 = v20;
  v23 = *(v22 + 64);
  sub_433C();
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  Model = type metadata accessor for HeightQueryModel();
  v28 = sub_8B38(Model);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_4304();
  v33 = v32 - v31;
  v34 = sub_16C11C();
  sub_214C(v33, 1, 1, v34);
  v35 = *(Model + 32);
  v36 = sub_16D5CC();
  v87 = v35;
  sub_214C(v33 + v35, 1, 1, v36);
  v37 = *(Model + 40);
  v38 = type metadata accessor for SnippetHeaderModel();
  v86 = v37;
  v88 = v33;
  sub_214C(v33 + v37, 1, 1, v38);
  v39 = a1[3];
  v40 = a1[4];
  v85 = a1;
  sub_2D20(a1, v39);
  sub_1F5EC();
  v83 = v26;
  v41 = v84;
  sub_16E76C();
  if (v41)
  {
    v43 = v86;
    v42 = v87;
    v50 = v88;
    sub_2D64(v85);
    sub_8748(v50, &qword_1C63F0, &unk_1717F0);
    sub_8748(v50 + v42, &qword_1C5800, &unk_16F510);
    sub_8748(v50 + v43, &dword_1C63F8, &qword_171800);
  }

  else
  {
    v76 = v36;
    v77 = v13;
    v84 = Model;
    v44 = v79;
    v98 = 0;
    sub_20594();
    sub_1FDF4(v45, v46);
    v47 = v80;
    sub_16E5AC();
    v49 = v86;
    v48 = v87;
    v52 = v47;
    v53 = v88;
    sub_1E634(v52, v88, &qword_1C63F0, &unk_1717F0);
    v97 = 1;
    sub_20674();
    v54 = sub_16E59C();
    sub_20608(v54, v55, v84[5]);
    v96 = 2;
    sub_20674();
    v56 = sub_16E59C();
    sub_20608(v56, v57, v84[6]);
    v95 = 3;
    sub_20674();
    v58 = sub_16E59C();
    sub_20608(v58, v59, v84[7]);
    v94 = 4;
    sub_205C4();
    sub_1FDF4(v60, v61);
    sub_20680();
    sub_16E5AC();
    sub_1E634(v77, v53 + v48, &qword_1C5800, &unk_16F510);
    v93 = 5;
    sub_20680();
    *(v53 + v84[9]) = sub_16E5CC() & 1;
    v92 = 6;
    sub_205AC();
    sub_1FDF4(v62, v63);
    sub_20680();
    sub_16E5AC();
    sub_1E634(v44, v53 + v49, &dword_1C63F8, &qword_171800);
    v91 = 7;
    sub_20680();
    v64 = sub_16E58C();
    v65 = v84;
    v66 = (v53 + v84[11]);
    *v66 = v64;
    v66[1] = v67;
    v90 = 8;
    sub_20674();
    v68 = sub_16E58C();
    v69 = (v53 + v65[12]);
    *v69 = v68;
    v69[1] = v70;
    v89 = 9;
    v71 = sub_16E58C();
    v73 = v72;
    v74 = v88;
    v75 = (v88 + v84[13]);
    (*(v81 + 8))(v83, v82);
    *v75 = v71;
    v75[1] = v73;
    sub_1FCA4(v74, v78);
    sub_2D64(v85);
    return sub_1FD08(v74);
  }
}

uint64_t sub_1FCA4(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for HeightQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_1FD08(uint64_t a1)
{
  Model = type metadata accessor for HeightQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_1FDF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1FE80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return sub_369C(v10, a2, v9);
  }

  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = sub_436C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[8];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_2440(&dword_1C63F8, &qword_171800);
  v16 = sub_436C(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[10];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[11] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

uint64_t sub_1FFF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v9 = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2440(&qword_1C5800, &unk_16F510);
    v14 = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v17 = sub_2440(&dword_1C63F8, &qword_171800);
      result = sub_436C(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[11] + 8) = a2;
        return result;
      }

      v11 = result;
      v16 = a4[10];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

void sub_20144()
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v0 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v1 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v2 <= 0x3F)
      {
        sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
        if (v3 <= 0x3F)
        {
          sub_3A10(319, &qword_1C64C8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2029C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeightQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HeightQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x20444);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_20480()
{
  result = qword_1C6518;
  if (!qword_1C6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6518);
  }

  return result;
}

unint64_t sub_204D8()
{
  result = qword_1C6520;
  if (!qword_1C6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6520);
  }

  return result;
}

unint64_t sub_20530()
{
  result = qword_1C6528;
  if (!qword_1C6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6528);
  }

  return result;
}

void sub_205E8(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_20608@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2061C@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

uint64_t sub_20628()
{

  return type metadata accessor for HeightQueryModel();
}

uint64_t sub_20640()
{

  return type metadata accessor for HeightQueryModel();
}

uint64_t sub_20658@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_2068C(uint64_t a1, uint64_t a2)
{

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)(a1, a2, 0, 0xE000000000000000, 0, 0xE000000000000000);
}

uint64_t getEnumTagSinglePayload for HealthKitIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x34)
  {
    if (a2 + 204 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 204) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 205;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xCD;
  v5 = v6 - 205;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthKitIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 204 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 204) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x34)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x33)
  {
    v6 = ((a2 - 52) >> 8) + 1;
    *result = a2 - 52;
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
        JUMPOUT(0x20820);
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
          *result = a2 - 52;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2085C()
{
  result = qword_1C6530;
  if (!qword_1C6530)
  {
    sub_9790(&qword_1C6538, qword_171A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6530);
  }

  return result;
}

uint64_t sub_208C0(char a1)
{
  result = 0x73676E69524B48;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      sub_25AD4();
      result = v21 - 11;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
    case 43:
    case 56:
    case 64:
    case 76:
    case 93:
    case 98:
    case 110:
    case -124:
    case -119:
    case -101:
    case -89:
    case -70:
      sub_25AD4();
      result = v32 - 1;
      break;
    case 5:
    case 27:
    case -102:
      sub_25AD4();
      result = v24 + 12;
      break;
    case 6:
    case 29:
    case 63:
    case 74:
    case 77:
    case 89:
    case 113:
    case -105:
    case -66:
      sub_25AD4();
      result = v22 + 3;
      break;
    case 7:
    case 23:
    case 47:
    case 51:
    case 67:
    case 72:
    case 102:
    case 119:
    case -99:
    case -87:
    case -77:
    case -71:
      sub_25AD4();
      result = v14 + 4;
      break;
    case 8:
    case 15:
    case 16:
    case 20:
    case 24:
    case 26:
    case 65:
    case 66:
    case 105:
    case -90:
      sub_25AD4();
      result = v29 - 7;
      break;
    case 9:
    case 30:
    case 48:
    case 62:
    case -69:
    case -59:
      sub_25AD4();
      result = v23 - 5;
      break;
    case 10:
    case 11:
    case 96:
    case 111:
      sub_25AD4();
      result = v30 + 5;
      break;
    case 12:
    case 45:
    case -94:
    case -67:
      sub_25AD4();
      result = v27 - 9;
      break;
    case 13:
    case 61:
    case 100:
    case 101:
    case 103:
    case 121:
    case -120:
    case -111:
    case -93:
    case -91:
    case -79:
    case -78:
    case -62:
    case -56:
    case -55:
      sub_25AD4();
      result = v20 - 3;
      break;
    case 14:
    case 40:
    case 42:
    case 60:
    case 73:
    case 84:
    case 91:
    case 106:
    case 108:
    case 115:
    case 122:
    case 123:
    case -128:
    case -121:
      sub_25AD4();
      result = v33 - 2;
      break;
    case 17:
    case 28:
    case 35:
    case 50:
    case 55:
    case -97:
    case -83:
    case -72:
    case -54:
      sub_25AD4();
      result = v31 - 6;
      break;
    case 19:
    case 99:
      sub_25AD4();
      result = v7 | 0x10;
      break;
    case 22:
    case 83:
      sub_25AD4();
      result = v28 - 10;
      break;
    case 25:
    case 59:
    case 79:
    case 82:
    case 125:
    case 126:
    case -125:
    case -116:
    case -107:
    case -86:
    case -81:
    case -74:
      sub_25AD4();
      result = v19 + 1;
      break;
    case 31:
    case 33:
    case 53:
    case 71:
    case 117:
    case 118:
    case -75:
      sub_25AD4();
      result = v26 + 10;
      break;
    case 32:
    case 52:
    case 94:
    case -127:
    case -106:
    case -98:
    case -85:
      sub_25AD4();
      result = v25 + 7;
      break;
    case 34:
    case 95:
    case -95:
    case -84:
    case -80:
      sub_25AD4();
      result = v15 + 9;
      break;
    case 36:
    case 37:
    case 41:
    case 44:
    case 46:
    case 124:
    case -110:
      sub_25AD4();
      result = v34 - 4;
      break;
    case 38:
    case 116:
    case -104:
      sub_25AD4();
      result = v17 + 6;
      break;
    case 39:
    case 57:
    case 70:
    case 90:
    case 97:
    case 104:
    case 127:
    case -126:
    case -123:
    case -117:
    case -73:
    case -61:
      sub_25AD4();
      result = v35 + 2;
      break;
    case 49:
      sub_25AD4();
      result = v4 + 17;
      break;
    case 54:
      sub_25AD4();
      result = v8 + 19;
      break;
    case 58:
      result = 0xD000000000000027;
      break;
    case 68:
      result = 0xD000000000000027;
      break;
    case 69:
      sub_25AD4();
      result = v5 + 18;
      break;
    case 75:
      result = 0xD000000000000027;
      break;
    case 78:
      result = 0xD000000000000027;
      break;
    case 80:
      result = 0xD000000000000027;
      break;
    case 81:
      result = 0xD000000000000027;
      break;
    case 85:
    case 87:
      sub_25AD4();
      result = v11 - 12;
      break;
    case 86:
    case -60:
    case -58:
      sub_25AD4();
      result = v13 - 16;
      break;
    case 88:
    case -64:
      sub_25AD4();
      result = v16 + 15;
      break;
    case 92:
      sub_25AD4();
      result = v12 + 14;
      break;
    case 107:
      result = 0xD000000000000027;
      break;
    case 109:
      result = 0xD000000000000027;
      break;
    case 112:
      result = 0xD000000000000027;
      break;
    case 114:
      result = 0xD000000000000027;
      break;
    case 120:
      result = 0xD000000000000027;
      break;
    case -122:
      result = 0xD000000000000027;
      break;
    case -118:
      result = 0xD000000000000027;
      break;
    case -115:
      result = 0xD000000000000027;
      break;
    case -114:
      result = 0xD000000000000027;
      break;
    case -113:
      result = 0xD000000000000027;
      break;
    case -112:
      result = 0xD000000000000027;
      break;
    case -109:
      result = 0xD000000000000027;
      break;
    case -108:
    case -103:
    case -96:
    case -88:
    case -76:
    case -65:
      sub_25AD4();
      result = v18 + 11;
      break;
    case -100:
    case -63:
      sub_25AD4();
      result = v6 | 8;
      break;
    case -92:
      result = 0xD000000000000027;
      break;
    case -82:
      result = 0xD000000000000027;
      break;
    case -68:
      result = 0xD000000000000027;
      break;
    case -57:
      return result;
    case -53:
      sub_25AD4();
      result = v9 + 23;
      break;
    case -52:
      sub_25AD4();
      result = v10 | 0x18;
      break;
    default:
      sub_25AD4();
      result = v3 - 8;
      break;
  }

  return result;
}

Swift::Int sub_219C8()
{
  sub_16E72C();
  sub_170FC();
  return sub_16E75C();
}

Swift::Int sub_21A28(__int16 a1)
{
  sub_16E72C();
  sub_140650(a1);
  sub_179C4();

  return sub_16E75C();
}

Swift::Int sub_21A90(uint64_t a1, void (*a2)(uint64_t))
{
  sub_16E72C();
  a2(a1);
  sub_179C4();

  return sub_16E75C();
}

uint64_t sub_21AE8(uint64_t a1, void *a2)
{
  sub_2440(&qword_1C6558, qword_178150);
  v4 = swift_allocObject();
  v5._rawValue = sub_61090(v4, 205);
  *v6 = "HKActivitySummaryTypeIdentifier";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  *(v6 + 24) = "HKCategoryTypeIdentifierAbdominalCramps";
  *(v6 + 32) = 39;
  *(v6 + 40) = 2;
  *(v6 + 48) = "HKCategoryTypeIdentifierAcne";
  *(v6 + 56) = 28;
  *(v6 + 64) = 2;
  *(v6 + 72) = "HKCategoryTypeIdentifierAppetiteChanges";
  *(v6 + 80) = 39;
  *(v6 + 88) = 2;
  *(v6 + 96) = "HKCategoryTypeIdentifierAppleStandHour";
  *(v6 + 104) = 38;
  *(v6 + 112) = 2;
  *(v6 + 120) = "HKCategoryTypeIdentifierAppleWalkingSteadinessEvent";
  *(v6 + 128) = 51;
  *(v6 + 136) = 2;
  *(v6 + 144) = "HKCategoryTypeIdentifierAudioExposureEvent";
  *(v6 + 152) = 42;
  *(v6 + 160) = 2;
  *(v6 + 168) = "HKCategoryTypeIdentifierBladderIncontinence";
  *(v6 + 176) = 43;
  *(v6 + 184) = 2;
  *(v6 + 192) = "HKCategoryTypeIdentifierBloating";
  *(v6 + 200) = 32;
  *(v6 + 208) = 2;
  *(v6 + 216) = "HKCategoryTypeIdentifierBreastPain";
  *(v6 + 224) = 34;
  *(v6 + 232) = 2;
  *(v6 + 240) = "HKCategoryTypeIdentifierCervicalMucusQuality";
  *(v6 + 248) = 44;
  *(v6 + 256) = 2;
  *(v6 + 264) = "HKCategoryTypeIdentifierChestTightnessOrPain";
  *(v6 + 272) = 44;
  *(v6 + 280) = 2;
  *(v6 + 288) = "HKCategoryTypeIdentifierChills";
  *(v6 + 296) = 30;
  *(v6 + 304) = 2;
  *(v6 + 312) = "HKCategoryTypeIdentifierConstipation";
  *(v6 + 320) = 36;
  *(v6 + 328) = 2;
  *(v6 + 336) = "HKCategoryTypeIdentifierContraceptive";
  *(v6 + 344) = 37;
  *(v6 + 352) = 2;
  *(v6 + 360) = "HKCategoryTypeIdentifierCoughing";
  *(v6 + 368) = 32;
  *(v6 + 376) = 2;
  *(v6 + 384) = "HKCategoryTypeIdentifierDiarrhea";
  *(v6 + 392) = 32;
  *(v6 + 400) = 2;
  *(v6 + 408) = "HKCategoryTypeIdentifierDizziness";
  *(v6 + 416) = 33;
  *(v6 + 424) = 2;
  *(v6 + 432) = "HKCategoryTypeIdentifierDrySkin";
  *(v6 + 440) = 31;
  *(v6 + 448) = 2;
  *(v6 + 456) = "HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent";
  *(v6 + 464) = 55;
  *(v6 + 472) = 2;
  *(v6 + 480) = "HKCategoryTypeIdentifierFainting";
  *(v6 + 488) = 32;
  *(v6 + 496) = 2;
  *(v6 + 504) = "HKCategoryTypeIdentifierFatigue";
  *(v6 + 512) = 31;
  *(v6 + 520) = 2;
  *(v6 + 528) = "HKCategoryTypeIdentifierFever";
  *(v6 + 536) = 29;
  *(v6 + 544) = 2;
  *(v6 + 552) = "HKCategoryTypeIdentifierGeneralizedBodyAche";
  *(v6 + 560) = 43;
  *(v6 + 568) = 2;
  *(v6 + 576) = "HKCategoryTypeIdentifierHairLoss";
  *(v6 + 584) = 32;
  *(v6 + 592) = 2;
  *(v6 + 600) = "HKCategoryTypeIdentifierHandwashingEvent";
  *(v6 + 608) = 40;
  *(v6 + 616) = 2;
  *(v6 + 624) = "HKCategoryTypeIdentifierHeadache";
  *(v6 + 632) = 32;
  *(v6 + 640) = 2;
  *(v6 + 648) = "HKCategoryTypeIdentifierHeadphoneAudioExposureEvent";
  *(v6 + 656) = 51;
  *(v6 + 664) = 2;
  *(v6 + 672) = "HKCategoryTypeIdentifierHeartburn";
  *(v6 + 680) = 33;
  *(v6 + 688) = 2;
  *(v6 + 696) = "HKCategoryTypeIdentifierHighHeartRateEvent";
  *(v6 + 704) = 42;
  *(v6 + 712) = 2;
  *(v6 + 720) = "HKCategoryTypeIdentifierHotFlashes";
  *(v6 + 728) = 34;
  *(v6 + 736) = 2;
  *(v6 + 744) = "HKCategoryTypeIdentifierInfrequentMenstrualCycles";
  *(v6 + 752) = 49;
  *(v6 + 760) = 2;
  *(v6 + 768) = "HKCategoryTypeIdentifierIntermenstrualBleeding";
  *(v6 + 776) = 46;
  *(v6 + 784) = 2;
  *(v6 + 792) = "HKCategoryTypeIdentifierIrregularHeartRhythmEvent";
  *(v6 + 800) = 49;
  *(v6 + 808) = 2;
  *(v6 + 816) = "HKCategoryTypeIdentifierIrregularMenstrualCycles";
  *(v6 + 824) = 48;
  *(v6 + 832) = 2;
  *(v6 + 840) = "HKCategoryTypeIdentifierLactation";
  *(v6 + 848) = 33;
  *(v6 + 856) = 2;
  *(v6 + 864) = "HKCategoryTypeIdentifierLossOfSmell";
  *(v6 + 872) = 35;
  *(v6 + 880) = 2;
  *(v6 + 888) = "HKCategoryTypeIdentifierLossOfTaste";
  *(v6 + 896) = 35;
  *(v6 + 904) = 2;
  *(v6 + 912) = "HKCategoryTypeIdentifierLowCardioFitnessEvent";
  *(v6 + 920) = 45;
  *(v6 + 928) = 2;
  *(v6 + 936) = "HKCategoryTypeIdentifierLowHeartRateEvent";
  *(v6 + 944) = 41;
  *(v6 + 952) = 2;
  *(v6 + 960) = "HKCategoryTypeIdentifierLowerBackPain";
  *(v6 + 968) = 37;
  *(v6 + 976) = 2;
  *(v6 + 984) = "HKCategoryTypeIdentifierMemoryLapse";
  *(v6 + 992) = 35;
  *(v6 + 1000) = 2;
  *(v6 + 1008) = "HKCategoryTypeIdentifierMenstrualFlow";
  *(v6 + 1016) = 37;
  *(v6 + 1024) = 2;
  *(v6 + 1032) = "HKCategoryTypeIdentifierMindfulSession";
  *(v6 + 1040) = 38;
  *(v6 + 1048) = 2;
  *(v6 + 1056) = "HKCategoryTypeIdentifierMoodChanges";
  *(v6 + 1064) = 35;
  *(v6 + 1072) = 2;
  *(v6 + 1080) = "HKCategoryTypeIdentifierNausea";
  *(v6 + 1088) = 30;
  *(v6 + 1096) = 2;
  *(v6 + 1104) = "HKCategoryTypeIdentifierNightSweats";
  *(v6 + 1112) = 35;
  *(v6 + 1120) = 2;
  *(v6 + 1128) = "HKCategoryTypeIdentifierOvulationTestResult";
  *(v6 + 1136) = 43;
  *(v6 + 1144) = 2;
  *(v6 + 1152) = "HKCategoryTypeIdentifierPelvicPain";
  *(v6 + 1160) = 34;
  *(v6 + 1168) = 2;
  *(v6 + 1176) = "HKCategoryTypeIdentifierPersistentIntermenstrualBleeding";
  *(v6 + 1184) = 56;
  *(v6 + 1192) = 2;
  *(v6 + 1200) = "HKCategoryTypeIdentifierPregnancy";
  *(v6 + 1208) = 33;
  *(v6 + 1216) = 2;
  *(v6 + 1224) = "HKCategoryTypeIdentifierPregnancyTestResult";
  *(v6 + 1232) = 43;
  *(v6 + 1240) = 2;
  *(v6 + 1248) = "HKCategoryTypeIdentifierProgesteroneTestResult";
  *(v6 + 1256) = 46;
  *(v6 + 1264) = 2;
  *(v6 + 1272) = "HKCategoryTypeIdentifierProlongedMenstrualPeriods";
  *(v6 + 1280) = 49;
  *(v6 + 1288) = 2;
  *(v6 + 1296) = "HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat";
  *(v6 + 1304) = 58;
  *(v6 + 1312) = 2;
  *(v6 + 1320) = "HKCategoryTypeIdentifierRunnyNose";
  *(v6 + 1328) = 33;
  *(v6 + 1336) = 2;
  *(v6 + 1344) = "HKCategoryTypeIdentifierSexualActivity";
  *(v6 + 1352) = 38;
  *(v6 + 1360) = 2;
  *(v6 + 1368) = "HKCategoryTypeIdentifierShortnessOfBreath";
  *(v6 + 1376) = 41;
  *(v6 + 1384) = 2;
  *(v6 + 1392) = "HKCategoryTypeIdentifierSinusCongestion";
  *(v6 + 1400) = 39;
  *(v6 + 1408) = 2;
  *(v6 + 1416) = "HKCategoryTypeIdentifierSkippedHeartbeat";
  *(v6 + 1424) = 40;
  *(v6 + 1432) = 2;
  *(v6 + 1440) = "HKCategoryTypeIdentifierSleepAnalysis";
  *(v6 + 1448) = 37;
  *(v6 + 1456) = 2;
  *(v6 + 1464) = "HKCategoryTypeIdentifierSleepChanges";
  *(v6 + 1472) = 36;
  *(v6 + 1480) = 2;
  *(v6 + 1488) = "HKCategoryTypeIdentifierSoreThroat";
  *(v6 + 1496) = 34;
  *(v6 + 1504) = 2;
  *(v6 + 1512) = "HKCategoryTypeIdentifierToothbrushingEvent";
  *(v6 + 1520) = 42;
  *(v6 + 1528) = 2;
  *(v6 + 1536) = "HKCategoryTypeIdentifierVaginalDryness";
  *(v6 + 1544) = 38;
  *(v6 + 1552) = 2;
  *(v6 + 1560) = "HKCategoryTypeIdentifierVomiting";
  *(v6 + 1568) = 32;
  *(v6 + 1576) = 2;
  *(v6 + 1584) = "HKCategoryTypeIdentifierWheezing";
  *(v6 + 1592) = 32;
  *(v6 + 1600) = 2;
  *(v6 + 1608) = "HKCharacteristicTypeIdentifierBiologicalSex";
  *(v6 + 1616) = 43;
  *(v6 + 1624) = 2;
  *(v6 + 1632) = "HKCharacteristicTypeIdentifierBloodType";
  *(v6 + 1640) = 39;
  *(v6 + 1648) = 2;
  *(v6 + 1656) = "HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse";
  *(v6 + 1664) = 57;
  *(v6 + 1672) = 2;
  *(v6 + 1680) = "HKCharacteristicTypeIdentifierDateOfBirth";
  *(v6 + 1688) = 41;
  *(v6 + 1696) = 2;
  *(v6 + 1704) = "HKCharacteristicTypeIdentifierFitzpatrickSkinType";
  *(v6 + 1712) = 49;
  *(v6 + 1720) = 2;
  *(v6 + 1728) = "HKCharacteristicTypeIdentifierWheelchairUse";
  *(v6 + 1736) = 43;
  *(v6 + 1744) = 2;
  *(v6 + 1752) = "HKClinicalTypeIdentifierAllergyRecord";
  *(v6 + 1760) = 37;
  *(v6 + 1768) = 2;
  *(v6 + 1776) = "HKClinicalTypeIdentifierClinicalNoteRecord";
  *(v6 + 1784) = 42;
  *(v6 + 1792) = 2;
  *(v6 + 1800) = "HKClinicalTypeIdentifierConditionRecord";
  *(v6 + 1808) = 39;
  *(v6 + 1816) = 2;
  *(v6 + 1824) = "HKClinicalTypeIdentifierCoverageRecord";
  *(v6 + 1832) = 38;
  *(v6 + 1840) = 2;
  *(v6 + 1848) = "HKClinicalTypeIdentifierImmunizationRecord";
  *(v6 + 1856) = 42;
  *(v6 + 1864) = 2;
  *(v6 + 1872) = "HKClinicalTypeIdentifierLabResultRecord";
  *(v6 + 1880) = 39;
  *(v6 + 1888) = 2;
  *(v6 + 1896) = "HKClinicalTypeIdentifierMedicationRecord";
  *(v6 + 1920) = "HKClinicalTypeIdentifierProcedureRecord";
  *(v6 + 1944) = "HKClinicalTypeIdentifierVitalSignRecord";
  *(v6 + 1968) = "HKCorrelationTypeIdentifierBloodPressure";
  *(v6 + 2304) = "HKQuantityTypeIdentifierBasalBodyTemperature";
  *(v6 + 2328) = "HKQuantityTypeIdentifierBasalEnergyBurned";
  *(v6 + 2376) = "HKQuantityTypeIdentifierCyclingFunctionalThresholdPower";
  *(v6 + 2400) = "HKQuantityTypeIdentifierCyclingPower";
  *(v6 + 2496) = "HKQuantityTypeIdentifierBodyFatPercentage";
  *(v6 + 2592) = "HKQuantityTypeIdentifierDietaryBiotin";
  *(v6 + 2688) = "HKQuantityTypeIdentifierDietaryChloride";
  *(v6 + 2784) = "HKQuantityTypeIdentifierDietaryEnergyConsumed";
  *(v6 + 2856) = "HKQuantityTypeIdentifierDietaryFatSaturated";
  *(v6 + 2848) = 2;
  *(v6 + 2832) = "HKQuantityTypeIdentifierDietaryFatPolyunsaturated";
  *(v6 + 2816) = 49;
  *(v6 + 2824) = 2;
  *(v6 + 2840) = 49;
  *(v6 + 1904) = 40;
  *(v6 + 2808) = "HKQuantityTypeIdentifierDietaryFatMonounsaturated";
  *(v6 + 2792) = 45;
  *(v6 + 2800) = 2;
  *(v6 + 2760) = "HKQuantityTypeIdentifierDietaryCopper";
  *(v6 + 2752) = 2;
  *(v6 + 2768) = 37;
  *(v6 + 2776) = 2;
  *(v6 + 2736) = "HKQuantityTypeIdentifierDietaryChromium";
  *(v6 + 2720) = 42;
  *(v6 + 2728) = 2;
  *(v6 + 2744) = 39;
  *(v6 + 1912) = 2;
  *(v6 + 2712) = "HKQuantityTypeIdentifierDietaryCholesterol";
  *(v6 + 2696) = 39;
  *(v6 + 2704) = 2;
  *(v6 + 2664) = "HKQuantityTypeIdentifierDietaryCarbohydrates";
  *(v6 + 2656) = 2;
  *(v6 + 2672) = 44;
  *(v6 + 2680) = 2;
  *(v6 + 2640) = "HKQuantityTypeIdentifierDietaryCalcium";
  *(v6 + 2624) = 39;
  *(v6 + 2632) = 2;
  *(v6 + 2648) = 38;
  *(v6 + 1928) = 39;
  *(v6 + 2616) = "HKQuantityTypeIdentifierDietaryCaffeine";
  *(v6 + 2600) = 37;
  *(v6 + 2608) = 2;
  *(v6 + 2568) = "HKQuantityTypeIdentifierBodyTemperature";
  *(v6 + 2560) = 2;
  *(v6 + 2576) = 39;
  *(v6 + 2584) = 2;
  *(v6 + 2544) = "HKQuantityTypeIdentifierBodyMassIndex";
  *(v6 + 2528) = 32;
  *(v6 + 2536) = 2;
  *(v6 + 2552) = 37;
  *(v6 + 1936) = 2;
  *(v6 + 2520) = "HKQuantityTypeIdentifierBodyMass";
  *(v6 + 2504) = 41;
  *(v6 + 2512) = 2;
  *(v6 + 2472) = "HKQuantityTypeIdentifierBloodGlucose";
  *(v6 + 2464) = 2;
  *(v6 + 2480) = 36;
  *(v6 + 2488) = 2;
  *(v6 + 2448) = "HKQuantityTypeIdentifierBloodAlcoholContent";
  *(v6 + 2432) = 36;
  *(v6 + 2440) = 2;
  *(v6 + 2456) = 43;
  *(v6 + 2424) = "HKQuantityTypeIdentifierCyclingSpeed";
  *(v6 + 2392) = 2;
  *(v6 + 2408) = 36;
  *(v6 + 2416) = 2;
  *(v6 + 1952) = 39;
  *(v6 + 2384) = 55;
  *(v6 + 2360) = 38;
  *(v6 + 2368) = 2;
  *(v6 + 2352) = "HKQuantityTypeIdentifierCyclingCadence";
  *(v6 + 2320) = 2;
  *(v6 + 2336) = 41;
  *(v6 + 2344) = 2;
  *(v6 + 1960) = 2;
  *(v6 + 2312) = 44;
  *(v6 + 2288) = 48;
  *(v6 + 2296) = 2;
  *(v6 + 1976) = 40;
  *(v6 + 2280) = "HKQuantityTypeIdentifierAtrialFibrillationBurden";
  *(v6 + 2264) = 46;
  *(v6 + 2272) = 2;
  *(v6 + 2208) = "HKQuantityTypeIdentifierAppleSleepingWristTemperature";
  *(v6 + 2240) = 38;
  *(v6 + 2248) = 2;
  *(v6 + 2256) = "HKQuantityTypeIdentifierAppleWalkingSteadiness";
  *(v6 + 2216) = 53;
  *(v6 + 2224) = 2;
  *(v6 + 2232) = "HKQuantityTypeIdentifierAppleStandTime";
  *(v6 + 2176) = 2;
  *(v6 + 2184) = "HKQuantityTypeIdentifierAppleMoveTime";
  *(v6 + 2192) = 37;
  *(v6 + 2200) = 2;
  *(v6 + 1984) = 2;
  *(v6 + 2152) = 2;
  *(v6 + 2160) = "HKQuantityTypeIdentifierAppleExerciseTime";
  *(v6 + 2168) = 41;
  *(v6 + 1992) = "HKDataTypeIdentifierAudiogram";
  *(v6 + 2128) = 2;
  *(v6 + 2136) = "HKQuantityTypeIdentifierActiveEnergyBurned";
  *(v6 + 2144) = 42;
  *(v6 + 2104) = 2;
  *(v6 + 2112) = "HKMedicationDoseEventTypeIdentifierMedicationDoseEvent";
  *(v6 + 2120) = 54;
  *(v6 + 2088) = "HKDocumentTypeIdentifierCDA";
  *(v6 + 2072) = 23;
  *(v6 + 2080) = 2;
  *(v6 + 2096) = 27;
  *(v6 + 2000) = 29;
  *(v6 + 2048) = 27;
  *(v6 + 2056) = 2;
  *(v6 + 2064) = "HKDataTypeSleepSchedule";
  *(v6 + 2016) = "HKDataTypeIdentifierElectrocardiogram";
  *(v6 + 2024) = 37;
  *(v6 + 2032) = 2;
  *(v6 + 2040) = "HKDataTypeSleepDurationGoal";
  *(v6 + 2008) = 2;
  *(v6 + 2864) = 43;
  *(v6 + 2872) = 2;
  *(v6 + 2880) = "HKQuantityTypeIdentifierDietaryFatTotal";
  *(v6 + 2888) = 39;
  *(v6 + 2896) = 2;
  *(v6 + 2904) = "HKQuantityTypeIdentifierDietaryFiber";
  *(v6 + 2912) = 36;
  *(v6 + 2920) = 2;
  *(v6 + 2928) = "HKQuantityTypeIdentifierDietaryFolate";
  *(v6 + 2936) = 37;
  *(v6 + 2944) = 2;
  *(v6 + 2952) = "HKQuantityTypeIdentifierDietaryIodine";
  *(v6 + 2960) = 37;
  *(v6 + 2968) = 2;
  *(v6 + 2976) = "HKQuantityTypeIdentifierDietaryIron";
  *(v6 + 2984) = 35;
  *(v6 + 2992) = 2;
  *(v6 + 3000) = "HKQuantityTypeIdentifierDietaryMagnesium";
  *(v6 + 3008) = 40;
  *(v6 + 3016) = 2;
  *(v6 + 3024) = "HKQuantityTypeIdentifierDietaryManganese";
  *(v6 + 3032) = 40;
  *(v6 + 3040) = 2;
  *(v6 + 3048) = "HKQuantityTypeIdentifierDietaryMolybdenum";
  *(v6 + 3056) = 41;
  *(v6 + 3064) = 2;
  *(v6 + 3072) = "HKQuantityTypeIdentifierDietaryNiacin";
  *(v6 + 3080) = 37;
  *(v6 + 3088) = 2;
  *(v6 + 3096) = "HKQuantityTypeIdentifierDietaryPantothenicAcid";
  *(v6 + 3104) = 46;
  *(v6 + 3112) = 2;
  *(v6 + 3120) = "HKQuantityTypeIdentifierDietaryPhosphorus";
  *(v6 + 3128) = 41;
  *(v6 + 3136) = 2;
  *(v6 + 3144) = "HKQuantityTypeIdentifierDietaryPotassium";
  *(v6 + 3152) = 40;
  *(v6 + 3160) = 2;
  *(v6 + 3168) = "HKQuantityTypeIdentifierDietaryProtein";
  *(v6 + 3176) = 38;
  *(v6 + 3184) = 2;
  *(v6 + 3192) = "HKQuantityTypeIdentifierDietaryRiboflavin";
  *(v6 + 3200) = 41;
  *(v6 + 3208) = 2;
  *(v6 + 3216) = "HKQuantityTypeIdentifierDietarySelenium";
  *(v6 + 3224) = 39;
  *(v6 + 3232) = 2;
  *(v6 + 3240) = "HKQuantityTypeIdentifierDietarySodium";
  *(v6 + 3248) = 37;
  *(v6 + 3256) = 2;
  *(v6 + 3264) = "HKQuantityTypeIdentifierDietarySugar";
  *(v6 + 3272) = 36;
  *(v6 + 3280) = 2;
  *(v6 + 3288) = "HKQuantityTypeIdentifierDietaryThiamin";
  *(v6 + 3296) = 38;
  *(v6 + 3304) = 2;
  *(v6 + 3312) = "HKQuantityTypeIdentifierDietaryVitaminA";
  *(v6 + 3320) = 39;
  *(v6 + 3328) = 2;
  *(v6 + 3336) = "HKQuantityTypeIdentifierDietaryVitaminB12";
  *(v6 + 3344) = 41;
  *(v6 + 3352) = 2;
  *(v6 + 3360) = "HKQuantityTypeIdentifierDietaryVitaminB6";
  *(v6 + 3368) = 40;
  *(v6 + 3376) = 2;
  *(v6 + 3384) = "HKQuantityTypeIdentifierDietaryVitaminC";
  *(v6 + 3392) = 39;
  *(v6 + 3400) = 2;
  *(v6 + 3408) = "HKQuantityTypeIdentifierDietaryVitaminD";
  *(v6 + 3416) = 39;
  *(v6 + 3424) = 2;
  *(v6 + 3432) = "HKQuantityTypeIdentifierDietaryVitaminE";
  *(v6 + 3440) = 39;
  *(v6 + 3448) = 2;
  *(v6 + 3456) = "HKQuantityTypeIdentifierDietaryVitaminK";
  *(v6 + 3464) = 39;
  *(v6 + 3472) = 2;
  *(v6 + 3480) = "HKQuantityTypeIdentifierDietaryWater";
  *(v6 + 3488) = 36;
  *(v6 + 3496) = 2;
  *(v6 + 3504) = "HKQuantityTypeIdentifierDietaryZinc";
  *(v6 + 3512) = 35;
  *(v6 + 3520) = 2;
  *(v6 + 3528) = "HKQuantityTypeIdentifierDistanceCycling";
  *(v6 + 3536) = 39;
  *(v6 + 3544) = 2;
  *(v6 + 3552) = "HKQuantityTypeIdentifierDistanceDownhillSnowSports";
  *(v6 + 3560) = 50;
  *(v6 + 3568) = 2;
  *(v6 + 3576) = "HKQuantityTypeIdentifierDistanceSwimming";
  *(v6 + 3584) = 40;
  *(v6 + 3592) = 2;
  *(v6 + 3600) = "HKQuantityTypeIdentifierDistanceWalkingRunning";
  *(v6 + 3608) = 46;
  *(v6 + 3616) = 2;
  *(v6 + 3624) = "HKQuantityTypeIdentifierDistanceWheelchair";
  *(v6 + 3632) = 42;
  *(v6 + 3640) = 2;
  *(v6 + 3648) = "HKQuantityTypeIdentifierElectrodermalActivity";
  *(v6 + 3656) = 45;
  *(v6 + 3664) = 2;
  *(v6 + 3672) = "HKQuantityTypeIdentifierEnvironmentalAudioExposure";
  *(v6 + 3680) = 50;
  *(v6 + 3688) = 2;
  *(v6 + 3696) = "HKQuantityTypeIdentifierEnvironmentalSoundReduction";
  *(v6 + 3704) = 51;
  *(v6 + 3712) = 2;
  *(v6 + 3720) = "HKQuantityTypeIdentifierFlightsClimbed";
  *(v6 + 3728) = 38;
  *(v6 + 3736) = 2;
  *(v6 + 3744) = "HKQuantityTypeIdentifierForcedExpiratoryVolume1";
  *(v6 + 3752) = 47;
  *(v6 + 3760) = 2;
  *(v6 + 3768) = "HKQuantityTypeIdentifierForcedVitalCapacity";
  *(v6 + 3776) = 43;
  *(v6 + 3784) = 2;
  *(v6 + 3792) = "HKQuantityTypeIdentifierHeadphoneAudioExposure";
  *(v6 + 3800) = 46;
  *(v6 + 3808) = 2;
  *(v6 + 3816) = "HKQuantityTypeIdentifierHeartRate";
  *(v6 + 3824) = 33;
  *(v6 + 3832) = 2;
  *(v6 + 3840) = "HKQuantityTypeIdentifierHeartRateRecoveryOneMinute";
  *(v6 + 3848) = 50;
  *(v6 + 3856) = 2;
  *(v6 + 3864) = "HKQuantityTypeIdentifierHeartRateVariabilitySDNN";
  *(v6 + 3872) = 48;
  *(v6 + 3880) = 2;
  *(v6 + 3888) = "HKQuantityTypeIdentifierHeight";
  *(v6 + 3896) = 30;
  *(v6 + 3904) = 2;
  *(v6 + 3912) = "HKQuantityTypeIdentifierInhalerUsage";
  *(v6 + 3920) = 36;
  *(v6 + 3928) = 2;
  *(v6 + 3936) = "HKQuantityTypeIdentifierInsulinDelivery";
  *(v6 + 3944) = 39;
  *(v6 + 3952) = 2;
  *(v6 + 3960) = "HKQuantityTypeIdentifierLeanBodyMass";
  *(v6 + 3968) = 36;
  *(v6 + 3976) = 2;
  *(v6 + 3984) = "HKQuantityTypeIdentifierNikeFuel";
  *(v6 + 3992) = 32;
  *(v6 + 4000) = 2;
  *(v6 + 4008) = "HKQuantityTypeIdentifierPhysicalEffort";
  *(v6 + 4016) = 38;
  *(v6 + 4024) = 2;
  *(v6 + 4032) = "HKQuantityTypeIdentifierNumberOfAlcoholicBeverages";
  *(v6 + 4040) = 50;
  *(v6 + 4048) = 2;
  *(v6 + 4056) = "HKQuantityTypeIdentifierNumberOfTimesFallen";
  *(v6 + 4064) = 43;
  *(v6 + 4072) = 2;
  *(v6 + 4080) = "HKQuantityTypeIdentifierOxygenSaturation";
  *(v6 + 4088) = 40;
  *(v6 + 4096) = 2;
  *(v6 + 4104) = "HKQuantityTypeIdentifierPeakExpiratoryFlowRate";
  *(v6 + 4112) = 46;
  *(v6 + 4120) = 2;
  *(v6 + 4128) = "HKQuantityTypeIdentifierPeripheralPerfusionIndex";
  *(v6 + 4136) = 48;
  *(v6 + 4144) = 2;
  *(v6 + 4152) = "HKQuantityTypeIdentifierPushCount";
  *(v6 + 4160) = 33;
  *(v6 + 4168) = 2;
  *(v6 + 4176) = "HKQuantityTypeIdentifierRespiratoryRate";
  *(v6 + 4184) = 39;
  *(v6 + 4192) = 2;
  *(v6 + 4200) = "HKQuantityTypeIdentifierRestingHeartRate";
  *(v6 + 4208) = 40;
  *(v6 + 4216) = 2;
  *(v6 + 4224) = "HKQuantityTypeIdentifierRunningGroundContactTime";
  *(v6 + 4232) = 48;
  *(v6 + 4240) = 2;
  *(v6 + 4248) = "HKQuantityTypeIdentifierRunningPower";
  *(v6 + 4256) = 36;
  *(v6 + 4264) = 2;
  *(v6 + 4272) = "HKQuantityTypeIdentifierRunningSpeed";
  *(v6 + 4280) = 36;
  *(v6 + 4288) = 2;
  *(v6 + 4296) = "HKQuantityTypeIdentifierRunningStrideLength";
  *(v6 + 4304) = 43;
  *(v6 + 4312) = 2;
  *(v6 + 4320) = "HKQuantityTypeIdentifierRunningVerticalOscillation";
  *(v6 + 4328) = 50;
  *(v6 + 4336) = 2;
  *(v6 + 4344) = "HKQuantityTypeIdentifierSixMinuteWalkTestDistance";
  *(v6 + 4352) = 49;
  *(v6 + 4360) = 2;
  *(v6 + 4368) = "HKQuantityTypeIdentifierStairAscentSpeed";
  *(v6 + 4376) = 40;
  *(v6 + 4384) = 2;
  *(v6 + 4392) = "HKQuantityTypeIdentifierStairDescentSpeed";
  *(v6 + 4400) = 41;
  *(v6 + 4408) = 2;
  *(v6 + 4416) = "HKQuantityTypeIdentifierStepCount";
  *(v6 + 4424) = 33;
  *(v6 + 4432) = 2;
  *(v6 + 4440) = "HKQuantityTypeIdentifierSwimmingStrokeCount";
  *(v6 + 4448) = 43;
  *(v6 + 4456) = 2;
  *(v6 + 4464) = "HKQuantityTypeIdentifierTimeInDaylight";
  *(v6 + 4472) = 38;
  *(v6 + 4480) = 2;
  *(v6 + 4488) = "HKQuantityTypeIdentifierUVExposure";
  *(v6 + 4496) = 34;
  *(v6 + 4504) = 2;
  *(v6 + 4512) = "HKQuantityTypeIdentifierUnderwaterDepth";
  *(v6 + 4520) = 39;
  *(v6 + 4528) = 2;
  *(v6 + 4536) = "HKQuantityTypeIdentifierVO2Max";
  *(v6 + 4544) = 30;
  *(v6 + 4552) = 2;
  *(v6 + 4560) = "HKQuantityTypeIdentifierWaistCircumference";
  *(v6 + 4568) = 42;
  *(v6 + 4576) = 2;
  *(v6 + 4584) = "HKQuantityTypeIdentifierWalkingAsymmetryPercentage";
  *(v6 + 4592) = 50;
  *(v6 + 4600) = 2;
  *(v6 + 4608) = "HKQuantityTypeIdentifierWalkingDoubleSupportPercentage";
  *(v6 + 4616) = 54;
  *(v6 + 4624) = 2;
  *(v6 + 4632) = "HKQuantityTypeIdentifierWalkingHeartRateAverage";
  *(v6 + 4640) = 47;
  *(v6 + 4648) = 2;
  *(v6 + 4656) = "HKQuantityTypeIdentifierWalkingSpeed";
  *(v6 + 4664) = 36;
  *(v6 + 4672) = 2;
  *(v6 + 4680) = "HKQuantityTypeIdentifierWalkingStepLength";
  *(v6 + 4688) = 41;
  *(v6 + 4696) = 2;
  *(v6 + 4704) = "HKSampleTypeStateOfMind";
  *(v6 + 4712) = 23;
  *(v6 + 4720) = 2;
  *(v6 + 4728) = "HKVisionPrescriptionTypeIdentifier";
  *(v6 + 4736) = 34;
  *(v6 + 4744) = 2;
  *(v6 + 4752) = "HKWorkoutTypeIdentifier";
  *(v6 + 4760) = 23;
  *(v6 + 4768) = 2;
  *(v6 + 4776) = "HKRings";
  *(v6 + 4784) = 7;
  *(v6 + 4792) = 2;
  *(v6 + 4800) = "HKScoredAssessmentTypeIdentifierGAD7";
  *(v6 + 4808) = 36;
  *(v6 + 4816) = 2;
  *(v6 + 4824) = "HKScoredAssessmentTypeIdentifierPHQ9";
  *(v6 + 4832) = 36;
  *(v6 + 4840) = 2;
  *(v6 + 4848) = "HKCategoryValueSleepAnalysisInBed";
  *(v6 + 4856) = 33;
  *(v6 + 4864) = 2;
  *(v6 + 4872) = "_HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength";
  *(v6 + 4880) = 62;
  *(v6 + 4888) = 2;
  *(v6 + 4896) = "_HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength";
  *(v6 + 4904) = 63;
  *(v6 + 4912) = 2;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_16E55C(v5, v10);

  v8 = 0;
  result = 112;
  switch(v7)
  {
    case 0:
      goto LABEL_130;
    case 1:
      v8 = 1;
      goto LABEL_130;
    case 2:
      v8 = 2;
      goto LABEL_130;
    case 3:
      v8 = 3;
      goto LABEL_130;
    case 4:
      v8 = 4;
      goto LABEL_130;
    case 5:
      v8 = 5;
      goto LABEL_130;
    case 6:
      v8 = 6;
      goto LABEL_130;
    case 7:
      v8 = 7;
      goto LABEL_130;
    case 8:
      v8 = 8;
      goto LABEL_130;
    case 9:
      v8 = 9;
      goto LABEL_130;
    case 10:
      v8 = 10;
      goto LABEL_130;
    case 11:
      v8 = 11;
      goto LABEL_130;
    case 12:
      v8 = 12;
      goto LABEL_130;
    case 13:
      v8 = 13;
      goto LABEL_130;
    case 14:
      v8 = 14;
      goto LABEL_130;
    case 15:
      v8 = 15;
      goto LABEL_130;
    case 16:
      v8 = 16;
      goto LABEL_130;
    case 17:
      v8 = 17;
      goto LABEL_130;
    case 18:
      v8 = 18;
      goto LABEL_130;
    case 19:
      v8 = 19;
      goto LABEL_130;
    case 20:
      v8 = 20;
      goto LABEL_130;
    case 21:
      v8 = 21;
      goto LABEL_130;
    case 22:
      v8 = 22;
      goto LABEL_130;
    case 23:
      v8 = 23;
      goto LABEL_130;
    case 24:
      v8 = 24;
      goto LABEL_130;
    case 25:
      v8 = 25;
      goto LABEL_130;
    case 26:
      v8 = 26;
      goto LABEL_130;
    case 27:
      v8 = 27;
      goto LABEL_130;
    case 28:
      v8 = 28;
      goto LABEL_130;
    case 29:
      v8 = 29;
      goto LABEL_130;
    case 30:
      v8 = 30;
      goto LABEL_130;
    case 31:
      v8 = 31;
      goto LABEL_130;
    case 32:
      v8 = 32;
      goto LABEL_130;
    case 33:
      v8 = 33;
      goto LABEL_130;
    case 34:
      v8 = 34;
      goto LABEL_130;
    case 35:
      v8 = 35;
      goto LABEL_130;
    case 36:
      v8 = 36;
      goto LABEL_130;
    case 37:
      v8 = 37;
      goto LABEL_130;
    case 38:
      v8 = 38;
      goto LABEL_130;
    case 39:
      v8 = 39;
      goto LABEL_130;
    case 40:
      v8 = 40;
      goto LABEL_130;
    case 41:
      v8 = 41;
      goto LABEL_130;
    case 42:
      v8 = 42;
      goto LABEL_130;
    case 43:
      v8 = 43;
      goto LABEL_130;
    case 44:
      v8 = 44;
      goto LABEL_130;
    case 45:
      v8 = 45;
      goto LABEL_130;
    case 46:
      v8 = 46;
      goto LABEL_130;
    case 47:
      v8 = 47;
      goto LABEL_130;
    case 48:
      v8 = 48;
      goto LABEL_130;
    case 49:
      v8 = 49;
      goto LABEL_130;
    case 50:
      v8 = 50;
      goto LABEL_130;
    case 51:
      v8 = 51;
      goto LABEL_130;
    case 52:
      v8 = 52;
      goto LABEL_130;
    case 53:
      v8 = 53;
      goto LABEL_130;
    case 54:
      v8 = 54;
      goto LABEL_130;
    case 55:
      v8 = 55;
      goto LABEL_130;
    case 56:
      v8 = 56;
      goto LABEL_130;
    case 57:
      v8 = 57;
      goto LABEL_130;
    case 58:
      v8 = 58;
      goto LABEL_130;
    case 59:
      v8 = 59;
      goto LABEL_130;
    case 60:
      v8 = 60;
      goto LABEL_130;
    case 61:
      v8 = 61;
      goto LABEL_130;
    case 62:
      v8 = 62;
      goto LABEL_130;
    case 63:
      v8 = 63;
      goto LABEL_130;
    case 64:
      v8 = 64;
      goto LABEL_130;
    case 65:
      v8 = 65;
      goto LABEL_130;
    case 66:
      v8 = 66;
      goto LABEL_130;
    case 67:
      v8 = 67;
      goto LABEL_130;
    case 68:
      v8 = 68;
      goto LABEL_130;
    case 69:
      v8 = 69;
      goto LABEL_130;
    case 70:
      v8 = 70;
      goto LABEL_130;
    case 71:
      v8 = 71;
      goto LABEL_130;
    case 72:
      v8 = 72;
      goto LABEL_130;
    case 73:
      v8 = 73;
      goto LABEL_130;
    case 74:
      v8 = 74;
      goto LABEL_130;
    case 75:
      v8 = 75;
      goto LABEL_130;
    case 76:
      v8 = 76;
      goto LABEL_130;
    case 77:
      v8 = 77;
      goto LABEL_130;
    case 78:
      v8 = 78;
      goto LABEL_130;
    case 79:
      v8 = 79;
      goto LABEL_130;
    case 80:
      v8 = 80;
      goto LABEL_130;
    case 81:
      v8 = 81;
      goto LABEL_130;
    case 82:
      v8 = 82;
      goto LABEL_130;
    case 83:
      v8 = 83;
      goto LABEL_130;
    case 84:
      v8 = 84;
      goto LABEL_130;
    case 85:
      v8 = 85;
      goto LABEL_130;
    case 86:
      v8 = 86;
      goto LABEL_130;
    case 87:
      v8 = 87;
      goto LABEL_130;
    case 88:
      v8 = 88;
      goto LABEL_130;
    case 89:
      v8 = 89;
      goto LABEL_130;
    case 90:
      v8 = 90;
      goto LABEL_130;
    case 91:
      v8 = 91;
      goto LABEL_130;
    case 92:
      v8 = 92;
      goto LABEL_130;
    case 93:
      v8 = 93;
      goto LABEL_130;
    case 94:
      v8 = 94;
      goto LABEL_130;
    case 95:
      v8 = 95;
      goto LABEL_130;
    case 96:
      v8 = 96;
      goto LABEL_130;
    case 97:
      v8 = 97;
      goto LABEL_130;
    case 98:
      v8 = 98;
      goto LABEL_130;
    case 99:
      v8 = 99;
      goto LABEL_130;
    case 100:
      v8 = 100;
      goto LABEL_130;
    case 101:
      v8 = 101;
      goto LABEL_130;
    case 102:
      v8 = 102;
      goto LABEL_130;
    case 103:
      v8 = 103;
      goto LABEL_130;
    case 104:
      v8 = 104;
      goto LABEL_130;
    case 105:
      v8 = 105;
      goto LABEL_130;
    case 106:
      v8 = 106;
      goto LABEL_130;
    case 107:
      v8 = 107;
      goto LABEL_130;
    case 108:
      v8 = 108;
      goto LABEL_130;
    case 109:
      v8 = 109;
      goto LABEL_130;
    case 110:
      v8 = 110;
      goto LABEL_130;
    case 111:
      v8 = 111;
LABEL_130:
      result = v8;
      break;
    case 112:
      return result;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v7 & 0xFFFFFFFFFFFFFFC0) == 0x80)
      {
        result = v7;
      }

      else if ((v7 - 192) >= 0xD)
      {
        result = 4294967245;
      }

      else
      {
        result = v7;
      }

      break;
  }

  return result;
}

uint64_t sub_23260@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_23290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_208C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_232D0()
{
  result = qword_1C6540;
  if (!qword_1C6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6540);
  }

  return result;
}

Class sub_23324(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAbdominalCramps];
      return v3;
    case 2:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAcne];
      return v3;
    case 3:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppetiteChanges];
      return v3;
    case 4:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleStandHour];
      return v3;
    case 5:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAppleWalkingSteadinessEvent];
      return v3;
    case 6:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierAudioExposureEvent];
      return v3;
    case 7:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBladderIncontinence];
      return v3;
    case 8:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBloating];
      return v3;
    case 9:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierBreastPain];
      return v3;
    case 10:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierCervicalMucusQuality];
      return v3;
    case 11:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierChestTightnessOrPain];
      return v3;
    case 12:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierChills];
      return v3;
    case 13:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierConstipation];
      return v3;
    case 14:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierContraceptive];
      return v3;
    case 15:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierCoughing];
      return v3;
    case 16:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDiarrhea];
      return v3;
    case 17:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDizziness];
      return v3;
    case 18:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierDrySkin];
      return v3;
    case 19:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent];
      return v3;
    case 20:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFainting];
      return v3;
    case 21:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFatigue];
      return v3;
    case 22:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierFever];
      return v3;
    case 23:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierGeneralizedBodyAche];
      return v3;
    case 24:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHairLoss];
      return v3;
    case 25:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHandwashingEvent];
      return v3;
    case 26:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeadache];
      return v3;
    case 27:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeadphoneAudioExposureEvent];
      return v3;
    case 28:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHeartburn];
      return v3;
    case 29:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHighHeartRateEvent];
      return v3;
    case 30:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierHotFlashes];
      return v3;
    case 31:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierInfrequentMenstrualCycles];
      return v3;
    case 32:
    case 49:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIntermenstrualBleeding];
      return v3;
    case 33:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIrregularHeartRhythmEvent];
      return v3;
    case 34:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierIrregularMenstrualCycles];
      return v3;
    case 35:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLactation];
      return v3;
    case 36:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLossOfSmell];
      return v3;
    case 37:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLossOfTaste];
      return v3;
    case 38:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowCardioFitnessEvent];
      return v3;
    case 39:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowHeartRateEvent];
      return v3;
    case 40:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierLowerBackPain];
      return v3;
    case 41:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMemoryLapse];
      return v3;
    case 42:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMenstrualFlow];
      return v3;
    case 43:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
      return v3;
    case 44:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierMoodChanges];
      return v3;
    case 45:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierNausea];
      return v3;
    case 46:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierNightSweats];
      return v3;
    case 47:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierOvulationTestResult];
      return v3;
    case 48:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPelvicPain];
      return v3;
    case 50:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPregnancy];
      return v3;
    case 51:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierPregnancyTestResult];
      return v3;
    case 52:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierProgesteroneTestResult];
      return v3;
    case 53:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierProlongedMenstrualPeriods];
      return v3;
    case 54:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat];
      return v3;
    case 55:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierRunnyNose];
      return v3;
    case 56:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSexualActivity];
      return v3;
    case 57:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierShortnessOfBreath];
      return v3;
    case 58:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSinusCongestion];
      return v3;
    case 59:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSkippedHeartbeat];
      return v3;
    case 60:
    case -54:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepAnalysis];
      return v3;
    case 61:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSleepChanges];
      return v3;
    case 62:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierSoreThroat];
      return v3;
    case 63:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierToothbrushingEvent];
      return v3;
    case 64:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierVaginalDryness];
      return v3;
    case 65:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierVomiting];
      return v3;
    case 66:
      v3 = [objc_opt_self() categoryTypeForIdentifier:HKCategoryTypeIdentifierWheezing];
      return v3;
    case 67:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBiologicalSex];
      return v3;
    case 68:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierBloodType];
      return v3;
    case 69:
    case -58:
      return result;
    case 70:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierDateOfBirth];
      return v3;
    case 71:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierFitzpatrickSkinType];
      return v3;
    case 72:
      v3 = [objc_opt_self() characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierWheelchairUse];
      return v3;
    case 73:
      v3 = [objc_opt_self() allergyRecordTypeForIdentifier:HKAllergyRecordTypeIdentifierAllergyRecord];
      return v3;
    case 74:
      v3 = [objc_opt_self() clinicalNoteRecordTypeForIdentifier:HKClinicalNoteRecordTypeIdentifierClinicalNoteRecord];
      return v3;
    case 75:
      v3 = [objc_opt_self() conditionRecordTypeForIdentifier:HKConditionRecordTypeIdentifierConditionRecord];
      return v3;
    case 76:
      v3 = [objc_opt_self() coverageRecordTypeForIdentifier:HKCoverageRecordTypeIdentifierCoverageRecord];
      return v3;
    case 77:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierImmunizationRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 78:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierLabResultRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 79:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierMedicationRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 80:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierProcedureRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 81:
      sub_25908(0, &qword_1C6550, HKClinicalType_ptr);
      v4 = &HKClinicalTypeIdentifierVitalSignRecord;
      return sub_16E3AC(*v4).super.super.super.isa;
    case 82:
      v3 = [objc_opt_self() correlationTypeForIdentifier:HKCorrelationTypeIdentifierBloodPressure];
      return v3;
    case 83:
      v3 = [objc_opt_self() dataTypeWithCode:145];
      return v3;
    case 84:
      v3 = [objc_opt_self() dataTypeWithCode:144];
      return v3;
    case 85:
      v3 = [objc_opt_self() dataTypeWithCode:197];
      return v3;
    case 86:
      v3 = [objc_opt_self() dataTypeWithCode:198];
      return v3;
    case 87:
      v3 = [objc_opt_self() dataTypeWithCode:107];
      return v3;
    case 88:
      v3 = [objc_opt_self() dataTypeWithCode:273];
      return v3;
    case 89:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
      return v3;
    case 90:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleExerciseTime];
      return v3;
    case 91:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
      return v3;
    case 92:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleSleepingWristTemperature];
      return v3;
    case 93:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
      return v3;
    case 94:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleWalkingSteadiness];
      return v3;
    case 95:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAtrialFibrillationBurden];
      return v3;
    case 96:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalBodyTemperature];
      return v3;
    case 97:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
      return v3;
    case 98:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];
      return v3;
    case 99:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingFunctionalThresholdPower];
      return v3;
    case 100:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingPower];
      return v3;
    case 101:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingSpeed];
      return v3;
    case 102:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodAlcoholContent];
      return v3;
    case 103:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBloodGlucose];
      return v3;
    case 104:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyFatPercentage];
      return v3;
    case 105:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
      return v3;
    case 106:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMassIndex];
      return v3;
    case 107:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyTemperature];
      return v3;
    case 108:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryBiotin];
      return v3;
    case 109:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCaffeine];
      return v3;
    case 110:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCalcium];
      return v3;
    case 111:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCarbohydrates];
      return v3;
    case 112:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChloride];
      return v3;
    case 113:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCholesterol];
      return v3;
    case 114:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryChromium];
      return v3;
    case 115:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryCopper];
      return v3;
    case 116:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryEnergyConsumed];
      return v3;
    case 117:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatMonounsaturated];
      return v3;
    case 118:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatPolyunsaturated];
      return v3;
    case 119:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatSaturated];
      return v3;
    case 120:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFatTotal];
      return v3;
    case 121:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFiber];
      return v3;
    case 122:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryFolate];
      return v3;
    case 123:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIodine];
      return v3;
    case 124:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryIron];
      return v3;
    case 125:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMagnesium];
      return v3;
    case 126:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryManganese];
      return v3;
    case 127:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryMolybdenum];
      return v3;
    case -128:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryNiacin];
      return v3;
    case -127:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPantothenicAcid];
      return v3;
    case -126:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPhosphorus];
      return v3;
    case -125:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryPotassium];
      return v3;
    case -124:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryProtein];
      return v3;
    case -123:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryRiboflavin];
      return v3;
    case -122:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySelenium];
      return v3;
    case -121:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySodium];
      return v3;
    case -120:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietarySugar];
      return v3;
    case -119:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryThiamin];
      return v3;
    case -118:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminA];
      return v3;
    case -117:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB12];
      return v3;
    case -116:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminB6];
      return v3;
    case -115:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminC];
      return v3;
    case -114:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminD];
      return v3;
    case -113:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminE];
      return v3;
    case -112:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryVitaminK];
      return v3;
    case -111:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryWater];
      return v3;
    case -110:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDietaryZinc];
      return v3;
    case -109:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceCycling];
      return v3;
    case -108:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceDownhillSnowSports];
      return v3;
    case -107:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceSwimming];
      return v3;
    case -106:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWalkingRunning];
      return v3;
    case -105:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierDistanceWheelchair];
      return v3;
    case -104:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierElectrodermalActivity];
      return v3;
    case -103:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalAudioExposure];
      return v3;
    case -102:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierEnvironmentalSoundReduction];
      return v3;
    case -101:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierFlightsClimbed];
      return v3;
    case -100:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierForcedExpiratoryVolume1];
      return v3;
    case -99:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierForcedVitalCapacity];
      return v3;
    case -98:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeadphoneAudioExposure];
      return v3;
    case -97:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
      return v3;
    case -96:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateRecoveryOneMinute];
      return v3;
    case -95:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRateVariabilitySDNN];
      return v3;
    case -94:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierHeight];
      return v3;
    case -93:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierInhalerUsage];
      return v3;
    case -92:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierInsulinDelivery];
      return v3;
    case -91:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierLeanBodyMass];
      return v3;
    case -90:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNikeFuel];
      return v3;
    case -89:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPhysicalEffort];
      return v3;
    case -88:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfAlcoholicBeverages];
      return v3;
    case -87:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierNumberOfTimesFallen];
      return v3;
    case -86:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierOxygenSaturation];
      return v3;
    case -85:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPeakExpiratoryFlowRate];
      return v3;
    case -84:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPeripheralPerfusionIndex];
      return v3;
    case -83:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierPushCount];
      return v3;
    case -82:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRespiratoryRate];
      return v3;
    case -81:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRestingHeartRate];
      return v3;
    case -80:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningGroundContactTime];
      return v3;
    case -79:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningPower];
      return v3;
    case -78:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningSpeed];
      return v3;
    case -77:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningStrideLength];
      return v3;
    case -76:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningVerticalOscillation];
      return v3;
    case -75:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierSixMinuteWalkTestDistance];
      return v3;
    case -74:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStairAscentSpeed];
      return v3;
    case -73:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStairDescentSpeed];
      return v3;
    case -72:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
      return v3;
    case -71:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierSwimmingStrokeCount];
      return v3;
    case -70:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierTimeInDaylight];
      return v3;
    case -69:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierUVExposure];
      return v3;
    case -68:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierUnderwaterDepth];
      return v3;
    case -67:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
      return v3;
    case -66:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWaistCircumference];
      return v3;
    case -65:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingAsymmetryPercentage];
      return v3;
    case -64:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingDoubleSupportPercentage];
      return v3;
    case -63:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingHeartRateAverage];
      return v3;
    case -62:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingSpeed];
      return v3;
    case -61:
      v3 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierWalkingStepLength];
      return v3;
    case -60:
      sub_25908(0, &qword_1C6548, HKSampleType_ptr);
      v3 = [swift_getObjCClassFromMetadata() stateOfMindType];
      return v3;
    case -59:
      v3 = [objc_opt_self() dataTypeWithCode:257];
      return v3;
    case -56:
      v3 = [objc_opt_self() gad7Type];
      return v3;
    case -55:
      v3 = [objc_opt_self() phq9Type];
      return v3;
    case -53:
      v3 = [objc_opt_self() dataTypeWithCode:175];
      return v3;
    case -52:
      v3 = [objc_opt_self() dataTypeWithCode:176];
      return v3;
    default:
      v3 = [objc_opt_self() activitySummaryType];
      return v3;
  }
}

uint64_t sub_25908(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25948(unsigned __int8 a1)
{
  result = 0xD000000000000016;
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 'X':
        return 0xD000000000000023;
      case 'Y':
      case 'Z':
      case '[':
      case ']':
      case 'a':
        return 0xD000000000000018;
      case '\\':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'h':
      case 'j':
        return result;
        return 0xD00000000000001DLL;
      case 'g':
      case 'k':
        return 0xD000000000000017;
      case 'i':
        return 0xD000000000000021;
      default:
        JUMPOUT(0);
    }
  }

  v5 = a1 - 147;
  if (v5 <= 0x25)
  {
    if (((1 << (a1 + 109)) & 0x2004000119) != 0)
    {
      return 0xD000000000000018;
    }

    if (((1 << (a1 + 109)) & 0x8800000) != 0)
    {
      return 0xD00000000000001CLL;
    }

    if (v5 == 15)
    {
      return 0xD000000000000021;
    }
  }

  if (a1 != 60)
  {
    if (a1 == 32 || a1 == 42)
    {
      return 0xD00000000000001DLL;
    }

    if (a1 == 4)
    {
      return 0xD000000000000018;
    }
  }

  return result;
}

uint64_t sub_25AE8(uint64_t a1, __int128 *a2, const void *a3, const void *a4, uint64_t a5)
{
  v12 = sub_16D63C();
  v13 = sub_4348(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_4304();
  v16 = sub_16C58C();
  sub_389CC(v16);
  v17 = sub_16C57C();
  *(v5 + 320) = v6;
  *(v5 + 328) = &protocol witness table for ResponseFactory;
  *(v5 + 296) = v17;
  type metadata accessor for WellnessLoggingCATsSimple();
  sub_16D62C();
  *(v5 + 336) = sub_16D5FC();
  type metadata accessor for WellnessCATs();
  sub_16D62C();
  *(v5 + 344) = sub_16D58C();
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v18 = objc_allocWithZone(sub_16DB4C());
  *(v5 + 352) = sub_16DB3C();
  *(v5 + 16) = a1;
  sub_17464(a2, v5 + 24);
  memcpy((v5 + 64), a3, 0xA0uLL);
  memcpy((v5 + 224), a4, 0x41uLL);
  *(v5 + 400) = 0;
  if (*(a5 + 24))
  {
    sub_17464(a5, &v20);
  }

  else
  {
    *(&v21 + 1) = &type metadata for MedsCorrectionsFlowProvider;
    v22 = &off_1BB2F8;
    *&v20 = swift_allocObject();
    sub_8388(v5 + 24, v20 + 16);
    sub_8284(v5 + 64, v20 + 56);
    if (*(a5 + 24))
    {
      sub_8748(a5, &qword_1C67D8, &unk_176890);
    }
  }

  sub_17464(&v20, v5 + 360);
  return v5;
}

uint64_t sub_25CD4()
{
  type metadata accessor for GenericMedLoggingFlow();
  sub_37C38(&qword_1C67D0, v0, type metadata accessor for GenericMedLoggingFlow);
  return sub_16C33C();
}

uint64_t sub_25D60()
{
  sub_8A88();
  v1[1137] = v0;
  v1[1136] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[1138] = sub_8C38();
  v1[1139] = swift_task_alloc();
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[1140] = sub_8BC0();
  v9 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[1141] = sub_8BC0();
  v12 = type metadata accessor for GenericMedCompletedLogModel();
  v1[1142] = v12;
  sub_4348(v12);
  v14 = *(v13 + 64);
  v1[1143] = sub_8BC0();
  v15 = type metadata accessor for SnippetHeaderModel();
  v1[1144] = v15;
  sub_4348(v15);
  v17 = *(v16 + 64);
  v1[1145] = sub_8BC0();
  v18 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v18);
  v20 = *(v19 + 64);
  v1[1146] = sub_8C38();
  v1[1147] = swift_task_alloc();
  v1[1148] = swift_task_alloc();
  v1[1149] = swift_task_alloc();
  v21 = sub_16C46C();
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[1150] = sub_8BC0();
  v24 = sub_16C7BC();
  v1[1151] = v24;
  sub_888C(v24);
  v1[1152] = v25;
  v27 = *(v26 + 64);
  v1[1153] = sub_8C38();
  v1[1154] = swift_task_alloc();
  v1[1155] = swift_task_alloc();
  v1[1156] = swift_task_alloc();
  v1[1157] = swift_task_alloc();
  v1[1158] = swift_task_alloc();
  v1[1159] = swift_task_alloc();
  v1[1160] = swift_task_alloc();
  v28 = sub_16BF5C();
  v1[1161] = v28;
  sub_888C(v28);
  v1[1162] = v29;
  v31 = *(v30 + 64);
  v1[1163] = sub_8C38();
  v1[1164] = swift_task_alloc();
  v32 = sub_16DBEC();
  v1[1165] = v32;
  sub_888C(v32);
  v1[1166] = v33;
  v35 = *(v34 + 64);
  v1[1167] = sub_8C38();
  v1[1168] = swift_task_alloc();
  v1[1169] = swift_task_alloc();
  v1[1170] = swift_task_alloc();
  v1[1171] = swift_task_alloc();
  v1[1172] = swift_task_alloc();
  v1[1173] = swift_task_alloc();
  v1[1174] = swift_task_alloc();
  v1[1175] = swift_task_alloc();
  v1[1176] = swift_task_alloc();
  v1[1177] = swift_task_alloc();
  v1[1178] = swift_task_alloc();
  v1[1179] = swift_task_alloc();
  v1[1180] = swift_task_alloc();
  v1[1181] = swift_task_alloc();
  v1[1182] = swift_task_alloc();
  v1[1183] = swift_task_alloc();
  v1[1184] = swift_task_alloc();
  v1[1185] = swift_task_alloc();
  v1[1186] = swift_task_alloc();
  v1[1187] = swift_task_alloc();
  v1[1188] = swift_task_alloc();
  v1[1189] = swift_task_alloc();
  v1[1190] = swift_task_alloc();
  v1[1191] = swift_task_alloc();
  v1[1192] = swift_task_alloc();
  v1[1193] = swift_task_alloc();
  v1[1194] = swift_task_alloc();
  v1[1195] = swift_task_alloc();
  v1[1196] = swift_task_alloc();
  v1[1197] = swift_task_alloc();
  v1[1198] = swift_task_alloc();
  v1[1199] = swift_task_alloc();
  v1[1200] = swift_task_alloc();
  v1[1201] = swift_task_alloc();
  v1[1202] = swift_task_alloc();
  v36 = sub_17960();

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_261EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void (*a55)(uint64_t), void (*a56)(uint64_t), uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  memcpy((v60 + 4952), (*(v60 + 9096) + 224), 0x41uLL);
  v61 = *(v60 + 4952);
  *(v60 + 9624) = v61;
  v62 = *(v60 + 5016);
  if (v62 >> 6 == 2)
  {
    v92 = *(v60 + 9384);
    v93 = *(v60 + 9328);
    v94 = *(v60 + 9320);
    *(v60 + 10536) = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    *(v60 + 10544) = *(v93 + 16);
    *(v60 + 10552) = (v93 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v95 = sub_389C0();
    a56 = v96;
    v96(v95);
    v97 = sub_16DBDC();
    v98 = sub_16E36C();
    if (sub_1BA1C(v98))
    {
      v99 = sub_1BA38();
      sub_1BA50(v99);
      sub_1B9D0(&def_259DC, v100, v101, "Received .receivedConfirmationMixedLogging code, sending back to handler.");
      sub_1BA00();
    }

    v102 = *(v60 + 9384);
    v103 = *(v60 + 9328);
    v104 = *(v60 + 9320);
    v105 = *(v60 + 9096);

    v106 = *(v103 + 8);
    *(v60 + 10560) = v106;
    v107 = sub_C9F8();
    v106(v107);
    v108 = [objc_allocWithZone(sub_16DA1C()) init];
    *(v60 + 10568) = v108;
    v109 = *(v105 + 16);
    v110 = v108;

    LOBYTE(v102) = getMedStatus(from:)();

    v111 = [objc_allocWithZone(NSNumber) initWithBool:v102 & 1];
    [v110 setMedStatus:v111];

    if ((v61 - 3) < 3u)
    {
      v112 = *(v60 + 9096);
      sub_37750();
      v113 = v110;
      isa = sub_16E3BC((3u >> ((v61 - 3) & 7)) & 1).super.super.isa;
      [v113 setShouldOverwriteExistingStatuses:isa];

      *(v60 + 10576) = *(v112 + 352);
      *(v60 + 16) = v60;
      *(v60 + 56) = v60 + 9024;
      *(v60 + 24) = sub_2F588;
      v115 = swift_continuation_init();
      *(v60 + 5360) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5336) = v115;
      *(v60 + 5304) = _NSConcreteStackBlock;
      *(v60 + 5312) = 1107296256;
      sub_38494();
      *(v60 + 5320) = v116;
      *(v60 + 5328) = &unk_1B9B58;
      [swift_unknownObjectRetain() handleLogGenericMedications:v113 completion:v60 + 5304];
LABEL_45:
      sub_38648();

      return _swift_continuation_await(v227);
    }

    v145 = v60 + 1272;
    v146 = *(v60 + 9376);
    v147 = *(v60 + 9320);
    sub_385D8();
    swift_beginAccess();
    v148 = sub_389C0();
    a56(v148);
    v149 = sub_16DBDC();
    v150 = sub_16E37C();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = sub_1BA38();
      *v151 = 0;
      _os_log_impl(&def_259DC, v149, v150, ".receivedConfirmationMixedLogging got an unrecognized confirmation status, returning GenericError", v151, 2u);
      sub_8A2C();
    }

    v152 = *(v60 + 9376);
    v153 = *(v60 + 9328);
    v154 = *(v60 + 9320);
    v155 = *(v60 + 9096);
    v156 = *(v60 + 9088);

    v157 = sub_387CC();
    v106(v157);
    sub_8284(v155 + 64, v60 + 1272);
    sub_82E0();
    sub_16C4EC();
    sub_389E8();

    goto LABEL_39;
  }

  if (v62 >> 6 != 3)
  {
LABEL_36:
    v145 = v60 + 792;
    v186 = *(v60 + 9336);
    v187 = *(v60 + 9328);
    v188 = *(v60 + 9320);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v190 = *(v187 + 16);
    v189 = v187 + 16;
    v191 = sub_389C0();
    v192(v191);
    v193 = sub_16DBDC();
    v194 = sub_16E37C();
    if (sub_38670(v194))
    {
      v195 = sub_1BA38();
      sub_387A4(v195);
      sub_3851C(&def_259DC, v196, v197, "GenericMedLoggingFlow ended up in an unrecognized state, returning GenericErrorFlow.");
      sub_38604();
    }

    v198 = *(v60 + 9336);
    sub_38CDC();
    v199 = *(v60 + 9096);
    v200 = *(v60 + 9088);

    v201 = *(v189 + 8);
    v202 = sub_C9E0();
    v203(v202);
    sub_8284(v199 + 64, v60 + 792);
    sub_82E0();
    sub_16C4EC();
LABEL_39:
    sub_8334(v145);
    sub_37D94();
    sub_37E9C();

    sub_C9BC();
    sub_38648();

    return v205(v204, v205, v206, v207, v208, v209, v210, v211, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
  }

  v63 = *(v60 + 4984);
  v64 = *(v60 + 4976);
  v65 = *(v60 + 4968);
  v66 = *(v60 + 4960);
  v67 = *(v60 + 4992) | *(v60 + 5000) | *(v60 + 5008);
  if (v62 == 192 && !(v67 | v61 | v63 | v64 | v65 | v66))
  {
    v68 = *(v60 + 9616);
    v69 = *(v60 + 9328);
    v70 = *(v60 + 9320);
    *(v60 + 9632) = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v71 = *(v69 + 16);
    *(v60 + 9640) = v71;
    *(v60 + 9648) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v72 = sub_38B40();
    v71(v72);
    v73 = sub_16DBDC();
    v74 = sub_16E36C();
    if (sub_1BA1C(v74))
    {
      v75 = sub_1BA38();
      sub_387A4(v75);
      _os_log_impl(&def_259DC, v73, v70, "Executing GenericMedLoggingFlow", &loc_20B0, 2u);
      sub_38604();
    }

    v76 = *(v60 + 9616);
    v77 = *(v60 + 9328);
    v78 = *(v60 + 9320);
    v79 = *(v60 + 9312);
    v80 = *(v60 + 9096);

    v81 = *(v77 + 8);
    v82 = sub_38E50();
    a55 = v83;
    v83(v82);
    a56 = v80;
    v84 = *(v80 + 16);

    sub_16BF4C();
    v85 = isLoggingTimeframeToday(from:todayDate:)(v84, v79);
    v86 = *(v60 + 9312);
    v87 = *(v60 + 9296);
    v88 = *(v60 + 9288);
    if (v85)
    {

      v89 = *(v87 + 8);
      v90 = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v91 = sub_38E50();
      v89(v91);
LABEL_44:
      *(v60 + 9656) = v89;
      v216 = *(v60 + 9304);
      v217 = *(v60 + 9288);
      v241 = *(v60 + 9096);
      v218 = [objc_allocWithZone(sub_16DA1C()) init];
      *(v60 + 9664) = v218;
      v219 = *(v80 + 16);

      sub_16BF4C();
      v220 = isLoggingTimeframeToday(from:todayDate:)(v219, v216);

      *(v60 + 9672) = v90;
      v221 = sub_387CC();
      v89(v221);
      v222 = [objc_allocWithZone(NSNumber) initWithBool:v220 & 1];
      [v218 setIsTimeframeToday:v222];

      v223 = *(a56 + 2);

      LOBYTE(v217) = getMedStatus(from:)();

      v224 = [objc_allocWithZone(NSNumber) initWithBool:v217 & 1];
      [v218 setMedStatus:v224];

      *(v60 + 9680) = *(v241 + 352);
      *(v60 + 80) = v60;
      *(v60 + 120) = v60 + 9048;
      *(v60 + 88) = sub_270FC;
      v225 = swift_continuation_init();
      *(v60 + 5424) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5400) = v225;
      *(v60 + 5368) = _NSConcreteStackBlock;
      *(v60 + 5376) = 1107296256;
      sub_38494();
      *(v60 + 5384) = v226;
      *(v60 + 5392) = &unk_1B9C70;
      [swift_unknownObjectRetain() handleLogGenericMedications:v218 completion:v60 + 5368];
      goto LABEL_45;
    }

    v212 = isLoggingTimeframeNone(from:)();

    v214 = *(v87 + 8);
    v213 = v87 + 8;
    v89 = v214;
    v215 = sub_38E50();
    v214(v215);
    if (v212)
    {
      v90 = v213 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      goto LABEL_44;
    }

    v145 = v60 + 3352;
    v229 = *(v60 + 9608);
    v230 = *(v60 + 9320);
    sub_385D8();
    swift_beginAccess();
    v231 = sub_38B40();
    v71(v231);
    v232 = sub_16DBDC();
    v233 = sub_16E36C();
    if (sub_38670(v233))
    {
      v234 = sub_1BA38();
      sub_387A4(v234);
      sub_3851C(&def_259DC, v235, v236, "Received unsupported timeframe while logging generic medication");
      sub_38604();
    }

    v237 = *(v60 + 9608);
    sub_38CDC();
    v238 = *(v60 + 9096);
    v239 = *(v60 + 9088);

    v240 = sub_C9E0();
    a55(v240);
    sub_8284(v238 + 64, v60 + 3352);
    sub_82E0();
    sub_16C4EC();
    sub_389E8();
    goto LABEL_39;
  }

  v117 = v67 | v63 | v64 | v65 | v66;
  v118 = v62 == 192 && v61 == 7;
  if (!v118 || v117)
  {
    v158 = v62 == 192 && v61 == 9;
    if (v158 && !v117)
    {
      v159 = *(v60 + 9488);
      v160 = *(v60 + 9328);
      v161 = *(v60 + 9320);
      *(v60 + 9984) = sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      *(v60 + 9992) = *(v160 + 16);
      sub_38DB8();
      *(v60 + 10000) = v162;
      v163 = sub_38B40();
      v164(v163);
      v165 = sub_16DBDC();
      v166 = sub_16E36C();
      if (sub_1BA1C(v166))
      {
        v167 = sub_1BA38();
        sub_1BA50(v167);
        sub_1B9D0(&def_259DC, v168, v169, "Received .receivedConfirmationLogAsScheduled code, sending back to intent handler.");
        sub_1BA00();
      }

      v170 = *(v60 + 9488);
      v171 = *(v60 + 9328);
      v172 = *(v60 + 9320);
      v173 = *(v60 + 9304);
      v174 = *(v60 + 9296);
      v175 = *(v60 + 9288);
      v176 = *(v60 + 9096);

      (*(v171 + 8))(v170, v172);
      v177 = [objc_allocWithZone(sub_16DA1C()) init];
      *(v60 + 10008) = v177;
      v178 = *(v176 + 16);

      sub_16BF4C();
      LOBYTE(v172) = isLoggingTimeframeToday(from:todayDate:)(v178, v173);

      v179 = *(v174 + 8);
      *(v60 + 10016) = v179;
      *(v60 + 10024) = (v174 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v179(v173, v175);
      v180 = [objc_allocWithZone(NSNumber) initWithBool:v172 & 1];
      [v177 setIsTimeframeToday:v180];

      v181 = *(v176 + 16);

      LOBYTE(v173) = getMedStatus(from:)();

      v182 = [objc_allocWithZone(NSNumber) initWithBool:v173 & 1];
      [v177 setMedStatus:v182];

      sub_37750();
      v183 = sub_16E3BC(1).super.super.isa;
      [v177 setConfirmedLogAsScheduled:v183];

      *(v60 + 10032) = *(v176 + 352);
      *(v60 + 144) = v60;
      *(v60 + 184) = v60 + 8992;
      *(v60 + 152) = sub_2ABA4;
      v184 = swift_continuation_init();
      *(v60 + 5296) = sub_2440(&qword_1C67A0, &qword_171C78);
      *(v60 + 5272) = v184;
      *(v60 + 5240) = _NSConcreteStackBlock;
      *(v60 + 5248) = 1107296256;
      sub_38494();
      *(v60 + 5256) = v185;
      *(v60 + 5264) = &unk_1B9BD0;
      [swift_unknownObjectRetain() handleLogGenericMedications:v177 completion:v60 + 5240];
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v119 = *(v60 + 9408);
  v120 = *(v60 + 9328);
  v121 = *(v60 + 9320);
  *(v60 + 10456) = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v123 = *(v120 + 16);
  v122 = v120 + 16;
  *(v60 + 10464) = v123;
  sub_38DB8();
  *(v60 + 10472) = v124;
  v125 = sub_38B40();
  v126(v125);
  v127 = sub_16DBDC();
  v128 = sub_16E36C();
  if (sub_1BA1C(v128))
  {
    v129 = sub_1BA38();
    sub_1BA50(v129);
    sub_1B9D0(&def_259DC, v130, v131, "Received .rejectedConfirmation code, indicating rejectedConfirmation to log as scheduled. creating output.");
    sub_1BA00();
  }

  v132 = *(v60 + 9408);
  sub_38DD0();
  v133 = *(v60 + 9104);
  v134 = *(v60 + 9096);

  *(v60 + 10480) = *(v122 + 8);
  v135 = sub_C9F8();
  v136(v135);
  *(v60 + 10488) = *(v134 + 336);
  sub_16D5CC();
  sub_8AB4();
  sub_214C(v137, v138, v139, v140);

  v141 = swift_task_alloc();
  *(v60 + 10496) = v141;
  *v141 = v60;
  v141[1] = sub_2EABC;
  v142 = *(v60 + 9104);
  sub_38648();

  return sub_166794();
}

uint64_t sub_270FC()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_271CC()
{
  sub_38664();
  v237 = v0;
  v4 = *(v0 + 9680);
  v5 = *(v0 + 9048);
  *(v0 + 9688) = v5;
  v6 = swift_unknownObjectRelease();
  v7 = (*(&stru_20.maxprot + (swift_isaMask & *v5)))(v6);
  switch(v7)
  {
    case 'e':
      sub_38584();
      v8 = *(v0 + 9600);
      v9 = *(v0 + 9320);
      sub_38474();
      v10 = sub_8948();
      (v3)(v10);
      v11 = sub_16DBDC();
      v12 = sub_16E36C();
      if (sub_38670(v12))
      {
        v13 = sub_1BA38();
        sub_387A4(v13);
        sub_3851C(&def_259DC, v14, v15, "Received .requiresAuthorization, returning Output with FlowActivity for Requires Auth");
        sub_38604();
      }

      v16 = *(v0 + 9664);
      v17 = *(v0 + 9600);
      v18 = *(v0 + 9328);
      v19 = *(v0 + 9320);
      v20 = *(v0 + 9096);
      v21 = *(v0 + 9088);

      v22 = *(v18 + 8);
      v23 = sub_387CC();
      v24(v23);
      sub_8388(v20 + 24, v0 + 216);
      sub_8284(v20 + 64, v0 + 256);
      v25 = sub_16C58C();
      sub_8D14(v25);
      v26 = sub_16C57C();
      *(v0 + 440) = v25;
      *(v0 + 448) = &protocol witness table for ResponseFactory;
      *(v0 + 416) = v26;
      v27 = sub_78A24();
      v28 = sub_78A50();
      *(v0 + 208) = 88;
      *(v0 + 456) = v27;
      *(v0 + 464) = v28;
      sub_84F0();
      sub_16C4EC();

      sub_376FC(v0 + 4952);
      sub_8544(v0 + 208);
      goto LABEL_50;
    case 'f':
      goto LABEL_12;
    case 'g':
      sub_386FC();
      v59 = *(v0 + 9560);
      sub_38450();
      v60 = sub_38408();
      (v2)(v60);
      sub_16DBDC();
      v61 = sub_16E36C();
      if (sub_1BA1C(v61))
      {
        v62 = sub_1BA38();
        sub_1BA50(v62);
        sub_1B9D0(&def_259DC, v63, v64, "Got multiple meds (failure for generic med logging), creating output.");
        sub_1BA00();
      }

      v65 = *(v0 + 9560);
      sub_38D44();
      *(v0 + 9872) = *(v1 + 8);
      v66 = sub_C9F8();
      v67(v66);
      *(v0 + 9880) = *(v2 + 336);

      v68 = swift_task_alloc();
      *(v0 + 9888) = v68;
      *v68 = v0;
      sub_38A20(v68);
      sub_38C58();

      return sub_165C0C();
    case 'h':
      goto LABEL_7;
    case 'i':
      v70 = *(v0 + 9648);
      v71 = *(v0 + 9640);
      v72 = *(v0 + 9632);
      v73 = *(v0 + 9512);
      v74 = *(v0 + 9320);
      v75 = *(v0 + 9096);
      memcpy((v0 + 5024), (v75 + 224), 0x41uLL);
      *(v75 + 224) = 4;
      *(v75 + 232) = 0u;
      v76 = v75 + 232;
      *(v76 + 16) = 0u;
      *(v76 + 32) = 0u;
      *(v76 + 48) = 0;
      *(v76 + 56) = -64;
      sub_376FC(v0 + 5024);
      sub_385D8();
      swift_beginAccess();
      v77 = sub_8948();
      v71(v77);
      v78 = sub_16DBDC();
      v79 = sub_16E36C();
      if (sub_38670(v79))
      {
        v80 = sub_1BA38();
        sub_387A4(v80);
        sub_3851C(&def_259DC, v81, v82, "got state .awaitingConfirmationLogAsScheduled inside GenericMedLoggingFlow");
        sub_38604();
      }

      v83 = *(v0 + 9512);
      v84 = *(v0 + 9328);
      v85 = *(v0 + 9320);

      v86 = *(v84 + 8);
      v87 = sub_C9E0();
      v86(v87);
      v88 = sub_372A0(v5, &selRef_matchingMeds);
      if (v88)
      {
        v89 = v88;
        v90 = *(v0 + 9096);
        v229 = *(v0 + 9088);
        v232 = *(v0 + 9664);
        v91 = *(v90 + 16);

        v226 = getMedStatus(from:)();

        v92 = sub_8284(v90 + 64, v0 + 2712);
        v93 = sub_104A68(v92);
        v94 = sub_104A6C();
        v95 = sub_16C58C();
        sub_8D14(v95);
        v96 = sub_16C57C();
        type metadata accessor for LogMedAsScheduledConfirmationStrategy();
        v97 = swift_allocObject();
        *(v0 + 5496) = v95;
        *(v0 + 5504) = &protocol witness table for ResponseFactory;
        *(v0 + 5472) = v96;
        *(v97 + 16) = 0;
        *(v97 + 24) = 0;
        *(v97 + 32) = v226 & 1;
        *(v97 + 40) = v89;
        memcpy((v97 + 48), (v0 + 2712), 0xA0uLL);
        *(v97 + 208) = v93;
        *(v97 + 216) = v94;
        sub_17464((v0 + 5472), v97 + 224);

        sub_16C73C();
        v98 = sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_8D14(v98);
        sub_37C38(&qword_1C67C0, 255, type metadata accessor for LogMedAsScheduledConfirmationStrategy);
        *(v0 + 9080) = sub_16C21C();
        sub_388B8(&qword_1C67B8);

        sub_16C4CC();

        sub_389E8();

LABEL_49:

LABEL_50:
        sub_37E68();
        v180 = *(v0 + 9520);
        v181 = *(v0 + 9512);
        v182 = *(v0 + 9504);
        v183 = *(v0 + 9496);
        v184 = *(v0 + 9488);
        v185 = *(v0 + 9480);
        v186 = *(v0 + 9472);
        v187 = *(v0 + 9464);
        v188 = *(v0 + 9456);
        v189 = *(v0 + 9448);
        v190 = *(v0 + 9440);
        v191 = *(v0 + 9432);
        v192 = *(v0 + 9424);
        v193 = *(v0 + 9416);
        v194 = *(v0 + 9408);
        v195 = *(v0 + 9400);
        v196 = *(v0 + 9392);
        v197 = *(v0 + 9384);
        v198 = *(v0 + 9376);
        v199 = *(v0 + 9368);
        v200 = *(v0 + 9360);
        v201 = *(v0 + 9352);
        v202 = *(v0 + 9344);
        v203 = *(v0 + 9336);
        v204 = *(v0 + 9312);
        v205 = *(v0 + 9304);
        v206 = *(v0 + 9280);
        v207 = *(v0 + 9272);
        v208 = *(v0 + 9264);
        v209 = *(v0 + 9256);
        v210 = *(v0 + 9248);
        v211 = *(v0 + 9240);
        v212 = *(v0 + 9232);
        v213 = *(v0 + 9224);
        v214 = *(v0 + 9200);
        v215 = *(v0 + 9192);
        v216 = *(v0 + 9184);
        v218 = *(v0 + 9176);
        v220 = *(v0 + 9168);
        v222 = *(v0 + 9160);
        v224 = *(v0 + 9144);
        v225 = *(v0 + 9128);
        v228 = *(v0 + 9120);
        v231 = *(v0 + 9112);
        v234 = *(v0 + 9104);

        sub_C9BC();
        sub_38C58();

        __asm { BRAA            X1, X16 }
      }

      sub_38584();
      v146 = *(v0 + 9504);
      v147 = *(v0 + 9320);
      sub_38474();
      v148 = sub_8948();
      (unk_1FD8)(v148);
      sub_16DBDC();
      v149 = sub_16E36C();
      if (sub_38670(v149))
      {
        v150 = sub_1BA38();
        sub_387A4(v150);
        sub_3851C(&def_259DC, v151, v152, "Needed confirmation log as scheduled but intentResponse.matchingMeds was nil.");
        sub_38604();
      }

      v153 = *(v0 + 9664);
      v154 = *(v0 + 9504);
      sub_38A94();
      v155 = sub_C9E0();
      v86(v155);
      sub_8284(v76 + 64, v0 + 2872);
      sub_82E0();
      sub_16C4EC();

      sub_389E8();
      v58 = v0 + 2872;
      goto LABEL_46;
    case 'j':
      sub_38584();
      v99 = *(v0 + 9592);
      v100 = *(v0 + 9320);
      sub_38474();
      v101 = sub_8948();
      (v3)(v101);
      v102 = sub_16DBDC();
      v103 = sub_16E36C();
      if (sub_38670(v103))
      {
        v104 = sub_1BA38();
        sub_387A4(v104);
        sub_3851C(&def_259DC, v105, v106, "Received .needsSingleMedLogging, returning SpecificMedLoggingFlow");
        sub_38604();
      }

      v107 = *(v0 + 9592);
      v108 = *(v0 + 9328);
      v109 = *(v0 + 9320);

      v110 = *(v108 + 8);
      v111 = sub_C9E0();
      v110(v111);
      v112 = sub_372A0(v5, &selRef_matchingMeds);
      if (!v112)
      {
        goto LABEL_43;
      }

      v113 = sub_9AE60(v112);

      if (!v113)
      {
        goto LABEL_43;
      }

      v114 = sub_10340C(v113);
      if (v115)
      {
        v116 = v114;
        v117 = v115;
        v118 = *(v0 + 9096);
        v119 = *(v118 + 16);
        sub_8388(v118 + 24, v0 + 5792);
        sub_8284(v118 + 64, v0 + 4792);
        v233 = v119;

        v120 = sub_103400(v113);
        v122 = v121;
        v123 = [v113 strength];
        v124 = v123;
        if (v123)
        {
          [v123 doubleValue];
          v126 = v125;
        }

        else
        {
          v126 = 0;
        }

        v227 = *(v0 + 9088);
        v230 = *(v0 + 9664);
        v166 = sub_103418(v113);
        *(v0 + 5096) = v120;
        *(v0 + 5104) = v122;
        *(v0 + 5112) = v116;
        *(v0 + 5120) = v117;
        *(v0 + 5128) = v126;
        *(v0 + 5136) = v124 == 0;
        *(v0 + 5144) = v166;
        *(v0 + 5152) = v167;
        *(v0 + 5160) = 0;
        v168 = sub_16C58C();
        memset(v235, 0, sizeof(v235));
        v236 = 0;
        sub_8D14(v168);
        v169 = sub_16C57C();
        v170 = sub_38868();
        v223 = sub_30B2C(v170, &CATWrapperSimple.__allocating_init(options:globals:));
        v221 = sub_30B2C(type metadata accessor for WellnessCATs, &CATWrapper.__allocating_init(options:globals:));
        v219 = sub_30958();
        sub_309A0((v0 + 5512));
        type metadata accessor for SpecificMedLoggingFlow();
        v217 = swift_allocObject();
        v171 = *(v0 + 5536);
        v172 = *(v0 + 5544);
        v173 = sub_37BE8(v0 + 5512, v171);
        v174 = *(v171 - 8);
        v175 = *(v174 + 64);
        v176 = sub_8BC0();
        (*(v174 + 16))(v176, v173, v171);
        *(v0 + 9056) = v169;

        v177 = sub_103E98(v233, (v0 + 5792), (v0 + 4792), (v0 + 5096), v0 + 9056, v223, v221, v219, v176, v235, v217, v168, v171, &protocol witness table for ResponseFactory, v172);
        sub_2D64((v0 + 5512));

        *(v0 + 9064) = v177;
        sub_37C38(&qword_1C67C8, 255, type metadata accessor for SpecificMedLoggingFlow);
        sub_16C4EC();

        sub_389E8();
        goto LABEL_49;
      }

LABEL_43:
      sub_38584();
      v156 = *(v0 + 9584);
      v157 = *(v0 + 9320);
      sub_38474();
      v158 = sub_8948();
      (v3)(v158);
      sub_16DBDC();
      v159 = sub_16E37C();
      if (sub_38670(v159))
      {
        v160 = sub_1BA38();
        sub_387A4(v160);
        sub_3851C(&def_259DC, v161, v162, ".needsSingleMedLogging case: failed to unpack matchingMed, returning GenericErrorFlow.");
        sub_38604();
      }

      v163 = *(v0 + 9664);
      v164 = *(v0 + 9584);
      sub_38A94();
      v165 = sub_C9E0();
      v110(v165);
      sub_8284(v0 + 4160, v0 + 952);
      sub_82E0();
      sub_16C4EC();

      sub_389E8();
      v58 = v0 + 952;
      goto LABEL_46;
    default:
      if (v7 == 4)
      {
        sub_38584();
        v127 = *(v0 + 9576);
        v128 = *(v0 + 9320);
        sub_38474();
        v129 = sub_8948();
        (v3)(v129);
        v130 = sub_16DBDC();
        v131 = sub_16E36C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = sub_1BA38();
          sub_387A4(v132);
          sub_38EC4(&def_259DC, v133, v134, "Received successful intent response, creating output.");
          sub_38604();
        }

        v135 = *(v0 + 9576);
        sub_38CDC();
        v136 = *(v0 + 9096);

        *(v0 + 9696) = *(v3 + 8);
        v137 = sub_C9E0();
        v138(v137);
        v139 = sub_372A0(v5, &selRef_matchingMedsBeforeUpdate);
        if (v139)
        {
          v140 = v139;
        }

        else
        {
          v140 = &_swiftEmptyArrayStorage;
        }

        sub_30BB0(v140);

        v141 = *(v136 + 16);

        *(v0 + 5017) = getMedStatus(from:)() & 1;

        *(v0 + 9704) = *(v136 + 336);

        v142 = swift_task_alloc();
        *(v0 + 9712) = v142;
        *v142 = v0;
        sub_38A20(v142);
        sub_38C58();

        return sub_1658EC(v143, v144);
      }

      else
      {
        if (v7 != 5)
        {
LABEL_12:
          sub_38584();
          v41 = *(v0 + 9496);
          v42 = *(v0 + 9320);
          sub_38474();
          v43 = sub_8948();
          (v3)(v43);
          v44 = sub_16DBDC();
          v45 = sub_16E36C();
          if (sub_38670(v45))
          {
            v46 = sub_1BA38();
            sub_387A4(v46);
            sub_3851C(&def_259DC, v47, v48, "Intent response code was not an expected one, returning nil output.");
            sub_38604();
          }

          v49 = *(v0 + 9664);
          v50 = *(v0 + 9496);
          v51 = *(v0 + 9328);
          v52 = *(v0 + 9320);
          v53 = *(v0 + 9096);
          v54 = *(v0 + 9088);

          v55 = *(v51 + 8);
          v56 = sub_C9E0();
          v57(v56);
          sub_8284(v53 + 64, v0 + 3032);
          sub_82E0();
          sub_16C4EC();

          sub_376FC(v0 + 4952);
          v58 = v0 + 3032;
LABEL_46:
          sub_8334(v58);
          goto LABEL_50;
        }

LABEL_7:
        sub_386FC();
        v29 = *(v0 + 9536);
        sub_38450();
        v30 = sub_38408();
        (v2)(v30);
        sub_16DBDC();
        v31 = sub_16E36C();
        if (sub_1BA1C(v31))
        {
          v32 = sub_1BA38();
          sub_1BA50(v32);
          sub_1B9D0(&def_259DC, v33, v34, "Got .noMedsFound or .failure, creating output.");
          sub_1BA00();
        }

        v35 = *(v0 + 9536);
        sub_38D44();
        *(v0 + 9928) = *(v1 + 8);
        v36 = sub_C9F8();
        v37(v36);
        *(v0 + 9936) = *(v2 + 336);

        v38 = swift_task_alloc();
        *(v0 + 9944) = v38;
        *v38 = v0;
        sub_38A20(v38);
        sub_38C58();

        return sub_165B5C();
      }
  }
}

uint64_t sub_2827C()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 9712);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 9720) = v8;

  sub_38A38();
  v11 = *(v10 + 9704);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 9704);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_283A8()
{
  sub_3868C();
  sub_38664();
  v2 = v0[1215];
  v3 = v0[1160];
  v4 = v0[1150];
  v5 = v0[1137];
  sub_16C43C();
  sub_37FFC();
  v6 = sub_38594();
  sub_B9BF4(v6, v7, v8);
  sub_16C7AC();
  v9 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_38F14();
  v10 = v0[862];
  v11 = v0[863];
  sub_3820C(v0 + 859);
  v12 = sub_17970();
  v13(v12);
  v14 = v0[857];
  v15 = v0[858];
  sub_38138(v0 + 854);
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v1 = 6792;
    sub_8388(v5 + 24, (v0 + 849));
    v16 = v0[852];
    v17 = v0[853];
    sub_3820C(v0 + 849);
    v18 = sub_17970();
    v19(v18);
    v20 = v0[837];
    v21 = v0[838];
    sub_38138(v0 + 834);
    sub_16C3FC();
    sub_2D64(v0 + 834);
    sub_38A6C(v0 + 849);
  }

  sub_38E44();
  v22 = v0[1149];
  sub_160444(0, 0, v23);
  sub_38CF4();
  v24 = v0[832];
  v25 = v0[833];
  sub_3820C(v0 + 829);
  v26 = sub_17970();
  v27(v26);
  v28 = v0[827];
  v29 = v0[828];
  sub_38138(v0 + 824);
  if (sub_16C40C())
  {
    v30 = sub_38F5C(v0 + 824);
    sub_2D64(v30);
    v31 = "calendarIdentifier";
  }

  else
  {
    sub_38F14();
    v32 = v0[822];
    v33 = v0[823];
    sub_3820C(v0 + 819);
    v34 = sub_17970();
    v35(v34);
    v36 = v0[757];
    v37 = v0[758];
    sub_38138(v0 + 754);
    sub_16C3FC();
    sub_2D64(v0 + 754);
    sub_38A44(v0 + 819);
    sub_38CE8();
    if (v38)
    {
      v1 = v39;
    }

    if (v38)
    {
      v31 = v41;
    }

    else
    {
      v31 = v40;
    }
  }

  v0[1217] = v31;
  v0[1216] = v1;
  v42 = swift_task_alloc();
  v0[1218] = v42;
  *v42 = v0;
  sub_383B8(v42);
  sub_8CC0();

  return sub_66A84(v43, v44);
}

uint64_t sub_28644()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 9744);
  v6 = *v0;
  *v3 = v6;
  v2[1219] = v7;
  v2[1220] = v8;

  v9 = swift_task_alloc();
  v2[1221] = v9;
  *v9 = v6;
  v10 = sub_3822C(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_28760()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 9768);
  v6 = *v0;
  *v3 = v6;
  v2[1222] = v7;
  v2[1223] = v8;

  v9 = swift_task_alloc();
  v2[1224] = v9;
  *v9 = v6;
  v10 = sub_38398(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2887C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 9792);
  v6 = *v0;
  *v3 = v6;
  v2[1225] = v7;
  v2[1226] = v8;

  v9 = swift_task_alloc();
  v2[1227] = v9;
  *v9 = v6;
  v10 = sub_38554(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_289A4()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 9816);
  v8 = *v0;
  sub_C990();
  *v9 = v8;
  v4[1228] = v10;

  v4[1229] = v2;
  v11 = swift_task_alloc();
  v4[1230] = v11;
  *v11 = v8;
  sub_3853C(v11);

  return sub_66E84();
}

uint64_t sub_28AC8()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1112] = v0;
  v1[1113] = v3;
  v1[1114] = v4;
  sub_38800();
  v6 = *(v5 + 9840);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  *(v10 + 9848) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_28FE0()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 9864);
  v7 = *(v6 + 9856);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 5912));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_290E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 9720);
  v16 = *(v12 + 9688);
  v17 = *(v12 + 9664);
  v18 = *(v12 + 9280);
  sub_38C18();
  v19 = *(v12 + 9192);
  sub_3880C(v20);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 5832));
  v21 = sub_16C1DC();
  sub_389CC(v21);
  *(v12 + 9000) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 5992));
  sub_381C4();
  sub_375C0(v13, v22);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_293F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  v62 = v60[1196];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  sub_16DBDC();
  v64 = sub_16E37C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v68 = v60[1212];
  v69 = v60[1211];
  v70 = v60[1208];
  v71 = v60[1196];
  sub_386DC();
  v72 = sub_C9F8();
  v68(v72);
  sub_8284(v61 + 64, (v60 + 139));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 139));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_296C4()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 9888);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 9896) = v8;

  sub_38A38();
  v11 = *(v10 + 9880);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 9880);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_297F0()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[1237];
  v3 = v0[1159];
  sub_38BBC();
  sub_37FFC();
  v4 = sub_38594();
  sub_B9BF4(v4, v5, v6);
  sub_38EE4();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v1 + 24, (v0 + 929));
  sub_8284(v1 + 64, (v0 + 199));
  sub_8388(v1 + 296, (v0 + 869));
  v0[1238] = *(v1 + 336);
  v0[1239] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[1240] = v8;
  *v8 = v9;
  v8[1] = sub_29934;
  v10 = v0[1237];
  v11 = v0[1159];
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_29934()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 9920);
  v7 = *(v6 + 9912);
  v8 = *(v6 + 9904);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 6952));
  sub_C938(v2 + 1592);
  sub_2D64((v2 + 7432));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_29A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[937])
  {
    v16 = v12[1237];
    v17 = v12[1211];
    v18 = v12[1208];
    v19 = v12[1159];
    v20 = sub_385A4(7472);
    sub_38BD8(v20);
    sub_387F4();
    v21 = swift_allocObject();
    sub_38754(v21);
    v22 = sub_16C1DC();
    sub_38964(v22);
    v12[1127] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 939);
    v23 = *(v15 + 8);
    v24 = sub_C9F8();
    v25(v24);
  }

  else
  {
    sub_38584();
    v26 = v12[1194];
    v27 = v12[1165];
    sub_8748(v12 + v28, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v29 = sub_38408();
    v14(v29);
    sub_16DBDC();
    v30 = sub_16E37C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v34 = v12[1234];
    v35 = v12[1211];
    v53 = v12[1208];
    v54 = v12[1237];
    v36 = v12[1194];
    v37 = v12[1166];
    v38 = v12[1165];
    v39 = v12[1159];
    v40 = v12[1152];
    sub_38910();
    v41 = sub_C9F8();
    v34(v41);
    sub_8284(v13 + 64, (v12 + 179));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 179));
    v42 = sub_38E20();
    v43(v42);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_29E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  v62 = v60[1193];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  sub_16DBDC();
  v64 = sub_16E37C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Failed executing catWrapperSimple.genericMedicationMultipleMedsFound_Dialog, returning nil");
    sub_1BA00();
  }

  v68 = v60[1234];
  v69 = v60[1211];
  v70 = v60[1208];
  v71 = v60[1193];
  sub_386DC();
  v72 = sub_C9F8();
  v68(v72);
  sub_8284(v61 + 64, (v60 + 219));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 219));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2A134()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 9944);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 9952) = v8;

  sub_38A38();
  v11 = *(v10 + 9936);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 9936);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2A260()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[1244];
  v3 = v0[1158];
  sub_38BBC();
  sub_37FFC();
  v4 = sub_38594();
  sub_B9BF4(v4, v5, v6);
  sub_38EE4();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v1 + 24, (v0 + 964));
  sub_8284(v1 + 64, (v0 + 279));
  sub_8388(v1 + 296, (v0 + 954));
  v0[1245] = *(v1 + 336);
  v0[1246] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[1247] = v8;
  *v8 = v9;
  v8[1] = sub_2A3A4;
  v10 = v0[1244];
  v11 = v0[1158];
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2A3A4()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 9976);
  v7 = *(v6 + 9968);
  v8 = *(v6 + 9960);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 7632));
  sub_C938(v2 + 2232);
  sub_2D64((v2 + 7712));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[982])
  {
    v16 = v12[1244];
    v17 = v12[1211];
    v18 = v12[1208];
    v19 = v12[1158];
    v20 = sub_385A4(7832);
    sub_38BD8(v20);
    sub_387F4();
    v21 = swift_allocObject();
    sub_38754(v21);
    v22 = sub_16C1DC();
    sub_38964(v22);
    v12[1130] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 984);
    v23 = *(v15 + 8);
    v24 = sub_C9F8();
    v25(v24);
  }

  else
  {
    sub_38584();
    v26 = v12[1191];
    v27 = v12[1165];
    sub_8748(v12 + v28, &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v29 = sub_38408();
    v14(v29);
    sub_16DBDC();
    v30 = sub_16E37C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v34 = v12[1241];
    v35 = v12[1211];
    v53 = v12[1208];
    v54 = v12[1244];
    v36 = v12[1191];
    v37 = v12[1166];
    v38 = v12[1165];
    v39 = v12[1158];
    v40 = v12[1152];
    sub_38910();
    v41 = sub_C9F8();
    v34(v41);
    sub_8284(v13 + 64, (v12 + 239));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 239));
    v42 = sub_38E20();
    v43(v42);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_2A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_386FC();
  v62 = v60[1190];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  sub_16DBDC();
  v64 = sub_16E37C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v68 = v60[1241];
  v69 = v60[1211];
  v70 = v60[1208];
  v71 = v60[1190];
  sub_386DC();
  v72 = sub_C9F8();
  v68(v72);
  sub_8284(v61 + 64, (v60 + 299));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 299));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2ABA4()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2AC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v16 = *(v12 + 10032);
  v17 = *(v12 + 8992);
  *(v12 + 10040) = v17;
  v18 = swift_unknownObjectRelease();
  v19 = (*(&stru_20.maxprot + (swift_isaMask & *v17)))(v18);
  v20 = *(v12 + 10000);
  v21 = *(v12 + 9992);
  v22 = *(v12 + 9984);
  v23 = *(v12 + 9320);
  switch(v19)
  {
    case 108:
      v66 = *(v12 + 9448);
      v67 = *(v12 + 9984);
      sub_385D8();
      swift_beginAccess();
      v68 = sub_C9F8();
      v21(v68);
      v69 = sub_16DBDC();
      v70 = sub_16E36C();
      if (sub_1BA1C(v70))
      {
        v71 = sub_1BA38();
        sub_1BA50(v71);
        sub_1B9D0(&def_259DC, v72, v73, "Received .allMedsLoggedAlready inside first .receivedConfirmationLogAsScheduled case, handling.");
        sub_1BA00();
      }

      v74 = *(v12 + 9448);
      v75 = *(v12 + 9328);
      v76 = *(v12 + 9320);
      v77 = *(v12 + 9248);
      v78 = *(v12 + 9200);
      v79 = *(v12 + 9112);
      v80 = *(v12 + 9096);

      *(v12 + 10224) = *(v75 + 8);
      v81 = sub_C9E0();
      v82(v81);
      sub_16C45C();
      sub_37FFC();
      sub_B9BF4(v78, v83, 0);
      sub_16C7AC();
      *(v12 + 10232) = *(v80 + 336);
      v84 = *(v80 + 16);

      getMedStatus(from:)();

      sub_16D5CC();
      sub_8AB4();
      sub_214C(v85, v86, v87, v88);
      swift_task_alloc();
      sub_179E8();
      *(v12 + 10240) = v89;
      *v89 = v90;
      v89[1] = sub_2CB4C;
      v91 = *(v12 + 9112);
      sub_8CC0();

      return sub_16746C();
    case 107:
      v44 = *(v12 + 9464);
      v45 = *(v12 + 9984);
      sub_385D8();
      swift_beginAccess();
      v46 = sub_38DF0();
      v21(v46);
      v47 = sub_16DBDC();
      v48 = sub_16E36C();
      if (sub_38670(v48))
      {
        v49 = sub_1BA38();
        sub_387A4(v49);
        sub_3851C(&def_259DC, v50, v51, "Received .needsConfirmMixedLogging inside first .receivedConfirmationLogAsScheduled case, handling.");
        sub_38604();
      }

      v52 = *(v12 + 9464);
      sub_38CDC();
      v53 = *(v12 + 9096);

      v54 = *(v20 + 8);
      v55 = sub_C9E0();
      v54(v55);
      memcpy((v12 + 5168), (v53 + 224), 0x41uLL);
      *(v53 + 224) = 6;
      *(v53 + 232) = 0u;
      v53 += 232;
      *(v53 + 16) = 0u;
      *(v53 + 32) = 0u;
      *(v53 + 48) = 0;
      *(v53 + 56) = -64;
      sub_376FC(v12 + 5168);
      v56 = sub_372A0(v17, &selRef_matchingMeds);
      if (v56)
      {
        v57 = v56;
        v144 = *(v12 + 9088);
        v146 = *(v12 + 10008);
        v58 = *(*(v12 + 9096) + 16);

        v142 = getMedStatus(from:)();

        sub_30A28(v148);
        v59 = sub_38868();
        v60 = sub_30B2C(v59, &CATWrapperSimple.__allocating_init(options:globals:));
        v61 = sub_30B2C(type metadata accessor for WellnessLoggingCATs, &CATWrapper.__allocating_init(options:globals:));
        v62 = sub_16C58C();
        sub_8D14(v62);
        v63 = sub_16C57C();
        type metadata accessor for LogMedGenericMixedStatusConfirmationStrategy();
        v64 = swift_allocObject();
        *(v12 + 6776) = v62;
        *(v12 + 6784) = &protocol witness table for ResponseFactory;
        *(v12 + 6752) = v63;
        *(v64 + 16) = v142 & 1;
        *(v64 + 24) = v57;
        memcpy((v64 + 32), v148, 0xA0uLL);
        *(v64 + 192) = v60;
        *(v64 + 200) = v61;
        sub_17464((v12 + 6752), v64 + 208);

        sub_16C73C();
        v65 = sub_2440(&qword_1C67A8, &qword_171CC0);
        sub_8D14(v65);
        sub_37C38(&qword_1C67B0, 255, type metadata accessor for LogMedGenericMixedStatusConfirmationStrategy);
        *(v12 + 9008) = sub_16C21C();
        sub_388B8(&qword_1C67B8);

        sub_16C4CC();

        sub_389E8();
      }

      else
      {
        v105 = *(v12 + 10000);
        v106 = *(v12 + 9992);
        v107 = *(v12 + 9984);
        v108 = *(v12 + 9456);
        v109 = *(v12 + 9320);
        sub_38474();
        v110 = sub_8948();
        v106(v110);
        sub_16DBDC();
        v111 = sub_16E36C();
        if (sub_38670(v111))
        {
          v112 = sub_1BA38();
          sub_387A4(v112);
          sub_3851C(&def_259DC, v113, v114, "Needed confirmation for mixed logging, but intentResponse.matchingMeds was nil.");
          sub_38604();
        }

        v115 = *(v12 + 10008);
        v116 = *(v12 + 9456);
        sub_38A94();
        v117 = sub_C9E0();
        v54(v117);
        sub_8284(v15 + 64, v12 + 3832);
        sub_82E0();
        sub_16C4EC();

        sub_389E8();
        sub_8334(v12 + 3832);
      }

      sub_37D94();
      v126 = *(v12 + 9280);
      v127 = *(v12 + 9272);
      v128 = *(v12 + 9264);
      v129 = *(v12 + 9256);
      v130 = *(v12 + 9248);
      v131 = *(v12 + 9240);
      v132 = *(v12 + 9232);
      v133 = *(v12 + 9224);
      v134 = *(v12 + 9200);
      v135 = *(v12 + 9192);
      v136 = *(v12 + 9184);
      v137 = *(v12 + 9176);
      v138 = *(v12 + 9168);
      v139 = *(v12 + 9160);
      v140 = *(v12 + 9144);
      v141 = *(v12 + 9128);
      v143 = *(v12 + 9120);
      v145 = *(v12 + 9112);
      v147 = *(v12 + 9104);

      sub_C9BC();
      sub_8CC0();

      return v119(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12);
    case 4:
      v24 = *(v12 + 9480);
      v25 = *(v12 + 9984);
      sub_385D8();
      swift_beginAccess();
      v26 = sub_38DF0();
      v21(v26);
      v27 = sub_16DBDC();
      v28 = sub_16E36C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = sub_1BA38();
        sub_387A4(v29);
        sub_38EC4(&def_259DC, v30, v31, "Received successful intent response, creating output.");
        sub_38604();
      }

      v32 = *(v12 + 9480);
      sub_38CDC();
      v33 = *(v12 + 9096);

      *(v12 + 10048) = *(v20 + 8);
      v34 = sub_C9E0();
      v35(v34);
      v36 = sub_372A0(v17, &selRef_matchingMedsBeforeUpdate);
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = &_swiftEmptyArrayStorage;
      }

      sub_30BB0(v37);

      v38 = *(v33 + 16);

      *(v12 + 5018) = getMedStatus(from:)() & 1;

      *(v12 + 10056) = *(v33 + 336);

      v39 = swift_task_alloc();
      *(v12 + 10064) = v39;
      *v39 = v12;
      sub_38A20(v39);
      sub_8CC0();

      return sub_1658EC(v40, v41);
    default:
      v93 = *(v12 + 9432);
      v94 = *(v12 + 9984);
      sub_385D8();
      swift_beginAccess();
      v95 = sub_C9F8();
      v21(v95);
      sub_16DBDC();
      v96 = sub_16E36C();
      if (sub_1BA1C(v96))
      {
        v97 = sub_1BA38();
        sub_1BA50(v97);
        sub_1B9D0(&def_259DC, v98, v99, "Got unacceptable response code after confirmedLogAsScheduled, creating failure output.");
        sub_1BA00();
      }

      v100 = *(v12 + 9432);
      sub_38D44();
      *(v12 + 10400) = *(v13 + 8);
      v101 = sub_C9F8();
      v102(v101);
      *(v12 + 10408) = *(v14 + 336);

      v103 = swift_task_alloc();
      *(v12 + 10416) = v103;
      *v103 = v12;
      sub_38A20(v103);
      sub_8CC0();

      return sub_165B5C();
  }
}

uint64_t sub_2B6E8()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 10064);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 10072) = v8;

  sub_38A38();
  v11 = *(v10 + 10056);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 10056);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2B814()
{
  sub_3868C();
  sub_38664();
  v2 = v0[1259];
  v3 = v0[1157];
  v4 = v0[1150];
  v5 = v0[1137];
  sub_16C43C();
  sub_37FFC();
  v6 = sub_38594();
  sub_B9BF4(v6, v7, v8);
  v9 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_16C7AC();
  sub_38F14();
  v10 = v0[1002];
  v11 = v0[1003];
  sub_3820C(v0 + 999);
  v12 = sub_17970();
  v13(v12);
  v14 = v0[717];
  v15 = v0[718];
  sub_38138(v0 + 714);
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v1 = 7072;
    sub_38CF4();
    v16 = v0[882];
    v17 = v0[883];
    sub_3820C(v0 + 879);
    v18 = sub_17970();
    v19(v18);
    v20 = v0[887];
    v21 = v0[888];
    sub_38138(v0 + 884);
    sub_16C3FC();
    v22 = sub_38F5C(v0 + 884);
    sub_38A6C(v22);
  }

  sub_38E44();
  v23 = v0[1147];
  sub_160444(0, 0, v24);
  sub_38CF4();
  v25 = v0[892];
  v26 = v0[893];
  sub_3820C(v0 + 889);
  v27 = sub_17970();
  v28(v27);
  v29 = v0[897];
  v30 = v0[898];
  sub_38138(v0 + 894);
  if (sub_16C40C())
  {
    v31 = sub_38F5C(v0 + 894);
    sub_2D64(v31);
    v32 = "calendarIdentifier";
  }

  else
  {
    sub_38CF4();
    v33 = v0[902];
    v34 = v0[903];
    sub_3820C(v0 + 899);
    v35 = sub_17970();
    v36(v35);
    v37 = v0[907];
    v38 = v0[908];
    sub_38138(v0 + 904);
    sub_16C3FC();
    v39 = sub_38F5C(v0 + 904);
    sub_38A44(v39);
    sub_38CE8();
    if (v40)
    {
      v1 = v41;
    }

    if (v40)
    {
      v32 = v43;
    }

    else
    {
      v32 = v42;
    }
  }

  v0[1261] = v32;
  v0[1260] = v1;
  v44 = swift_task_alloc();
  v0[1262] = v44;
  *v44 = v0;
  sub_383B8(v44);
  sub_8CC0();

  return sub_66A84(v45, v46);
}

uint64_t sub_2BAA0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10096);
  v6 = *v0;
  *v3 = v6;
  v2[1263] = v7;
  v2[1264] = v8;

  v9 = swift_task_alloc();
  v2[1265] = v9;
  *v9 = v6;
  v10 = sub_3822C(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2BBBC()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10120);
  v6 = *v0;
  *v3 = v6;
  v2[1266] = v7;
  v2[1267] = v8;

  v9 = swift_task_alloc();
  v2[1268] = v9;
  *v9 = v6;
  v10 = sub_38398(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2BCD8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10144);
  v6 = *v0;
  *v3 = v6;
  v2[1269] = v7;
  v2[1270] = v8;

  v9 = swift_task_alloc();
  v2[1271] = v9;
  *v9 = v6;
  v10 = sub_38554(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2BE00()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 10168);
  v8 = *v0;
  sub_C990();
  *v9 = v8;
  v4[1272] = v10;

  v4[1273] = v2;
  v11 = swift_task_alloc();
  v4[1274] = v11;
  *v11 = v8;
  sub_3853C(v11);

  return sub_66E84();
}

uint64_t sub_2BF24()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1115] = v0;
  v1[1116] = v3;
  v1[1117] = v4;
  sub_38800();
  v6 = *(v5 + 10192);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  *(v10 + 10200) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3884C();
  sub_38980();
  v41 = *(v39 + 10200);
  v42 = *(v39 + 8928);
  v43 = *(v39 + 10184);
  v44 = *(v39 + 10176);
  v116 = *(v39 + 10160);
  v118 = *(v39 + 10152);
  v120 = *(v39 + 10136);
  v122 = *(v39 + 10128);
  v124 = *(v39 + 10112);
  v127 = *(v39 + 10104);
  v114 = *(v39 + 10088);
  v135 = *(v39 + 10080);
  v136 = *(v39 + 10072);
  HIDWORD(a25) = *(v39 + 5018);
  v132 = *(v39 + 10024);
  v113 = *(v39 + 9304);
  v130 = *(v39 + 9288);
  v131 = *(v39 + 10016);
  v45 = *(v39 + 9184);
  v129 = *(v39 + 9176);
  sub_3870C();
  v134 = v47;
  v48 = *(v39 + 9152);
  if (v59)
  {
    v46 = 0xD000000000000019;
  }

  v133 = v46;
  sub_38C48();
  v49 = *(v39 + 9136);
  v137 = *(v39 + 9128);
  v126 = *(v39 + 9120);
  sub_38E84();

  sub_38B4C();
  v50 = (v40 + *(v48 + 20));
  *v50 = 0xD000000000000023;
  v50[1] = v51;
  v52 = (v40 + *(v48 + 24));
  *v52 = 0xD000000000000036;
  v52[1] = 0x800000000017BF80;
  sub_16BF4C();
  sub_372FC(v129, v45);
  LODWORD(v129) = sub_14D35C();
  sub_38E14();
  v54 = v53 & 0xFFFF00000000FFFFLL | 0x646567670000;
  if (!v59)
  {
    v54 = v127;
  }

  v128 = v54;
  sub_38E08();
  v58 = v57 | 0x64657070690000;
  if (!v59)
  {
    v58 = v55;
  }

  v123 = v58;
  v125 = v56;
  sub_38DFC();
  v64 = v63 & 0xFFFF00000000FFFFLL | 0x6E656B0000;
  if (!v59)
  {
    v64 = v61;
  }

  v119 = v64;
  v121 = v62;
  v65 = 0xE500000000000000;
  if (!v59)
  {
    v65 = v60;
  }

  v115 = v114 | 0x8000000000000000;
  v117 = v65;
  sub_381F4();
  sub_38D60(v66, v67, v68);
  sub_388E4();
  sub_214C(v69, v70, v71, v48);
  v108 = v49[6];
  v72 = sub_16C11C();
  sub_8AB4();
  sub_214C(v73, v74, v75, v72);
  v76 = (v38 + v49[8]);
  v109 = (v38 + v49[10]);
  v110 = v49[7];
  v77 = (v38 + v49[11]);
  v78 = (v38 + v49[12]);
  v111 = v49[14];
  v112 = v49[9];
  v79 = (v38 + v49[13]);
  sub_8AB4();
  sub_214C(v80, v81, v82, v48);
  *v38 = BYTE4(a25);
  *(v38 + 8) = sub_BA66C();
  *(v38 + 16) = v83;
  sub_BA70C(v45);
  sub_8748(v45, &qword_1C57F8, &unk_172510);
  v131(v113, v130);
  v84 = sub_38744();
  sub_214C(v84, v85, v86, v72);
  sub_38EFC(&qword_1C63F0, &unk_1717F0, v108);
  *(v38 + v110) = 0;
  *v76 = v135;
  v76[1] = v115;
  *(v38 + v112) = v129 & 1;
  *v109 = v128;
  v109[1] = v125;
  *v77 = v123;
  v77[1] = v121;
  *v78 = v119;
  v78[1] = v117;
  *v79 = v133;
  v79[1] = v134;
  sub_3769C(v137, v38 + v111, &dword_1C63F8, &qword_171800);
  sub_8388(a30 + 296, v39 + 7312);
  v87 = *(v39 + 7336);
  v88 = *(v39 + 7344);
  *(v39 + 7376) = sub_38B74((v39 + 7312));
  sub_381DC();
  *(v39 + 7384) = sub_37C38(v89, 255, v90);
  v91 = sub_9910((v39 + 7352));
  sub_383D8(v91);
  sub_38B58();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v92 = sub_38DA0();
  *(v39 + 10208) = sub_60CF0(v92, 1);
  *v93 = v136;
  v94 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v95 = v136;
  swift_task_alloc();
  sub_179E8();
  *(v39 + 10216) = v96;
  *v96 = v97;
  v96[1] = sub_2C468;
  v98 = *(v39 + 9256);
  sub_3856C();
  sub_387D8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v99, v100, v101, v102, v103, v104, v105, v106, a9, v108, v109, v110, v111, v112, v113, v115, v117, v119, v121, v123, v125, v126, v128, v129, a25, v130, v131, v132, v133, a30, v134, v135, v136, v137, a35, a36, a37, a38);
}

uint64_t sub_2C468()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 10216);
  v7 = *(v6 + 10208);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 7352));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 10072);
  v16 = *(v12 + 10040);
  v17 = *(v12 + 10008);
  v18 = *(v12 + 9256);
  sub_38C18();
  v19 = *(v12 + 9176);
  sub_3880C(v20);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 7392));
  v21 = sub_16C1DC();
  sub_389CC(v21);
  *(v12 + 9032) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 7272));
  sub_381C4();
  sub_375C0(v13, v22);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  v62 = v60[1184];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  sub_16DBDC();
  v64 = sub_16E37C();
  if (sub_1BA1C(v64))
  {
    v65 = sub_1BA38();
    sub_1BA50(v65);
    sub_1B9D0(&def_259DC, v66, v67, "Failed executing catWrapperSimple.genericMedicationCompletedLog_Dialog, returning nil");
    sub_1BA00();
  }

  v68 = v60[1256];
  v69 = v60[1255];
  v70 = v60[1251];
  v71 = v60[1184];
  sub_386DC();
  v72 = sub_C9F8();
  v68(v72);
  sub_8284(v61 + 64, (v60 + 439));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 439));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2CB4C()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 10240);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 10248) = v8;

  sub_8C88();
  v11 = *(v10 + 10232);
  v12 = *(v1 + 9112);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2CCC0()
{
  sub_3868C();
  sub_38664();
  v2 = *(v0 + 9248);
  v3 = *(v0 + 9096);
  v4 = [*(v0 + 10248) catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_38F14();
  v5 = *(v0 + 6096);
  v6 = *(v0 + 6104);
  sub_3820C((v0 + 6072));
  v7 = sub_17970();
  v8(v7);
  v9 = *(v0 + 6136);
  v10 = *(v0 + 6144);
  sub_38138((v0 + 6112));
  if (sub_16C40C())
  {
    sub_38CB8();
  }

  else
  {
    v1 = 6192;
    sub_38CF4();
    v11 = *(v0 + 6176);
    v12 = *(v0 + 6184);
    sub_3820C((v0 + 6152));
    v13 = sub_17970();
    v14(v13);
    v15 = *(v0 + 6216);
    v16 = *(v0 + 6224);
    sub_38138((v0 + 6192));
    sub_16C3FC();
    v17 = sub_38F5C((v0 + 6192));
    sub_38A6C(v17);
  }

  sub_38E44();
  v18 = *(v0 + 9168);
  sub_160444(0, 0, v19);
  sub_38CF4();
  v20 = *(v0 + 6256);
  v21 = *(v0 + 6264);
  sub_3820C((v0 + 6232));
  v22 = sub_17970();
  v23(v22);
  v24 = *(v0 + 6296);
  v25 = *(v0 + 6304);
  sub_38138((v0 + 6272));
  if (sub_16C40C())
  {
    v26 = sub_38F5C((v0 + 6272));
    sub_2D64(v26);
    v27 = "calendarIdentifier";
  }

  else
  {
    sub_38CF4();
    v28 = *(v0 + 6336);
    v29 = *(v0 + 6344);
    sub_3820C((v0 + 6312));
    v30 = sub_17970();
    v31(v30);
    v32 = *(v0 + 6376);
    v33 = *(v0 + 6384);
    sub_38138((v0 + 6352));
    sub_16C3FC();
    v34 = sub_38F5C((v0 + 6352));
    sub_38A44(v34);
    sub_38CE8();
    if (v35)
    {
      v1 = v36;
    }

    if (v35)
    {
      v27 = v38;
    }

    else
    {
      v27 = v37;
    }
  }

  *(v0 + 10264) = v27;
  *(v0 + 10256) = v1;
  v39 = swift_task_alloc();
  *(v0 + 10272) = v39;
  *v39 = v0;
  sub_383B8(v39);
  sub_8CC0();

  return sub_66A84(v40, v41);
}

uint64_t sub_2CF28()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10272);
  v6 = *v0;
  *v3 = v6;
  v2[1285] = v7;
  v2[1286] = v8;

  v9 = swift_task_alloc();
  v2[1287] = v9;
  *v9 = v6;
  v10 = sub_3822C(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2D044()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10296);
  v6 = *v0;
  *v3 = v6;
  v2[1288] = v7;
  v2[1289] = v8;

  v9 = swift_task_alloc();
  v2[1290] = v9;
  *v9 = v6;
  v10 = sub_38398(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2D160()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 10320);
  v6 = *v0;
  *v3 = v6;
  v2[1291] = v7;
  v2[1292] = v8;

  v9 = swift_task_alloc();
  v2[1293] = v9;
  *v9 = v6;
  v10 = sub_38554(v9);

  return sub_66A84(v10, v11);
}

uint64_t sub_2D288()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 10344);
  v8 = *v0;
  sub_C990();
  *v9 = v8;
  v4[1294] = v10;

  v4[1295] = v2;
  v11 = swift_task_alloc();
  v4[1296] = v11;
  *v11 = v8;
  sub_3853C(v11);

  return sub_66E84();
}

uint64_t sub_2D3AC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v1[1118] = v0;
  v1[1119] = v3;
  v1[1120] = v4;
  sub_38800();
  v6 = *(v5 + 10368);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  *(v10 + 10376) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2D8E4()
{
  sub_386A8();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 10392);
  v7 = *(v6 + 10384);
  v8 = *v0;
  sub_C990();
  *v9 = v8;

  sub_2D64((v2 + 6472));
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v15 = *(v12 + 10248);
  v16 = *(v12 + 10040);
  v17 = *(v12 + 10008);
  v18 = *(v12 + 9248);
  sub_38C18();
  v19 = *(v12 + 9168);
  sub_3880C(v20);
  sub_387F4();
  swift_allocObject();
  sub_3888C((v12 + 6512));
  v21 = sub_16C1DC();
  sub_389CC(v21);
  *(v12 + 8976) = sub_384FC();
  sub_38D0C();

  sub_389E8();
  sub_2D64((v12 + 6392));
  sub_381C4();
  sub_375C0(v13, v22);
  sub_8748(v19, &qword_1C57F8, &unk_172510);
  (*(v14 + 8))();
  sub_38418();

  sub_37E68();
  sub_38250();

  sub_C9BC();
  sub_8CC0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  v62 = v60[1180];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  v64 = sub_16DBDC();
  v65 = sub_16E36C();
  if (sub_1BA1C(v65))
  {
    v66 = sub_1BA38();
    sub_1BA50(v66);
    sub_1B9D0(&def_259DC, v67, v68, "Couldn't create specificMedicationAllMedsLoggedAlready_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v69 = v60[1278];
  v70 = v60[1255];
  v71 = v60[1251];
  v72 = v60[1180];
  sub_38DD0();
  v89 = v60[1156];
  v73 = v60[1152];
  v87 = v74;
  v88 = v60[1151];
  v75 = v60[1137];
  v76 = v60[1136];

  v77 = sub_C9F8();
  v69(v77);
  sub_8284(v75 + 64, (v60 + 499));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 499));
  (*(v73 + 8))(v89, v88);
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v87, v88, v89, a57, a58, a59, a60);
}

uint64_t sub_2E000()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 10416);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 10424) = v8;

  sub_38A38();
  v11 = *(v10 + 10408);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 10408);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2E12C()
{
  sub_38AB4();
  sub_38664();
  v1 = v0[1303];
  v2 = v0[1155];
  v3 = v0[1150];
  v4 = v0[1137];
  sub_16C45C();
  sub_37FFC();
  v5 = sub_38594();
  sub_B9BF4(v5, v6, v7);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v4 + 24, (v0 + 709));
  sub_8284(v4 + 64, (v0 + 539));
  sub_8388(v4 + 296, (v0 + 719));
  v0[1304] = *(v4 + 336);
  v0[1305] = *(v4 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[1306] = v9;
  *v9 = v10;
  v9[1] = sub_2E290;
  v11 = v0[1303];
  v12 = v0[1155];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2E290()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 10448);
  v7 = *(v6 + 10440);
  v8 = *(v6 + 10432);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 5752));
  sub_C938(v2 + 4312);
  sub_2D64((v2 + 5672));
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[707])
  {
    v14 = v12[1303];
    v15 = v12[1255];
    v16 = v12[1251];
    v17 = v12[1155];
    v18 = sub_385A4(5632);
    sub_38BD8(v18);
    sub_387F4();
    v19 = swift_allocObject();
    sub_38754(v19);
    v20 = sub_16C1DC();
    sub_38964(v20);
    v12[1123] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 699);
    v21 = *(v13 + 8);
    v22 = sub_C9F8();
    v23(v22);
  }

  else
  {
    v24 = v12[1250];
    v25 = v12[1249];
    v26 = v12[1248];
    v27 = v12[1178];
    v28 = v12[1165];
    sub_8748((v12 + 704), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v29 = sub_38408();
    v25(v29);
    sub_16DBDC();
    v30 = sub_16E37C();
    if (sub_1BA1C(v30))
    {
      v31 = sub_1BA38();
      sub_1BA50(v31);
      sub_1B9D0(&def_259DC, v32, v33, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v34 = v12[1300];
    v35 = v12[1255];
    v53 = v12[1251];
    v54 = v12[1303];
    v36 = v12[1178];
    v37 = v12[1166];
    v38 = v12[1165];
    v39 = v12[1155];
    v40 = v12[1152];
    sub_38910();
    v41 = sub_C9F8();
    v34(v41);
    sub_8284(v24 + 64, (v12 + 519));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 519));
    v42 = sub_38E20();
    v43(v42);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_2E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  sub_38C28();
  v62 = v60[1177];
  sub_38450();
  v63 = sub_38408();
  v61(v63);
  v64 = sub_16DBDC();
  v65 = sub_16E37C();
  if (sub_1BA1C(v65))
  {
    v66 = sub_1BA38();
    sub_1BA50(v66);
    sub_1B9D0(&def_259DC, v67, v68, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v69 = v60[1300];
  v70 = v60[1255];
  v71 = v60[1251];
  v72 = v60[1177];
  sub_38DD0();
  v73 = v60[1137];
  v74 = v60[1136];

  v75 = sub_C9F8();
  v69(v75);
  sub_8284(v73 + 64, (v60 + 579));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 579));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2EABC()
{
  sub_386A8();
  sub_38CAC();
  sub_38388();
  *v4 = v3;
  v5 = *(v1 + 10496);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 10504) = v8;

  sub_8C88();
  v11 = *(v10 + 10488);
  v12 = *(v1 + 9104);
  if (v0)
  {

    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2EC30()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[1313];
  v3 = v0[1154];
  sub_38BBC();
  sub_37FFC();
  v4 = sub_38594();
  sub_B9BF4(v4, v5, v6);
  sub_38EE4();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v1 + 24, (v0 + 679));
  sub_8284(v1 + 64, (v0 + 59));
  sub_8388(v1 + 296, (v0 + 874));
  v0[1314] = *(v1 + 336);
  v0[1315] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[1316] = v8;
  *v8 = v9;
  v8[1] = sub_2ED7C;
  v10 = v0[1313];
  v11 = v0[1154];
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_2ED7C()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 10528);
  v7 = *(v6 + 10520);
  v8 = *(v6 + 10512);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 6992));
  sub_C938(v2 + 472);
  sub_2D64((v2 + 5432));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2EEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[977])
  {
    v14 = v12[1313];
    v15 = v12[1154];
    v16 = sub_385A4(7792);
    sub_17464(v16, (v12 + 694));
    sub_8388((v12 + 694), (v12 + 959));
    sub_387F4();
    v17 = swift_allocObject();
    sub_38754(v17);
    v18 = sub_16C1DC();
    sub_38964(v18);
    v12[1134] = sub_384FC();
    sub_16C4EC();

    sub_389E8();
    sub_2D64(v12 + 694);
    v19 = *(v13 + 8);
    v20 = sub_C9F8();
    v21(v20);
  }

  else
  {
    v22 = v12[1309];
    v23 = v12[1308];
    v24 = v12[1307];
    v25 = v12[1175];
    v26 = v12[1165];
    sub_8748((v12 + 974), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v27 = sub_38408();
    v23(v27);
    sub_16DBDC();
    v28 = sub_16E36C();
    if (sub_1BA1C(v28))
    {
      v29 = sub_1BA38();
      sub_1BA50(v29);
      sub_1B9D0(&def_259DC, v30, v31, "Couldn't create output, returning GenericErrorFlow");
      sub_1BA00();
    }

    v32 = v12[1313];
    v33 = v12[1310];
    v34 = v12[1175];
    v35 = v12[1166];
    v36 = v12[1165];
    v37 = v12[1154];
    v38 = v12[1152];
    sub_38910();
    v39 = sub_C9F8();
    v33(v39);
    sub_8284(v22 + 64, (v12 + 79));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 79));
    (*(v38 + 8))();
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_2F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = v60[1309];
  v62 = v60[1308];
  v63 = v60[1307];
  v64 = v60[1174];
  sub_38450();
  v65 = sub_38408();
  v62(v65);
  v66 = sub_16DBDC();
  v67 = sub_16E36C();
  if (sub_1BA1C(v67))
  {
    v68 = sub_1BA38();
    sub_1BA50(v68);
    sub_1B9D0(&def_259DC, v69, v70, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
    sub_1BA00();
  }

  v71 = v60[1310];
  v72 = v60[1174];
  v73 = v60[1166];
  v74 = v60[1165];
  v75 = v60[1137];
  v76 = v60[1136];

  v77 = sub_C9F8();
  v71(v77);
  sub_8284(v75 + 64, (v60 + 559));
  sub_82E0();
  sub_16C4EC();
  sub_376FC((v60 + 619));
  sub_8334((v60 + 559));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2F588()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = *(v60 + 10576);
  v62 = *(v60 + 10568);
  v63 = *(v60 + 9024);
  *(v60 + 10584) = v63;
  swift_unknownObjectRelease();

  v64 = (*(&stru_20.maxprot + (swift_isaMask & *v63)))();
  if (v64 == 5)
  {
    v75 = *(v60 + 10552);
    v76 = *(v60 + 10544);
    v77 = *(v60 + 10536);
    v78 = *(v60 + 9368);
    sub_38450();
    v79 = sub_38408();
    v76(v79);
    v80 = sub_16DBDC();
    v81 = sub_16E36C();
    if (sub_1BA1C(v81))
    {
      v82 = sub_1BA38();
      sub_1BA50(v82);
      sub_1B9D0(&def_259DC, v83, v84, "Got .noMedsFound or .failure, creating output.");
      sub_1BA00();
    }

    v85 = *(v60 + 10560);
    v86 = *(v60 + 9368);
    sub_38DD0();
    v87 = *(v60 + 9096);

    v88 = sub_C9F8();
    v85(v88);
    *(v60 + 10600) = *(v87 + 336);

    v89 = swift_task_alloc();
    *(v60 + 10608) = v89;
    *v89 = v60;
    sub_38A20(v89);
    sub_38648();

    return sub_165B5C();
  }

  else if (v64 == 4)
  {
    v65 = *(v60 + 9096);
    v66 = *(v60 + 9624);
    v67 = sub_372A0(v63, &selRef_matchingMedsBeforeUpdate);
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = &_swiftEmptyArrayStorage;
    }

    sub_30BB0(v68);

    swift_task_alloc();
    sub_179E8();
    *(v60 + 10592) = v69;
    *v69 = v70;
    v69[1] = sub_2FB50;
    v71 = *(v60 + 9096);
    v72 = *(v60 + 9088);
    sub_38648();

    return sub_31C5C();
  }

  else
  {
    v91 = *(v60 + 10552);
    v92 = *(v60 + 10544);
    v93 = *(v60 + 10536);
    v94 = *(v60 + 9344);
    v95 = *(v60 + 9320);
    sub_38474();
    v96 = sub_8948();
    v92(v96);
    v97 = sub_16DBDC();
    v98 = sub_16E37C();
    if (sub_38670(v98))
    {
      v99 = sub_1BA38();
      sub_387A4(v99);
      sub_3851C(&def_259DC, v100, v101, ".receivedConfirmationMixedLogging got a non-{success/failure} response code, returning GenericErrorFlow");
      sub_38604();
    }

    v102 = *(v60 + 10568);
    v103 = *(v60 + 10560);
    v104 = *(v60 + 9344);
    v105 = *(v60 + 9328);
    v106 = *(v60 + 9320);
    v107 = *(v60 + 9096);
    v108 = *(v60 + 9088);

    v109 = sub_C9E0();
    v103(v109);
    sub_8284(v107 + 64, v60 + 2072);
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334(v60 + 2072);
    sub_37D94();
    sub_37E9C();

    sub_C9BC();
    sub_38648();

    return v111(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
  }
}

uint64_t sub_2FB50()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 10592);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2FC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = *(v60 + 10584);

  sub_376FC(v60 + 4952);
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_2FE70()
{
  sub_386A8();
  sub_38A2C();
  sub_38388();
  *v4 = v3;
  v5 = *(v0 + 10608);
  v6 = *v2;
  sub_38440();
  *v7 = v6;
  *(v9 + 10616) = v8;

  sub_38A38();
  v11 = *(v10 + 10600);
  if (v1)
  {
  }

  else
  {
    v12 = *(v10 + 10600);
  }

  sub_385C8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_2FF9C()
{
  sub_38AB4();
  sub_38664();
  v2 = v0[1327];
  v3 = v0[1153];
  sub_38BBC();
  sub_37FFC();
  v4 = sub_38594();
  sub_B9BF4(v4, v5, v6);
  sub_38EE4();
  v7 = [v2 catId];
  sub_16E1BC();
  sub_38BA4();
  sub_C9E0();
  sub_16C76C();
  sub_8388(v1 + 24, (v0 + 969));
  sub_8284(v1 + 64, (v0 + 399));
  sub_8388(v1 + 296, (v0 + 944));
  v0[1328] = *(v1 + 336);
  v0[1329] = *(v1 + 344);

  swift_task_alloc();
  sub_179E8();
  v0[1330] = v8;
  *v8 = v9;
  v8[1] = sub_300E0;
  v10 = v0[1327];
  v11 = v0[1153];
  sub_38C08();
  sub_385E4();
  sub_8CC0();

  return sub_9AEDC();
}

uint64_t sub_300E0()
{
  sub_C9EC();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  sub_38800();
  v5 = *(v4 + 10640);
  v7 = *(v6 + 10632);
  v8 = *(v6 + 10624);
  v9 = *v0;
  sub_C990();
  *v10 = v9;

  sub_2D64((v2 + 7552));
  sub_C938(v2 + 3192);
  sub_2D64((v2 + 7752));
  sub_17960();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_3021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  if (v12[992])
  {
    v14 = v12[1327];
    v15 = v12[1323];
    v16 = v12[1321];
    v17 = v12[1153];
    v18 = sub_385A4(7912);
    sub_38BD8(v18);
    sub_387F4();
    v19 = swift_allocObject();
    sub_38754(v19);
    v20 = sub_16C1DC();
    sub_38964(v20);
    v12[1121] = sub_384FC();
    sub_38AEC();

    sub_389E8();
    sub_2D64(v12 + 994);
    v21 = *(v13 + 8);
    v22 = sub_C9F8();
    v23(v22);
  }

  else
  {
    v24 = v12[1319];
    v25 = v12[1318];
    v26 = v12[1317];
    v27 = v12[1170];
    v28 = v12[1165];
    sub_8748((v12 + 989), &qword_1C5ED0, &qword_171090);
    sub_385D8();
    swift_beginAccess();
    v29 = sub_38408();
    v25(v29);
    v30 = sub_16DBDC();
    v31 = sub_16E37C();
    if (sub_1BA1C(v31))
    {
      v32 = sub_1BA38();
      sub_1BA50(v32);
      sub_1B9D0(&def_259DC, v33, v34, "getPunchoutOutput() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v35 = v12[1323];
    v55 = v12[1327];
    v56 = v12[1321];
    v36 = v12[1320];
    v37 = v12[1170];
    v38 = v12[1166];
    v39 = v12[1165];
    v40 = v12[1152];
    v57 = v12[1151];
    v58 = v12[1153];
    v41 = v12[1137];
    v42 = v12[1136];

    v43 = sub_C9F8();
    v36(v43);
    sub_8284(v41 + 64, (v12 + 459));
    sub_82E0();
    sub_16C4EC();

    sub_389E8();
    sub_8334((v12 + 459));
    v44 = sub_38E20();
    v45(v44);
  }

  sub_37E68();
  sub_38014();

  sub_C9BC();
  sub_8CC0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_30624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_38788();
  sub_38880();
  v61 = v60[1319];
  v62 = v60[1318];
  v63 = v60[1317];
  v64 = v60[1169];
  sub_38450();
  v65 = sub_38408();
  v62(v65);
  sub_16DBDC();
  v66 = sub_16E37C();
  if (sub_1BA1C(v66))
  {
    v67 = sub_1BA38();
    sub_1BA50(v67);
    sub_1B9D0(&def_259DC, v68, v69, "Failed executing catWrapperSimple.genericMedicationLogFailed_Dialog, returning nil");
    sub_1BA00();
  }

  v70 = v60[1323];
  v71 = v60[1321];
  v72 = v60[1320];
  v73 = v60[1169];
  sub_386DC();
  v74 = sub_C9F8();
  v72(v74);
  sub_8284(v62 + 64, (v60 + 319));
  sub_82E0();
  sub_16C4EC();

  sub_389E8();
  sub_8334((v60 + 319));
  sub_37D94();
  sub_37E9C();

  sub_C9BC();
  sub_38648();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_309A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D8AC();
  v3 = objc_allocWithZone(v2);
  result = sub_16D89C();
  a1[3] = v2;
  a1[4] = &protocol witness table for MedStorageHelper;
  *a1 = result;
  return result;
}

uint64_t sub_30A08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_37D90, 0, 0);
}

uint64_t sub_30A28@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_4304();
  sub_C1F30(a1);
  type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  v7 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v7;
  type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  v8 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v8;
  type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_38F2C();
  sub_38E5C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_30B2C(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  a1(0);
  sub_38F2C();
  v8 = sub_38E5C();
  return a2(v8);
}

uint64_t sub_30BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16DBEC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  sub_16D21C();
  if (sub_16D20C())
  {
    sub_16D1EC();

    sub_16C31C();

    if (*(&v28 + 1))
    {
      sub_17464(&v27, v30);
      sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      v15 = *(v7 + 16);
      sub_8B60();
      v16();
      v17 = sub_16DBDC();
      v18 = sub_16E36C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = sub_1BA38();
        *v19 = 0;
        _os_log_impl(&def_259DC, v17, v18, "SpecificMedLoggingFlow: Registering corrections flow", v19, 2u);
        sub_8A2C();
      }

      (*(v7 + 8))(v14, v4);
      sub_8388(v2 + 360, v26);
      sub_2D20(v26, v26[3]);
      sub_BDE9C(a1, &v27);
      sub_2D64(v26);
      sub_2D20(v30, v30[3]);
      sub_16C30C();
      sub_2D64(&v27);
      return sub_2D64(v30);
    }
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  sub_8748(&v27, &qword_1C6790, &qword_171C70);
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v21 = *(v7 + 16);
  sub_8B60();
  v22();
  v23 = sub_16DBDC();
  v24 = sub_16E37C();
  if (sub_38670(v24))
  {
    v25 = sub_1BA38();
    *v25 = 0;
    _os_log_impl(&def_259DC, v23, a1, "SpecificMedLoggingFlow: No corrections client available. Continuing without registering corrections flow.", v25, 2u);
    sub_8A2C();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_30EA0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6780, &qword_176710);
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v8);
  v10 = &v87 - v9;
  v11 = sub_16DBEC();
  v12 = sub_42F0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v18);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  v22 = (&v87 - v21);
  v23 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v100 = v14;
  v24 = *(v14 + 16);
  v94 = v11;
  v99 = v14 + 16;
  v98 = v24;
  v24(v22, v23, v11);
  v97 = v5;
  v26 = *(v5 + 16);
  v25 = (v5 + 16);
  v95 = a1;
  v27 = v2;
  v93 = v26;
  v26(v10, a1, v2);
  v28 = sub_16DBDC();
  v29 = sub_16E36C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_8BD8();
    v31 = sub_38D7C(v30);
    v90 = v23;
    v89 = v31;
    v101[0] = v31;
    *v22 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v32 = sub_16E68C();
    v34 = v33;
    v35 = v97;
    v36 = *(v97 + 8);
    v36(v10, v27);
    v37 = sub_3AB7C(v32, v34, v101);

    v38 = v88;
    *(v88 + 4) = v37;
    v39 = v35;
    _os_log_impl(&def_259DC, v28, v29, "Received response from PromptForValueFlowAsync for LogConfirmationAsScheduledStrategy: %s", v38, 0xCu);
    sub_2D64(v89);
    v23 = v90;
    sub_8A2C();
    sub_1BA00();

    v40 = v36;
  }

  else
  {

    v39 = v97;
    v40 = *(v97 + 8);
    v40(v10, v2);
  }

  v41 = *(v100 + 8);
  v42 = v94;
  v41(v22, v94);
  v43 = v96;
  v93(v96, v95, v27);
  v44 = *(v39 + 88);
  v45 = sub_38E38();
  if (v46(v45) != enum case for PromptResult.answered<A>(_:))
  {
    v55 = sub_38E38();
    (v40)(v55);
    sub_385D8();
    swift_beginAccess();
    v56 = sub_38B08(&v104);
    v57(v56);
    v53 = sub_16DBDC();
    v58 = sub_16E37C();
    if (sub_387B0(v58))
    {
LABEL_10:
      v59 = sub_1BA38();
      sub_1BA50(v59);
      sub_385B8();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      sub_1BA00();
    }

LABEL_11:

    v41(v25, v42);
    sub_388F0();
    v65 = 8;
    goto LABEL_12;
  }

  v47 = *(v39 + 96);
  v48 = sub_38E38();
  v49(v48);
  if (!v43[1] || (v50 = *v43, , v50 == 2))
  {
    sub_385D8();
    swift_beginAccess();
    v51 = sub_38B08(&v103);
    v52(v51);
    v53 = sub_16DBDC();
    v54 = sub_16E37C();
    if (sub_387B0(v54))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_385D8();
  swift_beginAccess();
  v67 = sub_38DC4(&v102);
  v68 = v23;
  v69 = v98;
  v98(v67, v23, v42);
  v70 = sub_16DBDC();
  v71 = sub_16E36C();
  if (sub_387B0(v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 67109120;
    v72[1] = v50 & 1;
    sub_385B8();
    _os_log_impl(v73, v74, v75, v76, v77, 8u);
    sub_1BA00();
  }

  v41(v92, v42);
  if (v50)
  {
    sub_388F0();
    v65 = 9;
  }

  else
  {
    sub_385D8();
    swift_beginAccess();
    v78 = v91;
    v69(v91, v68, v42);
    v79 = sub_16DBDC();
    v80 = sub_16E37C();
    if (sub_387B0(v80))
    {
      v81 = sub_1BA38();
      sub_1BA50(v81);
      sub_385B8();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
      sub_1BA00();
    }

    v41(v78, v42);
    sub_388F0();
    v65 = 7;
  }

LABEL_12:
  sub_38A00(v65);
  return sub_376FC(v101);
}

uint64_t sub_31524(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6780, &qword_176710);
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v8);
  v10 = &v100 - v9;
  v11 = sub_16DBEC();
  v12 = sub_42F0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v18);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v19);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v20);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v21);
  v23 = (&v100 - v22);
  v24 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v107 = v14;
  v25 = v14[2];
  v110 = v24;
  v109 = v14 + 2;
  v112 = v25;
  v25(v23, v24, v11);
  v26 = v5[2];
  v27 = v10;
  v28 = v10;
  v108 = a1;
  v29 = v2;
  v106 = v26;
  v26(v28, a1, v2);
  v30 = sub_16DBDC();
  v31 = sub_16E36C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_8BD8();
    v103 = v11;
    v102 = sub_38D7C(v32);
    __dst[0] = v102;
    *v23 = 136315138;
    sub_38940(&qword_1C6788, &qword_1C6780, &qword_176710);
    v33 = sub_16E68C();
    v35 = v34;
    v36 = v5[1];
    v37 = sub_389C0();
    v36(v37);
    v38 = sub_3AB7C(v33, v35, __dst);

    v39 = v101;
    *(v101 + 4) = v38;
    _os_log_impl(&def_259DC, v30, v31, "Received response from PromptForValueFlowAsync for LogMedGenericMixedStatusConfirmationStrategy: %s", v39, 0xCu);
    v40 = sub_38DC4(v114);
    sub_2D64(v40);
    sub_8A2C();
    v11 = v103;
    sub_8A2C();

    v41 = v36;
  }

  else
  {

    v41 = v5[1];
    v41(v27, v2);
  }

  v42 = v107;
  v43 = v107[1];
  v44 = sub_38E38();
  v43(v44);
  v45 = sub_38DC4(&v119);
  v106(v45, v108, v29);
  v46 = v5[11];
  v47 = sub_389C0();
  if (v48(v47) != enum case for PromptResult.answered<A>(_:))
  {
    v57 = sub_389C0();
    (v41)(v57);
    v58 = v110;
    sub_385D8();
    swift_beginAccess();
    v29 = v105;
    v112(v105, v58, v11);
    v55 = sub_16DBDC();
    v59 = sub_16E37C();
    if (sub_387B0(v59))
    {
LABEL_10:
      v60 = sub_1BA38();
      sub_1BA50(v60);
      sub_385B8();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      sub_1BA00();
    }

LABEL_11:

    (v43)(v29, v11);
    sub_388F0();
    sub_38A00(8);
    return sub_376FC(__dst);
  }

  v49 = v5[12];
  v50 = sub_389C0();
  v51(v50);
  v52 = v110;
  if (!v42[1] || (v29 = *v42, , v29 == 2))
  {
    sub_385D8();
    swift_beginAccess();
    v53 = sub_386C4(&v118);
    v54(v53);
    v55 = sub_16DBDC();
    v56 = sub_16E37C();
    if (sub_387B0(v56))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_385D8();
  swift_beginAccess();
  v67 = sub_38DC4(&v117);
  v112(v67, v52, v11);
  v68 = sub_16DBDC();
  v69 = sub_16E36C();
  if (sub_387B0(v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109120;
    v70[1] = v29 & 1;
    sub_385B8();
    _os_log_impl(v71, v72, v73, v74, v75, 8u);
    sub_1BA00();
  }

  (v43)(v104, v11);
  sub_385D8();
  if (v29)
  {
    swift_beginAccess();
    v76 = sub_386C4(&v115);
    v77(v76);
    v78 = sub_16DBDC();
    v79 = sub_16E36C();
    if (sub_387B0(v79))
    {
      v80 = sub_1BA38();
      sub_1BA50(v80);
      sub_385B8();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      sub_1BA00();
    }

    (v43)(v29, v11);
    v86 = *(v111 + 16);

    v87 = getMedStatus(from:)();

    if (v87)
    {
      v88 = 4;
    }

    else
    {
      v88 = 3;
    }
  }

  else
  {
    swift_beginAccess();
    v89 = sub_386C4(&v116);
    v90(v89);
    v91 = sub_16DBDC();
    v92 = sub_16E36C();
    if (sub_387B0(v92))
    {
      v93 = sub_1BA38();
      sub_1BA50(v93);
      sub_385B8();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      sub_1BA00();
    }

    (v43)(v29, v11);
    v88 = 5;
  }

  v99 = v111;
  memcpy(__dst, (v111 + 224), 0x41uLL);
  *(v111 + 224) = v88;
  *(v99 + 264) = 0;
  *(v99 + 288) = 0x80;
  return sub_376FC(__dst);
}

uint64_t sub_31C5C()
{
  sub_8A88();
  *(v1 + 3056) = v0;
  *(v1 + 3048) = v2;
  *(v1 + 2985) = v3;
  *(v1 + 3040) = v4;
  v5 = type metadata accessor for GenericMedCompletedLogModel();
  *(v1 + 3064) = v5;
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v1 + 3072) = sub_8BC0();
  v8 = type metadata accessor for WellnessLoggingLogGenericMedRejectedConfirmationResultSetParameters(0);
  *(v1 + 3080) = v8;
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v1 + 3088) = sub_8BC0();
  v11 = sub_16D5CC();
  *(v1 + 3096) = v11;
  sub_888C(v11);
  *(v1 + 3104) = v12;
  v14 = *(v13 + 64);
  *(v1 + 3112) = sub_8C38();
  *(v1 + 3120) = swift_task_alloc();
  v15 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v15);
  v17 = *(v16 + 64);
  *(v1 + 3128) = sub_8BC0();
  v18 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v18);
  v20 = *(v19 + 64);
  *(v1 + 3136) = sub_8C38();
  *(v1 + 3144) = swift_task_alloc();
  v21 = sub_16BF5C();
  *(v1 + 3152) = v21;
  sub_888C(v21);
  *(v1 + 3160) = v22;
  v24 = *(v23 + 64);
  *(v1 + 3168) = sub_8C38();
  *(v1 + 3176) = swift_task_alloc();
  v25 = type metadata accessor for SpecificMedCompletedLogModel();
  *(v1 + 3184) = v25;
  sub_4348(v25);
  v27 = *(v26 + 64);
  *(v1 + 3192) = sub_8C38();
  *(v1 + 3200) = swift_task_alloc();
  v28 = type metadata accessor for SnippetHeaderModel();
  *(v1 + 3208) = v28;
  sub_4348(v28);
  v30 = *(v29 + 64);
  *(v1 + 3216) = sub_8C38();
  *(v1 + 3224) = swift_task_alloc();
  v31 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v31);
  v33 = *(v32 + 64);
  *(v1 + 3232) = sub_8C38();
  *(v1 + 3240) = swift_task_alloc();
  *(v1 + 3248) = swift_task_alloc();
  *(v1 + 3256) = swift_task_alloc();
  *(v1 + 3264) = swift_task_alloc();
  *(v1 + 3272) = swift_task_alloc();
  v34 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v34);
  v36 = *(v35 + 64);
  *(v1 + 3280) = sub_8C38();
  *(v1 + 3288) = swift_task_alloc();
  *(v1 + 3296) = swift_task_alloc();
  *(v1 + 3304) = swift_task_alloc();
  v37 = sub_16DBEC();
  *(v1 + 3312) = v37;
  sub_888C(v37);
  *(v1 + 3320) = v38;
  v40 = *(v39 + 64);
  *(v1 + 3328) = sub_8C38();
  *(v1 + 3336) = swift_task_alloc();
  *(v1 + 3344) = swift_task_alloc();
  *(v1 + 3352) = swift_task_alloc();
  *(v1 + 3360) = swift_task_alloc();
  *(v1 + 3368) = swift_task_alloc();
  *(v1 + 3376) = swift_task_alloc();
  *(v1 + 3384) = swift_task_alloc();
  *(v1 + 3392) = swift_task_alloc();
  v41 = sub_16C46C();
  *(v1 + 3400) = v41;
  sub_888C(v41);
  *(v1 + 3408) = v42;
  v44 = *(v43 + 64);
  *(v1 + 3416) = sub_8C38();
  *(v1 + 3424) = swift_task_alloc();
  v45 = sub_16C7BC();
  *(v1 + 3432) = v45;
  sub_888C(v45);
  *(v1 + 3440) = v46;
  v48 = *(v47 + 64);
  *(v1 + 3448) = sub_8C38();
  *(v1 + 3456) = swift_task_alloc();
  v49 = sub_17960();

  return _swift_task_switch(v49, v50, v51);
}

uint64_t sub_32090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_38E68();
  a47 = v50;
  a48 = v51;
  a46 = v48;
  v52 = *(v48 + 3456);
  v53 = *(v48 + 3424);
  v54 = *(v48 + 3416);
  v55 = *(v48 + 3408);
  v56 = *(v48 + 3400);
  v57 = *(v48 + 3320);
  v58 = *(v48 + 2985);
  sub_16C43C();
  v59 = *(v55 + 16);
  *(v48 + 3464) = v59;
  *(v48 + 3472) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v54, v53, v56);
  sub_38594();
  sub_16C75C();
  *(v48 + 3480) = *(v55 + 8);
  *(v48 + 3488) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60 = sub_38E50();
  v61(v60);
  *(v48 + 3496) = sub_16DBBC();
  v62 = (v57 + 16);
  v63 = *(v48 + 3312);
  v64 = *(v48 + 3048);
  if (v58 == 5)
  {
    v65 = *(v48 + 3392);
    sub_385D8();
    swift_beginAccess();
    *(v48 + 3504) = *v62;
    sub_38DB8();
    *(v48 + 3512) = v66;
    sub_8B60();
    v67();
    v68 = v64;
    v69 = sub_16DBDC();
    LOBYTE(v65) = sub_16E36C();

    if (os_log_type_enabled(v69, v65))
    {
      v70 = *(v48 + 3048);
      v71 = sub_8BD8();
      v62 = swift_slowAlloc();
      a36 = v62;
      *v71 = 136315138;
      v72 = sub_372A0(v70, &selRef_matchingMeds);
      v73 = v72;
      if (v72)
      {
        sub_3B35C(v72);
        sub_38F44();
      }

      else
      {
        v49 = 0;
      }

      v94 = *(v48 + 3392);
      v95 = *(v48 + 3320);
      v96 = *(v48 + 3312);
      *(v48 + 2992) = v49;
      *(v48 + 3000) = v73 == 0;
      sub_2440(&qword_1C6778, &qword_171C30);
      v97 = sub_16E3DC();
      sub_3AB7C(v97, v98, &a36);
      sub_38F44();
      *(v71 + 4) = v49;
      sub_38EA4(&def_259DC, v99, v100, "got .rejectedOverwriteInGroup, starting with %s matchingMeds");
      sub_2D64(v62);
      sub_8A2C();
      sub_38604();

      v87 = *(v95 + 8);
      v87(v94, v96);
    }

    else
    {
      v84 = *(v48 + 3392);
      v85 = *(v48 + 3320);
      v86 = *(v48 + 3312);

      v87 = *(v85 + 8);
      v88 = sub_38B40();
      (v87)(v88);
    }

    *(v48 + 3520) = v87;
    v101 = sub_372A0(*(v48 + 3048), &selRef_matchingMeds);
    if (!v101)
    {
      goto LABEL_15;
    }

    v102 = sub_3B35C(v101);

    if (v102 == 1)
    {
      v111 = *(v48 + 3048);
      *(v48 + 3576) = *(*(v48 + 3056) + 336);

      v112 = sub_372A0(v111, &selRef_matchingMeds);
      if (v112 && (v113 = sub_9AE60(v112), , v113) && (sub_16B9FC(v113), v114))
      {
        v115 = *(v48 + 3296);
        sub_16E23C();

        v116 = 0;
      }

      else
      {
        v116 = 1;
      }

      sub_214C(*(v48 + 3296), v116, 1, *(v48 + 3096));
      v140 = swift_task_alloc();
      *(v48 + 3584) = v140;
      *v140 = v48;
      v140[1] = sub_33308;
      v141 = *(v48 + 3296);
      goto LABEL_29;
    }

    if (!v102)
    {
LABEL_15:
      v103 = *(v48 + 3304);
      v104 = *(v48 + 3096);
      *(v48 + 3528) = *(*(v48 + 3056) + 336);
      sub_8AB4();
      sub_214C(v105, v106, v107, v108);

      v109 = swift_task_alloc();
      *(v48 + 3536) = v109;
      *v109 = v48;
      v109[1] = sub_329B4;
      v110 = *(v48 + 3304);
LABEL_29:
      sub_38AD0();

      return sub_166794();
    }

    v117 = sub_372A0(*(v48 + 3048), &selRef_matchingMeds);
    if (v117)
    {
      v118 = *(v48 + 3288);
      v119 = *(v48 + 3096);
      v120 = *(v48 + 3056);
      sub_3B35C(v117);

      *(v48 + 3704) = *(v120 + 336);
      sub_8AB4();
      sub_214C(v121, v122, v123, v119);

      v124 = swift_task_alloc();
      *(v48 + 3712) = v124;
      *v124 = v48;
      v124[1] = sub_34620;
      v125 = *(v48 + 3288);
      goto LABEL_29;
    }

    sub_385F4();
    v143 = *(v48 + 3344);
    v144 = *(v48 + 3312);
    sub_385D8();
    swift_beginAccess();
    v145 = sub_38408();
    (v62)(v145);
    sub_16DBDC();
    v146 = sub_16E37C();
    if (sub_1BA1C(v146))
    {
      v147 = sub_1BA38();
      sub_1BA50(v147);
      sub_1B9D0(&def_259DC, v148, v149, "Couldn't create logMedConfirmationRejected_Dialog, returning GenericErrorFlow");
      sub_1BA00();
    }

    v150 = *(v48 + 3520);
    v170 = *(v48 + 3456);
    v151 = *(v48 + 3440);
    v152 = *(v48 + 3432);
    v153 = *(v48 + 3344);
    sub_38724();
    v154 = sub_386B4();
    v150(v154);
    sub_8284(v143 + 64, v48 + 976);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v48 + 976);
    (*(v151 + 8))(v170, v152);
    sub_37F20();
    sub_3815C();
    v163 = *(v48 + 3168);
    v164 = *(v48 + 3144);
    v165 = *(v48 + 3136);
    v166 = *(v48 + 3128);
    v167 = *(v48 + 3120);
    v168 = *(v48 + 3112);
    v169 = *(v48 + 3088);
    v171 = *(v48 + 3072);

    sub_C9BC();
    sub_38AD0();

    return v156(v155, v156, v157, v158, v159, v160, v161, v162, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v163, v164, v165, v166, v167, v168, v169, v171, a36, a37, a38, a39, a40);
  }

  else
  {
    v74 = *(v48 + 3336);
    sub_385D8();
    swift_beginAccess();
    *(v48 + 3768) = *v62;
    sub_38DB8();
    *(v48 + 3776) = v75;
    sub_8B60();
    v76();
    v77 = v64;
    v78 = sub_16DBDC();
    LOBYTE(v74) = sub_16E36C();

    if (os_log_type_enabled(v78, v74))
    {
      v79 = *(v48 + 3048);
      v80 = sub_8BD8();
      v81 = swift_slowAlloc();
      a36 = v81;
      *v80 = 136315138;
      v82 = sub_372A0(v79, &selRef_matchingMeds);
      v83 = v82;
      if (v82)
      {
        sub_3B35C(v82);
        sub_38F44();
      }

      else
      {
        v49 = 0;
      }

      v126 = *(v48 + 3336);
      v127 = *(v48 + 3320);
      v128 = *(v48 + 3312);
      *(v48 + 2976) = v49;
      *(v48 + 2984) = v83 == 0;
      sub_2440(&qword_1C6778, &qword_171C30);
      v129 = sub_16E3DC();
      sub_3AB7C(v129, v130, &a36);
      sub_38F44();
      *(v80 + 4) = v49;
      sub_38EA4(&def_259DC, v131, v132, "didn't get .rejectedOverwriteInGroup, starting with %s matchingMeds");
      sub_2D64(v81);
      sub_8A2C();
      sub_38604();

      v92 = *(v127 + 8);
      v92(v126, v128);
    }

    else
    {
      v89 = *(v48 + 3336);
      v90 = *(v48 + 3320);
      v91 = *(v48 + 3312);

      v92 = *(v90 + 8);
      v93 = sub_38B40();
      (v92)(v93);
    }

    *(v48 + 3784) = v92;
    v133 = *(v48 + 3056);
    v134 = *(v133 + 16);

    *(v48 + 2986) = getMedStatus(from:)() & 1;

    *(v48 + 3792) = *(v133 + 336);

    v135 = swift_task_alloc();
    *(v48 + 3800) = v135;
    *v135 = v48;
    sub_38A20(v135);
    sub_38AD0();

    return sub_1658EC(v136, v137);
  }
}