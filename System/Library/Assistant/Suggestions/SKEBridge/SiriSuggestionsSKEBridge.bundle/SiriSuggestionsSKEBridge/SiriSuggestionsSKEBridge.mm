uint64_t sub_14C8()
{
  v0 = sub_42A4(&qword_C198, &qword_49D8);
  v1 = sub_1604(v0);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = sub_4688();
  sub_15CC(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_3044(0, 0, v5, &unk_49E8, v7);
}

uint64_t sub_1590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = sub_1F90();

  return _swift_deallocObject(v2);
}

uint64_t sub_1610()
{
  sub_1B34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E70;

  return sub_1A80();
}

uint64_t sub_1698()
{
  sub_1D70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1FB0(v3);
  *v4 = v5;
  v6 = sub_4428(v4);

  return v7(v6);
}

uint64_t sub_172C()
{

  return swift_task_alloc();
}

uint64_t sub_1750(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D90;

  return v7(a1);
}

uint64_t sub_1848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_42A4(a2, a3);
  sub_20A4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18D8()
{
  sub_1D70();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2AEC;

  return sub_197C();
}

uint64_t sub_197C()
{
  sub_1B34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4648();
  v1[5] = v4;
  sub_15F4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_172C();
  v8 = sub_45D8();
  v1[8] = v8;
  sub_15F4(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_172C();
  v12 = sub_1B50();

  return _swift_task_switch(v12);
}

uint64_t sub_1A80()
{
  sub_1B34();
  v1 = sub_4648();
  v0[2] = v1;
  sub_15F4(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v5 = sub_1B50();

  return _swift_task_switch(v5);
}

uint64_t sub_1B60()
{
  if (sub_4598())
  {
    v1 = async function pointer to static StaticSuggestionDialogCache.prewarm()[1];
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_2E68;

    return static StaticSuggestionDialogCache.prewarm()();
  }

  else
  {
    v3 = v0[5];
    sub_4628();
    v4 = sub_4638();
    v5 = sub_4698();
    v6 = sub_2240(v5);
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];
    if (v6)
    {
      sub_1744();
      v10 = swift_slowAlloc();
      sub_15C0(v10);
      sub_1D50(&dword_0, v11, v12, "StaticSuggestionDialogCache.shouldWarmup() returned false. Not warming up StaticDialogCache");
      sub_1D38();
    }

    v13 = sub_1FA0();
    v14(v13);
    sub_4588();
    if (sub_4568())
    {
      sub_4578();
    }

    else
    {
      v15 = v0[4];
      sub_4628();
      v16 = sub_4638();
      v17 = sub_4698();
      v18 = sub_2240(v17);
      v20 = v0[3];
      v19 = v0[4];
      v21 = v0[2];
      if (v18)
      {
        sub_1744();
        v22 = swift_slowAlloc();
        sub_15C0(v22);
        sub_1D50(&dword_0, v23, v24, "CoreSpeechPolicyProvider.shouldWarmup() returned false. Not warming up CoreSpeechPolicyProvider");
        sub_1D38();
      }

      v25 = sub_1FA0();
      v26(v25);
    }

    v28 = v0[4];
    v27 = v0[5];

    sub_1F74();

    return v29();
  }
}

void sub_1D50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1D90()
{
  sub_1B34();
  sub_1D44();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1F64();
  *v4 = v3;

  sub_1F80();

  return v5();
}

uint64_t sub_1E70()
{
  sub_1B34();
  sub_1D44();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1F64();
  *v4 = v3;

  sub_1F74();

  return v5();
}

uint64_t sub_1F74()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1F80()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D7C();
  v11 = *v9;
  v12 = swift_task_alloc();
  v13 = sub_1FB0(v12);
  *v13 = v14;
  v13[1] = sub_2AEC;
  sub_1A70();

  return sub_20B4(v15, v16, v17, v18, a5, a6, a7, a8, v24, a9);
}

