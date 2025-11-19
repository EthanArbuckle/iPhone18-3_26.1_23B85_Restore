uint64_t sub_6E698()
{
  sub_6608();
  sub_E884();
  v2 = v1[31];
  v3 = v1[30];
  v4 = v1[29];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  v7 = sub_44348();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6E7B4()
{
  sub_6608();

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  sub_65A0();

  return v3();
}

uint64_t sub_6E824()
{
  sub_6608();
  v1 = v0[27];
  v2 = v0[18];
  v3 = v0[15];

  sub_65A0();

  return v4();
}

uint64_t sub_6E88C()
{
  sub_6608();
  v0[2] = v1;
  v2 = sub_8BA3C();
  v0[3] = v2;
  sub_115AC(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_E83C();
  v6 = sub_2664(&qword_C25C8, &qword_92700);
  v0[6] = v6;
  sub_115AC(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = sub_E83C();
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

void sub_6E988()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v7 = sub_712D4();
  v8(v7);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  if (v11)
  {
    v15 = v0[4];
    v16 = v0[5];
    v32 = v0[3];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_862D8(0xD000000000000034, 0x8000000000098580, &v33);
    *(v17 + 12) = 2080;
    v31 = v10;
    sub_8BD2C();
    sub_8BA2C();
    v18 = sub_712C0();
    v19(v18, v32);
    v20 = sub_711E0();
    v21(v20);
    v22 = sub_862D8(v16, v1, &v33);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_0, v9, v31, "#SendAnnouncementUnsupportedValueFlowStrategy %s: unsupported for %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_E890();
    sub_E890();
  }

  else
  {

    v23 = sub_711E0();
    v24(v23);
  }

  v25 = v0[8];
  v27 = v0[5];
  v26 = v0[6];
  v28 = v0[2];
  sub_8BD0C();

  sub_5D4DC();
  sub_7122C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_6EBD0()
{
  sub_6608();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for HomeCommunicationError(0);
  v1[21] = v4;
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[22] = sub_E83C();
  v7 = sub_8BCBC();
  v1[23] = v7;
  sub_115AC(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = sub_E83C();
  v11 = type metadata accessor for HomeAppLaunchModel();
  v1[26] = v11;
  sub_65E4(v11);
  v13 = *(v12 + 64);
  v1[27] = sub_E83C();
  v14 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v14);
  v16 = *(v15 + 64);
  v1[28] = sub_E83C();
  v17 = sub_8B02C();
  v1[29] = v17;
  sub_115AC(v17);
  v1[30] = v18;
  v20 = *(v19 + 64);
  v1[31] = sub_E83C();
  v21 = sub_44348();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_6ED38()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v0[32] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementIntentHandledStrategy makeLaunchAppWithIntentOutput", v4, 2u);
    sub_E890();
  }

  v5 = v0[20];

  v6 = *(v5 + 64);
  v0[33] = sub_8CA7C();
  v0[34] = v7;
  if (v7)
  {
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = v0[20];
    v12 = sub_8BB2C();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    sub_8BB1C();
    sub_8BE1C();
    v15 = v0[6];
    sub_622C(v0 + 2, v0[5]);
    sub_8B5DC();
    sub_8BB0C();
    v17 = v16;

    (*(v9 + 8))(v8, v10);
    sub_2714(v0 + 2);
    v0[35] = *(v11 + 56);
    if (v17)
    {
      v18 = v0[28];
      sub_8C97C();
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v31 = v0[28];
    v32 = sub_8C99C();
    sub_6270(v31, v19, 1, v32);
    v33 = swift_task_alloc();
    v0[36] = v33;
    *v33 = v0;
    v33[1] = sub_6F0C0;
    sub_71210(v0[28]);

    return sub_4CCF8();
  }

  else
  {
    v20 = sub_8CCEC();
    v21 = sub_8D12C();
    if (sub_443A4(v21))
    {
      v22 = sub_E8E0();
      sub_1D274(v22);
      sub_3D9B8(&dword_0, v23, v24, "#SendAnnouncementIntentHandledStrategy missing app identifier");
      sub_1D214();
    }

    v26 = v0[21];
    v25 = v0[22];

    swift_storeEnumTagMultiPayload();
    sub_71128(&qword_BFF38, type metadata accessor for HomeCommunicationError);
    swift_allocError();
    sub_15350(v27);
    sub_710D4(v25, type metadata accessor for HomeCommunicationError);
    swift_willThrow();
    sub_7121C();
    v28 = v0[22];

    sub_65A0();

    return v29();
  }
}

uint64_t sub_6F0C0()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 288);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;
  v5[37] = v0;

  if (v0)
  {
    v11 = v5[34];
    sub_7106C(v5[28]);
  }

  else
  {
    v12 = v5[28];
    v5[38] = v3;
    sub_7106C(v12);
  }

  sub_65B8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_6F1E4()
{
  v1 = v0[38];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v16 = v0[20];
  v17 = v0[23];
  v8 = sub_8CA0C();
  v10 = v9;

  v0[12] = v3;
  v0[13] = v2;
  sub_8B05C();
  v11 = *(v5 + 20);
  v0[14] = v8;
  v0[15] = v10;
  sub_8B05C();
  v12 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  v0[39] = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  (*(v7 + 16))(v6, v16 + v12, v17);
  sub_8BC6C();
  v13 = swift_task_alloc();
  v0[40] = v13;
  *v13 = v0;
  v13[1] = sub_6F348;
  v14 = v0[20];
  sub_71210(v0[19]);

  return sub_6FE0C();
}

uint64_t sub_6F348()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  v4 = *(v2 + 320);
  v10 = *v1;
  *(v3 + 328) = v5;
  *(v3 + 336) = v0;

  sub_65B8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6F450()
{
  sub_4DFB4();
  v2 = v1[41];
  if (v2)
  {
    v3 = v1[27];
    v4 = sub_8B8FC();
    sub_60BD8(v4);
    v5 = sub_8B8EC();
    v1[43] = v5;
    v1[17] = v5;
    v1[10] = type metadata accessor for HomeCommunicationSnippetModel();
    v1[11] = sub_71128(&qword_C2078, type metadata accessor for HomeCommunicationSnippetModel);
    v6 = sub_E5DC(v1 + 7);
    sub_12F98(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_2664(&qword_C0690, &unk_8EBF0);
    v7 = sub_44464();
    v1[44] = v7;
    sub_712A0(v7, xmmword_8E860);
    v8 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v9 = v2;
    swift_task_alloc();
    sub_44358();
    v1[45] = v10;
    *v10 = v11;
    v10[1] = sub_6F684;
    v12 = v1[25];
    v13 = v1[18];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v13, v1 + 7, v7, v12, v0, &protocol witness table for ResponseFactory);
  }

  else
  {
    v14 = v1[32];
    v15 = sub_8CCEC();
    v16 = sub_8D11C();
    if (sub_443A4(v16))
    {
      v17 = sub_E8E0();
      sub_1D274(v17);
      sub_3D9B8(&dword_0, v18, v19, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v20 = swift_task_alloc();
    v1[46] = v20;
    *v20 = v1;
    v20[1] = sub_6F858;
    v21 = v1[35];

    return sub_4C878();
  }
}

uint64_t sub_6F684()
{
  sub_6608();
  sub_E884();
  v2 = v1;
  sub_4DF58();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *(v4 + 352);
  v7 = *v0;
  sub_E6F8();
  *v8 = v7;

  sub_2714((v2 + 56));
  v9 = sub_44348();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6F784()
{
  sub_4DFB4();
  v1 = *(v0 + 344);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);

  (*(v4 + 8))(v3, v5);
  sub_71170();
  sub_710D4(v2, v6);

  sub_7121C();
  v7 = *(v0 + 176);

  sub_65A0();

  return v8();
}

uint64_t sub_6F858()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 368);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;
  *(v5 + 376) = v0;

  if (!v0)
  {
    *(v5 + 384) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F964()
{
  sub_71288();
  sub_71264();
  v1 = v0[48];
  v2 = v0[39];
  v3 = v0[20];
  v4 = sub_8B8FC();
  sub_60BD8(v4);
  v5 = sub_8B8EC();
  v0[49] = v5;
  v0[16] = v5;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464();
  v0[50] = v6;
  *(v6 + 16) = xmmword_8E860;
  *(v6 + 32) = v1;
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  sub_44358();
  v0[51] = v9;
  *v9 = v10;
  v9[1] = sub_6FA6C;
  v11 = v0[18];
  sub_711D0();
  sub_5A0BC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
}

uint64_t sub_6FA6C()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 408);
  v3 = *(v1 + 400);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6FB6C()
{
  sub_4DFB4();
  v1 = *(v0 + 392);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);

  (*(v4 + 8))(v3, v5);
  sub_71170();
  sub_710D4(v2, v6);

  sub_7121C();
  v7 = *(v0 + 176);

  sub_65A0();

  return v8();
}

uint64_t sub_6FC3C()
{
  sub_4DFB4();
  v1 = *(v0 + 296);
  sub_711F0();

  sub_65A0();

  return v2();
}

uint64_t sub_6FCC4()
{
  sub_4DFB4();
  v2 = sub_712AC();
  v3(v2);
  sub_71170();
  sub_710D4(v0, v4);
  v5 = *(v1 + 336);
  sub_711F0();

  sub_65A0();

  return v6();
}

uint64_t sub_6FD68()
{
  sub_4DFB4();
  v2 = sub_712AC();
  v3(v2);
  sub_71170();
  sub_710D4(v0, v4);
  v5 = *(v1 + 376);
  sub_711F0();

  sub_65A0();

  return v6();
}

uint64_t sub_6FE0C()
{
  sub_6608();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v3);
  v5 = *(v4 + 64);
  v1[6] = sub_E83C();
  v6 = sub_8BA3C();
  v1[7] = v6;
  sub_115AC(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_E83C();
  v10 = sub_44348();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_6FEDC()
{
  v43 = v0;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BD2C();
  sub_8BA2C();
  v6 = sub_71270();
  v7(v6);
  if (sub_2670C(v2, v1) != 1)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 32);
  v9 = sub_8BD1C();
  v10 = [v9 unsupportedReason];

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v11 = sub_8CD0C();
  sub_33F4(v11, qword_C3DF8);
  v12 = sub_8CCEC();
  v13 = sub_8D12C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    *(v0 + 16) = v10;
    *(v0 + 24) = 0;
    sub_2664(&qword_C2ED8, &qword_93668);
    v16 = sub_8CEEC();
    v18 = sub_862D8(v16, v17, &v42);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "#SendAnnouncementIntentHandledStrategy Unsupported recipient reason %s", v14, 0xCu);
    sub_2714(v15);
    sub_E890();
    sub_E890();
  }

  if (v10 == &dword_4)
  {
    v38 = *(*(v0 + 40) + 56);
    v39 = swift_task_alloc();
    *(v0 + 120) = v39;
    *v39 = v0;
    v39[1] = sub_705D8;
    sub_71210(_swiftEmptyArrayStorage);
    sub_71248();

    return sub_4C500(v40);
  }

  else
  {
    if (v10 != (&dword_0 + 2))
    {
      if (v10 == (&dword_0 + 1))
      {
        v19 = *(v0 + 32);
        v20 = *(*(v0 + 40) + 56);
        v21 = sub_8BD0C();
        *(v0 + 80) = sub_2CCA0();

        v22 = swift_task_alloc();
        *(v0 + 88) = v22;
        *v22 = v0;
        v22[1] = sub_702E0;
        sub_71248();

        return sub_4D8F4(v23);
      }

LABEL_12:
      v26 = *(v0 + 72);
      v27 = *(v0 + 48);

      sub_5D4DC();
      sub_71248();

      __asm { BRAA            X2, X16 }
    }

    v30 = *(v0 + 48);
    v31 = *(v0 + 32);
    v32 = *(*(v0 + 40) + 56);
    v33 = sub_8BD0C();
    sub_2CA2C();
    v35 = v34;

    sub_75920(v35, v30);

    sub_8C9FC();
    sub_8BE1C();
    *(v0 + 96) = sub_8C9EC();
    v36 = swift_task_alloc();
    *(v0 + 104) = v36;
    *v36 = v0;
    v36[1] = sub_70444;
    sub_71210(*(v0 + 48));
    sub_71248();

    return sub_4D4F0();
  }
}

uint64_t sub_702E0()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v10 = *v1;
  sub_E6F8();
  *v11 = v10;

  if (v0)
  {
    v12 = *(v5 + 72);
    v13 = *(v5 + 48);

    sub_65A0();

    return v14();
  }

  else
  {
    v16 = *(v5 + 72);
    v17 = *(v5 + 48);

    sub_5D4DC();

    return v18(v3);
  }
}

uint64_t sub_70444()
{
  sub_4DFB4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  v7 = v4[13];
  v8 = *v1;
  *v6 = *v1;
  v5[14] = v0;

  v9 = v4[12];
  sub_7106C(v4[6]);

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v5[9];
    v14 = v5[6];

    v15 = v8[1];

    return v15(v3);
  }
}

uint64_t sub_705D8()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 72);
    v12 = *(v5 + 48);

    sub_65A0();

    return v13();
  }

  else
  {
    v15 = *(v5 + 72);
    v16 = *(v5 + 48);

    sub_5D4DC();

    return v17(v3);
  }
}

uint64_t sub_70720()
{
  sub_6608();
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];

  sub_65A0();

  return v4();
}

uint64_t sub_70788()
{
  sub_6608();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_8BA3C();
  v1[6] = v3;
  sub_115AC(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = sub_E83C();
  v7 = sub_44348();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_71288();
  a17 = v20;
  a18 = v21;
  sub_71264();
  a16 = v18;
  v23 = *(v18 + 56);
  v22 = *(v18 + 64);
  v24 = *(v18 + 48);
  v25 = *(v18 + 32);
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BD2C();
  sub_8BA2C();
  v26 = sub_71270();
  v27(v26);
  if (sub_2670C(v22, v19))
  {
    goto LABEL_10;
  }

  v28 = *(v18 + 32);
  v29 = sub_8BD1C();
  v30 = [v29 unsupportedReason];

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v31 = sub_8CD0C();
  sub_33F4(v31, qword_C3DF8);
  v32 = sub_8CCEC();
  v33 = sub_8D12C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    *(v18 + 16) = v30;
    *(v18 + 24) = 0;
    sub_2664(&qword_C2ED0, &unk_93658);
    v36 = sub_8CEEC();
    v38 = sub_862D8(v36, v37, &a9);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "#SendAnnouncementIntentHandledStrategy Unsupported announcement reason %s", v34, 0xCu);
    sub_2714(v35);
    sub_E890();
    sub_E890();
  }

  if (v30 != &dword_0 + 1)
  {
LABEL_10:
    v43 = *(v18 + 64);

    sub_5D4DC();
    sub_5A0BC();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
  }

  else
  {
    v39 = *(*(v18 + 40) + 56);
    v40 = swift_task_alloc();
    *(v18 + 72) = v40;
    *v40 = v18;
    v40[1] = sub_70A94;
    sub_5A0BC();

    return sub_4D16C();
  }
}

