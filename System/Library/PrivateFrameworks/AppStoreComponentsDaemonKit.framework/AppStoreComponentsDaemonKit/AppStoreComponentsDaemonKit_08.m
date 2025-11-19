uint64_t sub_22271B1C8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a6;
  v45 = a5;
  v42 = a4;
  v43 = a2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - v11;
  v13 = &v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service];
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service], *&v6[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24]);
  off_2835CACE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014568, &qword_2227456B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = ASCSignpostTagUnique();
  v15 = sub_2226DDE20(inited);
  swift_setDeallocating();
  v16 = [objc_opt_self() currentConnection];
  v17 = a3;
  v18 = sub_2226A9E18(v16, 0, 0, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
  sub_22266BCCC(v7 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController, &v49);
  sub_22266BCCC(v7 + v25, v48);
  sub_22266BCCC(v13, v47);
  v26 = swift_allocObject();
  *(v26 + 16) = v42;
  v27 = v41;
  *(v26 + 24) = v7;
  *(v26 + 32) = v27;
  *(v26 + 40) = v43;
  *(v26 + 48) = v17;
  *(v26 + 56) = v15;
  *(v26 + 64) = v18;
  *(v26 + 72) = v20;
  *(v26 + 80) = v22;
  *(v26 + 88) = v24;
  sub_222634290(&v49, v26 + 96);
  sub_222634290(v48, v26 + 136);
  sub_222634290(v47, v26 + 176);
  *(v26 + 216) = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v28 = v17;
  v29 = v7;

  v30 = sub_222738F2C();
  v31 = sub_22273946C();
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = &unk_222745760;
  v32[5] = v26;
  v32[6] = v30;

  sub_2226D4E54(0, 0, v12, &unk_222745768, v32);

  v33 = swift_allocObject();
  v34 = v46;
  *(v33 + 16) = v45;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_222725070;
  *(v35 + 24) = v33;
  *(v35 + 32) = "getLockup(forBundleID:withContext:enableAppDistribution:withReplyHandler:)";
  *(v35 + 40) = 74;
  *(v35 + 48) = 2;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_222725070;
  *(v36 + 24) = v33;
  *(v36 + 32) = "getLockup(forBundleID:withContext:enableAppDistribution:withReplyHandler:)";
  *(v36 + 40) = 74;
  *(v36 + 48) = 2;
  v37 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v38 = sub_22273955C();
  v50 = v37;
  v51 = MEMORY[0x277D225C0];
  *&v49 = v38;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(&v49);
}

uint64_t sub_22271B64C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v18;
  *(v8 + 448) = v19;
  *(v8 + 424) = v17;
  *(v8 + 408) = v16;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 624) = a2;
  *(v8 + 352) = a1;
  v9 = *(*(sub_222738DAC() - 8) + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  v10 = sub_22273903C();
  *(v8 + 464) = v10;
  v11 = *(v10 - 8);
  *(v8 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v8 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271B7DC, 0, 0);
}

id sub_22271B7DC()
{
  v32 = v0;
  if (*(v0 + 624) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 536) = v1;
    *v1 = v0;
    v1[1] = sub_22271BB5C;
    v2 = *(v0 + 360);

    return sub_222717F58();
  }

  v4 = *(v0 + 392);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1(*(v0 + 440), *(*(v0 + 440) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  v30 = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  *(v0 + 560) = @"app";
  v8 = -1;
  v9 = -1 << *(v4 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v4 + 56);
  v11 = (63 - v9) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_13:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v4 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_13;
    }
  }

  v16 = *(v0 + 416);
  v15 = *(v0 + 424);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);

  v21 = sub_2226A6000(@"app", v20, v19, v18, v17, v16, v15);
  *(v0 + 568) = v21;
  v22 = *(v30 + 16);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = sub_2226959D0(*(v30 + 16), 0);
  v24 = sub_2226E96F0(&v31, v23 + 4, v22, v30);
  sub_2226342B0();
  if (v24 != v22)
  {
    __break(1u);
LABEL_18:
  }

  v25 = *(v0 + 384);
  v26 = sub_22273936C();

  [v21 setBundleIdentifiers_];

  v27 = sub_2226A85D8();
  [v21 setAccount_];

  [v21 setAppDistributionCountryCodeOverride_];
  v28 = swift_task_alloc();
  *(v0 + 576) = v28;
  *v28 = v0;
  v28[1] = sub_22271C40C;
  v29 = *(v0 + 392);

  return sub_2226A69BC(v21, v29);
}

uint64_t sub_22271BB5C(char a1)
{
  v2 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 625) = a1;

  return MEMORY[0x2822009F8](sub_22271BC5C, 0, 0);
}

id sub_22271BC5C()
{
  v40 = v0;
  if (*(v0 + 625) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 544) = v1;
    *v1 = v0;
    v1[1] = sub_22271BFF8;
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 360);
    v42 = 0;
    v43 = 0;

    return sub_22271CEB8(v9, v8, v6, v7, v4, v5, v2, v3);
  }

  v12 = *(v0 + 392);
  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1(*(v0 + 440), *(*(v0 + 440) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v14;
  *(inited + 40) = v13;

  v38 = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  *(v0 + 560) = @"app";
  v16 = -1;
  v17 = -1 << *(v12 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v12 + 56);
  v19 = (63 - v17) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_13:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v18)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v12 + 56 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  v24 = *(v0 + 416);
  v23 = *(v0 + 424);
  v26 = *(v0 + 400);
  v25 = *(v0 + 408);
  v28 = *(v0 + 384);
  v27 = *(v0 + 392);

  v29 = sub_2226A6000(@"app", v28, v27, v26, v25, v24, v23);
  *(v0 + 568) = v29;
  v30 = *(v38 + 16);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = sub_2226959D0(*(v38 + 16), 0);
  v32 = sub_2226E96F0(&v39, v31 + 4, v30, v38);
  sub_2226342B0();
  if (v32 != v30)
  {
    __break(1u);
LABEL_18:
  }

  v33 = *(v0 + 384);
  v34 = sub_22273936C();

  [v29 setBundleIdentifiers_];

  v35 = sub_2226A85D8();
  [v29 setAccount_];

  [v29 setAppDistributionCountryCodeOverride_];
  v36 = swift_task_alloc();
  *(v0 + 576) = v36;
  *v36 = v0;
  v36[1] = sub_22271C40C;
  v37 = *(v0 + 392);

  return sub_2226A69BC(v29, v37);
}

uint64_t sub_22271BFF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[66];
    v8 = v4[65];
    v10 = v4[63];
    v9 = v4[64];
    v12 = v4[61];
    v11 = v4[62];
    v13 = v4[60];
    v14 = v4[57];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {
    v4[69] = a1;

    return MEMORY[0x2822009F8](sub_22271C1A8, 0, 0);
  }
}

uint64_t sub_22271C1A8()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 528);
  v3 = *(v0 + 432);
  sub_2226AF8EC(*(v0 + 392));
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
  v4 = sub_2227394BC();

  v5 = [v1 lockupWithSignpostTags_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227440C0;
  *(v6 + 32) = v5;
  v7 = sub_22273946C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_22266BCCC(v3, v0 + 144);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  sub_222634290((v0 + 144), (v8 + 5));
  v9 = *(v0 + 552);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);
  v13 = *(v0 + 504);
  v12 = *(v0 + 512);
  v14 = *(v0 + 496);
  v19 = *(v0 + 488);
  v20 = *(v0 + 480);
  v21 = *(v0 + 456);
  v15 = *(v0 + 352);
  v16 = v5;
  sub_22269994C(0, 0, v10, &unk_222745790, v8);

  *v15 = v16;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22271C40C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v7 = sub_22271CB84;
  }

  else
  {
    *(v4 + 592) = a1;
    v7 = sub_22271C534;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22271C534()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 504);
  v24 = *(v0 + 592);
  v25 = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v9 = *(v0 + 448);
  v26 = *(v0 + 392);
  v27 = *(v0 + 520);
  v23 = *(v0 + 384);

  v28 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_222738D9C();
  sub_22273900C();
  v10 = sub_22273919C();
  v11 = MEMORY[0x277D837D0];
  *(v0 + 208) = MEMORY[0x277D837D0];
  *(v0 + 184) = v10;
  *(v0 + 192) = v12;
  sub_222738FEC();
  v13 = *(v6 + 8);
  v13(v5, v7);
  sub_222660468(v0 + 184, &qword_27D0130C0, &unk_2227413B0);
  v14 = sub_22273919C();
  *(v0 + 240) = v11;
  *(v0 + 216) = v14;
  *(v0 + 224) = v15;
  sub_222738FEC();
  v13(v3, v7);
  sub_222660468(v0 + 216, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  sub_222738FEC();
  v13(v4, v7);
  sub_222660468(v0 + 248, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  *(v0 + 280) = v24;
  sub_222738FEC();
  v13(v2, v7);
  sub_222660468(v0 + 280, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  *(v0 + 312) = v26;

  sub_222738FEC();
  v13(v25, v7);
  sub_222660468(v0 + 312, &qword_27D0130C0, &unk_2227413B0);
  sub_222712368(v27, &unk_2835CB828, &qword_27D0141D0, &unk_222744ED0, sub_222724440);
  v16 = sub_22273872C();
  v17 = MEMORY[0x277D21FB0];
  *(v0 + 88) = v16;
  *(v0 + 96) = v17;
  __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  sub_22273871C();
  sub_22262E364(0, &qword_281312B50, off_2784B0650);
  *(v0 + 600) = sub_222738E6C();

  v13(v27, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v19 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730);
  v20 = *(MEMORY[0x277D22390] + 4);
  v21 = swift_task_alloc();
  *(v0 + 608) = v21;
  *v21 = v0;
  v21[1] = sub_22271C9B8;

  return MEMORY[0x282180360](v0 + 344, v18, v19);
}

uint64_t sub_22271C9B8()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 600);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[66];
    v7 = v2[65];
    v9 = v2[63];
    v8 = v2[64];
    v11 = v2[61];
    v10 = v2[62];
    v12 = v2[60];
    v13 = v2[57];

    v14 = *(v5 + 8);

    return v14();
  }

  else
  {
    v2[77] = v2[43];

    return MEMORY[0x2822009F8](sub_22271CC54, 0, 0);
  }
}

uint64_t sub_22271CB84()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v7 = *(v0 + 488);
  v6 = *(v0 + 496);
  v8 = *(v0 + 480);
  v9 = *(v0 + 456);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22271CC54()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 528);
  v3 = *(v0 + 432);
  sub_2226AF8EC(*(v0 + 392));
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
  v4 = sub_2227394BC();

  v5 = [v1 lockupWithSignpostTags_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227440C0;
  *(v6 + 32) = v5;
  v7 = sub_22273946C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_22266BCCC(v3, v0 + 104);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  sub_222634290((v0 + 104), (v8 + 5));
  v9 = *(v0 + 616);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);
  v13 = *(v0 + 504);
  v12 = *(v0 + 512);
  v14 = *(v0 + 496);
  v19 = *(v0 + 488);
  v20 = *(v0 + 480);
  v21 = *(v0 + 456);
  v15 = *(v0 + 352);
  v16 = v5;
  sub_22269994C(0, 0, v10, &unk_222745778, v8);

  *v15 = v16;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22271CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v13;
  v9[13] = v8;
  v9[10] = a8;
  v9[11] = v12;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v9[14] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22271CF44, 0, 0);
}

uint64_t sub_22271CF44()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 80);
  v12 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v12;
  *(v6 + 64) = v13;
  *(v6 + 80) = v14;
  *(v6 + 96) = v3;
  *(v6 + 104) = v1;
  v8 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v9 = *(MEMORY[0x277D859B8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_22271D0A4;

  return MEMORY[0x282200740](v0 + 16, v5, v8, 0, 0, &unk_2227457A8, v6, v5);
}

uint64_t sub_22271D0A4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_22271D1C0;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_22272507C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22271D1C0()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_22271D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v22;
  *(v8 + 552) = v21;
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 488) = a5;
  *(v8 + 496) = a6;
  *(v8 + 472) = a3;
  *(v8 + 480) = a4;
  *(v8 + 456) = a1;
  *(v8 + 464) = a2;
  v9 = *(*(sub_222738DAC() - 8) + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_22273903C();
  *(v8 + 576) = v10;
  v11 = *(v10 - 8);
  *(v8 + 584) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145E0, &qword_2227457B0);
  *(v8 + 672) = v14;
  v15 = *(v14 - 8);
  *(v8 + 680) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 688) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271D51C, 0, 0);
}

uint64_t sub_22271D51C()
{
  *(v0 + 48) = @"app";
  v1 = v0 + 48;
  v39 = *(v0 + 552);
  v2 = *(v0 + 464);
  *(v0 + 696) = @"app";
  *(v0 + 704) = 0x2835CE868;
  *(v0 + 56) = 0x2835CE868;
  v40 = *v2;
  v38 = sub_22273946C();
  v3 = *(v38 - 8);
  v37 = *(v3 + 56);
  v36 = (v3 + 48);
  v35 = (v3 + 8);
  v4 = @"app";
  v5 = @"appDistributionApp";
  v6 = 0;
  v7 = 0;
  do
  {
    v50 = v6;
    v9 = *(v0 + 664);
    v47 = *(v0 + 656);
    v46 = *(v0 + 560);
    v45 = *(v0 + 544);
    v43 = *(v0 + 528);
    v44 = *(v0 + 536);
    v10 = *(v0 + 504);
    v41 = *(v0 + 512);
    v42 = *(v0 + 520);
    v11 = *(v0 + 488);
    v12 = *(v0 + 496);
    v13 = *(v0 + 472);
    v14 = *(v0 + 480);
    v15 = *(v1 + 8 * v7);
    v37(v9, 1, 1, v38);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v49 = (v16 + 16);
    *(v16 + 24) = 0;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    *(v16 + 48) = v11;
    *(v16 + 56) = v15;
    *(v16 + 64) = v12;
    *(v16 + 72) = v10;
    *(v16 + 80) = v41;
    *(v16 + 88) = v42;
    *(v16 + 96) = v43;
    *(v16 + 104) = v44;
    *(v16 + 112) = v45;
    *(v16 + 128) = v46;
    sub_2226A5C24(v9, v47);
    v17 = (*v36)(v47, 1, v38);
    v48 = v15;
    v18 = v13;

    v19 = v12;

    v20 = *(v0 + 656);
    if (v17 == 1)
    {
      sub_222660468(*(v0 + 656), &unk_27D013050, &qword_222741370);
    }

    else
    {
      sub_22273945C();
      (*v35)(v20, v38);
    }

    v1 = v0 + 48;
    if (*v49)
    {
      v21 = *(v16 + 24);
      v22 = *v49;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_2227393FC();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
    v26 = v25 | v23;
    if (v25 | v23)
    {
      v26 = v0 + 144;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = v23;
      *(v0 + 168) = v25;
    }

    v8 = *(v0 + 664);
    v6 = 1;
    *(v0 + 400) = 1;
    *(v0 + 408) = v26;
    *(v0 + 416) = v40;
    swift_task_create();

    sub_222660468(v8, &unk_27D013050, &qword_222741370);
    v7 = 1;
  }

  while ((v50 & 1) == 0);
  v27 = *(v0 + 688);
  type metadata accessor for Kind(0);
  *(v0 + 712) = v28;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273947C();
  *(v0 + 720) = MEMORY[0x277D84F98];
  v29 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0);
  v30 = *(MEMORY[0x277D856D0] + 4);
  v31 = swift_task_alloc();
  *(v0 + 728) = v31;
  *v31 = v0;
  v31[1] = sub_22271D99C;
  v32 = *(v0 + 688);
  v33 = *(v0 + 672);

  return MEMORY[0x282200308](v0 + 424, v33, v29);
}

