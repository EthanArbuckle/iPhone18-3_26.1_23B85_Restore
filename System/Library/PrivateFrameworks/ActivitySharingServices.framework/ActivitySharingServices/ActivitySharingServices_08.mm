uint64_t sub_221F51D54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  if (v2)
  {
    v3 = sub_221F51E64;
  }

  else
  {
    v3 = sub_221F520F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F51E64()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  swift_willThrow();

  v6 = *(v0 + 664);
  v7 = *(v0 + 608);

  *(v0 + 728) = v6;
  v8 = *(v0 + 512);
  v9 = v6;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_221E93000, v10, v11, "Failed to handle upgrade response: %@", v12, 0xCu);
    sub_221EA0558(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v16 = v6;
  v17 = v6;
  v18 = sub_221FB5A98();
  v19 = [v18 domain];

  if (!v19)
  {
    sub_221FB6318();
    v19 = sub_221FB62E8();
  }

  v20 = sub_221FB5A98();
  v21 = [v20 code];

  result = sub_221FB62E8();
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = result;
  ASAnalyticsReportAddManateeContainer();

  v24 = swift_task_alloc();
  *(v0 + 736) = v24;
  *v24 = v0;
  v24[1] = sub_221F53594;
  v25 = *(v0 + 552);
  v26 = *(v0 + 456);

  return sub_221F48844(v25);
}

uint64_t sub_221F520F0()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[57];
  v0[84] = v0[51];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 296), *(v6 + 320));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v10 = sub_221FB64E8();
  v0[85] = v10;

  v0[10] = v0;
  v0[15] = v0 + 52;
  v0[11] = sub_221F522C8;
  v11 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_221EBCB58;
  v0[37] = &block_descriptor_15_0;
  v0[38] = v11;
  [v8 handleSavedRecords:v10 forContact:0 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221F522C8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 688) = v2;
  if (v2)
  {
    v3 = sub_221F529A4;
  }

  else
  {
    v3 = sub_221F523D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F523D8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 624);
  v4 = *(v0 + 608);
  v5 = *(v0 + 512);
  v6 = *(v0 + 424);
  *(v0 + 696) = v6;

  v7 = v6;
  v8 = v4;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 608);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v7;
    *v13 = v11;
    v13[1] = v7;
    v14 = v11;
    _os_log_impl(&dword_221E93000, v9, v10, "Saved share identifier: %@ on %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v9 = v7;
  }

  v15 = *(v0 + 552);
  v16 = *(v0 + 456);

  [v15 insertEventWithType_];
  v17 = __swift_project_boxed_opaque_existential_0Tm((v16 + 296), *(v16 + 320));
  if (![v15 cloudType])
  {
    v49 = *(v0 + 592);
    v50 = *(v0 + 552);
    v51 = *__swift_project_boxed_opaque_existential_0Tm(v17 + 6, v17[9]);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 432;
    *(v0 + 152) = sub_221F52C24;
    v52 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221EF4C50;
    *(v0 + 360) = &block_descriptor_18_0;
    *(v0 + 368) = v52;
    [v51 saveRelationship:v50 contact:0 cloudKitGroup:v49 activity:0 completion:v0 + 336];
    v43 = v0 + 144;

    return MEMORY[0x282200938](v43);
  }

  v18 = *(v0 + 512);
  v19 = *(v0 + 552);
  v20 = sub_221FB61B8();
  v21 = sub_221FB65A8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 552);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    _os_log_impl(&dword_221E93000, v20, v21, "Attempting to save secure cloud relationship to legacy container %@", v23, 0xCu);
    sub_221EA0558(v24);
    MEMORY[0x223DADA80](v24, -1, -1);
    MEMORY[0x223DADA80](v23, -1, -1);
  }

  sub_221EA4994();
  v26 = swift_allocError();
  *v27 = 11;
  swift_willThrow();
  v28 = *(v0 + 608);

  *(v0 + 728) = v26;
  v29 = *(v0 + 512);
  v30 = v26;
  v31 = sub_221FB61B8();
  v32 = sub_221FB65A8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = v26;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_221E93000, v31, v32, "Failed to handle upgrade response: %@", v33, 0xCu);
    sub_221EA0558(v34);
    MEMORY[0x223DADA80](v34, -1, -1);
    MEMORY[0x223DADA80](v33, -1, -1);
  }

  v37 = v26;
  v38 = v26;
  v39 = sub_221FB5A98();
  v40 = [v39 domain];

  if (!v40)
  {
    sub_221FB6318();
    v40 = sub_221FB62E8();
  }

  v41 = sub_221FB5A98();
  v42 = [v41 code];

  v43 = sub_221FB62E8();
  if (v42 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v42 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282200938](v43);
  }

  v44 = v43;
  ASAnalyticsReportAddManateeContainer();

  v45 = swift_task_alloc();
  *(v0 + 736) = v45;
  *v45 = v0;
  v45[1] = sub_221F53594;
  v46 = *(v0 + 552);
  v47 = *(v0 + 456);

  return sub_221F48844(v46);
}

uint64_t sub_221F529A4()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[78];
  v5 = v0[76];
  swift_willThrow();

  v6 = v0[86];
  v0[91] = v6;
  v7 = v0[64];
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to handle upgrade response: %@", v11, 0xCu);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  v15 = v6;
  v16 = v6;
  v17 = sub_221FB5A98();
  v18 = [v17 domain];

  if (!v18)
  {
    sub_221FB6318();
    v18 = sub_221FB62E8();
  }

  v19 = sub_221FB5A98();
  v20 = [v19 code];

  result = sub_221FB62E8();
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v22 = result;
  ASAnalyticsReportAddManateeContainer();

  v23 = swift_task_alloc();
  v0[92] = v23;
  *v23 = v0;
  v23[1] = sub_221F53594;
  v24 = v0[69];
  v25 = v0[57];

  return sub_221F48844(v24);
}

uint64_t sub_221F52C24()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 704) = v2;
  if (v2)
  {
    v3 = sub_221F52D34;
  }

  else
  {
    v3 = sub_221F52FA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F52D34()
{
  v1 = *(v0 + 704);
  swift_willThrow();
  v2 = *(v0 + 704);
  v3 = *(v0 + 608);

  *(v0 + 728) = v2;
  v4 = *(v0 + 512);
  v5 = v2;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to handle upgrade response: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v12 = v2;
  v13 = v2;
  v14 = sub_221FB5A98();
  v15 = [v14 domain];

  if (!v15)
  {
    sub_221FB6318();
    v15 = sub_221FB62E8();
  }

  v16 = sub_221FB5A98();
  v17 = [v16 code];

  result = sub_221FB62E8();
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  ASAnalyticsReportAddManateeContainer();

  v20 = swift_task_alloc();
  *(v0 + 736) = v20;
  *v20 = v0;
  v20[1] = sub_221F53594;
  v21 = *(v0 + 552);
  v22 = *(v0 + 456);

  return sub_221F48844(v21);
}

uint64_t sub_221F52FA0()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 432);
  v3 = sub_221FB62E8();
  v4 = sub_221FB62E8();
  ASAnalyticsReportAddManateeContainer();

  v5 = v2;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_221E93000, v6, v7, "Upgraded relationship: %@", v8, 0xCu);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
    v5 = v6;
    v6 = *(v0 + 536);
  }

  else
  {
    v10 = *(v0 + 536);
  }

  v11 = *(v0 + 608);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v15 = *(v0 + 496);
  v14 = *(v0 + 504);
  v16 = *(v0 + 472);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221F53178()
{
  v2 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v3 = sub_221F537E0;
  }

  else
  {
    v3 = sub_221F5328C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F5328C()
{
  sub_221EA4994();
  v1 = swift_allocError();
  *v2 = 18;
  swift_willThrow();
  v0[91] = v1;
  v3 = v0[64];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle upgrade response: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v1;
  v12 = v1;
  v13 = sub_221FB5A98();
  v14 = [v13 domain];

  if (!v14)
  {
    sub_221FB6318();
    v14 = sub_221FB62E8();
  }

  v15 = sub_221FB5A98();
  v16 = [v15 code];

  result = sub_221FB62E8();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  ASAnalyticsReportAddManateeContainer();

  v19 = swift_task_alloc();
  v0[92] = v19;
  *v19 = v0;
  v19[1] = sub_221F53594;
  v20 = v0[69];
  v21 = v0[57];

  return sub_221F48844(v20);
}

uint64_t sub_221F5350C()
{
  v1 = v0[65];

  v2 = v0[68];
  v4 = v0[62];
  v3 = v0[63];
  v5 = v0[59];

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F53594()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_221F53C88;
  }

  else
  {
    v3 = sub_221F536A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F536A8()
{
  v1 = v0[91];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[67];
  v5 = v0[58];
  v6 = v0[59];
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for IDSError(0);
  sub_221F542BC(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v9 = v8;
  sub_221EA4A40(v6, v8);
  *(v9 + *(v7 + 20)) = v1;
  swift_willThrow();

  v11 = v0[62];
  v10 = v0[63];
  v12 = v0[59];

  v13 = v0[1];

  return v13();
}

uint64_t sub_221F537E0()
{
  v1 = v0[90];
  v0[91] = v1;
  v2 = v0[64];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade response: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = swift_task_alloc();
  v0[92] = v18;
  *v18 = v0;
  v18[1] = sub_221F53594;
  v19 = v0[69];
  v20 = v0[57];

  return sub_221F48844(v19);
}

uint64_t sub_221F53A34()
{
  v1 = v0[72];
  v0[91] = v1;
  v2 = v0[64];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle upgrade response: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = v1;
  v11 = v1;
  v12 = sub_221FB5A98();
  v13 = [v12 domain];

  if (!v13)
  {
    sub_221FB6318();
    v13 = sub_221FB62E8();
  }

  v14 = sub_221FB5A98();
  v15 = [v14 code];

  result = sub_221FB62E8();
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = result;
  ASAnalyticsReportAddManateeContainer();

  v18 = swift_task_alloc();
  v0[92] = v18;
  *v18 = v0;
  v18[1] = sub_221F53594;
  v19 = v0[69];
  v20 = v0[57];

  return sub_221F48844(v19);
}

uint64_t sub_221F53C88()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);

  v4 = *(v0 + 744);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 472);

  v8 = *(v0 + 8);

  return v8();
}

BOOL sub_221F53D28(void *a1, char a2)
{
  v5 = sub_221FB5BC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v10 = [a1 dateForLatestUpgradeAvailableUnavailableChange];
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  sub_221FB5B98();

  v12 = v2;
  sub_221FB5B78();
  v14 = v13;
  v15 = *(v2 + 432);
  v16 = *(v12 + 440);
  v17 = *(v12 + 448);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v38) = v15;
    UserDefaultsKeys.rawValue.getter();
    v18 = COERCE_DOUBLE(sub_221EF8934(v17));
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v16 = v18;
    }
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v21 = fabs(v14);
  v22 = sub_221FB61D8();
  __swift_project_value_buffer(v22, qword_281307DF0);
  v23 = a1;
  v24 = sub_221FB61B8();
  v25 = sub_221FB65C8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315394;
    v28 = [v23 cloudKitAddress];
    if (v28)
    {
      v29 = v28;
      v30 = sub_221FB6318();
      v32 = v31;

      v38 = 0;
      v39 = 0xE000000000000000;
      v37[1] = v30;
      v37[2] = v32;
      sub_221FB6A08();

      v33 = v38;
      v34 = v39;
    }

    else
    {
      v34 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_221EF4114(v33, v34, &v40);

    *(v26 + 4) = v36;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v21 < v16;
    _os_log_impl(&dword_221E93000, v24, v25, "Upgrade %s backing off availability change: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DADA80](v27, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return v21 >= v16;
}

uint64_t sub_221F5415C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_221F541B0(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E9544C;

  return sub_221F47B54(a1, v5, v4);
}

unint64_t sub_221F54258()
{
  result = qword_281306F30;
  if (!qword_281306F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBD08, &qword_221FB9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F30);
  }

  return result;
}

uint64_t sub_221F542BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221F54318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F54360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_221F544A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_221EEE570();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221F54528(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_221F54664(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_221F54860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F54990(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_221F549B4, 0, 0);
}

uint64_t sub_221F549B4()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 56) = v3;
    sub_221EC4754(112, v3);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_0Tm(*(v0 + 48), *(*(v0 + 48) + 24));
      v5 = swift_task_alloc();
      *(v0 + 64) = v5;
      *v5 = v0;
      v5[1] = sub_221F54AF8;
      v6 = *(v0 + 40);

      return sub_221F08060(v3, v6);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F54AF8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_221F54C70;
  }

  else
  {
    v3 = sub_221F54C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F54C0C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F54C70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_221F54D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_221F54D5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_221F54F30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_221F552A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a1;
  sub_221F78590(sub_221F55AC0, v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v14;
  return result;
}

unint64_t sub_221F55370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  result = sub_221ED4B5C(a2, a3);
  v8 = 0uLL;
  if (v9)
  {
    v10 = result;
    v11 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v16 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221ED7588();
      v13 = v16;
    }

    v14 = *(*(v13 + 48) + 16 * v10 + 8);

    v15 = *(*(v13 + 56) + 16 * v10);
    result = sub_221F557C0(v10, v13);
    v8 = v15;
    *a1 = v13;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_221F554A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_221FB6C38();

      sub_221FB6358();
      v13 = sub_221FB6C58();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221F55650(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_221FB6C28();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221F557C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221FB67F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_221FB6C38();

      sub_221FB6358();
      v13 = sub_221FB6C58();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_221F55970(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_221E9EA90(v5, 0);
    v7 = sub_221E9F440(&v14, v6 + 2, v5, v4);

    sub_221E96470();
    if (v7 != v5)
    {
LABEL_13:
      __break(1u);
      return;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock((v3 + 24));
  v8 = v6[2];
  if (v8)
  {
    v9 = 0;
    v10 = a1 & 1;
    v11 = v6 + 5;
    while (v9 < v6[2])
    {
      ++v9;
      v13 = *(v11 - 1);
      v12 = *v11;
      LOBYTE(v14) = v10;

      v13(&v14);

      v11 += 2;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
}

uint64_t sub_221F55AC0(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_221F55AF0(void *a1)
{
  v2 = v1;
  v3 = [a1 relationshipStorage];
  v4 = [v3 secureCloudRelationship];

  result = [v4 secureCloudZoneName];
  if (result)
  {
    v6 = result;
    sub_221F55BF4();
    sub_221FB6318();

    v7 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    v8 = sub_221FB65D8();

    v9 = [v2 recordWithZoneID:v8 recordEncryptionType:1];
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_221F55BF4()
{
  result = qword_281306EF0;
  if (!qword_281306EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EF0);
  }

  return result;
}

uint64_t sub_221F55C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

void sub_221F55DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_221F776C4(0, v4, 0);
    v6 = v14;
    v7 = (a1 + 32);
    v8 = *(v14 + 16);
    do
    {
      v10 = *v7++;
      v9 = v10;
      v15 = v6;
      v11 = *(v6 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_221F776C4((v11 > 1), v8 + 1, 1);
        v6 = v15;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 2 * v8++ + 32) = v9;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7B0, &qword_221FBD360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7B8, &qword_221FBD368);
  swift_dynamicCast();
  sub_221F56444();
  v12 = sub_221FB6428();

  v13 = sub_221FB5BF8();
  [a3 insertPlaceholderForEventTypes:v12 contactUUID:v13];
}

void sub_221F55F34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_221FB5BF8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_221F563C8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_24;
  v12 = _Block_copy(aBlock);

  [a2 performBlockWaitingOnInviteFinalizationForContactUUID:v9 block:v12];
  _Block_release(v12);
}

uint64_t sub_221F560F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_221F5613C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221F56160, 0, 0);
}

uint64_t sub_221F56160()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_221F56250;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000027, 0x8000000221FC3A50, sub_221F563C0, v1, v4);
}

uint64_t sub_221F56250()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F11DC8, 0, 0);
}

uint64_t sub_221F56368()
{
  v1 = [*v0 allFinalizedFriendUUIDs];
  sub_221FB5C38();
  v2 = sub_221FB6438();

  return v2;
}

uint64_t sub_221F563C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_221FB64A8();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221F56444()
{
  result = qword_27CFEC7C0;
  if (!qword_27CFEC7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC7C0);
  }

  return result;
}

