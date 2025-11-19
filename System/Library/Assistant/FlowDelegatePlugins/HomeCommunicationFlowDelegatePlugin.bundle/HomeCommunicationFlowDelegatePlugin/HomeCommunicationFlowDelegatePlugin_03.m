uint64_t sub_41414()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_22B78(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D12C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  if (v4)
  {
    v6 = sub_E8E0();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ReadAnnouncementIntentHandledStrategy failed to play notification sound", v6, 2u);
    sub_44388();
  }

  v8 = v0[20];
  v7 = v0[21];

  sub_65A0();

  return v9();
}

uint64_t sub_41514()
{
  sub_6608();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v3);
  v5 = *(v4 + 64);
  v1[10] = sub_E83C();
  v6 = sub_2664(&qword_C2070, &unk_91E90);
  v1[11] = v6;
  sub_115AC(v6);
  v1[12] = v7;
  v9 = *(v8 + 64);
  v1[13] = sub_E83C();
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_415F0()
{
  v49 = v0;
  if (qword_BF828 != -1)
  {
    swift_once();
  }

  if (qword_BF830 != -1)
  {
    swift_once();
  }

  v1 = sub_462B4();
  v0[14] = v1;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = v1;
  v4 = sub_8CCEC();
  v5 = sub_8D11C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_1D358();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    sub_443EC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1151C(v7, &qword_BFF40, &unk_90F70);
    sub_E890();
    sub_E890();
  }

  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  v17 = v0[8];

  sub_8B5BC();
  v18 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  sub_8B95C();
  sub_2714(v0 + 2);
  (*(v15 + 16))(v14, v17, v16);
  v19 = sub_8CCEC();
  v20 = sub_8D11C();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[12];
  v23 = v0[13];
  v24 = v0[11];
  if (v21)
  {
    v25 = sub_1D358();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v25 = 136315138;
    v0[7] = sub_8BB7C();
    sub_8CA8C();
    sub_43FF0(&qword_C2080, &type metadata accessor for App);
    v26 = sub_8D43C();
    v28 = v27;
    (*(v22 + 8))(v23, v24);

    v29 = sub_862D8(v26, v28, &v48);

    *(v25 + 4) = v29;
    sub_44544(&dword_0, v30, v31, "#ReadAnnouncementIntentHandledStrategy Creating a dialog between Confirm and Handle for playing announcements using app: %s.");
    sub_2714(v47);
    sub_E890();
    sub_44388();
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }

  v32 = v0[11];
  v33 = v0[8];
  v34 = sub_8BB6C();
  sub_75540();
  v36 = v35;

  sub_75AD4(v36);
  sub_44448();
  if (v34)
  {
    v37 = v0[10];
    sub_8CF2C();
  }

  v39 = v0[9];
  v38 = v0[10];
  v40 = sub_8C99C();
  sub_443C0(v40);
  v41 = *(v39 + 64);
  v42 = swift_task_alloc();
  v0[15] = v42;
  *v42 = v0;
  v42[1] = sub_41A04;
  v43 = v0[10];
  sub_6614();

  return sub_3BDBC(v44);
}

uint64_t sub_41A04()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;
  *(v5 + 128) = v0;

  if (v0)
  {
    v11 = sub_41BA8;
  }

  else
  {
    *(v5 + 136) = v3;
    v11 = sub_41B18;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_41B18()
{
  sub_6608();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_1151C(v2, &qword_C1CE0, &unk_91EC0);

  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3(v4);
}

uint64_t sub_41BA8()
{
  sub_6608();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_1151C(v2, &qword_C1CE0, &unk_91EC0);

  sub_65A0();
  v4 = *(v0 + 128);

  return v3();
}

uint64_t sub_41C30()
{
  sub_6608();
  *(v1 + 1672) = v0;
  *(v1 + 1624) = v2;
  *(v1 + 1874) = v3;
  *(v1 + 1873) = v4;
  *(v1 + 1576) = v5;
  v6 = sub_8BCBC();
  *(v1 + 1720) = v6;
  sub_115AC(v6);
  *(v1 + 1768) = v7;
  v9 = *(v8 + 64);
  *(v1 + 1776) = sub_E83C();
  v10 = type metadata accessor for CarPlayIntercomControlModel();
  *(v1 + 1784) = v10;
  sub_65E4(v10);
  v12 = *(v11 + 64);
  *(v1 + 1792) = sub_E83C();
  v13 = sub_44348();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_41D08()
{
  sub_152A0();
  if (*(v1 + 1873))
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v2 = sub_8CD0C();
    sub_22B78(v2, qword_C3DF8);
    v3 = sub_8CCEC();
    v4 = sub_8D11C();
    if (sub_443A4(v4))
    {
      v5 = sub_E8E0();
      sub_1D274(v5);
      sub_3D9B8(&dword_0, v6, v7, "#ReadAnnouncementIntentHandledStrategy makeCarPlayIntercomSnippetOutput no announcements to play. Not displaying snippet, just dialog");
      sub_1D214();
    }

    v8 = *(v1 + 1672);

    v9 = sub_8B8FC();
    sub_E824(v9);
    v10 = sub_8B8EC();
    *(v1 + 1856) = v10;
    *(v1 + 1528) = v10;
    v11 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest;
    v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    sub_44358();
    *(v1 + 1864) = v13;
    *v13 = v14;
    v13[1] = sub_424EC;
    v15 = *(v1 + 1624);
    v16 = *(v1 + 1576);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v15, v8 + v11, v9, &protocol witness table for ResponseFactory);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v17 = sub_8CD0C();
    sub_22B78(v17, qword_C3DF8);
    v18 = sub_8CCEC();
    v19 = sub_8D11C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_E8E0();
      sub_1D274(v20);
      _os_log_impl(&dword_0, v18, v19, "#ReadAnnouncementIntentHandledStrategy makeCarPlayIntercomSnippetOutput", v0, 2u);
      sub_1D214();
    }

    v21 = *(v1 + 1672);
    v22 = *(v1 + 1874);

    v23 = swift_allocObject();
    *(v1 + 1800) = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return _swift_asyncLet_get_throwing(v1 + 16);
  }
}

uint64_t sub_41FB0()
{
  sub_6608();
  v1[226] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_4263C, 0, 0);
  }

  else
  {
    v1[227] = v1[177];
    v1[228] = v1[178];

    v2 = sub_4440C();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_4205C()
{
  *(v1 + 1832) = v0;
  if (v0)
  {
    return sub_44310(sub_4271C);
  }

  else
  {
    return sub_44310(sub_42088);
  }
}

uint64_t sub_42088()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1784);
  v4 = *(v0 + 1776);
  v5 = *(v0 + 1768);
  v22 = *(v0 + 1720);
  v6 = *(v0 + 1672);
  v7 = *(v0 + 1874);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1440);
  *(v0 + 1448) = *(v0 + 1816);
  *(v0 + 1456) = v1;

  sub_8B05C();
  v10 = *(v3 + 20);
  *(v0 + 1464) = v8;
  *(v0 + 1472) = v9;
  sub_8B05C();
  v11 = *(v3 + 24);
  *(v0 + 1872) = v7;
  sub_8B05C();
  (*(v5 + 16))(v4, v6 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest, v22);
  sub_8BC6C();
  v12 = sub_8B8FC();
  sub_E824(v12);
  v13 = sub_8B8EC();
  *(v0 + 1840) = v13;
  *(v0 + 1480) = v13;
  *(v0 + 1360) = type metadata accessor for HomeCommunicationSnippetModel();
  *(v0 + 1368) = sub_43FF0(&qword_C2078, type metadata accessor for HomeCommunicationSnippetModel);
  v14 = sub_E5DC((v0 + 1336));
  sub_BF24(v2, v14);
  swift_storeEnumTagMultiPayload();
  v15 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_44358();
  *(v0 + 1848) = v16;
  *v16 = v17;
  v16[1] = sub_422B8;
  v18 = *(v0 + 1776);
  v19 = *(v0 + 1624);
  v20 = *(v0 + 1576);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 1336, v19, v18, v12, &protocol witness table for ResponseFactory);
}

uint64_t sub_422B8()
{
  sub_6608();
  sub_E884();
  v2 = v1;
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 1848);
  v6 = *v0;
  sub_E6F8();
  *v7 = v6;

  sub_2714((v2 + 1336));
  v8 = sub_44348();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_423A0()
{
  sub_6608();
  v1 = v0[230];
  v2 = v0[224];
  (*(v0[221] + 8))(v0[222], v0[215]);
  sub_BF88(v2);

  v3 = sub_4440C();

  return _swift_asyncLet_finish(v3);
}

uint64_t sub_42474()
{
  sub_6608();
  v1 = v0[225];
  v2 = v0[209];

  v3 = v0[224];
  v4 = v0[222];

  sub_44364();

  return v5();
}

uint64_t sub_424EC()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 1864);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  v5 = sub_44348();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_425D0()
{
  sub_6608();
  v1 = v0[232];

  v2 = v0[224];
  v3 = v0[222];

  sub_44364();

  return v4();
}

uint64_t sub_426A4()
{
  sub_152A0();
  v1 = *(v0 + 1808);
  sub_44564();

  sub_65A0();

  return v2();
}

uint64_t sub_4271C()
{
  sub_6608();
  v1 = *(v0 + 1824);

  v2 = sub_4440C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_427C4()
{
  sub_152A0();
  v1 = *(v0 + 1832);
  sub_44564();

  sub_65A0();

  return v2();
}

uint64_t sub_4283C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return _swift_task_switch(sub_42860, 0, 0);
}

uint64_t sub_42860()
{
  sub_6608();
  v1 = *(*(v0 + 72) + 72);
  if (*(v0 + 96) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    sub_443E0(v2);

    return sub_14AC8();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    sub_443E0(v4);

    return sub_1484C();
  }
}

uint64_t sub_42958()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  sub_444E8(v4);
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_65A0();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_42A6C, 0, 0);
  }
}

uint64_t sub_42A6C()
{
  sub_152A0();
  v3 = *(v2 + 24);
  v4 = *(v2 + 64);
  sub_8CA0C();
  sub_4442C();
  *v4 = v0;
  v4[1] = v1;
  sub_44364();

  return v5();
}

uint64_t sub_42AD8()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  sub_444D4(v4);
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_65A0();

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_42BEC, 0, 0);
  }
}

uint64_t sub_42BEC()
{
  sub_152A0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  sub_8CA0C();
  sub_4442C();
  *v4 = v0;
  v4[1] = v1;
  sub_44364();

  return v5();
}

uint64_t sub_42C58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_42C78, 0, 0);
}

uint64_t sub_42C78()
{
  sub_6608();
  v1 = *(*(v0 + 24) + 72);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  sub_443E0(v2);

  return sub_14984();
}

uint64_t sub_42D04()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    sub_4441C();

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    v13 = sub_44374();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_42E28()
{
  sub_152A0();
  v3 = *(v2 + 40);
  v4 = *(v2 + 16);
  sub_8CA0C();
  sub_4442C();
  *v4 = v0;
  v4[1] = v1;
  sub_44364();

  return v5();
}

uint64_t sub_42E94()
{
  sub_6608();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_8B02C();
  v1[20] = v4;
  sub_115AC(v4);
  v1[21] = v5;
  v7 = *(v6 + 64);
  v1[22] = sub_E83C();
  v8 = sub_2664(&qword_C2070, &unk_91E90);
  v1[23] = v8;
  sub_115AC(v8);
  v1[24] = v9;
  v11 = *(v10 + 64);
  v1[25] = sub_E83C();
  v12 = sub_44348();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_42F94()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = sub_8CD0C();
  sub_33F4(v5, qword_C3DF8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_8CCEC();
  v7 = sub_8D11C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  if (v8)
  {
    v12 = sub_1D358();
    *v12 = 134217984;
    v13 = sub_8BB6C();
    v14 = [v13 code];

    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v6, v7, "#ReadAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponseAsync reason=%ld", v12, 0xCu);
    sub_E890();
  }

  else
  {
    (*(v10 + 8))(v0[25], v0[23]);
  }

  v16 = v0[21];
  v15 = v0[22];
  v18 = v0[19];
  v17 = v0[20];

  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v20 = sub_8C88C();
  sub_E824(v20);
  *(inited + 16) = sub_8C87C();
  sub_8BE1C();
  v21 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  sub_444FC();
  sub_8B5DC();
  v0[10] = sub_8B01C();
  v0[11] = v22;
  v0[12] = 45;
  v0[13] = 0xE100000000000000;
  v0[14] = 95;
  v0[15] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  v23 = *(v16 + 8);
  v24 = sub_44510();
  v25(v24);
  sub_38AE4(1, 3);
  swift_setDeallocating();
  v26 = *(inited + 16);

  sub_2714(v0 + 2);
  v27 = *(v18 + 64);
  v28 = swift_task_alloc();
  v0[26] = v28;
  *v28 = v0;
  sub_443E0(v28);

  return sub_3BC74();
}

uint64_t sub_432A4()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[25];
    v12 = v5[22];

    sub_4441C();

    return v13();
  }

  else
  {
    v5[27] = v3;
    v15 = sub_44374();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_433DC()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = sub_8B8FC();
  sub_E824(v3);
  v4 = sub_8B8EC();
  v0[28] = v4;
  v0[16] = v4;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v0[29] = v5;
  *(v5 + 16) = xmmword_8E860;
  *(v5 + 32) = v1;
  v6 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest;
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  sub_44358();
  v0[30] = v9;
  *v9 = v10;
  v9[1] = sub_43508;
  v11 = v0[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v5, v2 + v6, v3, &protocol witness table for ResponseFactory);
}

uint64_t sub_43508()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_43608()
{
  sub_152A0();
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  sub_44364();

  return v4();
}

void *sub_43688()
{
  v1 = v0[2];

  sub_2714(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37ReadAnnouncementIntentHandledStrategy_completionOutputManifest;
  v5 = sub_8BCBC();
  sub_11580(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_436FC()
{
  sub_43688();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ReadAnnouncementIntentHandledStrategy()
{
  result = qword_C1F90;
  if (!qword_C1F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_437A8()
{
  result = sub_8BCBC();
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

uint64_t sub_43858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, AnnouncementIntentHandledStrategy, a4);
}

uint64_t sub_43920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, AnnouncementIntentHandledStrategy, a4);
}

uint64_t sub_439E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_3FEF0();
}

uint64_t sub_43A94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_3EC8C();
}

uint64_t sub_43B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, AnnouncementIntentHandledStrategy, a4);
}

uint64_t sub_43C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, AnnouncementIntentHandledStrategy, a4);
}

uint64_t sub_43CD0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_42E94();
}

uint64_t sub_43D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  AnnouncementIntentHandledStrategy = type metadata accessor for ReadAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_E0F4;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, AnnouncementIntentHandledStrategy, a4);
}

uint64_t sub_43E8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_43EC4()
{
  sub_152A0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_443FC(v4);

  return sub_4283C(v6, v2, v3);
}

uint64_t sub_43F64()
{
  sub_6608();
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = sub_443FC(v2);

  return sub_42C58(v4, v0);
}

uint64_t sub_43FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_44038()
{
  v1 = sub_2664(&qword_C2070, &unk_91E90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_44108()
{
  sub_152A0();
  v3 = v2;
  v4 = sub_2664(&qword_C2070, &unk_91E90);
  sub_65E4(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_E2A0;

  return sub_40CF0(v3);
}

uint64_t sub_441EC(void *a1)
{
  v2 = [a1 announcementRecords];

  if (!v2)
  {
    return 0;
  }

  sub_ADE4(0, &qword_C1530, INAnnouncementRecord_ptr);
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_44264()
{
  sub_152A0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_443FC(v4);

  return sub_3FB94(v6, v2, v3);
}

uint64_t sub_44364()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_44388()
{
}

BOOL sub_443A4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_443C0(uint64_t a1)
{

  return sub_6270(v1, v2, 1, a1);
}

uint64_t sub_4441C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_4442C()
{
}

uint64_t sub_44448()
{
}

uint64_t sub_44464()
{

  return swift_allocObject();
}

uint64_t sub_4447C()
{
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[127];
}

uint64_t sub_44498()
{
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[127];
}

uint64_t sub_444D4(uint64_t result)
{
  v1[5] = v3;
  v1[6] = result;
  v1[7] = v2;
  return result;
}

uint64_t sub_444E8(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t sub_4451C()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  return v0[127];
}

uint64_t sub_44530()
{
  result = v0[130];
  v2 = v0[128];
  v3 = *(v0[129] + 8);
  return result;
}

void sub_44544(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_44564()
{
  v2 = v0[225];
  v3 = v0[224];
  v4 = v0[222];
  v5 = v0[209];
}

uint64_t sub_445A4()
{
  v1 = [objc_allocWithZone(SAUIPlayNotificationSound) init];
  v0[3] = v1;
  v2 = sub_8CEDC();
  sub_4494C(v2, v3, v1);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#ReadAnnouncementIntentHelper submitting playNotificationSound command", v7, 2u);
  }

  v8 = v0[2];

  v9 = v8[3];
  v10 = v8[4];
  sub_622C(v8, v9);
  v11 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[4] = v12;
  v13 = sub_449B0();
  *v12 = v0;
  v12[1] = sub_44768;

  return AceServiceInvokerAsync.submit<A>(_:)(v1, v9, v13, v10);
}

uint64_t sub_44768(void *a1)
{
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_448E8;
  }

  else
  {

    v5 = sub_44884;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_44884()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_448E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

void sub_4494C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setNotificationType:v4];
}

unint64_t sub_449B0()
{
  result = qword_C2090;
  if (!qword_C2090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2090);
  }

  return result;
}

uint64_t sub_449F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8880;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_44A40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_246B8();
}

uint64_t sub_44A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_449F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_44A94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_44C80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_44AD0()
{
  v0 = qword_C2098;

  return v0;
}

uint64_t sub_44B08(uint64_t a1)
{
  v2 = sub_4516C();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_44B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_44FA8();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_44B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4516C();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_44BF4(uint64_t a1)
{
  v2 = sub_4516C();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_44C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_44FA8();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_44C80(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x44E64);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_44EA0()
{
  result = qword_C20A8;
  if (!qword_C20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20A8);
  }

  return result;
}

unint64_t sub_44EF8()
{
  result = qword_C20B0;
  if (!qword_C20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20B0);
  }

  return result;
}

unint64_t sub_44F50()
{
  result = qword_C20B8;
  if (!qword_C20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20B8);
  }

  return result;
}

unint64_t sub_44FA8()
{
  result = qword_C20C0;
  if (!qword_C20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20C0);
  }

  return result;
}

unint64_t sub_45000()
{
  result = qword_C20C8;
  if (!qword_C20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20C8);
  }

  return result;
}

unint64_t sub_45058()
{
  result = qword_C20D0;
  if (!qword_C20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20D0);
  }

  return result;
}

unint64_t sub_450B0()
{
  result = qword_C20D8;
  if (!qword_C20D8)
  {
    sub_B9BC(&qword_C20E0, &qword_92090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20D8);
  }

  return result;
}