uint64_t sub_70A94()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 64);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v14 = *(v5 + 64);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t *sub_70BD0()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  v4 = sub_8BCBC();
  sub_11580(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_70C3C()
{
  sub_70BD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementUnsupportedValueStrategy()
{
  result = qword_C2E08;
  if (!qword_C2E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_70CE8()
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

uint64_t sub_70D94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_6D8F0();
}

uint64_t sub_70E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_70ED4;

  return sub_6E88C();
}

uint64_t sub_70ED4()
{
  sub_6608();
  v3 = v2;
  sub_E884();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  sub_5D4DC();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_70FC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_6EBD0();
}

uint64_t sub_7106C(uint64_t a1)
{
  v2 = sub_2664(&qword_C1CE0, &unk_91EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_710D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_11580(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_71128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_711F0()
{
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
}

uint64_t sub_7121C()
{
  result = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  return result;
}

__n128 *sub_712A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_712AC()
{
  v1 = v0[27];
  result = v0[25];
  v3 = v0[23];
  v4 = *(v0[24] + 8);
  return result;
}

uint64_t sub_712FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2664(&qword_C27B0, &unk_934E0);
    v9 = a1 + *(a3 + 28);

    return sub_3364(v9, a2, v8);
  }
}

void *sub_713A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2664(&qword_C27B0, &unk_934E0);
    v8 = v5 + *(a4 + 28);

    return sub_6270(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SharedGlobals()
{
  result = qword_C2F38;
  if (!qword_C2F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7147C()
{
  type metadata accessor for HomeCommunicationFeatureManager();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NLTransformer();
    if (v1 <= 0x3F)
    {
      sub_715E4(319, &qword_C2F48);
      if (v2 <= 0x3F)
      {
        sub_7158C();
        if (v3 <= 0x3F)
        {
          sub_715E4(319, &unk_C2F58);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SharedNeedsValueContext();
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

void sub_7158C()
{
  if (!qword_C2F50)
  {
    sub_8B78C();
    v0 = sub_8D1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_C2F50);
    }
  }
}

uint64_t sub_715E4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_71638(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8B60;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  return v4 != 0;
}

BOOL sub_7168C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_71638(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_716C0(uint64_t a1@<X8>)
{
  strcpy(a1, "announcement");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_71708()
{
  v1 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = sub_716E4();
    *(v5 + 4) = sub_862D8(v7, v8, &v28);
    sub_72140(&dword_0, v9, v10, "#SharedNeedsValueContext registering prompt type %s");
    sub_2714(v6);
    sub_E890();
    sub_E890();
  }

  swift_beginAccess();
  v11 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  v14 = sub_71D64();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v15;
  sub_2664(&qword_C3078, &unk_937F0);
  if (!sub_8D32C(isUniquelyReferenced_nonNull_native, v18))
  {
LABEL_9:
    *(v1 + 16) = v13;
    if ((v20 & 1) == 0)
    {
      sub_72030(v19, 0, v13);
    }

    v23 = *(v13 + 56);
    v24 = *(v23 + 8 * v19);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v23 + 8 * v19) = v26;
      return swift_endAccess();
    }

    goto LABEL_14;
  }

  v21 = sub_71D64();
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
    goto LABEL_9;
  }

LABEL_15:
  result = sub_8D4AC();
  __break(1u);
  return result;
}

uint64_t sub_718EC()
{
  result = swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {

    sub_71D64();
    v3 = v2;

    if (v3)
    {
      if (qword_BF818 != -1)
      {
        sub_E754();
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
        v9 = sub_716E4();
        *(v7 + 4) = sub_862D8(v9, v10, &v13);
        sub_72140(&dword_0, v11, v12, "#SharedNeedsValueContext resetting prompt type %s");
        sub_2714(v8);
        sub_E890();
        sub_E890();
      }

      swift_beginAccess();
      sub_7206C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_71A4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

_BYTE *storeEnumTagSinglePayload for SharedNeedsValueContext.PromptType(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x71B44);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_71B80()
{
  result = qword_C3070;
  if (!qword_C3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3070);
  }

  return result;
}

unint64_t sub_71BD4(unint64_t a1)
{
  v3 = *(v1 + 40);
  sub_8D50C();
  if ((a1 & 0x100000000) != 0)
  {
    sub_8D52C(0);
  }

  else
  {
    sub_8D52C(1u);
    sub_8D53C(a1);
  }

  v4 = sub_8D54C();

  return sub_71DD4(a1 | ((HIDWORD(a1) & 1) << 32), v4);
}

unint64_t sub_71C64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_8D50C();
  sub_8CF4C();
  v6 = sub_8D54C();

  return sub_71E58(a1, a2, v6);
}

unint64_t sub_71CDC(char a1)
{
  v3 = *(v1 + 40);
  sub_8D50C();
  sub_2E108(a1);
  sub_8CF4C();

  v4 = sub_8D54C();

  return sub_71F0C(a1, v4);
}

unint64_t sub_71D64()
{
  v1 = *(v0 + 40);
  sub_8D50C();
  sub_8CF4C();
  v2 = sub_8D54C();

  return sub_72004(v2);
}

unint64_t sub_71DD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_71E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_8D45C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_71F0C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_2E108(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_2E108(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_8D45C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_72004(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_72030(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

uint64_t sub_7206C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_71D64();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v8 = *(*v1 + 24);
  sub_2664(&qword_C3078, &unk_937F0);
  sub_8D32C(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(*(v11 + 56) + 8 * v5);
  sub_1CED8();
  sub_8D33C();
  *v1 = v11;
  return v9;
}

void sub_72140(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_72160(char *a1)
{
  v2 = sub_8BE0C();
  v3 = sub_3488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8BE3C();
  v11 = sub_3488(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v2);
  if ((*(v5 + 88))(v9, v2) == enum case for Parse.uso(_:))
  {
    (*(v5 + 96))(v9, v2);
    (*(v13 + 32))(v17, v9, v10);
    strcpy(v29, ".uso parse: ");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    sub_8C02C();
    v27 = sub_8BE9C();
    v28 = sub_72484();
    sub_E5DC(&v25);
    sub_8BE2C();
    v18 = sub_8C01C();
    v20 = v19;
    sub_2714(&v25);
    v30._countAndFlagsBits = v18;
    v30._object = v20;
    sub_8CF7C(v30);

    v25 = v29[0];
    v26 = v29[1];
    v21 = sub_8CFFC();
    (*(v5 + 8))(a1, v2);
    (*(v13 + 8))(v17, v10);
  }

  else
  {
    v22 = *(v5 + 8);
    v22(v9, v2);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_8D31C();
    v21 = sub_8CFFC();
    v22(a1, v2);
  }

  return v21;
}

unint64_t sub_72484()
{
  result = qword_C3080;
  if (!qword_C3080)
  {
    sub_8BE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3080);
  }

  return result;
}

uint64_t type metadata accessor for SkipAnnouncementCATs()
{
  result = qword_C3160;
  if (!qword_C3160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7258C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_725E0(a1, a2);
}

uint64_t sub_725E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_1382C(a1);
  return v12;
}

uint64_t type metadata accessor for SkipAnnouncementCATsSimple()
{
  result = qword_C31B0;
  if (!qword_C31B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_727E0()
{
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v4 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_139E4;

  return v4(0xD00000000000002ELL, 0x80000000000986F0, &_swiftEmptyArrayStorage);
}

uint64_t sub_728A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_728F8(a1, a2);
}

uint64_t sub_728F8(uint64_t a1, uint64_t a2)
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
  sub_137BC(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_1382C(a1);
  return v16;
}

uint64_t sub_72A54(uint64_t a1, uint64_t a2)
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

uint64_t sub_72B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_8BE0C();
  v4 = sub_3488(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v73 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v74 = &v70 - v12;
  v13 = __chkstk_darwin(v11);
  v72 = (&v70 - v14);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = sub_8C71C();
  v18 = sub_3488(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SmsNLIntent();
  v25 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (v6 + 2);
  v29 = v6[2];
  v29(v16, a1, v3);
  v30 = v6[11];
  v31 = sub_75498();
  v33 = v32(v31);
  if (v33 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v39 = sub_75484();
      v40(v39);
      v41 = v6[12];
      v42 = sub_75498();
      v43(v42);
      v44 = *&v16[*(sub_2664(&qword_C0E28, &qword_938D0) + 48)];

      goto LABEL_5;
    }

    if (v33 == enum case for Parse.directInvocation(_:))
    {
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v49 = sub_8CD0C();
      sub_33F4(v49, qword_C3DF8);
      v50 = v72;
      v29(v72, a1, v3);
      v51 = sub_8CCEC();
      v52 = sub_8D11C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v71 = a1;
        v54 = v53;
        v73 = swift_slowAlloc();
        v77 = v73;
        *v54 = 136315138;
        v55 = sub_75470();
        (v29)(v55);
        sub_72160(v27);
        sub_75464();
        v57 = v56;
        sub_7543C();
        v28();
        sub_862D8(v29, v57, &v77);
        sub_75464();

        *(v54 + 4) = v29;
        _os_log_impl(&dword_0, v51, v52, "Received a direct action: %s.", v54, 0xCu);
        sub_2714(v73);

LABEL_15:

        v66 = v71;
LABEL_19:
        (v28)(v66, v3);
        v68 = sub_75498();
        (v28)(v68);
        v48 = 1;
        v47 = v76;
        return sub_6270(v47, v48, 1, v75);
      }

      sub_7543C();
      v67 = a1;
    }

    else
    {
      v58 = a1;
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v59 = sub_8CD0C();
      sub_33F4(v59, qword_C3DF8);
      v50 = v73;
      v29(v73, a1, v3);
      v51 = sub_8CCEC();
      v60 = sub_8D12C();
      if (os_log_type_enabled(v51, v60))
      {
        v61 = swift_slowAlloc();
        v71 = v58;
        v62 = v61;
        v72 = swift_slowAlloc();
        v77 = v72;
        *v62 = 136315138;
        v63 = sub_75470();
        (v29)(v63);
        sub_72160(v27);
        sub_75464();
        v65 = v64;
        sub_7543C();
        v28();
        sub_862D8(v29, v65, &v77);
        sub_75464();

        *(v62 + 4) = v29;
        _os_log_impl(&dword_0, v51, v60, "Received an unknown parse: %s.", v62, 0xCu);
        sub_2714(v72);

        goto LABEL_15;
      }

      sub_7543C();
      v67 = v58;
    }

    (v28)(v67, v3);
    v66 = v50;
    goto LABEL_19;
  }

  v34 = sub_75484();
  v35(v34);
  v36 = v6[12];
  v37 = sub_75498();
  v38(v37);
LABEL_5:
  v45 = *(v20 + 32);
  v45(v24, v16, v17);
  v45(v27, v24, v17);
  v46 = v27;
  v47 = v76;
  sub_74A78(v46, v76);
  v48 = 0;
  return sub_6270(v47, v48, 1, v75);
}

uint64_t sub_73158@<X0>(uint64_t a1@<X8>)
{
  if (qword_BF898 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLIntent();
  sub_75418(&qword_C0E70);
  sub_8C4BC();
  v2 = **(&off_BB798 + v5);
  v3 = sub_8B47C();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

BOOL sub_7323C()
{
  if (qword_BF8B8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLIntent();
  sub_75418(&qword_C0E70);
  v0 = *(sub_8C4CC() + 16);

  if (!v0)
  {
    return 0;
  }

  return sub_7415C();
}

unint64_t sub_732F0()
{
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

uint64_t sub_73424(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x65726F6E6769;
      break;
    case 5:
      result = 7301239;
      break;
    case 6:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_73528()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8E3F0;
  if (qword_BF888 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FB0;
  *(v0 + 56) = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 64) = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0);
  *(v0 + 32) = v1;
  v2 = sub_8C07C();
  sub_E824(v2);

  result = sub_8C06C();
  qword_C3FB8 = result;
  return result;
}

uint64_t sub_73644()
{
  v0 = sub_2664(&qword_C3200, &qword_938C8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FC0 = result;
  return result;
}

uint64_t type metadata accessor for SmsNLIntent()
{
  result = qword_C3270;
  if (!qword_C3270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_73700()
{
  v0 = sub_2664(&qword_C3300, &unk_93AE0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FC8 = result;
  return result;
}

uint64_t sub_7379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_E824(v5);
  result = sub_8C13C();
  *a4 = result;
  return result;
}

uint64_t sub_73800()
{
  v0 = sub_2664(&qword_C3208, &qword_938D8);
  sub_E824(v0);
  result = sub_8C13C();
  qword_C3FD8 = result;
  return result;
}

uint64_t sub_73864()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_E824(v0);
  result = sub_8C13C();
  qword_C3FE0 = result;
  return result;
}

uint64_t sub_738C4()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FE8 = result;
  return result;
}

uint64_t sub_7392C()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FF0 = result;
  return result;
}

uint64_t sub_73994()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FF8 = result;
  return result;
}

uint64_t sub_739FC()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C4000 = result;
  return result;
}

uint64_t sub_73A64()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8C13C();
  qword_C4008 = result;
  return result;
}

uint64_t sub_73ACC()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAC0;
  if (qword_BF890 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FB8;
  v2 = sub_8C07C();
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v3 = qword_BF8A8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_C3FD0;
  *(v0 + 96) = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 104) = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0);
  *(v0 + 72) = v4;
  v5 = qword_BF8A0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_C3FC8;
  *(v0 + 136) = sub_2664(&qword_C3300, &unk_93AE0);
  *(v0 + 144) = sub_75224(&qword_C3308, &qword_C3300, &unk_93AE0);
  *(v0 + 112) = v6;
  v7 = *(v2 + 48);
  v8 = *(v2 + 52);
  swift_allocObject();

  result = sub_8C06C();
  qword_C4010 = result;
  return result;
}

uint64_t sub_73CE4()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_938B0;
  if (qword_BF898 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FC0;
  *(v0 + 56) = sub_2664(&qword_C3200, &qword_938C8);
  *(v0 + 64) = sub_75224(&qword_C32F8, &qword_C3200, &qword_938C8);
  *(v0 + 32) = v1;
  v2 = qword_BF880;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_C3FA8;
  v4 = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 96) = v4;
  v5 = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_BF8E8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_C4010;
  *(v0 + 136) = sub_8C07C();
  *(v0 + 144) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 112) = v7;
  v8 = qword_BF8B8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_C3FE0;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 152) = v9;
  v10 = qword_BF8C0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_C3FE8;
  *(v0 + 216) = v4;
  *(v0 + 224) = v5;
  *(v0 + 192) = v11;
  v12 = qword_BF8C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_C3FF0;
  *(v0 + 256) = v4;
  *(v0 + 264) = v5;
  *(v0 + 232) = v13;
  v14 = qword_BF8D0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_C3FF8;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 272) = v15;
  v16 = qword_BF8D8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_C4000;
  *(v0 + 336) = v4;
  *(v0 + 344) = v5;
  *(v0 + 312) = v17;
  v18 = qword_BF8E0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_C4008;
  *(v0 + 376) = v4;
  *(v0 + 384) = v5;
  *(v0 + 352) = v19;
  qword_C4018 = v0;
}

uint64_t sub_7406C()
{
  if (qword_BF8F0 != -1)
  {
    swift_once();
  }

  v0 = sub_8C12C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_8C11C();
  qword_C4020 = result;
  return result;
}

uint64_t sub_74100()
{
  if (qword_BF8F8 != -1)
  {
    swift_once();
  }
}

BOOL sub_7415C()
{
  if (qword_BF8C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLIntent();
  sub_75418(&qword_C0E70);
  v0 = *(sub_7544C() + 16);

  if (v0)
  {
    return 0;
  }

  if (qword_BF8C8 != -1)
  {
    swift_once();
  }

  v1 = *(sub_7544C() + 16);

  if (v1)
  {
    return 0;
  }

  if (qword_BF8D0 != -1)
  {
    swift_once();
  }

  v2 = *(sub_7544C() + 16);

  if (v2)
  {
    return 0;
  }

  if (qword_BF8D8 != -1)
  {
    swift_once();
  }

  v3 = *(sub_7544C() + 16);

  if (v3)
  {
    return 0;
  }

  if (qword_BF8E0 != -1)
  {
    swift_once();
  }

  v5 = *(sub_7544C() + 16);

  return v5 == 0;
}

uint64_t sub_74314(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8B98;
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

uint64_t sub_74360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8C71C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_743E0(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_74448(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_744A0(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_7451C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_74314(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_7454C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_73424(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_745C8()
{
  v0 = sub_8D47C();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_7461C(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_27;
    case 13:
      v6 = 1920298854;
      goto LABEL_27;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_27;
    case 18:
      v6 = 1701734766;
LABEL_27:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
      result = 1953718636;
      break;
    case 21:
      result = 0x656C6464696DLL;
      break;
    case 22:
      result = 1954047342;
      break;
    case 23:
      result = 0x73756F6976657270;
      break;
    case 24:
      result = 0x6F54646E6F636573;
      break;
    case 25:
      result = 0x4C6F546472696874;
      break;
    case 26:
      result = 6647407;
      break;
    case 27:
      result = 2037277037;
      break;
    case 28:
      result = 6645876;
      break;
    case 29:
      result = 0x6573656874;
      break;
    case 30:
      result = 0x72656C6C6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_7493C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_745C8();
  *a2 = result;
  return result;
}

uint64_t sub_7496C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7461C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_749E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t sub_74A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsNLIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmsReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
        JUMPOUT(0x74C30);
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_74C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_8C71C();

  return sub_3364(a1, a2, v4);
}

uint64_t sub_74CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8C71C();

  return sub_6270(a1, a2, a2, v4);
}

uint64_t sub_74D24()
{
  result = sub_8C71C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_74DFC()
{
  result = qword_C32B0;
  if (!qword_C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32B0);
  }

  return result;
}

unint64_t sub_74E98()
{
  result = qword_C32C8;
  if (!qword_C32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32C8);
  }

  return result;
}

unint64_t sub_74EF0()
{
  result = qword_C32D0;
  if (!qword_C32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32D0);
  }

  return result;
}

uint64_t sub_74F44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmsNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_74F88()
{
  result = qword_C32E0;
  if (!qword_C32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32E0);
  }

  return result;
}

unint64_t sub_74FDC()
{
  result = qword_C32E8;
  if (!qword_C32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32E8);
  }

  return result;
}

unint64_t sub_75030()
{
  result = qword_C32F0;
  if (!qword_C32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsContactRoleValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x75150);
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

unint64_t sub_7518C()
{
  result = qword_C3310;
  if (!qword_C3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3310);
  }

  return result;
}

uint64_t sub_75224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_75270()
{
  result = qword_C3328;
  if (!qword_C3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3328);
  }

  return result;
}

unint64_t sub_752C8()
{
  result = qword_C3330;
  if (!qword_C3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3330);
  }

  return result;
}

unint64_t sub_7531C()
{
  result = qword_C3338;
  if (!qword_C3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3338);
  }

  return result;
}

unint64_t sub_75370()
{
  result = qword_C3340;
  if (!qword_C3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3340);
  }

  return result;
}

unint64_t sub_753C4()
{
  result = qword_C3348;
  if (!qword_C3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3348);
  }

  return result;
}

uint64_t sub_75418(unint64_t *a1)
{

  return sub_74F44(a1);
}

uint64_t sub_7544C()
{

  return sub_8C4CC();
}

uint64_t type metadata accessor for StopAnnouncementAceViewProvider()
{
  result = qword_C3358;
  if (!qword_C3358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_75558(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  v19 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_2C7AC(v3);
  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_8D27C();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v9 = [v6 originator];
    if (v9 && (v10 = v9, v11 = [v9 home], v10, v11))
    {
      v12 = [v11 spokenPhrase];

      v13 = sub_8CEDC();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_75D80(0, *(v19 + 2) + 1, 1, v19);
      }

      v17 = *(v19 + 2);
      v16 = *(v19 + 3);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_75D80((v16 > 1), v17 + 1, 1, v19);
      }

      *(v19 + 2) = v17 + 1;
      v18 = &v19[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v5 = v8;
    }

    else
    {

      ++v5;
    }
  }

  sub_75738(v19);
}

uint64_t sub_75738(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_8D0FC();
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

    sub_76834(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_757F8(uint64_t a1)
{
  result = sub_77194(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_771D4(result, v3, 0, a1);
  }
}

uint64_t sub_75890(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_8CFEC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_75938@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_6270(a3, v8, 1, v7);
}

uint64_t sub_75A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + *(*v6 + qword_C3D60 + 16));
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;

  sub_100FC(a6, v13);
}

uint64_t sub_75AD4(uint64_t result)
{
  if (result)
  {
    if (*(result + 16) == 1)
    {
      return sub_757F8(result);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_75B10()
{
  v0 = sub_8BB5C();
  v1 = *(v0 + *(*v0 + qword_C3D60 + 16));

  sub_2714((v0 + *(*v0 + qword_C3D60 + 24)));
  return v0;
}

uint64_t sub_75BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8BE1C();
  sub_622C(v17, v17[3]);
  v10 = sub_8B64C();
  sub_2714(v17);
  if (v10)
  {
    sub_75558(sub_77134);
    v12 = sub_75AD4(v11);
    v14 = v13;

    sub_75A04(v12, v14, a4, a5, &unk_BB7D0, sub_75D74);
  }

  else
  {
    sub_2664(&qword_C33A8, &qword_93C88);
    v16 = sub_8BB4C();
    return v16(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_75D18()
{
  v0 = sub_75B10();
  v1 = *(v0 + qword_C3350);

  return _swift_deallocClassInstance(v0, 72, 7);
}

char *sub_75D80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v10 = swift_allocObject();
    j__malloc_size(v10);
    sub_7735C();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_75E7C()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C0018, &unk_927C0);
  sub_77318();
  v9 = sub_8C29C();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for UsoIdentifier, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

char *sub_75F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2664(&qword_C33D8, &unk_93CC0);
    v10 = swift_allocObject();
    j__malloc_size(v10);
    sub_7735C();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_76048()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C33C8, &qword_93CA8);
  sub_77318();
  v9 = sub_8B6DC();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for DisplayHint, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_76120()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C33D0, &unk_93CB0);
  sub_77318();
  v9 = sub_8B73C();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for SemanticValue, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_761F8()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C33C0, &qword_93CA0);
  sub_77318();
  v9 = sub_8CDCC();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for RREntity, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_762D0()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C33B8, &qword_93C98);
  sub_77318();
  v9 = sub_8BF1C();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for Siri_Nlu_External_UserDialogAct, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_763A8()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C25F8, &unk_92750);
  sub_77318();
  v9 = sub_8C99C();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for SpeakableString, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_76480()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_77330(v2, v5, &qword_C2628, &qword_92798);
  sub_77318();
  v9 = sub_8C1FC();
  sub_2BC0C(v9);
  v11 = *(v10 + 80);
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for UsoEntitySpan, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void *sub_76558(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2664(&qword_C2640, &unk_927B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

char *sub_765D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2664(a3, a4);
  v8 = sub_77318();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (&result[-v11] != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_766CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_772EC(a3, result);
  }

  return result;
}

char *sub_76734(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_772EC(a3, result);
  }

  return result;
}

uint64_t sub_7676C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_77348();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_77348();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_76834(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_8D50C();
  sub_8CF4C();
  v9 = sub_8D54C();
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
    if (v14 || (sub_8D45C() & 1) != 0)
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

  sub_76BDC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_76980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2664(&qword_C33B0, &qword_93C90);
  result = sub_8D23C();
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
      sub_76D44(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_8D50C();
    sub_8CF4C();
    result = sub_8D54C();
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

Swift::Int sub_76BDC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_76980(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_76F00(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_8D50C();
      sub_8CF4C();
      result = sub_8D54C();
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
        if (v19 || (sub_8D45C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_76DA8();
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
    result = sub_8D49C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_76D44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_93C40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_76DA8()
{
  v1 = v0;
  sub_2664(&qword_C33B0, &qword_93C90);
  v2 = *v0;
  v3 = sub_8D22C();
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

uint64_t sub_76F00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2664(&qword_C33B0, &qword_93C90);
  result = sub_8D23C();
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
        sub_8D50C();

        sub_8CF4C();
        result = sub_8D54C();
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

uint64_t sub_77134(void *a1)
{
  v1 = [a1 stoppedAnnouncementRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_77194(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_8D20C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_771D4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_77250()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_772CC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_772FC@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_7676C(v2 + a2, v4, v3 + a2, a1);
}

char *sub_77330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_765D4(v5, a2, a3, a4, v4);
}

uint64_t type metadata accessor for StopAnnouncementCATs()
{
  result = qword_C33E0;
  if (!qword_C33E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77428(char a1)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_8E3F0;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x8000000000098830;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  sub_8C91C();
}

uint64_t sub_774F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_77548(a1, a2);
}

uint64_t sub_77548(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_8C90C();
  (*(v5 + 8))(a2, v4);
  sub_1382C(a1);
  return v12;
}

uint64_t type metadata accessor for StopAnnouncementCATsSimple()
{
  result = qword_C3430;
  if (!qword_C3430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77748()
{
  sub_77DBC(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_139E4;

  return v3(0xD00000000000001DLL, 0x8000000000098850, _swiftEmptyArrayStorage);
}

uint64_t sub_77800(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_77824, 0, 0);
}

uint64_t sub_77824()
{
  v1 = *(v0 + 48);
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x8000000000098830;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  sub_77DBC(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_77948;
  v5 = *(v0 + 16);

  return v7(0xD000000000000026, 0x8000000000098800, v2);
}

uint64_t sub_77948(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_77AA0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_77AA0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_77B04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_77B58(a1, a2);
}

uint64_t sub_77B58(uint64_t a1, uint64_t a2)
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
  sub_137BC(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_8C9AC();
  (*(v8 + 8))(a2, v2);
  sub_1382C(a1);
  return v16;
}

uint64_t sub_77CB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_77DBC@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_77DD0()
{
  sub_7935C();
  sub_2664(&qword_C35C0, &qword_93E38);
  sub_E6E8();
  v2 = *(v1 + 64);
  __chkstk_darwin(v3);
  sub_79320();
  type metadata accessor for ReadAnnouncementFlowStrategy();
  sub_792D8(&qword_C35C8, type metadata accessor for ReadAnnouncementFlowStrategy);

  sub_79338();
  sub_79384();
  v4 = sub_79370();
  v5(v4);
  return v0;
}

uint64_t sub_77EF4()
{
  sub_7935C();
  sub_2664(&qword_C35B0, &qword_93E30);
  sub_E6E8();
  v2 = *(v1 + 64);
  __chkstk_darwin(v3);
  sub_79320();
  type metadata accessor for SendAnnouncementFlowStrategy();
  sub_792D8(&qword_C35B8, type metadata accessor for SendAnnouncementFlowStrategy);

  sub_79338();
  sub_79384();
  v4 = sub_79370();
  v5(v4);
  return v0;
}

uint64_t sub_78018(uint64_t a1)
{
  v2 = sub_2664(&qword_C35A0, &qword_93E28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - v5;
  v9[1] = a1;
  type metadata accessor for StopAnnouncementFlowStrategy();
  sub_792D8(&qword_C35A8, type metadata accessor for StopAnnouncementFlowStrategy);

  sub_8B7AC();
  v7 = sub_8B79C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

BOOL sub_78190()
{
  v0 = sub_8BE0C();
  sub_E6E8();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8BD9C();
  v8 = (*(v2 + 88))(v7, v0);
  v9 = enum case for Parse.directInvocation(_:);
  if (v8 == enum case for Parse.directInvocation(_:))
  {
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
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#StopAnnouncementFlow handling direct invocation.", v13, 2u);
    }
  }

  (*(v2 + 8))(v7, v0);
  return v8 == v9;
}

uint64_t sub_78340()
{
  type metadata accessor for StopAnnouncementFlow();
  sub_792D8(&qword_C0450, type metadata accessor for StopAnnouncementFlow);
  return sub_8B34C();
}

uint64_t sub_783D0(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(sub_8B6BC() - 8) + 64);
  v2[36] = sub_E83C();
  v4 = *(*(sub_8CA2C() - 8) + 64);
  v2[37] = sub_E83C();
  v5 = sub_2664(&qword_C3568, &qword_93E10);
  v2[38] = v5;
  v6 = *(v5 - 8);
  v2[39] = v6;
  v7 = *(v6 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v8 = sub_8BE0C();
  v2[42] = v8;
  v9 = *(v8 - 8);
  v2[43] = v9;
  v10 = *(v9 + 64);
  v2[44] = sub_E83C();

  return _swift_task_switch(sub_78544, 0, 0);
}

uint64_t sub_78544()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  *(v0 + 360) = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementFlow execute");
  }

  v28 = *(v0 + 352);
  v6 = *(v0 + 280);

  sub_E528(v6 + 64, v0 + 16);
  sub_E528(v6 + 16, v0 + 56);
  sub_8B3FC();
  v7 = *(v0 + 40);
  v8 = sub_E58C(v0 + 16, v7);
  sub_E6E8();
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = sub_E83C();
  (*(v10 + 16))(v13, v8, v7);
  v14 = type metadata accessor for SharedGlobals();
  *(v0 + 368) = v14;
  *(v0 + 160) = v14;
  *(v0 + 168) = &off_BB508;
  v15 = sub_E5DC((v0 + 136));
  sub_E63C(v13, v15);
  type metadata accessor for StopAnnouncementFlowStrategy();
  v16 = swift_allocObject();
  *(v0 + 376) = v16;
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
  *(v0 + 384) = v25;
  *v25 = v0;
  v25[1] = sub_78854;
  v26 = *(v0 + 352);

  return sub_79758(v26, 0);
}

uint64_t sub_78854(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  v7 = v4[48];
  *v6 = *v2;
  v5[49] = v1;

  v8 = v4[44];
  v9 = v4[43];
  v10 = v4[42];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_78E7C;
  }

  else
  {
    v5[50] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_789D4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_789D4()
{
  v1 = v0[46];
  v44 = v0[47];
  v45 = v0[50];
  v47 = v0[41];
  v42 = v0[39];
  v43 = v0[40];
  v40 = v0[38];
  v2 = v0[37];
  v39 = v0[36];
  v3 = v0[35];
  v46 = v0[34];
  sub_ADE4(0, &qword_C3570, INStopAnnouncementIntent_ptr);
  sub_ADE4(0, &qword_C3578, INStopAnnouncementIntentResponse_ptr);
  sub_8B31C();
  v41 = v3;
  v38 = *(v3 + 56);
  sub_E528(v3 + 64, (v0 + 22));
  type metadata accessor for StopAnnouncementCATsSimple();

  sub_8CA1C();
  v37 = sub_8C9CC();
  type metadata accessor for HomeCommunicationDisplayTextCATsSimple();
  sub_8CA1C();
  v36 = sub_8C9CC();
  v4 = v0[25];
  v5 = sub_E58C((v0 + 22), v4);
  sub_E6E8();
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = sub_E83C();
  (*(v7 + 16))(v10, v5, v4);
  v0[30] = v1;
  v0[31] = &off_BB508;
  v11 = sub_E5DC(v0 + 27);
  sub_E63C(v10, v11);
  v12 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v0[30];
  v17 = sub_E58C((v0 + 27), v16);
  sub_E6E8();
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = sub_E83C();
  (*(v19 + 16))(v22, v17, v16);
  v15[5] = v1;
  v15[6] = &off_BB508;
  v23 = sub_E5DC(v15 + 2);
  sub_E63C(v22, v23);
  sub_8B68C();
  sub_8BC3C();
  v15[7] = v37;
  v15[8] = v38;
  v15[9] = v36;
  sub_2714(v0 + 27);

  sub_2714(v0 + 22);

  v0[32] = v15;
  sub_792D8(&qword_C3580, type metadata accessor for StopAnnouncementIntentHandledStrategy);
  sub_8B27C();
  sub_8B2DC();
  sub_8B28C();
  sub_8B2EC();
  (*(v42 + 16))(v43, v47, v40);
  v24 = sub_2664(&qword_C3588, &qword_93E18);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_8B32C();
  v27 = sub_622C((v41 + 64), *(v41 + 88));
  v28 = *sub_622C(v27 + 2, v27[5]);
  v0[33] = sub_78018(v44);
  sub_2664(&qword_C3590, &qword_93E20);
  sub_79274();
  sub_8B33C();

  sub_8B7EC();

  (*(v42 + 8))(v47, v40);
  v29 = v0[44];
  v30 = v0[40];
  v31 = v0[41];
  v33 = v0[36];
  v32 = v0[37];

  v34 = v0[1];

  return v34();
}

uint64_t sub_78E7C()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = sub_8CCEC();
  v4 = sub_8D12C();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v5, v6, "#StopAnnouncementFlow Error thrown while creating RCH flow");
  }

  v7 = v0[49];
  v8 = v0[34];

  sub_8B7FC();

  v9 = v0[44];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[36];
  v12 = v0[37];

  v14 = v0[1];

  return v14();
}

uint64_t *sub_78F8C()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  sub_2714(v0 + 8);
  v2 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input;
  v3 = sub_8BDBC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_79004()
{
  sub_78F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StopAnnouncementFlow()
{
  result = qword_C34B0;
  if (!qword_C34B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_790B0()
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

uint64_t sub_7919C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3D7E4;

  return sub_783D0(a1);
}

uint64_t sub_79238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StopAnnouncementFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_79274()
{
  result = qword_C3598;
  if (!qword_C3598)
  {
    sub_B9BC(&qword_C3590, &qword_93E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3598);
  }

  return result;
}

uint64_t sub_792D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_79338()
{

  return sub_8B7AC();
}

uint64_t sub_79384()
{

  return sub_8B79C();
}

uint64_t sub_793A4()
{
  v0 = sub_8BDEC();
  v1 = sub_3488(v0);
  v32 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8BE0C();
  v8 = sub_3488(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v15 = sub_8CD0C();
  v16 = sub_33F4(v15, qword_C3DF8);
  v17 = sub_8CCEC();
  v18 = sub_8D11C();
  if (sub_125A0(v18))
  {
    v19 = sub_E8E0();
    v31 = v16;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#StopAnnouncementFlowStrategy.actionForInput() handling", v19, 2u);
    sub_E890();
  }

  sub_8BD9C();
  if ((*(v10 + 88))(v14, v7) != enum case for Parse.directInvocation(_:))
  {
    (*(v10 + 8))(v14, v7);
    goto LABEL_13;
  }

  (*(v10 + 96))(v14, v7);
  v20 = v32;
  (*(v32 + 32))(v6, v14, v0);
  if (sub_8BDCC() == 0xD000000000000036 && 0x8000000000095D10 == v21)
  {
  }

  else
  {
    v23 = sub_8D45C();

    if ((v23 & 1) == 0)
    {
      (*(v20 + 8))(v6, v0);
LABEL_13:
      v24 = sub_8CCEC();
      v25 = sub_8D11C();
      if (sub_125A0(v25))
      {
        v26 = sub_E8E0();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "#StopAnnouncementFlowStrategy the action is not a direct invocation. Ignoring to let flow up the stack to handle this.", v26, 2u);
        sub_E890();
      }

      return sub_8B76C();
    }
  }

  v28 = sub_8CCEC();
  v29 = sub_8D11C();
  if (sub_125A0(v29))
  {
    v30 = sub_E8E0();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#StopAnnouncementFlowStrategy user tapped stop button. Handling direct invocations.", v30, 2u);
    sub_E890();
  }

  sub_8B75C();
  return (*(v20 + 8))(v6, v0);
}

uint64_t sub_79758(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  return _swift_task_switch(sub_79778, 0, 0);
}

uint64_t sub_79778()
{
  v35 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#StopAnnouncementFlowStrategy makeIntentFromParse(parse:currentIntent:) called", v4, 2u);
    sub_E890();
  }

  v5 = v0[12];

  v6 = v0[12];
  if (v5)
  {
    v7 = v0[12];
  }

  else
  {
    v7 = [objc_allocWithZone(INStopAnnouncementIntent) init];
  }

  v8 = v6;
  v9 = [v7 _metadata];
  if (v9)
  {
    v10 = v9;
    sub_8B5AC();
    v11 = v0[6];
    sub_622C(v0 + 2, v0[5]);
    sub_8BADC();
    v12 = v0[11];
    sub_622C(v0 + 7, v0[10]);
    sub_8BACC();
    if (v13)
    {
      v14 = sub_8CEAC();
    }

    else
    {
      v14 = 0;
    }

    sub_2714(v0 + 7);
    sub_2714(v0 + 2);
    [v10 setEndpointId:v14];
  }

  v15 = v7;
  v16 = sub_8CCEC();
  v17 = sub_8D11C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    v20 = [v15 _metadata];
    if (v20)
    {
      v20 = sub_7A240(v20);
    }

    else
    {
      v21 = 0;
    }

    v0[2] = v20;
    v0[3] = v21;
    sub_2664(&qword_C1A08, &unk_92B40);
    v22 = sub_8CEEC();
    v24 = sub_862D8(v22, v23, &v34);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v16, v17, "#StopAnnouncementFlowStrategy setting endpoint ID=%s", v18, 0xCu);
    sub_2714(v19);
    sub_E890();
    sub_E890();
  }

  v25 = v0[13];
  v26 = v25[16];
  sub_622C(v25 + 12, v25[15]);
  sub_8B59C();
  v27 = v25[10];
  v28 = v25[11];
  sub_622C(v25 + 7, v27);
  v29 = (*(v28 + 16))(v27, v28);
  v30 = sub_1D6AC(v29);
  v31 = [v30 _className];

  sub_8CEDC();

  sub_8B58C();
  sub_8B40C();

  v32 = v0[1];

  return v32(v15);
}

uint64_t sub_79BA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_3E188;

  return sub_79758(v6, a2);
}

uint64_t sub_79C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StopAnnouncementFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_79C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_79D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_79E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_79EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_3D7E4;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_79FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_3E954;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_7A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v9 = v4;
  v9[1] = sub_3D630;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t sub_7A200(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StopAnnouncementFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7A240(void *a1)
{
  v2 = [a1 endpointId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8CEDC();

  return v3;
}

unint64_t sub_7A31C()
{
  result = qword_C36A8;
  if (!qword_C36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C36A8);
  }

  return result;
}

unint64_t sub_7A370(uint64_t a1)
{
  result = sub_7A398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7A398()
{
  result = qword_C36C8;
  if (!qword_C36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C36C8);
  }

  return result;
}

uint64_t sub_7A3EC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_44310(sub_7A404);
}

uint64_t sub_7A404()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeIntentHandledResponse");
    sub_1D214();
  }

  v6 = *(v0 + 72);

  v7 = *(v6 + 56);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  sub_443E0(v8);

  return sub_77800(1);
}

uint64_t sub_7A518()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_7A63C, 0, 0);
  }
}

uint64_t sub_7A63C()
{
  sub_8BE1C();
  v1 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  v2 = sub_8B64C();
  sub_2714(v0 + 2);
  if (v2)
  {
    v3 = v0[11];
    sub_2664(&qword_C0690, &unk_8EBF0);
    v4 = swift_allocObject();
    v0[12] = v4;
    *(v4 + 16) = xmmword_8E860;
    *(v4 + 32) = v3;
    v5 = v3;
    swift_task_alloc();
    sub_44358();
    v0[13] = v6;
    *v6 = v7;
    v6[1] = sub_7A854;
    v8 = v0[8];
    v9 = v0[9];

    return sub_7AB78();
  }

  else
  {
    v11 = v0[11];
    v12 = v0[9];
    v13 = sub_8B8FC();
    sub_60BD8(v13);
    v14 = sub_8B8EC();
    v0[15] = v14;
    v0[7] = v14;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v15 = swift_allocObject();
    v0[16] = v15;
    *(v15 + 16) = xmmword_8E860;
    *(v15 + 32) = v11;
    v16 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v17 = v11;
    swift_task_alloc();
    sub_44358();
    v0[17] = v18;
    *v18 = v19;
    v18[1] = sub_7A9B4;
    v20 = v0[8];
    sub_7C9A8();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v21, v22, v23, v24, v25);
  }
}

uint64_t sub_7A854()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_65D8();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = sub_7AB18;
  }

  else
  {
    v10 = *(v3 + 96);

    v9 = sub_7A95C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_7A95C()
{
  sub_6608();

  sub_44364();

  return v1();
}

uint64_t sub_7A9B4()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7AAB4()
{
  sub_6608();
  v1 = *(v0 + 120);

  sub_44364();

  return v2();
}

uint64_t sub_7AB18()
{
  sub_6608();
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  sub_65A0();

  return v4();
}

uint64_t sub_7AB78()
{
  sub_6608();
  v1[203] = v0;
  v1[197] = v2;
  v1[191] = v3;
  v4 = type metadata accessor for CarPlayIntercomControlModel();
  v1[209] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[215] = swift_task_alloc();
  v6 = sub_8BCBC();
  v1[221] = v6;
  v7 = *(v6 - 8);
  v1[222] = v7;
  v8 = *(v7 + 64) + 15;
  v1[223] = swift_task_alloc();
  v9 = sub_44348();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7AC64()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeIntentHandledResponseCarPlay making play/reply snippet");
    sub_1D214();
  }

  v6 = v0[223];
  v7 = v0[222];
  v8 = v0[221];
  v9 = v0[203];

  (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37StopAnnouncementIntentHandledStrategy_completionOutputManifest, v8);
  sub_8BC6C();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_7AE18()
{
  sub_6608();
  v1[224] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_7B2EC, 0, 0);
  }

  else
  {
    v1[225] = v1[177];
    v1[226] = v1[178];

    v2 = sub_4440C();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_7AEC4()
{
  *(v1 + 1816) = v0;
  if (v0)
  {
    return sub_44310(sub_7B3DC);
  }

  else
  {
    return sub_44310(sub_7AEF0);
  }
}

uint64_t sub_7AEF0()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1672);
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1440);
  *(v0 + 1448) = *(v0 + 1800);
  *(v0 + 1456) = v1;

  sub_8B05C();
  v6 = *(v3 + 20);
  *(v0 + 1464) = v4;
  *(v0 + 1472) = v5;
  sub_8B05C();
  v7 = *(v3 + 24);
  *(v0 + 1840) = 0;
  sub_8B05C();
  v8 = sub_8B8FC();
  sub_60BD8(v8);
  v9 = sub_8B8EC();
  *(v0 + 1824) = v9;
  *(v0 + 1480) = v9;
  *(v0 + 1360) = type metadata accessor for HomeCommunicationSnippetModel();
  *(v0 + 1368) = sub_7C928(&qword_C2078, type metadata accessor for HomeCommunicationSnippetModel);
  v10 = sub_E5DC((v0 + 1336));
  sub_BF24(v2, v10);
  swift_storeEnumTagMultiPayload();
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_44358();
  *(v0 + 1832) = v12;
  *v12 = v13;
  v12[1] = sub_7B0B4;
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1576);
  v16 = *(v0 + 1528);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v0 + 1336, v15, v14, &type metadata for String, &protocol witness table for ResponseFactory);
}