void sub_221F564A0(unint64_t a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
  v7 = *(v6 - 8);
  v36 = v7[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = *(v2 + 136);
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v38 = a2;
  v39 = v7;
  v37 = v9;
  if (v11)
  {
    v41 = MEMORY[0x277D84F90];

    sub_221FB69D8();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v33 = v6;
      v34 = a1;
      v6 = 0;
      a1 = v10 & 0xC000000000000001;
      v35 = v3;
      v12 = *(v3 + 120);
      v40 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v12)
      {
        v9 = 11;
      }

      else
      {
        v9 = 7;
      }

      v3 = &off_278497000;
      v7 = &off_278497000;
      while (1)
      {
        if (a1)
        {
          v13 = MEMORY[0x223DACD50](v6, v10);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v11 = sub_221FB6868();
            goto LABEL_3;
          }

          if (v6 >= *(v40 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v10 + 8 * v6 + 32);
        }

        v14 = v13;
        a2 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
        ++v6;
        [a2 setCapabilities_];

        sub_221FB69B8();
        v15 = *(v41 + 16);
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
        if (v11 == v6)
        {
          v3 = v35;

          v6 = v33;
          a1 = v34;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v16 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
    v17 = v3[16];
    if (v17)
    {
      v18 = v17[2];
      swift_unknownObjectRetain();
    }

    else
    {
      v18 = 0;
    }

    [v16 setXPCActivity_];
    swift_unknownObjectRelease();
    sub_221F570F4();
    v19 = v3[18];

    v20 = sub_221FB6738();
    [v20 setQualityOfService_];
    v21 = v20;
    [v21 setConfiguration_];
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;

    sub_221FB6708();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a1;

    sub_221FB6718();

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v39;
    v28 = v37;
    (v39[2])(v37, v38, v6);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = a1;
    (v27[4])(v30 + v29, v28, v6);

    sub_221FB6728();

    [v3[14] addOperation_];

    v31 = v3[19];
    v3[19] = v21;
    sub_221E9D128(v31);
  }
}

uint64_t sub_221F56938(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_221F572B0(a2, a3 & 1, a1, a5);
  }

  else
  {
    v10 = *(a5 + 16);
    os_unfair_lock_lock((v10 + 48));
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);
    v14 = *(v10 + 40);

    os_unfair_lock_unlock((v10 + 48));
  }

  v15 = *(a5 + 16);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v15 + 48));
  sub_221F57F3C((v15 + 16));
  os_unfair_lock_unlock((v15 + 48));
}

uint64_t sub_221F56A90(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_221F577A4(a2, a3 & 1, a1, a5);
  }

  else
  {
    v10 = *(a5 + 16);
    os_unfair_lock_lock((v10 + 48));
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);
    v14 = *(v10 + 40);

    os_unfair_lock_unlock((v10 + 48));
  }

  v15 = *(a5 + 16);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v15 + 48));
  sub_221F57E70((v15 + 16));
  os_unfair_lock_unlock((v15 + 48));
}

uint64_t sub_221F56BE8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221F57C84(a1, a2 & 1, a4);
  }

  return result;
}

uint64_t sub_221F56C70()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  sub_221E9D128(*(v0 + 152));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F56CEC(uint64_t a1)
{
  result = sub_221F570AC(&qword_27CFEC7C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221F56D30(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7D8, &qword_221FBD498);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E0, &qword_221FBD4A0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 48) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;
  *(v3 + 32) = v4;
  *(v3 + 40) = v4;
  *(v2 + 16) = v3;
  sub_221F564A0(v2, a1);
}

uint64_t sub_221F56DD8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_221F56DF8, v1, 0);
}

uint64_t sub_221F56DF8()
{
  v1 = *(v0 + 56);
  v2 = sub_221F570AC(&qword_27CFEC7C8);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_221F56F00;
  v5 = *(v0 + 56);

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0x6C616E7265746E69, 0xED000029286E7552, sub_221F570EC, v5, &type metadata for CloudZoneModifyResult);
}

uint64_t sub_221F56F00()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_221F57050;
  }

  else
  {
    v6 = sub_221F5702C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221F5702C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_221F57068(uint64_t a1)
{
  result = sub_221F570AC(&qword_27CFEC7D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221F570AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudZoneModifyOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221F570F4()
{
  result = qword_27CFEC7F0;
  if (!qword_27CFEC7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC7F0);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_221F57198(void *a1, char a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_221F56BE8(a1, a2 & 1, v6, v7);
}

uint64_t sub_221F57228(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a1;

  v8 = a1[1];

  v9 = a1[2];

  v10 = a1[3];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t sub_221F572B0(void *a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    sub_221EA9488(a1);
    v8 = a3;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    sub_221EA9494(a1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      sub_221EA9488(a1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_221E93000, v9, v10, "[CloudZoneCreateOperation] Error saving zone: %{public}@, error: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v15 = *(a4 + 16);
    sub_221EA9488(a1);
    v16 = v8;
    os_unfair_lock_lock((v15 + 48));
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));
    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    v23 = *(v15 + 32);
    v24 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));
    v25 = *(v15 + 16);
    v26 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC228, &qword_221FBADC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v16;
    *(inited + 40) = a1;
    sub_221EA9488(a1);
    v30 = v16;
    sub_221ED44F4(inited);
    os_unfair_lock_lock((v15 + 48));
    v31 = *(v15 + 16);
    v32 = *(v15 + 24);
    v34 = *(v15 + 32);
    v33 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    sub_221EA9494(a1);
  }

  else
  {
    v35 = *(a4 + 16);
    os_unfair_lock_lock((v35 + 48));
    v36 = *(v35 + 16);
    v37 = *(v35 + 24);
    v38 = *(v35 + 32);
    v39 = *(v35 + 40);

    os_unfair_lock_unlock((v35 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_221FB81B0;
    *(v40 + 32) = a1;
    v41 = a1;
    sub_221ED4638(v40);
    v17 = v36;
    os_unfair_lock_lock((v35 + 48));
    v42 = *(v35 + 16);
    v43 = *(v35 + 24);
    v44 = *(v35 + 32);
    v45 = *(v35 + 40);

    os_unfair_lock_unlock((v35 + 48));

    os_unfair_lock_lock((v35 + 48));
    v46 = *(v35 + 16);
    v47 = *(v35 + 24);
    v48 = *(v35 + 32);
    v49 = *(v35 + 40);

    os_unfair_lock_unlock((v35 + 48));

    os_unfair_lock_lock((v35 + 48));
    v50 = *(v35 + 16);
    v51 = *(v35 + 24);
    v53 = *(v35 + 32);
    v52 = *(v35 + 40);

    os_unfair_lock_unlock((v35 + 48));
  }

  return v17;
}

uint64_t sub_221F577A4(void *a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = a3;
    sub_221F57E8C(a1, 1);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    sub_221EA9460(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      v13 = v8;
      sub_221F57E8C(a1, 1);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_221E93000, v9, v10, "[CloudZoneCreateOperation] Error deleting zone: %{public}@, error: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v15 = *(a4 + 16);
    v16 = v8;
    sub_221F57E8C(a1, 1);
    os_unfair_lock_lock((v15 + 48));
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));
    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    v23 = *(v15 + 32);
    v24 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));
    v25 = *(v15 + 16);
    v26 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    os_unfair_lock_lock((v15 + 48));
    v29 = *(v15 + 16);
    v30 = *(v15 + 24);
    v31 = *(v15 + 32);
    v32 = *(v15 + 40);

    os_unfair_lock_unlock((v15 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC228, &qword_221FBADC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v16;
    *(inited + 40) = a1;
    sub_221ED44F4(inited);
  }

  else
  {
    v34 = *(a4 + 16);
    os_unfair_lock_lock((v34 + 48));
    v17 = *(v34 + 16);
    v35 = *(v34 + 24);
    v36 = *(v34 + 32);
    v37 = *(v34 + 40);

    os_unfair_lock_unlock((v34 + 48));

    os_unfair_lock_lock((v34 + 48));
    v38 = *(v34 + 16);
    v39 = *(v34 + 24);
    v40 = *(v34 + 32);
    v41 = *(v34 + 40);

    os_unfair_lock_unlock((v34 + 48));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_221FB81B0;
    *(v42 + 32) = a3;
    v43 = a3;
    sub_221ED4664(v42);
    os_unfair_lock_lock((v34 + 48));
    v44 = *(v34 + 16);
    v45 = *(v34 + 24);
    v46 = *(v34 + 32);
    v47 = *(v34 + 40);

    os_unfair_lock_unlock((v34 + 48));

    os_unfair_lock_lock((v34 + 48));
    v48 = *(v34 + 16);
    v49 = *(v34 + 24);
    v51 = *(v34 + 32);
    v50 = *(v34 + 40);

    os_unfair_lock_unlock((v34 + 48));
  }

  return v17;
}

uint64_t sub_221F57C84(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = a1;
    v6 = sub_221FB61B8();
    v7 = sub_221FB65A8();
    sub_221EA9460(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_221E93000, v6, v7, "[CloudZoneCreateOperation] Error creating zones: %@", v8, 0xCu);
      sub_221EA0558(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
    return sub_221FB6498();
  }

  else
  {
    v14 = *(a3 + 16);
    os_unfair_lock_lock((v14 + 48));
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);

    os_unfair_lock_unlock((v14 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7E8, &unk_221FBD4A8);
    return sub_221FB64A8();
  }
}

id sub_221F57E8C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_221F57EA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_221F57EEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::String __swiftcall Platform.appBundle()()
{
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (v1)
  {
    v3 = "onship8@NSError16";
  }

  else
  {
    v3 = "onse(response:sentInvitation:)";
  }

  v4 = (v3 | 0x8000000000000000);
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetryBackoff(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetryBackoff(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_221F57FDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F57FF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_221F58028(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F58140()
{
  if ((*(v0 + 116) & 1) == 0)
  {
    notify_cancel(*(v0 + 112));
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F581C0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DC0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "### Language change - exiting clean ###", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  xpc_transaction_exit_clean();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LanguageChangeObserver.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_221F58338(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F58354(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_221F58384()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 64) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221F58414, v0, 0);
}

uint64_t sub_221F58414()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  if (*(v1 + 116) == 1)
  {
    *(v0 + 72) = -1;
    sub_221F3FA70();
    v2 = sub_221FB6628();
    *(v0 + 48) = sub_221F58A34;
    *(v0 + 56) = v1;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_221F589E0;
    *(v0 + 40) = &block_descriptor_25;
    v3 = _Block_copy((v0 + 16));
    v4 = *(v0 + 56);

    v5 = sub_221FB6338();
    v6 = notify_register_dispatch((v5 + 32), (v0 + 72), v2, v3);

    _Block_release(v3);

    if (v6 || (v11 = *(v0 + 72), v11 == -1))
    {
      if (qword_281307070 != -1)
      {
        swift_once();
      }

      v7 = sub_221FB61D8();
      __swift_project_value_buffer(v7, qword_281307DC0);
      v8 = sub_221FB61B8();
      v9 = sub_221FB65A8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_221E93000, v8, v9, "Failed to register for language changes", v10, 2u);
        MEMORY[0x223DADA80](v10, -1, -1);
      }
    }

    else
    {
      *(v1 + 112) = v11;
      *(v1 + 116) = 0;
    }
  }

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_221F58668()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_221FA7D68(0, 0, v3, &unk_221FBD608, v6);
}

uint64_t sub_221F5878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221F587AC, 0, 0);
}

uint64_t sub_221F587AC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221F588A0;

    return sub_221F581A4();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_221F588A0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F589B8, 0, 0);
}

uint64_t sub_221F589E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221F58A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F5878C(a1, v4, v5, v6);
}

uint64_t sub_221F58B88()
{
  if (*(v0 + 192))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_221FB6698();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 160);

  v2 = *(v0 + 192);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_221F58C00()
{
  sub_221F58B88();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F58C60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F58C80, 0, 0);
}

uint64_t sub_221F58C80()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm(*(v0 + 32) *(*(v0 + 32) + 24))];
  *(v0 + 40) = v1;
  if (!v1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v2 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v2, v8, "No activity summary to push for yesterday", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  if (([v1 paused]& 1) != 0)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_221E93000, v4, v5, "Activity summary is paused, not pushing update", v6, 2u);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

LABEL_12:
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }

  v13 = *(v0 + 32);
  v14 = sub_221EC9110(v2);
  *(v0 + 48) = v14;
  v15 = v14;
  v16 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 24);
  v17 = swift_task_alloc();
  *(v0 + 56) = v17;
  *(v17 + 16) = v2;
  *(v17 + 24) = v16;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  v18 = *(MEMORY[0x277CE94E0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v21 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *v19 = v0;
  v19[1] = sub_221F5900C;

  return MEMORY[0x28213AED0](&unk_221FBD768, v17, v20, &type metadata for SecureCloudUpdate, v21);
}

void sub_221F5900C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = *(v4 + 56);
    *(v4 + 72) = a1;

    MEMORY[0x2822009F8](sub_221F59150, 0, 0);
  }
}

uint64_t sub_221F59150()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221F591BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = *a1;
  *(v2 + 112) = *(a1 + 16);
  *(v2 + 120) = *(a1 + 24);
  *(v2 + 200) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F592AC, 0, 0);
}

uint64_t sub_221F592AC()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v3 = v1;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_221F593C0;
    v5 = *(v0 + 112);

    return sub_221F7AAE4(v3, v5);
  }

  else
  {
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_221F593C0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_221F595D4;
  }

  else
  {
    v3 = sub_221F594D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F594D4()
{
  v1 = v0[14];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[19] = sub_221FB5BE8();
    v0[20] = v10;
    v11 = *(v9 + 8);
    v0[21] = v11;
    v0[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[23] = *v2;
    v3 = sub_221F59858;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221F595D4()
{
  v1 = [*(v0 + 120) _activitySummaryIndex];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);
  sub_221ED4904(v4, v3, 1u);

  v9 = v5;
  v10 = v2;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  sub_221ED4948(v4, v3, 1u);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  if (v13)
  {
    v17 = *(v0 + 112);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218498;
    *(v18 + 4) = v1;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v17;
    *v19 = v17;
    *(v18 + 22) = 2112;
    v20 = v17;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v22;
    v19[1] = v22;
    _os_log_impl(&dword_221E93000, v11, v12, "Failed to store yesterday snapshot anchor: %lld, relationship identifier %@, error: %@", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v19, -1, -1);
    MEMORY[0x223DADA80](v18, -1, -1);
    sub_221ED4948(v16, v15, 1u);
  }

  else
  {
    sub_221ED4948(*(v0 + 120), *(v0 + 128), 1u);
  }

  v24 = *(v0 + 80);
  v23 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F59858()
{
  v1 = v0[23];
  v2 = sub_221ECB14C(v0[19], v0[20]);

  if (!v2)
  {
    v2 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_221F598EC, 0, 0);
}

uint64_t sub_221F598EC()
{
  v47 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = sub_221FB61D8();
  __swift_project_value_buffer(v7, qword_281307DF0);
  sub_221ED4904(v3, v2, 1u);

  v8 = v5;

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v45 = v10;
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v14 = 136315394;
    v15 = [v11 UUID];

    v16 = v0[24];
    if (!v15)
    {
      v41 = v0 + 15;
      v40 = v0[15];
      v39 = v41[1];

      sub_221ED4948(v40, v39, 1u);

      __break(1u);
      return result;
    }

    v17 = v0[21];
    v18 = v0[22];
    v42 = v0[15];
    v43 = v0[16];
    v19 = v0[10];
    v20 = v0[8];
    sub_221ED4948(v42, v43, 1u);

    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v17(v19, v20);
    v24 = sub_221EF4114(v21, v23, &v46);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    v25 = sub_221FB6298();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, &v46);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_221E93000, v9, v45, "Updated snapshot hashes for yesterday: relationship %s, hashes %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
    sub_221ED4948(v42, v43, 1u);
  }

  else
  {
    v29 = v0[24];
    v31 = v0[15];
    v30 = v0[16];
    v32 = v0[13];
    v33 = v0[14];
    v34 = v0[12];
    sub_221ED4948(v31, v30, 1u);

    sub_221ED4948(v31, v30, 1u);
    swift_bridgeObjectRelease_n();
  }

  v36 = v0[10];
  v35 = v0[11];

  v37 = v0[1];

  return v37();
}

void sub_221F59C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 72);
    v3 = &unk_281307000;
    do
    {
      if (*v2 == 1)
      {
        v8 = *(v2 - 4);
        v9 = *(v2 - 3);
        v10 = *(v2 - 2);
        v11 = *(v2 - 1);
        v18 = *(v2 - 5);

        v12 = v9;
        sub_221ED4904(v10, v11, 1u);
        if (v3[16] != -1)
        {
          swift_once();
        }

        v13 = sub_221FB61D8();
        __swift_project_value_buffer(v13, qword_281307DF0);
        v14 = v10;
        v15 = sub_221FB61B8();
        v16 = sub_221FB65A8();
        sub_221ED4948(v10, v11, 1u);
        if (os_log_type_enabled(v15, v16))
        {
          v4 = swift_slowAlloc();
          v17 = v12;
          v5 = swift_slowAlloc();
          *v4 = 138412290;
          *(v4 + 4) = v14;
          *v5 = v10;
          v6 = v14;
          _os_log_impl(&dword_221E93000, v15, v16, "Failed to update yesterday's summary %@)", v4, 0xCu);
          sub_221EA0558(v5);
          MEMORY[0x223DADA80](v5, -1, -1);
          v7 = v4;
          v3 = &unk_281307000;
          MEMORY[0x223DADA80](v7, -1, -1);

          sub_221ED4948(v10, v11, 1u);
        }

        else
        {

          sub_221ED4948(v10, v11, 1u);
        }
      }

      v2 += 48;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_221F59E84()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_221E9DA9C;

  return sub_221ECBCD8();
}