unint64_t sub_45118()
{
  result = qword_C20E8;
  if (!qword_C20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20E8);
  }

  return result;
}

unint64_t sub_4516C()
{
  result = qword_C20F0;
  if (!qword_C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20F0);
  }

  return result;
}

uint64_t type metadata accessor for ReadAnnouncementRCHFlowDelegate()
{
  result = qword_C2108;
  if (!qword_C2108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_452E0(void (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, _BYTE *, _BYTE *, uint64_t))
{
  v6 = sub_8CA2C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_16854();
  v8 = sub_8BCEC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_16854();
  v12 = v11 - v10;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  a1(0);
  sub_8CA1C();
  v13 = sub_8C92C();
  v14 = a2(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  return a3(v12, v19, v18, v13);
}

uint64_t sub_45410()
{
  v0 = sub_2664(&qword_C2170, &unk_921E0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_8BBFC();
}

uint64_t sub_45454()
{
  v1 = sub_452A0();
  sub_E528(v0 + qword_C2100, v11);
  sub_E58C(v11, v11[3]);
  sub_E6E8();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_16854();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  v9 = sub_46090(v1, v7);
  sub_2714(v11);
  return v9;
}

unsigned __int8 *sub_45540(uint64_t a1, uint64_t a2)
{
  v4 = sub_8BDEC();
  sub_E6E8();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  sub_16854();
  v12 = v11 - v10;
  v13 = sub_8BE0C();
  sub_E6E8();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_16854();
  v21 = v20 - v19;
  (*(v15 + 16))(v20 - v19, a1, v13);
  v22 = *(v15 + 88);
  v23 = sub_461E0();
  if (v24(v23) != enum case for Parse.directInvocation(_:))
  {
    v50 = *(v15 + 8);
    v51 = sub_461E0();
    v52(v51);
    sub_2664(&qword_C2160, &qword_921C8);
    v53 = sub_8B9FC();
    return v53(a1, a2);
  }

  v25 = *(v15 + 96);
  v26 = sub_461E0();
  v27(v26);
  (*(v6 + 32))(v12, v21, v4);
  v28 = sub_8BDDC();
  if (!v28)
  {
    goto LABEL_32;
  }

  sub_13E84(v28, v78);
  if (!v78[1])
  {
    goto LABEL_32;
  }

  v30 = v78[2];
  v29 = v79;
  v81 = v80;
  if (!v79)
  {
    sub_92C0(v78, &qword_C2168, &unk_921D0);
LABEL_32:
    v55 = [objc_allocWithZone(INReadAnnouncementIntent) init];
LABEL_33:
    v54 = v55;
    (*(v6 + 8))(v12, v4);
    return v54;
  }

  v31 = qword_BF818;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_8CD0C();
  sub_33F4(v32, qword_C3DF8);

  v33 = sub_8CCEC();
  v34 = sub_8D11C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v82 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_862D8(v30, v29, &v82);
    _os_log_impl(&dword_0, v33, v34, "Received DirectInvocation parse type, with announceId: %s", v35, 0xCu);
    sub_2714(v36);
  }

  v82 = v81;
  v37 = *(&v81 + 1);
  if (!*(&v81 + 1))
  {
    v56 = &qword_C2168;
    v57 = &unk_921D0;
    v58 = v78;
LABEL_36:
    sub_92C0(v58, v56, v57);
LABEL_91:
    v73 = objc_allocWithZone(INReadAnnouncementIntent);
    v55 = sub_45D60(1, v30, v29, 1);
    goto LABEL_33;
  }

  v38 = v82;
  sub_45DE4(&v82, v77);
  result = sub_92C0(v78, &qword_C2168, &unk_921D0);
  v40 = HIBYTE(v37) & 0xF;
  v41 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v42 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    v56 = &qword_C1A08;
    v57 = &unk_92B40;
    v58 = &v82;
    goto LABEL_36;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {
    v74 = sub_461E0();
    v44 = sub_5C45C(v74, v75, 10);
    v69 = v76;
    goto LABEL_86;
  }

  if ((v37 & 0x2000000000000000) == 0)
  {
    if ((v38 & 0x1000000000000000) != 0)
    {
      result = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_461E0();
      result = sub_8D2BC();
    }

    v43 = *result;
    if (v43 == 43)
    {
      if (v41 >= 1)
      {
        if (v41 != 1)
        {
          v44 = 0;
          if (result)
          {
            while (1)
            {
              sub_461D0();
              if (!v46 & v45)
              {
                goto LABEL_84;
              }

              sub_461BC();
              if (!v46)
              {
                goto LABEL_84;
              }

              v44 = v62 + v61;
              if (__OFADD__(v62, v61))
              {
                goto LABEL_84;
              }

              sub_461EC();
              if (v46)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_84;
      }

      goto LABEL_97;
    }

    if (v43 != 45)
    {
      if (v41)
      {
        v44 = 0;
        if (result)
        {
          while (1)
          {
            v65 = *result - 48;
            if (v65 > 9)
            {
              goto LABEL_84;
            }

            v66 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              goto LABEL_84;
            }

            v44 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
              goto LABEL_84;
            }

            ++result;
            if (!--v41)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_84:
      v44 = 0;
      v49 = 1;
      goto LABEL_85;
    }

    if (v41 >= 1)
    {
      if (v41 != 1)
      {
        v44 = 0;
        if (result)
        {
          while (1)
          {
            sub_461D0();
            if (!v46 & v45)
            {
              goto LABEL_84;
            }

            sub_461BC();
            if (!v46)
            {
              goto LABEL_84;
            }

            v44 = v48 - v47;
            if (__OFSUB__(v48, v47))
            {
              goto LABEL_84;
            }

            sub_461EC();
            if (v46)
            {
              goto LABEL_85;
            }
          }
        }

LABEL_75:
        v49 = 0;
LABEL_85:
        v69 = v49;
LABEL_86:
        sub_92C0(&v82, &qword_C1A08, &unk_92B40);
        if ((v69 & 1) == 0 && v44 == 2)
        {

          v70 = sub_8CCEC();
          v71 = sub_8D12C();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_0, v70, v71, "DirectInvocation is a deliveryFailure notification. Returning nil.", v72, 2u);
          }

          (*(v6 + 8))(v12, v4);
          return 0;
        }

        goto LABEL_91;
      }

      goto LABEL_84;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v77[0] = v38;
  v77[1] = v37 & 0xFFFFFFFFFFFFFFLL;
  if (v38 != 43)
  {
    if (v38 != 45)
    {
      if (v40)
      {
        while (1)
        {
          sub_461D0();
          if (!v46 & v45)
          {
            break;
          }

          sub_461BC();
          if (!v46)
          {
            break;
          }

          v44 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            break;
          }

          sub_461EC();
          if (v46)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        sub_461F8();
        while (1)
        {
          sub_461D0();
          if (!v46 & v45)
          {
            break;
          }

          sub_461BC();
          if (!v46)
          {
            break;
          }

          v44 = v60 - v59;
          if (__OFSUB__(v60, v59))
          {
            break;
          }

          sub_461EC();
          if (v46)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_96;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      sub_461F8();
      while (1)
      {
        sub_461D0();
        if (!v46 & v45)
        {
          break;
        }

        sub_461BC();
        if (!v46)
        {
          break;
        }

        v44 = v64 + v63;
        if (__OFADD__(v64, v63))
        {
          break;
        }

        sub_461EC();
        if (v46)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_84;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_45C24()
{
  sub_E528(v0 + qword_C20F8, v5);
  v1 = sub_2664(&qword_C2158, &qword_921C0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_7E410(v5);
}

uint64_t sub_45CEC()
{
  v0 = sub_8BA0C();
  v1 = qword_C20F8;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C2100));

  return _swift_deallocClassInstance(v0, 96, 7);
}

id sub_45D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_8CEAC();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithReadType:a1 startAnnouncementIdentifier:v7 userNotificationType:a4];

  return v8;
}

uint64_t sub_45DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1A08, &unk_92B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45E54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_8CA2C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for SharedGlobals();
  v23[3] = v8;
  v23[4] = &off_BB508;
  v9 = sub_E5DC(v23);
  sub_E63C(a2, v9);
  type metadata accessor for ReadAnnouncementCATs();
  sub_8CA1C();
  *(a3 + qword_C1C28) = sub_8C92C();
  sub_E528(v23, v21);
  v10 = v22;
  v11 = sub_E58C(v21, v22);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v20[3] = v8;
  v20[4] = &off_BB508;
  v16 = sub_E5DC(v20);
  sub_E63C(v14, v16);
  *(a3 + *(*a3 + qword_C3D60 + 16)) = a1;
  sub_E528(v20, a3 + *(*a3 + qword_C3D60 + 24));
  v17 = sub_8BB3C();
  sub_2714(v20);
  sub_2714(v23);
  sub_2714(v21);
  return v17;
}

uint64_t sub_46090(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for SharedGlobals();
  v20 = &off_BB508;
  v4 = sub_E5DC(v18);
  sub_E63C(a2, v4);
  AnnouncementAceViewProvider = type metadata accessor for ReadAnnouncementAceViewProvider();
  v6 = *(AnnouncementAceViewProvider + 48);
  v7 = *(AnnouncementAceViewProvider + 52);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = sub_E58C(v18, v19);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_45E54(a1, v13, v8);
  sub_2714(v18);
  return v15;
}

uint64_t type metadata accessor for ReadAnnouncementTemplatingService()
{
  result = qword_C2190;
  if (!qword_C2190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_462B4()
{
  v0 = sub_8B8CC();
  v1 = sub_3488(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8B8BC();
  sub_8B84C();
  sub_1E508(0);
  sub_8B87C();

  sub_8B89C();

  sub_8B8AC();
  v8 = sub_8B80C();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_463B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v31[0] = a2;
  v32 = a1;
  v9 = sub_2664(&qword_C0660, &qword_92260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v31 - v11;
  v13 = sub_8B02C();
  v14 = sub_3488(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E528(a3, v5 + qword_C2178);
  v31[2] = a4;
  *(v5 + qword_C2188) = a4;
  sub_E528(a2, v5 + qword_C2180);
  v31[1] = "mentTemplatingService";
  v21 = a3[4];
  sub_622C(a3, a3[3]);

  sub_8B5DC();
  v22 = sub_8B01C();
  v24 = v23;
  (*(v16 + 8))(v20, v13);
  v34[0] = v22;
  v34[1] = v24;
  v33[0] = 45;
  v33[1] = 0xE100000000000000;
  v34[5] = 95;
  v34[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_47208(&qword_C0670, type metadata accessor for INIntentSlotValueType);
  sub_8CE6C();
  v25 = v31[0];
  sub_E528(v31[0], v34);
  sub_E528(a3, v33);
  v26 = sub_8BCEC();
  v27 = *(v26 - 8);
  v28 = v32;
  (*(v27 + 16))(v12, v32, v26);
  sub_6270(v12, 0, 1, v26);
  v29 = sub_8BA5C();

  sub_2714(v25);
  (*(v27 + 8))(v28, v26);
  sub_2714(a3);
  return v29;
}

uint64_t sub_46718(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3 && (v5 = sub_471A8(a3)) != 0)
  {
    v6 = sub_2D3B4(v5);

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v7)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v7)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_862D8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "makeIntentHandledDialog isAnnouncementRecordsNilOrEmpty: %s.", v11, 0xCu);
    sub_2714(v12);
    sub_E890();
    sub_E890();
  }

  v16 = *(v4 + qword_C2188);
  if (v7)
  {
    return sub_3B758();
  }

  else
  {
    return sub_3B934();
  }
}

void sub_468CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a4;
  v53 = a5;
  v10 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  if (qword_BF828 != -1)
  {
    swift_once();
  }

  if (qword_BF830 != -1)
  {
    swift_once();
  }

  v14 = sub_462B4();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v15 = sub_8CD0C();
  sub_33F4(v15, qword_C3DF8);
  v16 = v14;
  v17 = sub_8CCEC();
  v18 = sub_8D11C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = v13;
    v21 = a3;
    v22 = a1;
    v23 = v6;
    v24 = a2;
    v25 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v26 = v16;
    _os_log_impl(&dword_0, v17, v18, "Submit an ace command to update background context for announcement playback: %@", v19, 0xCu);
    sub_92C0(v25, &qword_BFF40, &unk_90F70);
    a2 = v24;
    v6 = v23;
    a1 = v22;
    a3 = v21;
    v13 = v51;
    sub_E890();
    sub_E890();
  }

  v27 = *(v6 + qword_C2180 + 32);
  sub_622C((v6 + qword_C2180), *(v6 + qword_C2180 + 24));
  sub_8B95C();
  if (!a3)
  {
    goto LABEL_13;
  }

  v51 = a3;
  v28 = sub_471A8(v51);
  if (v28)
  {
    v29 = sub_2D3B4(v28);

    if (v29)
    {

LABEL_13:

      v30 = sub_8CCEC();
      v31 = sub_8D11C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v54 = a1;
        v55 = v33;
        *v32 = 136315138;
        sub_8CA8C();
        sub_47208(&qword_C2080, &type metadata accessor for App);
        v34 = sub_8D43C();
        v36 = sub_862D8(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_0, v30, v31, "Creating a dialog between Confirm and Handle for playing announcements using app: %s.", v32, 0xCu);
        sub_2714(v33);
        sub_E890();
        sub_E890();
      }

      if (a3)
      {
        sub_75540();
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      sub_75AD4(v38);
      v45 = v44;

      if (v45)
      {
        sub_8CF2C();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = sub_8C99C();
      sub_6270(v13, v46, 1, v47);
      v48 = *(v6 + qword_C2188);
      v49 = swift_allocObject();
      *(v49 + 16) = v52;
      *(v49 + 24) = v53;

      sub_3B780(v13);

      sub_92C0(v13, &qword_C1CE0, &unk_91EC0);
      return;
    }
  }

  v39 = sub_8CCEC();
  v40 = sub_8D11C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "Skipping interstitial since there are no announcements to play.", v41, 2u);
    sub_E890();
  }

  sub_2664(&qword_C21E0, &qword_92250);
  v42 = sub_8BA6C();
  v42(a1, a2, a3, v52, v53);

  v43 = v51;
}

uint64_t sub_46E50(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v14 - v6);
  v8 = sub_2664(&qword_C21E8, &qword_92258);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v14 - v10);
  sub_10D50(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v11 = *v7;
  }

  else
  {
    v12 = sub_8B93C();
    (*(*(v12 - 8) + 32))(v11, v7, v12);
    sub_6270(v11, 0, 1, v12);
  }

  swift_storeEnumTagMultiPayload();
  a2(v11);
  return sub_92C0(v11, &qword_C21E8, &qword_92258);
}

uint64_t sub_47088()
{
  sub_2714((v0 + qword_C2178));
  sub_2714((v0 + qword_C2180));
  v1 = *(v0 + qword_C2188);
}

uint64_t sub_470D8()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C2178));
  sub_2714((v0 + qword_C2180));
  v1 = *(v0 + qword_C2188);

  return v0;
}

uint64_t sub_47130()
{
  v0 = sub_470D8();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_47168()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_471A8(void *a1)
{
  v1 = [a1 announcementRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_47208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_47250@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v191 = a1;
  v192 = a2;
  v178 = type metadata accessor for HomeCommunicationError(0);
  v5 = sub_6574(v178);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_9378();
  v177 = v8;
  sub_22ACC();
  __chkstk_darwin(v9);
  sub_22B34();
  v176 = v10;
  v11 = sub_2664(&qword_C21F0, &qword_92268);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_9378();
  v182 = v13;
  sub_22ACC();
  __chkstk_darwin(v14);
  sub_22B34();
  v180 = v15;
  v16 = sub_2664(&qword_C05E8, &unk_8ECD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_9378();
  v181 = v18;
  sub_22ACC();
  __chkstk_darwin(v19);
  v179 = &v174 - v20;
  sub_22ACC();
  __chkstk_darwin(v21);
  sub_22B34();
  v184 = v22;
  v190 = sub_8CD3C();
  sub_E6E8();
  v185 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  sub_9378();
  v183 = v27;
  sub_22ACC();
  __chkstk_darwin(v28);
  sub_22B34();
  v186 = v29;
  v30 = sub_8CDDC();
  sub_E6E8();
  v189 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  sub_9378();
  v175 = v35;
  sub_22ACC();
  v37 = __chkstk_darwin(v36);
  v39 = (&v174 - v38);
  __chkstk_darwin(v37);
  v41 = &v174 - v40;
  v42 = sub_8CD8C();
  sub_E6E8();
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v47);
  v49 = (&v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_2664(&qword_C21F8, &unk_92270);
  v51 = sub_6574(v50);
  v53 = *(v52 + 64);
  v54 = __chkstk_darwin(v51);
  v56 = (&v174 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v58 = &v174 - v57;
  v187 = sub_8CDCC();
  v188 = a4;
  v59 = sub_48744();
  sub_6270(v59, v60, 1, v61);
  *v49 = v191;
  (*(v44 + 104))(v49, enum case for RRQuery.usoReference(_:), v42);

  sub_8CBFC();
  (*(v44 + 8))(v49, v42);
  v194 = v58;
  sub_48184(v58, v56);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = *v56;
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v63 = sub_8CD0C();
    sub_22B78(v63, qword_C3DF8);
    swift_errorRetain();
    v64 = sub_8CCEC();
    v65 = sub_8D12C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = sub_1D358();
      v67 = swift_slowAlloc();
      v195 = v62;
      v196[0] = v67;
      *v66 = 136315138;
      swift_errorRetain();
      sub_2664(&qword_BFF30, &unk_8E4E0);
      v68 = sub_8CEEC();
      v70 = sub_862D8(v68, v69, v196);

      *(v66 + 4) = v70;
      sub_48734();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      sub_2714(v67);
      sub_E890();
      sub_E890();
    }

    else
    {
    }

    return sub_1D05C(v194, &qword_C21F8, &unk_92270);
  }

  v76 = v189;
  (*(v189 + 32))(v41, v56, v30);
  v77 = *(v76 + 16);
  v77(v39, v41, v30);
  v78 = (*(v76 + 88))(v39, v30);
  v193 = v30;
  v79 = v41;
  v80 = v39;
  if (v78 == enum case for RRResult.foundMatch(_:))
  {
    v81 = sub_48720();
    v82(v81);
    v84 = v185;
    v83 = v186;
    v85 = v80;
    v86 = v190;
    (*(v185 + 32))(v186, v85, v190);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v87 = v41;
    v88 = sub_8CD0C();
    sub_22B78(v88, qword_C3DF8);
    v89 = v183;
    (*(v84 + 16))(v183, v83, v86);
    v90 = sub_8CCEC();
    v91 = sub_8D11C();
    if (sub_36AE0(v91))
    {
      v92 = v89;
      v93 = sub_1D358();
      v94 = swift_slowAlloc();
      v196[0] = v94;
      *v93 = 136315138;
      sub_48530(&unk_C2208, &type metadata accessor for RRCandidate);
      v95 = sub_8D43C();
      v96 = v87;
      v98 = v97;
      v99 = *(v84 + 8);
      v99(v92, v190);
      v100 = sub_862D8(v95, v98, v196);
      v87 = v96;
      v86 = v190;

      *(v93 + 4) = v100;
      _os_log_impl(&dword_0, v90, v91, "#ReferenceResolution Found a candidate %s", v93, 0xCu);
      sub_2714(v94);
      v83 = v186;
      v76 = v189;
      sub_E890();
      sub_E890();
    }

    else
    {

      v99 = *(v84 + 8);
      v99(v89, v86);
    }

    v121 = v184;
    sub_8CD2C();
    v99(v83, v86);
    (*(v76 + 8))(v87, v193);
    v122 = sub_1D05C(v194, &qword_C21F8, &unk_92270);
    sub_48750(v122, &qword_C05E8, &unk_8ECD0);
    sub_6270(v121, 0, 1, v187);
    v123 = v121;
    return sub_484C0(v123, v90);
  }

  v102 = v190;
  if (v78 == enum case for RRResult.needsDisambiguation(_:))
  {
    v103 = sub_48720();
    v104(v103);
    v90 = *v39;
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v105 = sub_8CD0C();
    sub_22B78(v105, qword_C3DF8);
    v106 = sub_8CCEC();
    v107 = sub_8D11C();
    if (os_log_type_enabled(v106, v107))
    {
      *sub_E8E0() = 0;
      sub_48734();
      _os_log_impl(v108, v109, v110, v111, v112, 2u);
      sub_E890();
    }

    v113 = v182;
    sub_481F4(v90, v182);

    v114 = sub_48744();
    if (sub_3364(v114, v115, v102) == 1)
    {
      v116 = sub_48710();
      v117(v116);
      v118 = sub_1D05C(v194, &qword_C21F8, &unk_92270);
      sub_48750(v118, &qword_C05E8, &unk_8ECD0);
      sub_1D05C(v113, &qword_C21F0, &qword_92268);
      v119 = 1;
      v120 = v181;
LABEL_38:
      sub_6270(v120, v119, 1, v187);
      v123 = v120;
      return sub_484C0(v123, v90);
    }

    v120 = v181;
    goto LABEL_37;
  }

  if (v78 == enum case for RRResult.foundMatchPlural(_:))
  {
    v124 = sub_48720();
    v125(v124);
    v90 = *v39;
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v126 = sub_8CD0C();
    sub_22B78(v126, qword_C3DF8);

    v127 = sub_8CCEC();
    v128 = sub_8D11C();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = sub_1D358();
      *v129 = 134217984;
      *(v129 + 4) = v90[2];

      sub_48734();
      _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
      sub_E890();
    }

    else
    {
    }

    v120 = v179;
    v113 = v180;
    sub_75878(v90, v180);

    v143 = sub_48744();
    if (sub_3364(v143, v144, v102) == 1)
    {
      v145 = sub_48710();
      v146(v145);
      v147 = sub_1D05C(v194, &qword_C21F8, &unk_92270);
      sub_48750(v147, &qword_C05E8, &unk_8ECD0);
      sub_1D05C(v113, &qword_C21F0, &qword_92268);
      v119 = 1;
      goto LABEL_38;
    }

LABEL_37:
    sub_8CD2C();
    v148 = sub_48710();
    v149(v148);
    v150 = sub_1D05C(v194, &qword_C21F8, &unk_92270);
    sub_48750(v150, &qword_C05E8, &unk_8ECD0);
    (*(v185 + 8))(v113, v102);
    v119 = 0;
    goto LABEL_38;
  }

  if (v78 == enum case for RRResult.needsDisambiguationPlural(_:))
  {
    v135 = *(v76 + 8);
    v135(v39, v193);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v136 = sub_8CD0C();
    sub_22B78(v136, qword_C3DF8);
    v137 = sub_8CCEC();
    v138 = sub_8D11C();
    if (sub_36AE0(v138))
    {
      *sub_E8E0() = 0;
      sub_1D144(&dword_0, v139, v140, "#ReferenceResolution Found disambiguationPlural -> return nil");
      sub_E890();
    }

    v141 = v177;
    *v177 = 0xD00000000000002ELL;
    *(v141 + 8) = 0x8000000000097670;
    swift_storeEnumTagMultiPayload();
    v142 = v176;
    sub_15350(v176);
    sub_48464(v141);
    sub_48464(v142);
    v135(v79, v193);
    return sub_1D05C(v194, &qword_C21F8, &unk_92270);
  }

  if (v78 == enum case for RRResult.noMatch(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v151 = sub_8CD0C();
    sub_22B78(v151, qword_C3DF8);
    v152 = sub_8CCEC();
    v153 = sub_8D11C();
    if (sub_36AE0(v153))
    {
      *sub_E8E0() = 0;
      sub_1D144(&dword_0, v154, v155, "#ReferenceResolution No matches found");
      sub_E890();
    }

    v156 = sub_48710();
    v157(v156);
    return sub_1D05C(v194, &qword_C21F8, &unk_92270);
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v158 = sub_8CD0C();
  sub_22B78(v158, qword_C3DF8);
  v159 = v175;
  v77(v175, v41, v193);
  v160 = sub_8CCEC();
  v161 = sub_8D12C();
  if (sub_36AE0(v161))
  {
    v162 = sub_1D358();
    v190 = v162;
    v163 = v159;
    v164 = v76;
    v192 = swift_slowAlloc();
    v196[0] = v192;
    *v162 = 136315138;
    sub_48530(&qword_C2200, &type metadata accessor for RRResult);
    v165 = v193;
    v166 = sub_8D43C();
    v191 = v79;
    v168 = v167;
    v169 = *(v164 + 8);
    v170 = v165;
    v169(v163, v165);
    v171 = sub_862D8(v166, v168, v196);

    v172 = v190;
    *(v190 + 4) = v171;
    _os_log_impl(&dword_0, v160, v161, "#ReferenceResolution Received unknown result type %s", v172, 0xCu);
    sub_2714(v192);
    sub_E890();
    sub_E890();

    v169(v191, v165);
  }

  else
  {

    v169 = *(v76 + 8);
    v173 = v79;
    v170 = v193;
    v169(v159, v193);
    v169(v173, v170);
  }

  sub_1D05C(v194, &qword_C21F8, &unk_92270);
  return (v169)(v80, v170);
}

uint64_t sub_48184(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C21F8, &unk_92270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_481F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2664(&qword_C21F0, &qword_92268);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  sub_75878(a1, &v27 - v6);
  v8 = sub_8CD3C();
  v9 = sub_48744();
  if (sub_3364(v9, v10, v8) == 1)
  {
    sub_1D05C(v7, &qword_C21F0, &qword_92268);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v11 = sub_8CD0C();
    sub_22B78(v11, qword_C3DF8);
    v12 = sub_8CCEC();
    v13 = sub_8D11C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_E8E0();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#ReferenceResolution could not fetch score from the first candidate", v14, 2u);
      sub_E890();
    }

    return sub_6270(a2, 1, 1, v8);
  }

  else
  {
    sub_8CD1C();
    v17 = v16;
    sub_E6E8();
    v19 = v18;
    v21 = (*(v20 + 8))(v7, v8);
    v28 = a1;
    v22 = *(a1 + 16);
    do
    {
      v23 = v22;
      if (!v22)
      {
        break;
      }

      --v22;
      v24 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * (v23 - 1);
      v21 = sub_8CD1C();
    }

    while (v25 != v17);
    __chkstk_darwin(v21);
    *(&v27 - 2) = &v28;
    return sub_48618(sub_486F0, v22, v26, a2);
  }
}

uint64_t sub_48464(uint64_t a1)
{
  v2 = type metadata accessor for HomeCommunicationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_484C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C05E8, &unk_8ECD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_48530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_48578@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_8CD3C();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_48618@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_8CD3C();
    return sub_6270(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_8CD3C();
      return sub_6270(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_48710()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_48720()
{
  v3 = *(v0 + 96);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_48750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 160);

  return sub_1D05C(v5, a2, a3);
}

void *sub_48768()
{
  if (!sub_37EAC())
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v16 = sub_8CD0C();
    sub_33F4(v16, qword_C3DF8);
    v17 = sub_8CCEC();
    v18 = sub_8D11C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#ReferenceResolver couldn't extract UsoTask from Parse", v19, 2u);
      sub_E890();
    }

    return 0;
  }

  sub_8C51C();
  sub_48CF0(v33, v32);
  if (!v32[3])
  {
    goto LABEL_19;
  }

  sub_48CF0(v32, v31);
  sub_8C5BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2714(v31);
LABEL_19:
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v20 = sub_8CD0C();
    sub_33F4(v20, qword_C3DF8);
    v21 = sub_8CCEC();
    v22 = sub_8D12C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#ReferenceResolver Cannot transform UsoTask to task", v23, 2u);
      sub_E890();
    }

    sub_92C0(v33, &qword_C05F0, &unk_8F020);
    v24 = v32;
    goto LABEL_30;
  }

  sub_8C09C();

  sub_2714(v31);
  sub_92C0(v32, &qword_C05F0, &unk_8F020);
  if (!v30)
  {
LABEL_25:
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v25 = sub_8CD0C();
    sub_33F4(v25, qword_C3DF8);
    v26 = sub_8CCEC();
    v27 = sub_8D11C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#ReferenceResolver SRR didn't return an INHomeFilter", v28, 2u);
      sub_E890();
    }

    v24 = v33;
LABEL_30:
    sub_92C0(v24, &qword_C05F0, &unk_8F020);
    return 0;
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);

  v1 = sub_8CCEC();
  v2 = sub_8D11C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32[0] = v4;
    *v3 = 136315138;
    v31[0] = v30;
    sub_8C0CC();

    v5 = sub_8CEEC();
    v7 = sub_862D8(v5, v6, v32);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "#ReferenceResolver entity: %s", v3, 0xCu);
    sub_2714(v4);
    sub_E890();
    sub_E890();
  }

  sub_8C19C();

  sub_34F14();
  v9 = v8;

  if (!v9)
  {

    goto LABEL_25;
  }

  v10 = v9;
  v11 = sub_8CCEC();
  v12 = sub_8D11C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v9;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "#ReferenceResolver SRR selected homeName: %@ as the resolution result", v13, 0xCu);
    sub_92C0(v14, &qword_BFF40, &unk_90F70);
    sub_E890();
    sub_E890();
  }

  sub_92C0(v33, &qword_C05F0, &unk_8F020);
  return v9;
}