uint64_t sub_20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_1B34();
  *(v11 + 136) = a10;
  *(v11 + 144) = v10;
  *(v11 + 120) = a9;
  *(v11 + 104) = v12;
  *(v11 + 112) = v13;
  *(v11 + 88) = v14;
  *(v11 + 96) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  *(v11 + 56) = v18;
  *(v11 + 64) = v19;
  v20 = sub_4648();
  *(v11 + 152) = v20;
  sub_15F4(v20);
  *(v11 + 160) = v21;
  v23 = *(v22 + 64);
  *(v11 + 168) = sub_172C();
  v24 = sub_44E8();
  *(v11 + 176) = v24;
  sub_15F4(v24);
  *(v11 + 184) = v25;
  v27 = *(v26 + 64);
  *(v11 + 192) = sub_172C();
  v28 = sub_42A4(&qword_C180, &qword_49A8);
  sub_1604(v28);
  v30 = *(v29 + 64) + 15;
  *(v11 + 200) = swift_task_alloc();
  *(v11 + 208) = swift_task_alloc();
  v31 = sub_45C8();
  *(v11 + 216) = v31;
  sub_15F4(v31);
  *(v11 + 224) = v32;
  v34 = *(v33 + 64);
  *(v11 + 232) = sub_172C();
  sub_1B50();
  return sub_225C();
}

BOOL sub_2240(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_225C()
{

  return (_swift_task_switch)();
}

uint64_t sub_2270()
{
  v0 = sub_42A4(&qword_C1A8, qword_4A08);
  v1 = sub_1604(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v29 - v4;
  v6 = sub_4648();
  v7 = sub_27B8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1B40();
  v14 = v13 - v12;
  sub_4628();
  v15 = sub_4638();
  v16 = sub_46A8();
  if (os_log_type_enabled(v15, v16))
  {
    sub_1744();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "getting bridge facade from SiriKit runtime.", v17, 2u);
    sub_1D38();
  }

  (*(v9 + 8))(v14, v6);
  sub_4558();
  v18 = enum case for TaskInitiatedParty.user(_:);
  v19 = sub_4618();
  sub_20A4(v19);
  (*(v20 + 104))(v5, v18);
  v21 = enum case for AssistantTurnState.taskComplete(_:);
  v22 = sub_4608();
  sub_20A4(v22);
  (*(v23 + 104))(v5, v21, v22);
  sub_15CC(v5, 0, 1, v22);
  v24 = sub_4508();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_44F8();
  v29[4] = v24;
  v29[5] = &protocol witness table for SiriRuntimeSuggestionsAPIClientProvider;
  v29[1] = v27;
  return sub_4528();
}

uint64_t sub_24C8()
{
  v1 = v0[18];
  v2 = *(v1 + 24);
  v0[30] = (*(v1 + 16))();
  v3 = v0[29];
  v4 = v0[13];
  v5 = v0[11];
  sub_4468();
  sub_4478();
  sub_4488();
  sub_45B8();
  if (v4)
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = sub_45E8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();

    v11 = sub_45F8();
    v12 = sub_43E0(&qword_C190, 255, &type metadata accessor for DomainOwner);
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v12 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v0[2] = v11;
  v0[5] = v8;
  v0[6] = v12;
  v13 = async function pointer to SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)[1];
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_27CC;
  v15 = v0[26];
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[8];
  v24 = v0[17];
  v25 = v0[29];

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)(v15, v21, v19, v20, v0 + 2, v17, v18, v16);
}

uint64_t sub_27CC()
{
  sub_1B34();
  sub_1D44();
  v3 = v2;
  v4 = *(v2 + 248);
  v5 = *v1;
  sub_1F64();
  *v6 = v5;
  *(v3 + 256) = v0;

  sub_1848(v3 + 16, &qword_C188, &qword_49C8);
  if (v0)
  {
    v7 = sub_36C0;
  }

  else
  {
    v7 = sub_28E8;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_28E8()
{
  v1 = v0[25];
  v2 = v0[22];
  sub_42EC(v0[26], v1, &qword_C180, &qword_49A8);
  v3 = sub_18A0(v1, 1, v2);
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  if (v3 == 1)
  {
    v9 = v0[7];
    v10 = v0[30];

    sub_1848(v8, &qword_C180, &qword_49A8);
    (*(v7 + 8))(v4, v6);
    v11 = sub_44B8();
    v12 = v9;
    v13 = 1;
  }

  else
  {
    v14 = v0[24];
    v16 = v0[22];
    v15 = v0[23];
    v20 = v0[29];
    v17 = v0[7];
    (*(v15 + 32))(v14, v0[25], v16);
    sub_44D8();
    sub_44C8();
    sub_44A8();

    (*(v15 + 8))(v14, v16);
    sub_1848(v8, &qword_C180, &qword_49A8);
    (*(v7 + 8))(v20, v6);
    v11 = sub_44B8();
    v12 = v17;
    v13 = 0;
  }

  sub_15CC(v12, v13, 1, v11);
  sub_2ACC();

  sub_1F80();

  return v18();
}

uint64_t sub_2ACC()
{
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
}

uint64_t sub_2AF0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  *(v0 + 88) = (*(v1 + 16))();
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  **(v0 + 80) = v5;
  (*(v3 + 104))();
  v6 = async function pointer to SiriSuggestionsFacade.submitEngagement(for:with:)[1];
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_3788;
  v9 = *(v0 + 80);
  v10 = *(v0 + 24);

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v9, v10);
}