uint64_t sub_221F59F38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F58C60(a1);
}

uint64_t sub_221F59FCC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F59FEC, 0, 0);
}

uint64_t sub_221F59FEC()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v6 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  *v4 = v0;
  v4[1] = sub_221F1549C;

  return MEMORY[0x28213AEC8](&unk_221FBD748, v2, v5, v6);
}

uint64_t sub_221F5A11C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F591BC(a1, v4);
}

uint64_t sub_221F5A1B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 72) = v16;
  *v16 = v8;
  v16[1] = sub_221ED7B20;

  return sub_221ED1530(v8 + 16, v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221F5A2A0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_221E9544C;

  return sub_221F5A1B8(a1, a2, v6, v7, v8, v9, v10, v11);
}

id sub_221F5A3A4(void *a1, uint64_t a2)
{
  v5 = [a1 systemFieldsOnlyRecord];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 recordWithZoneID:a2 recordEncryptionType:1];
    v8 = [v6 recordID];
    v9 = [objc_allocWithZone(MEMORY[0x277CBC620]) initWithRecordID:v8 action:0];

    [v7 setParent_];
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v7 = a1;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v7;
      *v14 = v7;
      v15 = v7;
      _os_log_impl(&dword_221E93000, v11, v12, "Trying to create migration available record without a parent relationship record: %@", v13, 0xCu);
      sub_221EA0558(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v16 = 51;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_221F5A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F5A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F5A80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5A8D0, 0, 0);
}

uint64_t sub_221F5A8D0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC3CA0);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB6108();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2220;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002ALL, 0x8000000221FC3CA0, sub_221F5C724, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221F5AC18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_221FB6108();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5AD60, 0, 0);
}

uint64_t sub_221F5AD60()
{
  v38 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  v0[11] = __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009BLL, 0x8000000221FC3BB0, 0xD00000000000001ALL, 0x8000000221FC3C80);
  v4 = *(v2 + 88);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[12] = v6;

  if (v6)
  {
    v7 = [v6 relationshipStorage];
    v8 = [v7 secureCloudRelationship];
    v0[13] = v8;

    if ([v8 isFriendshipActive])
    {
      v9 = sub_221FB61B8();
      v10 = sub_221FB65A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_221E93000, v9, v10, "Withdrawing invite for active friendship", v11, 2u);
        MEMORY[0x223DADA80](v11, -1, -1);
      }
    }

    if (([v8 hasOutgoingInviteRequest] & 1) == 0)
    {
      v12 = sub_221FB61B8();
      v13 = sub_221FB65A8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_221E93000, v12, v13, "Withdrawing invite without an outgoing invite request", v14, 2u);
        MEMORY[0x223DADA80](v14, -1, -1);
      }
    }

    v15 = v0[3];
    __swift_project_boxed_opaque_existential_0Tm(v15 + 22, v15[25]);
    v16 = v15[10];
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_221F5B238;
    v18 = v0[2];

    return sub_221EF560C(v18, 3, v16);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v20 = sub_221FB61B8();
    v21 = sub_221FB65A8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      sub_221F5C6DC(&qword_27CFEBB90, MEMORY[0x277CC95F0]);
      v28 = sub_221FB6B08();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_221EF4114(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_221E93000, v20, v21, "Unable to withdraw invite, no contact for identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DADA80](v27, -1, -1);
      MEMORY[0x223DADA80](v26, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    sub_221EA4994();
    swift_allocError();
    *v32 = 21;
    swift_willThrow();
    v33 = v0[10];
    v35 = v0[6];
    v34 = v0[7];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_221F5B238()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_221F5B5CC;
  }

  else
  {
    v3 = sub_221F5B34C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_221F5B34C()
{
  v1 = v0[13];
  v2 = v0[7];
  sub_221FB5BB8();
  result = [v1 outgoingHandshakeToken];
  if (result)
  {
    v4 = result;
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[7];
    sub_221FB6318();

    sub_221FB60F8();
    v8 = [v5 sentInvitation];
    v0[16] = v8;
    if (v8)
    {
      v9 = v8;
      v10 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + 96), *(v0[3] + 120));
      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_221F5B658;
      v12 = v0[10];

      return sub_221F5A80C(v9, v12, 1106);
    }

    else
    {
      v13 = v0[11];
      v14 = sub_221FB61B8();
      v15 = sub_221FB65A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_221E93000, v14, v15, "Failed to withdraw invite, missing sentInvitation", v16, 2u);
        MEMORY[0x223DADA80](v16, -1, -1);
      }

      v18 = v0[12];
      v17 = v0[13];
      v20 = v0[9];
      v19 = v0[10];
      v21 = v0[8];

      sub_221EA4994();
      swift_allocError();
      *v22 = 45;
      swift_willThrow();

      (*(v20 + 8))(v19, v21);
      v23 = v0[10];
      v25 = v0[6];
      v24 = v0[7];

      v26 = v0[1];

      return v26();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F5B5CC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F5B658()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_221F5B830;
  }

  else
  {
    v3 = sub_221F5B76C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F5B76C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);

  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F5B830()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 144);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F5B8EC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[26] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v8 = *(v7 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5B9F8, 0, 0);
}

uint64_t sub_221F5B9F8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_221FB61D8();
  v0[33] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009BLL, 0x8000000221FC3BB0, 0xD00000000000002CLL, 0x8000000221FC3C50);
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v1[8]);
  v4 = v1[10];
  v0[34] = v4;
  v5 = *v3;
  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_221F5BBC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_26;
  v0[14] = v6;
  [v5 fetchAllChangesWithPriority:2 activity:0 group:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F5BBC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_221F5C2C0;
  }

  else
  {
    v3 = sub_221F5BCD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_221F5BCD0()
{
  v62 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v3 = sub_221FB60E8();
  v5 = v4;
  v6 = sub_221FB62E8();
  v7 = *(v1 + 88);
  v8 = ASContactForIncomingHandshakeTokenWithManager();
  v0[36] = v8;

  if (v8)
  {
    v9 = [v8 relationshipStorage];
    v10 = [v9 secureCloudRelationship];
    v0[37] = v10;

    v11 = [v10 receivedInvitation];
    v0[38] = v11;
    if (v11)
    {
      v12 = v11;
      v60 = v10;
      v14 = v0[31];
      v13 = v0[32];
      v16 = v0[28];
      v15 = v0[29];
      v17 = v0[24];
      v18 = [v11 uniqueID];
      sub_221FB5C18();

      v19 = [v17 uniqueID];
      sub_221FB5C18();

      LOBYTE(v19) = sub_221FB5C08();
      v20 = *(v15 + 8);
      v0[39] = v20;
      v0[40] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v20(v14, v16);
      v20(v13, v16);
      if (v19)
      {
        if (([v60 isAwaitingInviteResponse] & 1) == 0)
        {
          v21 = v0[33];
          v22 = v60;
          v23 = sub_221FB61B8();
          v24 = sub_221FB65A8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            *(v25 + 4) = v22;
            *v26 = v22;
            v27 = v22;
            _os_log_impl(&dword_221E93000, v23, v24, "Received withdraw request but not waiting for user response. Continuing with withdraw: %@", v25, 0xCu);
            sub_221EA0558(v26);
            MEMORY[0x223DADA80](v26, -1, -1);
            MEMORY[0x223DADA80](v25, -1, -1);
          }
        }

        sub_221EA4AB4(v0[25] + 176, (v0 + 18));
        __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v0[21]);
        result = [v60 UUID];
        if (result)
        {
          v29 = result;
          v30 = v0[30];

          sub_221FB5C18();

          v31 = swift_task_alloc();
          v0[41] = v31;
          *v31 = v0;
          v31[1] = sub_221F5C35C;
          v32 = v0[34];
          v33 = v0[30];

          return sub_221EF560C(v33, 3, v32);
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      v10 = v60;
    }

    v40 = v0[33];

    v41 = sub_221FB61B8();
    v42 = sub_221FB65A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_221E93000, v41, v42, "Received withdraw request for invitation that doesn't match the current invitation.", v43, 2u);
      MEMORY[0x223DADA80](v43, -1, -1);
    }

    v45 = v0[31];
    v44 = v0[32];
    v46 = v0[30];
    v47 = v0[27];

    v48 = v0[1];
  }

  else
  {
    v34 = v0[33];

    v35 = sub_221FB61B8();
    v36 = sub_221FB65A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v61 = v38;
      *v37 = 136315138;
      v39 = sub_221EF4114(v3, v5, &v61);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_221E93000, v35, v36, "Unable to handle withdraw request, no relationship for handshake token %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DADA80](v38, -1, -1);
      MEMORY[0x223DADA80](v37, -1, -1);
    }

    else
    {
    }

    v49 = v0[26];
    v50 = v0[27];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v51 = swift_allocError();
    *v52 = 26;
    v53 = type metadata accessor for IDSError(0);
    sub_221F5C6DC(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v55 = v54;
    sub_221EA4A40(v50, v54);
    *(v55 + *(v53 + 20)) = v51;
    swift_willThrow();
    v57 = v0[31];
    v56 = v0[32];
    v58 = v0[30];
    v59 = v0[27];

    v48 = v0[1];
  }

  return v48();
}

uint64_t sub_221F5C2C0()
{
  v1 = v0[35];
  swift_willThrow();
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221F5C35C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_221F5C568;
  }

  else
  {
    v5 = *(v2 + 320);
    (*(v2 + 312))(*(v2 + 240), *(v2 + 224));
    v4 = sub_221F5C480;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F5C480()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  [*__swift_project_boxed_opaque_existential_0Tm(v4 v4[3])];
  [*__swift_project_boxed_opaque_existential_0Tm(v4 + 17 v4[20])];

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_221F5C568()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 216);
  v7 = *(v0 + 208);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  *v6 = 1;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for IDSError(0);
  sub_221F5C6DC(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v6, v9);
  *(v10 + *(v8 + 20)) = v1;
  swift_willThrow();

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 216);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F5C6DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221F5C730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F5C778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F5C7FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

void sub_221F5C914(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221F5E4A4();
    sub_221F10D6C();
    sub_221FB6538();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221F5E4A4(), swift_dynamicCast(), (v11 = v16) == 0))
    {
LABEL_23:
      sub_221E96470();
      return;
    }

LABEL_18:
    v12 = [v11 relationshipStorage];
    v13 = [v12 primaryRelationship];

    if ([v13 cloudType] || (objc_msgSend(v13, sel_hasOutgoingInviteRequest) & 1) == 0)
    {
    }

    else
    {

      MEMORY[0x223DAC7E0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_221F5CBA8(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_221FB6438();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F5CC8C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5CD70, 0, 0);
}

uint64_t sub_221F5CD70()
{
  v55 = v0;
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000080, 0x8000000221FC3CD0, 0xD000000000000019, 0x8000000221FC3D60);
  v3 = [v1 contacts];
  if (v3)
  {
    v4 = v3;
    sub_221F5E4A4();
    sub_221F10D6C();
    v5 = sub_221FB64F8();

    sub_221F5C914(v5);
    v7 = v6;
    v0[11] = v6;

    if (v7 >> 62)
    {
      if (sub_221FB6868())
      {
LABEL_6:

        v8 = sub_221FB61B8();
        v9 = sub_221FB65C8();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v53 = v11;
          *v10 = 136315138;
          v49 = v11;
          if (v7 >> 62)
          {
            v12 = sub_221FB6868();
          }

          else
          {
            v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = MEMORY[0x277D84F90];
          if (v12)
          {
            v46 = v10;
            v47 = v9;
            v48 = v8;
            v54 = MEMORY[0x277D84F90];
            v14 = sub_221F776A4(0, v12 & ~(v12 >> 63), 0);
            if (v12 < 0)
            {
              __break(1u);
              return MEMORY[0x28213AEC8](v14, v15, v16, v17);
            }

            v18 = 0;
            v19 = v0[7];
            v13 = v54;
            v50 = v7 & 0xC000000000000001;
            v51 = v7;
            do
            {
              if (v50)
              {
                v20 = MEMORY[0x223DACD50](v18, v7);
              }

              else
              {
                v20 = *(v7 + 8 * v18 + 32);
              }

              v21 = v20;
              v22 = [v21 UUID];
              if (v22)
              {
                v23 = v0[8];
                v24 = v22;
                sub_221FB5C18();

                v25 = 0;
              }

              else
              {
                v25 = 1;
              }

              v27 = v0[9];
              v26 = v0[10];
              v28 = v0[8];
              v29 = sub_221FB5C38();
              (*(*(v29 - 8) + 56))(v28, v25, 1, v29);
              sub_221EB994C(v28, v27);
              sub_221EB994C(v27, v26);

              v54 = v13;
              v31 = *(v13 + 16);
              v30 = *(v13 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_221F776A4(v30 > 1, v31 + 1, 1);
                v13 = v54;
              }

              v32 = v0[10];
              ++v18;
              *(v13 + 16) = v31 + 1;
              sub_221EB994C(v32, v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31);
              v7 = v51;
            }

            while (v12 != v18);
            v8 = v48;
            v9 = v47;
            v10 = v46;
          }

          v33 = MEMORY[0x223DAC810](v13, v0[6]);
          v35 = v34;

          v36 = sub_221EF4114(v33, v35, &v53);

          *(v10 + 4) = v36;
          _os_log_impl(&dword_221E93000, v8, v9, "Found relationships with outgoing request, checking donation status: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x223DADA80](v49, -1, -1);
          MEMORY[0x223DADA80](v10, -1, -1);
        }

        v52 = *(v0 + 2);
        v0[2] = sub_221ED85F0(MEMORY[0x277D84F90]);
        v0[3] = v7;
        v37 = swift_task_alloc();
        v0[12] = v37;
        *(v37 + 16) = v52;
        *(v37 + 32) = v0 + 2;
        v38 = *(MEMORY[0x277CE94D8] + 4);
        v39 = swift_task_alloc();
        v0[13] = v39;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
        v17 = sub_221F5E5A0();
        *v39 = v0;
        v39[1] = sub_221F5D2AC;
        v14 = &unk_221FBD960;
        v15 = v37;
        v16 = v40;

        return MEMORY[0x28213AEC8](v14, v15, v16, v17);
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }
  }

  v42 = v0[9];
  v41 = v0[10];
  v43 = v0[8];

  v44 = v0[1];

  return v44();
}

void sub_221F5D2AC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_221F5D3F0, 0, 0);
  }
}

uint64_t sub_221F5D3F0()
{
  v1 = v0[2];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_221F5D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a3;
  v4[29] = a4;
  v4[30] = *a1;
  return MEMORY[0x2822009F8](sub_221F5D494, 0, 0);
}