uint64_t sub_22271D99C()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v7 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v4 = v2[90];
    (*(v2[85] + 8))(v2[86], v2[84]);

    v5 = sub_22271E4C8;
  }

  else
  {
    v5 = sub_22271DAD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22271DAD8()
{
  v2 = v0[53];
  v3 = v0[90];
  if (v2)
  {
    v4 = v0[54];
    v5 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[56] = v3;
    v7 = sub_222694708(v5);
    v9 = *(v3 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[90] + 24) < v12)
      {
        sub_22268B030(v12, isUniquelyReferenced_nonNull_native);
        v13 = v0[56];
        v7 = sub_222694708(v5);
        if ((v1 & 1) != (v14 & 1))
        {
          v15 = v0[89];

          return sub_222739B8C();
        }

LABEL_16:
        v51 = v0[56];
        if (v1)
        {
LABEL_17:
          v52 = v51[7];
          v53 = *(v52 + 8 * v7);
          *(v52 + 8 * v7) = v4;

LABEL_26:
          v0[90] = v51;
          v70 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0);
          v71 = *(MEMORY[0x277D856D0] + 4);
          v72 = swift_task_alloc();
          v0[91] = v72;
          *v72 = v0;
          v72[1] = sub_22271D99C;
          v73 = v0[86];
          v74 = v0[84];

          return MEMORY[0x282200308](v0 + 53, v74, v70);
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }
    }

    v67 = v7;
    sub_22268D4B8();
    v7 = v67;
    v51 = v0[56];
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_24:
    v51[(v7 >> 6) + 8] |= 1 << v7;
    *(v51[6] + 8 * v7) = v5;
    *(v51[7] + 8 * v7) = v4;

    v68 = v51[2];
    v11 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (!v11)
    {
      v51[2] = v69;
      goto LABEL_26;
    }

    __break(1u);
    return MEMORY[0x282180360](v48, v49, v50);
  }

  (*(v0[85] + 8))(v0[86], v0[84]);
  v17 = v0[90];
  if (*(v3 + 16))
  {
    v18 = v0[90];
    v19 = sub_222694708(v0[87]);
    v20 = v0[90];
    if (v21)
    {
      if (*(v3 + 16))
      {
        v22 = *(*(v20 + 56) + 8 * v19);
        v23 = v0[88];

        v24 = sub_222694708(v23);
        if (v25)
        {
          v26 = v0[90];
          v27 = v0[87];
          v91 = v0[81];
          v78 = v0[77];
          v77 = v0[76];
          v28 = v0[75];
          v29 = v0[74];
          v30 = v0[73];
          v75 = v0[72];
          v31 = v0[71];
          v85 = v0[67];
          v86 = v0[80];
          v83 = v0[79];
          v84 = v0[66];
          v82 = v0[65];
          v80 = v0[78];
          v81 = v0[64];
          v87 = v0[63];
          v76 = v0[62];
          v32 = v0[59];
          v79 = *(*(v20 + 56) + 8 * v24);

          v89 = *__swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v32 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
          sub_222738D9C();
          sub_22273900C();
          v33 = sub_22273919C();
          v34 = MEMORY[0x277D837D0];
          v0[25] = MEMORY[0x277D837D0];
          v0[22] = v33;
          v0[23] = v35;
          sub_222738FEC();
          v36 = *(v30 + 8);
          v36(v29, v75);
          sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
          v37 = sub_22273919C();
          v0[29] = v34;
          v0[26] = v37;
          v0[27] = v38;
          sub_222738FEC();
          v39 = v36;
          v36(v28, v75);
          sub_222660468((v0 + 26), &qword_27D0130C0, &unk_2227413B0);
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
          v0[33] = v40;
          v0[30] = v22;
          sub_222738FEC();
          v36(v77, v75);
          sub_222660468((v0 + 30), &qword_27D0130C0, &unk_2227413B0);
          v0[37] = v40;
          v0[34] = v79;
          sub_222738FEC();
          v36(v78, v75);
          sub_222660468((v0 + 34), &qword_27D0130C0, &unk_2227413B0);
          v41 = MEMORY[0x277D837D0];
          v0[41] = MEMORY[0x277D837D0];
          v0[38] = v81;
          v0[39] = v82;

          sub_222738FEC();
          v39(v80, v75);
          sub_222660468((v0 + 38), &qword_27D0130C0, &unk_2227413B0);
          v0[45] = v41;
          v0[42] = v84;
          v0[43] = v85;

          sub_222738FEC();
          v39(v83, v75);
          sub_222660468((v0 + 42), &qword_27D0130C0, &unk_2227413B0);
          v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
          v0[46] = v87;

          sub_222738FEC();
          v39(v86, v75);
          sub_222660468((v0 + 46), &qword_27D0130C0, &unk_2227413B0);
          sub_222712368(v91, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
          v42 = sub_22273872C();
          v43 = MEMORY[0x277D21FB0];
          v0[11] = v42;
          v0[12] = v43;
          __swift_allocate_boxed_opaque_existential_1(v0 + 8);
          sub_22273871C();
          type metadata accessor for ASCLockupContainer();
          sub_222738E6C();

          __swift_destroy_boxed_opaque_existential_1(v0 + 8);
          v0[16] = v42;
          v0[17] = v43;
          __swift_allocate_boxed_opaque_existential_1(v0 + 13);
          sub_22273871C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
          v0[93] = sub_222738E6C();

          v39(v91, v75);
          __swift_destroy_boxed_opaque_existential_1(v0 + 13);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
          v45 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8);
          v46 = *(MEMORY[0x277D22390] + 4);
          v47 = swift_task_alloc();
          v0[94] = v47;
          *v47 = v0;
          v47[1] = sub_22271E5DC;
          v48 = (v0 + 55);
          v49 = v44;
          v50 = v45;

          return MEMORY[0x282180360](v48, v49, v50);
        }

        v54 = v0[90];
      }
    }
  }

  sub_2227247C4();
  swift_allocError();
  *v55 = 1;
  swift_willThrow();
  v56 = v0[86];
  v57 = v0[83];
  v58 = v0[82];
  v59 = v0[81];
  v60 = v0[80];
  v61 = v0[79];
  v62 = v0[78];
  v63 = v0[77];
  v64 = v0[76];
  v65 = v0[75];
  v88 = v0[74];
  v90 = v0[71];

  v66 = v0[1];

  return v66();
}

uint64_t sub_22271E4C8()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v13 = v0[74];
  v14 = v0[71];
  v15 = v0[92];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22271E5DC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 752);
  v5 = *v1;

  v6 = v2[93];

  if (v0)
  {
    v7 = v3[86];
    v8 = v3[83];
    v9 = v3[82];
    v10 = v3[81];
    v11 = v3[80];
    v12 = v3[79];
    v13 = v3[78];
    v14 = v3[77];
    v15 = v3[76];
    v19 = v3[75];
    v20 = v3[74];
    v16 = v3[71];

    v17 = *(v5 + 8);

    return v17();
  }

  else
  {
    v3[95] = v3[55];

    return MEMORY[0x2822009F8](sub_22271E7F8, 0, 0);
  }
}

uint64_t sub_22271E7F8()
{
  v1 = v0[95];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = v0[95];
    }

    result = sub_22273984C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v0[95];

    sub_2227247C4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v0[86];
    v16 = v0[83];
    v17 = v0[82];
    v18 = v0[81];
    v19 = v0[80];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[77];
    v23 = v0[76];
    v29 = v0[75];
    v31 = v0[74];
    v33 = v0[71];

    v11 = v0[1];
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223DBEC70](0, v0[95]);
    v24 = v0[95];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[95] + 32);
  }

  v4 = v0[86];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[75];
  v30 = v0[74];
  v32 = v0[71];
  v10 = v0[57];

  *v10 = v3;

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_22271EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v19;
  *(v8 + 288) = v17;
  *(v8 + 304) = v18;
  *(v8 + 272) = v16;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 224) = a1;
  *(v8 + 232) = a4;
  v9 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  *(v8 + 344) = v11;
  v12 = *(v11 - 8);
  *(v8 + 352) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271EBB4, 0, 0);
}

uint64_t sub_22271EBB4()
{
  v1 = v0[45];
  v3 = v0[30];
  v2 = v0[31];
  v0[46] = __swift_project_boxed_opaque_existential_1((v0[29] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher), *(v0[29] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v0[47] = sub_2226DD5A8(inited);
  swift_setDeallocating();
  sub_22269E384(inited + 32);
  v5 = sub_22273916C();
  sub_222738B0C();

  v6 = *(MEMORY[0x277D22378] + 4);
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_22271ED34;
  v8 = v0[45];
  v9 = v0[43];

  return MEMORY[0x282180268](v0 + 53, sub_2226A9B54, 0, v9);
}

uint64_t sub_22271ED34()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v5 = *(*v0 + 344);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  *(v1 + 425) = *(v1 + 424);

  return MEMORY[0x2822009F8](sub_22271EE94, 0, 0);
}

id sub_22271EE94()
{
  v46 = v0;
  v1 = *(v0 + 272);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 272);

  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      result = [objc_opt_self() requestDidBeginWithTag_];
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 376);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);

  v20 = sub_2226A6000(v19, v18, v17, v16, v15, v14, v13);
  *(v0 + 392) = v20;
  v21 = *(v12 + 16);
  v22 = *(v0 + 376);
  if (!v21)
  {
    goto LABEL_14;
  }

  v23 = sub_2226959D0(*(v12 + 16), 0);
  v24 = sub_2226E96F0(&v45, v23 + 4, v21, v22);
  sub_2226342B0();
  if (v24 != v21)
  {
    __break(1u);
LABEL_14:
  }

  v25 = *(v0 + 425);
  v26 = sub_22273936C();

  [v20 setBundleIdentifiers_];

  if (v25)
  {
    v28 = *(v0 + 336);
    v27 = *(v0 + 368);
    v29 = (v27 + *(type metadata accessor for AMSMediaFetcher() + 24));
    v30 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_2227384EC();
    v31 = sub_222738CFC();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v28, 1, v31);
    v34 = *(v0 + 336);
    if (v33 == 1)
    {
      sub_222660468(*(v0 + 336), &unk_27D013A90, &unk_222741DC0);
      v35 = 0;
    }

    else
    {
      v37 = *(v0 + 336);
      v35 = MEMORY[0x223DBDFF0]();
      (*(v32 + 8))(v34, v31);
    }
  }

  else
  {
    v36 = *(v0 + 264);
    v35 = sub_2226A85D8();
  }

  [v20 setAccount_];
  v38 = *(v0 + 320);

  if (v38)
  {
    v39 = *(v0 + 312);
    v40 = *(v0 + 320);
    v41 = sub_22273916C();
  }

  else
  {
    v41 = 0;
  }

  [v20 setAppDistributionCountryCodeOverride_];

  v42 = swift_task_alloc();
  *(v0 + 400) = v42;
  *v42 = v0;
  v42[1] = sub_22271F21C;
  v43 = *(v0 + 368);
  v44 = *(v0 + 272);

  return sub_2226A69BC(v20, v44);
}

uint64_t sub_22271F21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v7 = sub_22271F3E4;
  }

  else
  {
    *(v4 + 416) = a1;
    v7 = sub_22271F344;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22271F344()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 360);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 256);
  v6 = *(v0 + 224);
  *v6 = v5;
  v6[1] = v1;
  v7 = v5;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22271F3E4()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 256);
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  type metadata accessor for Kind(0);
  *(v0 + 88) = v8;
  *(v0 + 64) = v3;
  v9 = v3;
  sub_22273816C();
  sub_222660468(v0 + 64, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  *(v0 + 120) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  sub_22273816C();
  sub_222660468(v0 + 96, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(v0 + 192) = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = *(v0 + 200);
  *(v0 + 208) = v14;
  sub_222724184(&unk_27D014600, type metadata accessor for AMSError);
  v15 = sub_22273723C();

  v16 = *MEMORY[0x277CEE1A0];
  v17 = sub_22273919C();
  if (!*(v15 + 16))
  {

    goto LABEL_10;
  }

  v19 = sub_222688818(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_12;
  }

  sub_22262BF70(*(v15 + 56) + 32 * v19, v0 + 128);

  if (!*(v0 + 152))
  {
LABEL_12:
    sub_222660468(v0 + 128, &qword_27D0130C0, &unk_2227413B0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  if (swift_dynamicCast())
  {

    v22 = *(v0 + 216);
    goto LABEL_14;
  }

LABEL_13:
  v23 = *(v0 + 408);
  v22 = sub_222732F68(MEMORY[0x277D84F90]);

LABEL_14:
  v24 = *(v0 + 360);
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 256);
  v28 = *(v0 + 224);
  *v28 = v27;
  v28[1] = v22;
  v29 = v27;

  v30 = *(v0 + 8);

  return v30();
}

void sub_22271F818(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v41 = a3;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_222736FEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_222736FFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  v19 = [objc_opt_self() currentConnection];
  if (v19 && (v20 = v19, v21 = sub_2226B3064(), v20, (v21 & 1) != 0))
  {
    v22 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController;
    sub_22266BCCC(v18, &v44);
    sub_22266BCCC(v5 + v22, v43);
    v23 = swift_allocObject();
    v23[2] = a2;
    sub_222634290(&v44, (v23 + 3));
    v23[8] = v40;
    sub_222634290(v43, (v23 + 9));
    v23[14] = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    v24 = a2;

    v25 = sub_222738F2C();
    v26 = sub_22273946C();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = &unk_222745728;
    v27[5] = v23;
    v27[6] = v25;

    sub_2226D4E54(0, 0, v17, &unk_222745738, v27);

    v28 = swift_allocObject();
    v29 = v42;
    *(v28 + 16) = v41;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2227243FC;
    *(v30 + 24) = v28;
    *(v30 + 32) = "buildLockup(fromMediaAPIResponse:withContext:withReplyHandler:)";
    *(v30 + 40) = 63;
    *(v30 + 48) = 2;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_2227243FC;
    *(v31 + 24) = v28;
    *(v31 + 32) = "buildLockup(fromMediaAPIResponse:withContext:withReplyHandler:)";
    *(v31 + 40) = 63;
    *(v31 + 48) = 2;
    v32 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
    swift_retain_n();

    v33 = sub_22273955C();
    v45 = v32;
    v46 = MEMORY[0x277D225C0];
    *&v44 = v33;
    sub_222738E8C();

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    v35 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v36;
    *(inited + 48) = 0xD000000000000062;
    *(inited + 56) = 0x800000022274E630;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620]);
    sub_22273725C();
    v37 = sub_222736FCC();
    (*(v10 + 8))(v13, v9);
    v41(0, v37);
  }
}

uint64_t sub_22271FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(sub_222738DAC() - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_22273903C();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271FF44, 0, 0);
}

