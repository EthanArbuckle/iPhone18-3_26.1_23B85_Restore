id variable initialization expression of SiriInferenceBridge.xpcListener()
{
  sub_16F8();
  sub_6874();
  sub_6864();
  return sub_173C();
}

unint64_t sub_16F8()
{
  result = qword_10338;
  if (!qword_10338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10338);
  }

  return result;
}

id sub_173C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_6C94();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_17CC()
{
  sub_5660();
  v1 = sub_6974();
  v2 = sub_6964();
  v0[5] = v1;
  v0[6] = &protocol witness table for OSFeatureFlagProvider;
  v0[2] = v2;
  type metadata accessor for SiriInferenceBridge();
  swift_allocObject();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  sub_578C(v3);

  return SiriInferenceBridge.init(featureFlagProvider:)();
}

uint64_t sub_1890()
{
  sub_5660();
  sub_5650();
  sub_5644();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v2;
  sub_5614();
  *v8 = v7;
  *(v9 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_19B4, 0, 0);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(v0);
  }
}

uint64_t sub_19B4()
{
  sub_56D0();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t SiriInferenceBridge.__allocating_init(featureFlagProvider:)()
{
  sub_5660();
  swift_allocObject();
  v0 = swift_task_alloc();
  v1 = sub_5798(v0);
  *v1 = v2;
  sub_578C(v1);

  return SiriInferenceBridge.init(featureFlagProvider:)();
}

uint64_t sub_1A74()
{
  sub_5660();
  sub_5650();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_5614();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t SiriInferenceBridge.init(featureFlagProvider:)()
{
  sub_5660();
  v1[52] = v2;
  v1[53] = v0;
  v3 = sub_6804();
  v1[54] = v3;
  sub_5624(v3);
  v1[55] = v4;
  v6 = *(v5 + 64);
  v1[56] = sub_5710();
  v7 = sub_6744();
  v1[57] = v7;
  sub_5624(v7);
  v1[58] = v8;
  v10 = *(v9 + 64);
  v1[59] = sub_5710();
  v11 = sub_69B4();
  sub_56EC(v11);
  v13 = *(v12 + 64);
  v1[60] = sub_5710();
  v14 = sub_6C74();
  v1[61] = v14;
  sub_5624(v14);
  v1[62] = v15;
  v17 = *(v16 + 64) + 15;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v18 = sub_6C54();
  v1[65] = v18;
  sub_5624(v18);
  v1[66] = v19;
  v21 = *(v20 + 64);
  v1[67] = sub_5710();
  v22 = sub_56A8();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1D40()
{
  v66 = (v0 + 2);
  v1 = v0[67];
  v2 = v0[64];
  v3 = v0[53];
  *(v3 + 16) = 0;
  sub_16F8();
  sub_6874();
  sub_6864();
  *(v3 + 24) = sub_173C();
  v4 = sub_6A24();
  sub_6A04();

  sub_6914();
  v5 = sub_6A24();
  sub_6A34();

  sub_69E4();
  v6 = sub_6C64();
  v7 = sub_6CF4();
  if (sub_5740(v7))
  {
    *sub_5728() = 0;
    sub_56DC();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    sub_56F8();
  }

  v13 = v0[64];
  v14 = v0[61];
  v15 = v0[62];
  v17 = v0[59];
  v16 = v0[60];
  v18 = v0[57];
  v19 = v0[58];
  v63 = v0[56];
  v20 = v0[52];

  v21 = *(v15 + 8);
  v22 = sub_5780();
  v61 = v23;
  (v23)(v22);
  sub_69D4();
  sub_2A18(&qword_10340, &qword_6FC8);
  sub_2A18(&qword_10348, &qword_6FD0);
  sub_6C84();
  sub_69C4();
  sub_69A4();
  v24 = sub_6764();
  sub_56C4(v24);
  swift_allocObject();
  v0[68] = sub_6754();
  v64 = sub_6894();
  v65 = sub_6884();
  v0[69] = v65;
  v25 = sub_6C44();
  v26 = sub_6C34();
  v0[70] = v26;
  type metadata accessor for DefaultFeatureServiceFactory();
  v27 = swift_allocObject();
  v0[71] = v27;
  v27[5] = v25;
  v27[6] = &protocol witness table for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider;
  v27[2] = v26;
  (*(v19 + 104))(v17, enum case for TrialUseCase.suggestionServiceStarting(_:), v18);
  v28 = sub_67D4();
  sub_56C4(v28);
  swift_allocObject();

  v29 = sub_67C4();
  v0[72] = v29;
  sub_6934();
  v0[73] = sub_6924();
  v62 = v28;

  sub_67E4();
  v30 = v20[4];
  sub_4DD4(v20, v20[3]);
  if (sub_6954())
  {
    v31 = v0[55];
    v32 = v0[56];
    v33 = v0[54];
    v0[10] = v33;
    v0[11] = &protocol witness table for DefaultBookkeepingXPCClient;
    v34 = sub_4E1C(v0 + 7);
    (*(v31 + 16))(v34, v32, v33);
  }

  else
  {
    v35 = v0[63];
    sub_69F4();
    v36 = sub_6C64();
    v37 = sub_6D04();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_5728();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "FeatureExtraction disabled. Using noop AccountService to get AccountDetails", v38, 2u);
      sub_56F8();
    }

    v39 = v0[62];
    v40 = v0[63];
    v41 = v0[61];

    v61(v40, v41);
    v42 = *sub_6BF4();
    v0[10] = sub_6BE4();
    v0[11] = &protocol witness table for SiriSuggestionsIntelligence.NoopAccountService;
    v0[7] = v42;
  }

  v44 = v0[55];
  v43 = v0[56];
  v45 = v0[54];
  sub_6C24();
  v0[15] = v45;
  v46 = sub_51B8(&qword_10350, 255, &type metadata accessor for DefaultBookkeepingXPCClient);
  v0[16] = v46;
  v47 = sub_4E1C(v0 + 12);
  v48 = *(v44 + 16);
  v49 = v43;
  v48(v47, v43, v45);
  v50 = sub_6BB4();
  sub_56C4(v50);
  swift_allocObject();
  v0[74] = sub_6BA4();
  sub_6734();
  sub_67B4();
  sub_67A4();
  sub_51B8(&qword_10358, 255, &type metadata accessor for AppUtilsService);
  sub_51B8(&qword_10360, 255, &type metadata accessor for InternalXPCSuggestionsLoggerFactory);
  sub_5154(v66, (v0 + 17));
  v0[25] = v45;
  v0[26] = v46;
  v51 = sub_4E1C(v0 + 22);
  v48(v51, v49, v45);

  v52 = sub_6724();
  v0[75] = v52;
  type metadata accessor for SiriInferenceBridge();
  v53 = swift_task_alloc();
  v0[76] = v53;
  v53[2] = v52;
  v53[3] = v66;
  v53[4] = v49;
  v0[30] = v64;
  v0[31] = &protocol witness table for DefaultSELFLogger;
  v0[27] = v65;
  v54 = sub_6B54();
  sub_56C4(v54);
  swift_allocObject();

  v55 = sub_6B44();
  v0[35] = v54;
  v0[36] = &protocol witness table for NewUUIDRequestIdProvider;
  v0[32] = v55;
  v56 = *(v54 + 48);
  v57 = *(v54 + 52);
  swift_allocObject();
  v58 = sub_6B44();
  v0[40] = v54;
  v0[41] = &protocol witness table for NewUUIDRequestIdProvider;
  v0[37] = v58;
  v0[45] = v62;
  v0[46] = &protocol witness table for TrialRuntimeConfigProvider;
  v0[42] = v29;

  sub_3460(v0 + 47);
  v59 = swift_task_alloc();
  v0[77] = v59;
  *v59 = v0;
  v59[1] = sub_2514;
  v68 = v0[52];

  return sub_3548();
}

uint64_t sub_2514()
{
  sub_56B8();
  v4 = v3;
  sub_5650();
  v6 = v5;
  sub_5644();
  *v7 = v6;
  v9 = *(v8 + 616);
  v10 = *v2;
  sub_5614();
  *v11 = v10;
  v6[78] = v1;

  if (v1)
  {
    sub_5058(v6 + 47);
    v12 = sub_2838;
  }

  else
  {
    v13 = v6[76];
    v6[79] = v4;
    v6[80] = v0;
    sub_5058(v6 + 47);
    sub_5058(v6 + 42);
    sub_5058(v6 + 37);
    sub_5058(v6 + 32);
    sub_5058(v6 + 27);

    v12 = sub_2664;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_2664()
{
  v20 = v0[79];
  v21 = v0[80];
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[71];
  v16 = v0[72];
  v17 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[60];
  v27 = v0[59];
  v9 = v0[55];
  v10 = v0[53];
  v18 = v0[54];
  v19 = v0[56];
  v22 = v0[52];

  sub_5058(v0 + 7);

  v11 = *(v10 + 16);
  *(v10 + 16) = v21;

  (*(v9 + 8))(v19, v18);
  sub_5058(v0 + 2);
  sub_6914();
  v12 = sub_6A24();
  sub_575C(v7);

  (*(v8 + 8))(v7, v23);
  sub_5058(v22);

  v13 = v0[1];
  v14 = v0[53];

  return v13(v14);
}

uint64_t sub_2838()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v17 = v0[76];
  v18 = v0[67];
  v9 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[60];
  v25 = v0[59];
  v10 = v0[55];
  v15 = v0[54];
  v16 = v0[56];
  v19 = v0[53];
  v20 = v0[52];

  sub_5058(v0 + 7);
  sub_5058(v0 + 42);
  sub_5058(v0 + 37);
  sub_5058(v0 + 32);
  sub_5058(v0 + 27);

  (*(v10 + 8))(v16, v15);
  sub_5058(v0 + 2);
  sub_6914();
  v11 = sub_6A24();
  sub_575C(v18);

  (*(v9 + 8))(v18, v21);
  sub_5058(v20);

  sub_56D0();
  v13 = v0[78];

  return v12();
}

uint64_t sub_2A18(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_6804();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_2B2C, 0, 0);
}

uint64_t sub_2B2C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v16 = v0[7];
  v17 = v0[9];
  sub_6824();
  v0[5] = sub_6734();
  v0[6] = &protocol witness table for TrialSuggestionsServiceFactory;
  v0[2] = v6;
  sub_5684();
  sub_51B8(v7, 255, v8);
  (*(v3 + 16))(v1, v5, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v1, v4);

  v11 = sub_6814();
  v13 = v12;

  sub_5058(v0 + 2);

  v14 = v0[1];

  return v14(v11, v13);
}