uint64_t sub_221F5D494()
{
  v1 = [*(v0 + 240) preferredReachableService];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_221FB6318();
  v6 = v5;

  *(v0 + 248) = v4;
  *(v0 + 256) = v6;
  if (!*(v2 + 16) || (v7 = *(v0 + 224), v8 = sub_221ED4B5C(v4, v6), (v9 & 1) == 0))
  {

LABEL_10:
    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 240);
    v31 = sub_221FB61D8();
    __swift_project_value_buffer(v31, qword_281307DC0);
    v32 = v30;
    v29 = sub_221FB61B8();
    v33 = sub_221FB65A8();

    if (os_log_type_enabled(v29, v33))
    {
      v34 = *(v0 + 240);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v34;
      *v36 = v34;
      v37 = v34;
      _os_log_impl(&dword_221E93000, v29, v33, "Found relationship with outgoing request with invalid service identifier %@", v35, 0xCu);
      sub_221EA0558(v36);
      MEMORY[0x223DADA80](v36, -1, -1);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    goto LABEL_14;
  }

  v10 = *(v0 + 240);
  v11 = *(*(*(v0 + 224) + 56) + 8 * v8);
  *(v0 + 264) = v11;
  v12 = v11;
  v13 = [v10 preferredReachableAddress];
  if (!v13)
  {

    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 240);
    v43 = sub_221FB61D8();
    __swift_project_value_buffer(v43, qword_281307DC0);
    v44 = v42;
    v29 = sub_221FB61B8();
    v45 = sub_221FB65A8();

    if (os_log_type_enabled(v29, v45))
    {
      v46 = *(v0 + 240);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v46;
      *v48 = v46;
      v49 = v46;
      _os_log_impl(&dword_221E93000, v29, v45, "Found relationship with outgoing request with invalid preferred reachable address %@", v47, 0xCu);
      sub_221EA0558(v48);
      MEMORY[0x223DADA80](v48, -1, -1);
      MEMORY[0x223DADA80](v47, -1, -1);
    }

    goto LABEL_14;
  }

  v14 = v0 + 208;
  v15 = *(v0 + 232);
  v16 = v13;
  v17 = sub_221FB6318();
  v19 = v18;

  *(v0 + 272) = v17;
  *(v0 + 280) = v19;
  v20 = *v15;
  if (*(*v15 + 16) && (v21 = sub_221ED4B5C(v4, v6), (v22 & 1) != 0))
  {
    v23 = v21;

    v24 = *(*(v20 + 56) + 8 * v23);

    v25 = *(v0 + 280);
    *(v0 + 144) = *(v0 + 272);
    *(v0 + 152) = v25;
    v26 = swift_task_alloc();
    *(v26 + 16) = v0 + 144;
    v27 = sub_221F7B864(sub_221EB8534, v26, v24);

    if (v27)
    {
      v28 = *(v0 + 280);
      v29 = *(v0 + 264);

LABEL_14:

      v38 = *(v0 + 8);

      return v38();
    }

    v40 = v0 + 80;
    v51 = *(v0 + 272);
    v50 = *(v0 + 280);
    v52 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_221FB81A0;
    *(v53 + 32) = v51;
    *(v53 + 40) = v50;

    v54 = sub_221FB6428();
    *(v0 + 296) = v54;

    *(v0 + 80) = v0;
    *(v0 + 120) = v14;
    *(v0 + 88) = sub_221F5E0A4;
    v55 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_6;
    *(v0 + 176) = v55;
    [v52 donateAddresses:v54 completion:v0 + 144];
  }

  else
  {
    v40 = v0 + 16;
    *(v0 + 16) = v0;
    *(v0 + 56) = v14;
    *(v0 + 24) = sub_221F5DA88;
    v41 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC7F8, &unk_221FBD968);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221F5CBA8;
    *(v0 + 168) = &block_descriptor_27;
    *(v0 + 176) = v41;
    [v12 donatedAddressesWithCompletion_];
  }

  return MEMORY[0x282200938](v40);
}

uint64_t sub_221F5DA88()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  if (v3)
  {
    v4 = *(v1 + 256);

    v5 = sub_221F5DE2C;
  }

  else
  {
    v5 = sub_221F5DBA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F5DBA0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[27];

  v5 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_221F78718(v4, v2, v1, isUniquelyReferenced_nonNull_native);

  *v3 = v18;
  v0[18] = v0[34];
  v0[19] = v0[35];
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 18;
  LOBYTE(v1) = sub_221F7B864(sub_221EB8534, v7, v4);

  if (v1)
  {
    v8 = v0[35];
    v9 = v0[33];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[33];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_221FB81A0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;

    v16 = sub_221FB6428();
    v0[37] = v16;

    v0[10] = v0;
    v0[15] = v0 + 26;
    v0[11] = sub_221F5E0A4;
    v17 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_221FA909C;
    v0[21] = &block_descriptor_6;
    v0[22] = v17;
    [v14 donateAddresses:v16 completion:v0 + 18];

    return MEMORY[0x282200938](v0 + 10);
  }
}

uint64_t sub_221F5DE2C()
{
  v25 = v0;
  v1 = *(v0 + 288);
  swift_willThrow();
  v2 = *(v0 + 288);
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 240);
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DC0);

  v6 = v4;
  v7 = v2;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 280);
  if (v10)
  {
    v12 = *(v0 + 272);
    v23 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315650;
    v17 = sub_221EF4114(v12, v11, &v24);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v13;
    *(v14 + 22) = 2112;
    v18 = v13;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    v15[1] = v20;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to donate %s for relationship %@ with error %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221F5E0A4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 304) = v3;
  if (v3)
  {
    v4 = sub_221F5E228;
  }

  else
  {
    v5 = *(v1 + 280);

    v4 = sub_221F5E1BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221F5E1BC()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F5E228()
{
  v26 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  swift_willThrow();

  v3 = *(v0 + 304);
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DC0);

  v7 = v5;
  v8 = v3;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 280);
  if (v11)
  {
    v13 = *(v0 + 272);
    v24 = *(v0 + 264);
    v14 = *(v0 + 240);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315650;
    v18 = sub_221EF4114(v13, v12, &v25);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v14;
    *(v15 + 22) = 2112;
    v19 = v14;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    v16[1] = v21;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to donate %s for relationship %@ with error %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

unint64_t sub_221F5E4A4()
{
  result = qword_281306E50;
  if (!qword_281306E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306E50);
  }

  return result;
}

uint64_t sub_221F5E4F0(void *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F5D46C(a1, v4, v5, v6);
}

unint64_t sub_221F5E5A0()
{
  result = qword_27CFEBEC0;
  if (!qword_27CFEBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBEB8, &unk_221FBB660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEC0);
  }

  return result;
}

uint64_t sub_221F5E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F5E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IDSErrorAction(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_221FB5C38();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB58, &unk_221FB8C00) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_221FB6168();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_221FB5FF8();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5E96C, 0, 0);
}

uint64_t sub_221F5E96C()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v16 = v0[8];
  v17 = v0[18];
  v8 = v0[4];
  v18 = v0[5];
  v9 = v0[2];
  sub_221FB5BB8();
  sub_221FB5ED8();
  (*(v3 + 16))(v1, v8, v4);
  v10 = sub_221FB6058();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v7 + 8))(v6, v16);
  sub_221FB5FB8();
  v11 = *__swift_project_boxed_opaque_existential_0Tm((v18 + 296), *(v18 + 320));
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_221F5EB34;
  v13 = v0[18];
  v14 = v0[3];

  return sub_221EE242C(v14, v13, 1104);
}

uint64_t sub_221F5EB34()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_221F5ED0C;
  }

  else
  {
    v3 = sub_221F5EC48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F5EC48()
{
  v1 = v0[15];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_221F5ED0C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[11];
  v12 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);
  *v5 = 1;
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v9 = v8;
  sub_221EA4A40(v5, v8);
  *(v9 + *(v7 + 20)) = v1;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_221F5EE74(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = sub_221FB5BC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_221FB5EE8();
  v38 = a2;
  v23 = [a2 dateForLatestIncomingInviteRequest];
  v39 = v20;
  if (v23)
  {
    v24 = v23;
    sub_221FB5B98();

    v25 = *(v11 + 32);
    v25(v9, v17, v10);
    v26 = *(v11 + 56);
    v26(v9, 0, 1, v10);
    v25(v20, v9, v10);
  }

  else
  {
    v26 = *(v11 + 56);
    v26(v9, 1, 1, v10);
    sub_221FB5B38();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_221E9CFE8(v9, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  v27 = v38;
  v28 = [v38 dateForLatestFriendshipDidBegin];
  if (v28)
  {
    v29 = v28;
    sub_221FB5B98();

    v30 = *(v11 + 32);
    v30(v7, v17, v10);
    v26(v7, 0, 1, v10);
    v31 = v40;
    v30(v40, v7, v10);
    v32 = v39;
  }

  else
  {
    v26(v7, 1, 1, v10);
    v31 = v40;
    sub_221FB5B38();
    v33 = (*(v11 + 48))(v7, 1, v10);
    v32 = v39;
    if (v33 != 1)
    {
      sub_221E9CFE8(v7, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  if (([v27 isAwaitingInviteResponse] & 1) != 0 && (sub_221F68EE0(qword_27CFEC800, MEMORY[0x277CC9578]), (sub_221FB62C8() & 1) == 0))
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_221FB5B68();
  }

  v35 = *(v11 + 8);
  v35(v31, v10);
  v35(v32, v10);
  v35(v22, v10);
  return v34 & 1;
}

id sub_221F5F2D8(uint64_t *a1, void *a2)
{
  v4 = sub_221FB5C38();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221FB6058();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v7);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_221FB5F28();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v85 - v14;
  v15 = sub_221FB5C68();
  v95 = *(v15 - 1);
  v96 = v15;
  v16 = v95[8];
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v85 - v21;
  v23 = sub_221FB5BC8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v85 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  v94 = a2;
  v34 = [a2 dateForLatestIncomingInviteRequest];
  if (v34)
  {
    v35 = v34;
    sub_221FB5B98();

    v36 = a1;
    v37 = v33;
    v38 = *(v24 + 32);
    v38(v22, v31, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    v38(v37, v22, v23);
    v33 = v37;
    a1 = v36;
  }

  else
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    sub_221FB5B38();
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_221E9CFE8(v22, &qword_27CFEC118, &unk_221FBB0A0);
    }
  }

  sub_221FB5EE8();
  v39 = sub_221FB5B88();
  v40 = *(v24 + 8);
  v100 = v23;
  v40(v31, v23);
  v41 = v98;
  if ((v39 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_221FB5EE8();
  sub_221FB5BB8();
  sub_221FB5C58();
  v42 = sub_221FB5C48();
  (v95[1])(v18, v96);
  v43 = v100;
  v40(v28, v100);
  v40(v31, v43);
  if (v42)
  {
    v97 = v33;
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v44 = sub_221FB61D8();
    __swift_project_value_buffer(v44, qword_281307DF0);
    v45 = *(v41 + 16);
    v46 = v89;
    v96 = a1;
    v47 = v99;
    v45(v89, a1, v99);
    v48 = sub_221FB61B8();
    v49 = sub_221FB65C8();
    v50 = os_log_type_enabled(v48, v49);
    v85 = v40;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v101[0] = v95;
      *v51 = 136446210;
      sub_221FB5EE8();
      sub_221F68EE0(&qword_27CFEC120, MEMORY[0x277CC9578]);
      v52 = v100;
      v53 = sub_221FB6B08();
      v54 = v40;
      v56 = v55;
      v54(v31, v52);
      (*(v41 + 8))(v46, v99);
      v57 = sub_221EF4114(v53, v56, v101);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_221E93000, v48, v49, "Processing activity data preview for an already handled invitation with date: %{public}s", v51, 0xCu);
      v58 = v95;
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x223DADA80](v58, -1, -1);
      MEMORY[0x223DADA80](v51, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v46, v47);
    }

    v77 = v97;
    sub_221EA4AB4(v93 + 80, v101);
    v78 = __swift_project_boxed_opaque_existential_0Tm(v101, v101[3]);
    v79 = v90;
    sub_221FB5F18();
    v80 = sub_221FB6038();
    (*(v91 + 8))(v79, v92);
    result = [v94 UUID];
    if (result)
    {
      v81 = result;
      v82 = v86;
      sub_221FB5C18();

      v83 = *v78;
      v84 = sub_221FB5BF8();
      ASProcessActivityDataPreviewWithManager();

      (*(v87 + 8))(v82, v88);
      v85(v77, v100);
      return __swift_destroy_boxed_opaque_existential_0(v101);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_11:
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v59 = sub_221FB61D8();
    __swift_project_value_buffer(v59, qword_281307DF0);
    v60 = v97;
    v61 = v99;
    (*(v41 + 16))(v97, a1, v99);
    v62 = sub_221FB61B8();
    v63 = sub_221FB65C8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v95 = v64;
      v65 = swift_slowAlloc();
      v85 = v40;
      v96 = v65;
      v101[0] = v65;
      *v64 = 136446210;
      sub_221FB5EE8();
      sub_221F68EE0(&qword_27CFEC120, MEMORY[0x277CC9578]);
      v66 = v100;
      v67 = sub_221FB6B08();
      v69 = v68;
      v70 = v31;
      v71 = v85;
      v85(v70, v66);
      (*(v41 + 8))(v60, v99);
      v72 = sub_221EF4114(v67, v69, v101);

      v73 = v95;
      *(v95 + 4) = v72;
      v74 = v73;
      _os_log_impl(&dword_221E93000, v62, v63, "Not process activity data preview for an already handled invitation with date: %{public}s", v73, 0xCu);
      v75 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x223DADA80](v75, -1, -1);
      MEMORY[0x223DADA80](v74, -1, -1);

      return v71(v33, v66);
    }

    else
    {

      (*(v41 + 8))(v60, v61);
      return (v40)(v33, v100);
    }
  }

  return result;
}

uint64_t sub_221F5FCE0(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  v4 = sub_221FB5F28();
  v3[137] = v4;
  v5 = *(v4 - 8);
  v3[138] = v5;
  v6 = *(v5 + 64) + 15;
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v7 = sub_221FB6168();
  v3[141] = v7;
  v8 = *(v7 - 8);
  v3[142] = v8;
  v9 = *(v8 + 64) + 15;
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v10 = type metadata accessor for IDSErrorAction(0);
  v3[147] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[148] = swift_task_alloc();
  v12 = sub_221FB5BC8();
  v3[149] = v12;
  v13 = *(v12 - 8);
  v3[150] = v13;
  v14 = *(v13 + 64) + 15;
  v3[151] = swift_task_alloc();
  v15 = sub_221FB6058();
  v3[152] = v15;
  v16 = *(v15 - 8);
  v3[153] = v16;
  v17 = *(v16 + 64) + 15;
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[157] = swift_task_alloc();
  v19 = sub_221FB5C38();
  v3[158] = v19;
  v20 = *(v19 - 8);
  v3[159] = v20;
  v21 = *(v20 + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F5FFEC, 0, 0);
}

uint64_t sub_221F5FFEC()
{
  v76 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = sub_221FB61D8();
  *(v0 + 1312) = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009ALL, 0x8000000221FC3DB0, 0xD000000000000030, 0x8000000221FC3E50);
  v3 = __swift_project_boxed_opaque_existential_0Tm((v1 + 40), *(v1 + 64));
  v4 = *v3;
  *(v3 + 8);
  v5 = sub_221FB62E8();

  v6 = [v4 installStateForBundleIdentifier_];

  if (v6 != 1)
  {
    v38 = *(v0 + 1184);
    v39 = *(v0 + 1176);
    *v38 = 0;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v40 = swift_allocError();
    *v41 = 0;
LABEL_19:
    v52 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v54 = v53;
    sub_221EA4A40(v38, v53);
    *(v54 + *(v52 + 20)) = v40;
    swift_willThrow();
    v55 = *(v0 + 1304);
    v56 = *(v0 + 1296);
    v57 = *(v0 + 1288);
    v58 = *(v0 + 1280);
    v59 = *(v0 + 1256);
    v60 = *(v0 + 1248);
    v61 = *(v0 + 1240);
    v62 = *(v0 + 1232);
    v63 = *(v0 + 1208);
    v64 = *(v0 + 1184);
    v66 = *(v0 + 1168);
    v67 = *(v0 + 1160);
    v68 = *(v0 + 1152);
    v69 = *(v0 + 1144);
    v70 = *(v0 + 1120);
    v72 = *(v0 + 1112);

    v65 = *(v0 + 8);

    return v65();
  }

  v7 = [*(v0 + 1080) fromID];
  if (!v7)
  {
    sub_221FB6318();
    v7 = sub_221FB62E8();
  }

  v8 = ASSanitizedContactDestination();

  v9 = v8;
  v10 = v8;
  if (!v8)
  {
    sub_221FB6318();
    v10 = sub_221FB62E8();

    sub_221FB6318();
    v9 = sub_221FB62E8();
  }

  v71 = v9;
  v73 = v10;
  *(v0 + 1328) = v10;
  *(v0 + 1320) = v9;
  v11 = *(v0 + 1272);
  v12 = *(v0 + 1264);
  v13 = *(v0 + 1256);
  v14 = *(v0 + 1072);
  v15 = sub_221FB6318();
  v17 = v16;
  *(v0 + 1336) = v15;
  *(v0 + 1344) = v16;
  *(v0 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v18 = swift_allocObject();
  *(v0 + 1360) = v18;
  *(v18 + 16) = xmmword_221FB81A0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = v8;

  sub_221FB5ED8();
  sub_221FB5BD8();

  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    v20 = *(v0 + 1256);
    v21 = *(v0 + 1120);
    v22 = *(v0 + 1104);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1072);

    sub_221E9CFE8(v20, &qword_27CFEBD50, &unk_221FB9FB0);
    v25 = *(v22 + 16);
    v25(v21, v24, v23);
    v26 = sub_221FB61B8();
    v27 = sub_221FB65A8();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1120);
    if (v28)
    {
      v30 = *(v0 + 1112);
      v31 = *(v0 + 1104);
      v32 = *(v0 + 1096);
      v33 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v33 = 136315138;
      v25(v30, v29, v32);
      v34 = sub_221FB6328();
      v36 = v35;
      (*(v31 + 8))(v29, v32);
      v37 = sub_221EF4114(v34, v36, &v75);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_221E93000, v26, v27, "Invalid handshake token: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x223DADA80](v74, -1, -1);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    else
    {
      v48 = *(v0 + 1104);
      v49 = *(v0 + 1096);

      (*(v48 + 8))(v29, v49);
    }

    v38 = *(v0 + 1184);
    v50 = *(v0 + 1176);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v40 = swift_allocError();
    *v51 = 22;
    goto LABEL_19;
  }

  (*(*(v0 + 1272) + 32))(*(v0 + 1304), *(v0 + 1256), *(v0 + 1264));
  v42 = sub_221FB61B8();
  v43 = sub_221FB65C8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_221E93000, v42, v43, "Checking account info", v44, 2u);
    MEMORY[0x223DADA80](v44, -1, -1);
  }

  v45 = *(v0 + 1088);

  __swift_project_boxed_opaque_existential_0Tm(v45, v45[3]);
  v46 = swift_task_alloc();
  *(v0 + 1368) = v46;
  *v46 = v0;
  v46[1] = sub_221F6072C;

  return sub_221EF490C();
}