uint64_t sub_22271FF44()
{
  v1 = *(v0 + 320);
  v2 = sub_22273919C();
  v4 = v3;
  if (v2 == sub_22273919C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_222739B4C();

    if ((v7 & 1) == 0)
    {
      v34 = *(v0 + 408);
      v35 = *(v0 + 416);
      v8 = *(v0 + 392);
      v9 = *(v0 + 376);
      v10 = *(v0 + 384);
      v11 = *(v0 + 360);
      v12 = *(v0 + 368);
      v13 = *(v0 + 352);
      v32 = *(v0 + 400);
      v33 = *(v0 + 336);
      v36 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
      sub_222738D9C();
      sub_22273900C();
      v14 = sub_22273919C();
      v15 = MEMORY[0x277D837D0];
      *(v0 + 160) = MEMORY[0x277D837D0];
      *(v0 + 136) = v14;
      *(v0 + 144) = v16;
      sub_222738FEC();
      v17 = *(v12 + 8);
      v17(v9, v11);
      sub_222660468(v0 + 136, &qword_27D0130C0, &unk_2227413B0);
      v18 = sub_22273919C();
      *(v0 + 192) = v15;
      *(v0 + 168) = v18;
      *(v0 + 176) = v19;
      sub_222738FEC();
      v17(v10, v11);
      sub_222660468(v0 + 168, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 216) = 0u;
      *(v0 + 200) = 0u;
      sub_222738FEC();
      v17(v8, v11);
      sub_222660468(v0 + 200, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
      *(v0 + 232) = v33;

      sub_222738FEC();
      v17(v32, v11);
      sub_222660468(v0 + 232, &qword_27D0130C0, &unk_2227413B0);
      *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
      *(v0 + 264) = MEMORY[0x277D84FA0];
      sub_222738FEC();
      v17(v34, v11);
      sub_222660468(v0 + 264, &qword_27D0130C0, &unk_2227413B0);
      sub_222712368(v35, &unk_2835CB828, &qword_27D0141D0, &unk_222744ED0, sub_222724440);
      v20 = sub_22273872C();
      v21 = MEMORY[0x277D21FB0];
      *(v0 + 40) = v20;
      *(v0 + 48) = v21;
      __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_22273871C();
      sub_22262E364(0, &qword_281312B50, off_2784B0650);
      *(v0 + 456) = sub_222738E6C();

      v17(v35, v11);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
      v23 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730);
      v24 = *(MEMORY[0x277D22390] + 4);
      v25 = swift_task_alloc();
      *(v0 + 464) = v25;
      *v25 = v0;
      v25[1] = sub_222720898;
      v26 = v0 + 296;
      goto LABEL_9;
    }
  }

  v27 = *(v0 + 336);
  v28 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  *(v0 + 432) = sub_2226FBB60(v27, MEMORY[0x277D84FA0]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
  v23 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730);
  v29 = *(MEMORY[0x277D22390] + 4);
  v30 = swift_task_alloc();
  *(v0 + 440) = v30;
  *v30 = v0;
  v30[1] = sub_222720504;
  v26 = v0 + 304;
LABEL_9:

  return MEMORY[0x282180360](v26, v22, v23);
}

uint64_t sub_222720504()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v5 = *v1;

  if (v0)
  {
    v7 = v2[52];
    v6 = v2[53];
    v9 = v2[50];
    v8 = v2[51];
    v11 = v2[48];
    v10 = v2[49];
    v12 = v2[47];
    v13 = v2[44];

    v14 = *(v5 + 8);

    return v14();
  }

  else
  {
    v2[56] = v2[38];

    return MEMORY[0x2822009F8](sub_2227206CC, 0, 0);
  }
}

uint64_t sub_2227206CC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 96), (v6 + 5));
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v17 = *(v0 + 376);
  v18 = *(v0 + 352);
  v13 = *(v0 + 312);
  v14 = *(v0 + 448);
  sub_22269994C(0, 0, v7, &unk_222745748, v6);

  *v13 = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_222720898()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 456);
  v5 = *v1;

  if (v0)
  {
    v7 = v2[52];
    v6 = v2[53];
    v9 = v2[50];
    v8 = v2[51];
    v11 = v2[48];
    v10 = v2[49];
    v12 = v2[47];
    v13 = v2[44];

    v14 = *(v5 + 8);

    return v14();
  }

  else
  {
    v2[59] = v2[37];

    return MEMORY[0x2822009F8](sub_222720A60, 0, 0);
  }
}

uint64_t sub_222720A60()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 56);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 56), (v6 + 5));
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v17 = *(v0 + 376);
  v18 = *(v0 + 352);
  v13 = *(v0 + 312);
  v14 = *(v0 + 472);
  sub_22269994C(0, 0, v7, &unk_222745740, v6);

  *v13 = v14;

  v15 = *(v0 + 8);

  return v15();
}

void sub_222720D0C(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v75 = a2;
  v76 = a3;
  v72 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_222736FEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_222736FFC();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  v18 = sub_22273916C();
  v73 = v3;
  sub_222738B0C();

  sub_222738B3C();
  (*(v14 + 8))(v17, v13);
  if (v78 != 1)
  {
    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    v27 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v28;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000022274E580;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620]);
    goto LABEL_6;
  }

  v19 = v72;
  v20 = [v72 kind];
  v21 = sub_22273919C();
  v23 = v22;
  if (v21 != sub_22273919C() || v23 != v24)
  {
    v30 = sub_222739B4C();

    v25 = v73;
    if (v30)
    {
      goto LABEL_8;
    }

    sub_222736FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_2227412F0;
    v62 = *MEMORY[0x277CCA450];
    *(v61 + 32) = sub_22273919C();
    *(v61 + 40) = v63;
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    sub_22273991C();

    strcpy(&v78, "Lockup kind ");
    BYTE13(v78) = 0;
    HIWORD(v78) = -5120;
    v64 = [v19 kind];
    v65 = sub_22273919C();
    v67 = v66;

    MEMORY[0x223DBE5D0](v65, v67);

    MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
    v68 = v78;
    *(v61 + 72) = MEMORY[0x277D837D0];
    *(v61 + 48) = v68;
    sub_222710688(v61);
    swift_setDeallocating();
    sub_222660468(v61 + 32, &qword_27D013250, &unk_222741780);
    sub_222724184(&qword_27D014560, MEMORY[0x277CC8620]);
LABEL_6:
    sub_22273725C();
    v29 = sub_222736FCC();
    (*(v74 + 8))(v9, v6);
    v75(0, v29);

    return;
  }

  v25 = v73;
LABEL_8:
  v31 = v25 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v25 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014568, &qword_2227456B0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_2227412F0;
  *(v32 + 32) = ASCSignpostTagUnique();
  v33 = sub_2226DDE20(v32);
  swift_setDeallocating();
  v34 = [objc_opt_self() currentConnection];
  v35 = [v19 clientID];
  if (v35)
  {
    v36 = v35;
    v37 = sub_22273919C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = sub_2226A9E18(v34, v37, v39, [v19 context]);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v19;
  v48 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController;
  sub_22266BCCC(v31, &v78);
  sub_22266BCCC(v25 + v48, v77);
  v49 = swift_allocObject();
  sub_222634290(&v78, (v49 + 2));
  v49[7] = v47;
  v49[8] = v33;
  v49[9] = v40;
  v49[10] = v42;
  v49[11] = v44;
  v49[12] = v46;
  sub_222634290(v77, (v49 + 13));
  v49[18] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
  v50 = v47;
  v51 = sub_222738F2C();
  v52 = sub_22273946C();
  v53 = v71;
  (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = &unk_2227456C0;
  v54[5] = v49;
  v54[6] = v51;

  sub_2226D4E54(0, 0, v53, &unk_2227456D0, v54);

  v55 = swift_allocObject();
  v56 = v76;
  *(v55 + 16) = v75;
  *(v55 + 24) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_222724068;
  *(v57 + 24) = v55;
  *(v57 + 32) = "getLockupCollection(with:withReplyHandler:)";
  *(v57 + 40) = 43;
  *(v57 + 48) = 2;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_222724068;
  *(v58 + 24) = v55;
  *(v58 + 32) = "getLockupCollection(with:withReplyHandler:)";
  *(v58 + 40) = 43;
  *(v58 + 48) = 2;
  v59 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v60 = sub_22273955C();
  v79 = v59;
  v80 = MEMORY[0x277D225C0];
  *&v78 = v60;
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(&v78);
}

uint64_t sub_222721690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v16;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  v8[47] = a2;
  v8[48] = a3;
  v8[46] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  v10 = *(*(sub_222738DAC() - 8) + 64) + 15;
  v8[56] = swift_task_alloc();
  v11 = sub_22273903C();
  v8[57] = v11;
  v12 = *(v11 - 8);
  v8[58] = v12;
  v13 = *(v12 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222721820, 0, 0);
}

uint64_t sub_222721820()
{
  v38 = *(v0 + 528);
  v35 = *(v0 + 520);
  v27 = *(v0 + 496);
  v28 = *(v0 + 504);
  v26 = *(v0 + 488);
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v33 = *(v0 + 424);
  v31 = *(v0 + 512);
  v32 = *(v0 + 416);
  v29 = *(v0 + 400);
  v30 = *(v0 + 408);
  v6 = *(v0 + 384);
  v36 = *(v0 + 392);
  v7 = __swift_project_boxed_opaque_existential_1(*(v0 + 376), *(*(v0 + 376) + 24));
  v39 = [v6 id];
  v37 = [v6 kind];
  v40 = [v6 context];
  v25 = [v6 limit];
  v34 = *v7;
  sub_222738D9C();
  sub_22273900C();
  v8 = sub_22273919C();
  v9 = MEMORY[0x277D837D0];
  *(v0 + 160) = MEMORY[0x277D837D0];
  v10 = v9;
  *(v0 + 136) = v8;
  *(v0 + 144) = v11;
  sub_222738FEC();
  v12 = *(v4 + 8);
  v12(v1, v3);
  sub_222660468(v0 + 136, &qword_27D0130C0, &unk_2227413B0);
  v13 = sub_22273919C();
  *(v0 + 192) = v10;
  *(v0 + 168) = v13;
  *(v0 + 176) = v14;
  sub_222738FEC();
  v12(v2, v3);
  sub_222660468(v0 + 168, &qword_27D0130C0, &unk_2227413B0);
  v15 = sub_22273919C();
  *(v0 + 224) = v10;
  *(v0 + 200) = v15;
  *(v0 + 208) = v16;
  sub_222738FEC();
  v12(v26, v3);
  sub_222660468(v0 + 200, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 256) = MEMORY[0x277D83B88];
  *(v0 + 232) = v25;
  sub_222738FEC();
  v12(v27, v3);
  sub_222660468(v0 + 232, &qword_27D0130C0, &unk_2227413B0);
  v17 = MEMORY[0x277D837D0];
  *(v0 + 288) = MEMORY[0x277D837D0];
  *(v0 + 264) = v29;
  *(v0 + 272) = v30;

  sub_222738FEC();
  v12(v28, v3);
  sub_222660468(v0 + 264, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 320) = v17;
  *(v0 + 296) = v32;
  *(v0 + 304) = v33;

  sub_222738FEC();
  v12(v31, v3);
  sub_222660468(v0 + 296, &qword_27D0130C0, &unk_2227413B0);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  *(v0 + 328) = v36;

  sub_222738FEC();
  v12(v35, v3);
  sub_222660468(v0 + 328, &qword_27D0130C0, &unk_2227413B0);
  sub_222712368(v38, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
  v18 = sub_22273872C();
  v19 = MEMORY[0x277D21FB0];
  *(v0 + 40) = v18;
  *(v0 + 48) = v19;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22273871C();
  type metadata accessor for ASCLockupContainer();
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 80) = v18;
  *(v0 + 88) = v19;
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
  *(v0 + 536) = sub_222738E6C();

  v12(v38, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
  v21 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8);
  v22 = *(MEMORY[0x277D22390] + 4);
  v23 = swift_task_alloc();
  *(v0 + 544) = v23;
  *v23 = v0;
  v23[1] = sub_222721E70;

  return MEMORY[0x282180360](v0 + 360, v20, v21);
}

uint64_t sub_222721E70()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[66];
    v7 = v2[65];
    v9 = v2[63];
    v8 = v2[64];
    v11 = v2[61];
    v10 = v2[62];
    v13 = v2[59];
    v12 = v2[60];
    v16 = v2 + 55;
    v14 = v2[55];
    v15 = v16[1];

    v17 = *(v5 + 8);

    return v17();
  }

  else
  {
    v2[69] = v2[45];

    return MEMORY[0x2822009F8](sub_222722060, 0, 0);
  }
}

uint64_t sub_222722060()
{
  v1 = *(v0 + 552);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 552);
    }

    v2 = sub_22273984C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *(v0 + 552);

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v30 = MEMORY[0x277D84F90];
  result = sub_22273997C();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v28 = *(v0 + 552) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DBEC70](v4, *(v0 + 552));
    }

    else
    {
      v5 = *(v28 + 8 * v4);
    }

    v6 = v5;
    ++v4;
    sub_2226AF8EC(*(v0 + 392));
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
    v7 = sub_2227394BC();

    v8 = [v6 lockupWithSignpostTags_];

    sub_22273995C();
    v9 = *(v30 + 16);
    sub_22273998C();
    sub_22273999C();
    sub_22273996C();
  }

  while (v2 != v4);
  v10 = *(v0 + 552);

  v11 = v30;
LABEL_14:
  v14 = *(v0 + 528);
  v15 = *(v0 + 520);
  v16 = *(v0 + 504);
  v17 = *(v0 + 512);
  v18 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v19 = *(v0 + 440);
  v27 = *(v0 + 472);
  v29 = *(v0 + 448);
  v20 = *(v0 + 432);
  v21 = *(v0 + 368);
  v22 = sub_22273946C();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_22266BCCC(v20, v0 + 96);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v11;
  sub_222634290((v0 + 96), (v23 + 5));

  sub_22269994C(0, 0, v19, &unk_2227456E8, v23);

  *v21 = v11;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2227223B0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_222722458(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22262E364(0, &qword_281312B50, off_2784B0650);
    v5 = sub_22273936C();
  }

  if (a2)
  {
    v6 = sub_22273726C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_222722504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014590, &qword_2227456F0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = sub_2227378CC();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = sub_2227377AC();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v14 = sub_2227377BC();
  v5[12] = v14;
  v15 = *(v14 - 8);
  v5[13] = v15;
  v16 = *(v15 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2227226E0, 0, 0);
}

uint64_t sub_2227226E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 120) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_16:
    v27 = *(v4 + 16);
    if (v27 >> 62)
    {
      if (v27 < 0)
      {
        v29 = *(v4 + 16);
      }

      v28 = sub_22273984C();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = MEMORY[0x277D84F90];
    if (v28)
    {
      v48 = MEMORY[0x277D84F90];
      v6 = sub_22273997C();
      if (v28 < 0)
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x28213E418](v6, v7, a3, a4);
      }

      v31 = 0;
      v32 = *(v4 + 16);
      v33 = v32 & 0xC000000000000001;
      v34 = v32 + 32;
      do
      {
        if (v33)
        {
          v35 = MEMORY[0x223DBEC70](v31, *(v4 + 16));
        }

        else
        {
          v35 = *(v34 + 8 * v31);
        }

        v36 = v35;
        ++v31;
        v37 = [v35 id];

        sub_22273995C();
        v38 = *(v48 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
      }

      while (v28 != v31);
      v30 = v48;
    }

    v39 = sub_2226AF794(v30);

    v40 = sub_2227113C8(v39);

    v41 = *(v4 + 24);
    v42 = sub_2226AF45C(v40);
    *(v4 + 128) = v42;

    v43 = v41[3];
    v44 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v43);
    v45 = *(MEMORY[0x277CEC0F0] + 4);
    v46 = swift_task_alloc();
    *(v4 + 136) = v46;
    *v46 = v4;
    v46[1] = sub_222722BE8;
    v6 = v42;
    v7 = 1;
    a3 = v43;
    a4 = v44;

    return MEMORY[0x28213E418](v6, v7, a3, a4);
  }

  if (v5 < 0)
  {
    v26 = *(v4 + 16);
  }

  v6 = sub_22273984C();
  *(v4 + 120) = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_3:
  v7 = *(v4 + 16);
  *(v4 + 184) = *MEMORY[0x277CEBFE8];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223DBEC70](0);
    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v7 + 32);