uint64_t sub_48CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C05F0, &unk_8F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_48D60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2664(&qword_C0690, &unk_8EBF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_8E860;
  sub_48E48();

  *(v8 + 32) = sub_48F18(a1, a2, a3, a4);
  v9 = [objc_allocWithZone(SASTItemGroup) init];
  sub_49088(v8, v9, &qword_C2280, &qword_92280, &selRef_setTemplateItems_);
  return v9;
}

unint64_t sub_48E48()
{
  result = qword_C2218;
  if (!qword_C2218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2218);
  }

  return result;
}

id sub_48E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_49024(a1, a2, v6);
  sub_49088(a3, v6, &qword_C2288, &qword_92288, &selRef_setCommands_);

  return v6;
}

id sub_48F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setCentered:a4 & 1];
  v9 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_49088(a3, v9, &qword_C2288, &qword_92288, &selRef_setCommands_);
  [v8 setAction:v9];

  v10 = [objc_allocWithZone(SAUIDecoratedText) init];
  sub_49024(a1, a2, v10);
  [v8 setDecoratedLabel:v10];

  return v8;
}

void sub_49024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setText:v4];
}

void sub_49088(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_2664(a3, a4);
  isa = sub_8D03C().super.isa;

  [a2 *a5];
}

id sub_49108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_37C8(a1, a2, v14, &selRef_setLabel_);
  sub_37C8(a3, a4, v14, &selRef_setType_);
  sub_37C8(a5, a6, v14, &selRef_setIconType_);
  sub_49450(a7, v14);

  return v14;
}

id sub_491D8()
{
  v4 = [objc_allocWithZone(sub_49624()) init];
  v5 = sub_494D0(v0);
  if (v5)
  {
    sub_2664(&qword_C2288, &qword_92288);
    sub_8D03C();
    v5 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v5, "setConfirmCommands:");

  v6 = sub_494D0(v1);
  if (v6)
  {
    sub_2664(&qword_C2288, &qword_92288);
    sub_8D03C();
    v6 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v6, "setDenyCommands:");

  v7 = sub_6348(v2, &selRef_type);
  if (v8)
  {
    sub_8CEAC();
    v7 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v7, "setCancelTrigger:");

  v9 = sub_6348(v0, &selRef_label);
  if (v10)
  {
    sub_8CEAC();
    v9 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v9, "setConfirmText:");

  v11 = sub_6348(v1, &selRef_label);
  if (v12)
  {
    sub_8CEAC();
    v11 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v11, "setDenyText:");

  sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_92290;
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  *(v13 + 48) = v0;
  v14 = v2;
  v15 = v1;
  v16 = v0;
  sub_4953C(v13, v4);

  return v4;
}

id sub_493D4()
{
  v3 = [objc_allocWithZone(sub_49624()) init];
  sub_37C8(v2, v1, v3, &selRef_setAnnouncerName_);
  [v3 setConfirmationOptions:v0];

  return v3;
}

void sub_49450(uint64_t a1, void *a2)
{
  sub_2664(&qword_C2288, &qword_92288);
  isa = sub_8D03C().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_494D0(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2664(&qword_C2288, &qword_92288);
  v3 = sub_8D04C();

  return v3;
}

void sub_4953C(uint64_t a1, void *a2)
{
  sub_495B0();
  isa = sub_8D03C().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_495B0()
{
  result = qword_C2290;
  if (!qword_C2290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2290);
  }

  return result;
}

id sub_495F4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_4960C()
{
}

uint64_t sub_49624()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t type metadata accessor for SendAnnouncementAceViewProvider()
{
  result = qword_C22B0;
  if (!qword_C22B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_496E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for SignpostLog.Signpost();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v12 = qword_C0EE8;
  sub_8CCCC();
  sub_8D16C();
  sub_8CCBC();
  v13 = &v11[*(v6 + 20)];
  *v13 = "IdiomSensitiveViewBuilder";
  *(v13 + 1) = 25;
  v13[16] = 2;
  sub_4A270(v11, v9);
  v14 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v15 = swift_allocObject();
  sub_4A3B8(v9, v15 + v14);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v25;
  v16[1] = a3;
  v17 = v4[7];
  sub_622C(v4 + 3, v4[6]);

  if (sub_8B62C())
  {
    sub_11A5C(v26, sub_4A41C, v15);
  }

  else
  {
    v18 = v4[7];
    sub_622C(v4 + 3, v4[6]);
    if (sub_8B64C())
    {
      sub_11CD8();
    }

    else
    {
      v19 = v4[7];
      sub_622C(v4 + 3, v4[6]);
      if (sub_8B65C())
      {
        sub_11CF8();
      }

      else
      {
        v20 = v4[7];
        sub_622C(v4 + 3, v4[6]);
        if (sub_8B61C() & 1) != 0 || (v21 = v4[7], sub_622C(v4 + 3, v4[6]), (sub_8B60C()))
        {
          sub_11EA0(v26, sub_4A41C, v15);
        }

        else
        {
          sub_122C8(v26, sub_4A41C, v15);
        }
      }
    }
  }

  return sub_4A4CC(v11);
}

uint64_t sub_49A48(uint64_t a1, uint64_t *a2)
{
  *(v2 + qword_C22A0) = a1;
  sub_E528(a2, v2 + qword_C22A8);
  v4 = sub_8BB3C();
  sub_2714(a2);
  return v4;
}

uint64_t sub_49A9C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v7 = sub_8CCEC();
  v8 = sub_8D11C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Making a SAIntentGroupHandleIntent that contains INPlayAnnouncementSoundIntent.", v9, 2u);
  }

  v10 = [objc_allocWithZone(INPlayAnnouncementSoundIntent) initWithSoundType:1];
  v11 = [a2 _metadata];
  [v10 _setMetadata:v11];

  sub_4A528();
  v12 = sub_8CA7C();
  v14 = sub_349C(v10, v12, v13);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_8E860;
  *(v15 + 32) = v14;
  v16 = v14;
  a4(v15, 0);
}

uint64_t sub_49C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Making a LaunchApp button.", v16, 2u);
  }

  sub_117E4(*(v8 + qword_C22A0), a4, (v8 + qword_C22A8), v18);
  sub_622C(v18, v18[3]);
  sub_496E8(a5, a6, a7);
  return sub_2714(v18);
}

uint64_t sub_49DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v26 = a8;
  v9 = sub_8BE4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v25 = a9;
  v14 = sub_8CD0C();
  sub_33F4(v14, qword_C3DF8);
  v15 = sub_8CCEC();
  v16 = sub_8D11C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Building disambiguation snippet", v17, 2u);
  }

  sub_8B46C();
  sub_8B41C();
  sub_8B43C();

  sub_4A56C();
  if (sub_8B64C())
  {
    sub_8B4BC();
    v18 = sub_8B55C();

    sub_8B44C();

LABEL_9:

    goto LABEL_10;
  }

  sub_4A56C();
  if (sub_8B61C())
  {
    sub_8B4BC();
    (*(v10 + 104))(v13, enum case for ImageSize.original(_:), v9);
    v19 = sub_8B56C();

    (*(v10 + 8))(v13, v9);
    v20 = sub_8CEDC();
    sub_4A20C(v20, v21, v19);
    v22 = [objc_allocWithZone(SAUISash) init];
    v23 = sub_8CEAC();
    [v22 setApplicationBundleIdentifier:v23];

    [v19 setSash:v22];
    sub_8B42C();

    goto LABEL_9;
  }

LABEL_10:
  sub_8B45C();
  v26();
}

uint64_t sub_4A14C()
{
  v1 = *(v0 + qword_C22A0);

  v2 = (v0 + qword_C22A8);

  return sub_2714(v2);
}

uint64_t sub_4A18C()
{
  v0 = sub_8BB5C();
  v1 = *(v0 + qword_C22A0);

  sub_2714((v0 + qword_C22A8));
  return v0;
}

uint64_t sub_4A1D4()
{
  v0 = sub_4A18C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void sub_4A20C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setItemType:v4];
}

uint64_t sub_4A270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostLog.Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A2D4()
{
  v1 = *(type metadata accessor for SignpostLog.Signpost() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_8CCDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_4A3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostLog.Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_4A41C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for SignpostLog.Signpost() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_2BCD0(a1, a2 & 1, v2 + v6, v8);
}

uint64_t sub_4A4CC(uint64_t a1)
{
  v2 = type metadata accessor for SignpostLog.Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4A528()
{
  result = qword_C2300;
  if (!qword_C2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2300);
  }

  return result;
}

uint64_t sub_4A56C()
{
  v1 = v0[3];
  sub_622C(v0, v1);
  return v1;
}

uint64_t sub_4A598(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_8B6BC() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_8BCBC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_4A684, 0, 0);
}