uint64_t sub_221F6072C(__int16 a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1368);
  v11 = *v2;
  *(v3 + 1856) = a1;
  *(v3 + 1376) = v1;

  if (v1)
  {
    v5 = *(v3 + 1360);
    v6 = *(v3 + 1344);
    v7 = *(v3 + 1328);
    v8 = *(v3 + 1320);

    v9 = sub_221F60FAC;
  }

  else
  {
    v9 = sub_221F60870;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F60870()
{
  v84 = v0;
  if (*(v0 + 1856) == 5)
  {
    if ((*(v0 + 1856) & 0xFF00) == 0x200)
    {
      v1 = *(v0 + 1344);
      v2 = *(v0 + 1312);

      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1344);
        v6 = *(v0 + 1336);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v83[0] = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_221EF4114(v6, v5, v83);
        _os_log_impl(&dword_221E93000, v3, v4, "Fetching participant for %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x223DADA80](v8, -1, -1);
        MEMORY[0x223DADA80](v7, -1, -1);
      }

      v9 = *(v0 + 1088);
      v10 = __swift_project_boxed_opaque_existential_0Tm(v9 + 57, v9[60]);
      v11 = v9[30];
      *(v0 + 1384) = v11;
      v12 = *__swift_project_boxed_opaque_existential_0Tm(v10 + 5, v10[8]);
      v13 = swift_task_alloc();
      *(v0 + 1392) = v13;
      *v13 = v0;
      v13[1] = sub_221F612C0;
      v14 = *(v0 + 1344);
      v15 = *(v0 + 1336);

      return sub_221E9F708(v15, v14, v11, v12);
    }

    else
    {
      v34 = *(v0 + 1360);
      v35 = *(v0 + 1344);
      v36 = *(v0 + 1328);
      v37 = *(v0 + 1320);
      v38 = *(v0 + 1312);

      v39 = sub_221FB61B8();
      v40 = sub_221FB65A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 1856);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v83[0] = v43;
        *v42 = 136315138;
        *(v0 + 1860) = v41;
        v44 = sub_221FB6328();
        v46 = sub_221EF4114(v44, v45, v83);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_221E93000, v39, v40, "Account not HSA2: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x223DADA80](v43, -1, -1);
        MEMORY[0x223DADA80](v42, -1, -1);
      }

      (*(*(v0 + 1136) + 104))(*(v0 + 1144), *MEMORY[0x277CE9460], *(v0 + 1128));
      v47 = swift_task_alloc();
      *(v0 + 1840) = v47;
      *v47 = v0;
      v47[1] = sub_221F68404;
      v48 = *(v0 + 1144);
      v49 = *(v0 + 1088);
      v50 = *(v0 + 1080);
      v51 = *(v0 + 1072);

      return sub_221F5E75C(v51, v50, v48);
    }
  }

  else
  {
    v17 = *(v0 + 1344);
    v18 = *(v0 + 1328);
    v19 = *(v0 + 1320);
    v20 = *(v0 + 1312);

    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 1856);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v83[0] = v25;
      *v24 = 136315138;
      *(v0 + 1858) = v23;
      v26 = sub_221FB6328();
      v28 = sub_221EF4114(v26, v27, v83);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_221E93000, v21, v22, "Account not signed in: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DADA80](v25, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    v29 = *(v0 + 1360);
    v30 = *(*(v0 + 1088) + 248);
    v31 = sub_221FB6428();
    v32 = [v30 contactWithDestinations_];

    v33 = *(v0 + 1360);
    if (v32)
    {
    }

    else
    {
      v52 = *(v0 + 1304);
      v53 = *(v0 + 1360);
      v54 = sub_221FB6428();

      v55 = sub_221FB5BF8();
      v32 = [v30 createContactWithDestinations:v54 relationshipIdentifier:v55];
    }

    v56 = *(v0 + 1304);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1264);
    v59 = *(v0 + 1184);
    v60 = *(v0 + 1176);
    [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 376) *(*(v0 + 1088) + 400))];
    *v59 = 0;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v61 = swift_allocError();
    *v62 = 10;
    v63 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v65 = v64;
    sub_221EA4A40(v59, v64);
    *(v65 + *(v63 + 20)) = v61;
    swift_willThrow();

    (*(v57 + 8))(v56, v58);
    v66 = *(v0 + 1304);
    v67 = *(v0 + 1296);
    v68 = *(v0 + 1288);
    v69 = *(v0 + 1280);
    v70 = *(v0 + 1256);
    v71 = *(v0 + 1248);
    v72 = *(v0 + 1240);
    v73 = *(v0 + 1232);
    v74 = *(v0 + 1208);
    v75 = *(v0 + 1184);
    v77 = *(v0 + 1168);
    v78 = *(v0 + 1160);
    v79 = *(v0 + 1152);
    v80 = *(v0 + 1144);
    v81 = *(v0 + 1120);
    v82 = *(v0 + 1112);

    v76 = *(v0 + 8);

    return v76();
  }
}

uint64_t sub_221F60FAC()
{
  v1 = v0[172];
  v2 = v0[164];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[172];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v4, v5, "Error fetching account info %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = v0[172];
  v12 = v0[163];
  v13 = v0[159];
  v14 = v0[158];
  v15 = v0[148];
  v16 = v0[147];

  *v15 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v17 = swift_allocError();
  *v18 = 10;
  v19 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v21 = v20;
  sub_221EA4A40(v15, v20);
  *(v21 + *(v19 + 20)) = v17;
  swift_willThrow();

  (*(v13 + 8))(v12, v14);
  v22 = v0[163];
  v23 = v0[162];
  v24 = v0[161];
  v25 = v0[160];
  v26 = v0[157];
  v27 = v0[156];
  v28 = v0[155];
  v29 = v0[154];
  v30 = v0[151];
  v31 = v0[148];
  v34 = v0[146];
  v35 = v0[145];
  v36 = v0[144];
  v37 = v0[143];
  v38 = v0[140];
  v39 = v0[139];

  v32 = v0[1];

  return v32();
}

uint64_t sub_221F612C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1392);
  v10 = *v2;
  *(*v2 + 1400) = a1;

  if (v1)
  {
    v5 = v3[170];
    v6 = v3[166];
    v7 = v3[165];

    v8 = sub_221F61918;
  }

  else
  {
    v8 = sub_221F61400;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F61400()
{
  v49 = v0;
  if (v0[175])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[136] + 456), *(v0[136] + 480));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[176] = v3;
    *v3 = v0;
    v3[1] = sub_221F617D8;
    v4 = v0[173];
    v5 = v0[168];
    v6 = v0[167];

    return sub_221F99674(v6, v5, v4, v2);
  }

  else
  {
    v8 = v0[170];
    v9 = v0[166];
    v10 = v0[165];

    v11 = v0[168];
    v12 = v0[164];

    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[168];
    if (v15)
    {
      v17 = v0[167];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315138;
      v20 = sub_221EF4114(v17, v16, &v48);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_221E93000, v13, v14, "Destination %s does not have a matching CloudKit participant", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    else
    {
    }

    v21 = v0[163];
    v22 = v0[159];
    v23 = v0[158];
    v24 = v0[148];
    v25 = v0[147];
    *v24 = 1;
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v26 = swift_allocError();
    *v27 = 12;
    v28 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v30 = v29;
    sub_221EA4A40(v24, v29);
    *(v30 + *(v28 + 20)) = v26;
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    v31 = v0[163];
    v32 = v0[162];
    v33 = v0[161];
    v34 = v0[160];
    v35 = v0[157];
    v36 = v0[156];
    v37 = v0[155];
    v38 = v0[154];
    v39 = v0[151];
    v40 = v0[148];
    v42 = v0[146];
    v43 = v0[145];
    v44 = v0[144];
    v45 = v0[143];
    v46 = v0[140];
    v47 = v0[139];

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_221F617D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1408);
  v10 = *v2;
  *(*v2 + 1416) = a1;

  if (v1)
  {
    v5 = v3[170];
    v6 = v3[166];
    v7 = v3[165];

    v8 = sub_221F680E8;
  }

  else
  {
    v8 = sub_221F61C2C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F61918()
{
  v40 = v0;
  v1 = v0[168];
  v2 = v0[164];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[168];
  if (v5)
  {
    v7 = v0[167];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    v10 = sub_221EF4114(v7, v6, &v39);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Destination %s does not have a matching CloudKit participant", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[163];
  v12 = v0[159];
  v13 = v0[158];
  v14 = v0[148];
  v15 = v0[147];
  *v14 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v16 = swift_allocError();
  *v17 = 12;
  v18 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v20 = v19;
  sub_221EA4A40(v14, v19);
  *(v20 + *(v18 + 20)) = v16;
  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  v21 = v0[163];
  v22 = v0[162];
  v23 = v0[161];
  v24 = v0[160];
  v25 = v0[157];
  v26 = v0[156];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[151];
  v30 = v0[148];
  v33 = v0[146];
  v34 = v0[145];
  v35 = v0[144];
  v36 = v0[143];
  v37 = v0[140];
  v38 = v0[139];

  v31 = v0[1];

  return v31();
}

uint64_t sub_221F61C2C()
{
  v27 = v0;
  v1 = [*(v0 + 1400) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1416) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {
    v5 = *(v0 + 1384);
    v6 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 200), *(*(v0 + 1088) + 224));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1862;
    *(v0 + 24) = sub_221F61F90;
    v7 = swift_continuation_init();
    *(v0 + 880) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 856) = v7;
    *(v0 + 824) = MEMORY[0x277D85DD0];
    *(v0 + 832) = 1107296256;
    *(v0 + 840) = sub_221FA909C;
    *(v0 + 848) = &block_descriptor_28;
    [v6 fetchAllChangesWithPriority:2 activity:0 group:v5 completion:v0 + 824];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 1360);
    v9 = *(v0 + 1344);
    v10 = *(v0 + 1320);
    v11 = *(v0 + 1312);

    v12 = sub_221FB61B8();
    v13 = sub_221FB65A8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 1344);
    if (v14)
    {
      v16 = *(v0 + 1336);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = sub_221EF4114(v16, v15, &v26);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_221E93000, v12, v13, "Destination %s has a participants, but no iCloud account", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1152), *MEMORY[0x277CE9450], *(v0 + 1128));
    v20 = swift_task_alloc();
    *(v0 + 1824) = v20;
    *v20 = v0;
    v20[1] = sub_221F67D54;
    v21 = *(v0 + 1152);
    v22 = *(v0 + 1088);
    v23 = *(v0 + 1080);
    v24 = *(v0 + 1072);

    return sub_221F5E75C(v24, v23, v21);
  }
}

uint64_t sub_221F61F90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1424) = v2;
  if (v2)
  {
    v3 = sub_221F633EC;
  }

  else
  {
    v3 = sub_221F620A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F620A0()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[136] + 160), *(v0[136] + 184));
  v0[179] = v1;
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(MEMORY[0x277CE9360] + 4);
  v5 = swift_task_alloc();
  v0[180] = v5;
  *v5 = v0;
  v5[1] = sub_221F62164;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221F62164(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1440);
  v5 = *v1;

  v6 = swift_task_alloc();
  *(v3 + 1448) = v6;
  *v6 = v5;
  v6[1] = sub_221F622B4;
  v7 = *(v3 + 1432);

  return sub_221F7C268(a1);
}

uint64_t sub_221F622B4(char a1)
{
  v2 = *(*v1 + 1448);
  v4 = *v1;
  *(*v1 + 1863) = a1;

  return MEMORY[0x2822009F8](sub_221F623B4, 0, 0);
}