uint64_t sub_7B0B4()
{
  sub_6608();
  sub_E884();
  v2 = v1;
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 1832);
  v6 = *v0;
  sub_E6F8();
  *v7 = v6;

  sub_2714((v2 + 1336));
  v8 = sub_44348();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_7B19C()
{
  sub_6608();
  v1 = *(v0 + 1824);
  sub_BF88(*(v0 + 1720));

  v2 = sub_4440C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_7B250()
{
  sub_152A0();
  v1 = v0[215];
  v2 = v0[203];
  (*(v0[222] + 8))(v0[223], v0[221]);

  sub_44364();

  return v3();
}

uint64_t sub_7B354()
{
  sub_152A0();
  v1 = *(v0 + 1792);
  v2 = sub_7C974();
  v3(v2);

  sub_65A0();

  return v4();
}

uint64_t sub_7B3DC()
{
  sub_6608();
  v1 = *(v0 + 1808);

  v2 = sub_4440C();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_7B484()
{
  sub_152A0();
  v1 = *(v0 + 1816);
  v2 = sub_7C974();
  v3(v2);

  sub_65A0();

  return v4();
}

uint64_t sub_7B50C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7B52C, 0, 0);
}

uint64_t sub_7B52C()
{
  sub_6608();
  v1 = *(*(v0 + 24) + 72);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  sub_443E0(v2);

  return sub_1484C();
}