uint64_t sub_2CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_6804();
  v3[3] = v4;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v3[5] = *(v5 + 64);
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_2A18(&qword_10518, &qword_7120) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_2DC8, 0, 0);
}

uint64_t sub_2DC8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  sub_6CC4();
  v7 = sub_6CE4();
  sub_5030(v1, 0, 1, v7);
  (*(v4 + 16))(v2, v6, v5);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v4 + 32))(v9 + v8, v2, v5);
  sub_3230(0, 0, v1, &unk_7130, v9);

  sub_54FC(v1);

  sub_56D0();

  return v10();
}

uint64_t sub_2F0C()
{
  v1 = sub_6C74();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = async function pointer to DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_3000;

  return DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)(1);
}

uint64_t sub_3000()
{
  sub_56B8();
  sub_569C();
  v3 = v2;
  sub_5644();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v8;

  if (v0)
  {
    v9 = *(v3 + 32);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_3144, 0, 0);
  }
}

uint64_t sub_3144()
{
  sub_56B8();
  v1 = v0[4];
  sub_69F4();
  v2 = sub_6C64();
  v3 = sub_6D04();
  if (sub_5740(v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    sub_56DC();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_56F8();
  }

  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v15 = sub_5780();
  v16(v15);

  sub_56D0();

  return v17();
}

uint64_t sub_3230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2A18(&qword_10518, &qword_7120);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_5564(a3, v23 - v10);
  v12 = sub_6CE4();
  v13 = sub_55D4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_54FC(v11);
  }

  else
  {
    sub_6CD4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_6CB4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_6CA4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

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

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_3460@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2A18(&qword_104E0, &qword_7108);
  v3 = sub_56EC(v2);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v7 = &v12[-1] - v6;
  v8 = sub_6A74();
  v9 = sub_66C4();
  sub_5030(v7, 1, 1, v9);
  v12[3] = sub_6A54();
  v12[4] = &protocol witness table for DefaultSiriAutoCompleteFeatureFlagsProvider;
  sub_4E1C(v12);
  sub_6A44();
  result = sub_6A64();
  a1[3] = v8;
  a1[4] = &protocol witness table for DefaultSiriAutoCompleteService;
  *a1 = result;
  return result;
}