uint64_t sub_221F623B4()
{
  v191 = v0;
  v1 = *(v0 + 1344);
  if (*(v0 + 1863) != 1)
  {
    v51 = *(v0 + 1360);
    v52 = *(v0 + 1328);
    v53 = *(v0 + 1320);
    v54 = *(v0 + 1312);
    v55 = *(v0 + 1088);

    sub_221F68E78(v55, v0 + 208);
    v56 = sub_221FB61B8();
    v57 = sub_221FB65C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v190 = v59;
      *v58 = 136315138;
      __swift_project_boxed_opaque_existential_0Tm((v0 + 368), *(v0 + 392));
      sub_221E94E44();
      v61 = v60;
      v62 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
      v63 = MEMORY[0x223DAC810](v61, v62);
      v65 = v64;

      sub_221F68EB0(v0 + 208);
      v66 = sub_221EF4114(v63, v65, &v190);

      *(v58 + 4) = v66;
      _os_log_impl(&dword_221E93000, v56, v57, "Some devices on account are not eligible for a secure cloud relationship: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x223DADA80](v59, -1, -1);
      MEMORY[0x223DADA80](v58, -1, -1);
    }

    else
    {

      sub_221F68EB0(v0 + 208);
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1160), *MEMORY[0x277CE9458], *(v0 + 1128));
    v102 = swift_task_alloc();
    *(v0 + 1808) = v102;
    *v102 = v0;
    v102[1] = sub_221F679C0;
    v103 = *(v0 + 1160);
LABEL_23:
    v104 = *(v0 + 1088);
    v105 = *(v0 + 1080);
    v106 = *(v0 + 1072);

    return sub_221F5E75C(v106, v105, v103);
  }

  v2 = *(v0 + 1352);
  v3 = *(v0 + 1336);
  v4 = *(*(v0 + 1088) + 248);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221FB81A0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;

  v6 = sub_221FB6428();

  v7 = [v4 contactWithDestinations_];

  if (!v7)
  {
    v8 = *(v0 + 1352);
    v9 = *(v0 + 1344);
    v10 = *(v0 + 1336);
    v11 = *(v0 + 1304);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221FB81A0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;

    v13 = sub_221FB6428();

    v14 = sub_221FB5BF8();
    v7 = [v4 createContactWithDestinations:v13 relationshipIdentifier:v14];
  }

  *(v0 + 1456) = v7;
  v15 = *(v0 + 1312);
  v16 = sub_221FB61B8();
  v17 = sub_221FB65C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_221E93000, v16, v17, "Checking deny list", v18, 2u);
    MEMORY[0x223DADA80](v18, -1, -1);
  }

  v19 = *(v0 + 1088);

  if ([*__swift_project_boxed_opaque_existential_0Tm((v19 + 256) *(v19 + 280))])
  {
    v184 = v7;
    v20 = *(v0 + 1360);
    v21 = *(v0 + 1344);
    v22 = *(v0 + 1328);
    v23 = *(v0 + 1320);
    v24 = *(v0 + 1312);

    v25 = sub_221FB61B8();
    v26 = sub_221FB65A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_221E93000, v25, v26, "Contact for invite request in deny list, dropping", v27, 2u);
      MEMORY[0x223DADA80](v27, -1, -1);
    }

    v28 = *(v0 + 1416);
    v29 = *(v0 + 1400);
    v180 = *(v0 + 1304);
    v30 = *(v0 + 1272);
    v31 = *(v0 + 1264);
    v32 = *(v0 + 1184);
    v33 = *(v0 + 1176);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v34 = swift_allocError();
    *v35 = 50;
    v36 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v38 = v37;
    sub_221EA4A40(v32, v37);
    *(v38 + *(v36 + 20)) = v34;
    swift_willThrow();

    (*(v30 + 8))(v180, v31);
    goto LABEL_10;
  }

  v67 = *(v0 + 1072);
  v68 = sub_221FB5F08();
  if (v68 != 1)
  {
    v107 = v68;
    v108 = *(v0 + 1360);
    v109 = *(v0 + 1344);
    v110 = *(v0 + 1328);
    v111 = *(v0 + 1320);
    v112 = *(v0 + 1312);

    v113 = sub_221FB61B8();
    v114 = sub_221FB65A8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 134218240;
      *(v115 + 4) = v107;
      *(v115 + 12) = 2048;
      *(v115 + 14) = 1;
      _os_log_impl(&dword_221E93000, v113, v114, "Incompatibile versions, invite: %ld, current: %ld", v115, 0x16u);
      MEMORY[0x223DADA80](v115, -1, -1);
    }

    if (v107 >= 2)
    {
      v116 = *(v0 + 1416);
      v117 = *(v0 + 1400);
      v118 = *(v0 + 1272);
      v183 = *(v0 + 1264);
      v187 = *(v0 + 1304);
      v119 = *(v0 + 1184);
      v120 = *(v0 + 1176);
      [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 376) *(*(v0 + 1088) + 400))];
      *v119 = 0;
      swift_storeEnumTagMultiPayload();
      sub_221EA4994();
      v121 = swift_allocError();
      *v122 = 34;
      v123 = type metadata accessor for IDSError(0);
      sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
      swift_allocError();
      v124 = v7;
      v126 = v125;
      sub_221EA4A40(v119, v125);
      *(v126 + *(v123 + 20)) = v121;
      swift_willThrow();

      (*(v118 + 8))(v187, v183);
      goto LABEL_10;
    }

    (*(*(v0 + 1136) + 104))(*(v0 + 1168), *MEMORY[0x277CE9468], *(v0 + 1128));
    v143 = swift_task_alloc();
    *(v0 + 1792) = v143;
    *v143 = v0;
    v143[1] = sub_221F67628;
    v103 = *(v0 + 1168);
    goto LABEL_23;
  }

  v69 = *(v0 + 1248);
  v70 = *(v0 + 1224);
  v71 = *(v0 + 1216);
  v72 = *(v0 + 1088);
  v73 = *(v0 + 1072);
  sub_221FB5F18();
  v74 = sub_221FB6008();
  v75 = *(v70 + 8);
  *(v0 + 1464) = v75;
  *(v0 + 1472) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v69, v71);
  [v7 setPendingRelationshipShareItem_];

  sub_221FB5F18();
  v76 = sub_221FB6048();
  v189 = v75;
  v75(v69, v71);
  [v7 setPendingLegacyShareLocations_];

  [v4 saveContact_];
  v77 = [v7 relationshipStorage];
  v78 = [v77 secureCloudRelationship];
  *(v0 + 1480) = v78;

  *(v0 + 1056) = v78;
  v79 = [v7 relationshipStorage];
  v80 = [v79 legacyRelationship];
  *(v0 + 1488) = v80;

  v81 = v78;
  LOBYTE(v79) = sub_221F5EE74(v73, v81);

  if (v79)
  {
    v182 = v80;
    v186 = v7;
    v82 = *(v0 + 1360);
    v83 = *(v0 + 1344);
    v84 = *(v0 + 1328);
    v85 = *(v0 + 1320);
    v86 = *(v0 + 1312);

    v87 = sub_221FB61B8();
    v88 = sub_221FB65C8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_221E93000, v87, v88, "Already updated relationship and notified for this invite", v89, 2u);
      MEMORY[0x223DADA80](v89, -1, -1);
    }

    v90 = *(v0 + 1416);
    v91 = *(v0 + 1304);
    v92 = *(v0 + 1272);
    v175 = *(v0 + 1400);
    v178 = *(v0 + 1264);
    v93 = *(v0 + 1184);
    v94 = *(v0 + 1176);
    v95 = *(v0 + 1088);
    v96 = *(v0 + 1072);

    v81 = v81;
    sub_221F5F2D8(v96, v81);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v97 = swift_allocError();
    *v98 = 16;
    v99 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v101 = v100;
    sub_221EA4A40(v93, v100);
    *(v101 + *(v99 + 20)) = v97;
    swift_willThrow();

    (*(v92 + 8))(v91, v178);
LABEL_20:

LABEL_10:
    v39 = *(v0 + 1304);
    v40 = *(v0 + 1296);
    v41 = *(v0 + 1288);
    v42 = *(v0 + 1280);
    v43 = *(v0 + 1256);
    v44 = *(v0 + 1248);
    v45 = *(v0 + 1240);
    v46 = *(v0 + 1232);
    v47 = *(v0 + 1208);
    v48 = *(v0 + 1184);
    v172 = *(v0 + 1168);
    v173 = *(v0 + 1160);
    v174 = *(v0 + 1152);
    v177 = *(v0 + 1144);
    v181 = *(v0 + 1120);
    v185 = *(v0 + 1112);

    v49 = *(v0 + 8);

    return v49();
  }

  if ([v81 isFriendshipActive] && !objc_msgSend(v81, sel_isActivityDataVisible))
  {
    v182 = v80;
    v188 = v7;
    v154 = *(v0 + 1360);
    v155 = *(v0 + 1344);
    v156 = *(v0 + 1328);
    v157 = *(v0 + 1320);
    v158 = *(v0 + 1312);

    v159 = sub_221FB61B8();
    v160 = sub_221FB65A8();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_221E93000, v159, v160, "Active friendship with hidden activity not handling invite request", v161, 2u);
      MEMORY[0x223DADA80](v161, -1, -1);
    }

    v162 = *(v0 + 1416);
    v163 = *(v0 + 1400);
    v164 = *(v0 + 1272);
    v176 = *(v0 + 1264);
    v179 = *(v0 + 1304);
    v165 = *(v0 + 1184);
    v166 = *(v0 + 1176);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v167 = swift_allocError();
    *v168 = 19;
    v169 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v171 = v170;
    sub_221EA4A40(v165, v170);
    *(v171 + *(v169 + 20)) = v167;
    swift_willThrow();

    (*(v164 + 8))(v179, v176);
    goto LABEL_20;
  }

  v127 = *(v0 + 1312);
  v128 = sub_221FB61B8();
  v129 = sub_221FB65C8();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_221E93000, v128, v129, "Adding received addresses to legacy relationship", v130, 2u);
    MEMORY[0x223DADA80](v130, -1, -1);
  }

  v131 = *(v0 + 1240);
  v132 = *(v0 + 1216);
  v133 = *(v0 + 1072);

  v134 = v80;
  sub_221FB5F18();
  sub_221FB6018();
  v136 = v135;
  v189(v131, v132);
  if (!v136)
  {
    v137 = *(v0 + 1344);

    v138 = *(v0 + 1336);
  }

  v139 = sub_221FB62E8();

  [v134 setCloudKitAddress_];

  v140 = [v134 addresses];
  if (v140)
  {
    v141 = v140;
    v142 = sub_221FB64F8();
  }

  else
  {
    v142 = MEMORY[0x277D84FA0];
  }

  *(v0 + 1496) = v142;
  v144 = *(v0 + 1360);
  v145 = *(v0 + 1328);
  v146 = *(v0 + 1088);
  v147 = v134;

  sub_221F78DEC(v148, v142);

  v149 = sub_221FB64E8();

  [v147 setAddresses_];

  v150 = v147;
  [v150 setPreferredReachableAddress_];

  __swift_project_boxed_opaque_existential_0Tm((v146 + 536), *(v146 + 560));
  v151 = v81;
  v152 = swift_task_alloc();
  *(v0 + 1504) = v152;
  *v152 = v0;
  v152[1] = sub_221F636B4;
  v153 = *(v0 + 1384);

  return sub_221E9AC64(v151, v153, 0);
}

uint64_t sub_221F633EC()
{
  v1 = v0[178];
  v2 = v0[170];
  v3 = v0[168];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];
  swift_willThrow();

  v7 = sub_221FB61B8();
  v8 = sub_221FB65A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_221E93000, v7, v8, "Fetch failed while handling incoming invitation request", v9, 2u);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v10 = v0[178];
  v11 = v0[177];
  v12 = v0[175];
  v38 = v0[163];
  v13 = v0[159];
  v14 = v0[158];
  v15 = v0[148];
  v16 = v0[147];

  *v15 = 1;
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v19 = v18;
  sub_221EA4A40(v15, v18);
  *(v19 + *(v17 + 20)) = v10;
  swift_willThrow();
  v20 = v10;

  (*(v13 + 8))(v38, v14);
  v21 = v0[163];
  v22 = v0[162];
  v23 = v0[161];
  v24 = v0[160];
  v25 = v0[157];
  v26 = v0[156];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[151];
  v30 = v0[148];
  v33 = v0[146];
  v34 = v0[145];
  v35 = v0[144];
  v36 = v0[143];
  v37 = v0[140];
  v39 = v0[139];

  v31 = v0[1];

  return v31();
}

uint64_t sub_221F636B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1504);
  v12 = *v2;
  *(v3 + 1512) = a1;
  *(v3 + 1520) = v1;

  if (v1)
  {
    v5 = *(v3 + 1496);
    v6 = *(v3 + 1480);
    v7 = *(v3 + 1360);
    v8 = *(v3 + 1344);
    v9 = *(v3 + 1320);

    v10 = sub_221F63A38;
  }

  else
  {

    v10 = sub_221F6380C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_221F6380C()
{
  v1 = v0[186];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[136] + 416), *(v0[136] + 440));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[191] = v4;
  *v4 = v0;
  v4[1] = sub_221F638D0;
  v5 = v0[186];
  v6 = v0[182];

  return sub_221FB4FA4(v5, v6, v2);
}

uint64_t sub_221F638D0(void *a1, void *a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 1528);
  v17 = *v4;
  v7[192] = a3;
  v7[193] = v3;

  if (v3)
  {
    v9 = v7[187];
    v10 = v7[186];
    v11 = v7[170];
    v12 = v7[168];
    v13 = v7[165];

    v14 = sub_221F64538;
  }

  else
  {
    v15 = v7[186];

    v14 = sub_221F63D78;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_221F63A38()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1312);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to make relationship shares: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = *(v0 + 1456);
  v11 = *(v0 + 1416);
  v12 = *(v0 + 1400);
  v40 = *(v0 + 1304);
  v42 = *(v0 + 1520);
  v13 = *(v0 + 1272);
  v38 = *(v0 + 1264);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);

  *v14 = 1;
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();
  v19 = v1;

  (*(v13 + 8))(v40, v38);
  if (v42)
  {
    v20 = 1480;
    v21 = 1488;
  }

  else
  {

    v20 = 1488;
    v21 = 1512;
  }

  v22 = *(v0 + v20);

  v23 = *(v0 + 1304);
  v24 = *(v0 + 1296);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1256);
  v28 = *(v0 + 1248);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1232);
  v31 = *(v0 + 1208);
  v32 = *(v0 + 1184);
  v35 = *(v0 + 1168);
  v36 = *(v0 + 1160);
  v37 = *(v0 + 1152);
  v39 = *(v0 + 1144);
  v41 = *(v0 + 1120);
  v43 = *(v0 + 1112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_221F63D78()
{
  v1 = *(v0 + 1088);

  v2 = *(v1 + 600);
  v3 = *(v1 + 601);
  *(v0 + 1864) = v3;
  v4 = *(v1 + 608);
  *(v0 + 1552) = v4;
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    v7 = *(v0 + 1496);

    *(v0 + 1640) = MEMORY[0x277D84F90];
    v8 = *(v0 + 1312);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 1536);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_221E93000, v9, v10, "Push legacy relationship %@", v12, 0xCu);
      sub_221E9CFE8(v13, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v15 = *(v0 + 1536);
    v16 = *(v0 + 1088);

    v17 = __swift_project_boxed_opaque_existential_0Tm((v16 + 496), *(v16 + 520));
    if ([v15 cloudType])
    {
      v18 = *(v0 + 1312);
      v19 = *(v0 + 1536);
      v20 = sub_221FB61B8();
      v21 = sub_221FB65A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 1536);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v22;
        *v24 = v22;
        v25 = v22;
        _os_log_impl(&dword_221E93000, v20, v21, "Attempting to save secure cloud relationship to legacy container %@", v23, 0xCu);
        sub_221E9CFE8(v24, &qword_27CFEB900, &unk_221FB8C10);
        MEMORY[0x223DADA80](v24, -1, -1);
        MEMORY[0x223DADA80](v23, -1, -1);
      }

      sub_221EA4994();
      v26 = swift_allocError();
      *v27 = 11;
      swift_willThrow();
      v28 = *(v0 + 1640);
      v29 = *(v0 + 1360);
      v30 = *(v0 + 1344);
      v31 = *(v0 + 1320);

      v80 = *(v0 + 1512);
      v82 = *(v0 + 1536);
      v84 = *(v0 + 1480);
      v32 = *(v0 + 1456);
      v33 = *(v0 + 1416);
      v34 = *(v0 + 1400);
      v35 = *(v0 + 1272);
      v76 = *(v0 + 1264);
      v78 = *(v0 + 1304);
      v36 = *(v0 + 1184);
      v37 = *(v0 + 1176);
      *v36 = 1;
      swift_storeEnumTagMultiPayload();
      v38 = type metadata accessor for IDSError(0);
      sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
      swift_allocError();
      v40 = v39;
      sub_221EA4A40(v36, v39);
      *(v40 + *(v38 + 20)) = v26;
      swift_willThrow();
      v41 = v26;

      (*(v35 + 8))(v78, v76);
      v42 = *(v0 + 1304);
      v43 = *(v0 + 1296);
      v44 = *(v0 + 1288);
      v45 = *(v0 + 1280);
      v46 = *(v0 + 1256);
      v47 = *(v0 + 1248);
      v48 = *(v0 + 1240);
      v49 = *(v0 + 1232);
      v50 = *(v0 + 1208);
      v51 = *(v0 + 1184);
      v75 = *(v0 + 1168);
      v77 = *(v0 + 1160);
      v79 = *(v0 + 1152);
      v81 = *(v0 + 1144);
      v83 = *(v0 + 1120);
      v85 = *(v0 + 1112);

      v52 = *(v0 + 8);

      return v52();
    }

    v68 = *(v0 + 1536);
    v69 = *(v0 + 1384);
    v70 = *__swift_project_boxed_opaque_existential_0Tm(v17 + 6, v17[9]);
    *(v0 + 1648) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v71 = sub_221FB6428();
    *(v0 + 1656) = v71;
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v72 = sub_221FB6428();
    *(v0 + 1664) = v72;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1064;
    *(v0 + 88) = sub_221F65324;
    v73 = swift_continuation_init();
    *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 920) = v73;
    *(v0 + 888) = MEMORY[0x277D85DD0];
    *(v0 + 896) = 1107296256;
    *(v0 + 904) = sub_221F68D78;
    *(v0 + 912) = &block_descriptor_15_1;
    [v70 saveRelationship:v68 contact:0 extraRecordsToSave:v71 extraRecordIDsToDelete:v72 cloudKitGroup:v69 activity:0 completion:v0 + 888];
    v74 = v0 + 80;

    return MEMORY[0x282200938](v74);
  }

  v54 = *(v0 + 1536);
  *(v0 + 1560) = [objc_opt_self() relationshipZone];
  v55 = [v54 UUID];
  if (!v55)
  {

    __break(1u);
    return MEMORY[0x282200938](v74);
  }

  v56 = v55;
  v57 = *(v0 + 1496);
  v58 = *(v0 + 1296);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  v61 = *(v0 + 1088);

  sub_221FB5C18();

  v62 = sub_221FB5BE8();
  v64 = v63;
  *(v0 + 1568) = v62;
  *(v0 + 1576) = v63;
  v65 = *(v59 + 8);
  *(v0 + 1584) = v65;
  *(v0 + 1592) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v65(v58, v60);
  v66 = *__swift_project_boxed_opaque_existential_0Tm((v61 + 336), *(v61 + 360));
  v67 = swift_task_alloc();
  *(v0 + 1600) = v67;
  *v67 = v0;
  v67[1] = sub_221F64878;

  return sub_221F288AC(v62, v64);
}