uint64_t sub_4A684()
{
  v1 = *(*(v0 + 32) + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_4A718;

  return sub_4D304();
}

uint64_t sub_4A718(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;

  if (v1)
  {
    v8 = v4[8];
    v9 = v4[5];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[10] = a1;

    return _swift_task_switch(sub_4A870, 0, 0);
  }
}

uint64_t sub_4A870()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = sub_8B8FC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_8B8EC();
  v0[11] = v7;
  v0[2] = v7;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = xmmword_8E860;
  *(v8 + 32) = v1;
  v9 = v1;
  sub_8B6AC();
  sub_8BC3C();
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_4A9CC;
  v12 = v0[8];
  v13 = v0[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v8, v12, v4, &protocol witness table for ResponseFactory);
}

uint64_t sub_4A9CC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *v0;
  sub_E6F8();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_4AB38, 0, 0);
}

uint64_t sub_4AB38()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_4ABC4()
{
  sub_2714((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_4AC28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D7E4;

  return sub_4A598(a1);
}

uint64_t type metadata accessor for SendAnnouncementCATs()
{
  result = qword_C23B8;
  if (!qword_C23B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4AD50(unint64_t a1, unsigned __int8 a2)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  v5 = sub_4BB0C(v4, xmmword_8FAD0);
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = 0xE600000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  v4[3].n128_u64[0] = a1;
  v4[4].n128_u64[1] = v7;
  strcpy(&v4[5], "isHomeTarget");
  v4[5].n128_u8[13] = 0;
  v4[5].n128_u16[7] = -5120;
  v4[7].n128_u64[1] = &type metadata for Bool;
  v4[6].n128_u8[0] = a2;

  sub_4BB74();
}

uint64_t sub_4AE54(unint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = swift_allocObject();
  v7 = sub_4BB0C(v6, xmmword_8FAC0);
  v7[2].n128_u64[0] = v8;
  v7[2].n128_u64[1] = 0xE600000000000000;
  v9 = sub_2664(&qword_C2408, &unk_92390);
  v6[3].n128_u64[0] = a1;
  v6[4].n128_u64[1] = v9;
  v6[5].n128_u64[0] = 0x656D614E656D6F68;
  v6[5].n128_u64[1] = 0xE900000000000073;
  v6[6].n128_u64[0] = a2;
  v6[7].n128_u64[1] = v9;
  v6[8].n128_u64[0] = 0x656369766564;
  v6[8].n128_u64[1] = 0xE600000000000000;
  if (a3)
  {
    v10 = sub_8C9FC();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;

  sub_4BB74();
}

uint64_t sub_4B00C()
{
  sub_115EC();
  sub_2664(&qword_C1CE8, &unk_91960);
  v0 = sub_4BB8C();
  v1 = sub_4BB0C(v0, xmmword_8E3F0);
  v1[2].n128_u64[0] = v2 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v1[2].n128_u64[1] = 0xE700000000000000;
  v3 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v3);
  sub_4BB20();
}

uint64_t sub_4B0E0()
{
  sub_115EC();
  sub_2664(&qword_C1CE8, &unk_91960);
  v0 = sub_4BB8C();
  sub_4BB58(v0, "announcementRecipients", xmmword_8E3F0);
  v1 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v1);
  sub_4BB20();
}

uint64_t sub_4B18C()
{
  sub_115EC();
  sub_2664(&qword_C1CE8, &unk_91960);
  v0 = sub_4BB8C();
  sub_4BB58(v0, "announcementRecipients", xmmword_8E3F0);
  v1 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v1);
  sub_4BB20();
}

uint64_t sub_4B2B0(uint64_t a1, char a2, char a3)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8FAC0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000000097950;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x6970696365527369;
  *(v6 + 88) = 0xEF656D6F48746E65;
  *(v6 + 96) = a2;
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0x796C7065527369;
  *(v6 + 136) = 0xE700000000000000;
  *(v6 + 168) = &type metadata for Bool;
  *(v6 + 144) = a3;

  sub_4BB74();
}

uint64_t sub_4B3F4(uint64_t a1)
{
  v2 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = sub_4BB8C();
  *(v6 + 16) = xmmword_8E3F0;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_4BA4C(a1, v5, &qword_C1CE0, &unk_91EC0);
  v7 = sub_8C99C();
  if (sub_3364(v5, 1, v7) == 1)
  {
    sub_4BAB0(v5, &qword_C1CE0, &unk_91EC0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_E5DC((v6 + 48));
    sub_4BBA4(v7);
    (*(v8 + 32))();
  }

  sub_4BB74();
}

uint64_t sub_4B5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  sub_2664(&qword_C1CE8, &unk_91960);
  v8 = swift_allocObject();
  v9 = sub_4BB0C(v8, xmmword_8FAD0);
  v9[2].n128_u64[0] = v10;
  v9[2].n128_u64[1] = 0xE600000000000000;
  sub_4BA4C(a1, v7, &qword_C1CE0, &unk_91EC0);
  v11 = sub_8C99C();
  if (sub_3364(v7, 1, v11) == 1)
  {
    sub_4BAB0(v7, &qword_C1CE0, &unk_91EC0);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v11;
    sub_E5DC((v8 + 48));
    sub_4BBA4(v11);
    (*(v12 + 32))();
  }

  *(v8 + 80) = 0x656369766564;
  *(v8 + 88) = 0xE600000000000000;
  if (a2)
  {
    v13 = sub_8C9FC();
    v14 = a2;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v14;
  *(v8 + 120) = v13;

  sub_4BB20();
}

uint64_t sub_4B7B0()
{
  sub_115EC();
  sub_2664(&qword_C1CE8, &unk_91960);
  v0 = sub_4BB8C();
  *(v0 + 16) = xmmword_8E3F0;
  *(v0 + 32) = 0x67726154656D6F68;
  *(v0 + 40) = 0xEA00000000007465;
  v1 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v1);
  sub_4BB20();
}

uint64_t sub_4B86C()
{
  sub_115EC();
  v3 = *(v0 + 48);
  v4 = *(v0 + 52);
  swift_allocObject();
  return sub_4B8B8(v2, v1);
}

uint64_t sub_4B8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_4BA4C(a1, &v14 - v11, &qword_BFF28, &unk_8EFD0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_4BAB0(a1, &qword_BFF28, &unk_8EFD0);
  return v12;
}

uint64_t sub_4BA4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2664(a3, a4);
  sub_4BBA4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4BAB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2664(a2, a3);
  sub_4BBA4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_4BB20()
{

  return sub_8C91C();
}

uint64_t sub_4BB3C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

__n128 *sub_4BB58@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000016;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_4BB74()
{

  return sub_8C91C();
}

uint64_t sub_4BB8C()
{

  return swift_allocObject();
}

uint64_t type metadata accessor for SendAnnouncementCATsSimple()
{
  result = qword_C2410;
  if (!qword_C2410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_4DF34();
}

uint64_t sub_4BC54()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  v0[6] = v4;
  v5 = sub_4BB0C(v4, xmmword_8FAC0);
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = 0xE600000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  v4[3].n128_u64[0] = v3;
  v4[4].n128_u64[1] = v7;
  v4[5].n128_u64[0] = 0x656D614E656D6F68;
  v4[5].n128_u64[1] = 0xE900000000000073;
  v4[6].n128_u64[0] = v2;
  v4[7].n128_u64[1] = v7;
  v4[8].n128_u64[0] = 0x656369766564;
  v4[8].n128_u64[1] = 0xE600000000000000;
  v8 = 0;
  if (v1)
  {
    v8 = sub_8C9FC();
  }

  else
  {
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  v4[9].n128_u64[0] = v1;
  v4[10].n128_u64[1] = v8;
  v9 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_4BDF4;
  v11 = v0[5];

  return v13(0xD000000000000026, 0x8000000000097BE0, v4);
}

uint64_t sub_4BDF4()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = sub_4DF44();

    return v14(v13);
  }
}

uint64_t sub_4BF1C()
{
  sub_6608();
  v1 = *(v0 + 48);

  sub_65A0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_4BF78()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(49);

  return v4(v3);
}

uint64_t sub_4C01C()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(39);

  return v4(v3);
}

uint64_t sub_4C0C0()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(66);

  return v4(v3);
}

uint64_t sub_4C164()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(61);

  return v4(v3);
}

uint64_t sub_4C208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C21C()
{
  sub_4DFB4();
  v2 = *(v1 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = sub_4BB8C();
  v4 = sub_4DFFC(v3);
  v5 = sub_4BB0C(v4, xmmword_8E3F0);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v5[2].n128_u64[1] = 0xE700000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v7);
  v10 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v8 = swift_task_alloc();
  *(v1 + 40) = v8;
  *v8 = v1;
  sub_4DFD0(v8);

  return (v10)(0xD000000000000041, 0x8000000000097AD0, v0);
}

uint64_t sub_4C334()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_4DF44();

    return v14(v13);
  }
}

uint64_t sub_4C45C()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(61);

  return v4(v3);
}

uint64_t sub_4C500(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C514()
{
  sub_4DFB4();
  v1 = *(v0 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = sub_4BB8C();
  v3 = sub_4DFFC(v2);
  sub_4DF98(v3, "announcementRecipients", xmmword_8E3F0);
  v4 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v4);
  sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v6 = sub_4DFC0(v5);
  *v6 = v7;
  sub_4DFD0(v6);
  sub_4DFDC();

  return v8();
}

uint64_t sub_4C618(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C62C()
{
  sub_4DFB4();
  v1 = *(v0 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = sub_4BB8C();
  v3 = sub_4DFFC(v2);
  sub_4DF98(v3, "announcementRecipients", xmmword_8E3F0);
  v4 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v4);
  sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v6 = sub_4DFC0(v5);
  *v6 = v7;
  sub_4DFD0(v6);
  sub_4DFDC();

  return v8();
}

uint64_t sub_4C730()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(52);

  return v4(v3);
}

uint64_t sub_4C7D4()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(57);

  return v4(v3);
}

uint64_t sub_4C878()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(29);

  return v4(v3);
}

uint64_t sub_4C91C(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return sub_4DF34();
}

uint64_t sub_4C938()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_8FAC0;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x8000000000097950;
  v5 = sub_2664(&qword_C2408, &unk_92390);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x6970696365527369;
  *(v4 + 88) = 0xEF656D6F48746E65;
  *(v4 + 96) = v2;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x796C7065527369;
  *(v4 + 136) = 0xE700000000000000;
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v1;
  v10 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = sub_4DFC0(v6);
  *v7 = v8;
  sub_4DFD0(v7);

  return (v10)(0xD000000000000026, 0x8000000000097920, v4);
}

uint64_t sub_4CAD0()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_4DF44();

    return v14(v13);
  }
}

uint64_t sub_4CBF8()
{
  sub_6608();
  v1 = *(v0 + 32);

  sub_65A0();
  v3 = *(v0 + 48);

  return v2();
}

BOOL sub_4CC54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8970;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  return v4 != 0;
}

BOOL sub_4CCA8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4CC54(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_4CCF8()
{
  sub_6608();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_2664(&qword_C1CE0, &unk_91EC0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_4CD8C()
{
  sub_4DFB4();
  v1 = v0[4];
  v2 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = sub_4BB8C();
  v0[5] = v3;
  *(v3 + 16) = xmmword_8E3F0;
  *(v3 + 32) = 0x656D614E707061;
  *(v3 + 40) = 0xE700000000000000;
  sub_4BA4C(v2, v1, &qword_C1CE0, &unk_91EC0);
  v4 = sub_8C99C();
  v5 = sub_4E01C(v4);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_4BAB0(v0[4], &qword_C1CE0, &unk_91EC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_E5DC((v3 + 48));
    sub_4BBA4(v2);
    (*(v7 + 32))();
  }

  v8 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v0[6] = v8;
  v9 = sub_4DDAC();
  *v8 = v0;
  v8[1] = sub_4CF34;
  v10 = v0[3];

  return v12(0xD00000000000001CLL, 0x8000000000097900, v3, &type metadata for SendAnnouncementCATsSimple.OpenHomeAppDialogIds, v9);
}

uint64_t sub_4CF34()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_4E008();

    return v15(v14);
  }
}

uint64_t sub_4D064()
{
  sub_6608();
  v2 = v0[4];
  v1 = v0[5];

  sub_65A0();
  v4 = v0[7];

  return v3();
}

uint64_t sub_4D0C8()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(38);

  return v4(v3);
}

uint64_t sub_4D16C()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4D210;
  sub_3C574();
  v3 = sub_3C58C(63);

  return v4(v3);
}

uint64_t sub_4D210()
{
  sub_6608();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_4D304()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(44);

  return v4(v3);
}

uint64_t sub_4D3A8()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(42);

  return v4(v3);
}

uint64_t sub_4D44C()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(36);

  return v4(v3);
}

uint64_t sub_4D4F0()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_2664(&qword_C1CE0, &unk_91EC0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_4D588()
{
  sub_4DFB4();
  v1 = v0[5];
  v2 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = swift_allocObject();
  v0[6] = v3;
  v4 = sub_4BB0C(v3, xmmword_8FAD0);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE600000000000000;
  sub_4BA4C(v2, v1, &qword_C1CE0, &unk_91EC0);
  v6 = sub_8C99C();
  v7 = sub_4E01C(v6);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_4BAB0(v0[5], &qword_C1CE0, &unk_91EC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_E5DC((v3 + 48));
    sub_4BBA4(v2);
    (*(v9 + 32))();
  }

  v10 = v0[3];
  *(v3 + 80) = 0x656369766564;
  *(v3 + 88) = 0xE600000000000000;
  v11 = 0;
  if (v10)
  {
    v11 = sub_8C9FC();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v10;
  *(v3 + 120) = v11;
  v15 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_4D760;
  v13 = v0[4];

  return (v15)(0xD000000000000036, 0x8000000000097850, v3);
}

uint64_t sub_4D760()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = sub_4E008();

    return v15(v14);
  }
}

uint64_t sub_4D890()
{
  sub_6608();
  v2 = v0[5];
  v1 = v0[6];

  sub_65A0();
  v4 = v0[8];

  return v3();
}

uint64_t sub_4D8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4D908()
{
  sub_4DFB4();
  v2 = *(v1 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = sub_4BB8C();
  v4 = sub_4DFFC(v3);
  *(v4 + 16) = xmmword_8E3F0;
  *(v4 + 32) = 0x67726154656D6F68;
  *(v4 + 40) = 0xEA00000000007465;
  v5 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v5);
  v8 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  sub_4DFD0(v6);

  return (v8)(0xD000000000000033, 0x8000000000097810, v0);
}

uint64_t sub_4DA30()
{
  sub_152A0();
  v0 = sub_3C554(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(46);

  return v4(v3);
}

uint64_t sub_4DAD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_4DB28(a1, a2);
}

uint64_t sub_4DB28(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_4BA4C(a1, &v18 - v15, &qword_BFF28, &unk_8EFD0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_4BAB0(a1, &qword_BFF28, &unk_8EFD0);
  return v16;
}

uint64_t sub_4DCA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_8CA2C();
  v6 = sub_13DCC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_8C9BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

unint64_t sub_4DDAC()
{
  result = qword_C2460;
  if (!qword_C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2460);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementCATsSimple.OpenHomeAppDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x4DE9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_4DED8()
{
  result = qword_C2468;
  if (!qword_C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2468);
  }

  return result;
}

__n128 *sub_4DF98@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000016;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_4DFD0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_4DFF0(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_4E01C(uint64_t a1)
{

  return sub_3364(v1, 1, a1);
}

uint64_t sub_4E03C(char a1)
{
  v14[3] = &unk_B9EC8;
  v14[4] = sub_565D0();
  LOBYTE(v14[0]) = a1 & 1;
  v2 = sub_8BE5C();
  sub_2714(v14);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v3 = sub_8CD0C();
  sub_33F4(v3, qword_C3DF8);
  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v6 = 136315650;
    v7 = sub_8D26C();
    v9 = sub_862D8(v7, v8, v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_8D26C();
    v12 = sub_862D8(v10, v11, v14);

    *(v6 + 14) = v12;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v2 & 1;
    _os_log_impl(&dword_0, v4, v5, "%s/%s=%{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
    sub_E890();
    sub_E890();
  }

  return v2 & 1;
}

uint64_t sub_4E218()
{
  v12[3] = &unk_B9F78;
  v12[4] = sub_55E7C();
  v0 = sub_8BE5C();
  sub_2714(v12);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v4 = 136315650;
    v5 = sub_8D26C();
    v7 = sub_862D8(v5, v6, v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = sub_8D26C();
    v10 = sub_862D8(v8, v9, v12);

    *(v4 + 14) = v10;
    *(v4 + 22) = 1024;
    *(v4 + 24) = v0 & 1;
    _os_log_impl(&dword_0, v2, v3, "%s/%s=%{BOOL}d", v4, 0x1Cu);
    swift_arrayDestroy();
  }

  return v0 & 1;
}

uint64_t sub_4E3F0(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(void), uint32_t *p_ivar_base_size)
{
  v12 = sub_2664(&qword_C1058, &unk_8FCA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v73 = &v68 - v14;
  v15 = sub_8B8CC();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  v17 = __chkstk_darwin(v15);
  v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v68 - v19;
  if (qword_BF818 != -1)
  {
LABEL_36:
    swift_once();
  }

  v21 = sub_8CD0C();
  v75 = sub_33F4(v21, qword_C3DF8);
  v22 = sub_8CCEC();
  v23 = sub_8D11C();
  v24 = os_log_type_enabled(v22, v23);
  v76 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v22, v23, "#HomeCommunicationNLContextProvider makeNeedsDisambiguationContextFor called", v25, 2u);
  }

  if (sub_2670C(a2, a3) == 1)
  {
    sub_8B8BC();
    sub_1E508(0);
    sub_8B87C();
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v26 = swift_allocObject();
    v74 = xmmword_8E3F0;
    *(v26 + 16) = xmmword_8E3F0;
    v79 = sub_8CF0C();
    v80 = v27;
    v77 = 32;
    v78 = 0xE100000000000000;
    v81 = 95;
    v82 = 0xE100000000000000;
    sub_10C68();
    a1 = sub_8D1FC();

    v79 = sub_1E508(3);
    v80 = v28;
    v84._countAndFlagsBits = 0x2E65756C61562ELL;
    v84._object = 0xE700000000000000;
    sub_8CF7C(v84);
    v85._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v85);

    v20 = v76;

    v29 = v80;
    *(v26 + 32) = v79;
    *(v26 + 40) = v29;
    sub_8B89C();
    v30 = sub_2D8DC();
    a4 = sub_6C594(v30);

    if (a4)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v74;
      *(v31 + 32) = sub_1E508(5);
      *(v31 + 40) = v32;
      sub_8B8AC();
      sub_8B84C();

      a3 = sub_8CCEC();
      v33 = sub_8D11C();

      v34 = os_log_type_enabled(a3, v33);
      v69 = a5;
      v70 = p_ivar_base_size;
      v68 = v15;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v79 = v36;
        *v35 = 136315138;
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        v37 = sub_8D05C();
        a1 = v38;
        v39 = sub_862D8(v37, v38, &v79);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_0, a3, v33, "#HomeCommunicationNLContextProvider makeDisambiguationSDAForFilters for homes: %s", v35, 0xCu);
        sub_2714(v36);
        v20 = v76;
      }

      v40 = sub_2D3B4(a4);
      a2 = 0;
      v15 = a4 & 0xC000000000000001;
      a5 = (a4 & 0xFFFFFFFFFFFFFF8);
      *&v74 = _swiftEmptyArrayStorage;
      p_ivar_base_size = &SKFlowFactory.ivar_base_size;
      while (v40 != a2)
      {
        if (v15)
        {
          v41 = sub_8D27C();
        }

        else
        {
          if (a2 >= *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_35;
          }

          v41 = *(a4 + 8 * a2 + 32);
        }

        v42 = v41;
        a3 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v43 = [v41 home];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 spokenPhrase];

          v46 = sub_8CEDC();
          a1 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v74 = sub_75D80(0, *(v74 + 16) + 1, 1, v74);
          }

          v49 = *(v74 + 16);
          v48 = *(v74 + 24);
          if (v49 >= v48 >> 1)
          {
            *&v74 = sub_75D80((v48 > 1), v49 + 1, 1, v74);
          }

          v50 = v74;
          *(v74 + 16) = v49 + 1;
          v51 = v50 + 16 * v49;
          *(v51 + 32) = v46;
          *(v51 + 40) = a1;
          a2 = a3;
          v20 = v76;
        }

        else
        {

          ++a2;
        }
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      v57 = qword_C3DB0;

      v58 = v74;
      sub_55FD8(v74, v57);

      sub_8B82C();
      sub_50378(a4);

      sub_8B81C();
      sub_4ED38(v58);

      sub_8B83C();
      a5 = v69;
      v15 = v68;
    }

    v59 = sub_8CCEC();
    v60 = sub_8D11C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v79 = v62;
      *v61 = 136315138;
      swift_beginAccess();
      v63 = v72;
      (*(v72 + 16))(v71, v20, v15);
      v64 = sub_8CEEC();
      v66 = sub_862D8(v64, v65, &v79);
      v20 = v76;

      *(v61 + 4) = v66;
      _os_log_impl(&dword_0, v59, v60, "#HomeCommunicationNLContextProvider nlContext: %s", v61, 0xCu);
      sub_2714(v62);
    }

    else
    {

      v63 = v72;
    }

    v67 = v73;
    swift_beginAccess();
    (*(v63 + 16))(v67, v20, v15);
    sub_6270(v67, 0, 1, v15);
    a5(v67);
    sub_1D05C(v67, &qword_C1058, &unk_8FCA0);
    return (*(v63 + 8))(v20, v15);
  }

  else
  {
    v52 = sub_8CCEC();
    v53 = sub_8D12C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "Incorrect slot presented for disambiguation", v54, 2u);
    }

    sub_2664(&qword_C2608, &unk_92760);
    v55 = sub_8BC1C();

    return v55(a1, a2, a3, a4, a5, p_ivar_base_size);
  }
}