uint64_t sub_2CB4()
{
  v1 = *(v0 + 24);

  v2 = sub_1F90();

  return _swift_deallocObject(v2);
}

uint64_t sub_2CE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_4648();
  v5 = sub_27B8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1B40();
  v12 = v11 - v10;
  sub_4628();
  v13 = sub_4638();
  v14 = sub_46A8();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1744();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Returning the suggestions SiriKitExecutor bridge", v15, 2u);
    sub_1D38();
  }

  (*(v7 + 8))(v12, v4);
  inited = swift_initStaticObject();
  sub_14C8();
  a1[3] = v2;
  result = sub_43E0(&qword_C1A0, v17, type metadata accessor for SiriKitExecutorBridge);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t sub_2E68()
{
  sub_1B34();
  sub_1D44();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1F64();
  *v4 = v3;

  v5 = sub_1B50();

  return _swift_task_switch(v5);
}

uint64_t sub_2F4C()
{
  sub_4588();
  if (sub_4568())
  {
    sub_4578();
  }

  else
  {
    v1 = v0[4];
    sub_4628();
    v2 = sub_4638();
    v3 = sub_4698();
    v4 = sub_2240(v3);
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    if (v4)
    {
      sub_1744();
      v8 = swift_slowAlloc();
      sub_15C0(v8);
      sub_1D50(&dword_0, v9, v10, "CoreSpeechPolicyProvider.shouldWarmup() returned false. Not warming up CoreSpeechPolicyProvider");
      sub_1D38();
    }

    v11 = sub_1FA0();
    v12(v11);
  }

  v14 = v0[4];
  v13 = v0[5];

  sub_1F74();

  return v15();
}

uint64_t sub_3044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_42A4(&qword_C198, &qword_49D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v25 - v10;
  sub_42EC(a3, v25 - v10, &qword_C198, &qword_49D8);
  v12 = sub_4688();
  v13 = sub_18A0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1848(v11, &qword_C198, &qword_49D8);
  }

  else
  {
    sub_4678();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_4668();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_4658() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1848(a3, &qword_C198, &qword_49D8);

      return v23;
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

  sub_1848(a3, &qword_C198, &qword_49D8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  sub_1B34();
  *(v12 + 104) = a11;
  *(v12 + 112) = v11;
  *(v12 + 96) = a10;
  *(v12 + 80) = a9;
  *(v12 + 64) = v13;
  *(v12 + 72) = v14;
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  *(v12 + 32) = v17;
  *(v12 + 40) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = sub_4498();
  *(v12 + 120) = v21;
  sub_15F4(v21);
  *(v12 + 128) = v22;
  v24 = *(v23 + 64);
  *(v12 + 136) = sub_172C();
  sub_1B50();
  return sub_225C();
}

uint64_t sub_33E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_1D70();
  v11 = *(v10 + 136);
  v13 = *(v10 + 96);
  v12 = *(v10 + 104);

  sub_4458();
  v14 = swift_task_alloc();
  *(v10 + 144) = v14;
  *v14 = v10;
  v14[1] = sub_34CC;
  v15 = *(v10 + 136);
  v16 = *(v10 + 112);
  v17 = *(v10 + 56);
  v18 = *(v10 + 64);
  v19 = *(v10 + 40);
  v20 = *(v10 + 48);
  v21 = *(v10 + 24);
  v22 = *(v10 + 32);
  v23 = *(v10 + 16);
  v27 = *(v10 + 88);
  v26 = *(v10 + 72);

  return sub_20B4(v23, v21, v22, v19, v15, v20, v17, v18, a9, a10);
}

uint64_t sub_34CC()
{
  sub_1D44();
  v3 = v2;
  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  v8 = *v1;
  sub_1F64();
  *v9 = v8;
  v3[19] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {

    return _swift_task_switch(sub_3664);
  }

  else
  {
    v10 = v3[17];

    sub_1F74();

    return v11();
  }
}