uint64_t sub_221F64538()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1312);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to make relationship shares: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v10 = *(v0 + 1456);
  v11 = *(v0 + 1416);
  v12 = *(v0 + 1400);
  v40 = *(v0 + 1304);
  v42 = *(v0 + 1520);
  v13 = *(v0 + 1272);
  v38 = *(v0 + 1264);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1176);

  *v14 = 1;
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();
  v19 = v1;

  (*(v13 + 8))(v40, v38);
  if (v42)
  {
    v20 = 1480;
    v21 = 1488;
  }

  else
  {

    v20 = 1488;
    v21 = 1512;
  }

  v22 = *(v0 + v20);

  v23 = *(v0 + 1304);
  v24 = *(v0 + 1296);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v27 = *(v0 + 1256);
  v28 = *(v0 + 1248);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1232);
  v31 = *(v0 + 1208);
  v32 = *(v0 + 1184);
  v35 = *(v0 + 1168);
  v36 = *(v0 + 1160);
  v37 = *(v0 + 1152);
  v39 = *(v0 + 1144);
  v41 = *(v0 + 1120);
  v43 = *(v0 + 1112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_221F64878(uint64_t a1)
{
  v2 = *(*v1 + 1600);
  v4 = *v1;
  *(*v1 + 1608) = a1;

  return MEMORY[0x2822009F8](sub_221F64978, 0, 0);
}

uint64_t sub_221F64978()
{
  v1 = v0[201];
  v2 = v0[197];
  if (v1)
  {
    v3 = v0[197];
  }

  else
  {
    v4 = v0[196];
    v5 = objc_allocWithZone(MEMORY[0x277CE9108]);
    v6 = sub_221FB62E8();

    v1 = [v5 initWithRelationshipIdentifier_];
  }

  v0[202] = v1;
  v7 = v0[192];
  v8 = *__swift_project_boxed_opaque_existential_0Tm((v0[136] + 336), *(v0[136] + 360));
  v9 = v7;

  return MEMORY[0x2822009F8](sub_221F64A64, v8, 0);
}

uint64_t sub_221F64A64()
{
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1544);
  *(v0 + 1624) = sub_221F5A3A4(*(v0 + 1536), *(v0 + 1560));
  *(v0 + 1632) = v2;
  v3 = *(v0 + 1536);
  if (v2)
  {
    v4 = *(v0 + 1360);
    v5 = *(v0 + 1344);

    v6 = sub_221F65170;
  }

  else
  {

    v6 = sub_221F64B30;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F64B30()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221FB81B0;
  *(v4 + 32) = v1;

  *(v0 + 1640) = v4;
  v5 = *(v0 + 1312);
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1536);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_221E93000, v6, v7, "Push legacy relationship %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v12 = *(v0 + 1536);
  v13 = *(v0 + 1088);

  v14 = __swift_project_boxed_opaque_existential_0Tm((v13 + 496), *(v13 + 520));
  if ([v12 cloudType])
  {
    v15 = *(v0 + 1312);
    v16 = *(v0 + 1536);
    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1536);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_221E93000, v17, v18, "Attempting to save secure cloud relationship to legacy container %@", v20, 0xCu);
      sub_221E9CFE8(v21, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v21, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    sub_221EA4994();
    v23 = swift_allocError();
    *v24 = 11;
    swift_willThrow();
    v25 = *(v0 + 1640);
    v26 = *(v0 + 1360);
    v27 = *(v0 + 1344);
    v28 = *(v0 + 1320);

    v62 = *(v0 + 1512);
    v64 = *(v0 + 1536);
    v66 = *(v0 + 1480);
    v29 = *(v0 + 1456);
    v30 = *(v0 + 1416);
    v31 = *(v0 + 1400);
    v32 = *(v0 + 1272);
    v58 = *(v0 + 1264);
    v60 = *(v0 + 1304);
    v33 = *(v0 + 1184);
    v34 = *(v0 + 1176);
    *v33 = 1;
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v37 = v36;
    sub_221EA4A40(v33, v36);
    *(v37 + *(v35 + 20)) = v23;
    swift_willThrow();
    v38 = v23;

    (*(v32 + 8))(v60, v58);
    v39 = *(v0 + 1304);
    v40 = *(v0 + 1296);
    v41 = *(v0 + 1288);
    v42 = *(v0 + 1280);
    v43 = *(v0 + 1256);
    v44 = *(v0 + 1248);
    v45 = *(v0 + 1240);
    v46 = *(v0 + 1232);
    v47 = *(v0 + 1208);
    v48 = *(v0 + 1184);
    v57 = *(v0 + 1168);
    v59 = *(v0 + 1160);
    v61 = *(v0 + 1152);
    v63 = *(v0 + 1144);
    v65 = *(v0 + 1120);
    v67 = *(v0 + 1112);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v51 = *(v0 + 1536);
    v52 = *(v0 + 1384);
    v53 = *__swift_project_boxed_opaque_existential_0Tm(v14 + 6, v14[9]);
    *(v0 + 1648) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v54 = sub_221FB6428();
    *(v0 + 1656) = v54;
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v55 = sub_221FB6428();
    *(v0 + 1664) = v55;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1064;
    *(v0 + 88) = sub_221F65324;
    v56 = swift_continuation_init();
    *(v0 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 920) = v56;
    *(v0 + 888) = MEMORY[0x277D85DD0];
    *(v0 + 896) = 1107296256;
    *(v0 + 904) = sub_221F68D78;
    *(v0 + 912) = &block_descriptor_15_1;
    [v53 saveRelationship:v51 contact:0 extraRecordsToSave:v54 extraRecordIDsToDelete:v55 cloudKitGroup:v52 activity:0 completion:v0 + 888];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_221F65170()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1512);
  v27 = *(v0 + 1536);
  v29 = *(v0 + 1480);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 1416);
  v7 = *(v0 + 1400);
  v8 = *(v0 + 1304);
  v9 = *(v0 + 1264);

  v2(v8, v9);
  v30 = *(v0 + 1632);
  v10 = *(v0 + 1304);
  v11 = *(v0 + 1296);
  v12 = *(v0 + 1288);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1256);
  v15 = *(v0 + 1248);
  v16 = *(v0 + 1240);
  v17 = *(v0 + 1232);
  v18 = *(v0 + 1208);
  v19 = *(v0 + 1184);
  v22 = *(v0 + 1168);
  v23 = *(v0 + 1160);
  v24 = *(v0 + 1152);
  v25 = *(v0 + 1144);
  v26 = *(v0 + 1120);
  v28 = *(v0 + 1112);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_221F65324()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1672) = v2;
  if (v2)
  {
    v3 = sub_221F65F44;
  }

  else
  {
    v3 = sub_221F65434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F65434()
{
  v1 = v0[208];
  v2 = v0[207];
  v3 = v0[206];
  v4 = v0[205];
  v5 = v0[192];
  v6 = v0[136];
  v0[210] = v0[133];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 496), *(v6 + 520));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  sub_221EBCC48();
  v10 = sub_221FB64E8();
  v0[211] = v10;

  v0[18] = v0;
  v0[23] = v0 + 130;
  v0[19] = sub_221F655FC;
  v11 = swift_continuation_init();
  v0[126] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[123] = v11;
  v0[119] = MEMORY[0x277D85DD0];
  v0[120] = 1107296256;
  v0[121] = sub_221EBCB58;
  v0[122] = &block_descriptor_18_1;
  [v8 handleSavedRecords:v10 forContact:0 completion:v0 + 119];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F655FC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1696) = v2;
  if (v2)
  {
    v3 = sub_221F65CB8;
  }

  else
  {
    v3 = sub_221F6570C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6570C()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1088);
  *(v0 + 1704) = *(v0 + 1048);

  LOBYTE(v2) = *(v3 + 600);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v4 = *(v0 + 1552);
    v5 = *(v0 + 1864);
    UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v6 == 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v0 + 1864) != 1)
  {
LABEL_6:
    v8 = *(v0 + 1680);

    v9 = *(v0 + 1312);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_221E93000, v10, v11, "Updating relationships", v12, 2u);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v13 = *(v0 + 1480);
    v14 = *(v0 + 1472);
    v15 = *(v0 + 1464);
    v16 = *(v0 + 1232);
    v17 = *(v0 + 1216);
    v18 = *(v0 + 1072);

    v19 = v13;
    sub_221FB5ED8();
    v20 = sub_221FB62E8();

    [v19 setIncomingHandshakeToken_];

    v21 = v19;
    sub_221FB5F18();
    sub_221FB6018();
    v23 = v22;
    v15(v16, v17);
    v24 = *(v0 + 1344);
    if (v23)
    {
      v25 = *(v0 + 1344);
    }

    else
    {
      v29 = *(v0 + 1336);
    }

    v30 = *(v0 + 1480);
    v31 = sub_221FB62E8();

    [v30 setCloudKitAddress_];

    v32 = [v30 addresses];
    if (v32)
    {
      v33 = v32;
      v34 = sub_221FB64F8();
    }

    else
    {
      v34 = MEMORY[0x277D84FA0];
    }

    v35 = *(v0 + 1512);
    v36 = *(v0 + 1360);
    v37 = *(v0 + 1320);
    v38 = *(v0 + 1208);
    v39 = *(v0 + 1200);
    v61 = *(v0 + 1192);
    v62 = *(v0 + 1312);
    v40 = *(v0 + 1080);
    v41 = *(v0 + 1072);
    v42 = *(v0 + 1480);
    sub_221F78DEC(v36, v34);

    v43 = sub_221FB64E8();

    [v42 setAddresses_];

    v44 = v42;
    [v44 setPreferredReachableAddress_];

    [v44 setPreferredReachableService_];
    v45 = v44;
    v46 = [v35 recordID];
    [v45 setRelationshipZoneShareID_];

    [v45 setReceivedInvitation_];
    v47 = v45;
    sub_221FB5EE8();
    v48 = sub_221FB5B58();
    (*(v39 + 8))(v38, v61);
    [v47 insertEventWithType:300 timestamp:v48];

    v49 = sub_221FB61B8();
    v50 = sub_221FB65C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 1480);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v51;
      *v53 = v51;
      v54 = v51;
      _os_log_impl(&dword_221E93000, v49, v50, "Pushing secure cloud relationship %@", v52, 0xCu);
      sub_221E9CFE8(v53, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v53, -1, -1);
      MEMORY[0x223DADA80](v52, -1, -1);
    }

    v55 = *(v0 + 1480);
    v56 = *(v0 + 1088);

    __swift_project_boxed_opaque_existential_0Tm((v56 + 496), *(v56 + 520));
    v57 = v55;
    v58 = swift_task_alloc();
    *(v0 + 1720) = v58;
    *v58 = v0;
    v58[1] = sub_221F66790;
    v59 = *(v0 + 1480);
    v60 = *(v0 + 1384);

    return sub_221EBAEA8(v59, 0, v60, 0);
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 1088) + 496), *(*(v0 + 1088) + 520));
  v26 = swift_task_alloc();
  *(v0 + 1712) = v26;
  *v26 = v0;
  v26[1] = sub_221F661E0;
  v27 = *(v0 + 1680);

  return sub_221EBC594(v27);
}

uint64_t sub_221F65CB8()
{
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[170];
  v5 = v0[168];
  v6 = v0[165];
  swift_willThrow();

  v7 = v0[212];
  v35 = v0[189];
  v37 = v0[192];
  v39 = v0[185];
  v8 = v0[182];
  v9 = v0[177];
  v10 = v0[175];
  v11 = v0[159];
  v31 = v0[158];
  v33 = v0[163];
  v12 = v0[148];
  v13 = v0[147];
  *v12 = 1;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v12, v15);
  *(v16 + *(v14 + 20)) = v7;
  swift_willThrow();
  v17 = v7;

  (*(v11 + 8))(v33, v31);
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[148];
  v30 = v0[146];
  v32 = v0[145];
  v34 = v0[144];
  v36 = v0[143];
  v38 = v0[140];
  v40 = v0[139];

  v28 = v0[1];

  return v28();
}

uint64_t sub_221F65F44()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1656);
  swift_willThrow();

  v4 = *(v0 + 1672);
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1320);

  v36 = *(v0 + 1512);
  v38 = *(v0 + 1536);
  v40 = *(v0 + 1480);
  v9 = *(v0 + 1456);
  v10 = *(v0 + 1416);
  v11 = *(v0 + 1400);
  v12 = *(v0 + 1272);
  v32 = *(v0 + 1264);
  v34 = *(v0 + 1304);
  v13 = *(v0 + 1184);
  v14 = *(v0 + 1176);
  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v17 = v16;
  sub_221EA4A40(v13, v16);
  *(v17 + *(v15 + 20)) = v4;
  swift_willThrow();
  v18 = v4;

  (*(v12 + 8))(v34, v32);
  v19 = *(v0 + 1304);
  v20 = *(v0 + 1296);
  v21 = *(v0 + 1288);
  v22 = *(v0 + 1280);
  v23 = *(v0 + 1256);
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1184);
  v31 = *(v0 + 1168);
  v33 = *(v0 + 1160);
  v35 = *(v0 + 1152);
  v37 = *(v0 + 1144);
  v39 = *(v0 + 1120);
  v41 = *(v0 + 1112);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_221F661E0()
{
  v1 = *(*v0 + 1712);
  v2 = *(*v0 + 1680);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F662F8, 0, 0);
}

uint64_t sub_221F662F8()
{
  v1 = *(v0 + 1312);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Updating relationships", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 1480);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1216);
  v10 = *(v0 + 1072);

  v11 = v5;
  sub_221FB5ED8();
  v12 = sub_221FB62E8();

  [v11 setIncomingHandshakeToken_];

  v13 = v11;
  sub_221FB5F18();
  sub_221FB6018();
  v15 = v14;
  v7(v8, v9);
  v16 = *(v0 + 1344);
  if (v15)
  {
    v17 = *(v0 + 1344);
  }

  else
  {
    v18 = *(v0 + 1336);
  }

  v19 = *(v0 + 1480);
  v20 = sub_221FB62E8();

  [v19 setCloudKitAddress_];

  v21 = [v19 addresses];
  if (v21)
  {
    v22 = v21;
    v23 = sub_221FB64F8();
  }

  else
  {
    v23 = MEMORY[0x277D84FA0];
  }

  v24 = *(v0 + 1512);
  v25 = *(v0 + 1360);
  v26 = *(v0 + 1320);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v51 = *(v0 + 1192);
  v52 = *(v0 + 1312);
  v29 = *(v0 + 1080);
  v30 = *(v0 + 1072);
  v31 = *(v0 + 1480);
  sub_221F78DEC(v25, v23);

  v32 = sub_221FB64E8();

  [v31 setAddresses_];

  v33 = v31;
  [v33 setPreferredReachableAddress_];

  [v33 setPreferredReachableService_];
  v34 = v33;
  v35 = [v24 recordID];
  [v34 setRelationshipZoneShareID_];

  [v34 setReceivedInvitation_];
  v36 = v34;
  sub_221FB5EE8();
  v37 = sub_221FB5B58();
  (*(v28 + 8))(v27, v51);
  [v36 insertEventWithType:300 timestamp:v37];

  v38 = sub_221FB61B8();
  v39 = sub_221FB65C8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1480);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v40;
    *v42 = v40;
    v43 = v40;
    _os_log_impl(&dword_221E93000, v38, v39, "Pushing secure cloud relationship %@", v41, 0xCu);
    sub_221E9CFE8(v42, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v42, -1, -1);
    MEMORY[0x223DADA80](v41, -1, -1);
  }

  v44 = *(v0 + 1480);
  v45 = *(v0 + 1088);

  __swift_project_boxed_opaque_existential_0Tm((v45 + 496), *(v45 + 520));
  v46 = v44;
  v47 = swift_task_alloc();
  *(v0 + 1720) = v47;
  *v47 = v0;
  v47[1] = sub_221F66790;
  v48 = *(v0 + 1480);
  v49 = *(v0 + 1384);

  return sub_221EBAEA8(v48, 0, v49, 0);
}