uint64_t sub_4ED38(uint64_t a1)
{
  v2 = sub_8BE7C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v132 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_8BF9C();
  v5 = *(v131 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v131);
  v124 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v134 = &v96 - v9;
  v133 = sub_8BF1C();
  v10 = *(v133 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v133);
  v130 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v96 - v14;
  v102 = sub_8BFDC();
  v101 = *(v102 - 8);
  v16 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_8C00C();
  v98 = *(v99 - 8);
  v18 = *(v98 + 64);
  v19 = __chkstk_darwin(v99);
  v96 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = &v96 - v21;
  v114 = sub_8C15C();
  v22 = *(v114 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v114);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2664(&qword_C1090, &unk_92770);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v121 = &v96 - v28;
  v120 = sub_8C2DC();
  v29 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v119 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v118 = (v32 + 104);
  v117 = (v32 + 8);
  v112 = (v22 + 8);
  v137 = _swiftEmptyArrayStorage;
  v123 = (v5 + 16);
  v109 = (v10 + 16);
  v33 = *(a1 + 16);
  v108 = v10 + 32;
  v111 = (v10 + 8);
  v116 = enum case for IdentifierValue.vHomeAutomationHome(_:);
  v113 = (v5 + 8);
  v34 = (a1 + 40);
  *(&v35 + 1) = 3;
  v115 = xmmword_8E860;
  *&v35 = 136315138;
  v104 = v35;
  v135 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v103 = v10;
  v110 = v25;
  if (v33)
  {
    while (1)
    {
      v128 = v34;
      v129 = v33;
      v37 = *(v34 - 1);
      v36 = *v34;
      v38 = sub_8C10C();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();

      v41 = sub_8C0FC();
      v42 = v119;
      v43 = v120;
      (*v118)(v119, v116, v120);
      sub_4FB38(v41, v37, v36, v42);

      v44 = v42;
      v45 = v41;
      (*v117)(v44, v43);
      v46 = sub_8C6AC();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      v49 = sub_8C69C();

      sub_8C0DC();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v50 = swift_allocObject();
      *(v50 + 16) = v115;
      *(v50 + 32) = v49;
      v51 = sub_8C3FC();
      v52 = v121;
      sub_6270(v121, 1, 1, v51);

      v53 = sub_8C3AC();

      sub_1D05C(v52, &qword_C1090, &unk_92770);
      sub_8C6FC();
      if (v31)
      {
        break;
      }

      sub_ADE4(0, &qword_C10A0, USOSerializedGraph_ptr);
      v54 = sub_8D14C();
      (*v112)(v25, v114);
      v55 = objc_allocWithZone(SIRINLUUserStatedTask);
      v127 = v54;
      v56 = [v55 initWithTask:v54];
      sub_8D02C();
      if (*(&dword_10 + (v137 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v137 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8D06C();
      }

      v126 = v56;
      sub_8D08C();
      v122 = v137;
      sub_8BF0C();
      sub_8BF8C();
      sub_8C05C();
      v125 = v53;
      v57 = v134;
      swift_beginAccess();
      sub_8BF7C();
      swift_endAccess();
      v58 = *v123;
      (*v123)(v124, v57, v131);
      sub_8BEFC();
      (*v109)(v130, v15, v133);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = v135[2];
        sub_762D0();
        v135 = v77;
      }

      v59 = v135[2];
      if (v59 >= v135[3] >> 1)
      {
        sub_762D0();
        v135 = v78;
      }

      v60 = v135;
      v135[2] = v59 + 1;
      (*(v10 + 32))(v60 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v59, v130, v133);
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v61 = sub_8CD0C();
      sub_33F4(v61, qword_C3DF8);
      v62 = sub_8CCEC();
      v63 = sub_8D11C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v106 = v45;
        v65 = v64;
        v66 = swift_slowAlloc();
        v136[0] = v66;
        *v65 = v104;
        v105 = v49;
        v67 = v124;
        v68 = v134;
        v69 = v131;
        v58(v124, v134, v131);
        v70 = sub_69A10(v67);
        v107 = 0;
        v72 = sub_862D8(v70, v71, v136);
        v73 = v68;
        v74 = v133;
        v31 = v107;

        *(v65 + 4) = v72;
        _os_log_impl(&dword_0, v62, v63, "#HomeCommunicationNLContextProvider Building UserStatedTask for disambiguating between homes: %s", v65, 0xCu);
        sub_2714(v66);

        (*v111)(v15, v74);
        v75 = v69;
        v10 = v103;
        (*v113)(v73, v75);
      }

      else
      {

        (*v111)(v15, v133);
        (*v113)(v134, v131);
      }

      v25 = v110;
      v34 = v128 + 2;
      v33 = v129 - 1;
      if (v129 == 1)
      {
        goto LABEL_15;
      }
    }

    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v79 = sub_8CD0C();
    sub_33F4(v79, qword_C3DF8);
    swift_errorRetain();
    v80 = sub_8CCEC();
    v81 = sub_8D12C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v136[0] = v83;
      *v82 = v104;
      v136[3] = v31;
      swift_errorRetain();
      sub_2664(&qword_BFF30, &unk_8E4E0);
      v84 = sub_8CEEC();
      v86 = sub_862D8(v84, v85, v136);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_0, v80, v81, "#HomeCommunicationNLContextProvider Error building system dialog act for disambiguation: %s", v82, 0xCu);
      sub_2714(v83);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }

  v87 = v97;
  sub_8BFFC();
  sub_8BFEC();
  v88 = v100;
  sub_8BFCC();
  v89 = v98;
  v90 = v99;
  (*(v98 + 16))(v96, v87, v99);
  sub_8BFAC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v91 = v101;
  v92 = *(v101 + 72);
  v93 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_8E3F0;
  (*(v91 + 32))(v94 + v93, v88, v102);
  (*(v89 + 8))(v87, v90);
  return v94;
}

void sub_4FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v5 = sub_2664(&qword_C1088, &qword_8FCC8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v47 - v7;
  v9 = sub_2664(&qword_C0008, &qword_8FCD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = v47 - v11;
  v12 = sub_8C2DC();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v62 = (v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_8C48C();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v15);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_8C46C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_8C29C();
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = *(v58 + 64);
  v26 = __chkstk_darwin(v24);
  v55 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v54 = v47 - v28;
  v60 = a2;
  sub_8C0EC();
  sub_8C53C();
  v29 = sub_8C3CC();
  if (v29 && (v30 = sub_50190(v29), , v30))
  {
    v50 = enum case for IdentifierAppBundle.abHomeKit(_:);
    v51 = v8;
    v49 = *(v20 + 104);
    v49(v23);

    v31 = sub_8C45C();
    v47[1] = v32;
    v47[2] = v31;
    (*(v20 + 8))(v23, v19);
    v33 = v53;
    v47[0] = v30;
    v48 = *(v53 + 104);
    v48(v18, enum case for IdentifierNamespace.nsSemanticValue(_:), v15);
    sub_8C47C();
    (*(v33 + 8))(v18, v15);
    v34 = v54;
    sub_8C26C();
    sub_8C17C();
    (*(v56 + 16))(v62, v61, v57);
    (v49)(v23, v50, v19);
    v35 = v52;
    v48(v52, enum case for IdentifierNamespace.nsHomeKitEntityType(_:), v15);
    sub_6270(v35, 0, 1, v15);
    v36 = enum case for UsoIdentifier.NluComponent.unknown(_:);
    v37 = sub_8C21C();
    v38 = v51;
    (*(*(v37 - 8) + 104))(v51, v36, v37);
    sub_6270(v38, 0, 1, v37);
    v39 = v55;
    sub_8C25C();
    sub_8C17C();

    v40 = *(v58 + 8);
    v41 = v39;
    v42 = v59;
    v40(v41, v59);
    v40(v34, v42);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v43 = sub_8CD0C();
    sub_33F4(v43, qword_C3DF8);
    v62 = sub_8CCEC();
    v44 = sub_8D12C();
    if (os_log_type_enabled(v62, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v62, v44, "Unable to get name string builder", v45, 2u);
    }

    v46 = v62;
  }
}

uint64_t sub_50190(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2D3BC(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v4 = *(a1 + 8 * v3 + 32);
      }
    }

    sub_566C4();
    return sub_8D27C();
  }

  result = sub_8D35C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_50220()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_228D8();
  v0 = sub_8C16C();
  sub_75890(v0, v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_8CE8C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_8CF7C(v10);

  v7 = sub_8C16C();
  sub_1EB64(1uLL, v7, v8);
  sub_1ECF8();

  sub_8CF6C();

  return 0xD000000000000012;
}

void sub_50378(uint64_t a1)
{
  v78 = sub_8B00C();
  v2 = *(v78 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v78);
  v77 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8CDCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v62 = &v59 - v11;
  __chkstk_darwin(v10);
  v83 = &v59 - v12;
  v13 = sub_2664(&qword_C1070, &qword_8FCB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v76 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v75 = &v59 - v18;
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_8CD7C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_8CD6C();
  v80 = sub_2D3B4(a1);
  if (v80)
  {
    v26 = v6;
    v27 = 0;
    v84 = 0;
    v79 = a1 & 0xC000000000000001;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = "com.apple.siri.nl.";
    v72 = (v2 + 8);
    v67 = (v26 + 8);
    v68 = (v26 + 16);
    v28 = _swiftEmptyArrayStorage;
    v61 = v26;
    v60 = v26 + 32;
    *&v25 = 136315138;
    v59 = v25;
    v64 = v20;
    v73 = v24;
    v74 = a1;
    v69 = v5;
    while (1)
    {
      if (v79)
      {
        v29 = sub_8D27C();
      }

      else
      {
        if (v27 >= *(v63 + 16))
        {
          goto LABEL_31;
        }

        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (sub_50C0C(v29))
      {
        v81 = v28;
        v82 = v27 + 1;
        v32 = sub_8CD4C();
        sub_6270(v20, 1, 1, v32);
        v33 = v75;
        sub_8CD5C();
        sub_1D05C(v20, &qword_C1070, &qword_8FCB8);
        sub_6270(v33, 0, 1, v32);
        sub_2293C(v33, v20);
        v34 = v77;
        sub_8AFFC();
        sub_8AFDC();
        (*v72)(v34, v78);
        sub_2FB74(v20, v76, &qword_C1070, &qword_8FCB8);
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);

        v35 = v30;
        v36 = v84;
        sub_8CDAC();
        v84 = v36;
        if (v36)
        {
          sub_1D05C(v20, &qword_C1070, &qword_8FCB8);
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v37 = sub_8CD0C();
          sub_33F4(v37, qword_C3DF8);
          v38 = sub_8CCEC();
          v39 = sub_8D12C();
          v40 = os_log_type_enabled(v38, v39);
          v28 = v81;
          if (v40)
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_0, v38, v39, "#HomeCommunicationNLContextProvider Error creating RREntity", v41, 2u);
            v20 = v64;
          }

          v84 = 0;
          a1 = v74;
        }

        else
        {
          v42 = v69;
          v43 = v62;
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v66 = v35;
          v44 = sub_8CD0C();
          sub_33F4(v44, qword_C3DF8);
          v45 = *v68;
          (*v68)(v43, v83, v42);
          v46 = sub_8CCEC();
          v47 = sub_8D11C();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v85 = v49;
            *v48 = v59;
            sub_56588(&qword_C1078, 255, &type metadata accessor for RREntity);
            v50 = sub_8D43C();
            v52 = v51;
            v65 = *v67;
            v65(v43, v69);
            v53 = sub_862D8(v50, v52, &v85);
            v42 = v69;

            *(v48 + 4) = v53;
            _os_log_impl(&dword_0, v46, v47, "#HomeCommunicationNLContextProvider rrEntity: %s", v48, 0xCu);
            sub_2714(v49);
          }

          else
          {

            v65 = *v67;
            v65(v43, v42);
          }

          v20 = v64;
          v28 = v81;
          v45(v70, v83, v42);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = v28[2];
            sub_761F8();
            v28 = v57;
          }

          v55 = v28[2];
          if (v55 >= v28[3] >> 1)
          {
            sub_761F8();
            v28 = v58;
          }

          v65(v83, v42);
          sub_1D05C(v20, &qword_C1070, &qword_8FCB8);
          v28[2] = v55 + 1;
          (*(v61 + 32))(v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v55, v70, v42);
        }

        v31 = v82;
      }

      else
      {
      }

      ++v27;
      if (v31 == v80)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

uint64_t sub_50C0C(void *a1)
{
  v2 = sub_8C2DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 home];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 spokenPhrase];

    v10 = sub_8CEDC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_8C10C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_8C0FC();
  (*(v3 + 104))(v6, enum case for IdentifierValue.vHomeAutomationHome(_:), v2);
  sub_4FB38(v16, v10, v12, v6);

  (*(v3 + 8))(v6, v2);
  v17 = sub_8C52C();

  return v17;
}