uint64_t sub_7B5B8()
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

uint64_t sub_7B6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7B6FC, 0, 0);
}

uint64_t sub_7B6FC()
{
  sub_6608();
  v1 = *(*(v0 + 24) + 72);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  sub_443E0(v2);

  return sub_14984();
}

uint64_t sub_7B788()
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

uint64_t sub_7B8AC()
{
  sub_152A0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = sub_8CA0C();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  sub_44364();

  return v6();
}

uint64_t sub_7B924()
{
  sub_6608();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_8B02C();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7B9D8()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponse");
    sub_1D214();
  }

  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  v11 = sub_8C88C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(inited + 16) = sub_8C87C();
  sub_8BE1C();
  v14 = v0[6];
  sub_622C(v0 + 2, v0[5]);
  sub_8B5DC();
  v0[10] = sub_8B01C();
  v0[11] = v15;
  v0[12] = 45;
  v0[13] = 0xE100000000000000;
  v0[14] = 95;
  v0[15] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  (*(v7 + 8))(v6, v8);
  sub_38AE4(1, 3);
  swift_setDeallocating();
  v16 = *(inited + 16);

  sub_2714(v0 + 2);
  v17 = *(v9 + 56);
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  sub_443E0(v18);

  return sub_77748();
}

uint64_t sub_7BC54()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 168);

    sub_4441C();

    return v12();
  }

  else
  {
    *(v5 + 184) = v3;
    v14 = sub_44374();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_7BD80()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = sub_8B8FC();
  sub_60BD8(v3);
  v4 = sub_8B8EC();
  v0[24] = v4;
  v0[16] = v4;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = swift_allocObject();
  v0[25] = v5;
  *(v5 + 16) = xmmword_8E860;
  *(v5 + 32) = v1;
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v7 = v1;
  swift_task_alloc();
  sub_44358();
  v0[26] = v8;
  *v8 = v9;
  v8[1] = sub_7BEA4;
  v10 = v0[17];
  sub_7C9A8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_7BEA4()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7BFA4()
{
  sub_6608();
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  sub_44364();

  return v3();
}

uint64_t *sub_7C010()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37StopAnnouncementIntentHandledStrategy_completionOutputManifest;
  v5 = sub_8BCBC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_7C090()
{
  sub_7C010();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StopAnnouncementIntentHandledStrategy()
{
  result = qword_C3700;
  if (!qword_C3700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7C13C()
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

uint64_t sub_7C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C440(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3B650;

  return sub_7A3EC(a1);
}

uint64_t sub_7C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C66C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_7B924();
}

uint64_t sub_7C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StopAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_E0F4;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t sub_7C818()
{
  sub_6608();
  swift_task_alloc();
  sub_44358();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_7C994(v1);

  return sub_7B50C(v3, v4);
}

uint64_t sub_7C8A0()
{
  sub_6608();
  swift_task_alloc();
  sub_44358();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_7C994(v1);

  return sub_7B6DC(v3, v4);
}

uint64_t sub_7C928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7C974()
{
  v1 = v0[221];
  v2 = v0[215];
  v3 = v0[203];
  v4 = *(v0[222] + 8);
  return v0[223];
}

unint64_t sub_7C9C0()
{
  result = qword_C37D8;
  if (!qword_C37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37D8);
  }

  return result;
}

uint64_t sub_7CA14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8FD0;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7CA60(char a1)
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
    default:
      return result;
  }

  return result;
}

uint64_t sub_7CB38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_24568();
}

uint64_t sub_7CB5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7CA14(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_7CB8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_7CA60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7CBC8()
{
  v0 = qword_C37C8;

  return v0;
}

uint64_t sub_7CC00(uint64_t a1)
{
  v2 = sub_7CCEC();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_7CC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7CD40();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_7CC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7CCEC();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

unint64_t sub_7CCEC()
{
  result = qword_C37E0;
  if (!qword_C37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37E0);
  }

  return result;
}

unint64_t sub_7CD40()
{
  result = qword_C37E8;
  if (!qword_C37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StopAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StopAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x7CEE8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_7CF20(uint64_t a1)
{
  v2 = sub_7CCEC();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_7CF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7CD40();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_7CFAC()
{
  result = qword_C37F0;
  if (!qword_C37F0)
  {
    sub_B9BC(&qword_C37F8, &qword_942F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37F0);
  }

  return result;
}

unint64_t sub_7D014()
{
  result = qword_C3800;
  if (!qword_C3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3800);
  }

  return result;
}

unint64_t sub_7D06C()
{
  result = qword_C3808;
  if (!qword_C3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3808);
  }

  return result;
}

unint64_t sub_7D0C4()
{
  result = qword_C3810;
  if (!qword_C3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3810);
  }

  return result;
}

unint64_t sub_7D120()
{
  result = qword_C3818;
  if (!qword_C3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3818);
  }

  return result;
}

unint64_t sub_7D178()
{
  result = qword_C3820;
  if (!qword_C3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3820);
  }

  return result;
}