uint64_t sub_221F66790(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1720);
  v6 = *v2;
  *(v4 + 1728) = a1;
  *(v4 + 1736) = v1;

  if (v1)
  {
    v7 = sub_221F66B70;
  }

  else
  {
    v7 = sub_221F668D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F668D0()
{
  v1 = v0[216];
  v2 = v0[185];
  v3 = v0[182];
  v4 = v0[161];
  v5 = v0[136];
  swift_beginAccess();
  v0[132] = v1;

  v6 = __swift_project_boxed_opaque_existential_0Tm((v5 + 416), *(v5 + 440));
  v7 = [v3 UUID];
  sub_221FB5C18();

  v8 = *v6;
  v9 = swift_task_alloc();
  v0[218] = v9;
  *v9 = v0;
  v9[1] = sub_221F669E4;
  v10 = v0[161];

  return sub_221FB4D30(200, v10, v8);
}

uint64_t sub_221F669E4()
{
  v2 = *v1;
  v3 = *(*v1 + 1744);
  v4 = *v1;
  v2[219] = v0;

  v5 = v2[161];
  v6 = v2[159];
  v7 = v2[158];
  v8 = *(v6 + 8);
  v9 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[222] = v8;
    v2[223] = v9;
    v8(v5, v7);
    v10 = sub_221F6730C;
  }

  else
  {
    v2[220] = v8;
    v2[221] = v9;
    v8(v5, v7);
    v10 = sub_221F66DC0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_221F66B70()
{
  v1 = v0[217];
  v29 = v0[189];
  v31 = v0[213];
  v33 = v0[185];
  v2 = v0[182];
  v3 = v0[177];
  v4 = v0[175];
  v5 = v0[159];
  v25 = v0[158];
  v27 = v0[163];
  v6 = v0[148];
  v7 = v0[147];
  *v6 = 1;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v6, v9);
  *(v10 + *(v8 + 20)) = v1;
  swift_willThrow();
  v11 = v1;

  (*(v5 + 8))(v27, v25);
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[157];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[154];
  v20 = v0[151];
  v21 = v0[148];
  v24 = v0[146];
  v26 = v0[145];
  v28 = v0[144];
  v30 = v0[143];
  v32 = v0[140];
  v34 = v0[139];

  v22 = v0[1];

  return v22();
}

uint64_t sub_221F66DC0()
{
  v1 = [*(v0 + 1728) isFriendshipActive];
  v74 = *(v0 + 1760);
  v77 = *(v0 + 1768);
  if (v1)
  {
    v66 = *(v0 + 1704);
    v70 = *(v0 + 1728);
    v2 = *(v0 + 1456);
    v3 = *(v0 + 1416);
    v4 = *(v0 + 1400);
    v58 = *(v0 + 1304);
    v61 = *(v0 + 1512);
    v56 = *(v0 + 1264);
    v5 = *(v0 + 1184);
    v6 = *(v0 + 1176);
    v7 = [v2 UUID];
    sub_221FB5C18();

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v8 = swift_allocError();
    *v9 = 1;
    v10 = type metadata accessor for IDSError(0);
    sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v12 = v11;
    sub_221EA4A40(v5, v11);
    *(v12 + *(v10 + 20)) = v8;
    swift_willThrow();

    v74(v58, v56);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1288);
    v16 = *(v0 + 1280);
    v17 = *(v0 + 1256);
    v18 = *(v0 + 1248);
    v19 = *(v0 + 1240);
    v20 = *(v0 + 1232);
    v21 = *(v0 + 1208);
    v22 = *(v0 + 1184);
    v59 = *(v0 + 1168);
    v62 = *(v0 + 1160);
    v67 = *(v0 + 1152);
    v71 = *(v0 + 1144);
    v75 = *(v0 + 1120);
    v78 = *(v0 + 1112);

    v23 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 1472);
    v25 = *(v0 + 1464);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1280);
    v68 = *(v0 + 1264);
    v72 = *(v0 + 1312);
    v28 = *(v0 + 1248);
    v29 = *(v0 + 1216);
    v30 = *(v0 + 1088);
    v31 = *(v0 + 1072);
    v64 = __swift_project_boxed_opaque_existential_0Tm(v30 + 10, v30[13]);
    sub_221FB5F18();
    v32 = sub_221FB6038();
    v25(v28, v29);
    v33 = [v26 UUID];
    sub_221FB5C18();

    v34 = *v64;
    v35 = sub_221FB5BF8();
    ASProcessActivityDataPreviewWithManager();

    v74(v27, v68);
    [*__swift_project_boxed_opaque_existential_0Tm(v30 + 47 v30[50])];
    [*__swift_project_boxed_opaque_existential_0Tm(v30 + 15 v30[18])];
    v36 = sub_221FB61B8();
    v37 = sub_221FB65C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_221E93000, v36, v37, "Finished handling invitation request", v38, 2u);
      MEMORY[0x223DADA80](v38, -1, -1);
    }

    v39 = *(v0 + 1768);
    v40 = *(v0 + 1760);
    v41 = *(v0 + 1704);
    v42 = *(v0 + 1512);
    v43 = *(v0 + 1416);
    v44 = *(v0 + 1400);
    v45 = *(v0 + 1304);
    v48 = *(v0 + 1296);
    v49 = *(v0 + 1728);
    v50 = *(v0 + 1288);
    v51 = *(v0 + 1280);
    v46 = *(v0 + 1264);
    v52 = *(v0 + 1256);
    v53 = *(v0 + 1248);
    v54 = *(v0 + 1240);
    v55 = *(v0 + 1232);
    v57 = *(v0 + 1208);
    v60 = *(v0 + 1184);
    v63 = *(v0 + 1168);
    v65 = *(v0 + 1160);
    v69 = *(v0 + 1152);
    v73 = *(v0 + 1144);
    v76 = *(v0 + 1120);
    v79 = *(v0 + 1112);

    v40(v45, v46);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_221F6730C()
{
  v1 = v0[164];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[216];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to add remote event type for relationship: %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = v0[219];
  v41 = v0[216];
  v37 = v0[223];
  v39 = v0[213];
  v33 = v0[222];
  v35 = v0[189];
  v9 = v0[182];
  v10 = v0[177];
  v11 = v0[175];
  v31 = v0[163];
  v12 = v0[158];
  v13 = v0[148];
  v14 = v0[147];

  *v13 = 1;
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v17 = v16;
  sub_221EA4A40(v13, v16);
  *(v17 + *(v15 + 20)) = v8;
  swift_willThrow();
  v18 = v8;

  v33(v31, v12);
  v19 = v0[163];
  v20 = v0[162];
  v21 = v0[161];
  v22 = v0[160];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[148];
  v32 = v0[146];
  v34 = v0[145];
  v36 = v0[144];
  v38 = v0[143];
  v40 = v0[140];
  v42 = v0[139];

  v29 = v0[1];

  return v29();
}

uint64_t sub_221F67628()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  (*(v2[142] + 8))(v2[146], v2[141]);
  if (v0)
  {
    v5 = sub_221F68BF0;
  }

  else
  {
    v5 = sub_221F67790;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F67790()
{
  v1 = v0[182];
  v2 = v0[177];
  v3 = v0[175];
  v4 = v0[159];
  v28 = v0[158];
  v30 = v0[163];
  v5 = v0[148];
  v6 = v0[147];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v7 = swift_allocError();
  *v8 = 9;
  v9 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v11 = v10;
  sub_221EA4A40(v5, v10);
  *(v11 + *(v9 + 20)) = v7;
  swift_willThrow();

  (*(v4 + 8))(v30, v28);
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[157];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[154];
  v20 = v0[151];
  v21 = v0[148];
  v24 = v0[146];
  v25 = v0[145];
  v26 = v0[144];
  v27 = v0[143];
  v29 = v0[140];
  v31 = v0[139];

  v22 = v0[1];

  return v22();
}

uint64_t sub_221F679C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(*v1 + 1816) = v0;

  (*(v2[142] + 8))(v2[145], v2[141]);
  if (v0)
  {
    v5 = sub_221F68A70;
  }

  else
  {
    v5 = sub_221F67B28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F67B28()
{
  v1 = v0[177];
  v2 = v0[175];
  v29 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[148];
  v6 = v0[147];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v7 = swift_allocError();
  *v8 = 49;
  v9 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v11 = v10;
  sub_221EA4A40(v5, v10);
  *(v11 + *(v9 + 20)) = v7;
  swift_willThrow();

  (*(v3 + 8))(v29, v4);
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[157];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[154];
  v20 = v0[151];
  v21 = v0[148];
  v24 = v0[146];
  v25 = v0[145];
  v26 = v0[144];
  v27 = v0[143];
  v28 = v0[140];
  v30 = v0[139];

  v22 = v0[1];

  return v22();
}

uint64_t sub_221F67D54()
{
  v2 = *v1;
  v3 = *(*v1 + 1824);
  v4 = *v1;
  *(*v1 + 1832) = v0;

  (*(v2[142] + 8))(v2[144], v2[141]);
  if (v0)
  {
    v5 = sub_221F688F0;
  }

  else
  {
    v5 = sub_221F67EBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F67EBC()
{
  v1 = v0[177];
  v2 = v0[175];
  v29 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[148];
  v6 = v0[147];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v7 = swift_allocError();
  *v8 = 6;
  v9 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v11 = v10;
  sub_221EA4A40(v5, v10);
  *(v11 + *(v9 + 20)) = v7;
  swift_willThrow();

  (*(v3 + 8))(v29, v4);
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[157];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[154];
  v20 = v0[151];
  v21 = v0[148];
  v24 = v0[146];
  v25 = v0[145];
  v26 = v0[144];
  v27 = v0[143];
  v28 = v0[140];
  v30 = v0[139];

  v22 = v0[1];

  return v22();
}

uint64_t sub_221F680E8()
{
  v41 = v0;
  v1 = v0[168];
  v2 = v0[164];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[168];
  if (v5)
  {
    v7 = v0[167];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;
    v10 = sub_221EF4114(v7, v6, &v40);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_221E93000, v3, v4, "Destination %s does not have a matching legacy participant", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[175];
  v12 = v0[163];
  v13 = v0[159];
  v14 = v0[158];
  v15 = v0[148];
  v16 = v0[147];
  *v15 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v17 = swift_allocError();
  *v18 = 12;
  v19 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v21 = v20;
  sub_221EA4A40(v15, v20);
  *(v21 + *(v19 + 20)) = v17;
  swift_willThrow();

  (*(v13 + 8))(v12, v14);
  v22 = v0[163];
  v23 = v0[162];
  v24 = v0[161];
  v25 = v0[160];
  v26 = v0[157];
  v27 = v0[156];
  v28 = v0[155];
  v29 = v0[154];
  v30 = v0[151];
  v31 = v0[148];
  v34 = v0[146];
  v35 = v0[145];
  v36 = v0[144];
  v37 = v0[143];
  v38 = v0[140];
  v39 = v0[139];

  v32 = v0[1];

  return v32();
}

uint64_t sub_221F68404()
{
  v2 = *v1;
  v3 = *(*v1 + 1840);
  v4 = *v1;
  *(*v1 + 1848) = v0;

  (*(v2[142] + 8))(v2[143], v2[141]);
  if (v0)
  {
    v5 = sub_221F68788;
  }

  else
  {
    v5 = sub_221F6856C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F6856C()
{
  v1 = v0[163];
  v2 = v0[159];
  v3 = v0[158];
  v4 = v0[148];
  v5 = v0[147];
  swift_storeEnumTagMultiPayload();
  sub_221EA4994();
  v6 = swift_allocError();
  *v7 = 10;
  v8 = type metadata accessor for IDSError(0);
  sub_221F68EE0(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v4, v9);
  *(v10 + *(v8 + 20)) = v6;
  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  v11 = v0[163];
  v12 = v0[162];
  v13 = v0[161];
  v14 = v0[160];
  v15 = v0[157];
  v16 = v0[156];
  v17 = v0[155];
  v18 = v0[154];
  v19 = v0[151];
  v20 = v0[148];
  v23 = v0[146];
  v24 = v0[145];
  v25 = v0[144];
  v26 = v0[143];
  v27 = v0[140];
  v28 = v0[139];

  v21 = v0[1];

  return v21();
}

uint64_t sub_221F68788()
{
  (*(v0[159] + 8))(v0[163], v0[158]);
  v19 = v0[231];
  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[157];
  v6 = v0[156];
  v7 = v0[155];
  v8 = v0[154];
  v9 = v0[151];
  v10 = v0[148];
  v13 = v0[146];
  v14 = v0[145];
  v15 = v0[144];
  v16 = v0[143];
  v17 = v0[140];
  v18 = v0[139];

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F688F0()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);

  (*(v3 + 8))(v2, v4);
  v23 = *(v0 + 1832);
  v5 = *(v0 + 1304);
  v6 = *(v0 + 1296);
  v7 = *(v0 + 1288);
  v8 = *(v0 + 1280);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1248);
  v11 = *(v0 + 1240);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1208);
  v14 = *(v0 + 1184);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1160);
  v19 = *(v0 + 1152);
  v20 = *(v0 + 1144);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F68A70()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);

  (*(v3 + 8))(v2, v4);
  v23 = *(v0 + 1816);
  v5 = *(v0 + 1304);
  v6 = *(v0 + 1296);
  v7 = *(v0 + 1288);
  v8 = *(v0 + 1280);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1248);
  v11 = *(v0 + 1240);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1208);
  v14 = *(v0 + 1184);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1160);
  v19 = *(v0 + 1152);
  v20 = *(v0 + 1144);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221F68BF0()
{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1272);
  v5 = *(v0 + 1264);

  (*(v4 + 8))(v3, v5);
  v24 = *(v0 + 1800);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1296);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1208);
  v15 = *(v0 + 1184);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1160);
  v20 = *(v0 + 1152);
  v21 = *(v0 + 1144);
  v22 = *(v0 + 1120);
  v23 = *(v0 + 1112);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_221F68D78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    **(*(v4 + 64) + 40) = sub_221FB6438();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F68EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221F68F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221F68F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TestProperty.init(_:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17[-v13];
  v18 = *v12;
  v15 = *(v7 + 16);
  v15(&v17[-v13]);
  (v15)(v11, a2, a3);
  TestProperty.init(_:fallback:internalFallback:)(&v18, v14, v11, a3, a4);
  return (*(v7 + 8))(a2, a3);
}

uint64_t TestProperty.init(_:fallback:internalFallback:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = *MEMORY[0x277CE91F8];
  sub_221FB6318();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_221FB62E8();

  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    v12 = [objc_opt_self() standardUserDefaults];
  }

  v13 = type metadata accessor for TestProperty();
  *&a5[*(v13 + 40)] = v12;
  v14 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v20 = *(a4 - 8);
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  if (v15)
  {
    a3 = a2;
  }

  (*(*(a4 - 8) + 8))(v16, a4);
  v17 = *(v20 + 32);
  v18 = &a5[*(v13 + 36)];

  return v17(v18, a3, a4);
}

uint64_t TestProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_221FB6778();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v12 = *&v2[*(a1 + 40)];
    v20[15] = *v2;
    v13 = UserDefaultsKeys.rawValue.getter();
    (*(*(a1 + 24) + 8))(v12, v13, v14, v6);

    v15 = *(v6 - 8);
    v16 = *(v15 + 48);
    if (v16(v11, 1, v6) == 1)
    {
      (*(v15 + 16))(a2, &v3[*(a1 + 36)], v6);
      result = v16(v11, 1, v6);
      if (result != 1)
      {
        return (*(v8 + 8))(v11, v7);
      }
    }

    else
    {
      return (*(v15 + 32))(a2, v11, v6);
    }
  }

  else
  {
    v18 = *(*(v6 - 8) + 16);
    v19 = &v2[*(a1 + 36)];

    return v18(a2, v19, v6);
  }

  return result;
}

uint64_t sub_221F695B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for TestProperty();
  return TestProperty.wrappedValue.setter(v7, v9);
}

uint64_t TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v5 = *&v2[*(a2 + 40)];
    v14 = *v2;
    v6 = UserDefaultsKeys.rawValue.getter();
    v8 = a2 + 16;
    v7 = *(a2 + 16);
    (*(*(v8 + 8) + 16))(v5, v6, v9, v7);

    v10 = *(*(v7 - 8) + 8);
    v11 = a1;
    v12 = v7;
  }

  else
  {
    v12 = *(a2 + 16);
    v10 = *(*(v12 - 8) + 8);
    v11 = a1;
  }

  return v10(v11, v12);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  TestProperty.wrappedValue.getter(a2, v11);
  return sub_221F6988C;
}

void sub_221F6988C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    TestProperty.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    TestProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_221F69954(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_221F69D20();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221F699EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}