uint64_t sub_50DB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v136 = sub_8BDBC();
  v6 = sub_3488(v136);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_8BDEC();
  v14 = sub_3488(v13);
  v137 = v15;
  v138 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v140 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_8BE0C();
  v20 = sub_3488(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v20);
  v139 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v142 = &v135 - v28;
  __chkstk_darwin(v27);
  v30 = &v135 - v29;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v31 = sub_8CD0C();
  v141 = sub_33F4(v31, qword_C3DF8);
  v32 = sub_8CCEC();
  v33 = sub_8D11C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_E8E0();
    v135 = a1;
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "#SendAnnouncementDisambiguationStrategy actionForInput called", v34, 2u);
    a1 = v135;
    sub_E890();
  }

  sub_8BD9C();
  v35 = v142;
  (*(v22 + 16))(v142, v30, v19);
  v36 = *(v22 + 88);
  v37 = sub_566C4();
  v39 = v38(v37);
  if (v39 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_6;
  }

  if (v39 == enum case for Parse.directInvocation(_:))
  {
    v47 = *(v22 + 96);
    v48 = sub_566C4();
    v49(v48);
    v51 = v137;
    v50 = v138;
    v52 = v140;
    (*(v137 + 32))(v140, v35, v138);
    if (sub_8BDCC() == 0xD00000000000003ALL && 0x8000000000095C40 == v53)
    {
    }

    else
    {
      v55 = sub_8D45C();

      if ((v55 & 1) == 0)
      {
        v56 = sub_8CCEC();
        v57 = sub_8D12C();
        if (sub_E7DC(v57))
        {
LABEL_16:
          v58 = sub_E8E0();
          sub_56674(v58);
          sub_48734();
          _os_log_impl(v59, v60, v61, v62, v63, 2u);
          v52 = v140;
          sub_E890();
        }

LABEL_37:

        goto LABEL_46;
      }
    }

    v88 = sub_8BDDC();
    if (!v88)
    {
      goto LABEL_46;
    }

    sub_5A1A8(0x7865646E69, 0xE500000000000000, v88, &v147);

    if (!v148)
    {
      sub_1D05C(&v147, &qword_C05F0, &unk_8F020);
      goto LABEL_46;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_46:
      if (*(v3 + 16))
      {
        sub_8B75C();
      }

      else
      {
        sub_8B76C();
      }

      (*(v51 + 8))(v52, v50);
      v116 = *(v22 + 8);
      v117 = sub_566D0();
      return v118(v117);
    }

    v89 = v144;
    if (sub_2D3B4(*(v3 + 17)))
    {
      v142 = v30;
      v90 = *(v3 + 17);
      sub_2D3BC(v89, (v90 & 0xC000000000000001) == 0, v90);
      if ((v90 & 0xC000000000000001) != 0)
      {

        sub_8D27C();
        sub_566DC();
      }

      else
      {
        v89 = *(v90 + 8 * v89 + 32);
      }

      v91 = *(v3 + 16);
      *(v3 + 16) = v89;

      v56 = sub_8CCEC();
      sub_8D11C();

      if (sub_566E8())
      {
        sub_1D358();
        v92 = sub_566A8();
        *&v147 = v92;
        *v52 = 136315138;
        *&v144 = *(v3 + 16);
        v93 = v144;
        sub_2664(&qword_C1950, &qword_92790);
        v94 = sub_8CEEC();
        v96 = sub_862D8(v94, v95, &v147);

        *(v52 + 4) = v96;
        v51 = v137;
        sub_56688(&dword_0, v97, v98, "#SendAnnouncementDisambiguationStrategy selectedHome from direct invocation: %s");
        sub_2714(v92);
        v50 = v138;
        sub_E890();
        v52 = v140;
        sub_E890();
      }

      goto LABEL_37;
    }

    v56 = sub_8CCEC();
    v134 = sub_8D12C();
    if (sub_E7DC(v134))
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  if (v39 != enum case for Parse.NLv4IntentOnly(_:) && v39 != enum case for Parse.uso(_:))
  {
    v65 = sub_8CCEC();
    v66 = sub_8D11C();
    if (sub_E7DC(v66))
    {
      v67 = sub_E8E0();
      sub_56674(v67);
      sub_48734();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      v19 = v12;
      sub_E890();
    }

    v73 = *(v22 + 8);
    v73(v142, v19);
    sub_8B76C();
    v74 = sub_566D0();
    return (v73)(v74);
  }

LABEL_6:
  v40 = *(v22 + 8);
  v41 = sub_566C4();
  (v40)(v41);
  v42 = sub_48768();
  if (v42)
  {
    v43 = *(v3 + 16);
    *(v3 + 16) = v42;
    v44 = v42;

    sub_8B75C();
LABEL_8:
    v45 = sub_566D0();
    return (v40)(v45);
  }

  v140 = a2;
  v75 = sub_622C(v3 + 2, *(v3 + 5))[1];

  v142 = v40;
  v76 = v139;
  sub_8BD9C();
  sub_2EBF0(v76, &v144);

  v77 = v76;
  v40 = v142;
  (v142)(v77, v19);
  if (!v145)
  {
    sub_1D05C(&v144, &qword_C0438, &qword_8EBD0);
    v99 = v136;
    (*(v8 + 16))(v12, a1, v136);
    v100 = sub_8CCEC();
    v101 = sub_8D12C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = sub_1D358();
      v138 = v102;
      v141 = swift_slowAlloc();
      *&v147 = v141;
      *v102 = 136315138;
      v103 = v139;
      sub_8BD9C();
      v104 = v103;
      v40 = v142;
      v105 = sub_72160(v104);
      v106 = v12;
      v108 = v107;
      (*(v8 + 8))(v106, v99);
      v109 = sub_862D8(v105, v108, &v147);

      v110 = v138;
      *(v138 + 1) = v109;
      _os_log_impl(&dword_0, v100, v101, "#SendAnnouncementDisambiguationStrategy couldn't transform input: %s", v110, 0xCu);
      sub_2714(v141);
      sub_E890();
      sub_E890();
    }

    else
    {

      (*(v8 + 8))(v12, v99);
    }

    sub_8B76C();
    goto LABEL_8;
  }

  sub_E510(&v144, &v147);
  sub_E528(&v147, &v144);
  v78 = sub_8CCEC();
  v79 = sub_8D11C();
  if (os_log_type_enabled(v78, v79))
  {
    sub_1D358();
    v80 = sub_566A8();
    v139 = v3;
    v81 = v80;
    v143 = v80;
    *v12 = 136315138;
    v82 = v146;
    sub_622C(&v144, v145);
    v83 = *(v82 + 8);
    v84 = sub_8D43C();
    v86 = v85;
    sub_2714(&v144);
    v87 = sub_862D8(v84, v86, &v143);

    *(v12 + 4) = v87;
    _os_log_impl(&dword_0, v78, v79, "#SendAnnouncementDisambiguationStrategy nlIntent: %s", v12, 0xCu);
    sub_2714(v81);
    v3 = v139;
    sub_E890();
    sub_E890();
  }

  else
  {

    sub_2714(&v144);
  }

  v111 = v149;
  sub_622C(&v147, v148);
  v112 = *(v111 + 160);
  v113 = sub_566DC();
  v115 = v114(v113, v111);
  if ((v115 - 1) >= 2)
  {
    if (!v115)
    {
      goto LABEL_56;
    }

    v119 = v149;
    sub_622C(&v147, v148);
    v120 = *(v119 + 168);
    v121 = sub_566DC();
    v123 = v122(v121, v119);
    v124 = *(v3 + 16);
    *(v3 + 16) = v123;

    v125 = sub_8CCEC();
    sub_8D11C();

    if (sub_566E8())
    {
      sub_1D358();
      v126 = sub_566A8();
      v141 = v126;
      *v12 = 136315138;
      v143 = *(v3 + 16);
      *&v144 = v126;
      v127 = v143;
      sub_2664(&qword_C1950, &qword_92790);
      v128 = sub_8CEEC();
      v130 = sub_862D8(v128, v129, &v144);

      *(v12 + 4) = v130;
      sub_56688(&dword_0, v131, v132, "#SendAnnouncementDisambiguationStrategy selectedHome: %s");
      sub_2714(v141);
      sub_E890();
      sub_E890();
    }

    if (*(v3 + 16))
    {
      sub_8B75C();
    }

    else
    {
LABEL_56:
      sub_8B76C();
    }
  }

  else
  {
    sub_8B74C();
  }

  v133 = sub_566D0();
  (v40)(v133);
  return sub_2714(&v147);
}

uint64_t sub_51970()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2664(&qword_C2610, &qword_92780);
  v1[5] = v4;
  sub_115AC(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_E83C();
  v8 = sub_44348();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_51A24()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2664(&qword_C25C8, &qword_92700);
  v3 = sub_8BD0C();
  sub_2664(&qword_C2618, &qword_92788);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_8E3F0;
  v5 = *(v2 + 128);
  *(v4 + 32) = v5;
  v6 = v5;
  sub_2664(&qword_C1950, &qword_92790);
  isa = sub_8D03C().super.isa;

  v8 = sub_8CEAC();
  [v3 setValue:isa forKey:v8];

  v9 = *(v2 + 128);
  if (v9)
  {
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];
  v15 = v9;
  sub_8BD0C();
  sub_ADE4(0, &qword_C2620, INSendAnnouncementIntent_ptr);
  sub_8B98C();
  sub_8BA4C();
  (*(v11 + 8))(v10, v12);

  sub_65A0();

  return v16();
}

uint64_t sub_51C10()
{
  sub_6608();
  v1[229] = v0;
  v1[223] = v2;
  v1[217] = v3;
  v1[211] = v4;
  v5 = type metadata accessor for HomeDisambiguationModel(0);
  v1[235] = v5;
  sub_65E4(v5);
  v7 = *(v6 + 64);
  v1[236] = sub_E83C();
  v8 = sub_2664(&qword_C25D8, &unk_92708);
  v1[237] = v8;
  sub_65E4(v8);
  v10 = *(v9 + 64) + 15;
  v1[238] = swift_task_alloc();
  v1[239] = swift_task_alloc();
  v11 = type metadata accessor for HomeTarget(0);
  sub_115AC(v11);
  v1[240] = v12;
  v14 = *(v13 + 64);
  v1[241] = sub_E83C();
  v15 = sub_8B6BC();
  sub_65E4(v15);
  v17 = *(v16 + 64);
  v1[242] = sub_E83C();
  v18 = sub_8BCBC();
  v1[243] = v18;
  sub_115AC(v18);
  v1[244] = v19;
  v21 = *(v20 + 64);
  v1[245] = sub_E83C();
  v22 = sub_2664(&qword_C25C8, &qword_92700);
  v1[246] = v22;
  sub_115AC(v22);
  v1[247] = v23;
  v1[248] = *(v24 + 64);
  v1[249] = sub_E83C();
  v25 = sub_8C99C();
  v1[250] = v25;
  sub_115AC(v25);
  v1[251] = v26;
  v28 = *(v27 + 64);
  v1[252] = sub_E83C();
  v29 = sub_2664(&qword_C1058, &unk_8FCA0);
  v1[253] = v29;
  sub_65E4(v29);
  v31 = *(v30 + 64);
  v1[254] = sub_E83C();
  v32 = sub_8B4FC();
  v1[255] = v32;
  sub_115AC(v32);
  v1[256] = v33;
  v35 = *(v34 + 64);
  v1[257] = sub_E83C();
  v36 = sub_44348();

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_51EB8()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v0[258] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementDisambiguationStrategy makePromptForDisambiguation called", v4, 2u);
    sub_E890();
  }

  v5 = v0[217];

  sub_2664(&qword_C25E0, &qword_92718);
  v6 = *(sub_8BBAC() + 16);
  if (v6)
  {
    v7 = v0[256];
    v9 = *(v7 + 16);
    v8 = v7 + 16;
    v27 = v9;
    v10 = *(v8 + 64);
    sub_22B9C();
    v13 = v11 + v12;
    v14 = *(v8 + 56);
    do
    {
      v15 = v0[257];
      v16 = v0[255];
      v27(v15, v13, v16);
      sub_8B4EC();
      (*(v8 - 8))(v15, v16);
      sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
      if ((swift_dynamicCast() & 1) != 0 && v0[187])
      {
        sub_8D02C();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_8D06C();
        }

        sub_8D08C();
      }

      v13 += v14;
      --v6;
    }

    while (v6);
  }

  v17 = v0[229];
  v18 = v0[223];
  v19 = *(v17 + 136);
  *(v17 + 136) = _swiftEmptyArrayStorage;

  v20 = swift_task_alloc();
  v0[259] = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  v21 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  sub_44358();
  v0[260] = v22;
  *v22 = v23;
  v22[1] = sub_521C0;
  v24 = v0[254];
  v25 = v0[253];

  return withCheckedContinuation<A>(isolation:function:_:)(v24, 0, 0, 0xD00000000000003ALL, 0x8000000000097E80, sub_55AC0, v20, v25);
}

uint64_t sub_521C0()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 2080);
  v3 = *(v1 + 2072);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_522C0()
{
  v77 = v0;
  v2 = *(*(v0 + 1832) + 136);
  v3 = sub_2D3B4(v2);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
    v76 = _swiftEmptyArrayStorage;
    v6 = v3 & ~(v3 >> 63);

    v7 = sub_551CC(0, v6, 0);
    if (v5 < 0)
    {
LABEL_32:
      __break(1u);
      return _swift_asyncLet_finish(v7);
    }

    v8 = 0;
    v9 = *(v0 + 2008);
    v4 = v76;
    v73 = v2 & 0xC000000000000001;
    v1 = v2;
    do
    {
      if (v73)
      {
        v10 = sub_8D27C();
      }

      else
      {
        v10 = *(v2 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = *(v0 + 2016);
      sub_2C094();

      v76 = v4;
      v14 = v4[2];
      v13 = v4[3];
      if (v14 >= v13 >> 1)
      {
        sub_551CC(v13 > 1, v14 + 1, 1);
        v4 = v76;
      }

      v15 = *(v0 + 2016);
      v16 = *(v0 + 2000);
      ++v8;
      v4[2] = v14 + 1;
      v17 = *(v9 + 80);
      sub_22B9C();
      (*(v9 + 32))(v4 + v18 + *(v9 + 72) * v14);
      v2 = v1;
    }

    while (v5 != v8);
  }

  v19 = *(v0 + 2064);

  v20 = sub_8CCEC();
  sub_8D11C();

  if (sub_566E8())
  {
    v21 = *(v0 + 2000);
    sub_1D358();
    v22 = sub_566A8();
    v76 = v22;
    *v1 = 136315138;
    v23 = sub_8D05C();
    v25 = sub_862D8(v23, v24, &v76);

    *(v1 + 4) = v25;
    sub_56688(&dword_0, v26, v27, "#SendAnnouncementDisambiguationStrategy homeNames: %s");
    sub_2714(v22);
    sub_E890();
    sub_E890();
  }

  v28 = v4[2];
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v30 = *(v0 + 2008);
    v65 = *(v0 + 1896);
    v66 = *(v0 + 1920);
    v76 = _swiftEmptyArrayStorage;

    v7 = sub_55264(0, v28, 0);
    v31 = 0;
    v29 = v76;
    v70 = v4;
    v71 = v4[2];
    v64 = v4 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v67 = v30;
    v68 = v28;
    while (v71 != v31)
    {
      if (v31 >= v4[2])
      {
        goto LABEL_31;
      }

      v32 = *(v0 + 1912);
      v33 = *(v65 + 48);
      v34 = *(v0 + 2000);
      v35 = *(v0 + 1928);
      v36 = *(v0 + 1904);
      v74 = *(v0 + 1832);
      (*(v67 + 16))(v32 + v33, &v64[*(v67 + 72) * v31], v34);
      *v36 = v31;
      (*(v67 + 32))(v36 + *(v65 + 48), v32 + v33, v34);
      sub_536F4(v31, v35);
      sub_1D05C(v36, &qword_C25D8, &unk_92708);
      v76 = v29;
      v38 = v29[2];
      v37 = v29[3];
      if (v38 >= v37 >> 1)
      {
        sub_55264(v37 > 1, v38 + 1, 1);
        v29 = v76;
      }

      v39 = *(v0 + 1928);
      v29[2] = v38 + 1;
      v40 = *(v66 + 80);
      sub_22B9C();
      v7 = sub_55AC8(v43, v29 + v41 + *(v42 + 72) * v38);
      ++v31;
      v4 = v70;
      if (v68 == v31)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_21:
  *(v0 + 2088) = v29;
  v44 = *(v0 + 1992);
  v45 = *(v0 + 1984);
  v46 = *(v0 + 1976);
  v47 = *(v0 + 1968);
  v72 = *(v0 + 1960);
  v75 = *(v0 + 2032);
  v69 = *(v0 + 1936);
  v48 = *(v0 + 1832);
  (*(v46 + 16))(v44, *(v0 + 1784), v47);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = (v45 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v0 + 2096) = v51;
  *(v51 + 16) = v48;
  (*(v46 + 32))(v51 + v49, v44, v47);
  *(v51 + v50) = v4;

  sub_ADE4(0, &qword_C2088, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_8B68C();
  *(swift_task_alloc() + 16) = v75;
  sub_8BC3C();

  v52 = *(v48 + 56);
  *(v0 + 2104) = sub_8CA7C();
  *(v0 + 2112) = v53;
  if (!v53)
  {
    v55 = *(v0 + 2064);

    v56 = sub_8CCEC();
    v57 = sub_8D12C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_E8E0();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "#SendAnnouncementDisambiguationStrategy missing app identifier", v58, 2u);
      sub_E890();
    }

    v59 = *(v0 + 1960);
    v60 = *(v0 + 1952);
    v61 = *(v0 + 1944);
    v62 = *(v0 + 1688);

    sub_8B6FC();
    sub_8B6EC();
    (*(v60 + 8))(v59, v61);
    v7 = sub_56628();

    return _swift_asyncLet_finish(v7);
  }

  *(v0 + 2169) = sub_4E218() & 1;
  v54 = sub_56628();

  return _swift_asyncLet_get_throwing(v54);
}

uint64_t sub_52920()
{
  sub_6608();
  v1[265] = v0;
  if (v0)
  {
    v2 = v1[264];
    v3 = v1[261];

    v4 = sub_53038;
  }

  else
  {
    v4 = sub_529A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_529A8()
{
  v1 = *(v0 + 2169);
  v2 = *(v0 + 2112);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1888);
  v5 = *(v0 + 1880);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1456);
  *(v0 + 1464) = *(v0 + 2104);
  *(v0 + 1472) = v2;

  sub_8B05C();
  v8 = v5[5];
  *(v0 + 1592) = v3;
  sub_2664(&qword_C1338, &qword_907C0);
  sub_8B05C();
  v9 = v5[6];
  *(v0 + 2168) = v1;
  sub_8B05C();
  v10 = v5[7];
  *(v0 + 1480) = v6;
  *(v0 + 1488) = v7;
  sub_8B05C();
  v11 = sub_8B8FC();
  *(v0 + 2128) = v11;
  sub_E824(v11);
  v12 = sub_8B8EC();
  *(v0 + 2136) = v12;
  *(v0 + 1640) = v12;
  *(v0 + 1360) = type metadata accessor for HomeCommunicationSnippetModel();
  *(v0 + 1368) = sub_56588(&qword_C2078, 255, type metadata accessor for HomeCommunicationSnippetModel);
  v13 = sub_E5DC((v0 + 1336));
  sub_55DBC(v4, v13);
  swift_storeEnumTagMultiPayload();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v14 = swift_allocObject();
  *(v0 + 2144) = v14;
  *(v14 + 16) = xmmword_8E860;

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_52B94()
{
  sub_6608();
  *(v1 + 2152) = v0;
  if (v0)
  {
    v2 = *(v1 + 2136);

    v3 = sub_531EC;
  }

  else
  {
    v3 = sub_52C10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_52C10()
{
  sub_6608();
  v1 = v0[193];
  *(v0[268] + 32) = v1;
  v2 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v3 = v1;
  swift_task_alloc();
  sub_44358();
  v0[270] = v4;
  *v4 = v5;
  v4[1] = sub_52CD0;
  v6 = v0[268];
  v7 = v0[266];
  v8 = v0[245];
  v9 = v0[211];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v9, v0 + 167, v6, v8, v7, &protocol witness table for ResponseFactory);
}

uint64_t sub_52CD0()
{
  sub_152A0();
  sub_E884();
  v2 = v1;
  sub_65D8();
  *v3 = v2;
  v5 = v4[270];
  v6 = v4[268];
  v7 = v4[267];
  v8 = *v0;
  sub_E6F8();
  *v9 = v8;

  sub_2714((v2 + 1336));
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_52DF8()
{
  sub_152A0();
  v1 = v0[245];
  v2 = v0[244];
  v3 = v0[243];
  sub_55E20(v0[236]);
  v4 = *(v2 + 8);
  v5 = sub_566C4();
  v6(v5);
  v7 = sub_56628();

  return _swift_asyncLet_finish(v7);
}

uint64_t sub_52EC8()
{
  v1 = v0[262];
  v2 = v0[257];
  v3 = v0[252];
  v4 = v0[249];
  v5 = v0[245];
  v6 = v0[242];
  v7 = v0[241];
  v11 = v0[239];
  v12 = v0[238];
  v13 = v0[236];
  v8 = v0[229];
  sub_1D05C(v0[254], &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v9();
}

uint64_t sub_53038()
{
  sub_6608();
  (*(v0[244] + 8))(v0[245], v0[243]);
  v1 = sub_56628();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_530F4()
{
  v2 = *(v0 + 2120);
  sub_56638();
  sub_1D05C(v1, &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v3();
}

uint64_t sub_531EC()
{
  sub_152A0();
  v1 = v0[268];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  sub_55E20(v0[236]);
  (*(v3 + 8))(v2, v4);
  *(v1 + 16) = 0;

  sub_2714(v0 + 167);
  v5 = sub_56628();

  return _swift_asyncLet_finish(v5);
}

uint64_t sub_532D8()
{
  v2 = *(v0 + 2152);
  sub_56638();
  sub_1D05C(v1, &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v3();
}

void sub_533D0(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = sub_2664(&qword_C2600, &unk_93370);
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v7 = sub_8BA3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 120);
  sub_2664(&qword_C25C8, &qword_92700);
  v21 = sub_8BD0C();
  sub_8BD2C();
  v20 = sub_8BA2C();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  v14 = sub_8BD1C();
  v15 = v23;
  (*(v3 + 16))(v6, v24, v23);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v15);
  v18 = v21;
  sub_4E3F0(v21, v20, v13, v14, sub_55F60, v17);
}

uint64_t sub_53634(uint64_t a1)
{
  v2 = sub_2664(&qword_C1058, &unk_8FCA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_2FB74(a1, &v6 - v4, &qword_C1058, &unk_8FCA0);
  sub_2664(&qword_C2600, &unk_93370);
  return sub_8D0CC();
}

uint64_t sub_536F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664(&qword_C25C0, &unk_926F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E3F0;
  *(inited + 32) = 0x7865646E69;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  v10 = sub_8CE6C();
  sub_ADE4(0, &qword_C25B8, SKIDirectInvocationPayload_ptr);
  v11 = sub_6A1B4();
  v12 = sub_6A228(v10);

  sub_6BB88(v12, v11);
  v13 = sub_8C98C();
  v15 = v14;
  sub_8BE1C();
  sub_EAD4(v20);
  sub_2714(v20);
  sub_8AFFC();
  (*(v5 + 16))(a2, v8, v4);
  v16 = type metadata accessor for HomeTarget(0);
  v17 = *(v16 + 20);
  v20[0] = v13;
  v20[1] = v15;
  sub_8B05C();
  v18 = *(v16 + 24);
  sub_ADE4(0, &qword_C12F0, SAIntentGroupRunSiriKitExecutor_ptr);
  sub_8B03C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_53940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_53964, 0, 0);
}

uint64_t sub_53964()
{
  v1 = v0[4];
  v2 = *(v0[3] + 104);
  sub_2664(&qword_C25C8, &qword_92700);
  v3 = sub_8BD0C();
  v4 = sub_2CD3C();
  v0[6] = v4;

  sub_8C9FC();
  sub_8BE1C();
  v5 = sub_8C9EC();
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_53A60;
  v7 = v0[5];

  return sub_4BC3C(v4, v7, v5);
}

uint64_t sub_53A60()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    v11 = sub_53BB4;
  }

  else
  {
    v13 = v5[6];
    v12 = v5[7];

    v5[10] = v3;
    v11 = sub_53B84;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_53B84()
{
  **(v0 + 16) = *(v0 + 80);
  sub_65A0();
  return v1();
}

uint64_t sub_53BB4()
{
  sub_6608();
  v2 = v0[6];
  v1 = v0[7];

  sub_65A0();
  v4 = v0[9];

  return v3();
}

uint64_t sub_53C18(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_53C38, 0, 0);
}

uint64_t sub_53C38()
{
  sub_6608();
  v1 = *(*(v0 + 24) + 112);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_53CC8;

  return sub_14718();
}

uint64_t sub_53CC8()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;

    return _swift_task_switch(sub_53E00, 0, 0);
  }
}

uint64_t sub_53E00()
{
  sub_152A0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = sub_8CA0C();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  sub_65A0();

  return v6();
}

uint64_t sub_53E7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_8B70C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664(&qword_C1058, &unk_8FCA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_8BC7C();
  sub_8BCAC();
  sub_2FB74(a2, v11, &qword_C1058, &unk_8FCA0);
  sub_8BC8C();
  sub_8BC6C();
  (*(v4 + 104))(v7, enum case for ResponseType.disambiguation(_:), v3);
  return sub_8BC5C();
}

uint64_t sub_53FFC()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_8B9DC();
  sub_65E4(v3);
  v5 = *(v4 + 64);
  v1[5] = sub_E83C();
  v6 = sub_8BA3C();
  v1[6] = v6;
  sub_115AC(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = sub_E83C();
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_540C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BCFC();
  v6 = sub_8BD0C();
  sub_8BD2C();
  sub_8BA2C();
  (*(v2 + 8))(v1, v3);
  v7 = sub_8BD1C();
  sub_54278(v7, v8, v9, v10, v7);

  sub_8BE1C();
  v0[2] = v4;
  type metadata accessor for SendAnnouncementDisambiguationStrategy();
  sub_56588(&qword_C25D0, v11, type metadata accessor for SendAnnouncementDisambiguationStrategy);
  sub_8B1AC();
  v12 = sub_8B51C();
  v13 = sub_E824(v12);
  sub_8B50C();
  sub_566DC();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_54278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_2D8DC();
  v7 = sub_6C594(v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2D3B4(v7);
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_8D27C();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      a5 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v14 = [v12 home];
      if (v14)
      {
        v15 = v14;
        v16 = v11;
        v17 = [v14 spokenPhrase];

        v59 = sub_8CEDC();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_75D80(0, *(v16 + 2) + 1, 1, v16);
        }

        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        v22 = v16;
        if (v21 >= v20 >> 1)
        {
          v22 = sub_75D80((v20 > 1), v21 + 1, 1, v16);
        }

        *(v22 + 2) = v21 + 1;
        v23 = &v22[16 * v21];
        v11 = v22;
        *(v23 + 4) = v59;
        *(v23 + 5) = v19;
        v10 = a5;
      }

      else
      {

        ++v10;
      }
    }

    if (*(v11 + 2) >= 2uLL)
    {
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v47 = sub_8CD0C();
      sub_33F4(v47, qword_C3DF8);

      v48 = sub_8CCEC();
      v49 = sub_8D11C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = sub_1D358();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v50 = 136315138;
        v52 = v11;
        v53 = sub_8D05C();
        v55 = sub_862D8(v53, v54, &v60);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_0, v48, v49, "#SendAnnouncementDisambiguationStrategy Disambiguating between homes : %s", v50, 0xCu);
        sub_2714(v51);
        sub_E890();
        sub_E890();
      }

      else
      {
        v52 = v11;
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      sub_557D4(v52);

      v57 = sub_8B4DC();
      sub_E824(v57);
    }

    else
    {

      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v24 = sub_8CD0C();
      sub_33F4(v24, qword_C3DF8);

      v25 = sub_8CCEC();
      sub_8D12C();

      if (sub_566E8())
      {
        v26 = sub_1D358();
        v27 = swift_slowAlloc();
        v60 = v27;
        *v26 = 136315138;
        v28 = sub_8D05C();
        v30 = v29;

        v31 = sub_862D8(v28, v30, &v60);

        *(v26 + 4) = v31;
        sub_48734();
        _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
        sub_2714(v27);
        sub_E890();
        sub_E890();
      }

      else
      {
      }

      v56 = sub_8B4DC();
      sub_E824(v56);
    }
  }

  else
  {

    if (qword_BF818 != -1)
    {
LABEL_38:
      sub_E754();
    }

    v37 = sub_8CD0C();
    sub_33F4(v37, qword_C3DF8);
    v38 = sub_8CCEC();
    v39 = sub_8D12C();
    if (sub_E7DC(v39))
    {
      *sub_E8E0() = 0;
      sub_48734();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      sub_E890();
    }

    v45 = [a5 disambiguationItems];
    sub_8D04C();

    v46 = sub_8B4DC();
    sub_E824(v46);
  }

  return sub_8B4CC();
}