uint64_t sub_3548()
{
  sub_5660();
  *(v0 + 472) = v17;
  *(v0 + 480) = v18;
  *(v0 + 456) = v16;
  *(v0 + 440) = v1;
  *(v0 + 448) = v2;
  *(v0 + 424) = v3;
  *(v0 + 432) = v4;
  *(v0 + 408) = v5;
  *(v0 + 416) = v6;
  v7 = sub_66F4();
  *(v0 + 488) = v7;
  sub_5624(v7);
  *(v0 + 496) = v8;
  v10 = *(v9 + 64);
  *(v0 + 504) = sub_5710();
  v11 = sub_56A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_360C()
{
  sub_56B8();
  v1 = v0[59];
  v2 = sub_6844();
  v0[64] = sub_6834();
  v0[50] = sub_6934();
  v0[47] = v1;
  v3 = async function pointer to GlobalLifeCycleContainer.addToLifeCycle(entity:)[1];

  v4 = swift_task_alloc();
  v0[65] = v4;
  sub_5684();
  v7 = sub_51B8(v5, 255, v6);
  *v4 = v0;
  v4[1] = sub_3714;

  return GlobalLifeCycleContainer.addToLifeCycle(entity:)(v0 + 47, v2, v7);
}

uint64_t sub_3714()
{
  v1 = *v0;
  v2 = *v0;
  sub_5614();
  *v3 = v2;
  v4 = v1[65];
  v5 = v1[51];
  v6 = *v0;
  *v3 = *v0;

  sub_5058(v2 + 47);
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v2[66] = v8;
  *v8 = v6;
  v8[1] = sub_38DC;
  v9 = v1[64];
  v10 = v1[52];

  return v12(v9);
}

uint64_t sub_38DC()
{
  sub_5660();
  sub_569C();
  sub_5644();
  *v2 = v1;
  v4 = *(v3 + 528);
  *v2 = *v0;
  *(v1 + 536) = v5;
  *(v1 + 544) = v6;

  v7 = sub_56A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_39CC()
{
  v1 = v0;
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v7 = v1[61];
  v22 = v1[60];
  v19 = v1[58];
  v20 = v1[57];
  v8 = v1[55];
  v21 = v1[56];
  v9 = v1[53];
  v18 = v1[54];
  v10 = sub_6AA4();
  sub_5154(v9, (v1 + 2));
  swift_getObjectType();
  v11 = *(v2 + 16);
  sub_5154(v8, (v1 + 7));
  swift_unknownObjectRetain();
  v12 = sub_6A94();
  swift_unknownObjectRetain();
  sub_66E4();
  sub_66D4();
  (*(v6 + 8))(v5, v7);
  v13 = sub_6AD4();
  sub_56C4(v13);
  swift_allocObject();
  sub_6AB4();
  sub_6B14();
  v1[20] = v10;
  v1[21] = sub_51B8(&qword_104F8, 255, &type metadata accessor for EventDrivenSuggestionsClient);
  v1[17] = v12;

  sub_6B04();
  sub_5058(v1 + 17);
  sub_6B74();
  sub_5154((v1 + 12), (v1 + 22));
  swift_unknownObjectRetain();
  sub_6B64();
  sub_68B4();
  sub_68A4();
  sub_6AF4();
  sub_51B8(&qword_10500, 255, &type metadata accessor for DispatchedServiceAPIProvider);
  sub_5154(v19, (v1 + 27));
  sub_5154(v20, (v1 + 32));
  sub_5154(v21, (v1 + 37));

  sub_6AE4();
  sub_51B8(&qword_10508, 255, &type metadata accessor for EventDrivenSuggestionsClient);
  sub_5154(v22, (v1 + 42));
  sub_51B8(&qword_10510, 255, &type metadata accessor for OfflineGenerationSuggestionsClient);
  v14 = objc_allocWithZone(sub_6B34());

  v15 = sub_6B24();

  swift_unknownObjectRelease();
  sub_5058(v1 + 12);

  v16 = v1[1];

  return v16(v15, v12);
}

uint64_t sub_3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_6944();
  v9 = sub_5600(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_5634();
  v16 = v15 - v14;
  sub_5154(a1, v22);
  (*(v11 + 16))(v16, a2, v8);
  v17 = sub_6904();
  v21[3] = v17;
  v21[4] = sub_51B8(&qword_104E8, 255, &type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  v18 = sub_4E1C(v21);
  (*(*(v17 - 8) + 16))(v18, a3, v17);
  v19 = sub_6B94();
  sub_56C4(v19);
  swift_allocObject();
  result = sub_6B84();
  a4[3] = v19;
  a4[4] = &protocol witness table for EventDrivenInteractionBuilder;
  *a4 = result;
  return result;
}

uint64_t static SiriInferenceBridge.getInstance()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_6C74();
  v3 = sub_5600(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_5634();
  v10 = v9 - v8;
  sub_69F4();
  v11 = sub_6C64();
  v12 = sub_6D14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_5728();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "synchronous instance of SiriInferenceSuggestionsBridge no longer supported. Please call getInstanceAsync instead", v13, 2u);
    sub_56F8();
  }

  (*(v5 + 8))(v10, v2);
  v14 = type metadata accessor for NoopSuggestionsBridge();
  inited = swift_initStaticObject();
  a1[3] = v14;
  sub_566C();
  result = sub_51B8(v16, v17, v18);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t sub_40FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopSuggestionsBridge();
  inited = swift_initStaticObject();
  a1[3] = v2;
  sub_566C();
  result = sub_51B8(v4, v5, v6);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t static SiriInferenceBridge.getInstanceAsync()()
{
  sub_5660();
  v0[2] = v1;
  v2 = sub_6C74();
  v0[3] = v2;
  sub_5624(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_5710();
  v6 = sub_56A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4210()
{
  sub_56B8();
  v1 = v0[5];
  sub_69F4();
  v2 = sub_6C64();
  v3 = sub_6CF4();
  if (sub_5740(v3))
  {
    *sub_5728() = 0;
    sub_56DC();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_56F8();
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  v12 = *(v10 + 8);
  v13 = sub_5780();
  v14(v13);
  v0[6] = type metadata accessor for SiriInferenceBridge();
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  sub_578C(v15);

  return SiriInferenceBridge.__allocating_init()();
}

uint64_t sub_4314()
{
  sub_56B8();
  sub_5650();
  v4 = v3;
  sub_5644();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  sub_5614();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v4 + 40);

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    *(v4 + 64) = v0;

    return _swift_task_switch(sub_4450, 0, 0);
  }
}

uint64_t sub_4450()
{
  sub_56B8();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = v0[6];
  v3[4] = sub_51B8(&qword_10370, v4, type metadata accessor for SiriInferenceBridge);
  *v3 = v1;

  sub_56D0();

  return v5();
}

Swift::Void __swiftcall SiriInferenceBridge.startSiriSuggestionsService()()
{
  v1 = v0;
  v2 = sub_6C74();
  v3 = sub_5600(v2);
  v29 = v4;
  v30 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_5634();
  v9 = v8 - v7;
  v10 = sub_68F4();
  v11 = sub_56EC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_5634();
  v28 = sub_68D4();
  v14 = sub_5600(v28);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_5634();
  v21 = v20 - v19;
  sub_6984();
  v22 = sub_6794();
  sub_56C4(v22);
  swift_allocObject();
  sub_6784();
  v23 = [objc_opt_self() processInfo];
  [v23 operatingSystemVersion];

  sub_68E4();
  sub_68C4();
  sub_69D4();
  sub_6774();
  sub_5058(&v31);
  v24 = *(v1 + 24);
  [v24 setDelegate:*(v1 + 16)];
  [v24 resume];
  sub_69E4();
  v25 = sub_6C64();
  v26 = sub_6CF4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_5728();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "suggestions xpc service started and is listening for connections", v27, 2u);
    sub_56F8();
  }

  (*(v29 + 8))(v9, v30);
  (*(v16 + 8))(v21, v28);
}

uint64_t SiriInferenceBridge.__deallocating_deinit()
{
  SiriInferenceBridge.deinit();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_4854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_55FC;

  return static SiriInferenceBridge.getInstanceAsync()();
}

uint64_t sub_48EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to SiriInferenceSuggestionsBridge.onEvent<A>(event:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_55FC;

  return SiriInferenceSuggestionsBridge.onEvent<A>(event:)(a1, a2, a5, a3, a6, a4);
}

uint64_t sub_49C8()
{
  v0 = sub_6C74();
  v1 = sub_5600(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_5634();
  v8 = v7 - v6;
  sub_69F4();
  v9 = sub_6C64();
  v10 = sub_6D14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_5728();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "startSiriSuggestionsService: No suggestion bridge loaded", v11, 2u);
    sub_56F8();
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_4B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to static SiriInferenceSuggestionsBridge.getInstanceAsync()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4BCC;

  return static SiriInferenceSuggestionsBridge.getInstanceAsync()(a1, a2, a3);
}

uint64_t sub_4BCC()
{
  sub_5660();
  sub_569C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5614();
  *v4 = v3;

  sub_56D0();

  return v5();
}

uint64_t sub_4CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to SiriInferenceSuggestionsBridge.onEvent<A>(event:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_4BCC;

  return SiriInferenceSuggestionsBridge.onEvent<A>(event:)(a1, a2, a5, a3, a6, a4);
}

uint64_t sub_4D88(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_4DD4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_4E1C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_4E7C()
{
  sub_56B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_5798(v4);
  *v5 = v6;
  sub_578C(v5);
  v7 = sub_5780();

  return sub_2A60(v7, v8, v2, v3);
}

uint64_t sub_4F1C()
{
  sub_5660();
  v3 = v2;
  sub_5650();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_5614();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v0, v3);
}

uint64_t sub_5058(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_5154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_51B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_5200()
{
  v1 = sub_6804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5288()
{
  sub_56B8();
  v2 = v1;
  v4 = v3;
  v5 = sub_6804();
  sub_56EC(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = sub_5798(v8);
  *v9 = v10;
  v9[1] = sub_4BCC;

  return sub_2CC8(v4, v2, v0 + v7);
}

uint64_t sub_535C()
{
  v1 = sub_6804();
  sub_5600(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_5414()
{
  v1 = sub_6804();
  sub_56EC(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_5798(v6);
  *v7 = v8;
  v7[1] = sub_4BCC;

  return sub_2F0C();
}

uint64_t sub_54FC(uint64_t a1)
{
  v2 = sub_2A18(&qword_10518, &qword_7120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5564(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A18(&qword_10518, &qword_7120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_56C4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_56D0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_56F8()
{
}

uint64_t sub_5710()
{

  return swift_task_alloc();
}

uint64_t sub_5728()
{

  return swift_slowAlloc();
}

BOOL sub_5740(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_575C(uint64_t a1)
{

  return static Logger.end(_:_:log:telemetry:)(a1, v2, v1, v3, v4, 1);
}

uint64_t DefaultSuggestionsLoggerFactory.__allocating_init(featureFlagProvider:siriRemembersLogger:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_5828(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t DefaultSuggestionsLoggerFactory.init(featureFlagProvider:siriRemembersLogger:)(__int128 *a1, uint64_t a2)
{
  sub_5828(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_5828(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DefaultSuggestionsLoggerFactory.create(featureService:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_6C74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v27[-v12 - 8];
  v14 = v2[6];
  sub_4DD4(v2 + 2, v2[5]);
  if (sub_6954())
  {
    sub_69F4();
    v15 = sub_6C64();
    v16 = sub_6CF4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Enabled feature extraction logger", v17, 2u);
    }

    (*(v7 + 8))(v13, v6);
    sub_5154(a1, v27);
    v18 = v3[7];
    v19 = sub_6BD4();
    swift_allocObject();
    v20 = sub_6BC4();
    a2[3] = v19;
    v21 = sub_5B7C();
  }

  else
  {
    sub_69F4();
    v22 = sub_6C64();
    v23 = sub_6CF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Feature Extraction disabled. Only using raw remembers logger", v24, 2u);
    }

    (*(v7 + 8))(v11, v6);
    v20 = v3[7];
    a2[3] = sub_6854();
    v21 = &protocol witness table for SiriRemembersLogger;
  }

  a2[4] = v21;
  *a2 = v20;
}

uint64_t DefaultSuggestionsLoggerFactory.deinit()
{
  sub_5058((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t DefaultSuggestionsLoggerFactory.__deallocating_deinit()
{
  sub_5058((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_5B7C()
{
  result = qword_10520;
  if (!qword_10520)
  {
    sub_6BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10520);
  }

  return result;
}

uint64_t sub_5C28(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_64E8(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  sub_5058(a1);
  return v12;
}

uint64_t DefaultFeatureServiceFactory.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_6C74();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_5DF0, 0, 0);
}

uint64_t sub_5DF0()
{
  v1 = *(v0 + 144);
  v2 = v1[4];
  sub_4DD4(v1, v1[3]);
  if (sub_6954())
  {
    v3 = *(v0 + 208);
    sub_69F4();
    v4 = sub_6C64();
    v5 = sub_6CF4();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_66A4(&dword_0, v6, v7, "Enabled feature service");
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 160);

    (*(v10 + 8))(v8, v9);
    sub_65A8(v11, v0 + 56);
    if (*(v0 + 80))
    {
      sub_5828((v0 + 56), v0 + 16);
    }

    else
    {
      sub_5154(*(v0 + 176) + 16, v0 + 16);
      if (*(v0 + 80))
      {
        sub_6618(v0 + 56);
      }
    }

    sub_69D4();
    v25 = async function pointer to static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)[1];
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v26[1] = sub_6080;
    v27 = *(v0 + 168);
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);

    return static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)(v29, v0 + 96, v28, v0 + 16, v27);
  }

  else
  {
    v12 = *(v0 + 200);
    sub_69F4();
    v13 = sub_6C64();
    v14 = sub_6CF4();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      sub_66A4(&dword_0, v15, v16, "Feature Service disabled.");
    }

    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);
    v20 = *(v0 + 136);

    (*(v18 + 8))(v17, v19);
    sub_6C14();
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_6080()
{
  v1 = *v0;
  v2 = (*v0)[27];
  v3 = *v0;

  sub_5058(v1 + 12);
  sub_5058(v1 + 2);
  v4 = v1[26];
  v5 = v1[25];

  v6 = v3[1];

  return v6();
}

uint64_t DefaultFeatureServiceFactory.__deallocating_deinit()
{
  sub_5058((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_6218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_62E4;

  return DefaultFeatureServiceFactory.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(a1, a2, a3, a4, a5);
}

uint64_t sub_62E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_63D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_6538(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t sub_64E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_6538(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_4E1C(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t sub_65A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2A18(&qword_105D0, &qword_71D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6618(uint64_t a1)
{
  v2 = sub_2A18(&qword_105D0, &qword_71D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_66A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}