uint64_t sub_3664()
{
  sub_1B34();
  v1 = *(v0 + 136);

  sub_1F74();
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_36C0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[21];

  (*(v4 + 8))(v2, v3);

  sub_1F74();
  v10 = v0[32];

  return v9();
}

uint64_t sub_3788()
{
  sub_1D70();
  sub_1D44();
  v3 = v2[12];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  v7 = *v1;
  sub_1F64();
  *v8 = v7;
  *(v9 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_3954;
  }

  else
  {
    v10 = sub_38E8;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_38E8()
{
  sub_1B34();
  v1 = v0[11];

  v2 = v0[10];
  v3 = v0[7];

  sub_1F80();

  return v4();
}

uint64_t sub_3954()
{
  sub_1B34();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  sub_1F74();
  v5 = v0[13];

  return v4();
}

uint64_t sub_39C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_4498();
  v9 = sub_27B8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1B40();
  v16 = v15 - v14;

  sub_4458();
  sub_3AF0(a1, a2, a3, v16, a4);
  return (*(v11 + 8))(v16, v8);
}

uint64_t sub_3AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v66 = a5;
  v7 = sub_4648();
  v8 = sub_27B8(v7);
  v64 = v9;
  v65 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1B40();
  v14 = v13 - v12;
  v15 = sub_44E8();
  v16 = sub_27B8(v15);
  v58 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1B40();
  v22 = v21 - v20;
  v23 = sub_42A4(&qword_C180, &qword_49A8);
  v24 = sub_1604(v23);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v63 = &v56 - v30;
  v31 = sub_45C8();
  v32 = sub_27B8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_1B40();
  v37 = *(v5 + 16);
  v38 = *(v5 + 24);
  v37();
  if (v6)
  {

    sub_4628();
    v39 = sub_4638();
    v40 = sub_46B8();
    if (os_log_type_enabled(v39, v40))
    {
      sub_1744();
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "facade not set. Unable to process doContinuousConversationsHints", v41, 2u);
      sub_1D38();
    }

    (*(v64 + 8))(v14, v65);
  }

  else
  {
    v56 = v22;
    v57 = v31;
    v64 = v15;
    v65 = v34;
    sub_4468();
    sub_4478();
    sub_4488();
    sub_45B8();
    v46 = v63;
    sub_4548();
    sub_42EC(v46, v29, &qword_C180, &qword_49A8);
    v47 = v64;
    v48 = sub_18A0(v29, 1, v64);
    v49 = v57;
    if (v48 != 1)
    {
      v52 = v58;
      v53 = v56;
      (*(v58 + 32))(v56, v29, v47);
      sub_44D8();
      sub_44C8();
      v43 = v66;
      sub_44A8();

      (*(v52 + 8))(v53, v47);
      sub_1848(v46, &qword_C180, &qword_49A8);
      v54 = sub_18C8();
      v55(v54, v57);
      v42 = 0;
      goto LABEL_6;
    }

    sub_1848(v46, &qword_C180, &qword_49A8);
    v50 = sub_18C8();
    v51(v50, v49);
  }

  v42 = 1;
  v43 = v66;
LABEL_6:
  v44 = sub_44B8();
  return sub_15CC(v43, v42, 1, v44);
}

uint64_t sub_3F48()
{
  v1 = *(v0 + 24);

  v2 = sub_1F90();

  return _swift_deallocClassInstance(v2);
}

uint64_t sub_3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7C();
  v6 = async function pointer to SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)[1];
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_408C;
  sub_1A70();

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(v8, v9, v10, v11, a5);
}

uint64_t sub_408C()
{
  sub_1B34();
  v3 = v2;
  sub_1D44();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1F64();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D7C();
  v11 = *v10;
  v12 = swift_task_alloc();
  v13 = sub_1FB0(v12);
  *v13 = v14;
  v13[1] = sub_1E70;
  sub_1A70();

  return sub_3328(v15, v16, v17, v18, a5, a6, a7, a8, v25, a9, a10);
}

uint64_t sub_42A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_42EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_42A4(a3, a4);
  sub_20A4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_434C()
{
  sub_1D70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1FB0(v3);
  *v4 = v5;
  v6 = sub_4428(v4);

  return v7(v6);
}

uint64_t sub_43E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4428(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}