uint64_t sub_547D0()
{
  sub_2714((v0 + 16));
  v1 = *(v0 + 56);

  sub_2714((v0 + 64));
  v2 = *(v0 + 104);

  v3 = *(v0 + 112);

  v4 = *(v0 + 120);

  v5 = *(v0 + 136);

  return v0;
}

uint64_t sub_54828()
{
  sub_547D0();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_54884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_548FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_54998;

  return sub_53FFC();
}

uint64_t sub_54998()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_54A94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_51970();
}

uint64_t sub_54B40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_51C10();
}

uint64_t sub_54BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_54CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_54D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_54E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_54F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_54F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_5503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

size_t sub_55174(size_t a1, int64_t a2, char a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C0018, &unk_927C0, &type metadata accessor for UsoIdentifier, sub_766EC);
  *v3 = result;
  return result;
}

size_t sub_551CC(size_t a1, int64_t a2, char a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C25F8, &unk_92750, &type metadata accessor for SpeakableString, sub_76704);
  *v3 = result;
  return result;
}

char *sub_55224(char *a1, int64_t a2, char a3)
{
  result = sub_553CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_55244(void *a1, int64_t a2, char a3)
{
  result = sub_55508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_55264(size_t a1, int64_t a2, char a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C25F0, &qword_92748, type metadata accessor for HomeTarget, sub_76754);
  *v3 = result;
  return result;
}

void *sub_552BC(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_2664(&qword_C2640, &unk_927B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_77294(a4 + 32, v8, v10 + 4);
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

    sub_2664(&qword_BFFF8, &qword_8E628);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_553CC(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_2664(&qword_C0F90, &unk_8FAE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_766CC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
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

void *sub_55508(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_2664(&qword_C2630, &qword_927A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_77294(a4 + 32, v8, v10 + 4);
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

    sub_2664(&qword_C2638, &qword_927A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_55618(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
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
    v21 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2664(a5, a6);
  v16 = a7(0);
  sub_115AC(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(*(a7(0) - 8) + 80);
  sub_22B9C();
  if (v11)
  {
    a8(a4 + v24, v14, v21 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void *sub_557D4(uint64_t a1)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementRCHFlowDelegate isDirectInvocation in SiriX path", v5, 2u);
  }

  result = _swiftEmptyArrayStorage;
  v22 = *(a1 + 16);
  if (v22)
  {
    sub_8D2EC();
    sub_ADE4(0, &qword_C25B8, SKIDirectInvocationPayload_ptr);
    sub_8B54C();
    v7 = 0;
    v8 = (a1 + 40);
    do
    {
      v9 = v7 + 1;
      v11 = *(v8 - 1);
      v10 = *v8;
      sub_2664(&qword_C25C0, &unk_926F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_8E3F0;
      *(inited + 32) = 0x7865646E69;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v7;

      v13 = sub_8CE6C();
      v14 = sub_6A1B4();
      v15 = sub_6A228(v13);

      sub_6BB88(v15, v14);
      sub_8B52C();
      v16 = sub_8B53C();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_8E860;
      *(v17 + 32) = v16;
      v18 = sub_8B4AC();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_8B48C();

      sub_8D2CC();
      v21 = _swiftEmptyArrayStorage[2];
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v8 += 2;
      v7 = v9;
    }

    while (v22 != v9);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_55AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_55B2C()
{
  v1 = sub_2664(&qword_C25C8, &qword_92700);
  sub_3488(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_55C04(uint64_t a1)
{
  v4 = sub_2664(&qword_C25C8, &qword_92700);
  sub_115AC(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_44358();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_3B650;

  return sub_53940(a1, v8, v1 + v6, v9);
}

uint64_t sub_55D20()
{
  sub_6608();
  v3 = v2;
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_E2A0;

  return sub_53C18(v3, v0);
}

uint64_t sub_55DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55E20(uint64_t a1)
{
  v2 = type metadata accessor for HomeDisambiguationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_55E7C()
{
  result = qword_C25E8;
  if (!qword_C25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C25E8);
  }

  return result;
}

uint64_t sub_55ED4()
{
  v1 = sub_2664(&qword_C2600, &unk_93370);
  sub_6574(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_55F60(uint64_t a1)
{
  v2 = sub_2664(&qword_C2600, &unk_93370);
  sub_65E4(v2);
  v4 = *(v3 + 80);

  return sub_53634(a1);
}

void *sub_55FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1080, &qword_8FCC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v55 = &v45 - v6;
  v54 = sub_8B6DC();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v54);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_8B73C();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v60);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v58 = &v45 - v16;
  __chkstk_darwin(v15);
  v59 = &v45 - v17;
  v18 = sub_8BD5C();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  __chkstk_darwin(v18);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v62 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  v56 = a2;
  if (v21)
  {
    v57 = (v11 + 16);
    v49 = (v11 + 8);
    v50 = v11 + 32;
    v48 = v7 + 32;

    v22 = _swiftEmptyArrayStorage;
    v23 = (a1 + 40);
    v61 = _swiftEmptyArrayStorage;
    v51 = v7;
    v52 = v11;
    do
    {
      v24 = HIBYTE(*v23) & 0xF;
      if ((*v23 & 0x2000000000000000) == 0)
      {
        v24 = *(v23 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v25 = *v23;

        sub_2664(&qword_C07E0, &qword_8FCB0);
        sub_228D8();
        sub_8C16C();
        sub_50220();
        v26 = v59;
        sub_8B72C();
        v27 = *v57;
        (*v57)(v58, v26, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = v61[2];
          sub_76120();
          v61 = v37;
        }

        v28 = v61[2];
        if (v28 >= v61[3] >> 1)
        {
          sub_76120();
          v61 = v38;
        }

        v29 = v61;
        v61[2] = v28 + 1;
        v30 = v29 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v28;
        v31 = v60;
        (*(v52 + 32))(v30, v58, v60);
        v32 = v55;
        v33 = v59;
        v27(v55, v59, v31);
        sub_6270(v32, 0, 1, v31);
        v27(v53, v33, v31);
        sub_8B6CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = v22[2];
          sub_76048();
          v22 = v40;
        }

        v34 = v22[2];
        v35 = v51;
        if (v34 >= v22[3] >> 1)
        {
          sub_76048();
          v22 = v41;
        }

        (*v49)(v59, v60);
        v22[2] = v34 + 1;
        (*(v35 + 32))(v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v10, v54);
        v62 = v22;
      }

      v23 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v61 = _swiftEmptyArrayStorage;
  }

  if (qword_BF8B0 != -1)
  {
    swift_once();
  }

  sub_8C14C();
  v42 = v45;
  sub_8BD3C();
  v43 = sub_8BD4C();

  (*(v46 + 8))(v42, v47);
  sub_2C7E8(v43);

  return v62;
}

uint64_t sub_56588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_565D0()
{
  result = qword_C2648;
  if (!qword_C2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2648);
  }

  return result;
}

void sub_56638()
{
  v1 = v0[262];
  v2 = v0[257];
  v3 = v0[254];
  v4 = v0[252];
  v5 = v0[249];
  v6 = v0[245];
  v7 = v0[242];
  v8 = v0[241];
  v9 = v0[239];
  v11 = v0[238];
  v12 = v0[236];
  v10 = v0[229];
}

void sub_56688(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_566A8()
{

  return swift_slowAlloc();
}

BOOL sub_566E8()
{

  return os_log_type_enabled(v0, v1);
}

void sub_56700()
{
  sub_ADE4(0, &qword_C2620, INSendAnnouncementIntent_ptr);
  sub_ADE4(0, &qword_C27A8, INSendAnnouncementIntentResponse_ptr);
  sub_8B31C();
  sub_8B28C();
  sub_2664(&qword_C2788, &unk_92930);
  sub_8B2EC();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  oslog = sub_8CCEC();
  v1 = sub_8D11C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "RCHChildFlowProducers.SendAnnouncementProducers", v2, 2u);
  }
}

void sub_5687C()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  oslog = sub_8CCEC();
  v1 = sub_8D11C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_8CEEC();
    v6 = sub_862D8(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#SendAnnouncementFlow state => %s", v2, 0xCu);
    sub_2714(v3);
  }

  else
  {
  }
}

BOOL sub_569FC()
{
  v0 = sub_8BE0C();
  sub_E6E8();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  v8 = v7 - v6;
  sub_8BD9C();
  v9 = (*(v2 + 88))(v8, v0);
  v10 = enum case for Parse.directInvocation(_:);
  if (v9 == enum case for Parse.directInvocation(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v11 = sub_8CD0C();
    sub_33F4(v11, qword_C3DF8);
    v12 = sub_8CCEC();
    v13 = sub_8D11C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_E8E0();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#ReadAnnouncementFlow handling direct invocation.", v14, 2u);
      sub_E890();
    }
  }

  (*(v2 + 8))(v8, v0);
  return v9 == v10;
}

uint64_t sub_56B94()
{
  type metadata accessor for SendAnnouncementFlow();
  sub_5A000(&qword_C0448, type metadata accessor for SendAnnouncementFlow);
  return sub_8B34C();
}

uint64_t sub_56C24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_44348();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_56C4C()
{
  v23 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = *(v0 + 24);
  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);

  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_862D8(0x2865747563657865, 0xE900000000000029, &v22);
    *(v6 + 12) = 2080;
    *(v0 + 56) = *(v5 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state);
    v7 = sub_8CEEC();
    v9 = sub_862D8(v7, v8, &v22);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementFlow %s state=%s", v6, 0x16u);
    swift_arrayDestroy();
    sub_E890();
    sub_E890();
  }

  switch(*(*(v0 + 24) + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state))
  {
    case 1:
      v20 = swift_task_alloc();
      *(v0 + 40) = v20;
      *v20 = v0;
      sub_5A0A8(v20);
      sub_5A0BC();

      result = sub_578AC();
      break;
    case 2:
      v15 = swift_task_alloc();
      *(v0 + 48) = v15;
      *v15 = v0;
      sub_5A0A8(v15);
      sub_5A0BC();

      result = sub_57E2C();
      break;
    case 3:
      v17 = *(v0 + 16);
      sub_8B7FC();
      sub_65A0();
      sub_5A0BC();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v10 = swift_task_alloc();
      *(v0 + 32) = v10;
      *v10 = v0;
      v10[1] = sub_56F9C;
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      sub_5A0BC();

      result = sub_5723C();
      break;
  }

  return result;
}

uint64_t sub_56F9C()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_65A0();

  return v5();
}

uint64_t sub_5707C()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_65A0();

  return v5();
}

uint64_t sub_5715C()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_65A0();

  return v5();
}

uint64_t sub_5723C()
{
  sub_6608();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_8CA2C();
  sub_65E4(v3);
  v5 = *(v4 + 64);
  v1[25] = sub_E83C();
  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_572B4()
{
  sub_8BE1C();
  v1 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  v2 = sub_8B61C();
  sub_2714(v0 + 2);
  if (v2)
  {
    v3 = v0[24];
    v39 = v0[23];
    sub_2664(&qword_C27D8, &qword_92950);
    v4 = sub_8B25C();
    sub_115AC(v4);
    v6 = *(v5 + 72);
    v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_8E3F0;
    sub_59E54(v3 + 64, (v0 + 12));
    type metadata accessor for SendAnnouncementCATsSimple();
    sub_8CA1C();
    v37 = sub_8C9CC();
    v8 = v0[15];
    v9 = sub_E58C((v0 + 12), v8);
    sub_E6E8();
    v11 = v10;
    v13 = *(v12 + 64);
    v14 = sub_E83C();
    (*(v11 + 16))(v14, v9, v8);
    v15 = type metadata accessor for SharedGlobals();
    v0[20] = v15;
    v0[21] = &off_BB508;
    v16 = sub_E5DC(v0 + 17);
    sub_E63C(v14, v16);
    v17 = type metadata accessor for SendAnnouncementActiveCallCheckStrategy();
    v18 = swift_allocObject();
    v19 = v0[20];
    v20 = sub_E58C((v0 + 17), v19);
    sub_E6E8();
    v22 = v21;
    v24 = *(v23 + 64);
    v25 = sub_E83C();
    (*(v22 + 16))(v25, v20, v19);
    v18[5] = v15;
    v18[6] = &off_BB508;
    v26 = sub_E5DC(v18 + 2);
    sub_E63C(v25, v26);
    v18[7] = v37;
    sub_2714(v0 + 17);

    sub_2714(v0 + 12);

    v0[10] = v17;
    v0[11] = sub_5A000(&qword_C27E0, type metadata accessor for SendAnnouncementActiveCallCheckStrategy);
    v0[7] = v18;
    sub_8B24C();
    sub_2714(v0 + 7);
    v27 = sub_8B0CC();

    v0[22] = v27;
    sub_8B21C();

    sub_8B7CC();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v28 = sub_8CD0C();
    sub_33F4(v28, qword_C3DF8);
    v29 = sub_8CCEC();
    v30 = sub_8D11C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_E8E0();
      sub_1D274(v31);
      _os_log_impl(&dword_0, v29, v30, "#SendAnnouncementFlow skipping executeActiveCallPrecheck for non-iOS idiom", v1, 2u);
      sub_1D214();
    }

    v32 = v0[23];
    v33 = v0[24];

    sub_5687C();
    *(v33 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = 1;
    sub_8B7BC();
  }

  v34 = v0[25];

  sub_65A0();

  return v35();
}

void sub_5772C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_8B22C();
    v11 = sub_862D8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "#SendAnnouncementFlow ensuringNoActiveCall outcome: %s", v7, 0xCu);
    sub_2714(v8);
  }

  if (sub_8B23C())
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  sub_5687C();
  *(a2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = v12;
}

uint64_t sub_578AC()
{
  sub_6608();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_8CA2C();
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[16] = sub_E83C();
  v7 = sub_8BDBC();
  v1[17] = v7;
  sub_115AC(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = sub_E83C();
  v11 = sub_44348();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_57974()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v27 = v3;
  v28 = v1;
  v4 = v0[14];
  v29 = v0[13];
  sub_59E54(v0[15] + 64, (v0 + 2));
  (*(v2 + 16))(v1, v4, v3);
  type metadata accessor for SendAnnouncementCATsSimple();
  sub_8CA1C();
  v26 = sub_8C9CC();
  v5 = v0[5];
  v6 = sub_E58C((v0 + 2), v5);
  sub_E6E8();
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = sub_E83C();
  (*(v8 + 16))(v11, v6, v5);
  v12 = type metadata accessor for SharedGlobals();
  v0[10] = v12;
  v0[11] = &off_BB508;
  v13 = sub_E5DC(v0 + 7);
  sub_E63C(v11, v13);
  v14 = type metadata accessor for SendAnnouncementPreflightGuardFlow();
  v15 = sub_E824(v14);
  v16 = v0[10];
  v17 = sub_E58C((v0 + 7), v16);
  sub_E6E8();
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = sub_E83C();
  (*(v19 + 16))(v22, v17, v16);
  *(v15 + 48) = v12;
  *(v15 + 56) = &off_BB508;
  v23 = sub_E5DC((v15 + 24));
  sub_E63C(v22, v23);
  *(v15 + 16) = 0;
  (*(v2 + 32))(v15 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_input, v28, v27);
  *(v15 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_sendAnnouncementCATsSimple) = v26;
  sub_2714(v0 + 7);

  sub_2714(v0 + 2);

  v0[12] = v15;
  sub_5A000(&qword_C27D0, type metadata accessor for SendAnnouncementPreflightGuardFlow);

  sub_8B7CC();

  sub_65A0();

  return v24();
}

void sub_57C88(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    if (sub_8B23C())
    {
      v9 = 0x737361702ELL;
    }

    else
    {
      v9 = 0x6C6961662ELL;
    }

    v10 = sub_862D8(v9, 0xE500000000000000, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_0, v5, v6, "#SendAnnouncementFlow completed SendAnnouncementPreflightGuardFlow with exit value %s", v7, 0xCu);
    sub_2714(v8);
  }

  if (sub_8B23C())
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_5687C();
  *(a2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = v11;
}

uint64_t sub_57E2C()
{
  sub_6608();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = sub_2664(&qword_C2788, &unk_92930);
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[32] = sub_E83C();
  v7 = sub_2664(&qword_C27B0, &unk_934E0);
  sub_65E4(v7);
  v9 = *(v8 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v10 = sub_8BE0C();
  v1[36] = v10;
  sub_115AC(v10);
  v1[37] = v11;
  v13 = *(v12 + 64);
  v1[38] = sub_E83C();
  v14 = sub_44348();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_57F4C()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  *(v0 + 312) = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D10C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementFlow starting RCH", v4, 2u);
    sub_E890();
  }

  v28 = *(v0 + 304);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);

  sub_59E54(v6 + 64, v0 + 16);
  sub_59E54(v6 + 16, v0 + 56);
  sub_8B3FC();
  v7 = *(v0 + 40);
  v8 = sub_E58C(v0 + 16, v7);
  sub_E6E8();
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = sub_E83C();
  (*(v10 + 16))(v13, v8, v7);
  v14 = type metadata accessor for SharedGlobals();
  *(v0 + 320) = v14;
  *(v0 + 160) = v14;
  *(v0 + 168) = &off_BB508;
  v15 = sub_E5DC((v0 + 136));
  sub_E63C(v13, v15);
  type metadata accessor for SendAnnouncementFlowStrategy();
  v16 = swift_allocObject();
  *(v0 + 328) = v16;
  v17 = *(v0 + 160);
  v18 = sub_E58C(v0 + 136, v17);
  sub_E6E8();
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = sub_E83C();
  (*(v20 + 16))(v23, v18, v17);
  v16[5] = v14;
  v16[6] = &off_BB508;
  v24 = sub_E5DC(v16 + 2);
  sub_E63C(v23, v24);
  sub_E510((v0 + 56), (v16 + 7));
  sub_E510((v0 + 96), (v16 + 12));
  sub_2714((v0 + 136));

  sub_2714((v0 + 16));

  sub_8BD9C();
  v25 = swift_task_alloc();
  *(v0 + 336) = v25;
  *v25 = v0;
  v25[1] = sub_58250;
  v26 = *(v0 + 304);

  return sub_5A6C0();
}

uint64_t sub_58250()
{
  sub_E884();
  v3 = v2[42];
  v4 = v2[38];
  v5 = v2[37];
  v6 = v2[36];
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v10 + 344) = v9;
  *(v10 + 352) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = sub_5890C;
  }

  else
  {
    v11 = sub_583B8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_583B8()
{
  v67 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 344);
  sub_8BE1C();
  v3 = *(v0 + 208);
  sub_622C((v0 + 176), *(v0 + 200));
  [v2 _setIdiom:sub_C794()];

  sub_2714((v0 + 176));
  v4 = v2;
  v5 = sub_8CCEC();
  LOBYTE(v1) = sub_8D11C();

  if (os_log_type_enabled(v5, v1))
  {
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66 = v8;
    *v7 = 136315138;
    *(v0 + 224) = [v6 _idiom];
    type metadata accessor for INDeviceIdiom(0);
    v9 = sub_8CEEC();
    v11 = sub_862D8(v9, v10, &v66);

    *(v7 + 4) = v11;
    sub_5A048();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2714(v8);
    sub_E890();
    sub_1D214();
  }

  v17 = *(v0 + 320);
  v18 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = sub_622C((v19 + 64), *(v19 + 88));
  sub_59EB4(v20 + *(v17 + 28), v18);
  v21 = sub_8B78C();
  if (sub_5A058() == 1)
  {
    sub_8C7CC();
    if (sub_8C7BC())
    {
      v22 = *(v0 + 280);
      sub_8C79C();

      sub_8BAAC();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v27 = *(v0 + 272);
    sub_6270(*(v0 + 280), v23, 1, v21);
    if (sub_5A058() != 1)
    {
      sub_59F24(*(v0 + 272));
    }
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);
    sub_4BBA4(v21);
    (*(v26 + 32))(v25);
    sub_6270(v25, 0, 1, v21);
  }

  sub_59EB4(*(v0 + 280), *(v0 + 264));
  v28 = sub_5A058();
  v29 = *(v0 + 264);
  if (v28 == 1)
  {
    sub_59F24(*(v0 + 264));
LABEL_16:
    v40 = *(v0 + 312);
    v41 = sub_8CCEC();
    v42 = sub_8D11C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = sub_E8E0();
      sub_1D274(v43);
      sub_5A048();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      sub_1D214();
    }

    goto LABEL_19;
  }

  v30 = sub_8B77C();
  v32 = v31;
  sub_4BBA4(v21);
  (*(v33 + 8))(v29, v21);
  if (!v32)
  {
    goto LABEL_16;
  }

  v34 = *(v0 + 312);

  v35 = sub_8CCEC();
  v36 = sub_8D11C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66 = v38;
    *v37 = 136315138;

    v39 = sub_862D8(v30, v32, &v66);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_0, v35, v36, "#SendAnnouncementFlow sharedUserID: %s", v37, 0xCu);
    sub_2714(v38);
    sub_E890();
    sub_E890();
  }

  sub_6BC08(v30, v32, *(v0 + 344));
LABEL_19:
  v49 = *(v0 + 344);
  v50 = *(v0 + 328);
  v51 = *(v0 + 280);
  v52 = *(v0 + 248);
  v53 = *(v0 + 232);
  sub_58A08(*(v0 + 256));
  v54 = sub_2664(&qword_C27B8, &qword_92940);
  sub_E824(v54);
  sub_8B32C();
  v55 = sub_622C((v52 + 64), *(v19 + 88));
  v56 = sub_622C(v55 + 2, v55[5]);
  v57 = *(v52 + 56);
  v58 = *v56;
  *(v0 + 216) = sub_77EF4();
  sub_2664(&qword_C27C0, &qword_92948);
  sub_59F8C();
  sub_8B33C();

  sub_8B7EC();

  sub_59F24(v51);
  v59 = *(v0 + 304);
  v60 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 256);
  v62 = *(v0 + 264);

  sub_65A0();

  return v64();
}

uint64_t sub_5890C()
{
  v1 = v0[41];
  v2 = v0[39];

  v3 = sub_8CCEC();
  v4 = sub_8D12C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_E8E0();
    sub_1D274(v5);
    sub_5A048();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_1D214();
  }

  v11 = v0[44];
  v12 = v0[29];

  sub_8B7FC();

  v13 = v0[38];
  v14 = v0[34];
  v15 = v0[35];
  v17 = v0[32];
  v16 = v0[33];

  sub_65A0();

  return v18();
}

uint64_t sub_58A08@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_8CA2C();
  v6 = sub_65E4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_16854();
  v9 = *(v1 + 56);
  sub_56700();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v10 = sub_8CD0C();
  sub_33F4(v10, qword_C3DF8);
  v11 = sub_8CCEC();
  v12 = sub_8D11C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_E8E0();
    sub_1D274(v13);
    _os_log_impl(&dword_0, v11, v12, "#SendAnnouncementFlow async producers with app resolution", v2, 2u);
    sub_1D214();
  }

  sub_59E54(v3 + 64, v80);
  v14 = type metadata accessor for SendAnnouncementCATsSimple();
  swift_retain_n();
  sub_8CA1C();
  sub_5A088();
  v68 = v14;
  v15 = sub_8C9CC();
  sub_E58C(v80, v81);
  v72 = v3;
  sub_E6E8();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_16854();
  v20 = sub_5A074(v19);
  v21(v20);

  v71 = sub_59D1C(v22, v2, v15, type metadata accessor for SendAnnouncementIntentHandledStrategy, &OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37SendAnnouncementIntentHandledStrategy_completionOutputManifest);
  sub_2714(v80);
  v80[0] = v71;
  type metadata accessor for SendAnnouncementIntentHandledStrategy();
  sub_5A000(&qword_C2780, type metadata accessor for SendAnnouncementIntentHandledStrategy);
  sub_8B27C();
  v73 = sub_2664(&qword_C2788, &unk_92930);
  sub_8B2DC();
  sub_59E54(v3 + 64, v80);
  sub_8CA1C();
  sub_5A088();
  v67 = sub_8C9CC();
  v70 = a1;
  v23 = sub_2664(&qword_C2790, &unk_934F0);
  sub_E824(v23);
  v65 = sub_8BBFC();
  sub_E58C(v80, v81);
  v66 = &v64;
  sub_E6E8();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  sub_16854();
  v29 = v28 - v27;
  (*(v30 + 16))(v28 - v27);
  v31 = type metadata accessor for SharedGlobals();
  v78 = v31;
  v79 = &off_BB508;
  v32 = sub_E5DC(v77);
  sub_E63C(v29, v32);
  v33 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  v34 = swift_allocObject();
  v69 = v9;
  sub_E58C(v77, v78);
  sub_E6E8();
  v36 = *(v35 + 64);
  __chkstk_darwin(v37);
  sub_16854();
  v40 = v39 - v38;
  (*(v41 + 16))(v39 - v38);
  v34[5] = v31;
  v34[6] = &off_BB508;
  v42 = sub_E5DC(v34 + 2);
  sub_E63C(v40, v42);
  v34[7] = v67;
  v34[8] = v9;
  v34[9] = v65;
  sub_2714(v77);
  sub_2714(v80);
  v80[0] = v34;
  sub_5A000(&qword_C2798, type metadata accessor for SendAnnouncementNeedsValueStrategy);
  sub_8B26C();
  sub_8B2CC();
  sub_59E54(v72 + 64, v80);
  sub_8CA1C();
  sub_5A088();
  v68 = sub_8C9CC();
  type metadata accessor for HomeCommunicationDisplayTextCATsSimple();
  sub_8CA1C();
  sub_5A088();
  v43 = sub_8C9CC();
  v44 = *(v23 + 48);
  v45 = *(v23 + 52);
  swift_allocObject();
  v46 = sub_8BBFC();
  sub_E58C(v80, v81);
  sub_E6E8();
  v48 = *(v47 + 64);
  __chkstk_darwin(v49);
  sub_16854();
  v51 = sub_5A074(v50);
  v52(v51);
  v78 = v31;
  v79 = &off_BB508;
  v53 = sub_E5DC(v77);
  sub_E63C(v33, v53);
  type metadata accessor for SendAnnouncementDisambiguationStrategy();
  v54 = swift_allocObject();
  sub_E58C(v77, v78);
  sub_E6E8();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  sub_16854();
  v59 = sub_5A094(v58);
  v60(v59);
  v75 = v31;
  v76 = &off_BB508;
  v61 = sub_E5DC(v74);
  sub_E63C(&off_BB508, v61);
  v54[16] = 0;
  v54[17] = _swiftEmptyArrayStorage;
  v54[7] = v69;
  sub_59E54(v74, (v54 + 2));
  v54[13] = v68;
  v54[14] = v43;
  v62 = sub_622C(v74, v75);
  sub_59E54(v62[1] + 96, (v54 + 8));
  v54[15] = v46;
  sub_2714(v74);
  sub_2714(v77);
  sub_2714(v80);
  v80[0] = v54;
  sub_5A000(&qword_C25D0, type metadata accessor for SendAnnouncementDisambiguationStrategy);
  sub_8B29C();
  sub_8B30C();

  sub_8B2FC();
}