uint64_t type metadata accessor for StopAnnouncementRCHFlowDelegate()
{
  result = qword_C3838;
  if (!qword_C3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7D26C(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v1 + qword_C3D40 + 8);
  sub_E528(a1, v2 + v4);
  sub_E528(v2 + v4, v13);
  sub_622C(v13, v13[3]);
  sub_8B62C();
  sub_2714(v13);
  v5 = sub_8CA8C();
  sub_E824(v5);
  v6 = sub_8CA5C();
  *(v2 + *(*v2 + qword_C3D40 + 16)) = v6;
  sub_2664(&qword_C3890, &unk_944A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_8E3F0;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_8E860;
  *(v8 + 32) = v6;
  v9 = sub_8CA4C();
  sub_E824(v9);

  v10 = sub_8CA3C();
  *(v7 + 56) = v9;
  *(v7 + 64) = &protocol witness table for DefaultAppSelector;
  *(v7 + 32) = v10;
  v11 = sub_8CA9C();
  sub_2714(a1);
  return v11;
}

uint64_t sub_7D4A0()
{
  v0 = sub_2664(&qword_C0660, &qword_92260);
  v1 = sub_65E4(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v36 - v4;
  v37 = sub_8B02C();
  v5 = sub_3488(v37);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  v12 = v11 - v10;
  v13 = sub_8CA2C();
  v14 = sub_65E4(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_16854();
  v38 = sub_8BCEC();
  v17 = sub_3488(v38);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_16854();
  v24 = v23 - v22;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  type metadata accessor for StopAnnouncementCATs();
  sub_8CA1C();
  v25 = sub_8C92C();
  sub_8CC5C();
  v26 = sub_8CC4C();
  v27 = type metadata accessor for StopAnnouncementTemplatingService();
  v28 = sub_E824(v27);
  v42[3] = sub_8CC3C();
  v42[4] = &protocol witness table for DeviceResolutionAnalyticsImpl;
  v42[0] = v26;
  sub_E528(v43, v28 + qword_C38A0);
  *(v28 + qword_C38B8) = v25;
  sub_E528(v44, v28 + qword_C38A8);
  sub_E528(v42, v28 + qword_C38B0);
  v36 = "sions.AnnounceIntentExtension";
  sub_622C(v43, v43[3]);
  sub_7E414();

  sub_8B5DC();
  v29 = sub_8B01C();
  v31 = v30;
  (*(v7 + 8))(v12, v37);
  v41[0] = v29;
  v41[1] = v31;
  v40[0] = 45;
  v40[1] = 0xE100000000000000;
  v41[5] = 95;
  v41[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  sub_E528(v44, v41);
  sub_E528(v43, v40);
  v32 = v39;
  v33 = v38;
  (*(v19 + 16))(v39, v24, v38);
  sub_6270(v32, 0, 1, v33);
  v34 = sub_8BA5C();

  (*(v19 + 8))(v24, v33);
  sub_2714(v44);
  sub_2714(v42);
  sub_2714(v43);
  return v34;
}

void sub_7D8F8()
{
  v0 = sub_8CA2C();
  v1 = sub_65E4(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_16854();
  v4 = sub_8BCEC();
  v5 = sub_65E4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  sub_8BCDC();
  sub_8B5BC();
  sub_8BE1C();
  type metadata accessor for HomeCommunicationDisplayTextCATs();
  sub_8CA1C();
  sub_8C92C();
  v8 = type metadata accessor for DisplayTextTemplatingService();
  sub_E824(v8);
  sub_FDD8();
}

uint64_t sub_7D9F4()
{
  sub_7D8F8();
  v2 = v1;
  sub_E528(v0 + qword_C3830, v12);
  v3 = v13;
  v4 = sub_E58C(v12, v13);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v4);
  sub_16854();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6);
  v10 = sub_7E2E4(v2, v8);
  sub_2714(v12);
  return v10;
}

uint64_t sub_7DAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8BDEC();
  v5 = sub_3488(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  v12 = v11 - v10;
  v13 = sub_8BE0C();
  v14 = sub_3488(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_16854();
  v21 = v20 - v19;
  (*(v16 + 16))(v20 - v19, a1, v13);
  if ((*(v16 + 88))(v21, v13) != enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 8))(v21, v13);
    sub_2664(&qword_C3898, &qword_944B8);
    v31 = sub_8B9FC();
    return v31(a1, a2);
  }

  (*(v16 + 96))(v21, v13);
  (*(v7 + 32))(v12, v21, v4);
  if (sub_8BDCC() == 0xD000000000000036 && 0x8000000000095D10 == v22)
  {
  }

  else
  {
    v24 = sub_8D45C();

    if ((v24 & 1) == 0)
    {
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v25 = sub_8CD0C();
      sub_33F4(v25, qword_C3DF8);
      v26 = sub_8CCEC();
      v27 = sub_8D12C();
      if (os_log_type_enabled(v26, v27))
      {
        *swift_slowAlloc() = 0;
        sub_7E420(&dword_0, v28, v29, "Received unknown direct invocation, returning nil");
      }

      (*(v7 + 8))(v12, v4);
      return 0;
    }
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v32 = sub_8CD0C();
  sub_33F4(v32, qword_C3DF8);
  v33 = sub_8CCEC();
  v34 = sub_8D11C();
  if (os_log_type_enabled(v33, v34))
  {
    *swift_slowAlloc() = 0;
    sub_7E420(&dword_0, v35, v36, "Returning empty INStopAnnouncementIntent for DirectInvocation");
  }

  v30 = [objc_allocWithZone(INStopAnnouncementIntent) init];
  v37 = [v30 _metadata];
  if (v37)
  {
    v38 = v37;
    sub_8B5BC();
    sub_622C(v42, v42[3]);
    sub_7E414();
    sub_8B94C();
    sub_622C(v41, v41[3]);
    sub_7E414();
    sub_8BACC();
    if (v39)
    {
      sub_8CEAC();
      sub_7E414();
    }

    else
    {
      v33 = 0;
    }

    sub_2714(v41);
    sub_2714(v42);
    [v38 setEndpointId:v33];
  }

  (*(v7 + 8))(v12, v4);
  return v30;
}

uint64_t sub_7DF68()
{
  sub_E528(v0 + qword_C3828, v3);
  v1 = sub_2664(&qword_C3888, &qword_944A0);
  sub_E824(v1);
  return sub_7D26C(v3);
}

uint64_t sub_7DFF4()
{
  sub_2714((v0 + qword_C3828));
  v1 = (v0 + qword_C3830);

  return sub_2714(v1);
}

uint64_t sub_7E034()
{
  v0 = sub_8BA0C();
  v1 = qword_C3828;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C3830));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_7E0A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_8CA2C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for SharedGlobals();
  v23[3] = v8;
  v23[4] = &off_BB508;
  v9 = sub_E5DC(v23);
  sub_E63C(a2, v9);
  type metadata accessor for StopAnnouncementCATs();
  sub_8CA1C();
  *(a3 + qword_C3350) = sub_8C92C();
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

uint64_t sub_7E2E4(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for SharedGlobals();
  v20 = &off_BB508;
  v4 = sub_E5DC(v18);
  sub_E63C(a2, v4);
  v5 = type metadata accessor for StopAnnouncementAceViewProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = sub_E58C(v18, v19);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_7E0A8(a1, v13, v8);
  sub_2714(v18);
  return v15;
}

void sub_7E420(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for StopAnnouncementTemplatingService()
{
  result = qword_C38C0;
  if (!qword_C38C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7E4E8()
{
  v1 = *(v0 + qword_C38B8);
  sub_77428(1);

  sub_7E584(1);
}

void sub_7E538()
{
  v1 = *(v0 + qword_C38B8);
  sub_773FC();

  sub_7E584(0);
}

void sub_7E584(int a1)
{
  LODWORD(v127) = a1;
  v122 = sub_8CC2C();
  v2 = sub_3488(v122);
  v129 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v121 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_8CC1C();
  v7 = sub_3488(v132);
  v128 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_1D164();
  v117 = (v11 - v12);
  sub_22ACC();
  __chkstk_darwin(v13);
  v119 = &v110[-v14];
  sub_22ACC();
  __chkstk_darwin(v15);
  v131 = &v110[-v16];
  v17 = sub_2664(&qword_C3910, &unk_94518);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v110[-v19];
  v21 = sub_8CC9C();
  v22 = sub_3488(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = &v110[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_8CCAC();
  v30 = sub_3488(v29);
  v125 = v31;
  v126 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_1D164();
  v116 = (v34 - v35);
  sub_22ACC();
  __chkstk_darwin(v36);
  v118 = &v110[-v37];
  sub_22ACC();
  __chkstk_darwin(v38);
  v130 = &v110[-v39];
  v40 = sub_2664(&qword_C19C8, &qword_90FB0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v110[-v42];
  v44 = sub_8B00C();
  v45 = sub_3488(v44);
  v124 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_1D164();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  v123 = &v110[-v53];
  v120 = v1;
  v54 = *(v1 + qword_C38A8 + 32);
  sub_622C((v1 + qword_C38A8), *(v1 + qword_C38A8 + 24));
  sub_8B96C();
  if (!v55)
  {
    goto LABEL_4;
  }

  sub_8AFCC();

  if (sub_3364(v43, 1, v44) == 1)
  {
    sub_7F18C(v43);
LABEL_4:
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v56 = sub_8CD0C();
    sub_33F4(v56, qword_C3DF8);
    v57 = sub_8CCEC();
    v58 = sub_8D12C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "StopAnnouncementTemplatingService.logQuickStopHandlingEndedEvent(): startRequestId is nil", v59, 2u);
    }

    return;
  }

  v61 = v123;
  v60 = v124;
  (*(v124 + 32))(v123, v43, v44);
  v62 = *(v60 + 16);
  v112 = v44;
  v62(v51, v61, v44);
  (*(v24 + 104))(v28, enum case for ExecutionInfo.Action.quickStopStop(_:), v21);
  v63 = enum case for ExecutionInfo.QuickStopActionResult.stoppedHomeAnnouncement(_:);
  v64 = sub_8CC8C();
  (*(*(v64 - 8) + 104))(v20, v63, v64);
  sub_6270(v20, 0, 1, v64);
  v65 = v130;
  sub_8CC7C();
  v66 = v128;
  v67 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if ((v127 & 1) == 0)
  {
    v67 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  v68 = v131;
  v69 = v132;
  (*(v128 + 104))(v131, *v67, v132);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v70 = sub_8CD0C();
  sub_33F4(v70, qword_C3DF8);
  v71 = v125;
  v72 = v118;
  v73 = v65;
  v74 = v126;
  v114 = *(v125 + 16);
  v115 = v125 + 16;
  v114(v118, v73, v126);
  v75 = v119;
  v113 = *(v66 + 16);
  v113(v119, v68, v69);
  v76 = sub_8CCEC();
  v77 = sub_8D11C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v133[0] = swift_slowAlloc();
    *v78 = 136315394;
    v111 = v77;
    v114(v116, v72, v74);
    v79 = sub_8CEEC();
    v80 = v74;
    v82 = v81;
    v83 = v71;
    v84 = v80;
    v118 = *(v83 + 8);
    (v118)(v72, v80);
    v85 = sub_862D8(v79, v82, v133);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2080;
    v113(v117, v75, v132);
    v86 = sub_8CEEC();
    v88 = v87;
    v119 = *(v66 + 8);
    (v119)(v75, v132);
    v89 = sub_862D8(v86, v88, v133);

    *(v78 + 14) = v89;
    _os_log_impl(&dword_0, v76, v111, "StopAnnouncementTemplatingService.logQuickStopHandlingEndedEvent() - info: %s, result: %s", v78, 0x16u);
    swift_arrayDestroy();
    v69 = v132;
  }

  else
  {

    v119 = *(v66 + 8);
    (v119)(v75, v69);
    v118 = *(v71 + 8);
    (v118)(v72, v74);
    v84 = v74;
  }

  v90 = (v120 + qword_C38B0);
  v91 = *(v120 + qword_C38B0 + 32);
  sub_622C((v120 + qword_C38B0), *(v120 + qword_C38B0 + 24));
  v92 = *(sub_2664(&qword_C3918, &qword_94528) + 48);
  v93 = v121;
  v114(v121, v130, v84);
  v113(&v93[v92], v131, v69);
  v94 = v129;
  v95 = *(v129 + 104);
  v96 = v122;
  v95(v93, enum case for CrossDeviceCommandExecution.ended(_:), v122);
  sub_8CC6C();
  v97 = v69;
  v100 = *(v94 + 8);
  v99 = v94 + 8;
  v98 = v100;
  v100(v93, v96);
  if (v127)
  {
    (v119)(v131, v97);
    v101 = v126;
    v102 = v130;
  }

  else
  {
    v103 = v90[4];
    v120 = v90[3];
    v127 = v103;
    sub_622C(v90, v120);
    v104 = sub_2664(&qword_C3920, &unk_94530);
    v129 = v99;
    v105 = *(v104 + 48);
    v106 = v130;
    v107 = v126;
    v114(v93, v130, v126);
    v108 = enum case for CrossDeviceCommandExecution.FailureReason.unknown(_:);
    v109 = sub_8CC0C();
    (*(*(v109 - 8) + 104))(&v93[v105], v108, v109);
    v95(v93, enum case for CrossDeviceCommandExecution.failed(_:), v96);
    sub_8CC6C();
    v98(v93, v96);
    (v119)(v131, v132);
    v102 = v106;
    v101 = v107;
  }

  (v118)(v102, v101);
  (*(v124 + 8))(v123, v112);
}

uint64_t sub_7F08C()
{
  sub_2714((v0 + qword_C38A0));
  sub_2714((v0 + qword_C38A8));
  sub_2714((v0 + qword_C38B0));
  v1 = *(v0 + qword_C38B8);
}

uint64_t sub_7F0EC()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C38A0));
  sub_2714((v0 + qword_C38A8));
  sub_2714((v0 + qword_C38B0));
  v1 = *(v0 + qword_C38B8);

  return v0;
}

uint64_t sub_7F154()
{
  v0 = sub_7F0EC();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_7F18C(uint64_t a1)
{
  v2 = sub_2664(&qword_C19C8, &qword_90FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_7F1F4()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  result = sub_7F2A0(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  if (result)
  {

    return &dword_0 + 1;
  }

  return result;
}

id sub_7F2A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_8CEAC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8AF1C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_7F37C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000010;
      break;
    case 1:
      sub_845AC();
      result = v4 | 4;
      break;
    case 2:
      sub_845AC();
      result = v2 | 3;
      break;
    case 3:
      sub_845AC();
      result = v3 | 1;
      break;
    default:
      sub_8D25C(39);

      sub_8C99C();
      v5._countAndFlagsBits = sub_8D05C();
      sub_8CF7C(v5);

      v6._countAndFlagsBits = 41;
      v6._object = 0xE100000000000000;
      sub_8CF7C(v6);
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_7F4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465727574616566 && a2 == 0xEF64656C62617369;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x80000000000954B0 == a2;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000000098D30 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000000098D50 == a2;
        if (v8 || (sub_8D45C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000000098D70 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_8D45C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_7F664(char a1)
{
  result = 0x4465727574616566;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_7F768(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEB0000000073656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_7F804(void *a1, uint64_t a2)
{
  v68 = a2;
  v3 = sub_2664(&qword_C3B18, &qword_94728);
  v4 = sub_3488(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  sub_1D394();
  __chkstk_darwin(v8);
  sub_1D370();
  v65 = v9;
  v10 = sub_2664(&qword_C3B20, &qword_94730);
  v11 = sub_3488(v10);
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  sub_1D394();
  __chkstk_darwin(v15);
  sub_1D370();
  v62 = v16;
  v17 = sub_2664(&qword_C3B28, &qword_94738);
  v18 = sub_3488(v17);
  v58 = v19;
  v59 = v18;
  v21 = *(v20 + 64);
  sub_1D394();
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v25 = sub_2664(&qword_C3B30, &qword_94740);
  v26 = sub_3488(v25);
  v60 = v27;
  v61 = v26;
  v29 = *(v28 + 64);
  sub_1D394();
  __chkstk_darwin(v30);
  v32 = &v56 - v31;
  v33 = sub_2664(&qword_C3B38, &qword_94748);
  sub_3488(v33);
  v57 = v34;
  v36 = *(v35 + 64);
  sub_1D394();
  __chkstk_darwin(v37);
  v39 = &v56 - v38;
  v40 = sub_2664(&qword_C3B40, &qword_94750);
  sub_3488(v40);
  v69 = v41;
  v43 = *(v42 + 64);
  sub_1D394();
  __chkstk_darwin(v44);
  v45 = a1[4];
  sub_622C(a1, a1[3]);
  sub_836E4();
  v46 = v68;
  sub_8D57C();
  switch(v46)
  {
    case 0:
      v71 = 0;
      sub_83888();
      sub_845CC();
      (*(v57 + 8))(v39, v33);
      goto LABEL_8;
    case 1:
      v73 = 2;
      sub_837E0();
      sub_845CC();
      v48 = v59;
      v49 = *(v58 + 8);
      v47 = v24;
      goto LABEL_7;
    case 2:
      v74 = 3;
      sub_8378C();
      sub_845CC();
      goto LABEL_5;
    case 3:
      v75 = 4;
      sub_83738();
      sub_845CC();
LABEL_5:
      v47 = sub_8473C();
LABEL_7:
      v49(v47, v48);
LABEL_8:
      v50 = sub_8475C();
      result = v51(v50);
      break;
    default:
      v72 = 1;
      sub_83834();
      sub_845CC();
      v70 = v46;
      sub_2664(&qword_C2408, &unk_92390);
      sub_838DC(&qword_C3B48, &qword_C3B50);
      v53 = v61;
      sub_8D41C();
      (*(v60 + 8))(v32, v53);
      v54 = sub_8475C();
      result = v55(v54);
      break;
  }

  return result;
}

uint64_t sub_7FD18(uint64_t *a1)
{
  v97 = sub_2664(&qword_C3AA8, &qword_946F8);
  sub_3488(v97);
  v92 = v2;
  v4 = *(v3 + 64);
  sub_1D394();
  __chkstk_darwin(v5);
  sub_1D370();
  v95 = v6;
  v96 = sub_2664(&qword_C3AB0, &qword_94700);
  sub_3488(v96);
  v89 = v7;
  v9 = *(v8 + 64);
  sub_1D394();
  __chkstk_darwin(v10);
  sub_1D370();
  v94 = v11;
  v12 = sub_2664(&qword_C3AB8, &qword_94708);
  v13 = sub_3488(v12);
  v87 = v14;
  v88 = v13;
  v16 = *(v15 + 64);
  sub_1D394();
  __chkstk_darwin(v17);
  sub_1D370();
  v93 = v18;
  v19 = sub_2664(&qword_C3AC0, &qword_94710);
  v20 = sub_3488(v19);
  v90 = v21;
  v91 = v20;
  v23 = *(v22 + 64);
  sub_1D394();
  __chkstk_darwin(v24);
  v26 = &v82 - v25;
  v27 = sub_2664(&qword_C3AC8, &qword_94718);
  sub_3488(v27);
  v86 = v28;
  v30 = *(v29 + 64);
  sub_1D394();
  __chkstk_darwin(v31);
  v33 = &v82 - v32;
  v34 = sub_2664(&qword_C3AD0, &qword_94720);
  sub_3488(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1D394();
  __chkstk_darwin(v39);
  v41 = &v82 - v40;
  v42 = a1[3];
  v43 = a1[4];
  v98 = a1;
  sub_622C(a1, v42);
  sub_836E4();
  v44 = v99;
  sub_8D56C();
  if (!v44)
  {
    v83 = v27;
    v84 = v33;
    v85 = v26;
    v45 = v96;
    v46 = v97;
    v99 = v36;
    v47 = sub_8D3EC();
    sub_285E0(v47, 0);
    if (v49 == v50 >> 1)
    {
      goto LABEL_7;
    }

    v82 = 0;
    if (v49 >= (v50 >> 1))
    {
      __break(1u);
      JUMPOUT(0x804D0);
    }

    v51 = v34;
    v52 = *(v48 + v49);
    sub_28F7C(v49 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 != v56 >> 1)
    {
LABEL_7:
      v36 = sub_8D2AC();
      swift_allocError();
      v63 = v62;
      v64 = *(sub_2664(&qword_C11A0, &qword_900E0) + 48);
      *v63 = &type metadata for UnsupportedDialogFlow.Reason;
      sub_8D3BC();
      sub_8D29C();
      (*(*(v36 - 8) + 104))(v63, enum case for DecodingError.typeMismatch(_:), v36);
      swift_willThrow();
      swift_unknownObjectRelease();
      v65 = sub_84430();
      v66(v65);
    }

    else
    {
      v57 = v51;
      switch(v52)
      {
        case 1:
          v102 = 1;
          sub_83834();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.UnsupportedRecipientsNoTargetFoundCodingKeys, &v102);
          sub_2664(&qword_C2408, &unk_92390);
          sub_838DC(&qword_C3B00, &qword_C3B08);
          sub_8D3DC();
          v79 = v99;
          swift_unknownObjectRelease();
          v80 = sub_84748();
          v81(v80);
          (*(v79 + 8))(v41, v57);
          v36 = v100;
          break;
        case 2:
          v103 = 2;
          sub_837E0();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.ContactNotSupportedCodingKeys, &v103);
          swift_unknownObjectRelease();
          v71 = sub_8473C();
          v72(v71);
          v73 = sub_84430();
          v74(v73);
          v36 = 1;
          break;
        case 3:
          v104 = 3;
          sub_8378C();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.RepeatNotSupportedCodingKeys, &v104);
          swift_unknownObjectRelease();
          v75 = sub_8473C();
          v76(v75, v45);
          v77 = sub_84430();
          v78(v77);
          v36 = 2;
          break;
        case 4:
          v105 = 4;
          sub_83738();
          v68 = v95;
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.SkipNotSupportedCodingKeys, &v105);
          swift_unknownObjectRelease();
          (*(v92 + 8))(v68, v46);
          v69 = sub_84430();
          v70(v69);
          v36 = 3;
          break;
        default:
          v101 = 0;
          sub_83888();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.FeatureDisabledCodingKeys, &v101);
          swift_unknownObjectRelease();
          v58 = sub_8473C();
          v59(v58, v83);
          v60 = sub_84430();
          v61(v60);
          v36 = 0;
          break;
      }
    }
  }

  sub_2714(v98);
  return v36;
}

uint64_t sub_804EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7F4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_80514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7F65C();
  *a1 = result;
  return result;
}

uint64_t sub_8053C(uint64_t a1)
{
  v2 = sub_836E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80578(uint64_t a1)
{
  v2 = sub_836E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_805B8(uint64_t a1)
{
  v2 = sub_837E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_805F4(uint64_t a1)
{
  v2 = sub_837E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7F748();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8065C(uint64_t a1)
{
  v2 = sub_83888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80698(uint64_t a1)
{
  v2 = sub_83888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_806D4(uint64_t a1)
{
  v2 = sub_8378C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80710(uint64_t a1)
{
  v2 = sub_8378C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8074C(uint64_t a1)
{
  v2 = sub_83738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80788(uint64_t a1)
{
  v2 = sub_83738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_807C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7F768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_807F4(uint64_t a1)
{
  v2 = sub_83834();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80830(uint64_t a1)
{
  v2 = sub_83834();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7FD18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_808BC()
{
  type metadata accessor for UnsupportedDialogFlow();
  sub_83BAC(&qword_C0E20, v0, type metadata accessor for UnsupportedDialogFlow);
  return sub_8B34C();
}

uint64_t sub_80948(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  sub_65B8();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_80974()
{
  v17 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = v0[4];
  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);

  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_7F37C(*(v5 + 16));
    v10 = sub_862D8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "#UnsupportedDialogFlow executing for reason=%s", v6, 0xCu);
    sub_2714(v7);
    sub_44388();
  }

  v11 = v0[3];
  v12 = v0[4];
  sub_8BB9C();
  v13 = sub_8B14C();
  sub_E824(v13);

  v0[2] = sub_8B13C();
  sub_8B7DC();

  sub_65A0();

  return v14();
}

uint64_t sub_80B5C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for HomeCommunicationError(0);
  v2[29] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for HomeCommunicationSnippetModel();
  v2[32] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v7 = sub_8B02C();
  v2[34] = v7;
  v8 = *(v7 - 8);
  v2[35] = v8;
  v9 = *(v8 + 64) + 15;
  v2[36] = swift_task_alloc();
  v10 = *(*(sub_2664(&qword_C1CE0, &unk_91EC0) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v11 = *(*(sub_8B6BC() - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v12 = sub_8BCBC();
  v2[39] = v12;
  v13 = *(v12 - 8);
  v2[40] = v13;
  v14 = *(v13 + 64) + 15;
  v2[41] = swift_task_alloc();
  v15 = *(*(sub_2664(&qword_C3B58, &unk_94770) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_80D98, 0, 0);
}

uint64_t sub_80D98()
{
  sub_152A0();
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[28];
  sub_6270(v0[44], 1, 1, v0[32]);
  sub_8B6AC();
  sub_8BC3C();
  v4 = *(v3 + 16);
  v0[45] = v4;
  v5 = v0[28];
  switch(v4)
  {
    case 0:
      v6 = v5[8];
      v7 = swift_task_alloc();
      v0[50] = v7;
      *v7 = v0;
      sub_443E0(v7);

      result = sub_13920();
      break;
    case 1:
      v13 = v5[9];
      v14 = swift_task_alloc();
      v0[57] = v14;
      *v14 = v0;
      sub_443E0(v14);

      result = sub_4BF78();
      break;
    case 2:
      v9 = v5[10];
      v10 = swift_task_alloc();
      v0[60] = v10;
      *v10 = v0;
      sub_443E0(v10);

      result = sub_3BBD0();
      break;
    case 3:
      v11 = v5[11];
      v12 = swift_task_alloc();
      v0[63] = v12;
      *v12 = v0;
      sub_443E0(v12);

      result = sub_727E0();
      break;
    default:
      v0[46] = v5[9];
      v15 = swift_task_alloc();
      v0[47] = v15;
      *v15 = v0;
      sub_443E0(v15);

      result = sub_4D8F4(v4);
      break;
  }

  return result;
}

uint64_t sub_81064()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  v4 = *(v2 + 376);
  v10 = *v1;
  *(v3 + 384) = v5;
  *(v3 + 392) = v0;

  sub_65B8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_8116C()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v7 = *(v6 + 400);
  v8 = *v2;
  sub_E6F8();
  *v9 = v8;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_81270()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 416);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v6 = sub_84600(v5);
    sub_84568(v6, xmmword_8E860);
    v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v24 = sub_44464();
    v25 = sub_845F4(v24);
    sub_84568(v25, xmmword_8E860);
    v26 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_81434()
{
  sub_71288();
  sub_71264();
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_8BE1C();
  v4 = *(v0 + 88);
  sub_622C((v0 + 56), *(v0 + 80));
  sub_845C0();
  *(v0 + 616) = sub_8B62C() & 1;
  sub_2714((v0 + 56));
  sub_8CA8C();

  *(v0 + 424) = sub_8CA6C();
  v5 = sub_8BB2C();
  sub_E824(v5);

  sub_8BB1C();
  sub_8BE1C();
  v6 = *(v0 + 128);
  sub_622C((v0 + 96), *(v0 + 120));
  sub_845C0();
  sub_8B5DC();
  sub_8BB0C();
  v8 = v7;

  (*(v2 + 8))(v1, v3);
  sub_2714((v0 + 96));
  if (v8)
  {
    v9 = *(v0 + 296);
    sub_8CF2C();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(v0 + 296);
  v12 = sub_8C99C();
  sub_6270(v11, v10, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 432) = v13;
  *v13 = v0;
  v13[1] = sub_81648;
  v14 = *(v0 + 368);
  v15 = *(v0 + 296);
  sub_5A0BC();

  return sub_4CCF8();
}

uint64_t sub_81648()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v7 = *(v6 + 432);
  v8 = *v2;
  sub_E6F8();
  *v9 = v8;
  *(v4 + 440) = v0;

  if (v0)
  {
    *(v4 + 616);
  }

  else
  {
    *(v4 + 448) = v1;
  }

  sub_65B8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_8177C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v50 = *(v0 + 296);
  v6 = *(v0 + 256);
  if (*(v0 + 616))
  {
    v7 = 0x8000000000095F70;
  }

  else
  {
    v7 = 0xEE00656D6F482E65;
  }

  if (*(v0 + 616))
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x6C7070612E6D6F63;
  }

  v9 = sub_8CA0C();
  v11 = v10;

  *(v0 + 160) = v8;
  *(v0 + 168) = v7;
  sub_8B05C();
  v12 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  *(v0 + 176) = v9;
  *(v0 + 184) = v11;
  sub_8B05C();
  sub_1151C(v3, &qword_C3B58, &unk_94770);
  swift_storeEnumTagMultiPayload();
  sub_6270(v4, 0, 1, v6);
  sub_83B3C(v4, v3);
  sub_8BC6C();

  sub_1151C(v50, &qword_C1CE0, &unk_91EC0);
  v13 = *(v0 + 384);
  *(v0 + 528) = v13;
  v14 = *(v0 + 256);
  sub_83A14(*(v0 + 352), *(v0 + 336));
  sub_8447C();
  if (v15)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v16 = sub_8B8FC();
    sub_60BD8(v16);
    v17 = sub_8B8EC();
    sub_844C0(v17);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v18 = sub_44464();
    v19 = sub_84600(v18);
    sub_84568(v19, xmmword_8E860);
    v20 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v21 = v13;
    v22 = swift_task_alloc();
    v23 = sub_844A0(v22);
    *v23 = v24;
    sub_843A0(v23);
    sub_711D0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v26, v27, v28, v29);
  }

  else
  {
    sub_84574();
    v30 = sub_8B8FC();
    sub_60BD8(v30);
    v31 = sub_8B8EC();
    sub_84444(v31);
    sub_843C8();
    v34 = sub_83BAC(v32, 255, v33);
    v35 = sub_8464C(v34);
    sub_8470C(v35);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v36 = sub_44464();
    v37 = sub_845F4(v36);
    sub_84568(v37, xmmword_8E860);
    v38 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v39 = v13;
    v40 = swift_task_alloc();
    v41 = sub_844B0(v40);
    *v41 = v42;
    sub_84378(v41);
    sub_8441C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v43, v44, v45, v46, v47, v48);
  }
}

uint64_t sub_81AC8()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v7 = *(v6 + 456);
  v8 = *v2;
  sub_E6F8();
  *v9 = v8;
  *(v4 + 464) = v0;

  if (!v0)
  {
    *(v4 + 472) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_81BCC()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 472);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v6 = sub_84600(v5);
    sub_84568(v6, xmmword_8E860);
    v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v24 = sub_44464();
    v25 = sub_845F4(v24);
    sub_84568(v25, xmmword_8E860);
    v26 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_81D90()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v7 = *(v6 + 480);
  v8 = *v2;
  sub_E6F8();
  *v9 = v8;
  *(v4 + 488) = v0;

  if (!v0)
  {
    *(v4 + 496) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_81E94()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 496);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v6 = sub_84600(v5);
    sub_84568(v6, xmmword_8E860);
    v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v24 = sub_44464();
    v25 = sub_845F4(v24);
    sub_84568(v25, xmmword_8E860);
    v26 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_82058()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v7 = *(v6 + 504);
  v8 = *v2;
  sub_E6F8();
  *v9 = v8;
  *(v4 + 512) = v0;

  if (!v0)
  {
    *(v4 + 520) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_8215C()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 520);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v6 = sub_84600(v5);
    sub_84568(v6, xmmword_8E860);
    v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v24 = sub_44464();
    v25 = sub_845F4(v24);
    sub_84568(v25, xmmword_8E860);
    v26 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_82320()
{
  sub_6608();
  sub_E884();
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[67];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  sub_65B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_82440()
{
  v1 = v0[66];
  v2 = v0[44];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_1151C(v2, &qword_C3B58, &unk_94770);

  sub_84618();

  sub_65A0();

  return v3();
}

uint64_t sub_82540()
{
  sub_152A0();
  sub_E884();
  v2 = v1;
  sub_4DF58();
  *v3 = v2;
  v5 = v4[72];
  v6 = v4[71];
  v7 = v4[70];
  v8 = *v0;
  sub_E6F8();
  *v9 = v8;

  sub_2714((v2 + 16));
  sub_65B8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_82668()
{
  v1 = v0[66];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  sub_83AE8(v0[33], type metadata accessor for HomeCommunicationSnippetModel);
  (*(v4 + 8))(v3, v5);
  sub_1151C(v2, &qword_C3B58, &unk_94770);

  sub_84618();

  sub_65A0();

  return v6();
}

uint64_t sub_8278C()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 600);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 608) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_8289C()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 608);
  v2 = *(v0 + 617);
  v3 = *(v0 + 584);

  if (v2)
  {
  }

  sub_844D0();
  sub_8447C();
  if (v4)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v5 = sub_8B8FC();
    sub_60BD8(v5);
    v6 = sub_8B8EC();
    sub_844C0(v6);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v7 = sub_44464();
    v8 = sub_84600(v7);
    sub_84568(v8, xmmword_8E860);
    v9 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v10 = v1;
    v11 = swift_task_alloc();
    v12 = sub_844A0(v11);
    *v12 = v13;
    sub_843A0(v12);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v14, v15, v16, v17, v18);
  }

  else
  {
    sub_84574();
    v20 = sub_8B8FC();
    sub_60BD8(v20);
    v21 = sub_8B8EC();
    sub_84444(v21);
    sub_843C8();
    v24 = sub_83BAC(v22, 255, v23);
    v25 = sub_8464C(v24);
    sub_8470C(v25);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v26 = sub_44464();
    v27 = sub_845F4(v26);
    sub_84568(v27, xmmword_8E860);
    v28 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v29 = v1;
    v30 = swift_task_alloc();
    v31 = sub_844B0(v30);
    *v31 = v32;
    sub_84378(v31);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v33, v34, v35, v36, v37, v38);
  }
}

uint64_t sub_82A78()
{
  sub_60C80();
  sub_4DFB4();
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = *(v0 + 617);
  v3 = *(v0 + 584);

  if (v2)
  {
  }

  *(v0 + 528) = v1;
  v4 = *(v0 + 336);
  v5 = *(v0 + 256);
  sub_83A14(*(v0 + 352), v4);
  if (sub_3364(v4, 1, v5) == 1)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v6 = sub_8B8FC();
    sub_E824(v6);
    v7 = sub_8B8EC();
    sub_844C0(v7);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v8 = sub_44464();
    *(v0 + 544) = v8;
    *(v8 + 16) = xmmword_8E860;
    *(v8 + 32) = v1;
    v9 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v10 = v1;
    v11 = swift_task_alloc();
    v12 = sub_844A0(v11);
    *v12 = v13;
    sub_843A0(v12);
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v14, v15, v16, v17, v18);
  }

  else
  {
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    sub_83A84(*(v0 + 336), v20);
    v22 = sub_8B8FC();
    sub_E824(v22);
    v23 = sub_8B8EC();
    *(v0 + 560) = v23;
    *(v0 + 208) = v23;
    *(v0 + 40) = v21;
    sub_843C8();
    v26 = sub_83BAC(v24, 255, v25);
    v27 = sub_8464C(v26);
    sub_26984(v20, v27);
    sub_2664(&qword_C0690, &unk_8EBF0);
    v28 = sub_44464();
    *(v0 + 568) = v28;
    *(v28 + 16) = xmmword_8E860;
    *(v28 + 32) = v1;
    v29 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v30 = v1;
    v31 = swift_task_alloc();
    v32 = sub_844B0(v31);
    *v32 = v33;
    sub_84378(v32);
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v34, v35, v36, v37, v38, v39);
  }
}

void *sub_83448()
{
  sub_83BF4(v0[2]);
  sub_2714(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return v0;
}

uint64_t sub_83490()
{
  sub_83448();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_834E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_8350C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_835BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_83610(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2A0;

  return sub_80948(a1);
}

uint64_t sub_836AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedDialogFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_836E4()
{
  result = qword_C3AD8;
  if (!qword_C3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AD8);
  }

  return result;
}

unint64_t sub_83738()
{
  result = qword_C3AE0;
  if (!qword_C3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AE0);
  }

  return result;
}

unint64_t sub_8378C()
{
  result = qword_C3AE8;
  if (!qword_C3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AE8);
  }

  return result;
}

unint64_t sub_837E0()
{
  result = qword_C3AF0;
  if (!qword_C3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AF0);
  }

  return result;
}

unint64_t sub_83834()
{
  result = qword_C3AF8;
  if (!qword_C3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AF8);
  }

  return result;
}

unint64_t sub_83888()
{
  result = qword_C3B10;
  if (!qword_C3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B10);
  }

  return result;
}

uint64_t sub_838DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C2408, &unk_92390);
    sub_83BAC(a2, 255, &type metadata accessor for SpeakableString);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8397C()
{
  sub_6608();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_E2A0;

  return sub_80B5C(v3, v0);
}

uint64_t sub_83A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3B58, &unk_94770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_83A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_11580(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_83B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3B58, &unk_94770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83BAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_83BF4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsupportedDialogFlow.Reason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnsupportedDialogFlow.Reason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x83D58);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedDialogFlow.Reason.UnsupportedRecipientsNoTargetFoundCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x83E3CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_83EA8()
{
  result = qword_C3B60;
  if (!qword_C3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B60);
  }

  return result;
}

unint64_t sub_83F00()
{
  result = qword_C3B68;
  if (!qword_C3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B68);
  }

  return result;
}

unint64_t sub_83F58()
{
  result = qword_C3B70;
  if (!qword_C3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B70);
  }

  return result;
}