LABEL_6:
  v9 = v8;
  *(v4 + 152) = v8;
  *(v4 + 160) = 1;
  v10 = *(v4 + 88);
  v11 = *(v4 + 24);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = [v9 id];
  [v14 int64value];
  sub_222737C1C();
  *(v4 + 168) = 0;
  v15 = *(v4 + 112);
  v16 = *(v4 + 88);
  (*(*(v4 + 72) + 104))(*(v4 + 80), *(v4 + 184), *(v4 + 64));
  sub_22273778C();

  v17 = [v9 offer];
  v19 = *(v4 + 48);
  v18 = *(v4 + 56);
  v21 = *(v4 + 32);
  v20 = *(v4 + 40);
  if (v17)
  {
    swift_getObjectType();
    sub_222694714();
    swift_unknownObjectRelease();
    (*(v19 + 56))(v21, 0, 1, v20);
    (*(v19 + 32))(v18, v21, v20);
  }

  else
  {
    (*(v19 + 56))(*(v4 + 32), 1, 1, *(v4 + 40));
    sub_2227378BC();
    if ((*(v19 + 48))(v21, 1, v20) != 1)
    {
      sub_222660468(*(v4 + 32), &qword_27D014590, &qword_2227456F0);
    }
  }

  v22 = *(MEMORY[0x277CEC100] + 4);
  v23 = swift_task_alloc();
  *(v4 + 176) = v23;
  *v23 = v4;
  v23[1] = sub_222722CFC;
  v24 = *(v4 + 112);
  v25 = *(v4 + 56);

  return MEMORY[0x28213E448](v24, v25, v12, v13);
}

uint64_t sub_222722BE8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_222723444;
  }

  else
  {
    v3 = sub_222723398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222722CFC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_222722EB0, 0, 0);
}

uint64_t sub_222722EB0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  v6 = *(v0 + 168);
  if (v1 == v2)
  {
    v7 = *(v0 + 16);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v17 = *(v0 + 16);
      }

      v8 = sub_22273984C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_21;
    }

    v53 = MEMORY[0x277D84F90];
    v3 = sub_22273997C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v20 = *(v0 + 16);
      v21 = v20 & 0xC000000000000001;
      v22 = v20 + 32;
      do
      {
        if (v21)
        {
          v23 = MEMORY[0x223DBEC70](v19, *(v0 + 16));
        }

        else
        {
          v23 = *(v22 + 8 * v19);
        }

        v24 = v23;
        ++v19;
        v25 = [v23 id];

        sub_22273995C();
        v26 = *(v53 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
      }

      while (v8 != v19);
      v18 = v53;
LABEL_21:
      v27 = sub_2226AF794(v18);

      v28 = sub_2227113C8(v27);

      if (v6)
      {
        goto LABEL_22;
      }

      v36 = *(v0 + 24);
      v37 = sub_2226AF45C(v28);
      *(v0 + 128) = v37;

      v38 = v36[3];
      v39 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v38);
      v40 = *(MEMORY[0x277CEC0F0] + 4);
      v41 = swift_task_alloc();
      *(v0 + 136) = v41;
      *v41 = v0;
      v41[1] = sub_222722BE8;
      v3 = v37;
      v10 = 1;
      v4 = v38;
      v5 = v39;

      return MEMORY[0x28213E418](v3, v10, v4, v5);
    }

LABEL_38:
    __break(1u);
    return MEMORY[0x28213E418](v3, v10, v4, v5);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 16);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223DBEC70](*(v0 + 160));
  }

  else
  {
    if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v3 = *(v10 + 8 * v9 + 32);
  }

  v11 = v3;
  *(v0 + 152) = v3;
  *(v0 + 160) = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 24);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = [v11 id];
  [v16 int64value];
  sub_222737C1C();
  *(v0 + 168) = v6;
  if (v6)
  {

LABEL_22:
    v29 = *(v0 + 112);
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v32 = *(v0 + 56);
    v33 = *(v0 + 32);

    v34 = *(v0 + 8);

    return v34();
  }

  v42 = *(v0 + 112);
  v43 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), *(v0 + 184), *(v0 + 64));
  sub_22273778C();

  v44 = [v11 offer];
  v46 = *(v0 + 48);
  v45 = *(v0 + 56);
  v48 = *(v0 + 32);
  v47 = *(v0 + 40);
  if (v44)
  {
    swift_getObjectType();
    sub_222694714();
    swift_unknownObjectRelease();
    (*(v46 + 56))(v48, 0, 1, v47);
    (*(v46 + 32))(v45, v48, v47);
  }

  else
  {
    (*(v46 + 56))(*(v0 + 32), 1, 1, *(v0 + 40));
    sub_2227378BC();
    if ((*(v46 + 48))(v48, 1, v47) != 1)
    {
      sub_222660468(*(v0 + 32), &qword_27D014590, &qword_2227456F0);
    }
  }

  v49 = *(MEMORY[0x277CEC100] + 4);
  v50 = swift_task_alloc();
  *(v0 + 176) = v50;
  *v50 = v0;
  v50[1] = sub_222722CFC;
  v51 = *(v0 + 112);
  v52 = *(v0 + 56);

  return MEMORY[0x28213E448](v51, v52, v14, v15);
}