uint64_t sub_5920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = sub_8BA3C();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_C25C8, &qword_92700);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_8CA2C();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = *(a3 + 56);
  sub_59E54(a3 + 64, v48);
  type metadata accessor for SendAnnouncementCATsSimple();

  sub_8CA1C();
  v17 = sub_8C9CC();
  v18 = v49;
  v19 = sub_E58C(v48, v49);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_59D1C(v16, v22, v17, type metadata accessor for SendAnnouncementUnsupportedValueStrategy, &OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest);
  sub_2714(v48);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v25 = sub_8CD0C();
  sub_33F4(v25, qword_C3DF8);
  (*(v10 + 16))(v13, a2, v9);
  v26 = v9;
  v27 = sub_8CCEC();
  v28 = sub_8D11C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v45 = a2;
    v30 = v29;
    v43 = swift_slowAlloc();
    v48[0] = v43;
    *v30 = 136315138;
    sub_8BD2C();
    v31 = sub_8BA2C();
    v44 = v24;
    v33 = v32;
    (*(v5 + 8))(v8, v47);
    (*(v10 + 8))(v13, v26);
    v34 = sub_862D8(v31, v33, v48);
    v24 = v44;

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v27, v28, "#SendAnnouncementFlow generating unsupportedFlowProducer for %s", v30, 0xCu);
    sub_2714(v43);

    a2 = v45;
  }

  else
  {

    (*(v10 + 8))(v13, v26);
  }

  sub_8BD2C();
  v35 = sub_8BA2C();
  v37 = v36;
  (*(v5 + 8))(v8, v47);
  if (sub_2670C(v35, v37) == 1 && (sub_8BE1C(), sub_622C(v48, v49), v38 = sub_8B64C(), sub_2714(v48), (v38 & 1) == 0))
  {
    v48[0] = v24;
    type metadata accessor for SendAnnouncementUnsupportedValueStrategy();
    sub_5A000(&qword_C27A0, type metadata accessor for SendAnnouncementUnsupportedValueStrategy);
    v39 = sub_8B2AC();
  }

  else
  {
    v48[0] = v24;
    type metadata accessor for SendAnnouncementUnsupportedValueStrategy();
    sub_5A000(&qword_C27A0, type metadata accessor for SendAnnouncementUnsupportedValueStrategy);
    v39 = sub_8B2BC();
  }

  v40 = v39;

  v41 = v40(v46, a2);

  return v41;
}

uint64_t *sub_597E0()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  sub_2714(v0 + 8);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_input;
  v3 = sub_8BDBC();
  sub_4BBA4(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_59854()
{
  sub_597E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementFlow()
{
  result = qword_C2680;
  if (!qword_C2680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59900()
{
  result = sub_8BDBC();
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

_BYTE *storeEnumTagSinglePayload for SendAnnouncementFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x59A80);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_59ABC()
{
  result = qword_C2778;
  if (!qword_C2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2778);
  }

  return result;
}