unint64_t sub_83FB0()
{
  result = qword_C3B78;
  if (!qword_C3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B78);
  }

  return result;
}

unint64_t sub_84008()
{
  result = qword_C3B80;
  if (!qword_C3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B80);
  }

  return result;
}

unint64_t sub_84060()
{
  result = qword_C3B88;
  if (!qword_C3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B88);
  }

  return result;
}

unint64_t sub_840B8()
{
  result = qword_C3B90;
  if (!qword_C3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B90);
  }

  return result;
}

unint64_t sub_84110()
{
  result = qword_C3B98;
  if (!qword_C3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B98);
  }

  return result;
}

unint64_t sub_84168()
{
  result = qword_C3BA0;
  if (!qword_C3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BA0);
  }

  return result;
}

unint64_t sub_841C0()
{
  result = qword_C3BA8;
  if (!qword_C3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BA8);
  }

  return result;
}

unint64_t sub_84218()
{
  result = qword_C3BB0;
  if (!qword_C3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BB0);
  }

  return result;
}

unint64_t sub_84270()
{
  result = qword_C3BB8;
  if (!qword_C3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BB8);
  }

  return result;
}

unint64_t sub_842C8()
{
  result = qword_C3BC0;
  if (!qword_C3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BC0);
  }

  return result;
}

unint64_t sub_84320()
{
  result = qword_C3BC8;
  if (!qword_C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BC8);
  }

  return result;
}

uint64_t sub_84378(uint64_t a1)
{
  *(a1 + 8) = sub_82540;
  v2 = *(v1 + 328);
  return *(v1 + 216);
}

uint64_t sub_843A0(uint64_t a1)
{
  *(a1 + 8) = sub_82320;
  v2 = *(v1 + 328);
  return *(v1 + 216);
}

uint64_t sub_84444(uint64_t result)
{
  v1[70] = result;
  v1[26] = result;
  v1[5] = v2;
  return result;
}

uint64_t sub_84458()
{
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];

  return swift_getErrorValue();
}

uint64_t sub_844C0(uint64_t result)
{
  *(v1 + 536) = result;
  *(v1 + 200) = result;
  return result;
}

uint64_t sub_844D0()
{
  v0[66] = v1;
  v3 = v0[44];
  v4 = v0[32];
  v5 = v0[42];

  return sub_83A14(v3, v5);
}

uint64_t sub_844F4()
{
  sub_2714(v0);
}

uint64_t sub_84528(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_84548(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

__n128 *sub_84568(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_84574()
{
  v2 = v0[42];
  v3 = v0[32];
  v4 = v0[33];

  return sub_83A84(v2, v4);
}

uint64_t sub_84590()
{
  v2 = *(v0 + 360);

  return swift_slowAlloc();
}

uint64_t sub_845CC()
{

  return sub_8D3FC();
}

uint64_t sub_84618()
{
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
}

uint64_t *sub_8464C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_E5DC((v1 + 16));
}

uint64_t sub_84664(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_862D8(a1, a2, &a9);
}

uint64_t sub_8467C()
{

  return sub_15350(v0);
}

uint64_t sub_84694()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[19];

  return sub_8D4BC();
}

uint64_t sub_846AC(float a1)
{
  *v1 = a1;

  return sub_7F37C(v2);
}

uint64_t sub_846C4()
{
}

uint64_t sub_846DC()
{
  v2 = *(v0 + 224);

  return sub_8CD0C();
}

uint64_t sub_846F4()
{

  return sub_83AE8(v1, v0);
}

uint64_t sub_8470C(uint64_t a1)
{

  return sub_26984(v1, a1);
}

uint64_t sub_84724()
{
}

uint64_t sub_84770(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  sub_65B8();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_8479C()
{
  v38 = v0;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_8CD0C();
  v0[29] = sub_33F4(v2, qword_C3DF8);

  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    sub_1D358();
    v6 = sub_868E0();
    v37 = v6;
    *v1 = 136315138;
    v7 = sub_261EC(*(v5 + 16));
    v9 = sub_862D8(v7, v8, &v37);

    *(v1 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "#UnsupportedFlowOutputFactory makeUnsupportedOutput for reason=%s", v1, 0xCu);
    sub_2714(v6);

    sub_1D214();
  }

  v10 = v0[28];
  switch(*(v10 + 16))
  {
    case 1:
      v28 = *(v10 + 72);
      v29 = swift_task_alloc();
      v0[31] = v29;
      *v29 = v0;
      sub_443E0(v29);
      sub_8699C();

      result = sub_4BF78();
      break;
    case 2:
      v18 = *(v10 + 72);
      v19 = swift_task_alloc();
      v0[34] = v19;
      *v19 = v0;
      sub_443E0(v19);
      sub_8699C();

      result = sub_4D3A8();
      break;
    case 3:
      v21 = *(v10 + 72);
      v22 = swift_task_alloc();
      v0[36] = v22;
      *v22 = v0;
      v22[1] = sub_85AB0;
      sub_8699C();

      result = sub_4D8F4(v23);
      break;
    case 4:
      v15 = *(v10 + 80);
      v16 = swift_task_alloc();
      v0[32] = v16;
      *v16 = v0;
      sub_443E0(v16);
      sub_8699C();

      result = sub_3BBD0();
      break;
    case 5:
      v31 = *(v10 + 88);
      v32 = swift_task_alloc();
      v0[33] = v32;
      *v32 = v0;
      sub_443E0(v32);
      sub_8699C();

      result = sub_727E0();
      break;
    case 6:
      v34 = *(v10 + 72);
      v35 = swift_task_alloc();
      v0[35] = v35;
      *v35 = v0;
      sub_443E0(v35);
      sub_8699C();

      result = sub_4C878();
      break;
    case 7:
      v25 = *(v10 + 72);
      v26 = swift_task_alloc();
      v0[37] = v26;
      *v26 = v0;
      sub_443E0(v26);
      sub_8699C();

      result = sub_4DA30();
      break;
    default:
      v11 = *(v10 + 72);
      v12 = swift_task_alloc();
      v0[30] = v12;
      *v12 = v0;
      sub_443E0(v12);
      sub_8699C();

      result = sub_4D44C();
      break;
  }

  return result;
}

uint64_t sub_84C70()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_60C10();
  v6 = *(v5 + 240);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_84D84()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 24));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_84ED0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_60C10();
  v6 = *(v5 + 248);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_84FE4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 48));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85130()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_60C10();
  v6 = *(v5 + 256);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_85244()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 72));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85390()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_60C10();
  v6 = *(v5 + 264);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_854A4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 96));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_855F0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_60C10();
  v6 = *(v5 + 272);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_85704()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 120));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85850()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  sub_60C10();
  v6 = *(v5 + 280);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_85964()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 144));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85AB0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  sub_60C10();
  v6 = *(v5 + 288);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_85BC4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 168));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85D10()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  sub_60C10();
  v6 = *(v5 + 296);
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
    sub_65B8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_85E24()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 192));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v7, v8, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v9 = sub_869B4();
  sub_868FC(v9);
  v10 = sub_8B8EC();
  sub_8687C(v10);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v11 = sub_44464();
  v12 = sub_8696C(v11);
  sub_86990(v12, xmmword_8E860);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v15 = sub_8689C(v14);
  *v15 = v16;
  sub_86844(v15);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