uint64_t sub_222723398()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_222723444()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t type metadata accessor for LockupFetcherClient()
{
  result = qword_281313510;
  if (!qword_281313510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22272361C()
{
  result = sub_222738BBC();
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

uint64_t sub_2227236C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013610, &qword_222742608);
    v2 = sub_222739A5C();
    v20 = v2;
    sub_2227399EC();
    v3 = sub_222739A0C();
    if (v3)
    {
      v4 = v3;
      sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_22262E364(0, &qword_281312B50, off_2784B0650);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_22268ADC8(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2227396BC();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_222739A0C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_222723910(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DBEBB0](a1, a2, v7);
      sub_22262E364(0, &qword_281312B70, off_2784B05F0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    if (sub_22273982C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22273983C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2227396BC();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2227396CC();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_222723B34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_222723B9C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v47 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v49 = a5;
  v50 = v7;
  v48 = v11;
  while (v10)
  {
    v62 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v58 = v22;
    v59 = v23;
    v60 = v25;
    v61 = v26;

    a2(&v54, &v58);

    v28 = v54;
    v27 = v55;
    v29 = v57;
    v53 = v56;
    v30 = *a5;
    v32 = sub_222688818(v54, v55);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((v62 & 1) == 0)
      {
        sub_22268C598();
      }
    }

    else
    {
      sub_222689324(v35, v62 & 1);
      v37 = *a5;
      v38 = sub_222688818(v28, v27);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_27;
      }

      v32 = v38;
    }

    v10 &= v10 - 1;
    v40 = *a5;
    if (v36)
    {
      v13 = (v40[7] + 16 * v32);
      v14 = v13[1];
      v58 = *v13;
      v59 = v14;
      swift_bridgeObjectRetain_n();
      MEMORY[0x223DBE5D0](44, 0xE100000000000000);
      MEMORY[0x223DBE5D0](v53, v29);

      v15 = v59;
      v16 = (v40[7] + 16 * v32);
      v17 = v16[1];
      *v16 = v58;
      v16[1] = v15;
    }

    else
    {
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v41 = (v40[6] + 16 * v32);
      *v41 = v28;
      v41[1] = v27;
      v42 = (v40[7] + 16 * v32);
      *v42 = v53;
      v42[1] = v29;
      v43 = v40[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_26;
      }

      v40[2] = v45;
    }

    a4 = 1;
    v12 = v18;
    a5 = v49;
    v7 = v50;
    v11 = v48;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_2226342B0();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v62 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_222739B8C();
  __break(1u);
  return result;
}

uint64_t sub_222723E98(uint64_t a1)
{
  v4 = v1[8];
  v12 = v1[7];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22266BE24;

  return sub_222721690(a1, (v1 + 2), v12, v4, v5, v6, v7, v8);
}

uint64_t sub_222723F8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_222724068(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2227240C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_222722504(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_222724184(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2227241CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(sub_22273823C() - 8);
  result = sub_222712B20(a1, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222724258(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[8];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_22271FDDC(a1, v4, (v1 + 3), v5, (v1 + 9));
}

uint64_t sub_222724320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D48FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2227243FC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22272447C(uint64_t a1)
{
  v16 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = *(v1 + 24);
  v4 = *(v1 + 48);
  v12 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v11 = *(v1 + 72);
  v7 = *(v1 + 88);
  v8 = *(v1 + 216);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_22271B64C(a1, v16, v14, v13, v12, v4, v5, v6);
}

uint64_t sub_22272459C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 80);
  v16 = *(v2 + 64);
  v11 = *(v2 + 96);
  v12 = *(v2 + 104);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22266BE24;

  return sub_22271D300(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2227246A4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v14 = *(v1 + 104);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22266BE24;

  return sub_22271EA60(a1, v17, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2227247C4()
{
  result = qword_27D0145F8;
  if (!qword_27D0145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0145F8);
  }

  return result;
}

uint64_t sub_22272483C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_222724880(uint64_t a1)
{
  v18 = *(v1 + 56);
  v16 = *(v1 + 64);
  v14 = *(v1 + 80);
  v15 = *(v1 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v12 = *(v1 + 120);
  v13 = *(v1 + 104);
  v11 = *(v1 + 136);
  v6 = *(v1 + 152);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_222715268(a1, v1 + 16, v18, v16, v15, v14, v4, v5);
}

uint64_t sub_2227249B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_222724ADC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v16 = *(v2 + 80);
  v17 = *(v2 + 64);
  v15 = *(v2 + 96);
  v12 = *(v2 + 112);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22266BE24;

  return sub_222718C48(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_222724BF4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v14 = *(v1 + 104);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_222660228;

  return sub_22271A1B0(a1, v17, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

id sub_222724E1C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(char *, char *)@<X3>, void *a5@<X8>)
{
  v12 = *(sub_22273823C() - 8);
  result = sub_222712F64(a1, *(v5 + 16), v5 + ((*(v12 + 80) + 24) & ~*(v12 + 80)), a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_222724ED4()
{
  result = qword_27D014630;
  if (!qword_27D014630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014630);
  }

  return result;
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = sub_22273823C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222725080(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_222738EEC();
}

unint64_t sub_222725110(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_22273974C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_22273974C();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2226B55C0(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_2227392CC();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2226B55C0(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2226B55C0(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_2227392CC();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_22273929C();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x223DBE570](result);
LABEL_23:
        sub_22273932C();
        sub_22272BA2C();
        sub_22273927C();

        sub_22273927C();
        sub_222725748(a2, a5, a6);
        sub_22273927C();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_222725424(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_22273925C();

  sub_22273974C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_22273974C();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2226B55C0(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_2227392CC();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = v11;
  if ((v11 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2226B55C0(v11, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2226B55C0(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_2227392CC();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_22273929C();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x223DBE570](result);
LABEL_23:
        sub_22273932C();
        sub_22272BA2C();
        sub_22273927C();

        sub_22273927C();
        sub_222725748(v11, a5, a6);
        sub_22273927C();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_222725748(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22273932C();
  }

  __break(1u);
  return result;
}

uint64_t sub_222725794(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v7 = v6;
  v49 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146B0, &unk_222745980);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - v14;
  v16 = sub_22273705C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226E114C(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_222660468(v15, &qword_27D0146B0, &unk_222745980);
    sub_2226E014C();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 7;
    return swift_willThrow();
  }

  v48 = a4;
  (*(v17 + 32))(v20, v15, v16);
  v23 = [a2 tags];
  sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  sub_2226FA0EC();
  v24 = sub_2227394CC();

  v25 = sub_2226AE4AC(v24, sub_2226DEA30, 0);
  if (!*(v25 + 16))
  {

    sub_2226E014C();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 7;
    swift_willThrow();
    return (*(v17 + 8))(v20, v16);
  }

  v45 = objc_autoreleasePoolPush();
  v50 = MEMORY[0x277D84FA0];
  v26 = objc_opt_self();
  v27 = [v26 subsystem];
  if (!v27)
  {
    sub_22273919C();
    v46 = v20;
    v27 = sub_22273916C();
    v7 = v6;
    v20 = v46;
  }

  v47 = a6;
  v28 = [v26 category];
  v29 = v28;
  if (!v28)
  {
    sub_22273919C();
    v29 = sub_22273916C();
  }

  v43 = a5;
  v44 = &v42;
  MEMORY[0x28223BE20](v28);
  v46 = v25;
  *(&v42 - 6) = v25;
  *(&v42 - 5) = &v50;
  v30 = v47;
  *(&v42 - 4) = a5;
  *(&v42 - 3) = v30;
  v31 = v48;
  *(&v42 - 2) = v49;
  *(&v42 - 1) = v31;
  v32 = [objc_allocWithZone(MEMORY[0x277D55030]) init];
  v33 = [objc_allocWithZone(MEMORY[0x277D55040]) init];
  [v33 addSubsystem:v27 category:v29];

  [v32 setSubsystemCategoryFilter_];
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22272BA88;
  *(v34 + 24) = &v42 - 8;
  sub_2226AA558(sub_22272BAB8, v34, v32, v20);
  if (v7)
  {

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_15:

      objc_autoreleasePoolPop(v45);

      return (*(v17 + 8))(v20, v16);
    }

    __break(1u);
  }

  else
  {
    v37 = v43;

    v38 = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      v39 = v50;
      if (*(v50 + 16))
      {
        sub_2226E014C();
        v40 = swift_allocError();
        *v41 = v39;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 32) = 6;

        v37(v40);
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222725D44(uint64_t a1, void *a2)
{
  v5 = sub_22273701C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x277D84F98];
  v34 = &v39;
  sub_222725794(a1, a2, sub_22272BA80, v33, sub_2227260A8, 0);
  if (v2)
  {
  }

  if (!*(v39 + 16))
  {
    sub_2226E014C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 7;
    swift_willThrow();
  }

  v11 = [objc_opt_self() category];
  v12 = sub_22273919C();
  v14 = v13;

  *&v37 = v12;
  *(&v37 + 1) = v14;
  sub_22273700C();
  sub_2226B1104();
  v15 = MEMORY[0x277D837D0];
  sub_22273976C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  if (v17)
  {
    v12 = sub_2227391FC();
    v19 = v18;
LABEL_12:

    v14 = v19;
    goto LABEL_13;
  }

  v21 = sub_22273926C();
  if ((v22 & 1) == 0)
  {
    v23 = v21;
    if (v21 >= 0x4000)
    {
      sub_22273932C();
      v29 = sub_22273972C();
      v31 = v30;

      v27 = sub_222725110(0xFuLL, v23, v29, v31, v12, v14);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v24 = sub_22273972C();
      v26 = v25;

      v27 = sub_222725424(0xFuLL, v23, v24, v26, v12, v14);
    }

    v12 = v27;
    v19 = v28;

    goto LABEL_12;
  }

LABEL_13:
  v38 = v15;
  *&v37 = v12;
  *(&v37 + 1) = v14;
  sub_22269457C(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v39;
  sub_22268BC94(v36, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  return v35;
}

id sub_2227260A8(void *a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v18 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  if (swift_dynamicCast())
  {
    if (v17 == 7 && (!(v15 | v14 | v13 | v16) || v13 == 1 && !(v15 | v14 | v16)))
    {

      swift_willThrow();
      return a1;
    }

    sub_22272BAE0(v13, v14, v15, v16, v17);
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10 = sub_22262E364(0, &qword_27D0146B8, &off_2784B0750);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C0, &qword_222745990);
  v13 = v10;
  sub_22273816C();
  sub_222660468(&v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v16 = v12;
  v11 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(v12 - 8) + 16))(v11);
  sub_22273816C();
  sub_222660468(&v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

unint64_t sub_2227263F0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_22273701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273877C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014690, &unk_222745970);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2227412F0;
  v14 = [objc_opt_self() category];
  v15 = sub_22273919C();
  v17 = v16;

  v38 = v15;
  v39 = v17;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  if (v19)
  {
    v15 = sub_2227391FC();
    v21 = v20;
LABEL_8:

    v17 = v21;
    goto LABEL_9;
  }

  v22 = sub_22273926C();
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    if (v22 >= 0x4000)
    {
      sub_22273932C();
      v30 = sub_22273972C();
      v32 = v31;

      v28 = sub_222725110(0xFuLL, v24, v30, v32, v15, v17);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v25 = sub_22273972C();
      v27 = v26;

      v28 = sub_222725424(0xFuLL, v24, v25, v27, v15, v17);
    }

    v15 = v28;
    v21 = v29;

    goto LABEL_8;
  }

LABEL_9:
  swift_getObjectType();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_22273876C();
  sub_22273846C();
  sub_2227382FC();
  (*(v34 + 8))(v12, v35);
  return v38 & 1;
}

uint64_t sub_2227267B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a1;
  v54 = a3;
  v47 = sub_22273701C();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273877C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C8, &qword_222745998);
  v49 = *(v51 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v45 - v15;
  v16 = sub_2227373BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2227412F0;
  v21 = [objc_opt_self() category];
  v22 = sub_22273919C();
  v24 = v23;

  v55 = v22;
  v56 = v24;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v26 = v25;
  (*(v3 + 8))(v6, v47);
  if (v26)
  {
    v22 = sub_2227391FC();
    v28 = v27;
  }

  else
  {
    v29 = sub_22273926C();
    if (v30)
    {
      goto LABEL_9;
    }

    v31 = v29;
    if (v29 >= 0x4000)
    {
      sub_22273932C();
      v37 = sub_22273972C();
      v39 = v38;

      v35 = sub_222725110(0xFuLL, v31, v37, v39, v22, v24);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v32 = sub_22273972C();
      v34 = v33;

      v35 = sub_222725424(0xFuLL, v31, v32, v34, v22, v24);
    }

    v22 = v35;
    v28 = v36;
  }

  v24 = v28;
LABEL_9:
  swift_getObjectType();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_22273876C();
  sub_22273846C();
  v40 = v48;
  sub_2227382FC();
  (*(v49 + 8))(v12, v51);
  if ((*(v17 + 48))(v40, 1, v16) == 1)
  {
    sub_222660468(v40, &unk_27D0146D0, qword_222743270);
    v41 = 1;
    v42 = v54;
  }

  else
  {
    v43 = v46;
    (*(v17 + 32))(v46, v40, v16);
    v42 = v54;
    sub_22273737C();
    (*(v17 + 8))(v43, v16);
    v41 = 0;
  }

  return (*(v17 + 56))(v42, v41, 1, v16);
}

unint64_t sub_222726D24(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222741CB0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000022274EB30;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022274EB50;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000022274EB70;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 168) = v10;
  *(inited + 144) = v11;
  v12 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_222726ED8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_22273701C();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22273877C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0146C8, &qword_222745998);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v18 = *(*(v17 - 8) + 64);
  v19 = (MEMORY[0x28223BE20])(v17 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = sub_2227373BC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = (MEMORY[0x28223BE20])(v24);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  v65 = a2;
  v66 = a1;
  if (sub_2227263F0(a1, a2))
  {
    return 1;
  }

  if (a4 <= 0.0)
  {
    return 0;
  }

  if (a4 >= 1.0)
  {
    return 1;
  }

  sub_2227267B8(v66, v65, v23);
  v33 = v25;
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    (*(v25 + 32))(v31, v23, v24);
    sub_2227373AC();
    v34 = sub_22273736C();
    v35 = *(v33 + 8);
    v35(v29, v24);
    v35(v31, v24);
    if ((v34 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 1;
  }

  sub_222660468(v23, &unk_27D0146D0, qword_222743270);
LABEL_10:
  v36 = sub_222729AC4(0x20000000000001uLL);
  result = 0;
  v37 = vcvtd_n_f64_u64(v36, 0x35uLL);
  if (v37 > 0.0 && v37 <= a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2227412F0;
    v39 = [objc_opt_self() category];
    v40 = sub_22273919C();
    v42 = v41;

    v67 = v40;
    v68 = v42;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v44 = v43;
    (*(v62 + 8))(v10, v7);
    if (v44)
    {
      v45 = sub_2227391FC();
      v47 = v46;
    }

    else
    {
      v48 = sub_22273926C();
      if (v49)
      {
        v50 = v40;
LABEL_21:
        swift_getObjectType();
        *(v38 + 32) = v50;
        *(v38 + 40) = v42;
        sub_22273876C();
        sub_22273846C();
        sub_2227373AC();
        (*(v33 + 56))(v21, 0, 1, v24);
        sub_22273830C();
        return 1;
      }

      v51 = v48;
      if (v48 >= 0x4000)
      {
        sub_22273932C();
        v57 = sub_22273972C();
        v59 = v58;

        v55 = sub_222725110(0xFuLL, v51, v57, v59, v40, v42);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v52 = sub_22273972C();
        v54 = v53;

        v55 = sub_222725424(0xFuLL, v51, v52, v54, v40, v42);
      }

      v60 = v55;
      v47 = v56;

      v45 = v60;
    }

    v50 = v45;

    v42 = v47;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_2227274E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v59 = a4;
  v50 = a2;
  v51 = a3;
  v6 = sub_2227382CC();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146E0, &unk_2227459A0);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = sub_22273887C();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22273760C();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = sub_2227381BC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v24 = sub_222738F6C();
  __swift_project_value_buffer(v24, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v25 = *(sub_2227381FC() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v64 = sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v63[0] = a1;
  a1;
  sub_22273818C();
  sub_222660468(v63, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  sub_22273970C();
  sub_2227375EC();
  sub_22273962C();
  v28 = sub_22273970C();
  sub_2227375DC();

  sub_22273886C();
  v29 = v16;
  v30 = v21;
  if (v50)
  {
    v63[0] = v50;
    sub_22273883C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
    sub_22273885C();
    (*(v48 + 8))(v12, v49);
  }

  if (v51)
  {
    v63[0] = v51;
    v31 = qword_27D0129D0;
    v32 = v51;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v33, qword_27D019C98);
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    sub_22273885C();
  }

  v34 = v53;
  sub_2226E8D3C();
  sub_2227385EC();
  (*(v54 + 8))(v34, v55);
  v64 = sub_22273872C();
  v65 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v63);
  sub_22273871C();
  v36 = v57;
  v35 = v58;
  v37 = v52;
  (*(v57 + 16))(v52, v30, v58);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = swift_allocObject();
  (*(v36 + 32))(v39 + v38, v37, v35);
  sub_222738EBC();

  __swift_destroy_boxed_opaque_existential_1(v63);
  v40 = swift_allocObject();
  v41 = v59;
  v42 = v62;
  *(v40 + 16) = v59;
  *(v40 + 24) = v42;
  v55 = v29;
  v56 = v30;
  *(v40 + 32) = "processMetricsData(_:pageFields:activity:withReplyHandler:)";
  *(v40 + 40) = 59;
  *(v40 + 48) = 2;
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  *(v43 + 32) = "processMetricsData(_:pageFields:activity:withReplyHandler:)";
  *(v43 + 40) = 59;
  *(v43 + 48) = 2;
  v44 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v45 = sub_22273955C();
  v64 = v44;
  v65 = MEMORY[0x277D225C0];
  v63[0] = v45;
  sub_222738E8C();

  (*(v60 + 8))(v55, v61);
  (*(v36 + 8))(v56, v35);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_222727D94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v61 = a4;
  v60 = a3;
  v59 = a2;
  v63 = sub_22273701C();
  v62 = *(v63 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2227382CC();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22273887C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = objc_opt_self();
  v23 = [v22 requiredFieldNames];
  v24 = sub_2227394CC();

  v25 = sub_22272B3E8(v24, v21);

  if (!*(v25 + 16))
  {
    v37 = v17;
    v38 = v58;

    v39 = sub_222726D24(v59, v60, a5, a6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v21;
    sub_22272B71C(v39, sub_222729A78, 0, isUniquelyReferenced_nonNull_native, v64);

    sub_22273886C();
    sub_22273829C();
    v41 = sub_2227385EC();
    (*(v38 + 8))(v15, v12);
    (*(v37 + 8))(v20, v16);
    return v41;
  }

  v64[21] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227413C0;
  *(inited + 32) = sub_22273919C();
  *(inited + 40) = v27;
  v28 = [v22 category];
  v29 = sub_22273919C();
  v31 = v30;

  v64[0] = v29;
  v64[1] = v31;
  sub_22273700C();
  sub_2226B1104();
  v32 = MEMORY[0x277D837D0];
  sub_22273976C();
  v34 = v33;
  (*(v62 + 8))(v11, v63);
  if (v34)
  {
    v29 = sub_2227391FC();
    v36 = v35;
  }

  else
  {
    v43 = sub_22273926C();
    if (v44)
    {
      goto LABEL_11;
    }

    v45 = v43;
    if (v43 >= 0x4000)
    {
      sub_22273932C();
      v51 = sub_22273972C();
      v53 = v52;

      v49 = sub_222725110(0xFuLL, v45, v51, v53, v29, v31);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v46 = sub_22273972C();
      v48 = v47;

      v49 = sub_222725424(0xFuLL, v45, v46, v48, v29, v31);
    }

    v29 = v49;
    v36 = v50;
  }

  v31 = v36;
LABEL_11:
  *(inited + 72) = v32;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  *(inited + 80) = sub_22273919C();
  *(inited + 88) = v54;
  v55 = *(v25 + 16);
  if (!v55)
  {
LABEL_14:

    v56 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v56 = sub_2226959D0(*(v25 + 16), 0);
  v57 = sub_2226E96F0(v64, v56 + 4, v55, v25);
  sub_2226342B0();
  if (v57 != v55)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  type metadata accessor for ASCMetricsError(0);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(inited + 96) = v56;
  sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  sub_22272B6C4();
  sub_22273725C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014668, &qword_222745968);
  return sub_222738E9C();
}

void sub_222728438()
{
  sub_22273961C();
  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  v0 = sub_22273970C();
  sub_2227375DC();
}

uint64_t sub_222728568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v14 = *(sub_2227381FC() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v28 = MEMORY[0x277D837D0];
  v27[0] = a1;
  v27[1] = a2;

  sub_22273818C();
  sub_222660468(v27, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v28 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v27[0] = a5;
  v17 = a5;
  sub_22273818C();
  sub_222660468(v27, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService), *(v23 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService + 24));
  sub_2226FD828(a1, a2, a3, a4, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  *(v18 + 32) = "recordCampaignToken(_:providerToken:with:withReplyHandler:)";
  *(v18 + 40) = 59;
  *(v18 + 48) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  *(v19 + 32) = "recordCampaignToken(_:providerToken:with:withReplyHandler:)";
  *(v19 + 40) = 59;
  *(v19 + 48) = 2;
  v20 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v21 = sub_22273955C();
  v28 = v20;
  v29 = MEMORY[0x277D225C0];
  v27[0] = v21;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_222728A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v56 = a7;
  v65 = a5;
  v66 = a6;
  v62 = a3;
  v63 = a4;
  v60 = a1;
  v68 = a8;
  v69 = a9;
  v10 = sub_222738DAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22273903C();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = v53 - v17;
  MEMORY[0x28223BE20](v18);
  v61 = v53 - v19;
  MEMORY[0x28223BE20](v20);
  v64 = v53 - v21;
  MEMORY[0x28223BE20](v22);
  v67 = v53 - v23;
  v24 = sub_2227381BC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v26 = sub_222738F6C();
  v53[1] = __swift_project_value_buffer(v26, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v27 = *(sub_2227381FC() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v72 = MEMORY[0x277D837D0];
  v30 = v60;
  v70 = v60;
  v71 = a2;

  sub_22273818C();
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v72 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v70 = v56;
  v31 = v56;
  sub_22273818C();
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v57 = __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService), *(v57 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService + 24));
  v56 = [v31 id];
  sub_222738D9C();
  v32 = v54;
  sub_22273900C();
  v33 = MEMORY[0x277D837D0];
  v72 = MEMORY[0x277D837D0];
  v70 = v30;
  v71 = a2;

  v34 = v55;
  sub_222738FEC();
  v35 = *(v13 + 8);
  v36 = v59;
  v35(v32, v59);
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  v72 = v33;
  v70 = v62;
  v71 = v63;

  v37 = v61;
  sub_222738FEC();
  v35(v34, v36);
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  v72 = v33;
  v70 = v65;
  v71 = v66;

  v38 = v64;
  sub_222738FEC();
  v35(v37, v36);
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  v39 = v56;
  v40 = [v56 stringValue];
  v41 = sub_22273919C();
  v43 = v42;

  v72 = MEMORY[0x277D837D0];
  v70 = v41;
  v71 = v43;
  v44 = v67;
  sub_222738FEC();
  v35(v38, v36);
  sub_222660468(&v70, &qword_27D0130C0, &unk_2227413B0);
  v45 = *v57;
  sub_2226D7BBC(v44);
  v72 = sub_22273872C();
  v73 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v70);
  sub_22273871C();
  sub_222738E6C();

  v35(v44, v36);
  __swift_destroy_boxed_opaque_existential_1(&v70);

  v46 = swift_allocObject();
  v48 = v68;
  v47 = v69;
  *(v46 + 16) = v68;
  *(v46 + 24) = v47;
  *(v46 + 32) = "recordQToken(_:campaignToken:advertisementID:with:withReplyHandler:)";
  *(v46 + 40) = 68;
  *(v46 + 48) = 2;
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  *(v49 + 32) = "recordQToken(_:campaignToken:advertisementID:with:withReplyHandler:)";
  *(v49 + 40) = 68;
  *(v49 + 48) = 2;
  v50 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v51 = sub_22273955C();
  v72 = v50;
  v73 = MEMORY[0x277D225C0];
  v70 = v51;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(&v70);
}

uint64_t sub_222729300(uint64_t a1)
{
  v2 = v1;
  v29 = sub_2227381FC();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227385BC();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v32 = *(v4 + 72);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  v34[0] = a1;

  sub_22273816C();
  sub_222660468(v34, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v15 = *(a1 + 16);
  if (v15)
  {
    v27 = v1;
    v28 = v8;
    v33 = MEMORY[0x277D84F90];
    sub_2226AE88C(0, v15, 0);
    v16 = v33;
    v17 = a1 + 32;
    v18 = (v4 + 32);
    v19 = v29;
    do
    {
      sub_22262BF70(v17, v34);
      sub_2227381DC();
      sub_222660468(v34, &qword_27D0130C0, &unk_2227413B0);
      v33 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2226AE88C(v20 > 1, v21 + 1, 1);
        v19 = v29;
        v16 = v33;
      }

      *(v16 + 16) = v21 + 1;
      (*v18)(v16 + v14 + v21 * v32, v7, v19);
      v17 += 32;
      --v15;
    }

    while (v15);
    v2 = v27;
    v8 = v28;
  }

  v22 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger + 24));
  v24 = v30;
  v23 = v31;
  (*(v31 + 104))(v30, *MEMORY[0x277D21DE8], v8);
  sub_222738C3C();

  return (*(v23 + 8))(v24, v8);
}

uint64_t type metadata accessor for MetricsClient()
{
  result = qword_281313D08;
  if (!qword_281313D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2227298F4()
{
  result = sub_222738BBC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2227385FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2227299DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
    }

    v8 = sub_22272B234(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_222729A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22262BF70((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_222729AC4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_222729B80@<X0>(uint64_t (*result)(void)@<X0>, uint64_t a2@<X8>))(void)
{
  v3 = result;
  v5 = v2[3];
  v6 = v2[4];
  if (v6)
  {
    v7 = v2[3];
LABEL_10:
    v11 = (*(*v2 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = *v11;
    v13 = v11[1];
    v2[3] = v7;
    v2[4] = (v6 - 1) & v6;
    v15 = v2[5];
    v14 = v2[6];
    v22[0] = v12;
    v22[1] = v13;

    v15(v22);

    v16 = v3(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v16;
    v19 = a2;
    v20 = 0;
LABEL_11:

    return v17(v19, v20, 1, v18);
  }

  else
  {
    v8 = (v2[2] + 64) >> 6;
    if (v8 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = (v2[2] + 64) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        v2[3] = v10;
        v2[4] = 0;
        v21 = result(0);
        v17 = *(*(v21 - 8) + 56);
        v18 = v21;
        v19 = a2;
        v20 = 1;
        goto LABEL_11;
      }

      v6 = *(v2[1] + 8 * v7);
      ++v5;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222729CE8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22262BF70(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_22269457C(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_222660468(v22, &unk_27D014680, &unk_222744148);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222729E98(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v35 = a2;
  v36 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  v19 = *v3;
  v20 = v3[1];
  v22 = v3[2];
  v21 = v3[3];
  v23 = v3[4];
  v33 = v10;
  v34 = v22;
  if (v23)
  {
    v24 = v21;
LABEL_10:
    v28 = (v23 - 1) & v23;
    (*(v7 + 16))(&v33 - v17, *(v19 + 48) + *(v7 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v6);
    (*(v7 + 56))(v18, 0, 1, v6);
    v27 = v24;
LABEL_11:
    *v3 = v19;
    v3[1] = v20;
    v29 = v35;
    v3[2] = v34;
    v3[3] = v27;
    v3[4] = v28;
    v31 = v3[5];
    v30 = v3[6];
    sub_2226CA000(v18, v15, v29, v36);
    if ((*(v7 + 48))(v15, 1, v6) == 1)
    {
      return 0;
    }

    else
    {
      v32 = v33;
      (*(v7 + 32))(v33, v15, v6);
      v31(&v37, v32);
      (*(v7 + 8))(v32, v6);
      return v37;
    }
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        (*(v7 + 56))(&v33 - v17, 1, 1, v6);
        v28 = 0;
        goto LABEL_11;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22272A158()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v4 = sub_22273987C();
    if (v4)
    {
      v13 = v4;
      sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
      swift_dynamicCast();
      v5 = v14;
      if (v14)
      {
LABEL_15:
        v12 = v0[5];
        v11 = v0[6];
        v14 = v5;
        v12(&v13, &v14);
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
LABEL_14:
      v9 = (v2 - 1) & v2;
      v5 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
      v10 = v5;
      v0[3] = v3;
      v0[4] = v9;
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = (v0[2] + 64) >> 6;
      if (v6 <= v1 + 1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = (v0[2] + 64) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v6)
        {
          v0[3] = v8;
          v0[4] = 0;
          return;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22272A2A8(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = sub_22273834C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22273991C();

  v29 = 0xD000000000000023;
  v30 = 0x800000022274EBC0;
  v12 = objc_opt_self();
  v13 = [v12 category];
  v14 = sub_22273919C();
  v16 = v15;

  MEMORY[0x223DBE5D0](v14, v16);

  v17 = sub_22273916C();

  (*(v8 + 104))(v11, *MEMORY[0x277D21C38], v7);
  v18 = v27;
  sub_222738AFC();

  (*(v8 + 8))(v11, v7);
  sub_222738B3C();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22273991C();

  v29 = 0xD00000000000002BLL;
  v30 = 0x800000022274EBF0;
  v20 = [v12 category];
  v21 = sub_22273919C();
  v23 = v22;

  MEMORY[0x223DBE5D0](v21, v23);

  v24 = sub_22273916C();

  sub_222738B5C();

  sub_222738B3C();
  v25 = sub_222738BBC();
  (*(*(v25 - 8) + 8))(v18, v25);
  v19(v6, v2);
  return v28;
}

uint64_t sub_22272A680(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_2227385FC();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273760C();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v64 - v11;
  v12 = sub_2227381BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_222738BBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = swift_allocObject();
  *(v74 + 16) = a3;
  (*(v15 + 16))(v18, a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_bag, v14);
  sub_22273865C();
  _Block_copy(a3);
  v19 = sub_22273864C();
  v20 = sub_22272A2A8(v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v75 = v20;
  if (sub_222726ED8(v20, v25, v21, v23))
  {
    v66 = v26;
    if (qword_27D0129B0 != -1)
    {
      swift_once();
    }

    v27 = sub_222738F6C();
    __swift_project_value_buffer(v27, qword_27D019C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v28 = *(sub_2227381FC() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v77 = sub_22262E364(0, &unk_27D014650, off_2784B0718);
    *&v76 = a1;
    v31 = a1;
    sub_22273818C();
    sub_222660468(&v76, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    sub_22262E364(0, &qword_281312B40, 0x277D86200);
    sub_22273970C();
    v32 = v73;
    sub_2227375EC();
    sub_22273962C();
    v33 = sub_22273970C();
    sub_2227375DC();

    if (qword_281313008 != -1)
    {
      swift_once();
    }

    v34 = [v31 predicateByAddingTag_];
    v35 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_collectionQueue);
    sub_22266BCCC(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_signpostExtractor, &v76);
    v36 = swift_allocObject();
    sub_222634290(&v76, v36 + 16);
    *(v36 + 56) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014660, &qword_222743690);
    v65 = v34;
    v37 = sub_222738F2C();
    v38 = swift_allocObject();
    v38[2] = sub_22272B104;
    v38[3] = v36;
    v38[4] = v37;
    v64 = v37;

    sub_2227395AC();

    v40 = v67;
    v39 = v68;
    v41 = v69;
    (*(v68 + 16))(v67, a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsPipeline, v69);
    v42 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v43 = swift_allocObject();
    v43[2] = v22;
    v43[3] = v24;
    v44 = v66;
    *(v43 + 4) = v75;
    *(v43 + 5) = v44;
    (*(v39 + 32))(v43 + v42, v40, v41);
    v45 = sub_22273872C();
    v46 = MEMORY[0x277D21FB0];
    v77 = v45;
    v78 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v76);
    swift_unknownObjectRetain();
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014668, &qword_222745968);
    sub_22272B1BC();
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(&v76);
    v77 = v45;
    v78 = v46;
    __swift_allocate_boxed_opaque_existential_1(&v76);
    sub_22273871C();
    v48 = v70;
    v47 = v71;
    v49 = v32;
    v50 = v72;
    (*(v71 + 16))(v70, v49, v72);
    v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v52 = swift_allocObject();
    (*(v47 + 32))(v52 + v51, v48, v50);
    sub_222738EBC();

    __swift_destroy_boxed_opaque_existential_1(&v76);
    v53 = swift_allocObject();
    v54 = v74;
    *(v53 + 16) = sub_2227113C4;
    *(v53 + 24) = v54;
    *(v53 + 32) = "processViewRender(with:withReplyHandler:)";
    *(v53 + 40) = 41;
    *(v53 + 48) = 2;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2227113C4;
    *(v55 + 24) = v54;
    *(v55 + 32) = "processViewRender(with:withReplyHandler:)";
    *(v55 + 40) = 41;
    *(v55 + 48) = 2;
    v56 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
    swift_retain_n();
    v57 = sub_22273955C();
    v77 = v56;
    v78 = MEMORY[0x277D225C0];
    *&v76 = v57;
    sub_222738E8C();

    swift_unknownObjectRelease();

    (*(v47 + 8))(v73, v50);
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    if (qword_27D0129B0 != -1)
    {
      swift_once();
    }

    v59 = sub_222738F6C();
    __swift_project_value_buffer(v59, qword_27D019C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v60 = *(sub_2227381FC() - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v77 = sub_22262E364(0, &unk_27D014650, off_2784B0718);
    *&v76 = a1;
    v63 = a1;
    sub_22273818C();
    sub_222660468(&v76, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    a3[2](a3, 0);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_22272B104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222725D44(v1 + 16, *(v1 + 56));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22272B138()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_222725080(*(v0 + 16));
}

uint64_t sub_22272B144(uint64_t *a1)
{
  v3 = *(sub_2227385FC() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_222727D94(a1, v6, v7, v8, v4, v5);
}

unint64_t sub_22272B1BC()
{
  result = qword_27D014670;
  if (!qword_27D014670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014668, &qword_222745968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014670);
  }

  return result;
}

uint64_t sub_22272B234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a4 + 16);

    if (v19 && (v20 = sub_222688818(v17, v18), (v21 & 1) != 0))
    {
      sub_22262BF70(*(a4 + 56) + 32 * v20, v25);
      sub_222660468(v25, &qword_27D0130C0, &unk_2227413B0);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
      sub_222660468(v25, &qword_27D0130C0, &unk_2227413B0);

      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_17:

        return sub_2226942A4(v24, a2, v26, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_17;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22272B3E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v30 = v8;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x28223BE20](v10);
    v32 = v29 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v9);
    v33 = 0;
    v8 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v9 = v15 | (v8 << 6);
      v18 = (*(a1 + 48) + 16 * v9);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(a2 + 16);

      if (v21 && (v22 = sub_222688818(v19, v20), (v23 & 1) != 0))
      {
        sub_22262BF70(*(a2 + 56) + 32 * v22, v34);
        sub_222660468(v34, &qword_27D0130C0, &unk_2227413B0);
      }

      else
      {
        memset(v34, 0, sizeof(v34));
        sub_222660468(v34, &qword_27D0130C0, &unk_2227413B0);

        *&v32[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_18:
          v25 = sub_2226942A4(v32, v30, v33, a1);

          goto LABEL_19;
        }
      }
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v3 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();

  v25 = sub_2227299DC(v28, v8, a1, a2);

  MEMORY[0x223DBFCA0](v28, -1, -1);

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

unint64_t sub_22272B6C4()
{
  result = qword_27D012C90;
  if (!qword_27D012C90)
  {
    type metadata accessor for ASCMetricsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012C90);
  }

  return result;
}

unint64_t sub_22272B71C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_222729CE8(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_22269457C(v46, v44);
  v14 = *a5;
  result = sub_222688818(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_2226895E4(v20, a4 & 1);
    v22 = *a5;
    result = sub_222688818(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_222739B8C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_22268C710();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_22269457C(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_22269457C(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_222729CE8(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_22269457C(v46, v44);
        v33 = *a5;
        result = sub_222688818(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_2226895E4(v37, 1);
          v38 = *a5;
          result = sub_222688818(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_22269457C(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_22269457C(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_222729CE8(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_2226342B0();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22272BA2C()
{
  result = qword_27D0146A0;
  if (!qword_27D0146A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0146A0);
  }

  return result;
}

uint64_t sub_22272BAB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22272BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 >= 4u)
    {
      return result;
    }

LABEL_3:
  }

  switch(a5)
  {
    case 6u:

    case 5u:
      goto LABEL_3;
    case 4u:
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_22273760C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22272BCAC(void *a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v20[0] = a1;
  v13 = a1;
  a2(v20, 0);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v14 = sub_222738F6C();
  __swift_project_value_buffer(v14, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v15 = *(sub_2227381FC() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v22 = MEMORY[0x277D840E8];
  v20[0] = a4;
  v20[1] = a5;
  v21 = a6;
  sub_22273816C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v22 = sub_22262E364(0, &qword_281312B50, off_2784B0650);
  v20[0] = v13;
  v18 = v13;
  sub_22273818C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

uint64_t sub_22272BFE8(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t), void (*a8)(uint64_t), uint64_t *a9, uint64_t *a10)
{
  v16 = sub_2227381BC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v24[0] = a1;
  a7(a1);
  a2(v24, 0);
  a8(a1);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v18 = sub_222738F6C();
  __swift_project_value_buffer(v18, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v19 = *(sub_2227381FC() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v26 = MEMORY[0x277D840E8];
  v24[0] = a4;
  v24[1] = a5;
  v25 = a6;
  sub_22273816C();
  sub_222660468(v24, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
  v24[0] = a1;
  a7(a1);
  sub_22273818C();
  sub_222660468(v24, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

uint64_t sub_22272C284(void *a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v20[0] = a1;
  v13 = a1;
  a2(v20, 0);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v14 = sub_222738F6C();
  __swift_project_value_buffer(v14, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v15 = *(sub_2227381FC() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v22 = MEMORY[0x277D840E8];
  v20[0] = a4;
  v20[1] = a5;
  v21 = a6;
  sub_22273816C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v22 = type metadata accessor for AppOfferStateClient();
  v20[0] = v13;
  v18 = v13;
  sub_22273818C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

uint64_t sub_22272C4F8(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2227381BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v20[0] = 0;
  swift_getErrorValue();
  v12 = sub_2226B1280(v23);
  a2(v20, v12);

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v14 = *(sub_2227381FC() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v22 = MEMORY[0x277D840E8];
  v20[0] = a4;
  v20[1] = a5;
  v21 = a6;
  sub_22273816C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v22 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t (*sub_22272C7CC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F9C0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F9C8;
}

id (*sub_22272C85C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_22272F9B8;
}

id (*sub_22272C8C0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_22272F9B0;
}

uint64_t (*sub_22272C924(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F97C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F984;
}

uint64_t (*sub_22272C9B4(void *a1))(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22272F948;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22272F950;
}

uint64_t sub_22272CA44(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v6 = *(sub_2227381FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v9 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v11 lock];
  v12 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v12 >> 62) - 2 >= 2)
  {
    if (v12 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v19[0] = v12 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
      v13 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
    }
  }

  else
  {
    sub_22262D930();
  }

  [v11 unlock];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();
  v17 = sub_22273955C();
  v19[3] = v16;
  v19[4] = MEMORY[0x277D225C0];
  v19[0] = v17;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_22272CD24(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return a2(0);
}

void sub_22272CE80(uint64_t a1, void (*a2)(void))
{
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v6 = *(sub_2227381FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v13[3] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_getErrorValue();
  v10 = sub_2226B1280(v11);
  a2();
}

uint64_t sub_22272D128(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v6 = *(sub_2227381FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v9 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v11 lock];
  v12 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v12 >> 62) - 2 >= 2)
  {
    if (v12 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v20[0] = v12 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
      v13 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
    }
  }

  else
  {
    sub_22262D930();
  }

  [v11 unlock];
  v21 = sub_22273872C();
  v22 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014860, &unk_222742AF0);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_222725070;
  *(v15 + 24) = v14;
  *(v15 + 32) = "getLockupFetcherService(replyHandler:)";
  *(v15 + 40) = 38;
  *(v15 + 48) = 2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_222725070;
  *(v16 + 24) = v14;
  *(v16 + 32) = "getLockupFetcherService(replyHandler:)";
  *(v16 + 40) = 38;
  *(v16 + 48) = 2;
  v17 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v18 = sub_22273955C();
  v21 = v17;
  v22 = MEMORY[0x277D225C0];
  v20[0] = v18;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_22272D540(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v6 = *(sub_2227381FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v9 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v11 lock];
  v12 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v12 >> 62) - 2 >= 2)
  {
    if (v12 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v20[0] = v12 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
      v13 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
    }
  }

  else
  {
    sub_22262D930();
  }

  [v11 unlock];
  v21 = sub_22273872C();
  v22 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013860, &unk_222742B00);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_222725070;
  *(v15 + 24) = v14;
  *(v15 + 32) = "getMetricsService(replyHandler:)";
  *(v15 + 40) = 32;
  *(v15 + 48) = 2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_222725070;
  *(v16 + 24) = v14;
  *(v16 + 32) = "getMetricsService(replyHandler:)";
  *(v16 + 40) = 32;
  *(v16 + 48) = 2;
  v17 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v18 = sub_22273955C();
  v21 = v17;
  v22 = MEMORY[0x277D225C0];
  v20[0] = v18;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_22272D958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v11 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v12 = *v11;
  v13 = *(*v11 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v13 lock];
  v14 = *(v12 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v14 >> 62) - 2 >= 2)
  {
    if (v14 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v26[0] = v14 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
      v15 = *(v12 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
    }
  }

  else
  {
    sub_22262D930();
  }

  [v13 unlock];
  v16 = sub_22273872C();
  v17 = MEMORY[0x277D21FB0];
  v27 = v16;
  v28 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0147E8, &unk_2227459E8);
  sub_22262BED4(&qword_281312EA0, &unk_27D0147E8, &unk_2227459E8);
  sub_222738EDC();

  __swift_destroy_boxed_opaque_existential_1(v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22272F8E0;
  *(v19 + 24) = v18;
  v27 = v16;
  v28 = v17;
  __swift_allocate_boxed_opaque_existential_1(v26);
  swift_unknownObjectRetain();
  sub_22273871C();
  type metadata accessor for AppOfferStateClient();
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v26);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2227243FC;
  *(v21 + 24) = v20;
  *(v21 + 32) = "getAppOfferStateService(for:withReplyHandler:)";
  *(v21 + 40) = 46;
  *(v21 + 48) = 2;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2227243FC;
  *(v22 + 24) = v20;
  *(v22 + 32) = "getAppOfferStateService(for:withReplyHandler:)";
  *(v22 + 40) = 46;
  *(v22 + 48) = 2;
  v23 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v24 = sub_22273955C();
  v27 = v23;
  v28 = MEMORY[0x277D225C0];
  v26[0] = v24;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_22272DE08(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *a1;
  v7 = qword_281313EB8;
  swift_beginAccess();
  sub_22266110C(v6 + v7, &v15, &unk_27D013120, &unk_222741980);
  if (v16)
  {
    sub_222634290(&v15, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
    *&v15 = v6;

    sub_222738EAC();
    sub_22266BCCC(v17, &v15);
    v8 = swift_allocObject();
    sub_222634290(&v15, v8 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014858, &qword_222745A60);
    v9 = sub_222738F2C();
    v10 = sub_22273946C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = &unk_222745A58;
    v11[5] = v8;
    v11[6] = v9;

    sub_2226D4E54(0, 0, v5, &unk_222745A68, v11);

    sub_22262BED4(&unk_281312E90, &qword_27D014858, &qword_222745A60);
    v12 = sub_222738E7C();

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v12;
  }

  else
  {
    sub_222660468(&v15, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
    result = sub_22273851C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22272E0C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22272E0E4, 0, 0);
}

uint64_t sub_22272E0E4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277CEC0F8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_22272E198;

  return MEMORY[0x28213E438](v2, v3);
}

uint64_t sub_22272E198()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22272E2C8, 0, 0);
  }
}

uint64_t sub_22272E2C8()
{
  sub_22266BCCC(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22272E32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0147F8, &qword_2227459F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v89 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014800, &qword_222745A00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v89 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014808, &qword_222745A08);
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v15);
  v100 = v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014810, &qword_222745A10);
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v18);
  v96 = v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014818, &qword_222745A18);
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  MEMORY[0x28223BE20](v21);
  v90 = v89 - v23;
  sub_22266BCCC(a2, v139);
  v24 = qword_281313EB0;
  swift_beginAccess();
  sub_22266110C(a1 + v24, &v129, &qword_27D013070, &qword_222742730);
  if (v130)
  {
    v104 = v14;
    v105 = v11;
    v106 = v10;
    v107 = v9;
    v108 = v6;
    v109 = v5;
    sub_222634290(&v129, v138);
    v25 = qword_281313EC0;
    swift_beginAccess();
    sub_22266110C(a1 + v25, &v129, &unk_27D014820, &unk_222742740);
    if (v130)
    {
      sub_222634290(&v129, v137);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
      type metadata accessor for ObjectGraph();
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
      sub_222738C9C();
      v26 = type metadata accessor for JSStackManager();
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
      sub_222738C9C();
      sub_22266BCCC(a2, &v129);
      sub_222738C9C();
      v27 = v136;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v135, v136);
      v103 = v89;
      v29 = *(*(v27 - 8) + 64);
      v30 = MEMORY[0x28223BE20](v28);
      v32 = (v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v33 + 16))(v32, v30);
      v34 = v134;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
      v99 = v89;
      v36 = *(*(v34 - 8) + 64);
      v37 = MEMORY[0x28223BE20](v35);
      v39 = (v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v40 + 16))(v39, v37);
      v41 = v132;
      v89[0] = v132;
      v42 = *v32;
      v43 = *v39;
      v44 = type metadata accessor for ASDContingentPricingSubscriptionManager();
      v127 = v44;
      v128 = &off_2835CAB00;
      v126[0] = v42;
      v45 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
      v124 = v45;
      v125 = &off_2835CAA40;
      v123[0] = v43;
      v122[3] = v26;
      v122[4] = &off_2835CA178;
      v122[0] = v41;
      v120 = &type metadata for DeviceAppDistribution;
      v121 = &off_2835C9118;
      v119[0] = swift_allocObject();
      sub_22269DCB0(&v129, v119[0] + 16);
      v46 = type metadata accessor for AppOfferStateClient();
      v47 = objc_allocWithZone(v46);
      v48 = v127;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
      v95 = v89;
      v50 = *(*(v48 - 8) + 64);
      v51 = MEMORY[0x28223BE20](v49);
      v53 = (v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v54 + 16))(v53, v51);
      v55 = v124;
      v56 = __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
      v94 = v89;
      v57 = *(*(v55 - 8) + 64);
      v58 = MEMORY[0x28223BE20](v56);
      v60 = (v89 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v61 + 16))(v60, v58);
      v62 = v120;
      v63 = __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
      v89[1] = v89;
      v64 = *(v62[-1].Description + 8);
      v65 = MEMORY[0x28223BE20](v63);
      v67 = (v89 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v68 + 16))(v67, v65);
      v69 = *v53;
      v70 = *v60;
      v117 = v44;
      v118 = &off_2835CAB00;
      v116[0] = v69;
      v114 = v45;
      v115 = &off_2835CAA40;
      v113[0] = v70;
      v112[3] = &type metadata for DeviceAppDistribution;
      v112[4] = &off_2835C9118;
      v71 = swift_allocObject();
      v112[0] = v71;
      v72 = v67[3];
      v71[3] = v67[2];
      v71[4] = v72;
      v71[5] = v67[4];
      v73 = v67[1];
      v71[1] = *v67;
      v71[2] = v73;
      *&v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph] = a1;
      sub_22266BCCC(v139, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController]);
      sub_22266BCCC(v138, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription]);
      sub_22266BCCC(v137, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions]);
      sub_22266BCCC(v116, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers]);
      sub_22266BCCC(v113, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor]);
      sub_22266BCCC(v122, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager]);
      sub_22266BCCC(v131, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_localizer]);
      *&v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_delegate] = v91;
      sub_22266BCCC(v112, &v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution]);
      v74 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

      swift_unknownObjectRetain();
      v75 = [v74 init];
      *&v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock] = v75;
      *&v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations] = sub_2227335E8(MEMORY[0x277D84F90]);
      v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
      v47[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription] = 0;
      v111.receiver = v47;
      v111.super_class = v46;
      v76 = objc_msgSendSuper2(&v111, sel_init);
      __swift_project_boxed_opaque_existential_1(v139, v139[3]);
      v77 = v76;
      sub_22273795C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142B0, qword_2227454A0);
      sub_22262BED4(&unk_281312FC0, &qword_27D0142B0, qword_2227454A0);
      sub_22273831C();
      v78 = v90;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v92 + 8))(v78, v93);
      __swift_project_boxed_opaque_existential_1(v138, v138[3]);
      sub_222737B9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014838, &qword_222745A20);
      sub_22262BED4(&qword_281312FD0, &unk_27D014838, &qword_222745A20);
      sub_22273831C();
      v79 = v96;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v97 + 8))(v79, v98);
      __swift_project_boxed_opaque_existential_1(v137, v137[3]);
      sub_222737A7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014848, &qword_222745A28);
      sub_22262BED4(&unk_281312FB0, &unk_27D014848, &qword_222745A28);
      sub_22273831C();
      v80 = v100;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v101 + 8))(v80, v102);
      v81 = *(*__swift_project_boxed_opaque_existential_1(v116, v117) + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014230, &unk_222745A30);
      sub_22262BED4(&unk_281312F90, &qword_27D014230, &unk_222745A30);

      sub_22273831C();
      v82 = v104;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v105 + 8))(v82, v106);
      v83 = *(*__swift_project_boxed_opaque_existential_1(v113, v114) + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013020, &qword_2227416C8);
      sub_22262BED4(&unk_281312FA0, &qword_27D013020, &qword_2227416C8);

      sub_22273831C();
      v84 = v107;
      sub_22273832C();

      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v108 + 8))(v84, v109);
      v85 = [objc_opt_self() defaultCenter];
      [v85 addObserver:v77 selector:sel_didChangeAppCapabilities_ name:*MEMORY[0x277CEC2F0] object:0];

      sub_22269DD0C(&v129);
      __swift_destroy_boxed_opaque_existential_1(v131);

      __swift_destroy_boxed_opaque_existential_1(v122);
      __swift_destroy_boxed_opaque_existential_1(v112);
      __swift_destroy_boxed_opaque_existential_1(v113);
      __swift_destroy_boxed_opaque_existential_1(v116);
      __swift_destroy_boxed_opaque_existential_1(v137);
      __swift_destroy_boxed_opaque_existential_1(v138);
      __swift_destroy_boxed_opaque_existential_1(v139);
      __swift_destroy_boxed_opaque_existential_1(v119);
      __swift_destroy_boxed_opaque_existential_1(v123);
      __swift_destroy_boxed_opaque_existential_1(v126);
      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(v135);
      return v77;
    }

    sub_222660468(&v129, &unk_27D014820, &unk_222742740);
    v87 = &unk_27D0137C0;
    v88 = &qword_222742750;
  }

  else
  {
    sub_222660468(&v129, &qword_27D013070, &qword_222742730);
    v87 = &qword_27D013078;
    v88 = &unk_222741750;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
  result = sub_22273851C();
  __break(1u);
  return result;
}

uint64_t sub_22272F358(uint64_t a1, uint64_t a2)
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v6 = *(sub_2227381FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v9 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session + 24));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v11 lock];
  v12 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if ((v12 >> 62) - 2 >= 2)
  {
    if (v12 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);
      v20[0] = v12 & 0x3FFFFFFFFFFFFFFFLL;

      sub_222738EAC();
    }

    else
    {
      v13 = *(v10 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
    }
  }

  else
  {
    sub_22262D930();
  }

  [v11 unlock];
  v21 = sub_22273872C();
  v22 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013868, &qword_222742B10);
  sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_222725070;
  *(v15 + 24) = v14;
  *(v15 + 32) = "getUtilityService(replyHandler:)";
  *(v15 + 40) = 32;
  *(v15 + 48) = 2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_222725070;
  *(v16 + 24) = v14;
  *(v16 + 32) = "getUtilityService(replyHandler:)";
  *(v16 + 40) = 32;
  *(v16 + 48) = 2;
  v17 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_retain_n();

  v18 = sub_22273955C();
  v21 = v17;
  v22 = MEMORY[0x277D225C0];
  v20[0] = v18;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_22272F73C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  type metadata accessor for ObjectGraph();
  return sub_222738C9C();
}

uint64_t sub_22272F7D4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_22272F8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1 + 1);
  *a2 = result;
  return result;
}

uint64_t sub_22272F950(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22272F984(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22272F9C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_22272FA1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222660228;

  return sub_22272E0C4(a1, v1 + 16);
}

uint64_t sub_22272FAB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4B70(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22272FC5C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_2227381BC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  a1(0);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v11 = sub_222738F6C();
  __swift_project_value_buffer(v11, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v12 = *(sub_2227381FC() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D840E8];
  v16[0] = a3;
  v16[1] = a4;
  v17 = a5;
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v18 = MEMORY[0x277D84F78] + 8;
  sub_22273818C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

uint64_t sub_22272FEB4(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  a2(0, v13);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v14 = sub_222738F6C();
  __swift_project_value_buffer(v14, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v15 = *(sub_2227381FC() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v23 = MEMORY[0x277D840E8];
  v21[0] = a4;
  v21[1] = a5;
  v22 = a6;
  sub_22273816C();
  sub_222660468(v21, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v18 = sub_22273875C();
  v23 = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a1, v18);
  sub_22273818C();
  sub_222660468(v21, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

uint64_t sub_22273014C(char a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_2227381BC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  a2(0, v13);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v14 = sub_222738F6C();
  __swift_project_value_buffer(v14, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v15 = *(sub_2227381FC() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v21 = MEMORY[0x277D840E8];
  v19[0] = a4;
  v19[1] = a5;
  v20 = a6;
  sub_22273816C();
  sub_222660468(v19, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v21 = MEMORY[0x277D839B0];
  LOBYTE(v19[0]) = a1 & 1;
  sub_22273818C();
  sub_222660468(v19, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
}

void sub_2227303AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22273726C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_222730544(int a1, id a2, void (*a3)(id))
{
  if (a2)
  {
    v5 = a2;
    a3(a2);
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_2227305BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_2227373DC();
    v12 = sub_2227373FC();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_2227373FC();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_222660468(v9, &qword_27D013270, qword_222741D50);
}

uint64_t sub_222730818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);
  v5 = [objc_opt_self() sharedWorkspace];
  v6 = sub_2227372BC();
  v7 = [v5 openURL_];

  MEMORY[0x223DBE260](v7);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = "openURL(_:withReplyHandler:)";
  *(v8 + 40) = 28;
  *(v8 + 48) = 2;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = "openURL(_:withReplyHandler:)";
  *(v9 + 40) = 28;
  *(v9 + 48) = 2;
  v10 = sub_22262D828();
  swift_retain_n();
  v11 = sub_22273955C();
  v13[3] = v10;
  v13[4] = MEMORY[0x277D225C0];
  v13[0] = v11;
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_2227309BC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
  v5 = sub_22273916C();
  v6 = [v4 initWithBundleID_];

  [v6 setUserInitiated_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v11[4] = sub_222730B28;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2227305BC;
  v11[3] = &block_descriptor_15;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v7 installApp:v10 withCompletionHandler:v9];
  _Block_release(v9);
}

void sub_222730B50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_222730BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_22268BB0C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_222688818(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_22268C598();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_22268B2F8(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_222730CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22269457C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22268BC94(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_222660468(a1, &qword_27D0130C0, &unk_2227413B0);
    sub_2226890E0(a2, a3, v10);

    return sub_222660468(v10, &qword_27D0130C0, &unk_2227413B0);
  }

  return result;
}

uint64_t sub_222730D94()
{
  v1 = objc_allocWithZone(MEMORY[0x277CFA3A0]);
  v2 = sub_22273916C();
  v3 = [v1 initWithServiceDomain:v2 delegate:v0];

  v4 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener;
  v5 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener);
  *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener) = v3;

  v6 = *(v0 + v4);
  if (v6)
  {
    [v6 activate];
  }

  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();
}

uint64_t sub_222730F54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_222731000()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_281315B70);
  __swift_project_value_buffer(v5, qword_281315B70);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

uint64_t sub_222731154(void *a1, uint64_t a2, unint64_t a3)
{
  v139 = *MEMORY[0x277D85DE8];
  v6 = sub_2227381BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22273869C();
  v121 = *(v9 - 8);
  v122 = v9;
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v9);
  v120 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2227391EC();
  v124 = *(v12 - 8);
  v125 = v12;
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v12);
  v123 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2227370AC();
  v15 = *(v133 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v133);
  v119 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v118 = &v111 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v111 - v21;
  MEMORY[0x28223BE20](v23);
  v126 = &v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014190, &qword_222744C48);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v111 - v27;
  v29 = sub_2227370EC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a2;
  sub_2227370CC();
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    (*(v30 + 32))(v33, v28, v29);
    v35 = sub_2227370BC();
    v36 = v29;
    v34 = v35;
    if (!v35)
    {
      (*(v30 + 8))(v33, v36);
      v131 = 0;
      goto LABEL_15;
    }

    v113 = v36;
    v114 = v33;
    v115 = v30;
    v116 = a1;
    v117 = a3;
    v37 = *(v35 + 16);
    if (v37)
    {
      a3 = 0;
      v131 = v15 + 16;
      v132 = (v15 + 8);
      while (1)
      {
        if (a3 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v129 = *(v15 + 72);
        v130 = *(v15 + 16);
        v130(v22, v34 + v38 + v129 * a3, v133);
        if (sub_22273708C() == 0x7363697274656DLL && v39 == 0xE700000000000000)
        {
          break;
        }

        v40 = sub_222739B4C();

        if (v40)
        {
          goto LABEL_37;
        }

        ++a3;
        (*v132)(v22, v133);
        if (v37 == a3)
        {
          goto LABEL_12;
        }
      }

LABEL_37:

      v68 = *(v15 + 32);
      v69 = v126;
      v70 = v133;
      v68(v126, v22, v133);
      sub_22273709C();
      v72 = v71;
      v126 = *(v15 + 8);
      (v126)(v69, v70);
      a1 = v116;
      a3 = v117;
      v73 = v115;
      if (v72)
      {
        v112 = v68;
        v74 = v123;
        sub_2227391DC();
        v75 = sub_2227391AC();
        v77 = v76;

        (*(v124 + 8))(v74, v125);
        if (v77 >> 60 != 15)
        {
          v78 = objc_opt_self();
          v79 = v77;
          v80 = sub_22273732C();
          *&v136 = 0;
          v81 = [v78 JSONObjectWithData:v80 options:0 error:&v136];

          if (v81)
          {
            v111 = v79;
            v125 = v75;
            v82 = v136;
            sub_22273977C();
            swift_unknownObjectRelease();
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014260, &unk_222745AD0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*(v73 + 8))(v114, v113);
              sub_2226D0D38(v125, v111);
              goto LABEL_3;
            }

            v84 = *&v135[0];
            v85 = sub_2227370BC();
            v123 = v84;
            v124 = v83;
            if (v85)
            {
              if (*(v85 + 16))
              {
                v86 = *(v85 + 16);
                v87 = 0;
                v88 = v85 + v38;
                v89 = v119;
                do
                {
                  if (v87 >= *(v85 + 16))
                  {
                    __break(1u);
                  }

                  v90 = v85;
                  v130(v89, v88, v133);
                  if (sub_22273708C() == 0x6369706F74 && v91 == 0xE500000000000000)
                  {
                  }

                  else
                  {
                    v92 = sub_222739B4C();

                    if ((v92 & 1) == 0)
                    {
                      goto LABEL_44;
                    }
                  }

                  v93 = sub_22273709C();
                  if (v94)
                  {
                    v95 = v93;
                    v96 = v94;

                    v97 = HIBYTE(v96) & 0xF;
                    if ((v96 & 0x2000000000000000) == 0)
                    {
                      v97 = v95 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v97)
                    {

                      v98 = v118;
                      v99 = v133;
                      v112(v118, v89, v133);
                      v131 = sub_22273709C();
                      v34 = v100;
                      (v126)(v98, v99);
                      goto LABEL_60;
                    }
                  }

LABEL_44:
                  ++v87;
                  (v126)(v89, v133);
                  v88 += v129;
                  v85 = v90;
                }

                while (v86 != v87);
              }
            }

            v131 = 0;
            v34 = 0;
LABEL_60:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_222741CB0;
            *(inited + 32) = 0x707954746E657665;
            *(inited + 40) = 0xE900000000000065;
            v104 = v120;
            sub_22273867C();
            v105 = sub_22273868C();
            v107 = v106;
            v108 = (*(v121 + 8))(v104, v122);
            v109 = MEMORY[0x277D837D0];
            *(inited + 48) = v105;
            *(inited + 56) = v107;
            *(inited + 72) = v109;
            strcpy((inited + 80), "widgetContext");
            *(inited + 94) = -4864;
            MEMORY[0x28223BE20](v108);
            *(&v111 - 2) = &unk_2835C7798;
            v110 = sub_222733F30(v123, sub_222733D5C);
            swift_arrayDestroy();

            *(inited + 96) = v110;
            *(inited + 120) = v124;
            *(inited + 128) = 0x7954707041666572;
            *(inited + 168) = v109;
            *(inited + 136) = 0xEA00000000006570;
            *(inited + 144) = 0x746567646977;
            *(inited + 152) = 0xE600000000000000;
            v15 = sub_222710688(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
            swift_arrayDestroy();
            sub_2226D0D38(v125, v111);
            (*(v115 + 8))(v114, v113);
LABEL_13:
            a1 = v116;
            a3 = v117;
            goto LABEL_16;
          }

          v101 = v136;
          v102 = sub_22273727C();

          swift_willThrow();
          sub_2226D0D38(v75, v79);
        }
      }

      (*(v73 + 8))(v114, v113);
      goto LABEL_3;
    }

LABEL_12:
    (*(v115 + 8))(v114, v113);

    v131 = 0;
    v34 = 0;
    v15 = 0;
    goto LABEL_13;
  }

  sub_222660468(v28, &qword_27D014190, &qword_222744C48);
LABEL_3:
  v131 = 0;
  v34 = 0;
LABEL_15:
  v15 = 0;
LABEL_16:
  v41 = [a1 integerValue];
  if (v41 != 1)
  {
    if (v41)
    {
      if (qword_281313500 != -1)
      {
        swift_once();
      }

      v49 = sub_222738F6C();
      __swift_project_value_buffer(v49, qword_281315B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v50 = *(sub_2227381FC() - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      goto LABEL_25;
    }

    if (qword_281313500 == -1)
    {
LABEL_19:
      v42 = sub_222738F6C();
      __swift_project_value_buffer(v42, qword_281315B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v43 = *(sub_2227381FC() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v46 = sub_22273731C();
      v137 = v46;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
      (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v127, v46);
      sub_22273815C();
      sub_222660468(&v136, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
LABEL_25:
      sub_222738C4C();
      goto LABEL_29;
    }

LABEL_62:
    swift_once();
    goto LABEL_19;
  }

  v133 = v34;
  if (v15)
  {
    v137 = MEMORY[0x277D837D0];
    *&v136 = 0xD000000000000012;
    *(&v136 + 1) = 0x8000000222747B00;
    sub_22269457C(&v136, v135);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v15;
    sub_22268BC94(v135, 0x6449746567726174, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v134;
  }

  v53 = a3;
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v54 = sub_222738F6C();
  __swift_project_value_buffer(v54, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v55 = *(sub_2227381FC() - 8);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v58 = sub_22273731C();
  v137 = v58;
  v59 = __swift_allocate_boxed_opaque_existential_1(&v136);
  (*(*(v58 - 8) + 16))(v59, v127, v58);
  sub_22273815C();
  sub_222660468(&v136, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();
  a3 = v53;
  v34 = v133;
LABEL_29:

  if (v15 && v34)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v61 = *(Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_objectGraph);
      v62 = Strong;

      v63 = swift_allocObject();
      v63[2] = a3;
      v63[3] = v15;
      v63[4] = v131;
      v63[5] = v34;
      v64 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);

      v65 = sub_22273955C();
      v137 = v64;
      v138 = MEMORY[0x277D225C0];
      *&v136 = v65;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v136);
    }

    else
    {
    }
  }

  v67 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2227321EC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_222734108(a3, a4, a5, v8);
  }
}

void sub_222732270(uint64_t a1, uint64_t a2)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v16 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9 = sub_22273731C();
  v16 = v9;
  v10 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v9 - 8) + 16))(v10, a2, v9);
  sub_22273815C();
  sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v11 = [objc_opt_self() sharedWorkspace];
  v12 = sub_2227372BC();
}

void *sub_2227327A0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_222733DB4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222732830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
  result = sub_222739A6C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_22269458C(v17 + 40 * v16, v37);
    v34 = v37[0];
    v35 = v37[1];
    v36 = v38;
    v21 = *(v9 + 40);
    sub_222739C5C();

    sub_22273924C();
    result = sub_222739C8C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = *(v9 + 56) + 40 * v25;
    *v31 = v34;
    *(v31 + 16) = v35;
    *(v31 + 32) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222732A94(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222739B4C() & 1;
  }
}

uint64_t sub_222732AEC()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v9[3] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

unint64_t sub_222732D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
    v3 = sub_222739A6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222688818(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222732E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, &v16, &qword_27D014928, &unk_222745B10);
      v5 = v16;
      v6 = v17;
      result = sub_222688818(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_222732F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, v13, &unk_27D014910, &qword_222741B10);
      result = sub_222688890(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22269457C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2227330A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0148F0, &unk_222745AE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013500, &qword_222742578);
    v8 = sub_222739A6C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22266110C(v10, v6, &unk_27D0148F0, &unk_222745AE0);
      result = sub_2226888D4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_222737C2C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22273793C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2227332C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014900, &unk_222745AF0);
  v3 = sub_222739A6C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_22268896C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 2 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 8);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22268896C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2227333D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014920, &qword_222745B08);
    v3 = sub_222739A6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_222694708(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2227334D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F0, &qword_2227425E8);
    v3 = sub_222739A6C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_222688818(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2227335E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013628, &qword_222742618);
  v3 = sub_222739A6C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2226889B4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2226889B4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2227336F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22273731C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = v5;
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2227381BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v8 = sub_222738F6C();
  __swift_project_value_buffer(v8, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v9 = *(sub_2227381FC() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v41 = v2;
  v12 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v13 = *(v3 + 16);
  v13(v12, a1, v2);
  v30 = v13;
  v31 = v3 + 16;
  sub_22273815C();
  sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v14 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  v33 = v14;
  v15 = sub_2227372BC();
  v32 = [v14 handleURL_];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v35;
  v13(v35, a1, v2);
  v18 = v3;
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v34 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = a1;
  v21 = swift_allocObject();
  v22 = v17;
  v23 = *(v18 + 32);
  v29[1] = v18 + 32;
  v36 = v23;
  v23(v21 + v19, v17, v2);
  *(v21 + v20) = v16;
  v24 = ObjectType;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v42 = sub_222733C0C;
  v43 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_222730B40;
  v41 = &block_descriptor_16;
  v25 = _Block_copy(&aBlock);

  v26 = v32;
  [v32 addSuccessBlock_];
  _Block_release(v25);
  v30(v22, v34, v2);
  v27 = swift_allocObject();
  v36(v27 + v19, v22, v2);
  *(v27 + v20) = v24;
  v42 = sub_222733CB4;
  v43 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_222730B48;
  v41 = &block_descriptor_11;
  v28 = _Block_copy(&aBlock);

  [v26 addErrorBlock_];
  _Block_release(v28);
}

uint64_t sub_222733C0C(void *a1)
{
  v3 = *(sub_22273731C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_222731154(a1, v1 + v4, v6);
}

void sub_222733CB4(uint64_t a1)
{
  v3 = *(sub_22273731C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_222732270(a1, v1 + v4);
}

uint64_t sub_222733D5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return sub_222730F54(sub_2227340B0, v5, v3) & 1;
}

uint64_t sub_222733DB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_22269458C(*(a3 + 56) + 40 * v14, v22);

    LOBYTE(v16) = v23(v16, v17, v22);
    sub_2226945E8(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_222732830(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_222732830(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222733F30(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_222733DB4(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_2227327A0(v11, v6, v4, a2);
  result = MEMORY[0x223DBFCA0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2227340B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222739B4C() & 1;
  }
}

uint64_t sub_222734108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v29 = a2;
  v4 = *a4;
  v33 = sub_22273887C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_2227382CC();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2227385FC();
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222738C9C();

  sub_22273829C();
  sub_22273886C();
  v20 = objc_allocWithZone(ASCMetricsActivity);
  v21 = [v20 init];
  v34 = v21;
  if (qword_27D0129D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
  __swift_project_value_buffer(v22, qword_27D019C98);
  sub_22262E364(0, &qword_27D013080, off_2784B06E8);
  sub_22273882C();

  v23 = *(v5 + 8);
  v23(v8, v33);
  sub_2227385EC();

  if (qword_281313500 != -1)
  {
    swift_once();
  }

  v24 = sub_222738F6C();
  __swift_project_value_buffer(v24, qword_281315B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v25 = *(sub_2227381FC() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v23(v11, v33);
  (*(v31 + 8))(v15, v32);
  return (*(v30 + 8))(v19, v16);
}

id sub_22273458C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_2227381BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v10 = sub_222738F6C();
  __swift_project_value_buffer(v10, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v11 = *(sub_2227381FC() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  ObjectType = &type metadata for XPCEntitledConnection;
  aBlock[0] = a3;
  v14 = a3;
  sub_22273815C();
  sub_222672BA0(aBlock);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v15 = *(v3 + 16);
  [*(v4 + 16) lock];
  swift_beginAccess();
  v16 = *(v4 + 24);
  v17 = v14;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 24) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_222695340(0, *(v16 + 2) + 1, 1, v16);
    *(v4 + 24) = v16;
  }

  v20 = *(v16 + 2);
  v19 = *(v16 + 3);
  if (v20 >= v19 >> 1)
  {
    v16 = sub_222695340((v19 > 1), v20 + 1, 1, v16);
  }

  *(v16 + 2) = v20 + 1;
  v21 = &v16[16 * v20];
  *(v21 + 4) = v17;
  *(v21 + 5) = a1;
  *(v4 + 24) = v16;
  swift_endAccess();
  v22 = &selRef_isPad;
  [v15 unlock];
  v23 = v17;
  [v23 setExportedInterface_];
  ObjectType = swift_getObjectType();
  aBlock[0] = a1;
  sub_2226FD65C(aBlock, v40);
  v24 = v41;
  if (v41)
  {
    v25 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = aBlock - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    swift_unknownObjectRetain();
    v30 = sub_222739B2C();
    (*(v26 + 8))(v29, v24);
    v22 = &selRef_isPad;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    swift_unknownObjectRetain();
    v30 = 0;
  }

  [v23 setExportedObject_];

  swift_unknownObjectRelease();
  sub_222672BA0(aBlock);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = a1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_222734F9C;
  *(v33 + 24) = v32;
  v38 = sub_222734FA4;
  v39 = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22269F82C;
  ObjectType = &block_descriptor_17;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v23 setInvalidationHandler_];
  _Block_release(v34);

  [v15 lock];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  return [v15 v22[176]];
}

uint64_t sub_222734B10()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v4 = 32;
    do
    {
      [*(v1 + v4) invalidate];
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v5 = *(v0 + 24);

  sub_222694698(v0 + 32);
  return swift_deallocClassInstance();
}

uint64_t sub_222734BF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    [v5 lock];
    sub_222734CA4(v4, a2);
    [v5 unlock];
  }

  return result;
}

void sub_222734CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 40);
    while (*v9 != a2)
    {
      ++v8;
      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    v10 = qword_281312E18;
    v11 = *(v9 - 1);
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_222738F6C();
    __swift_project_value_buffer(v12, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v13 = *(sub_2227381FC() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v19[3] = &type metadata for XPCEntitledConnection;
    v19[0] = v11;
    v16 = v11;
    sub_22273815C();
    sub_222672BA0(v19);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    swift_beginAccess();
    v17 = sub_2226A5F74(v8);
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_10:
  if (!*(*(a1 + 24) + 16))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2226A0CC8();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_222734FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_222734FCC()
{
  v1 = [*v0 description];
  v2 = sub_22273919C();

  return v2;
}

void *sub_222735024(void *a1)
{
  v2 = sub_22273916C();

  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {

    sub_222672BA0(v9);
    return 0;
  }

  sub_2226CB914();
  if ((swift_dynamicCast() & 1) == 0 || (v4 = [v6 BOOLValue], v6, !v4))
  {

    return 0;
  }

  return a1;
}

void __ASCSignpostTagCreateForProcess_block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = 136446466;
  v4 = "ASCSignpostTag ASCSignpostTagCreateForProcess(uint64_t, pid_t)_block_invoke";
  v5 = 2050;
  v6 = v1;
  _os_log_fault_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "*** %{public}s: Value %{public}llul exceeds 47 bits, break on _ASCSignpostTag_valueTooLarge to debug", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ASCPostRebootstrapNotification_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_get_state failed: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void ASCPostRebootstrapNotification_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_set_state failed: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void ASCRegisterForRebootstrapQANotification_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_register_dispatch failed: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void ASCUnregisterForRebootstrapQANotification_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_cancel failed: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __ASCRebootstrapNotificationGetToken_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_222629000, MEMORY[0x277D86220], v2, "%{public}s/notify_register_check failed: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}