uint64_t sub_85F70()
{
  sub_6608();
  sub_E884();
  v2 = v1[41];
  v3 = v1[40];
  v4 = v1[39];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  sub_65B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_86090()
{
  sub_6608();

  sub_65A0();

  return v1();
}

uint64_t *sub_860EC()
{
  sub_2714(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  v5 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin28UnsupportedFlowOutputFactory_completionOutputManifest;
  v6 = sub_8BCBC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_86174()
{
  sub_860EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for UnsupportedFlowOutputFactory()
{
  result = qword_C3BF8;
  if (!qword_C3BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_86220()
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

uint64_t sub_862D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_65B8();
  v9 = sub_86398(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1412C(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_2714(v14);
  return v10;
}

unint64_t sub_86398(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_86498(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_8D2BC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_86498(uint64_t a1, unint64_t a2)
{
  v4 = sub_864E4(a1, a2);
  sub_865FC(&off_B6D80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_864E4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_8CF8C())
  {
    result = sub_866E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_8D24C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_8D2BC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_865FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_86750(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_866E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2664(&qword_C3CB8, &unk_94D60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_86750(char *result, int64_t a2, char a3, char *a4)
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
    sub_2664(&qword_C3CB8, &unk_94D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8687C(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 208) = result;
  return result;
}

uint64_t sub_868AC()
{
  sub_2714(v0);
}

uint64_t sub_868E0()
{

  return swift_slowAlloc();
}

uint64_t sub_868FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_86918(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_862D8(v1, v2, va);
}

__n128 *sub_86990(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_869B4()
{
  v2 = *(v0 + 224);

  return sub_8B8FC();
}

void sub_869CC()
{
}

id sub_869E4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 232);
  *(v1 + 304) = a1;

  return a1;
}

uint64_t sub_869FC()
{
}

_BYTE *storeEnumTagSinglePayload for UserNotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x86AE0);
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

unint64_t sub_86B1C()
{
  result = qword_C3CD0;
  if (!qword_C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CD0);
  }

  return result;
}

uint64_t sub_86B70(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B90A8;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

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

uint64_t sub_86BC4(char a1)
{
  if (a1)
  {
    return 0x79726576696C6564;
  }

  else
  {
    return 0x65636E756F6E6E61;
  }
}

uint64_t sub_86C34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_86B70(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_86C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_86BC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_86CA0()
{
  v0 = qword_C3CC0;

  return v0;
}

uint64_t sub_86CD8(uint64_t a1)
{
  v2 = sub_8711C();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_86D14(uint64_t a1)
{
  v2 = sub_8711C();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_86D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_86F58();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_86D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8711C();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_86E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_86F58();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_86E50()
{
  result = qword_C3CD8;
  if (!qword_C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CD8);
  }

  return result;
}

unint64_t sub_86EA8()
{
  result = qword_C3CE0;
  if (!qword_C3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CE0);
  }

  return result;
}

unint64_t sub_86F00()
{
  result = qword_C3CE8;
  if (!qword_C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CE8);
  }

  return result;
}

unint64_t sub_86F58()
{
  result = qword_C3CF0;
  if (!qword_C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CF0);
  }

  return result;
}

unint64_t sub_86FB0()
{
  result = qword_C3CF8;
  if (!qword_C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CF8);
  }

  return result;
}

unint64_t sub_87008()
{
  result = qword_C3D00;
  if (!qword_C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D00);
  }

  return result;
}

unint64_t sub_87060()
{
  result = qword_C3D08;
  if (!qword_C3D08)
  {
    sub_B9BC(&qword_C3D10, &qword_94ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D08);
  }

  return result;
}

unint64_t sub_870C8()
{
  result = qword_C3D18;
  if (!qword_C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D18);
  }

  return result;
}

unint64_t sub_8711C()
{
  result = qword_C3D20;
  if (!qword_C3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D20);
  }

  return result;
}

uint64_t sub_87174()
{
  v0 = 0;
  v1 = 0x73656D616ELL;
  v146 = sub_8C48C();
  v2 = sub_3488(v146);
  v138 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_9378();
  v132 = v6;
  sub_22ACC();
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  v148 = sub_8C1CC();
  v9 = sub_3488(v148);
  v145 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_9378();
  v137 = v13;
  sub_22ACC();
  v15 = __chkstk_darwin(v14);
  v17 = &v126 - v16;
  __chkstk_darwin(v15);
  v147 = &v126 - v18;
  sub_22ACC();
  __chkstk_darwin(v19);
  v21 = &v126 - v20;
  v22 = sub_2664(&qword_C3D28, &qword_94FB0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  sub_9378();
  v140 = v24;
  sub_22ACC();
  __chkstk_darwin(v25);
  v139 = (&v126 - v26);
  sub_22ACC();
  v28 = __chkstk_darwin(v27);
  v30 = &v126 - v29;
  __chkstk_darwin(v28);
  v149 = (&v126 - v31);
  sub_22ACC();
  __chkstk_darwin(v32);
  v34 = &v126 - v33;
  v150 = sub_8C1FC();
  v35 = sub_3488(v150);
  v135 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_9378();
  v131 = v39;
  sub_22ACC();
  __chkstk_darwin(v40);
  v143 = &v126 - v41;
  sub_8C19C();
  v42 = sub_8C78C();

  v43 = sub_5A2B4(0x73656D616ELL, 0xE500000000000000, v42);

  if (!v43)
  {
    if (qword_BF818 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

  v44 = sub_2D3B4(v43);
  v133 = v30;
  v129 = v17;
  v130 = v21;
  if (v44)
  {
    v45 = v44;
    v151 = &_swiftEmptyArrayStorage;
    sub_55244(0, v44 & ~(v44 >> 63), 0);
    if (v45 < 0)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
LABEL_13:
      v54 = sub_8CD0C();
      sub_33F4(v54, qword_C3DF8);
      v55 = sub_8CCEC();
      v56 = sub_8D11C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v151 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_862D8(v1, 0xE500000000000000, &v151);
        _os_log_impl(&dword_0, v55, v56, "#UsoEntity_common_UserEntity+SiriHomeCommunication no entity spans for attribute %s.", v57, 0xCu);
        sub_2714(v58);
      }

      return 0;
    }

    v144 = 0;
    v46 = 0;
    v1 = v151;
    v47 = v43 & 0xC000000000000001;
    v48 = v43;
    v49 = v45;
    do
    {
      if (v47)
      {
        sub_8D27C();
      }

      else
      {
        v50 = *(v43 + 8 * v46 + 32);
      }

      v51 = sub_8C72C();

      v151 = v1;
      v53 = *(v1 + 16);
      v52 = *(v1 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_55244((v52 > 1), v53 + 1, 1);
        v1 = v151;
      }

      ++v46;
      *(v1 + 16) = v53 + 1;
      *(v1 + 8 * v53 + 32) = v51;
      v43 = v48;
    }

    while (v49 != v46);

    v0 = v144;
  }

  else
  {

    v1 = &_swiftEmptyArrayStorage;
  }

  v59 = 0;
  v60 = *(v1 + 16);
  v142 = (v135 + 32);
  v144 = &_swiftEmptyArrayStorage;
  v61 = v150;
  while (1)
  {
    if (v60 == v59)
    {

      v71 = v133;
      sub_87EAC(v144, v133);

      v72 = v139;
      sub_888B8(v71, v139);
      if (sub_3364(v72, 1, v61) == 1)
      {
        sub_92C0(v72, &qword_C3D28, &qword_94FB0);
        v73 = v140;
      }

      else
      {
        v74 = sub_8A16C();
        (*(v135 + 8))(v72, v150);
        v61 = v150;
        v73 = v140;
        if (v74 != 2)
        {
          if (v74)
          {
            v91 = 0x6E69685F6D6F6F72;
          }

          else
          {
            v91 = 0x69685F6573756F68;
          }

          sub_92C0(v71, &qword_C3D28, &qword_94FB0);
          return v91;
        }
      }

      sub_888B8(v71, v73);
      if (sub_3364(v73, 1, v61) == 1)
      {
        sub_92C0(v71, &qword_C3D28, &qword_94FB0);
        v75 = v73;
LABEL_61:
        sub_92C0(v75, &qword_C3D28, &qword_94FB0);
        return 0;
      }

      (*v142)(v131, v73, v61);
      v76 = sub_8C1DC();
      v77 = 0;
      v136 = *(v76 + 16);
      v78 = v146;
      v144 = (v145 + 16);
      v134 = enum case for IdentifierNamespace.nsSemanticValue(_:);
      v142 = (v138 + 8);
      v143 = (v138 + 104);
      v149 = (v145 + 8);
      while (1)
      {
        if (v136 == v77)
        {

          v92 = sub_8A140();
          v93(v92, v150);
          v75 = v133;
          goto LABEL_61;
        }

        if (v77 >= *(v76 + 16))
        {
          goto LABEL_70;
        }

        v79 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v80 = v76;
        v138 = *(v145 + 72);
        v140 = *(v145 + 16);
        v140(v147, v76 + v79 + v138 * v77, v148);
        v81 = sub_8C1BC();
        v83 = v82;
        v84 = v141;
        v139 = *v143;
        (v139)(v141, v134, v78);
        v85 = sub_8C47C();
        v87 = v86;
        v88 = v84;
        v89 = *v142;
        (*v142)(v88, v78);
        if (v81 == v85 && v83 == v87)
        {
          break;
        }

        v1 = sub_8D45C();

        if (v1)
        {
          goto LABEL_48;
        }

        (*v149)(v147, v148);
        ++v77;
        v76 = v80;
      }

LABEL_48:

      v94 = v130;
      v1 = v145 + 32;
      v95 = v148;
      v128 = *(v145 + 32);
      v128(v130, v147, v148);
      v96 = sub_8C1AC();
      v98 = v97;
      v145 = v1;
      v141 = *(v1 - 24);
      (v141)(v94, v95);
      v99 = v133;
      v147 = v89;
      if (!v98)
      {
        v114 = sub_8A140();
        v116 = v150;
LABEL_60:
        v115(v114, v116);
        v75 = v99;
        goto LABEL_61;
      }

      v127 = v96;
      v130 = v98;
      v100 = sub_8C1DC();
      v101 = 0;
      v136 = *(v100 + 16);
      v102 = v100 + v79;
      v134 = enum case for IdentifierNamespace.nsHomeKitEntityType(_:);
      while (1)
      {
        v103 = v150;
        if (v136 == v101)
        {

          v114 = sub_8A140();
          v116 = v103;
          goto LABEL_60;
        }

        if (v101 >= *(v100 + 16))
        {
          goto LABEL_71;
        }

        v104 = v102;
        (v140)(v137);
        v105 = sub_8C1BC();
        v107 = v106;
        v108 = v132;
        v1 = v146;
        (v139)(v132, v134, v146);
        v109 = sub_8C47C();
        v111 = v110;
        (v147)(v108, v1);
        if (v105 == v109 && v107 == v111)
        {
          v118 = v127;

          goto LABEL_66;
        }

        v113 = sub_8D45C();

        if (v113)
        {
          break;
        }

        (v141)(v137, v148);
        v102 = v104 + v138;
        ++v101;
        v99 = v133;
      }

      v118 = v127;
LABEL_66:

      v119 = v133;
      v120 = v129;
      v121 = v148;
      v128(v129, v137, v148);
      sub_8C1AC();
      v123 = v122;
      (v141)(v120, v121);
      v124 = sub_8A140();
      v125(v124, v150);
      sub_92C0(v119, &qword_C3D28, &qword_94FB0);
      if (v123)
      {
        return v118;
      }

      return 0;
    }

    if (v59 >= *(v1 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v151 = *(v1 + 8 * v59 + 32);
    swift_bridgeObjectRetain_n();
    v62 = sub_8A154();
    sub_88788(v62, 0);
    if (v0)
    {
      break;
    }

    v63 = v149;
    sub_87F34(v151, v149);

    sub_88848(v63, v34);

    v61 = v150;
    if (sub_3364(v34, 1, v150) == 1)
    {
      sub_92C0(v34, &qword_C3D28, &qword_94FB0);
      ++v59;
    }

    else
    {
      v64 = *v142;
      (*v142)(v143, v34, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v144 + 2);
        sub_76480();
        v144 = v69;
      }

      v65 = *(v144 + 2);
      if (v65 >= *(v144 + 3) >> 1)
      {
        sub_76480();
        v144 = v70;
      }

      ++v59;
      v66 = v143;
      v67 = v144;
      *(v144 + 2) = v65 + 1;
      v61 = v150;
      v64(&v67[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v65], v66, v150);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_87EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v3 = sub_8A154();
  sub_88788(v3, 0);
  sub_87F34(a1, a2);
}

uint64_t sub_87F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_8C1FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = (v4 + 8);
  while (v9 != v8)
  {
    (*(v4 + 16))(v7, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    if (sub_8A16C() != 2)
    {
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v20 = sub_8CD0C();
      sub_33F4(v20, qword_C3DF8);
      v21 = sub_8CCEC();
      v22 = sub_8D11C();
      v23 = os_log_type_enabled(v21, v22);
      v14 = v36;
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v21, v22, "#UsoEntity_common_UserEntity+SiriHomeCommunication selecting span for house or room hint.", v24, 2u);
      }

      goto LABEL_29;
    }

    v11 = sub_8A3C8();
    if (v12)
    {
      v13 = v12;
      v37 = v11;
      switch(sub_8A6E4())
      {
        case 1u:
          v25 = "homeAutomationRoom";
          goto LABEL_21;
        case 2u:
          v25 = "homeAutomationZone";
LABEL_21:
          v26 = (v25 - 32);
          v27 = 0xD000000000000012;
          break;
        case 3u:
          (*v10)(v7, v3);

          goto LABEL_8;
        default:
          v27 = 0xD00000000000001BLL;
          v26 = "oom_hint";
          break;
      }

      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v28 = sub_8CD0C();
      sub_33F4(v28, qword_C3DF8);

      v29 = sub_8CCEC();
      v30 = sub_8D11C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v31 = 136315394;
        v32 = sub_862D8(v37, v13, &v38);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v33 = sub_862D8(v27, v26 | 0x8000000000000000, &v38);

        *(v31 + 14) = v33;
        _os_log_impl(&dword_0, v29, v30, "#UsoEntity_common_UserEntity+SiriHomeCommunication Selected node name=%s, type=%s.", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v14 = v36;
LABEL_29:
      (*(v4 + 32))(v14, v7, v3);
      v19 = 0;
      return sub_6270(v14, v19, 1, v3);
    }

    (*v10)(v7, v3);
LABEL_8:
    ++v8;
  }

  v14 = v36;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v15 = sub_8CD0C();
  sub_33F4(v15, qword_C3DF8);
  v16 = sub_8CCEC();
  v17 = sub_8D11C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#UsoEntity_common_UserEntity+SiriHomeCommunication no UsoEntitySpan correspond to a HomeAutomationTargetNode.", v18, 2u);
  }

  v19 = 1;
  return sub_6270(v14, v19, 1, v3);
}

BOOL sub_88458()
{
  v0 = sub_2664(&qword_C3D30, &qword_94FB8);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  if ((sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) != 0 && (sub_8ABF0() & 1) != 0 && (sub_8ABF0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) != 0 && (sub_8ABF0() & 1) == 0 && (sub_8ABF0() & 1) != 0 || (sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) == 0)
  {
    return 1;
  }

  if (sub_8AA60() & 1) == 0 && (sub_8AA60())
  {
    return 0;
  }

  if (sub_8A16C() != 2 && sub_8A16C() == 2)
  {
    return 1;
  }

  if (sub_8A16C() == 2 && sub_8A16C() != 2)
  {
    return 0;
  }

  if ((sub_8ACD4() & 1) != 0 && (sub_8ACD4() & 1) == 0)
  {
    return 1;
  }

  if (sub_8ACD4() & 1) == 0 && (sub_8ACD4())
  {
    return 0;
  }

  if ((sub_8ADA8() & 1) != 0 && (sub_8ADA8() & 1) == 0)
  {
    return 1;
  }

  if (sub_8ADA8() & 1) == 0 && (sub_8ADA8())
  {
    return 0;
  }

  sub_8C1EC();
  v8 = sub_8C77C();
  if (sub_3364(v6, 1, v8) == 1)
  {
    sub_92C0(v6, &qword_C3D30, &qword_94FB8);
    v9 = -1.0;
  }

  else
  {
    v10 = sub_8C76C();
    (*(*(v8 - 8) + 8))(v6, v8);
    if ((v10 & 0x100000000) != 0)
    {
      v9 = -1.0;
    }

    else
    {
      v9 = *&v10;
    }
  }

  sub_8C1EC();
  if (sub_3364(v4, 1, v8) == 1)
  {
    sub_92C0(v4, &qword_C3D30, &qword_94FB8);
    v11 = -1.0;
  }

  else
  {
    v12 = sub_8C76C();
    (*(*(v8 - 8) + 8))(v4, v8);
    v11 = -1.0;
    if ((v12 & 0x100000000) == 0)
    {
      v11 = *&v12;
    }
  }

  return v11 <= v9;
}

Swift::Int sub_88788(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_8C1FC() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_8A12C(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = *(v7 + 16);
  result = sub_88928(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_88848(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D28, &qword_94FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_888B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D28, &qword_94FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_88928(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = sub_8D42C(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_8C1FC();
        v9 = sub_8D07C();
        v9[2] = v8;
      }

      v10 = *(sub_8C1FC() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_88D54(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_88A68(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_88A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_8C1FC();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v55 = &v39 - v16;
  result = __chkstk_darwin(v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_88D54(char **a1, uint64_t a2, char **a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v170 = a4;
  v171 = a5;
  v151 = a1;
  v8 = sub_8C1FC();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v156 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v143 - v17;
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v143 - v21;
  result = __chkstk_darwin(v20);
  v168 = v26;
  v169 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_104:
    v22 = *v151;
    if (*v151)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_106;
    }

    goto LABEL_149;
  }

  v150 = &v143 - v25;
  v158 = v24;
  v159 = v18;
  v154 = v28;
  v155 = v27;
  v146 = a6;
  v30 = 0;
  v165 = v26 + 16;
  v166 = (v26 + 8);
  v167 = result;
  v162 = (v26 + 32);
  v31 = &_swiftEmptyArrayStorage;
  v148 = v22;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v30 + 1 < v29)
    {
      v163 = v29;
      v34 = *v169;
      v35 = *(v26 + 72);
      v153 = v30 + 1;
      v36 = &v34[v35 * v33];
      v37 = *(v26 + 16);
      v38 = v30;
      v39 = v167;
      v37(v150, v36, v167);
      v164 = v34;
      v160 = v37;
      v37(v22, &v34[v35 * v38], v39);
      v40 = v150;
      v41 = v172;
      LODWORD(v161) = v170(v150, v22);
      v172 = v41;
      if (v41)
      {
        v142 = *v166;
        (*v166)(v22, v39);
        (v142)(v40, v39);
      }

      v149 = v31;
      v42 = *v166;
      (*v166)(v22, v39);
      v157 = v42;
      result = (v42)(v40, v39);
      v147 = v38;
      v43 = v38 + 2;
      v44 = v163;
      v45 = &v164[v35 * (v38 + 2)];
      v33 = v153;
      v46 = v35;
      v164 = v35;
      while (1)
      {
        v47 = v33;
        v48 = v43;
        if (v33 + 1 >= v44)
        {
          break;
        }

        v22 = v158;
        v49 = v167;
        v50 = v160;
        (v160)(v158, v45, v167);
        v51 = v159;
        v50(v159, v36, v49);
        v52 = v172;
        v53 = v170(v22, v51);
        v172 = v52;
        if (v52)
        {
          v140 = v157;
          (v157)(v51, v49);
          v140(v22, v49);
        }

        v54 = v53;
        v55 = v47;
        v56 = v36;
        v57 = v48;
        v58 = v157;
        (v157)(v51, v49);
        result = v58(v22, v49);
        v48 = v57;
        v59 = v56;
        v47 = v55;
        v44 = v163;
        v46 = v164;
        v45 = &v164[v45];
        v36 = &v164[v59];
        v33 = v55 + 1;
        v43 = v48 + 1;
        if ((v161 ^ v54))
        {
          goto LABEL_11;
        }
      }

      v33 = v44;
LABEL_11:
      if (v161)
      {
        if (v33 < v147)
        {
          goto LABEL_143;
        }

        if (v147 > v47)
        {
          v26 = v168;
          v31 = v149;
          v32 = v147;
          goto LABEL_34;
        }

        if (v44 >= v48)
        {
          v60 = v48;
        }

        else
        {
          v60 = v44;
        }

        v61 = v46 * (v60 - 1);
        v62 = v46 * v60;
        v63 = v147 * v46;
        v153 = v33;
        v64 = v147;
        do
        {
          if (v64 != --v33)
          {
            v65 = *v169;
            if (!*v169)
            {
              goto LABEL_147;
            }

            v66 = v167;
            v22 = *v162;
            (*v162)(v152, &v65[v63], v167);
            v67 = v63 < v61 || &v65[v63] >= &v65[v62];
            if (v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v22)(&v65[v61], v152, v66);
            v46 = v164;
          }

          ++v64;
          v61 -= v46;
          v62 -= v46;
          v63 += v46;
        }

        while (v64 < v33);
        v26 = v168;
        v31 = v149;
        v33 = v153;
      }

      else
      {
        v26 = v168;
        v31 = v149;
      }

      v32 = v147;
    }

LABEL_34:
    v68 = v169[1];
    if (v33 >= v68)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v33, v32))
    {
      goto LABEL_139;
    }

    if (v33 - v32 >= v146)
    {
      goto LABEL_42;
    }

    v69 = (v32 + v146);
    if (__OFADD__(v32, v146))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return result;
    }

    if (v69 >= v68)
    {
      v69 = v169[1];
    }

    if (v69 < v32)
    {
      goto LABEL_142;
    }

    if (v33 != v69)
    {
      v149 = v31;
      v115 = *v169;
      v116 = *(v26 + 72);
      v164 = *(v26 + 16);
      v117 = &v115[v116 * (v33 - 1)];
      v161 = -v116;
      v147 = v32;
      v118 = (v32 - v33);
      v163 = v115;
      v143 = v116;
      v119 = &v115[v33 * v116];
      v144 = v69;
      do
      {
        v153 = v33;
        v145 = v119;
        v157 = v118;
        v120 = v118;
        v160 = v117;
        v121 = v117;
        v122 = v167;
        do
        {
          v123 = v154;
          v124 = v164;
          (v164)(v154, v119, v122);
          v125 = v155;
          v124(v155, v121, v122);
          v126 = v172;
          v127 = v170(v123, v125);
          v172 = v126;
          if (v126)
          {
            v141 = *v166;
            (*v166)(v125, v122);
            (v141)(v123, v122);
          }

          v128 = v127;
          v22 = v166;
          v129 = *v166;
          (*v166)(v125, v122);
          result = (v129)(v123, v122);
          if ((v128 & 1) == 0)
          {
            break;
          }

          if (!v163)
          {
            goto LABEL_146;
          }

          v22 = v162;
          v130 = *v162;
          v131 = v156;
          v122 = v167;
          (*v162)(v156, v119, v167);
          swift_arrayInitWithTakeFrontToBack();
          (v130)(v121, v131, v122);
          v121 += v161;
          v119 += v161;
          v67 = __CFADD__(v120++, 1);
        }

        while (!v67);
        v33 = v153 + 1;
        v117 = &v160[v143];
        v118 = v157 - 1;
        v119 = &v145[v143];
      }

      while (v153 + 1 != v144);
      v33 = v144;
      v31 = v149;
      v32 = v147;
    }

LABEL_42:
    if (v33 < v32)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_75F54(0, v31[2] + 1, 1, v31);
      v31 = result;
    }

    v71 = v31[2];
    v70 = v31[3];
    v72 = v71 + 1;
    v153 = v33;
    if (v71 >= v70 >> 1)
    {
      result = sub_75F54((v70 > 1), v71 + 1, 1, v31);
      v31 = result;
    }

    v31[2] = v72;
    v73 = (v31 + 4);
    v74 = &v31[2 * v71 + 4];
    v75 = v153;
    *v74 = v32;
    v74[1] = v75;
    if (!*v151)
    {
      goto LABEL_148;
    }

    if (v71)
    {
      break;
    }

LABEL_92:
    v26 = v168;
    v29 = v169[1];
    v30 = v153;
    v22 = v148;
    if (v153 >= v29)
    {
      goto LABEL_104;
    }
  }

  v22 = *v151;
  while (1)
  {
    v76 = v72 - 1;
    v77 = &v73[16 * v72 - 16];
    v78 = &v31[2 * v72];
    if (v72 >= 4)
    {
      v83 = &v73[16 * v72];
      v84 = *(v83 - 8);
      v85 = *(v83 - 7);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_126;
      }

      v88 = *(v83 - 6);
      v87 = *(v83 - 5);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_127;
      }

      v90 = v78[1];
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_129;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_132;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = *(v77 + 1);
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_137;
        }

        if (v81 < v107)
        {
          v76 = v72 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (v72 == 3)
    {
      v79 = v31[4];
      v80 = v31[5];
      v89 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      v82 = v89;
LABEL_63:
      if (v82)
      {
        goto LABEL_128;
      }

      v94 = *v78;
      v93 = v78[1];
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_131;
      }

      v98 = *(v77 + 1);
      v99 = v98 - *v77;
      if (__OFSUB__(v98, *v77))
      {
        goto LABEL_134;
      }

      if (__OFADD__(v96, v99))
      {
        goto LABEL_136;
      }

      if (v96 + v99 >= v81)
      {
        if (v81 < v99)
        {
          v76 = v72 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v72 < 2)
    {
      goto LABEL_130;
    }

    v101 = *v78;
    v100 = v78[1];
    v89 = __OFSUB__(v100, v101);
    v96 = v100 - v101;
    v97 = v89;
LABEL_78:
    if (v97)
    {
      goto LABEL_133;
    }

    v103 = *v77;
    v102 = *(v77 + 1);
    v89 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v89)
    {
      goto LABEL_135;
    }

    if (v104 < v96)
    {
      goto LABEL_92;
    }

LABEL_85:
    if (v76 - 1 >= v72)
    {
      break;
    }

    if (!*v169)
    {
      goto LABEL_144;
    }

    v108 = &v73[16 * v76 - 16];
    v109 = *v108;
    v110 = &v73[16 * v76];
    v111 = *(v110 + 1);
    v112 = v172;
    sub_898C8(&(*v169)[*(v168 + 72) * *v108], &(*v169)[*(v168 + 72) * *v110], &(*v169)[*(v168 + 72) * v111], v22, v170, v171);
    v172 = v112;
    if (v112)
    {
    }

    if (v111 < v109)
    {
      goto LABEL_120;
    }

    v113 = v31;
    v31 = v31[2];
    if (v76 > v31)
    {
      goto LABEL_121;
    }

    *v108 = v109;
    *(v108 + 1) = v111;
    if (v76 >= v31)
    {
      goto LABEL_122;
    }

    v72 = v31 - 1;
    result = memmove(&v73[16 * v76], v110 + 16, 16 * (v31 - v76 - 1));
    v113[2] = v31 - 1;
    v114 = v31 > 2;
    v31 = v113;
    if (!v114)
    {
      goto LABEL_92;
    }
  }

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
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_89EF8(v31);
  v31 = result;
LABEL_106:
  v132 = v31 + 2;
  v133 = v31[2];
  while (v133 >= 2)
  {
    if (!*v169)
    {
      goto LABEL_145;
    }

    v134 = v31;
    v135 = &v31[2 * v133];
    v31 = *v135;
    v136 = &v132[2 * v133];
    v137 = v136[1];
    v138 = v172;
    sub_898C8(&(*v169)[*(v168 + 72) * *v135], &(*v169)[*(v168 + 72) * *v136], &(*v169)[*(v168 + 72) * v137], v22, v170, v171);
    v172 = v138;
    if (v138)
    {
      break;
    }

    if (v137 < v31)
    {
      goto LABEL_123;
    }

    if (v133 - 2 >= *v132)
    {
      goto LABEL_124;
    }

    *v135 = v31;
    *(v135 + 1) = v137;
    v139 = *v132 - v133;
    if (*v132 < v133)
    {
      goto LABEL_125;
    }

    v133 = *v132 - 1;
    result = memmove(v136, v136 + 2, 16 * v139);
    *v132 = v133;
    v31 = v134;
  }
}

uint64_t sub_898C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v76 = a6;
  v81 = a5;
  v12 = sub_8C1FC();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v73 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v69 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v69 - v20;
  result = __chkstk_darwin(v19);
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v27 = a2 - a1 == 0x8000000000000000 && v26 == -1;
  if (v27)
  {
    goto LABEL_66;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_67;
  }

  v87 = a1;
  v86 = a4;
  v79 = (v23 + 16);
  v80 = (v23 + 8);
  v30 = v28 / v26;
  if ((a2 - a1) / v26 >= v28 / v26)
  {
    v72 = v18;
    sub_7671C(a2, v28 / v26, a4);
    v46 = a2;
    v47 = (a4 + v30 * v26);
    v48 = -v26;
    v49 = v47;
    v82 = a1;
    v71 = a4;
    v74 = -v26;
LABEL_38:
    i = (v46 + v48);
    v69 = v49;
    v50 = v49;
    v83 = v46;
    while (1)
    {
      if (v47 <= a4)
      {
        v87 = v46;
        v85 = v50;
        goto LABEL_64;
      }

      if (v46 <= a1)
      {
        v87 = v46;
        v67 = v69;
        goto LABEL_63;
      }

      v51 = a3;
      v70 = v50;
      v84 = v7;
      v52 = *v79;
      v53 = v72;
      v77 = &v47[v48];
      v78 = v47;
      v52(v72);
      v54 = v73;
      (v52)(v73, i, v12);
      v55 = v84;
      v56 = v81(v53, v54);
      v84 = v55;
      if (v55)
      {
        break;
      }

      v57 = v56;
      v58 = v51 + v48;
      v59 = *v80;
      (*v80)(v54, v12);
      v59(v53, v12);
      if (v57)
      {
        if (v51 < v83 || v58 >= v83)
        {
          v64 = i;
          swift_arrayInitWithTakeFrontToBack();
          v46 = v64;
          a1 = v82;
          v7 = v84;
          a4 = v71;
          a3 = v58;
          v49 = v70;
          v48 = v74;
          v47 = v78;
        }

        else
        {
          v27 = v51 == v83;
          v48 = v74;
          v65 = i;
          v46 = i;
          a1 = v82;
          v7 = v84;
          a4 = v71;
          a3 = v58;
          v49 = v70;
          v47 = v78;
          if (!v27)
          {
            v49 = v70;
            swift_arrayInitWithTakeBackToFront();
            v47 = v78;
            v46 = v65;
          }
        }

        goto LABEL_38;
      }

      if (v51 < v78 || v58 >= v78)
      {
        v61 = v77;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v58;
        v47 = v61;
        v50 = v61;
        a1 = v82;
        v46 = v83;
        v7 = v84;
        a4 = v71;
        v48 = v74;
      }

      else
      {
        v47 = v77;
        v50 = v77;
        a3 = v58;
        a1 = v82;
        v46 = v83;
        v7 = v84;
        a4 = v71;
        v48 = v74;
        if (v78 != v51)
        {
          v62 = v77;
          swift_arrayInitWithTakeBackToFront();
          v46 = v83;
          a3 = v58;
          v47 = v62;
          v50 = v62;
        }
      }
    }

    v68 = *v80;
    (*v80)(v54, v12);
    v68(v53, v12);
    v87 = v83;
    v67 = v70;
LABEL_63:
    v85 = v67;
  }

  else
  {
    v77 = &v69 - v24;
    sub_7671C(a1, (a2 - a1) / v26, a4);
    v31 = a2;
    v78 = a4 + (a2 - a1) / v26 * v26;
    v85 = v78;
    v74 = v26;
    for (i = v21; a4 < v78 && v31 < a3; v21 = i)
    {
      v82 = a1;
      v83 = v31;
      v33 = *v79;
      v34 = v77;
      (*v79)(v77);
      (v33)(v21, a4, v12);
      v35 = v12;
      v36 = v21;
      v37 = v81(v34, v21);
      if (v7)
      {
        v66 = *v80;
        (*v80)(v36, v35);
        v66(v34, v35);
        break;
      }

      v38 = v37;
      v84 = 0;
      v39 = a4;
      v40 = *v80;
      (*v80)(v21, v35);
      v40(v34, v35);
      v12 = v35;
      if (v38)
      {
        v41 = v82;
        v42 = v74;
        v43 = v83 + v74;
        v44 = v82 < v83 || v82 >= v43;
        a4 = v39;
        if (v44)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v82 != v83)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v31 = v43;
      }

      else
      {
        v42 = v74;
        a4 = v39 + v74;
        v41 = v82;
        if (v82 < v39 || v82 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v82 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v86 = a4;
        v31 = v83;
      }

      v7 = v84;
      a1 = v41 + v42;
      v87 = a1;
    }
  }

LABEL_64:
  sub_89F0C(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_89F0C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_8C1FC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_89FEC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_8A018(char *result, int64_t a2, char a3, char *a4)
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
    sub_2664(&qword_C33D8, &unk_93CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_8A16C()
{
  v0 = sub_8C1CC();
  v1 = sub_3488(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1D164();
  v8 = v6 - v7;
  v10 = __chkstk_darwin(v9);
  v33 = &v32 - v11;
  __chkstk_darwin(v10);
  v34 = &v32 - v12;
  result = sub_8C1DC();
  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  v35 = v3 + 16;
  while (1)
  {
    if (v16 == v15)
    {

      return 2;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    sub_8AE7C();
    v17(v8);
    if (sub_8C1BC() == 0xD000000000000017 && 0x8000000000096FF0 == v18)
    {

LABEL_12:

      v23 = *(v3 + 32);
      v24 = v33;
      v23(v33, v8, v0);
      v23(v34, v24, v0);
      v25 = sub_8C1AC();
      if (v26)
      {
        v27 = sub_13DE4(v25, v26);
        v28 = sub_8AE9C();
        v29(v28);
        if (v27 != 2)
        {
          return v27;
        }
      }

      else
      {
        v30 = sub_8AE9C();
        v31(v30);
      }

      return 2;
    }

    v20 = sub_8D45C();

    if (v20)
    {
      goto LABEL_12;
    }

    v21 = sub_8AE9C();
    result = v22(v21);
    ++v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_8A3C8()
{
  v42 = sub_8C48C();
  v0 = sub_3488(v42);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_16854();
  v7 = v6 - v5;
  v8 = sub_8C1CC();
  v9 = sub_3488(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1D164();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v36 = &v35 - v18;
  result = sub_8C1DC();
  v20 = 0;
  v43 = *(result + 16);
  v40 = v11 + 16;
  v39 = enum case for IdentifierNamespace.nsSemanticValue(_:);
  v37 = (v2 + 8);
  v38 = (v2 + 104);
  v44 = v11;
  v41 = (v11 + 8);
  while (1)
  {
    if (v43 == v20)
    {

      return 0;
    }

    if (v20 >= *(result + 16))
    {
      break;
    }

    v21 = result;
    v22 = v8;
    (*(v44 + 16))(v16, result + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v20, v8);
    v23 = sub_8C1BC();
    v25 = v24;
    v26 = v42;
    (*v38)(v7, v39, v42);
    v27 = sub_8C47C();
    v29 = v28;
    (*v37)(v7, v26);
    if (v23 == v27 && v25 == v29)
    {

LABEL_12:

      v33 = v44 + 32;
      v34 = v36;
      (*(v44 + 32))(v36, v16, v22);
      v32 = sub_8C1AC();
      (*(v33 - 24))(v34, v22);
      return v32;
    }

    v31 = sub_8D45C();

    if (v31)
    {
      goto LABEL_12;
    }

    v8 = v22;
    (*v41)(v16, v22);
    ++v20;
    result = v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_8A6E4()
{
  v0 = sub_8C1CC();
  v1 = sub_3488(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_16854();
  v8 = v7 - v6;
  v9 = sub_2664(&qword_C3D38, &unk_94FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1D164();
  v33 = v11 - v12;
  __chkstk_darwin(v13);
  v32 = &v31 - v14;
  result = sub_8C1DC();
  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  v34 = v3 + 16;
  v19 = (v3 + 8);
  while (1)
  {
    if (v18 == v17)
    {

      v24 = 1;
      v26 = v32;
      v25 = v33;
      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    sub_8AE7C();
    v20(v8);
    if (sub_8C1BC() == 0xD000000000000011 && 0x8000000000098E10 == v21)
    {

LABEL_12:

      v26 = v32;
      (*(v3 + 32))(v32, v8, v0);
      v24 = 0;
      v25 = v33;
LABEL_13:
      sub_6270(v26, v24, 1, v0);
      sub_8A9F0(v26, v25);
      if (sub_3364(v25, 1, v0) == 1)
      {
        sub_92C0(v26, &qword_C3D38, &unk_94FC0);
        goto LABEL_19;
      }

      v27 = sub_8C1AC();
      v29 = v28;
      (*v19)(v25, v0);
      if (v29)
      {
        v30 = sub_13E38(v27, v29);
        sub_92C0(v26, &qword_C3D38, &unk_94FC0);
        if (v30 != 3)
        {
          return v30;
        }
      }

      else
      {
        v25 = v26;
LABEL_19:
        sub_92C0(v25, &qword_C3D38, &unk_94FC0);
      }

      return 3;
    }

    v23 = sub_8D45C();

    if (v23)
    {
      goto LABEL_12;
    }

    result = (*v19)(v8, v0);
    ++v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_8A9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D38, &unk_94FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AA60()
{
  v0 = sub_8C75C();
  v1 = sub_3488(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_16854();
  v8 = v7 - v6;
  v9 = sub_2664(&qword_C3D30, &qword_94FB8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  sub_8C1EC();
  v13 = sub_8C77C();
  if (sub_3364(v12, 1, v13) == 1)
  {
    sub_92C0(v12, &qword_C3D30, &qword_94FB8);
    v14 = 0;
  }

  else
  {
    sub_8C74C();
    v14 = sub_8C73C();
    (*(v3 + 8))(v8, v0);
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  return v14 & 1;
}

uint64_t sub_8ABF0()
{
  sub_8A6E4();
  sub_8AEAC();
  v0 = 1;
  v1 = 0;
  v2 = "oom_hint";
  switch(v3)
  {
    case 1:
      v0 = 0;
      v4 = "homeAutomationRoom";
      goto LABEL_4;
    case 2:
      v0 = 0;
      v4 = "homeAutomationZone";
LABEL_4:
      v2 = (v4 - 32);
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
LABEL_5:
      if (v0 && (v2 | 0x8000000000000000) == 0x80000000000953B0)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_8D45C();
      }

      return v1 & 1;
  }
}

uint64_t sub_8ACD4()
{
  sub_8A6E4();
  sub_8AEAC();
  v0 = "oom_hint";
  v1 = 0;
  switch(v2)
  {
    case 1:
      v0 = "homeAutomationAccessoryName";
      goto LABEL_4;
    case 2:
      v0 = "homeAutomationRoom";
LABEL_4:
      v1 = 1;
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
LABEL_5:
      if (v1 && (v0 | 0x8000000000000000) == 0x80000000000953F0)
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        LOBYTE(v1) = sub_8AEBC();
      }

      return v1 & 1;
  }
}

uint64_t sub_8ADA8()
{
  sub_8A6E4();
  sub_8AEAC();
  v0 = "oom_hint";
  v1 = 0;
  switch(v2)
  {
    case 1:
      v0 = "homeAutomationAccessoryName";
      goto LABEL_4;
    case 2:
      v0 = "homeAutomationRoom";
LABEL_4:
      v1 = 1;
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
LABEL_5:
      if (v1 && (v0 | 0x8000000000000000) == 0x80000000000953D0)
      {
        LOBYTE(v1) = 1;
      }

      else
      {
        LOBYTE(v1) = sub_8AEBC();
      }

      return v1 & 1;
  }
}

uint64_t sub_8AEBC()
{

  return sub_8D45C();
}