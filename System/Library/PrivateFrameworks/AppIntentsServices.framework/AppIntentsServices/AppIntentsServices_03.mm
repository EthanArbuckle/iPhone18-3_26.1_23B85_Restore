uint64_t sub_2219C267C()
{
  v1 = v0;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v2 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v2, qword_280FA9008);

  v3 = sub_221BCCD68();
  v4 = sub_221BCDA68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2219A6360(*(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &v13);
    _os_log_impl(&dword_221989000, v3, v4, "[%s] Deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v7 = *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  v8 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v9 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1(v9);
  (*(v10 + 8))(v1 + v8);
  sub_2219EBE90(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);
  v11 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8);

  return v1;
}

uint64_t sub_2219C2818()
{
  sub_2219C267C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InProcessDispatcher()
{
  result = qword_280FA8FC8;
  if (!qword_280FA8FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2219C28C4()
{
  result = sub_221BCCD08();
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

uint64_t sub_2219C298C()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0;
  v4 = v3;
  v1[88] = v2;
  v1[87] = v5;
  v1[86] = v6;
  v1[85] = v7;
  v1[84] = v8;
  v1[89] = *v2;
  v9 = sub_221BCCD88();
  v1[90] = v9;
  v10 = *(v9 - 8);
  v1[91] = v10;
  v11 = *(v10 + 64);
  v1[92] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64) + 15;
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64) + 15;
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  memcpy(v1 + 2, v4, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2219C2B08()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v1 = *(*(v0 + 704) + 73);
  *(v0 + 212) = v1;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  *(v0 + 776) = __swift_project_value_buffer(*(v0 + 720), qword_280FA9008);
  if (qword_27CFB6CA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 768);
  v3 = *(v0 + 752);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 680);
  memcpy((v0 + 416), &qword_27CFDD048, 0x59uLL);
  v7 = v5 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
  *(v0 + 784) = *(v5 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *(v0 + 792) = *(v7 + 8);
  *(v0 + 800) = *(v5 + 16);
  *(v0 + 808) = *(v5 + 24);
  v26 = *(v0 + 688);
  sub_2219EB748(v6, v0 + 512);
  v8 = swift_allocObject();
  *(v0 + 816) = v8;
  *(v8 + 16) = v1;
  v9 = *(v0 + 528);
  *(v8 + 24) = *(v0 + 512);
  *(v8 + 40) = v9;
  *(v8 + 56) = *(v0 + 544);
  memcpy((v8 + 64), (v0 + 16), 0xC4uLL);
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0;
  v10 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v11 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1(v11);
  (*(v12 + 16))(v2, v5 + v10, v11);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  *(v0 + 824) = v20;
  *(v20 + 16) = v5;
  *(v20 + 24) = v6;
  *(v20 + 32) = v0 + 16;
  *(v20 + 40) = v26;
  *(v20 + 56) = v4;
  sub_2219EB864(v0 + 16, v0 + 216);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_238();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2219C2D28()
{
  v39 = *(v0 + 816);
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v40 = *(v0 + 800);
  v41 = *(v0 + 784);
  v3 = *(v0 + 212);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  (*(*(v0 + 728) + 16))(*(v0 + 736), *(v0 + 776), *(v0 + 720));
  sub_2219BAF0C(v0 + 552, v0 + 592, qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v4, v5, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v6, v7, &qword_27CFB7F58, &unk_221BD27E0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_141(v11, v12, v0 + 416, v13, sub_2219EB7A4, v14, v15, v16, 0, 0, v32, v33, v34, v35, v36, v7, sub_2219EC604, v37, v38, v0 + 592, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v18 = v17;
  *(v0 + 832) = v17;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v19 = *(v0 + 824);
  *(v0 + 656) = v8;
  *(v0 + 664) = &off_28351D968;
  *(v0 + 632) = v18;
  v20 = swift_task_alloc();
  *(v0 + 840) = v20;
  v20[2] = v18;
  v20[3] = &unk_221BD28F8;
  v20[4] = v19;
  v21 = *(MEMORY[0x277D85A70] + 4);

  v22 = swift_task_alloc();
  *(v0 + 848) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  *v22 = v0;
  v22[1] = sub_2219C2FDC;
  v23 = OUTLINED_FUNCTION_106(*(v0 + 672));

  return MEMORY[0x282200908](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_2219C2FDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 848);
  v7 = *(v5 + 840);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 856) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 632, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219C3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_224();
  v12 = v11[95];
  v13 = v11[94];
  v14 = v11[93];
  v15 = v11[92];

  sub_2219EC58C(v13, &qword_27CFB7F58);
  sub_2219EC58C(v10, &qword_27CFB7F60);
  sub_2219EC58C((v11 + 69), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2219C3200()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_224();
  v2 = *(v1 + 752);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v3, v4);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v5, v6);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C32D4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];

  OUTLINED_FUNCTION_25();
  v7 = v0[107];

  return v6();
}

uint64_t sub_2219C3368(char a1, uint64_t a2, const void *a3)
{
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();

  v13 = 0x696D726F66726550;
  v14 = 0xEB0000000020676ELL;
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8();
  __dst[0] = swift_allocObject();
  sub_2219EB748(a2, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  v11[0] = a1 & 1;
  v6 = sub_2219B5AFC(v11);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v6, v8);

  MEMORY[0x223DA31F0](0x736E6F6974706F20, 0xEA0000000000203ALL);
  memcpy(__dst, a3, 0xC4uLL);
  sub_2219EB864(a3, v11);
  v9 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v9);

  return v13;
}

uint64_t sub_2219C34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[101] = a7;
  v7[100] = a6;
  v7[99] = a5;
  v7[98] = a4;
  v7[97] = a3;
  v7[96] = a2;
  v7[95] = a1;
  return MEMORY[0x2822009F8](sub_2219C34F8, 0, 0);
}

uint64_t sub_2219C34F8()
{
  OUTLINED_FUNCTION_104();
  v46 = v0;
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1();
  }

  v2 = type metadata accessor for Entitlement.Validator();
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_223();
    if (v5)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_89(&qword_27CFDED78);
    *(v0 + 664) = &type metadata for FeatureFlags.Flag;
    *(v0 + 672) = sub_2219EB100();
    OUTLINED_FUNCTION_49();
    v6 = swift_allocObject();
    *(v0 + 640) = v6;
    OUTLINED_FUNCTION_52_0(v6);
    v7 = sub_221BCC6F8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 640));
    if (v7)
    {
LABEL_8:
      swift_willThrow();
      goto LABEL_23;
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v8 = *(v0 + 776);
    v9 = sub_221BCCD88();
    __swift_project_value_buffer(v9, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v10 = v4;
    v11 = sub_221BCCD68();
    v12 = sub_221BCDA78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 776);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v14 = OUTLINED_FUNCTION_138();
      v45 = v14;
      *v8 = 136315394;
      v15 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v17 = sub_2219A6360(v15, v16, &v45);
      OUTLINED_FUNCTION_132(v17);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v18;
      *v1 = v18;
      OUTLINED_FUNCTION_131(&dword_221989000, v19, v20, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  sub_2219A1B08(*(v0 + 784), v0 + 680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 792);
    v22 = *(v0 + 768);
    v23 = *(v0 + 528);
    v24 = *(v0 + 536);
    *(v0 + 816) = v24;
    v25 = *(v0 + 544);
    *(v0 + 824) = v25;
    v26 = *(v0 + 568);
    *(v0 + 840) = v26;
    v27 = *(v0 + 576);
    *(v0 + 848) = v27;
    *(v0 + 584) = v23;
    *(v0 + 592) = v24;
    *(v0 + 600) = v25;
    v28 = *(v0 + 552);
    *(v0 + 832) = v28;
    *(v0 + 608) = v28;
    *(v0 + 624) = v26;
    *(v0 + 632) = v27;
    memcpy((v0 + 16), v21, 0xC4uLL);
    *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
    *(v0 + 752) = &off_28351D968;
    *(v0 + 720) = v22;

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 856) = v29;
    *v29 = v30;
    v29[1] = sub_2219C39A4;
    v31 = *(v0 + 808);
    v32 = *(v0 + 800);
    v33 = *(v0 + 776);
    v34 = *(v0 + 760);
    OUTLINED_FUNCTION_206();

    return sub_2219C3DA0();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_2219A1218();
      OUTLINED_FUNCTION_17_2();
      *v42 = 8;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      *(v42 + 32) = 5;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0((v0 + 680));
LABEL_23:
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_206();

      __asm { BRAA            X1, X16 }
    }

    memcpy((v0 + 320), (v0 + 216), 0x68uLL);
    memcpy((v0 + 424), (v0 + 216), 0x68uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 872) = v37;
    *v37 = v38;
    v37[1] = sub_2219C3B44;
    v39 = *(v0 + 776);
    v40 = *(v0 + 760);
    OUTLINED_FUNCTION_206();

    return sub_2219C4E54();
  }
}

uint64_t sub_2219C39A4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 856);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[108] = v0;

  if (!v0)
  {
    v9 = v3[106];
    v10 = v3[105];
    v11 = v3[104];
    v12 = v3[103];
    v13 = v3[102];
    __swift_destroy_boxed_opaque_existential_0(v3 + 90);

    sub_2219982C4(v12, v11);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2219C3AEC()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219C3B44()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 872);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 880) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219C3C3C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219C3C9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  __swift_destroy_boxed_opaque_existential_0(v0 + 90);

  v6 = OUTLINED_FUNCTION_118();
  sub_2219982C4(v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 85);
  v8 = v0[108];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2219C3D3C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 680));
  v1 = *(v0 + 880);
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219C3DA0()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  v18 = *MEMORY[0x277D85DE8];
  *(v1 + 568) = v0;
  *(v1 + 560) = v6;
  *(v1 + 552) = v7;
  *(v1 + 544) = v8;
  *(v1 + 536) = v9;
  v10 = sub_221BCCCD8();
  *(v1 + 576) = v10;
  v11 = *(v10 - 8);
  *(v1 + 584) = v11;
  v12 = *(v11 + 64) + 15;
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = *v5;
  *(v1 + 648) = *(v5 + 32);
  *(v1 + 656) = *(v5 + 40);
  memcpy((v1 + 240), v3, 0xC4uLL);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2219C3F00()
{
  v96 = v0;
  __dst[25] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  *(v0 + 672) = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  OUTLINED_FUNCTION_82();
  v5 = OUTLINED_FUNCTION_4();
  v6(v5);
  v7 = sub_221BCCCF8();
  v8 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v9 = *(v0 + 624);
    OUTLINED_FUNCTION_117();
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v7, v8, v11, "performIntent:loadActionMetadata", "", v10, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v12 = *(v0 + 624);
  v13 = *(v0 + 584);
  v14 = *(v0 + 576);

  v15 = *(v13 + 8);
  *(v0 + 680) = v15;
  v16 = OUTLINED_FUNCTION_16();
  v15(v16);
  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98();
  }

  v17 = sub_221BB8738(qword_27CFDED38, *(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656));
  *(v0 + 688) = v17;
  __src = (v0 + 240);
  v93 = v17;
  v21 = *(v0 + 664);
  v22 = *(v21 + 16);
  if (v22)
  {
    __dst[0] = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v23 = (v21 + 48);
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v26 = *v23;
      v23 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v27 = v26;

      v28 = OUTLINED_FUNCTION_91();
      sub_2219A62D8(v28, v29, v26);
      sub_221BCDEF8();
      v30 = *(__dst[0] + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v22;
    }

    while (v22);
  }

  v31 = *(v0 + 616);
  v32 = v3[4];
  __swift_project_boxed_opaque_existential_0(*(v0 + 560), v3[3]);
  OUTLINED_FUNCTION_82();
  v33 = OUTLINED_FUNCTION_120();
  v34(v33);
  v35 = sub_221BCCCF8();
  v36 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v37 = *(v0 + 616);
    OUTLINED_FUNCTION_117();
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v35, v36, v39, "performIntent:createPolicy", "", v38, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v40 = *(v0 + 664);
  v41 = *(v0 + 616);
  v88 = *(v0 + 608);
  v42 = *(v0 + 584);
  v43 = *(v0 + 576);
  v44 = *(v0 + 560);

  v45 = OUTLINED_FUNCTION_16();
  v15(v45);
  v46 = objc_opt_self();
  memcpy(__dst, __src, 0xC4uLL);
  v47 = sub_2219B23F4(v40, v93);
  v48 = [v46 policyWithActionMetadata:v93 signals:v47];
  *(v0 + 696) = v48;

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  sub_221BCD658();
  OUTLINED_FUNCTION_97();

  v89 = [v48 actionWithParameters_];
  *(v0 + 704) = v89;

  v49 = v3[3];
  v50 = v3[4];
  __swift_project_boxed_opaque_existential_0(v44, v49);
  v51 = *(v50 + 40);
  v52 = OUTLINED_FUNCTION_75();
  v53(v52, v50);
  v54 = sub_221BCCCF8();
  v55 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v56 = *(v0 + 608);
    OUTLINED_FUNCTION_117();
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v54, v55, v58, "performIntent:createConnection", "", v57, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v59 = *(v0 + 608);
  v60 = *(v0 + 584);
  v61 = *(v0 + 576);
  v62 = *(v0 + 568);

  (v15)(v59, v61);
  v63 = sub_2219C52F0();
  *(v0 + 520) = 0;
  v64 = [v48 connectionWithUserIdentity:v63 error:v0 + 520];
  *(v0 + 712) = v64;

  v65 = *(v0 + 520);
  if (v64)
  {
    v66 = *(v0 + 568);
    v91 = *(v0 + 560);
    memcpy(__dst, __src, 0xC4uLL);
    v67 = *(v66 + 16);
    v68 = *(v66 + 24);
    v69 = *(v66 + 64);
    v90 = *(v0 + 544);
    __swift_project_boxed_opaque_existential_0((v66 + 32), *(v66 + 56));
    v70 = v65;
    v71 = OUTLINED_FUNCTION_3_4();
    v73 = sub_2219AD2F4(v71, v72);
    v94 = *(v66 + 72);
    v74 = *(v66 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_source);
    v75 = OUTLINED_FUNCTION_72();
    v79 = sub_2219B2088(v75, v76, v73, v77, v78);
    *(v0 + 720) = v79;

    v80 = swift_task_alloc();
    *(v0 + 728) = v80;
    *(v80 + 16) = v66;
    *(v80 + 24) = v93;
    *(v80 + 32) = v90;
    *(v80 + 48) = v64;
    *(v80 + 56) = __src;
    *(v80 + 64) = v89;
    *(v80 + 72) = v79;
    *(v80 + 80) = v91;
    v81 = *(MEMORY[0x277D85A10] + 4);
    v82 = swift_task_alloc();
    *(v0 + 736) = v82;
    sub_2219A1D20(0, &qword_27CFB80A0, 0x277D23CA8);
    OUTLINED_FUNCTION_229();
    *v82 = v84;
    v82[1] = sub_2219C461C;
    v85 = *(v0 + 568);
    v86 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200830](v0 + 528, &unk_221BD2988, v80, sub_2219EBB28, v85, 0, 0, v83);
  }

  else
  {
    v87 = v65;
    OUTLINED_FUNCTION_107();
    sub_221BCC338();

    swift_willThrow();
    OUTLINED_FUNCTION_193();

    OUTLINED_FUNCTION_25();
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }
}

uint64_t sub_2219C461C()
{
  OUTLINED_FUNCTION_8_0();
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *(v2 + 736);
  *v4 = *v1;
  *(v3 + 744) = v0;

  v6 = *(v2 + 728);

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2219C476C()
{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = v0[84];
  v2 = v0[75];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[66];
  v0[94] = v5;
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_75();
  v9(v8, v6);
  v10 = sub_221BCCCF8();
  v11 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v12 = v0[75];
    OUTLINED_FUNCTION_117();
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v10, v11, v14, "performIntent:actionExecutor:completed", "", v13, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v15 = v0[85];
  v16 = v0[80];
  v17 = v0[79];
  v18 = v0[75];
  v19 = v0[73];
  v20 = v0[72];
  v21 = v0[71];

  v15(v18, v20);
  *&v36[0] = v17;
  *(&v36[0] + 1) = v16;
  v36[1] = xmmword_221BD04D0;

  _IntentValueConversionContext.init(origin:dispatcher:)(v36, v21, &off_283514488, (v0 + 55));
  v35 = [v5 output];
  v22 = v0[56];
  v23 = v0[57];
  v24 = v0[58];
  v0[61] = v0[55];
  v0[62] = v22;
  v0[63] = v23;
  v0[64] = v24;
  v25 = v21[8];
  __swift_project_boxed_opaque_existential_0(v21 + 4, v21[7]);
  v26 = *(v25 + 24);

  sub_221998178(v23, v24);
  v27 = OUTLINED_FUNCTION_120();
  v28 = v26(v27);
  v30 = v29;

  v31 = swift_task_alloc();
  v0[95] = v31;
  *v31 = v0;
  v31[1] = sub_2219C4A18;
  v32 = v0[71];
  v33 = *MEMORY[0x277D85DE8];

  return sub_2219B8730((v0 + 2), v35, v0 + 61, v28, v30, v32);
}

uint64_t sub_2219C4A18()
{
  OUTLINED_FUNCTION_1_5();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 760);
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2219C4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v59 = *MEMORY[0x277D85DE8];
  v21 = v20[84];
  v22 = v20[74];
  v23 = v20[71];
  v24 = v20[70];
  v25 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  OUTLINED_FUNCTION_82();
  v26 = OUTLINED_FUNCTION_4();
  v27(v26);
  v28 = sub_221BCCCF8();
  v29 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v30 = v20[74];
    OUTLINED_FUNCTION_117();
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v28, v29, v32, "performIntent:outputGenerated", "", v31, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v33 = v20[90];
  v34 = v20[89];
  v35 = v20[88];
  v52 = v20[87];
  v53 = v20[94];
  v36 = v20[85];
  v54 = v20[86];
  v55 = v20[78];
  v56 = v20[77];
  v57 = v20[76];
  v58 = v20[75];
  v37 = v20[74];
  v38 = v20[73];
  v39 = v20[72];
  v40 = v20[67];

  v36(v37, v39);
  sub_2219BAF0C((v20 + 2), (v40 + 5), &unk_27CFBB7A0, &qword_221BD2930);
  v40[3] = &type metadata for _IntentValueConversionContext;
  v40[4] = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v41 = swift_allocObject();
  *v40 = v41;
  sub_22199C218((v20 + 55), v41 + 16);

  sub_2219EC58C((v20 + 2), &unk_27CFBB7A0);

  OUTLINED_FUNCTION_25();
  v42 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_109();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, v54, v55, v56, v57, v58, v59, a18, a19, a20);
}

uint64_t sub_2219C4D80()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);

  v5 = *(v0 + 744);
  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_25();
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_253();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_2219C4E54()
{
  OUTLINED_FUNCTION_1_5();
  v1[23] = v2;
  v1[24] = v0;
  v4 = v3[1];
  v1[25] = *v3;
  v1[26] = v4;
  memcpy(v1 + 12, v3 + 2, 0x58uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2219C4EC4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[26];
  v0[10] = v0[25];
  v0[11] = v1;
  v2 = sub_2219B5FDC();
  v3 = [objc_allocWithZone(MEMORY[0x277D23CC8]) initWithAction_];
  v0[27] = v3;

  v0[2] = v0;
  v0[3] = sub_2219C500C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2219C5280;
  v0[13] = &block_descriptor_123;
  v0[14] = v4;
  [v3 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2219C500C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219C5108()
{
  OUTLINED_FUNCTION_104();
  v10 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  *(v5 + 145) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *&v9[0] = v3;
  *(&v9[0] + 1) = v1;
  v9[1] = xmmword_221BD04D0;
  *(v5 + 24) = &type metadata for _IntentValueConversionContext;
  *(v5 + 32) = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v6 = swift_allocObject();
  *v5 = v6;

  _IntentValueConversionContext.init(origin:dispatcher:)(v9, v4, &off_283514488, v6 + 16);

  OUTLINED_FUNCTION_4_3();

  return v7();
}

uint64_t sub_2219C5218()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  swift_willThrow();

  OUTLINED_FUNCTION_25();
  v4 = *(v0 + 224);

  return v3();
}

uint64_t sub_2219C5280(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2219B1AB0(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

id sub_2219C52F0()
{
  v1 = (v0 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);
  v2 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[6];
  sub_2219A1D20(0, &qword_27CFB80B0, 0x277D23CD0);
  v4 = *v1;

  return sub_2219CA5F0(v3, v2, v4);
}

uint64_t sub_2219C5370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2219C53A8, 0, 0);
}

uint64_t sub_2219C53A8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  sub_2219A1D20(0, &qword_27CFB80A0, 0x277D23CA8);
  OUTLINED_FUNCTION_229();
  *v7 = v8;
  v7[1] = sub_2219C54BC;
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2219C54BC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 96);

    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_2219C55D8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 112);

  return v2();
}

void sub_2219C5634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v67 = a8;
  v63 = a7;
  v64 = a5;
  v68 = a10;
  v65 = a9;
  v66 = sub_221BCC558();
  v61 = *(v66 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_221BCCCD8();
  v69 = *(v17 - 1);
  v70 = v17;
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v60 - v26;
  (*(v28 + 16))(&v60 - v26, a1);
  v29 = [a6 bundleIdentifier];
  v30 = sub_221BCD388();
  v32 = v31;

  sub_2219A1B08(a2 + 32, v73);
  v72 = *(a2 + 73);
  memcpy(__dst, (v63 + 96), sizeof(__dst));
  v33 = objc_allocWithZone(_s14descr283510D89C29PerformActionExecutorDelegateCMa());

  v34 = a3;
  swift_unknownObjectRetain();
  sub_2219EDEF8(a2, v34, a4, v64, v27, v30, v32, v73, &v72, __dst, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, *__dst);
  v36 = v35;
  v37 = a6;
  v38 = v62;
  v39 = [v37 executorForAction:v67 options:v65 delegate:v36];
  v40 = [v39 identifier];
  sub_221BCC528();

  v41 = v66;
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v66);
  sub_2219EDDBC(v23);
  v42 = v68[3];
  v43 = v68[4];
  __swift_project_boxed_opaque_existential_0(v68, v42);
  (*(v43 + 40))(v42, v43);
  v44 = sub_221BCCCF8();
  v45 = sub_221BCDBD8();
  if (sub_221BCDC78())
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v44, v45, v47, "performIntent:actionExecutor:start", "", v46, 2u);
    MEMORY[0x223DA4C00](v46, -1, -1);
  }

  (*(v69 + 8))(v38, v70);
  [v39 perform];
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v48 = sub_221BCCD88();
  __swift_project_value_buffer(v48, qword_280FA9008);

  v49 = v39;
  v50 = sub_221BCCD68();
  v51 = sub_221BCDA98();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *__dst = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_2219A6360(*(a2 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(a2 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), __dst);
    *(v52 + 12) = 2080;
    v54 = [v49 identifier];
    v55 = v60;
    sub_221BCC528();

    sub_2219EBDBC(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v56 = sub_221BCE168();
    v58 = v57;
    (*(v61 + 8))(v55, v41);
    v59 = sub_2219A6360(v56, v58, __dst);

    *(v52 + 14) = v59;
    _os_log_impl(&dword_221989000, v50, v51, "[%s] Started executor with identifier: %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v53, -1, -1);
    MEMORY[0x223DA4C00](v52, -1, -1);
  }

  else
  {
  }
}

void sub_2219C5CCC(uint64_t a1)
{
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);

  oslog = sub_221BCCD68();
  v3 = sub_221BCDA98();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2219A6360(*(a1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(a1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &v7);
    _os_log_impl(&dword_221989000, oslog, v3, "[%s] Received cancellation event", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DA4C00](v5, -1, -1);
    MEMORY[0x223DA4C00](v4, -1, -1);
  }
}

void *sub_2219C5E20(void *a1, void *a2)
{
  v3 = a2[8];
  __swift_project_boxed_opaque_existential_0(a2 + 4, a2[7]);
  OUTLINED_FUNCTION_60_0();
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = v5(v4);
  v8 = v7;
  if (a1)
  {
    v9 = v6;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_221BB8ED4(a1, sub_2219EC5F4, v10);
    a1 = v11;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_2219C5ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 168) = *a3;
  *(v4 + 136) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219C5EFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(v0 + 56) = *v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v5;
  *(v0 + 80) = v4;
  *(v0 + 88) = v1;
  *(v0 + 96) = *(v0 + 136);

  v6 = OUTLINED_FUNCTION_70();
  sub_221998178(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 152) = v8;
  *v8 = v9;
  v8[1] = sub_2219C5FD0;
  v10 = *(v0 + 128);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_253();

  return sub_2219C62A4(v11, v12, v13, v14);
}

uint64_t sub_2219C5FD0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[20] = v0;

  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[10];

  v12 = OUTLINED_FUNCTION_70();
  sub_2219982C4(v12, v13);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2219C60F0()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v12 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
  (*(v4 + 24))(v3, v4);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F90, &qword_221BD2820);
  OUTLINED_FUNCTION_70();
  v5 = sub_221BCE008();

  v6 = swift_task_alloc();
  *(v6 + 16) = v12;
  v7 = sub_2219F7AAC(sub_2219EB72C, v6, v5);

  v8 = OUTLINED_FUNCTION_70();
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v2[4] = sub_2219EB964(&qword_27CFB8038, &unk_27CFB8030);
  *v2 = v7;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v10();
}

uint64_t sub_2219C6280()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 160);
  return v2();
}

uint64_t sub_2219C62A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 376) = a3;
  *(v5 + 384) = v6;
  *(v5 + 368) = a1;
  *(v5 + 392) = *v6;
  v9 = sub_221BCCD88();
  *(v5 + 400) = v9;
  v10 = *(v9 - 8);
  *(v5 + 408) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v5 + 440) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a2;
  v16 = a2[1];
  *(v5 + 448) = v14;
  *(v5 + 456) = v15;
  *(v5 + 464) = v16;
  v17 = *(a2 + 1);
  *(v5 + 146) = *a4;
  v18 = *(a4 + 8);
  *(v5 + 472) = v17;
  *(v5 + 488) = v18;

  return MEMORY[0x2822009F8](sub_2219C6448, 0, 0);
}

uint64_t sub_2219C6448()
{
  v30 = *(*(v0 + 384) + 73);
  *(v0 + 147) = v30;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  *(v0 + 504) = __swift_project_value_buffer(*(v0 + 400), qword_280FA9008);
  if (qword_27CFB6CA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 146);
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v27 = v6;
  v28 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 384);
  v31 = *(v0 + 432);
  v32 = *(v0 + 392);
  v9 = *(v0 + 376);
  v29 = v9;
  memcpy((v0 + 152), &qword_27CFDD0A8, 0x59uLL);
  v10 = v8 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
  *(v0 + 512) = *(v8 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *(v0 + 520) = *(v10 + 8);
  *(v0 + 528) = *(v8 + 16);
  *(v0 + 536) = *(v8 + 24);
  sub_2219AC930(v9, v0 + 16);
  v11 = swift_allocObject();
  *(v0 + 544) = v11;
  *(v11 + 16) = v30;
  memcpy((v11 + 24), (v0 + 16), 0x82uLL);
  *(v11 + 160) = v6;
  *(v11 + 168) = v5;
  *(v11 + 176) = v4;
  *(v11 + 184) = v3;
  *(v11 + 192) = v2;
  *(v11 + 200) = v1;
  *(v11 + 208) = v28;
  *(v0 + 280) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  v12 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v13 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1(v13);
  (*(v14 + 16))(v7, v8 + v12, v13);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 552) = v22;
  *(v22 + 16) = v8;
  *(v22 + 24) = v2;
  *(v22 + 32) = v1;
  *(v22 + 40) = v28;
  *(v22 + 48) = v27;
  *(v22 + 56) = v5;
  *(v22 + 64) = v4;
  *(v22 + 72) = v3;
  *(v22 + 80) = v29;
  *(v22 + 88) = v32;

  sub_221998178(v4, v3);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2219C66CC()
{
  v38 = *(v0 + 544);
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v39 = *(v0 + 528);
  v40 = *(v0 + 512);
  v3 = *(v0 + 147);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 504), *(v0 + 400));
  sub_2219BAF0C(v0 + 248, v0 + 288, qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v5, v4, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v6, v7, &qword_27CFB7F58, &unk_221BD27E0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB0, &qword_221BD2858);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_141(v11, v12, v0 + 152, v13, sub_2219EB3DC, v14, v15, v16, 0, 0, v32, v33, v34, v35, v36, v7, sub_2219EC604, sub_2219EC608, v37, v0 + 288, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v18 = v17;
  *(v0 + 560) = v17;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v19 = *(v0 + 552);
  *(v0 + 352) = v8;
  *(v0 + 360) = &off_28351D968;
  *(v0 + 328) = v18;
  v20 = swift_task_alloc();
  *(v0 + 568) = v20;
  v20[2] = v18;
  v20[3] = &unk_221BD2850;
  v20[4] = v19;
  v21 = *(MEMORY[0x277D85A70] + 4);

  v22 = swift_task_alloc();
  *(v0 + 576) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB8, &qword_221BD2870);
  *v22 = v0;
  v22[1] = sub_2219C697C;
  v23 = OUTLINED_FUNCTION_106(*(v0 + 368));

  return MEMORY[0x282200908](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_2219C697C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *(v5 + 568);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 584) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 328, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219C6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[70];
  v12 = v10[69];
  v13 = v10[68];
  v15 = v10[55];
  v14 = v10[56];
  v17 = v10[53];
  v16 = v10[54];
  v18 = v10[52];

  sub_2219EC58C(v16, &qword_27CFB7F58);
  sub_2219EC58C(v14, &qword_27CFB7F60);
  sub_2219EC58C((v10 + 31), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_2219C6BA4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[56];
  v5 = v0[54];

  sub_2219EC58C(v5, &qword_27CFB7F58);
  sub_2219EC58C(v4, &qword_27CFB7F60);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v6, v7);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v8, v9);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219C6C84()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];

  OUTLINED_FUNCTION_25();
  v7 = v0[73];

  return v6();
}

void sub_2219C6D10(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];

  sub_221998178(v7, v8);

  sub_22199BCCC();
}

uint64_t sub_2219C6DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 128) = *a3;
  *(v4 + 96) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219C6DFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(v0 + 16) = *v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v1;
  *(v0 + 56) = *(v0 + 96);

  v6 = OUTLINED_FUNCTION_70();
  sub_221998178(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 112) = v8;
  *v8 = v9;
  v8[1] = sub_2219C6ED0;
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_253();

  return sub_2219C62A4(v12, v13, v14, v15);
}

uint64_t sub_2219C6ED0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];

  sub_2219982C4(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_99();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_166();

    return v12();
  }
}

uint64_t sub_2219C7044()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 120);
  return v2();
}

uint64_t sub_2219C7068(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, unint64_t a8, uint64_t a9)
{
  v28 = 0xE000000000000000;
  sub_221BCDE68();

  v32 = 0x696D726F66726550;
  v33 = 0xEB0000000020676ELL;
  v30 = &type metadata for QuerySpecification;
  v31 = sub_2219EB6D8();
  v27 = swift_allocObject();
  sub_2219AC930(a2, v27 + 16);
  __swift_project_boxed_opaque_existential_0(&v27, &type metadata for QuerySpecification);
  LOBYTE(v25) = a1 & 1;
  v17 = sub_221A22514(&v25);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  MEMORY[0x223DA31F0](v17, v19);

  MEMORY[0x223DA31F0](0x206E69202CLL, 0xE500000000000000);
  v27 = a3;
  v28 = a4;
  if (a6 == 2)
  {
  }

  else
  {
    v25 = 32;
    v26 = 0xE100000000000000;

    sub_221998178(a5, a6);
    v20 = sub_2219988C4(a5, a6);
    MEMORY[0x223DA31F0](v20);

    MEMORY[0x223DA31F0](v25, v26);

    a3 = v27;
    a4 = v28;
  }

  MEMORY[0x223DA31F0](a3, a4);

  MEMORY[0x223DA31F0](0x3A736E6F6974706FLL, 0xE900000000000020);
  LOBYTE(v27) = a7 & 1;
  v28 = a8;
  v29 = a9;

  Request = QueryRequestOptions.description.getter();
  v23 = v22;

  MEMORY[0x223DA31F0](Request, v23);

  return v32;
}

uint64_t sub_2219C7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 568) = v11;
  *(v8 + 552) = v10;
  *(v8 + 544) = a8;
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 504) = a1;
  *(v8 + 512) = a3;
  return MEMORY[0x2822009F8](sub_2219C72E0, 0, 0);
}

uint64_t sub_2219C72E0()
{
  OUTLINED_FUNCTION_104();
  v37 = v0;
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1();
  }

  v2 = type metadata accessor for Entitlement.Validator();
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_223();
    if (v5)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_89(&qword_27CFDED78);
    *(v0 + 392) = &type metadata for FeatureFlags.Flag;
    *(v0 + 400) = sub_2219EB100();
    OUTLINED_FUNCTION_49();
    v6 = swift_allocObject();
    *(v0 + 368) = v6;
    OUTLINED_FUNCTION_52_0(v6);
    v7 = sub_221BCC6F8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 368));
    if (v7)
    {
LABEL_8:
      swift_willThrow();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_206();

      __asm { BRAA            X1, X16 }
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v10 = *(v0 + 512);
    v11 = sub_221BCCD88();
    __swift_project_value_buffer(v11, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v12 = v4;
    v13 = sub_221BCCD68();
    v14 = sub_221BCDA78();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 512);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v16 = OUTLINED_FUNCTION_138();
      v36 = v16;
      *v10 = 136315394;
      v17 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v19 = sub_2219A6360(v17, v18, &v36);
      OUTLINED_FUNCTION_132(v19);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v20;
      *v1 = v20;
      OUTLINED_FUNCTION_131(&dword_221989000, v21, v22, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  v23 = *(v0 + 568);
  v24 = *(v0 + 560);
  v25 = *(v0 + 552);
  v26 = *(v0 + 544);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v30 = *(v0 + 512);
  *(v0 + 616) = 0;
  *(v0 + 408) = v27;
  *(v0 + 416) = v26;
  *(v0 + 424) = v25;
  *(v0 + 432) = v24;
  sub_2219AC930(v23, v0 + 232);
  type metadata accessor for LocalQueryExecutor();
  *(v0 + 576) = swift_initStackObject();

  sub_221998178(v25, v24);
  *(v0 + 584) = sub_2219AA560((v0 + 408), (v0 + 232));
  *(v0 + 472) = *(v0 + 616);
  *(v0 + 480) = v29;
  *(v0 + 488) = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 592) = v31;
  *v31 = v32;
  v31[1] = sub_2219C7644;
  OUTLINED_FUNCTION_206();

  return sub_2219AA698(v33);
}

uint64_t sub_2219C7644()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 592);
  *v4 = *v1;
  v3[75] = v7;
  v3[76] = v0;

  v8 = v3[73];
  v9 = v3[61];

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219C7770()
{
  OUTLINED_FUNCTION_67();
  v1 = [*(v0 + 600) value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 600);
  if (v2)
  {
    v4 = *(v0 + 496);
    v5 = *(v0 + 504);
    OUTLINED_FUNCTION_27_0();
    v9 = sub_2219EDBE4(v6, v7, v8);

    v10 = OUTLINED_FUNCTION_16();
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_182();
    v5[4] = sub_2219EB964(v12, v13);
    *v5 = v9;
  }

  else
  {
    sub_2219ACB94();
    OUTLINED_FUNCTION_17_2();
    *v15 = 0xD000000000000026;
    *(v15 + 8) = 0x8000000221BECC90;
    *(v15 + 16) = 3;
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2219C7900()
{
  v1 = *(v0 + 608);
  OUTLINED_FUNCTION_25();
  return v2();
}

uint64_t sub_2219C7924()
{
  OUTLINED_FUNCTION_1_5();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[30] = v5;
  v1[31] = v6;
  v1[36] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  v1[38] = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2219C7A08()
{
  v1 = *(*(v0 + 280) + 73);
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);
  if (qword_27CFB6CB0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v27 = *(v0 + 296);
  v28 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  memcpy((v0 + 16), &qword_27CFDD108, 0x59uLL);
  v31 = *(v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8);
  v32 = *(v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  v29 = *(v4 + 24);
  v30 = *(v4 + 16);
  sub_2219EAFE0(v8, v0 + 112);
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v1;
  memcpy((v9 + 40), (v0 + 112), 0x58uLL);
  *(v9 + 128) = v7;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 105) = v1;
  LOBYTE(v5) = v1;
  v10 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v11 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1(v11);
  (*(v12 + 16))(v3, v4 + v10, v11);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  *(v0 + 320) = v20;
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  *(v20 + 32) = v8;
  *(v20 + 40) = v5;
  *(v20 + 48) = v28;
  v21 = swift_task_alloc();
  *(v0 + 328) = v21;
  sub_221BCDC98();
  OUTLINED_FUNCTION_229();
  *v21 = v22;
  v21[1] = sub_2219C7CCC;
  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 240);
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_2219C7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = v15[41];
  v17 = v15[40];
  v18 = v15[39];
  v19 = v15[38];
  v20 = v15[37];
  v21 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v22 = v21;
  v13[42] = v10;

  sub_2219EC58C(v20, &qword_27CFB7F58);
  sub_2219EC58C(v19, &qword_27CFB7F60);
  sub_2219EC58C((v13 + 25), qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {
    v28 = v13[37];
    v27 = v13[38];

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_2219C7EA8()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[37];
  v1 = v0[38];

  OUTLINED_FUNCTION_25();
  v4 = v0[42];

  return v3();
}

uint64_t sub_2219C7F0C(char a1, uint64_t a2)
{
  v10[1] = 0xE000000000000000;
  sub_221BCDE68();

  v11 = 0x676E696863746546;
  v12 = 0xE900000000000020;
  v10[3] = &type metadata for DeferredEntityPropertySpecification;
  v10[4] = sub_2219EB320();
  v10[0] = swift_allocObject();
  sub_2219EAFE0(a2, v10[0] + 16);
  __swift_project_boxed_opaque_existential_0(v10, &type metadata for DeferredEntityPropertySpecification);
  v9 = a1 & 1;
  v4 = sub_2219A7A50(&v9);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(v10);
  MEMORY[0x223DA31F0](v4, v6);

  MEMORY[0x223DA31F0](0x203A736120, 0xE500000000000000);
  v7 = sub_221BCE478();
  MEMORY[0x223DA31F0](v7);

  return v11;
}

uint64_t sub_2219C8038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v7 + 504) = a5;
  *(v7 + 424) = a4;
  *(v7 + 432) = a7;
  *(v7 + 408) = a1;
  *(v7 + 416) = a3;
  *(v7 + 440) = *a2;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2219C80F8, 0, 0);
}

uint64_t sub_2219C80F8()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1();
  }

  v2 = type metadata accessor for Entitlement.Validator();
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_223();
    if (v5)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_89(&qword_27CFDED78);
    v0[42] = &type metadata for FeatureFlags.Flag;
    v0[43] = sub_2219EB100();
    OUTLINED_FUNCTION_49();
    v6 = swift_allocObject();
    v0[39] = v6;
    OUTLINED_FUNCTION_52_0(v6);
    v7 = sub_221BCC6F8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 39);
    if (v7)
    {
LABEL_8:
      swift_willThrow();
LABEL_15:
      OUTLINED_FUNCTION_25();
      v30 = *MEMORY[0x277D85DE8];

      return v29();
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v8 = v0[52];
    v9 = sub_221BCCD88();
    __swift_project_value_buffer(v9, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v10 = v4;
    v11 = sub_221BCCD68();
    v12 = sub_221BCDA78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[52];
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v14 = OUTLINED_FUNCTION_138();
      v49[0] = v14;
      *v8 = 136315394;
      v15 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v17 = sub_2219A6360(v15, v16, v49);
      OUTLINED_FUNCTION_132(v17);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v18;
      *v1 = v18;
      OUTLINED_FUNCTION_131(&dword_221989000, v19, v20, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  v21 = v0[53];
  type metadata accessor for CachedLinkMetadataProvider();
  v0[56] = swift_initStackObject();
  v0[57] = sub_221BB6B80();
  v22 = v21[7];
  v23 = v21[8];
  v24 = v21[6];
  __swift_project_boxed_opaque_existential_0(v21 + 2, v21[5]);
  v25 = *(v24 + 16);
  v26 = OUTLINED_FUNCTION_97();
  v27(v26, v24);
  OUTLINED_FUNCTION_4();
  v28 = sub_221BB7510();
  v0[58] = v28;

  v32 = [objc_opt_self() policyWithEntityMetadata_];
  v0[49] = 0;
  v33 = [v32 connectionWithError_];
  v0[59] = v33;

  v34 = v0[49];
  if (!v33)
  {
    v48 = v34;
    sub_221BCC338();

    swift_willThrow();

    goto LABEL_15;
  }

  v35 = v0[53];
  v36 = *v35;
  v37 = v35[1];
  v38 = v34;
  OUTLINED_FUNCTION_92();
  v39 = sub_221BCD358();
  v0[60] = v39;
  v40 = v21[6];
  __swift_project_boxed_opaque_existential_0(v21 + 2, v21[5]);
  v41 = OUTLINED_FUNCTION_92();
  v43 = sub_22199B82C(v41, v42);
  v44 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  v0[61] = v44;

  OUTLINED_FUNCTION_229();
  v0[2] = v45;
  v0[7] = v0 + 50;
  v0[3] = sub_2219C8628;
  v46 = swift_continuation_init();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F70, &qword_221BD8080);
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_2219C8C10;
  v0[28] = &block_descriptor_2;
  v0[29] = v46;
  [v33 fetchValueForPropertyWithIdentifier:v39 entity:v44 completionHandler:v0 + 25];
  v47 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2219C8628()
{
  OUTLINED_FUNCTION_1_5();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 496) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219C8754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_230();
  a25 = v27;
  a16 = *MEMORY[0x277D85DE8];
  v30 = *(v27 + 480);
  v31 = *(v27 + 400);

  if (v31)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_221BB8ED4(v31, sub_2219B1AA0, v32);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*(*(v27 + 440) + 80) + 16);
  if ((*(*(v27 + 432) + 24))(v34, v35))
  {
    v36 = *(v27 + 472);
    a11 = *(v27 + 464);
    a12 = *(v27 + 456);
    v37 = *(v27 + 424);
    v38 = *(v27 + 432);
    v40 = *(v27 + 408);
    v39 = *(v27 + 416);
    v41 = v37[8];
    v42 = v34;
    v43 = v37[9];
    v44 = v37[10];
    *&a13 = v37[7];
    *(&a13 + 1) = v41;
    a14 = v43;
    a15 = v44;

    sub_221998178(v43, v44);

    _IntentValueConversionContext.init(origin:dispatcher:)(&a13, v39, &off_283514488, v27 + 264);
    *(v27 + 376) = &type metadata for _IntentValueConversionContext;
    *(v27 + 384) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v45 = swift_allocObject();
    *(v27 + 352) = v45;
    sub_2219EB180(v27 + 264, v45 + 16);
    sub_221B8BC18(v31, v35, v38, v40);

    sub_22199C274(v27 + 264);
    __swift_destroy_boxed_opaque_existential_0((v27 + 352));
  }

  else
  {
    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v46 = *(v27 + 416);
    v47 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v47, qword_280FA9008);
    v48 = v31;

    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();

    if (os_log_type_enabled(v49, v50))
    {
      a12 = v34;
      v51 = *(v27 + 416);
      v52 = swift_slowAlloc();
      *&a13 = swift_slowAlloc();
      *v52 = 136315650;
      *(v52 + 4) = sub_2219A6360(*(v51 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(v51 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &a13);
      *(v52 + 12) = 2080;
      if (v31)
      {
        v53 = sub_2219C0E8C(v48, *(v27 + 504) & 1);
        v55 = v54;
      }

      else
      {
        v55 = 0xE300000000000000;
        v53 = 7104878;
      }

      a9 = *(v27 + 472);
      a10 = *(v27 + 464);
      a11 = *(v27 + 456);
      v59 = sub_2219A6360(v53, v55, &a13);

      *(v52 + 14) = v59;
      *(v52 + 22) = 2080;
      v60 = sub_221BCE478();
      v62 = sub_2219A6360(v60, v61, &a13);

      *(v52 + 24) = v62;
      _os_log_impl(&dword_221989000, v49, v50, "[%s] Cannot convert %s to %s", v52, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
      v57 = *(v27 + 464);
      v56 = *(v27 + 472);
      v58 = *(v27 + 456);
    }

    v63 = *(v27 + 408);
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v35);
  }

  OUTLINED_FUNCTION_25();
  v67 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_109();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17, a18, a19);
}

uint64_t sub_2219C8B50()
{
  OUTLINED_FUNCTION_67();
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[61];
  v2 = v0[62];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[57];
  v6 = v0[58];
  swift_willThrow();

  v7 = v0[62];
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2219C8C10(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_2219B1AB0(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_22198B620(v5, a2);
  }
}

uint64_t sub_2219C8C98()
{
  OUTLINED_FUNCTION_1_5();
  v1[31] = v20;
  v1[32] = v0;
  v1[29] = v2;
  v1[30] = v3;
  v1[27] = v4;
  v1[28] = v5;
  v1[25] = v6;
  v1[26] = v7;
  v1[24] = v8;
  v1[33] = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  v1[34] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2219C8D8C()
{
  v1 = *(*(v0 + 256) + 73);
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);
  if (qword_27CFB6CB8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);
  v31 = *(v0 + 240);
  v32 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v28 = v5;
  v9 = *(v0 + 200);
  memcpy((v0 + 16), &qword_27CFDD168, 0x59uLL);
  v35 = *(v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8);
  v36 = *(v4 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  v33 = *(v4 + 24);
  v34 = *(v4 + 16);
  sub_2219EB748(v8, v0 + 112);
  v10 = swift_allocObject();
  v11 = *(v0 + 128);
  *(v10 + 24) = *(v0 + 112);
  *(v0 + 288) = v10;
  *(v10 + 16) = v1;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(v0 + 144);
  *(v10 + 64) = v9;
  *(v10 + 72) = v7;
  *(v10 + 80) = v5;
  *(v10 + 88) = v6;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 105) = v1;
  v12 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v13 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1(v13);
  (*(v14 + 16))(v3, v4 + v12, v13);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  v22[2] = v4;
  v22[3] = v8;
  v22[4] = v9;
  v22[5] = v7;
  v22[6] = v28;
  v22[7] = v6;
  v22[8] = v30;

  v23 = swift_task_alloc();
  *(v0 + 304) = v23;
  type metadata accessor for AppIntentFetchOptionsResult();
  *v23 = v0;
  v23[1] = sub_2219C907C;
  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  v26 = *(v0 + 192);
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_2219C907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = v15[38];
  v17 = v15[37];
  v18 = v15[36];
  v19 = v15[35];
  v20 = v15[34];
  v21 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v22 = v21;
  v13[39] = v10;

  sub_2219EC58C(v20, &unk_27CFB7F58);
  sub_2219EC58C(v19, &unk_27CFB7F60);
  sub_2219EC58C((v13 + 19), &unk_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {
    v28 = v13[34];
    v27 = v13[35];

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_2219C9258()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[34];
  v1 = v0[35];

  OUTLINED_FUNCTION_25();
  v4 = v0[39];

  return v3();
}

uint64_t sub_2219C92BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = 0xE000000000000000;
  sub_221BCDE68();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BECE30);
  v19[3] = &type metadata for AppIntentSpecification;
  v19[4] = sub_2219EB9A8();
  v19[0] = swift_allocObject();
  sub_2219EB748(a2, v19[0] + 16);
  __swift_project_boxed_opaque_existential_0(v19, &type metadata for AppIntentSpecification);
  a1 &= 1u;
  v18 = a1;
  v11 = sub_2219B5AFC(&v18);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(v19);
  MEMORY[0x223DA31F0](v11, v13);

  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BECE50);
  v14 = sub_2219C0D58(a3, a4, a1);
  MEMORY[0x223DA31F0](v14);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECE70);
  if (a6)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (a6)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v15, v16);

  return v20;
}

uint64_t sub_2219C946C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[46] = a7;
  v8[47] = a8;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[41] = a1;
  v8[48] = *a2;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2219C9534, 0, 0);
}

uint64_t sub_2219C9534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_170();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_230();
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  if (qword_27CFB6C98 != -1)
  {
LABEL_47:
    OUTLINED_FUNCTION_12_1();
  }

  v31 = type metadata accessor for Entitlement.Validator();
  OUTLINED_FUNCTION_178(v31, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v32)
  {
    v33 = v32;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_223();
    if (v34)
    {
      goto LABEL_7;
    }

    v35 = byte_27CFDEDA0;
    v37 = qword_27CFDED90;
    v36 = unk_27CFDED98;
    v38 = byte_27CFDED88;
    v40 = qword_27CFDED78;
    v39 = unk_27CFDED80;
    v28[27] = &type metadata for FeatureFlags.Flag;
    v28[28] = sub_2219EB100();
    OUTLINED_FUNCTION_49();
    v41 = swift_allocObject();
    v28[24] = v41;
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;
    *(v41 + 32) = v38;
    *(v41 + 40) = v37;
    *(v41 + 48) = v36;
    *(v41 + 56) = v35;
    *(v41 + 57) = 0;
    v42 = sub_221BCC6F8();
    __swift_destroy_boxed_opaque_existential_0(v28 + 24);
    if (v42)
    {
LABEL_7:
      swift_willThrow();
LABEL_38:
      OUTLINED_FUNCTION_25();
      v120 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_109();

      return v122(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v43 = v28[42];
    v44 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v44, qword_280FA9008);

    v45 = v33;
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA78();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v28[42];
      v49 = OUTLINED_FUNCTION_103();
      swift_slowAlloc();
      v50 = OUTLINED_FUNCTION_138();
      a13 = v50;
      *v49 = 136315394;
      v51 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      *(v49 + 4) = sub_2219A6360(v51, v52, &a13);
      *(v49 + 12) = 2112;
      v53 = v33;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v54;
      *v39 = v54;
      _os_log_impl(&dword_221989000, v46, v47, "[%s] Failed to validate entitlements: %@", v49, 0x16u);
      sub_2219EC58C(v39, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98();
  }

  v55 = v28[43];
  v56 = v55[4];
  __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  v57 = *(v56 + 8);
  v58 = OUTLINED_FUNCTION_75();
  v59(v58, v56);
  v60 = a14;
  sub_2219982C4(a15, a16);
  v61 = v55[4];
  __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  v62 = *(v61 + 16);
  v63 = OUTLINED_FUNCTION_97();
  v64(v63, v61);
  v66 = v65;
  v67 = OUTLINED_FUNCTION_4();
  v70 = sub_221BB8738(v67, v68, v60, v69, v66);
  v71 = 0;
  v28[49] = v70;
  v28[50] = 0;
  v72 = v70;
  a9 = v28 + 40;
  a11 = v28[45];

  a10 = v72;
  v73 = [v72 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v74 = sub_221BCD668();

  v75 = sub_2219A69A0(v74);
  while (1)
  {
    if (v75 == v71)
    {
      v83 = v28[44];
      v84 = v28[45];

      sub_2219ACADC();
      OUTLINED_FUNCTION_17_2();
      *v85 = v83;
      *(v85 + 8) = a11;
      *(v85 + 16) = 0;
      *(v85 + 24) = 0;
      *(v85 + 32) = 3;
      swift_willThrow();

      goto LABEL_38;
    }

    if ((v74 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x223DA3BF0](v71, v74);
    }

    else
    {
      if (v71 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v76 = *(v74 + 8 * v71 + 32);
    }

    v77 = v76;
    v28[51] = v76;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v78 = sub_2219ACA70(v76);
    if (!v79)
    {
      goto LABEL_27;
    }

    if (v78 == v28[44] && v79 == a11)
    {
      break;
    }

    v81 = v28[45];
    v82 = sub_221BCE1B8();

    if (v82)
    {
      goto LABEL_31;
    }

LABEL_27:

    ++v71;
  }

LABEL_31:

  v86 = v55[4];
  __swift_project_boxed_opaque_existential_0(v28[43], v55[3]);
  v87 = *(v86 + 24);
  v88 = OUTLINED_FUNCTION_75();
  v90 = v89(v88, v86);
  v91 = *(v90 + 16);
  if (v91)
  {
    a13 = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v92 = (v90 + 48);
    do
    {
      v93 = *(v92 - 2);
      v94 = *(v92 - 1);
      v95 = *v92;
      v92 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v96 = v95;

      v97 = OUTLINED_FUNCTION_92();
      sub_2219A62D8(v97, v98, v95);
      sub_221BCDEF8();
      v99 = a13[2];
      sub_221BCDF38();
      OUTLINED_FUNCTION_221();
      sub_221BCDF48();
      sub_221BCDF08();
      --v91;
    }

    while (v91);
  }

  v100 = v28[42];
  v101 = [objc_opt_self() policyWithActionMetadata_];
  v28[52] = v101;
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v102 = sub_221BCD658();

  v103 = [v101 actionWithParameters_];
  v28[53] = v103;

  v104 = sub_2219C52F0();
  v28[39] = 0;
  v105 = [v101 connectionWithUserIdentity:v104 error:v28 + 39];
  v28[54] = v105;

  v106 = v28[39];
  if (!v105)
  {
    v119 = v106;
    OUTLINED_FUNCTION_107();
    sub_221BCC338();

    swift_willThrow();
    goto LABEL_38;
  }

  v136 = v103;
  v107 = v28[47];
  v108 = v28[42];
  v109 = v108[7];
  v110 = v108[8];
  __swift_project_boxed_opaque_existential_0(v108 + 4, v109);
  v111 = *(v110 + 24);
  v112 = v106;
  v28[55] = v111(v109, v110);
  v28[56] = v113;
  if (v107)
  {
    v115 = v28[46];
    v114 = v28[47];
    v116 = v136;
    v117 = v136;
    v118 = sub_221BCD358();
  }

  else
  {
    v116 = v136;
    v130 = v136;
    v118 = 0;
  }

  v28[57] = v118;
  v131 = sub_221BCD358();
  v28[58] = v131;
  v28[2] = v28;
  v28[7] = a9;
  v28[3] = sub_2219C9DE0;
  v132 = swift_continuation_init();
  v28[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80C0, &qword_221BD29C0);
  v28[10] = MEMORY[0x277D85DD0];
  v28[11] = 1107296256;
  v28[12] = sub_2219ABFE8;
  v28[13] = &block_descriptor_138;
  v28[14] = v132;
  [v105 fetchOptionsForAction:v116 actionMetadata:a10 parameterMetadata:v77 searchTerm:v118 localeIdentifier:v131 completionHandler:v28 + 10];
  v133 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_109();

  return MEMORY[0x282200938](v134);
}

uint64_t sub_2219C9DE0()
{
  OUTLINED_FUNCTION_1_5();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 472) = v5;
  if (v5)
  {
    v6 = *(v2 + 448);
  }

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2219C9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_170();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  a15 = *MEMORY[0x277D85DE8];
  v30 = *(v26 + 456);
  v29 = *(v26 + 464);
  v32 = *(v26 + 440);
  v31 = *(v26 + 448);
  v33 = *(v26 + 424);
  v34 = *(v26 + 400);
  v35 = *(v26 + 320);
  *(v26 + 480) = v35;

  OUTLINED_FUNCTION_235();
  swift_bridgeObjectRetain_n();
  sub_2219AEB50(v35, v31, v32, v31, &a12);
  if (v34)
  {
    v36 = *(v26 + 448);
    v38 = *(v26 + 424);
    v37 = *(v26 + 432);
    v40 = *(v26 + 408);
    v39 = *(v26 + 416);

    OUTLINED_FUNCTION_235();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_25();
    v41 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_109();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, *(&a12 + 1), a13, *(&a13 + 1), a14, a15, a16, a17, a18);
  }

  else
  {
    v51 = *(v26 + 448);
    v52 = *(v26 + 432);
    v75 = *(v26 + 384);
    v53 = *(v26 + 336);
    swift_bridgeObjectRelease_n();
    v54 = a12;
    v55 = a13;
    *(v26 + 488) = a12;
    *(v26 + 496) = v55;
    v56 = a14;
    v57 = [v52 bundleIdentifier];
    v58 = sub_221BCD388();
    v60 = v59;

    *&a12 = v58;
    *(&a12 + 1) = v60;
    a13 = xmmword_221BD04D0;
    swift_unknownObjectRetain();
    _IntentValueConversionContext.init(origin:dispatcher:)(&a12, v53, &off_283514488, v26 + 144);
    *(v26 + 272) = v54;
    *(v26 + 288) = v55;
    *(v26 + 304) = v56;
    v61 = *(v75 + 80);
    v62 = *(v61 + 16);
    *(v26 + 256) = &type metadata for _IntentValueConversionContext;
    *(v26 + 264) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v63 = swift_allocObject();
    *(v26 + 232) = v63;
    sub_2219EB180(v26 + 144, v63 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v26 + 512) = v64;
    v65 = *(v61 + 24);
    *v64 = v66;
    v64[1] = sub_2219CA190;
    v67 = *(v26 + 328);
    v68 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_109();

    return sub_2219B01E4(v69, v70, v71, v72, v73);
  }
}

uint64_t sub_2219CA190()
{
  OUTLINED_FUNCTION_14_3();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v2[65] = v0;

  if (!v0)
  {
    v9 = v2[62];
    v8 = v2[63];
    v10 = v2[61];
    __swift_destroy_boxed_opaque_existential_0(v2 + 29);
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2219CA2F0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 480);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);

  sub_22199C274(v0 + 144);
  OUTLINED_FUNCTION_25();
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_253();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_2219CA3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v32 = *MEMORY[0x277D85DE8];
  v13 = v12[58];
  v14 = v12[59];
  v15 = v12[57];
  v17 = v12[53];
  v16 = v12[54];
  v19 = v12[51];
  v18 = v12[52];
  v20 = v12[49];
  swift_willThrow();

  v21 = v12[59];
  OUTLINED_FUNCTION_25();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, a11, a12);
}

uint64_t sub_2219CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v32 = *MEMORY[0x277D85DE8];
  v13 = *(v12 + 496);
  v14 = *(v12 + 504);
  v16 = *(v12 + 480);
  v15 = *(v12 + 488);
  v18 = *(v12 + 424);
  v17 = *(v12 + 432);
  v19 = *(v12 + 416);
  v20 = *(v12 + 392);

  sub_22199C274(v12 + 144);
  __swift_destroy_boxed_opaque_existential_0((v12 + 232));

  v21 = *(v12 + 520);
  OUTLINED_FUNCTION_25();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, a11, a12);
}

uint64_t sub_2219CA544(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = *(a2 + 1);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219CA568()
{
  OUTLINED_FUNCTION_67();
  v7 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v5[0] = *(v0 + 24);
  v5[1] = v1;
  v6 = *(v0 + 40);
  sub_2219A9D68(v5, v2);
  OUTLINED_FUNCTION_25();

  return v3();
}

id sub_2219CA5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_221BCD358();

  v6 = [v4 initWithPersonaUniqueIdentifier:v5 accessLevel:a3];

  return v6;
}

uint64_t sub_2219CA66C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2219CA70C;

  return sub_2219CA544(a1, a2);
}

uint64_t sub_2219CA70C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_2219CA7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C8C98();
}

uint64_t sub_2219CA8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C298C();
}

uint64_t sub_2219CA9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_2219C5ED4(a1, a2, a3);
}

uint64_t sub_2219CAA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_2219C6DD4(a1, a2, a3);
}

uint64_t sub_2219CAB08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C7924();
}

double sub_2219CABD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD2690;
  *(v0 + 56) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 64) = &protocol witness table for Entitlement.PlatformFilter;
  v1 = sub_221BC2240(&unk_283511A68);
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[4] = 0xD000000000000027;
  v2[5] = 0x8000000221BEC0A0;
  *(v0 + 32) = sub_2219EC5F8;
  *(v0 + 40) = v2;
  *(v0 + 96) = &type metadata for Entitlement.IsTrue;
  *(v0 + 104) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x8000000221BEBDF0;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v3 = sub_221BC2240(&unk_283511A90);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = xmmword_221BD26A0;
  *(v4 + 40) = 0x8000000221BEC190;
  *(v0 + 112) = sub_2219EC5F8;
  *(v0 + 120) = v4;
  *(v0 + 176) = &type metadata for Entitlement.IsTrue;
  *(v0 + 184) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 152) = 0xD000000000000024;
  *(v0 + 160) = 0x8000000221BEC1C0;
  *(v0 + 216) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 224) = &protocol witness table for Entitlement.PlatformFilter;
  v5 = sub_221BC2240(&unk_283511AB8);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = v5;
  v6[4] = 0xD000000000000024;
  v6[5] = 0x8000000221BEC1F0;
  *(v0 + 192) = sub_2219EC5F8;
  *(v0 + 200) = v6;
  *(v0 + 256) = &type metadata for Entitlement.Contains;
  *(v0 + 264) = &protocol witness table for Entitlement.Contains;
  *(v0 + 232) = 0xD000000000000034;
  *(v0 + 240) = 0x8000000221BEC2B0;
  *(v0 + 248) = &unk_283511AE0;
  *(v0 + 296) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 304) = &protocol witness table for Entitlement.PlatformFilter;
  v7 = sub_221BC2240(&unk_283511B40);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  result = 0.0;
  *(v8 + 24) = xmmword_221BD26B0;
  *(v8 + 40) = 0x8000000221BEC2B0;
  *(v8 + 48) = &unk_283511B10;
  *(v0 + 272) = sub_2219EC5FC;
  *(v0 + 280) = v8;
  qword_27CFB7F30 = v0;
  return result;
}

uint64_t sub_2219CAE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD26C0;
  *(v0 + 56) = &type metadata for Entitlement.IsTrue;
  *(v0 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x8000000221BEBFB0;
  *(v0 + 96) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 104) = &protocol witness table for Entitlement.PlatformFilter;
  v1 = sub_221BC2240(&unk_283511B68);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = xmmword_221BD26D0;
  *(v2 + 40) = 0x8000000221BEC010;
  *(v0 + 72) = sub_2219EB25C;
  *(v0 + 80) = v2;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v3 = sub_221BC2240(&unk_283511B90);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = xmmword_221BD26E0;
  *(v4 + 40) = 0x8000000221BEC040;
  *(v0 + 112) = sub_2219EC5F8;
  *(v0 + 120) = v4;
  *(v0 + 176) = &type metadata for Entitlement.IsTrue;
  *(v0 + 184) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 152) = 0xD00000000000002FLL;
  *(v0 + 160) = 0x8000000221BEC070;
  *(v0 + 216) = &type metadata for Entitlement.IsTrue;
  *(v0 + 224) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 192) = 0xD000000000000025;
  *(v0 + 200) = 0x8000000221BEC0D0;
  *(v0 + 256) = &type metadata for Entitlement.IsTrue;
  *(v0 + 264) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 232) = 0xD000000000000024;
  *(v0 + 240) = 0x8000000221BEC100;
  *(v0 + 296) = &type metadata for Entitlement.IsTrue;
  *(v0 + 304) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 272) = 0xD000000000000020;
  *(v0 + 280) = 0x8000000221BEC130;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221BCF7F0;
  *(v5 + 32) = 0xD00000000000003FLL;
  *(v5 + 40) = 0x8000000221BEC220;
  *(v5 + 48) = &unk_283511BB8;
  *(v5 + 56) = &type metadata for Entitlement.Contains;
  *(v5 + 96) = &type metadata for Entitlement.Contains;
  *(v5 + 104) = &protocol witness table for Entitlement.Contains;
  *(v5 + 64) = &protocol witness table for Entitlement.Contains;
  *(v5 + 72) = 0xD000000000000040;
  *(v5 + 80) = 0x8000000221BEC260;
  *(v5 + 88) = &unk_283511BE8;
  *(v0 + 336) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 344) = &protocol witness table for Entitlement.PlatformFilter;
  v6 = sub_221BC2240(&unk_283511C18);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = v6;
  v7[4] = v5;
  *(v0 + 312) = sub_2219EB270;
  *(v0 + 320) = v7;

  sub_221BC3A48(&unk_283511C70);

  *(v0 + 376) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 384) = &protocol witness table for Entitlement.PlatformFilter;
  v8 = sub_221BC2240(&unk_283511CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = xmmword_221BD26B0;
  *(v9 + 40) = 0x8000000221BEC2B0;
  *(v9 + 48) = &unk_283511C40;
  *(v0 + 352) = sub_2219EB27C;
  *(v0 + 360) = v9;
  *(v0 + 416) = &type metadata for Entitlement.Contains;
  *(v0 + 424) = &protocol witness table for Entitlement.Contains;

  sub_221BC3A48(&unk_283511CF8);
  *(v0 + 392) = 0xD000000000000034;
  *(v0 + 400) = 0x8000000221BEC2B0;
  *(v0 + 408) = &unk_283511CC8;

  qword_27CFB7F38 = v0;
  return result;
}

uint64_t sub_2219CB1E0()
{
  v0 = sub_221BCCD88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Entitlement.Validator();
  __swift_allocate_value_buffer(v5, qword_27CFB7F40);
  v6 = __swift_project_value_buffer(v5, qword_27CFB7F40);
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_280FA9008);
  (*(v1 + 16))(v4, v7, v0);
  if (qword_27CFB6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_27CFB7F30;
  v9 = qword_27CFB6C90;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27CFB7F38;
  (*(v1 + 32))(v6, v4, v0);
  *(v6 + *(v5 + 20)) = v10;
  *(v6 + *(v5 + 24)) = v8;
}

uint64_t sub_2219CB3CC()
{
  v1 = (v0 + qword_27CFBC7A8);
  if (*(v0 + qword_27CFBC7A8 + 8))
  {
    v2 = *v1;
    v3 = *(v0 + qword_27CFBC7A8 + 8);
  }

  else
  {
    sub_2219CB49C(v0);
    OUTLINED_FUNCTION_183();
    v4 = v1[1];
    *v1 = v5;
    v1[1] = v6;
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219CB440()
{
  sub_221BCCCC8();
  sub_2219EB5B8();
  return sub_221BCD548();
}

uint64_t sub_2219CB49C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v10 = *(a1 + 16);
    v11 = v2;

    MEMORY[0x223DA31F0](58, 0xE100000000000000);
    v2 = v10;
    v3 = v11;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x223DA31F0](v2, v3);

  v4 = *(a1 + qword_27CFBC780);
  v5 = *(a1 + qword_27CFBC780 + 8);
  v6 = *(a1 + qword_27CFBC780 + 16);
  v7 = sub_221BCDE88();
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](58, 0xE100000000000000);
  v8 = sub_2219CB440();
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](8285, 0xE200000000000000);
  return 91;
}

void sub_2219CB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), void (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int16 a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t), void (*a30)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_21();
  v32 = v30;
  v166 = v33;
  v167 = v34;
  v168 = v35;
  v169 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v161 = v43;
  v157 = a28;
  v170 = a27;
  v162 = a25;
  v163 = a23;
  v164 = a24;
  v165 = a22;
  v151 = a26;
  v156 = a29;
  v44 = sub_221BCCD88();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4_0();
  v147 = v51 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v53 = OUTLINED_FUNCTION_8_1(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v56);
  v159 = &v146 - v57;
  v155 = sub_221BCCCD8();
  v58 = OUTLINED_FUNCTION_0_2(v155);
  v154 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4_0();
  v153 = v63 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v65 = OUTLINED_FUNCTION_8_1(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_231();
  v150 = sub_221BCCD08();
  v69 = OUTLINED_FUNCTION_0_2(v150);
  v152 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_4_0();
  v75 = v74 - v73;
  *(v32 + qword_27CFBC798) = 0;
  sub_221BCDFB8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  v80 = (v32 + qword_27CFBC7A8);
  *v80 = 0;
  v80[1] = 0;
  *(v32 + 16) = v161;
  *(v32 + 24) = v42;
  *(v32 + 32) = 0;
  *(v32 + 36) = 0;
  *(v32 + 40) = *v40;
  *(v32 + 56) = *(v40 + 16);
  v158 = v47;
  v81 = v31;
  v82 = *(v47 + 16);
  v160 = v38;
  v161 = v44;
  v83 = v38;
  v84 = v163;
  v146 = v82;
  v82(v32 + qword_27CFBC758, v83, v44);
  v85 = (v32 + qword_27CFBC760);
  v86 = v168;
  v87 = v169;
  *v85 = v168;
  v85[1] = v87;
  v88 = (v32 + qword_27CFBC768);
  v89 = v167;
  *v88 = v166;
  v88[1] = v89;
  v90 = (v32 + qword_27CFBC770);
  *v90 = a21;
  v90[1] = v165;
  *(off_27CFBC778 + v32) = MEMORY[0x277D84F98];
  v91 = v32 + qword_27CFBC780;
  *(v91 + 16) = *(v40 + 40);
  *v91 = *(v40 + 24);
  sub_22198BEB8(v86);
  v92 = OUTLINED_FUNCTION_140();
  v156(v92);
  v156 = a21;
  v93 = OUTLINED_FUNCTION_118();
  v94 = v162;
  sub_22198BEB8(v93);
  v95 = v84;
  sub_221BB08E4(v84, &v171);
  v96 = v32 + qword_27CFBC788;
  *(v96 + 32) = v173;
  v97 = v172;
  *v96 = v171;
  *(v96 + 16) = v97;
  v98 = v32 + qword_27CFBC790;
  *v98 = *(v40 + 80);
  v99 = *(v40 + 88);
  v100 = v150;
  *(v98 + 8) = v99;
  v101 = v32 + qword_27CFDED20;
  *v101 = v164;
  *(v101 + 8) = v94;
  v102 = BYTE1(v151);
  *(v101 + 16) = v151;
  *(v101 + 17) = v102 & 1;
  sub_2219BAF0C(v170, v31, &qword_27CFB7F60, &qword_221BD6680);
  if (__swift_getEnumTagSinglePayload(v31, 1, v100) != 1)
  {
    v117 = OUTLINED_FUNCTION_179();
    v118(v117, v31, v100);

    v113 = v155;
    v114 = v159;
    goto LABEL_11;
  }

  sub_2219BAF0C(v84, &v171, qword_27CFB7A80, &unk_221BD2800);
  v103 = *(&v172 + 1);
  if (!*(&v172 + 1))
  {

    sub_2219EC58C(&v171, qword_27CFB7A80);
    v108 = v148;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v100);
    v113 = v155;
    v114 = v159;
LABEL_7:
    v146(v147, v160, v161);
    sub_221BCCCE8();
    v122 = OUTLINED_FUNCTION_151(v108) == 1;
    v123 = v108;
    v95 = v163;
    v81 = v152;
    if (!v122)
    {
      sub_2219EC58C(v123, &qword_27CFB7F60);
    }

    goto LABEL_9;
  }

  v104 = v173;
  __swift_project_boxed_opaque_existential_0(&v171, *(&v172 + 1));
  v81 = v100;
  v105 = v31;
  v106 = *(v104 + 32);

  v107 = v104;
  v108 = v148;
  v106(v103, v107);
  v31 = v105;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v100);
  __swift_destroy_boxed_opaque_existential_0(&v171);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v100);
  v113 = v155;
  v114 = v159;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_7;
  }

  v115 = OUTLINED_FUNCTION_179();
  v116(v115, v108, v100);
  v95 = v163;
LABEL_9:
  v124 = __swift_getEnumTagSinglePayload(v31, 1, v100);
  v94 = v162;
  if (v124 != 1)
  {
    sub_2219EC58C(v31, &qword_27CFB7F60);
  }

LABEL_11:
  v125 = qword_27CFDED28;
  (*(v81 + 32))(v32 + qword_27CFDED28, v75, v100);
  v126 = v157;
  sub_2219BAF0C(v157, v114, &qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_145(v114);
  if (!v122)
  {
    v140 = OUTLINED_FUNCTION_121();
    v141(v140, v114, v113);
    goto LABEL_21;
  }

  v127 = v94;
  sub_2219BAF0C(v95, &v171, qword_27CFB7A80, &unk_221BD2800);
  if (!*(&v172 + 1))
  {
    sub_2219EC58C(&v171, qword_27CFB7A80);
    v132 = v149;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v113);
LABEL_17:
    sub_221BCCCF8();
    v125 = v153;
    sub_221BCCCB8();
    OUTLINED_FUNCTION_145(v132);
    v145 = v132;
    v94 = v127;
    v100 = v154;
    if (!v122)
    {
      sub_2219EC58C(v145, &qword_27CFB7F58);
    }

    goto LABEL_19;
  }

  v128 = v173;
  __swift_project_boxed_opaque_existential_0(&v171, *(&v172 + 1));
  v129 = *(v128 + 40);
  v130 = OUTLINED_FUNCTION_75();
  v132 = v131;
  v133 = v128;
  v114 = v159;
  v134(v130, v133);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v113);
  __swift_destroy_boxed_opaque_existential_0(&v171);
  OUTLINED_FUNCTION_145(v132);
  if (v122)
  {
    goto LABEL_17;
  }

  v138 = OUTLINED_FUNCTION_121();
  v139(v138, v132, v113);
  v94 = v127;
LABEL_19:
  OUTLINED_FUNCTION_145(v114);
  if (!v122)
  {
    sub_2219EC58C(v114, &qword_27CFB7F58);
  }

LABEL_21:
  (*(v100 + 32))(v32 + qword_27CFDED30, v125, v113);
  if (v94)
  {
    *(&v172 + 1) = MEMORY[0x277D837D0];
    *&v171 = v164;
    *(&v171 + 1) = v94;
    swift_beginAccess();
    sub_221BC5970(&v171, 0x746E65696C63, 0xE600000000000000);
    swift_endAccess();
  }

  sub_22198B60C(v156);
  a30(v166, v167);
  sub_22198B60C(v168);
  sub_2219EC58C(v126, &qword_27CFB7F58);
  sub_2219EC58C(v170, &qword_27CFB7F60);
  sub_2219EC58C(v95, qword_27CFB7A80);
  (*(v158 + 8))(v160, v161);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219CBF48(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_2219CC940(v3);
  return sub_2219EC58C(v3, &qword_27CFB8090);
}

uint64_t sub_2219CBF9C(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_2219CE930(v3);
  return sub_2219EC58C(v3, &qword_27CFB8000);
}

uint64_t sub_2219CC038(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7 = OUTLINED_FUNCTION_234(a1, a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_2_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_157();
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  a4(v4);
  v14 = OUTLINED_FUNCTION_140();
  return sub_2219EC58C(v14, v15);
}

void sub_2219CC0DC()
{
  OUTLINED_FUNCTION_21();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v76 = &v73 - v9;
  v10 = sub_221BCCCD8();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v77 = v12;
  v78 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  v75 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_163();
  v18 = *(v0 + qword_27CFBC760);
  if (v18)
  {
    v19 = *(v0 + qword_27CFBC760 + 8);
    v20 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_228(v20);
    v21 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_198();
    if (os_log_type_enabled(v21, v2))
    {
      v22 = OUTLINED_FUNCTION_103();
      v74 = v3;
      v23 = v22;
      v80[0] = OUTLINED_FUNCTION_105();
      v24 = OUTLINED_FUNCTION_248(4.8151e-34);
      v26 = sub_2219A6360(v24, v25, v80);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v28 = v18(v27);
      v30 = sub_2219A6360(v28, v29, v80);

      *(v23 + 14) = v30;
      OUTLINED_FUNCTION_247(&dword_221989000, v21, v2, "%s%s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v3 = v74;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v31 = OUTLINED_FUNCTION_120();
      sub_22198B60C(v31);
    }

    else
    {

      v46 = OUTLINED_FUNCTION_120();
      sub_22198B60C(v46);
    }
  }

  else
  {
    OUTLINED_FUNCTION_235();
    swift_retain_n();
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA98();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_103();
      v80[0] = OUTLINED_FUNCTION_105();
      *v34 = 136315394;
      v35 = sub_2219CB3CC();
      sub_2219A6360(v35, v36, v80);
      OUTLINED_FUNCTION_107();

      *(v34 + 4) = v1;
      *(v34 + 12) = 2080;
      v37 = *(v0 + qword_27CFBC780);
      v38 = *(v4 + qword_27CFBC780 + 8);
      v39 = *(v4 + qword_27CFBC780 + 16);

      OUTLINED_FUNCTION_16();
      v40 = sub_221BCDE88();

      v41 = OUTLINED_FUNCTION_16();
      sub_2219A6360(v41, v42, v43);
      OUTLINED_FUNCTION_75();

      *(v34 + 14) = v40;
      OUTLINED_FUNCTION_240(&dword_221989000, v44, v45, "%sStarting %s");
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_235();
    }
  }

  sub_2219BAF0C(v4 + qword_27CFBC788, v80, &qword_27CFB7FD0, &qword_221BD2888);
  if (v81)
  {
    v47 = v82;
    __swift_project_boxed_opaque_existential_0(v80, v81);
    v48 = *(v47 + 16);
    v49 = OUTLINED_FUNCTION_1_0();
    v50(v49);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  else
  {
    sub_2219EC58C(v80, &qword_27CFB7FD0);
  }

  v51 = *(v4 + qword_27CFBC780);
  v52 = *(v4 + qword_27CFBC780 + 16);
  v53 = v77;
  v54 = *(v77 + 16);
  v55 = v3;
  v56 = v3;
  v57 = v78;
  v54(v55, v4 + qword_27CFDED30, v78);
  v58 = sub_221BCCCF8();
  LODWORD(v74) = sub_221BCDBC8();
  if ((sub_221BCDC78() & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((v52 & 1) == 0)
  {
    if (v51)
    {
LABEL_19:
      OUTLINED_FUNCTION_117();
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v58, v74, v60, v51, "", v59, 2u);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v53 = v77;
      v57 = v78;
LABEL_20:

      v61 = OUTLINED_FUNCTION_24();
      (v54)(v61);
      v62 = sub_221BCCD48();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      v65 = sub_221BCCD38();
      (*(v53 + 8))(v56, v57);
      v66 = *(v4 + qword_27CFBC798);
      *(v4 + qword_27CFBC798) = v65;

      v67 = v76;
      sub_221BCDF88();
      sub_221BCDFB8();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
      v72 = qword_27CFBC7A0;
      swift_beginAccess();
      sub_2219EB60C(v67, v4 + v72);
      swift_endAccess();
      OUTLINED_FUNCTION_22();
      return;
    }

    __break(1u);
  }

  if (v51 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v51 & 0xFFFFF800) != 0xD800)
  {
    if (v51 >> 16 <= 0x10)
    {
      v51 = &v79;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2219CC674(uint64_t a1)
{
  sub_2219BAF0C(a1, v2, &qword_27CFB8048, &qword_221BE5700);
  v2[264] = 0;
  sub_2219CDA30(v2);
  return sub_2219EC58C(v2, &qword_27CFB8050);
}

uint64_t sub_2219CC6D4(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_2219CF9D0(v2);
  return sub_2219EC58C(v2, &qword_27CFB7FC0);
}

uint64_t sub_2219CC794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v10 = OUTLINED_FUNCTION_234(a1, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_2_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_156();
  sub_2219EC27C(a1, v5, a4);
  OUTLINED_FUNCTION_221();
  swift_storeEnumTagMultiPayload();
  a5(v5);
  return sub_2219EC58C(v5, a2);
}

uint64_t sub_2219CC84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F8, &qword_221BD2A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  v6 = sub_221BCC558();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_2219E6AB8(v5);
  return sub_2219EC58C(v5, &qword_27CFB80F8);
}

void sub_2219CC940(uint64_t a1)
{
  v2 = v1;
  v145 = a1;
  v3 = sub_221BCCE38();
  v144 = *(v3 - 8);
  v4 = *(v144 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v139 - v8;
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v139 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v139 - v20;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v140 = v3;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v10);
  v142 = 0;
  v143 = 0;
  v141 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v17, v21, v10);
    sub_221BCDF88();
    v24 = sub_221BCDFA8();
    v142 = v25;
    v143 = v24;
    v26 = *(v11 + 8);
    v26(v15, v10);
    v26(v17, v10);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v27 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v28, v2);
  }

  v29 = off_27CFBC778;
  swift_beginAccess();
  v139 = v29;
  v30 = *&v29[v2];
  v31 = &unk_27CFBC000;
  if (*(v30 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, v152, &qword_27CFB7FD0, &qword_221BD2888);
    v32 = v152[3];
    if (v152[3])
    {
      v33 = v152[4];
      __swift_project_boxed_opaque_existential_0(v152, v152[3]);
      v34 = *(v33 + 32);

      v34(v35, 0x697274654D736961, 0xEA00000000007363, v32, v33);
      v31 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(v152);
    }

    else
    {
      sub_2219EC58C(v152, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v145, v152, &qword_27CFB8090, &unk_221BD2960);
  if (v153)
  {
    v36 = v152[0];
    sub_2219BAF0C(v2 + v31[241], v151, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = v151[3];
    if (v151[3])
    {
      v38 = v151[4];
      v39 = __swift_project_boxed_opaque_existential_0(v151, v151[3]);
      v146[0] = v36;
      v40 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v148);
        v148[0] = v36;
        v41 = v36;
        v42 = sub_221BCE198();
        v145 = v39;
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = swift_allocError();
          *v75 = v36;
        }

        v76 = sub_221BCC328();

        v77 = [v76 domain];
        v78 = sub_221BCD388();
        v80 = v79;

        v81 = [v76 code];
        *v7 = v78;
        v7[1] = v80;
        v7[2] = v81;
        v74 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v74 = MEMORY[0x277CD8AC0];
      }

      v82 = v144;
      v83 = v140;
      (*(v144 + 104))(v7, *v74, v140);
      (*(v38 + 24))(v7, v37, v38);
      (*(v82 + 8))(v7, v83);
      __swift_destroy_boxed_opaque_existential_0(v151);
    }

    else
    {
      sub_2219EC58C(v151, &qword_27CFB7FD0);
    }

    v84 = *(v2 + qword_27CFBC770);
    if (v84)
    {
      v85 = *(v2 + qword_27CFBC770 + 8);
      v86 = v36;

      v87 = v36;
      sub_22198BEB8(v84);
      v88 = sub_221BCCD68();
      v89 = sub_221BCDA78();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v151[0] = v145;
        *v90 = 136315394;
        v91 = sub_2219CB3CC();
        v93 = sub_2219A6360(v91, v92, v151);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2080;
        v148[0] = v36;
        v94 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v95 = sub_221BCE198();
        if (v95)
        {
          v96 = v95;
        }

        else
        {
          v96 = swift_allocError();
          *v120 = v36;
        }

        v121 = v84(v96);
        v144 = v85;
        v123 = v122;

        v124 = sub_2219A6360(v121, v123, v151);

        *(v90 + 14) = v124;
        _os_log_impl(&dword_221989000, v88, v89, "%s %s", v90, 0x16u);
        v125 = v145;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v125, -1, -1);
        MEMORY[0x223DA4C00](v90, -1, -1);

        v112 = v84;
      }

      else
      {

        v112 = v84;
      }

      sub_22198B60C(v112);
      goto LABEL_51;
    }

    v97 = *(v2 + qword_27CFDED20 + 17);

    v98 = v36;
    v99 = sub_221BCCD68();
    v100 = sub_221BCDA78();

    v101 = os_log_type_enabled(v99, v100);
    if (v97)
    {
      if (v101)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v151[0] = v103;
        *v102 = 136315395;
        v104 = sub_2219CB3CC();
        v106 = sub_2219A6360(v104, v105, v151);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2085;
        v148[0] = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v107 = sub_221BCE288();
        v109 = v108;

        v110 = sub_2219A6360(v107, v109, v151);

        *(v102 + 14) = v110;
        v111 = "%sFailed with %{sensitive}s";
LABEL_45:
        _os_log_impl(&dword_221989000, v99, v100, v111, v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v103, -1, -1);
        MEMORY[0x223DA4C00](v102, -1, -1);
LABEL_47:

LABEL_51:
        goto LABEL_52;
      }
    }

    else if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v151[0] = v103;
      *v102 = 136315395;
      v113 = sub_2219CB3CC();
      v115 = sub_2219A6360(v113, v114, v151);

      *(v102 + 4) = v115;
      *(v102 + 12) = 2081;
      v148[0] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v116 = sub_221BCE288();
      v118 = v117;

      v119 = sub_2219A6360(v116, v118, v151);

      *(v102 + 14) = v119;
      v111 = "%sFailed with %{private}s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  memcpy(v151, v152, sizeof(v151));
  sub_2219BAF0C(v2 + v31[241], v148, &qword_27CFB7FD0, &qword_221BD2888);
  v44 = v149;
  if (v149)
  {
    v45 = v150;
    __swift_project_boxed_opaque_existential_0(v148, v149);
    v46 = v144;
    v47 = v140;
    (*(v144 + 104))(v9, *MEMORY[0x277CD8AC8], v140);
    (*(v45 + 24))(v9, v44, v45);
    (*(v46 + 8))(v9, v47);
    __swift_destroy_boxed_opaque_existential_0(v148);
  }

  else
  {
    sub_2219EC58C(v148, &qword_27CFB7FD0);
  }

  v48 = *(v2 + qword_27CFBC768);
  if (!v48)
  {
    sub_2219BAF0C(v151, v148, &qword_27CFB8048, &qword_221BE5700);

    v61 = sub_221BCCD68();
    v62 = sub_221BCDA98();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v147 = v64;
      *v63 = 136315394;
      v65 = sub_2219CB3CC();
      v67 = sub_2219A6360(v65, v66, &v147);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v68 = *(v2 + qword_27CFDED20 + 17);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
      v146[3] = v69;
      v146[4] = sub_2219EB964(&qword_27CFB8058, &qword_27CFB8048);
      v146[0] = swift_allocObject();
      sub_2219BAF0C(v148, v146[0] + 16, &qword_27CFB8048, &qword_221BE5700);
      __swift_project_boxed_opaque_existential_0(v146, v69);
      v70 = sub_2219C1DE8(v68);
      v72 = v71;
      sub_2219EC58C(v148, &qword_27CFB8048);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v73 = sub_2219A6360(v70, v72, &v147);

      *(v63 + 14) = v73;
      _os_log_impl(&dword_221989000, v61, v62, "%sCompleted with %s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v64, -1, -1);
      MEMORY[0x223DA4C00](v63, -1, -1);

      goto LABEL_31;
    }

LABEL_30:
    sub_2219EC58C(v148, &qword_27CFB8048);
    goto LABEL_31;
  }

  v49 = *(v2 + qword_27CFBC768 + 8);
  sub_2219BAF0C(v151, v148, &qword_27CFB8048, &qword_221BE5700);
  sub_22198BEB8(v48);

  v50 = sub_221BCCD68();
  v51 = sub_221BCDA98();

  if (!os_log_type_enabled(v50, v51))
  {

    sub_22198B60C(v48);
    goto LABEL_30;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v146[0] = v53;
  *v52 = 136315394;
  v54 = sub_2219CB3CC();
  v56 = sub_2219A6360(v54, v55, v146);

  *(v52 + 4) = v56;
  *(v52 + 12) = 2080;
  v57 = v48(v148);
  v59 = v58;
  sub_2219EC58C(v148, &qword_27CFB8048);
  v60 = sub_2219A6360(v57, v59, v146);

  *(v52 + 14) = v60;
  _os_log_impl(&dword_221989000, v50, v51, "%s%s", v52, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v53, -1, -1);
  MEMORY[0x223DA4C00](v52, -1, -1);

  sub_22198B60C(v48);
LABEL_31:
  sub_2219EC58C(v151, &qword_27CFB8048);
LABEL_52:
  v127 = v142;
  v126 = v143;
  v128 = v141;
  sub_2219E7E58(v143, v142, v141 == 1);
  if (v128 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v129 = *(v2 + 40);
    v130 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v131 = *(v2 + qword_27CFBC780);
      v144 = *(v2 + qword_27CFBC780 + 8);
      v145 = v131;
      LODWORD(v143) = *(v2 + qword_27CFBC780 + 16);
      v132 = sub_2219CB440();
      v134 = v133;
      v152[0] = 0;
      v152[1] = 0xE000000000000000;
      sub_221BCDE68();
      v135 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v135);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v136 = v152[0];
      v137 = v152[1];
      v138 = *&v139[v2];

      sub_221BB52B0(v145, v144, v143, v132, v134, v126, v127, v136, v137);
    }
  }
}

void sub_2219CDA30(uint64_t a1)
{
  v2 = v1;
  v122 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_221BCDFB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v116 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v116 - v18;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v119 = v7;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v20 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v20, v19, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v8);
  v22 = 0;
  v121 = 0;
  LODWORD(v120) = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v9 + 32))(v15, v19, v8);
    sub_221BCDF88();
    v22 = sub_221BCDFA8();
    v121 = v23;
    v24 = *(v9 + 8);
    v24(v13, v8);
    v24(v15, v8);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v25 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v26, v2);
  }

  v27 = off_27CFBC778;
  swift_beginAccess();
  v118 = v27;
  v28 = *&v27[v2];
  v29 = &unk_27CFBC000;
  if (*(v28 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, v129, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = v129[3];
    if (v129[3])
    {
      v31 = v129[4];
      __swift_project_boxed_opaque_existential_0(v129, v129[3]);
      v117 = v2;
      v32 = *(v31 + 32);

      v32(v33, 0x697274654D736961, 0xEA00000000007363, v30, v31);
      v29 = &unk_27CFBC000;
      v2 = v117;

      __swift_destroy_boxed_opaque_existential_0(v129);
    }

    else
    {
      sub_2219EC58C(v129, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v122, v129, &qword_27CFB8050, &qword_221BD2920);
  if ((v130 & 1) == 0)
  {
    memcpy(v128, v129, sizeof(v128));
    sub_2219BAF0C(v2 + v29[241], v125, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = v126;
    if (v126)
    {
      v38 = v127;
      __swift_project_boxed_opaque_existential_0(v125, v126);
      v39 = v119;
      (*(v4 + 104))(v119, *MEMORY[0x277CD8AC8], v3);
      (*(v38 + 24))(v39, v37, v38);
      (*(v4 + 8))(v39, v3);
      __swift_destroy_boxed_opaque_existential_0(v125);
    }

    else
    {
      sub_2219EC58C(v125, &qword_27CFB7FD0);
    }

    v55 = *(v2 + qword_27CFBC768);
    if (v55)
    {
      v56 = *(v2 + qword_27CFBC768 + 8);
      sub_2219BAF0C(v128, v125, &qword_27CFB8048, &qword_221BE5700);
      sub_22198BEB8(v55);

      v57 = sub_221BCCD68();
      v58 = sub_221BCDA98();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v123[0] = v60;
        *v59 = 136315394;
        v61 = sub_2219CB3CC();
        v63 = sub_2219A6360(v61, v62, v123);
        v122 = v22;
        v64 = v63;

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        v65 = v55(v125);
        v67 = v66;
        sub_2219EC58C(v125, &qword_27CFB8048);
        v68 = sub_2219A6360(v65, v67, v123);

        *(v59 + 14) = v68;
        v22 = v122;
        _os_log_impl(&dword_221989000, v57, v58, "%s%s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v60, -1, -1);
        MEMORY[0x223DA4C00](v59, -1, -1);

        sub_22198B60C(v55);
LABEL_41:
        sub_2219EC58C(v128, &qword_27CFB8048);
        goto LABEL_42;
      }

      sub_22198B60C(v55);
    }

    else
    {
      sub_2219BAF0C(v128, v125, &qword_27CFB8048, &qword_221BE5700);

      v83 = sub_221BCCD68();
      v84 = sub_221BCDA98();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v124 = v122;
        *v85 = 136315394;
        v86 = sub_2219CB3CC();
        v88 = sub_2219A6360(v86, v87, &v124);

        *(v85 + 4) = v88;
        *(v85 + 12) = 2080;
        v89 = *(v2 + qword_27CFDED20 + 17);
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
        v123[3] = v90;
        v123[4] = sub_2219EB964(&qword_27CFB8058, &qword_27CFB8048);
        v123[0] = swift_allocObject();
        sub_2219BAF0C(v125, v123[0] + 16, &qword_27CFB8048, &qword_221BE5700);
        __swift_project_boxed_opaque_existential_0(v123, v90);
        v91 = sub_2219C1DE8(v89);
        v93 = v92;
        sub_2219EC58C(v125, &qword_27CFB8048);
        __swift_destroy_boxed_opaque_existential_0(v123);
        v94 = sub_2219A6360(v91, v93, &v124);

        *(v85 + 14) = v94;
        _os_log_impl(&dword_221989000, v83, v84, "%sCompleted with %s", v85, 0x16u);
        v95 = v122;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v95, -1, -1);
        MEMORY[0x223DA4C00](v85, -1, -1);

        goto LABEL_41;
      }
    }

    sub_2219EC58C(v125, &qword_27CFB8048);
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v29[241], v128, &qword_27CFB7FD0, &qword_221BD2888);
  v34 = v128[3];
  if (v128[3])
  {
    v35 = v128[4];
    __swift_project_boxed_opaque_existential_0(v128, v128[3]);
    v36 = v119;
    sub_2219E7D00(v119);
    (*(v35 + 24))(v36, v34, v35);
    (*(v4 + 8))(v36, v3);
    __swift_destroy_boxed_opaque_existential_0(v128);
  }

  else
  {
    sub_2219EC58C(v128, &qword_27CFB7FD0);
  }

  v40 = *(v2 + qword_27CFBC770);
  if (v40)
  {
    v41 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v40);
    v42 = sub_221BCCD68();
    v43 = sub_221BCDA78();

    if (os_log_type_enabled(v42, v43))
    {
      v122 = v22;
      v44 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v128[0] = v119;
      *v44 = 136315394;
      v45 = sub_2219CB3CC();
      v47 = sub_2219A6360(v45, v46, v128);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = sub_221BCE198();
      if (!v48)
      {
        v48 = swift_allocError();
      }

      v49 = v48;
      v50 = v40();
      v52 = v51;

      v53 = sub_2219A6360(v50, v52, v128);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_221989000, v42, v43, "%s %s", v44, 0x16u);
      v54 = v119;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v54, -1, -1);
      MEMORY[0x223DA4C00](v44, -1, -1);
      sub_22198B60C(v40);

      v22 = v122;
    }

    else
    {

      sub_22198B60C(v40);
    }

    goto LABEL_42;
  }

  v69 = *(v2 + qword_27CFDED20 + 17);

  v70 = sub_221BCCD68();
  v71 = sub_221BCDA78();

  v72 = os_log_type_enabled(v70, v71);
  if (v69)
  {
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v128[0] = v74;
      *v73 = 136315395;
      v75 = sub_2219CB3CC();
      v77 = v22;
      v78 = sub_2219A6360(v75, v76, v128);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2085;
      v79 = sub_221BCE288();
      v81 = sub_2219A6360(v79, v80, v128);

      *(v73 + 14) = v81;
      v22 = v77;
      v82 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v70, v71, v82, v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v74, -1, -1);
      MEMORY[0x223DA4C00](v73, -1, -1);
    }
  }

  else if (v72)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v128[0] = v74;
    *v73 = 136315395;
    v96 = sub_2219CB3CC();
    v98 = v22;
    v99 = sub_2219A6360(v96, v97, v128);

    *(v73 + 4) = v99;
    *(v73 + 12) = 2081;
    v100 = sub_221BCE288();
    v102 = sub_2219A6360(v100, v101, v128);

    *(v73 + 14) = v102;
    v22 = v98;
    v82 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v103 = v121;
  v104 = v120;
  sub_2219E7E58(v22, v121, v120 == 1);
  if (v104 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v105 = *(v2 + 40);
    v106 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v107 = *(v2 + qword_27CFBC780);
      v120 = *(v2 + qword_27CFBC780 + 8);
      v121 = v107;
      v122 = v22;
      v108 = *(v2 + qword_27CFBC780 + 16);
      v109 = sub_2219CB440();
      v111 = v110;
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_221BCDE68();
      v112 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v112);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v113 = v129[0];
      v114 = v129[1];
      v115 = *&v118[v2];

      sub_221BB52B0(v121, v120, v108, v109, v111, v122, v103, v113, v114);
    }
  }
}

void sub_2219CE930(uint64_t a1)
{
  v2 = v1;
  v144 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = v138 - v9;
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v138 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v138 - v21;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v140 = v8;
  v141 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v23 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v23, v22, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v11);
  v25 = 0;
  v143 = 0;
  v142 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v18, v22, v11);
    sub_221BCDF88();
    v25 = sub_221BCDFA8();
    v143 = v26;
    v27 = *(v12 + 8);
    v27(v16, v11);
    v27(v18, v11);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v28 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v29, v2);
  }

  v30 = off_27CFBC778;
  swift_beginAccess();
  v139 = v30;
  v31 = *&v30[v2];
  v32 = &unk_27CFBC000;
  if (*(v31 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v152, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = v153;
    if (v153)
    {
      v34 = v154;
      __swift_project_boxed_opaque_existential_0(&v152, v153);
      v35 = v3;
      v36 = v25;
      v37 = *(v34 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v33, v34);
      v32 = &unk_27CFBC000;
      v25 = v36;
      v3 = v35;

      __swift_destroy_boxed_opaque_existential_0(&v152);
    }

    else
    {
      sub_2219EC58C(&v152, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v144, &v152, &qword_27CFB8000, &unk_221BD28B0);
  if ((v155 & 1) == 0)
  {
    sub_22198B358(&v152, v149);
    sub_2219BAF0C(v2 + v32[241], v145, &qword_27CFB7FD0, &qword_221BD2888);
    v48 = v146;
    if (v146)
    {
      v49 = v147;
      __swift_project_boxed_opaque_existential_0(v145, v146);
      v50 = v141;
      (*(v141 + 104))(v10, *MEMORY[0x277CD8AC8], v3);
      (*(v49 + 24))(v10, v48, v49);
      (*(v50 + 8))(v10, v3);
      __swift_destroy_boxed_opaque_existential_0(v145);
    }

    else
    {
      sub_2219EC58C(v145, &qword_27CFB7FD0);
    }

    v51 = *(v2 + qword_27CFBC768);
    if (v51)
    {
      v52 = *(v2 + qword_27CFBC768 + 8);
      sub_2219A1B08(v149, v145);
      sub_22198BEB8(v51);

      v53 = sub_221BCCD68();
      v54 = sub_221BCDA98();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v148 = v56;
        *v55 = 136315394;
        v57 = sub_2219CB3CC();
        v59 = sub_2219A6360(v57, v58, &v148);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        v60 = v51(v145);
        v62 = v61;
        __swift_destroy_boxed_opaque_existential_0(v145);
        v63 = sub_2219A6360(v60, v62, &v148);

        *(v55 + 14) = v63;
        _os_log_impl(&dword_221989000, v53, v54, "%s%s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v56, -1, -1);
        MEMORY[0x223DA4C00](v55, -1, -1);

        sub_22198B60C(v51);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v149);
        goto LABEL_51;
      }

      sub_22198B60C(v51);
    }

    else
    {
      sub_2219A1B08(v149, v145);

      v64 = sub_221BCCD68();
      v65 = sub_221BCDA98();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v148 = v67;
        *v66 = 136315394;
        v68 = sub_2219CB3CC();
        v70 = sub_2219A6360(v68, v69, &v148);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        v71 = sub_2219C0FF8(v145, *(v2 + qword_27CFDED20 + 17), &qword_27CFB7FB8, &qword_221BD2870, &qword_27CFB7FD8, &unk_221BD2890);
        v73 = v72;
        __swift_destroy_boxed_opaque_existential_0(v145);
        v74 = sub_2219A6360(v71, v73, &v148);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_221989000, v64, v65, "%sCompleted with %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v67, -1, -1);
        MEMORY[0x223DA4C00](v66, -1, -1);

        goto LABEL_31;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v145);
    goto LABEL_31;
  }

  v39 = v152;
  sub_2219BAF0C(v2 + v32[241], v149, &qword_27CFB7FD0, &qword_221BD2888);
  v40 = v150;
  if (v150)
  {
    v41 = v151;
    v42 = __swift_project_boxed_opaque_existential_0(v149, v150);
    v148 = v39;
    v43 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    if (swift_dynamicCast())
    {
      v144 = v41;
      __swift_destroy_boxed_opaque_existential_0(v145);
      v145[0] = v39;
      v44 = v39;
      v45 = sub_221BCE198();
      v138[1] = v42;
      if (v45)
      {
        v46 = v45;
        v47 = v25;
      }

      else
      {
        v47 = v25;
        v46 = swift_allocError();
        *v77 = v39;
      }

      v78 = sub_221BCC328();

      v79 = [v78 domain];
      v80 = sub_221BCD388();
      v82 = v81;

      v83 = [v78 code];
      v76 = v140;
      *v140 = v80;
      v76[1] = v82;
      v76[2] = v83;
      v75 = MEMORY[0x277CD8AB8];
      v25 = v47;
      v41 = v144;
    }

    else
    {
      v75 = MEMORY[0x277CD8AC0];
      v76 = v140;
    }

    v84 = v141;
    (*(v141 + 104))(v76, *v75, v3);
    (*(v41 + 24))(v76, v40, v41);
    (*(v84 + 8))(v76, v3);
    __swift_destroy_boxed_opaque_existential_0(v149);
  }

  else
  {
    sub_2219EC58C(v149, &qword_27CFB7FD0);
  }

  v85 = *(v2 + qword_27CFBC770);
  if (!v85)
  {
    v98 = *(v2 + qword_27CFDED20 + 17);

    v99 = v39;
    v100 = sub_221BCCD68();
    v101 = sub_221BCDA78();

    v102 = os_log_type_enabled(v100, v101);
    if (v98)
    {
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v149[0] = v104;
        *v103 = 136315395;
        v105 = sub_2219CB3CC();
        v107 = sub_2219A6360(v105, v106, v149);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2085;
        v145[0] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v108 = sub_221BCE288();
        v110 = v109;

        v111 = sub_2219A6360(v108, v110, v149);

        *(v103 + 14) = v111;
        v112 = "%sFailed with %{sensitive}s";
LABEL_45:
        _os_log_impl(&dword_221989000, v100, v101, v112, v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v104, -1, -1);
        MEMORY[0x223DA4C00](v103, -1, -1);
LABEL_47:

        goto LABEL_48;
      }
    }

    else if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v149[0] = v104;
      *v103 = 136315395;
      v113 = sub_2219CB3CC();
      v115 = sub_2219A6360(v113, v114, v149);

      *(v103 + 4) = v115;
      *(v103 + 12) = 2081;
      v145[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v116 = sub_221BCE288();
      v118 = v117;

      v119 = sub_2219A6360(v116, v118, v149);

      *(v103 + 14) = v119;
      v112 = "%sFailed with %{private}s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v86 = *(v2 + qword_27CFBC770 + 8);
  v87 = v39;

  v88 = v39;
  sub_22198BEB8(v85);
  v89 = sub_221BCCD68();
  v90 = sub_221BCDA78();

  if (!os_log_type_enabled(v89, v90))
  {

    sub_22198B60C(v85);
LABEL_48:

    goto LABEL_51;
  }

  v144 = v25;
  v91 = swift_slowAlloc();
  v141 = swift_slowAlloc();
  v149[0] = v141;
  *v91 = 136315394;
  v92 = sub_2219CB3CC();
  v94 = sub_2219A6360(v92, v93, v149);

  *(v91 + 4) = v94;
  *(v91 + 12) = 2080;
  v145[0] = v39;
  v95 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v96 = sub_221BCE198();
  if (v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = swift_allocError();
    *v120 = v39;
  }

  v121 = v85(v97);
  v123 = v122;

  v124 = sub_2219A6360(v121, v123, v149);

  *(v91 + 14) = v124;
  _os_log_impl(&dword_221989000, v89, v90, "%s %s", v91, 0x16u);
  v125 = v141;
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v125, -1, -1);
  MEMORY[0x223DA4C00](v91, -1, -1);

  sub_22198B60C(v85);
  v25 = v144;
LABEL_51:
  v126 = v143;
  v127 = v142;
  sub_2219E7E58(v25, v143, v142 == 1);
  if (v127 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v128 = *(v2 + 40);
    v129 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v130 = *(v2 + qword_27CFBC780 + 8);
      v144 = *(v2 + qword_27CFBC780);
      v143 = v130;
      v131 = *(v2 + qword_27CFBC780 + 16);
      v132 = sub_2219CB440();
      v134 = v133;
      *&v152 = 0;
      *(&v152 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v135 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v135);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v136 = v152;
      v137 = *&v139[v2];

      sub_221BB52B0(v144, v143, v131, v132, v134, v25, v126, v136, *(&v136 + 1));
    }
  }
}

void sub_2219CF9D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_221BCCE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_221BCDFB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v116 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v116 - v19;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v119 = v4;
  v21 = a1;
  v118 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v22, v20, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v9);
  v24 = 0;
  v121 = 0;
  v120 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 32))(v16, v20, v9);
    sub_221BCDF88();
    v24 = sub_221BCDFA8();
    v121 = v25;
    v26 = *(v10 + 8);
    v26(v14, v9);
    v26(v16, v9);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v27 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v28, v2);
  }

  v29 = off_27CFBC778;
  swift_beginAccess();
  v117 = v29;
  v30 = *&v29[v2];
  v31 = &unk_27CFBC000;
  v32 = v21;
  if (*(v30 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v129, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = v130;
    if (v130)
    {
      v34 = v131;
      __swift_project_boxed_opaque_existential_0(&v129, v130);
      v35 = v24;
      v36 = *(v34 + 32);

      v38 = v34;
      v31 = &unk_27CFBC000;
      v36(v37, 0x697274654D736961, 0xEA00000000007363, v33, v38);
      v32 = v21;
      v24 = v35;

      __swift_destroy_boxed_opaque_existential_0(&v129);
    }

    else
    {
      sub_2219EC58C(&v129, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v32, &v129, &qword_27CFB7FC0, &qword_221BD2878);
  if ((v132 & 1) == 0)
  {
    sub_22198B358(&v129, v126);
    sub_2219BAF0C(v2 + v31[241], v123, &qword_27CFB7FD0, &qword_221BD2888);
    v42 = v124;
    v43 = v119;
    if (v124)
    {
      v44 = v125;
      __swift_project_boxed_opaque_existential_0(v123, v124);
      v45 = v118;
      (*(v118 + 104))(v8, *MEMORY[0x277CD8AC8], v43);
      (*(v44 + 24))(v8, v42, v44);
      (*(v45 + 8))(v8, v43);
      __swift_destroy_boxed_opaque_existential_0(v123);
    }

    else
    {
      sub_2219EC58C(v123, &qword_27CFB7FD0);
    }

    v61 = *(v2 + qword_27CFBC768);
    if (v61)
    {
      v62 = *(v2 + qword_27CFBC768 + 8);
      sub_2219A1B08(v126, v123);
      sub_22198BEB8(v61);

      v63 = sub_221BCCD68();
      v64 = sub_221BCDA98();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v122 = v66;
        *v65 = 136315394;
        v67 = sub_2219CB3CC();
        v69 = sub_2219A6360(v67, v68, &v122);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;
        v70 = v61(v123);
        v72 = v71;
        __swift_destroy_boxed_opaque_existential_0(v123);
        v73 = sub_2219A6360(v70, v72, &v122);

        *(v65 + 14) = v73;
        _os_log_impl(&dword_221989000, v63, v64, "%s%s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v66, -1, -1);
        MEMORY[0x223DA4C00](v65, -1, -1);

        sub_22198B60C(v61);
LABEL_41:
        __swift_destroy_boxed_opaque_existential_0(v126);
        goto LABEL_42;
      }

      sub_22198B60C(v61);
    }

    else
    {
      sub_2219A1B08(v126, v123);

      v87 = sub_221BCCD68();
      v88 = sub_221BCDA98();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v122 = v90;
        *v89 = 136315394;
        v91 = sub_2219CB3CC();
        v93 = sub_2219A6360(v91, v92, &v122);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        v94 = sub_2219C0FF8(v123, *(v2 + qword_27CFDED20 + 17), &qword_27CFB7FB8, &qword_221BD2870, &qword_27CFB7FD8, &unk_221BD2890);
        v96 = v95;
        __swift_destroy_boxed_opaque_existential_0(v123);
        v97 = sub_2219A6360(v94, v96, &v122);

        *(v89 + 14) = v97;
        _os_log_impl(&dword_221989000, v87, v88, "%sCompleted with %s", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v90, -1, -1);
        MEMORY[0x223DA4C00](v89, -1, -1);

        goto LABEL_41;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v123);
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v31[241], v126, &qword_27CFB7FD0, &qword_221BD2888);
  v39 = v127;
  v40 = v119;
  if (v127)
  {
    v41 = v128;
    __swift_project_boxed_opaque_existential_0(v126, v127);
    sub_2219E7D00(v8);
    (*(v41 + 24))(v8, v39, v41);
    (*(v118 + 8))(v8, v40);
    __swift_destroy_boxed_opaque_existential_0(v126);
  }

  else
  {
    sub_2219EC58C(v126, &qword_27CFB7FD0);
  }

  v46 = *(v2 + qword_27CFBC770);
  if (v46)
  {
    v47 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v46);
    v48 = sub_221BCCD68();
    v49 = sub_221BCDA78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v126[0] = v51;
      *v50 = 136315394;
      v52 = sub_2219CB3CC();
      v54 = sub_2219A6360(v52, v53, v126);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = sub_221BCE198();
      v116 = v24;
      if (!v55)
      {
        v55 = swift_allocError();
      }

      v56 = v55;
      v57 = v46();
      v59 = v58;

      v60 = sub_2219A6360(v57, v59, v126);

      *(v50 + 14) = v60;
      _os_log_impl(&dword_221989000, v48, v49, "%s %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v51, -1, -1);
      MEMORY[0x223DA4C00](v50, -1, -1);
      sub_22198B60C(v46);

      v24 = v116;
    }

    else
    {

      sub_22198B60C(v46);
    }

    goto LABEL_42;
  }

  v74 = *(v2 + qword_27CFDED20 + 17);

  v75 = sub_221BCCD68();
  v76 = sub_221BCDA78();

  v77 = os_log_type_enabled(v75, v76);
  if (v74)
  {
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v126[0] = v79;
      *v78 = 136315395;
      v80 = sub_2219CB3CC();
      v82 = sub_2219A6360(v80, v81, v126);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2085;
      v83 = sub_221BCE288();
      v85 = sub_2219A6360(v83, v84, v126);

      *(v78 + 14) = v85;
      v86 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v75, v76, v86, v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v79, -1, -1);
      MEMORY[0x223DA4C00](v78, -1, -1);
    }
  }

  else if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v126[0] = v79;
    *v78 = 136315395;
    v98 = sub_2219CB3CC();
    v100 = sub_2219A6360(v98, v99, v126);

    *(v78 + 4) = v100;
    *(v78 + 12) = 2081;
    v101 = sub_221BCE288();
    v103 = sub_2219A6360(v101, v102, v126);

    *(v78 + 14) = v103;
    v86 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v104 = v121;
  v105 = v120;
  sub_2219E7E58(v24, v121, v120 == 1);
  if (v105 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v106 = *(v2 + 40);
    v107 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v121 = *(v2 + qword_27CFBC780);
      v116 = v24;
      v108 = *(v2 + qword_27CFBC780 + 8);
      v109 = *(v2 + qword_27CFBC780 + 16);
      v110 = sub_2219CB440();
      v112 = v111;
      *&v129 = 0;
      *(&v129 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v113 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v113);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v114 = v129;
      v115 = *&v117[v2];

      sub_221BB52B0(v121, v108, v109, v110, v112, v116, v104, v114, *(&v114 + 1));
    }
  }
}

void sub_2219D07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  v159 = v27;
  v157 = v28;
  v29 = sub_221BCCE38();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_5();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_163();
  v39 = sub_221BCDFB8();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_5();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_157();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v53);
    return;
  }

  v156 = v37;
  OUTLINED_FUNCTION_61_0();
  v55 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v21 + v55, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v56 = OUTLINED_FUNCTION_151(v22);
  v158 = 0;
  OUTLINED_FUNCTION_175(v56, &a17);
  if (!v57)
  {
    v58 = OUTLINED_FUNCTION_90(v42);
    v59(v58, v22, v39);
    sub_221BCDF88();
    v158 = sub_221BCDFA8();
    v22 = *(v42 + 8);
    v60 = OUTLINED_FUNCTION_118();
    (v22)(v60);
    v61 = OUTLINED_FUNCTION_16();
    (v22)(v61);
  }

  if (*(v21 + qword_27CFBC798))
  {
    v62 = *(v21 + qword_27CFBC798);

    OUTLINED_FUNCTION_110(v63);
  }

  v64 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a14);
  if (v65)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v64[241]);
    v47 = v161;
    if (v161)
    {
      v22 = v162;
      OUTLINED_FUNCTION_62_0(v160, v161);
      v66 = v32;
      v67 = v29;
      LOBYTE(v55) = v22 + 32;
      v68 = v22[4];

      OUTLINED_FUNCTION_3_11();
      v68();
      v64 = &unk_27CFBC000;
      v29 = v67;
      v32 = v66;

      __swift_destroy_boxed_opaque_existential_0(v160);
    }

    else
    {
      sub_2219EC58C(v160, &qword_27CFB7FD0);
    }
  }

  if ((v159 & 1) == 0)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v64[241]);
    v69 = v161;
    if (v161)
    {
      OUTLINED_FUNCTION_13_3();
      (*(v32 + 104))(v23, *MEMORY[0x277CD8AC8], v29);
      v75 = OUTLINED_FUNCTION_26_2();
      v76(v75);
      (*(v32 + 8))(v23, v29);
      __swift_destroy_boxed_opaque_existential_0(v160);
    }

    else
    {
      sub_2219EC58C(v160, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC768);
    if (v69)
    {
      v78 = *(v77 + 8);
      v79 = OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_228(v79);
      v80 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_246();
      if (os_log_type_enabled(v80, v55))
      {
        v81 = OUTLINED_FUNCTION_103();
        v160[0] = OUTLINED_FUNCTION_105();
        *v81 = 136315394;
        v82 = sub_2219CB3CC();
        OUTLINED_FUNCTION_102(v82, v83);
        v84 = OUTLINED_FUNCTION_128();
        *(v81 + 4) = v22;
        *(v81 + 12) = 2080;
        v85 = v69(v84);
        OUTLINED_FUNCTION_102(v85, v86);
        OUTLINED_FUNCTION_128();
        *(v81 + 14) = v22;
        _os_log_impl(&dword_221989000, v80, v55, "%s%s", v81, 0x16u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v87 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v87);

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v69 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_188();
    if (OUTLINED_FUNCTION_211())
    {
      OUTLINED_FUNCTION_103();
      v160[0] = OUTLINED_FUNCTION_43_0();
      v88 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v88, v89);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      v90 = sub_2219C1238(*(v26 + qword_27CFDED20 + 17));
      OUTLINED_FUNCTION_102(v90, v91);
      OUTLINED_FUNCTION_128();
      *(v29 + 14) = v22;
      OUTLINED_FUNCTION_51_0(&dword_221989000, v92, v93, "%sCompleted with %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
LABEL_42:
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v64[241]);
  v69 = v161;
  if (v161)
  {
    OUTLINED_FUNCTION_47();
    v70 = v157;
    OUTLINED_FUNCTION_244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v71 = sub_221BCE198();
      if (v71)
      {
        v72 = v71;
        v73 = OUTLINED_FUNCTION_119();
        sub_2219EBE10(v73, v74);
      }

      else
      {
        v72 = OUTLINED_FUNCTION_17_2();
        *v96 = v157;
      }

      v97 = sub_221BCC328();

      v98 = [v97 domain];
      v99 = sub_221BCD388();
      v101 = v100;

      v22 = [v97 code];
      v95 = v156;
      *v156 = v99;
      v156[1] = v101;
      v156[2] = v22;
      v94 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v94 = MEMORY[0x277CD8AC0];
      v95 = v156;
    }

    v47 = v29;
    (*(v32 + 104))(v95, *v94, v29);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v102();
    v103 = *(v32 + 8);
    LOBYTE(v32) = v32 + 8;
    v103(v95, v29);
    __swift_destroy_boxed_opaque_existential_0(v160);
  }

  else
  {
    sub_2219EC58C(v160, &qword_27CFB7FD0);
    v70 = v157;
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC770);
  if (!v69)
  {
    OUTLINED_FUNCTION_177(qword_27CFDED20);

    v119 = OUTLINED_FUNCTION_119();
    sub_2219EBE04(v119, v120);
    v69 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_153_0();
    v121 = OUTLINED_FUNCTION_119();
    sub_2219EBE10(v121, v122);
    v123 = OUTLINED_FUNCTION_169();
    if (v47)
    {
      if (v123)
      {
        OUTLINED_FUNCTION_103();
        v124 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_146(v124);
        v125 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v125, v126);
        OUTLINED_FUNCTION_128();
        *(v47 + 4) = v22;
        OUTLINED_FUNCTION_116(2085);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v127 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v127, v128);
        OUTLINED_FUNCTION_128();
        *(v47 + 14) = v22;
        v131 = "%sFailed with %{sensitive}s";
LABEL_41:
        OUTLINED_FUNCTION_41_0(&dword_221989000, v129, v130, v131);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_42;
      }
    }

    else if (v123)
    {
      OUTLINED_FUNCTION_103();
      v132 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_146(v132);
      v133 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v133, v134);
      OUTLINED_FUNCTION_128();
      *(v47 + 4) = v22;
      OUTLINED_FUNCTION_116(2081);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v135 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v135, v136);
      OUTLINED_FUNCTION_128();
      *(v47 + 14) = v22;
      v131 = "%sFailed with %{private}s";
      goto LABEL_41;
    }

LABEL_43:

    goto LABEL_48;
  }

  v105 = *(v104 + 8);

  v106 = OUTLINED_FUNCTION_119();
  sub_2219EBE04(v106, v107);
  v108 = OUTLINED_FUNCTION_1_0();
  v109 = OUTLINED_FUNCTION_207(v108);
  sub_221BCDA78();
  OUTLINED_FUNCTION_209();
  v110 = OUTLINED_FUNCTION_119();
  sub_2219EBE10(v110, v111);
  if (os_log_type_enabled(v109, v32))
  {
    v112 = OUTLINED_FUNCTION_103();
    v160[0] = OUTLINED_FUNCTION_105();
    v113 = OUTLINED_FUNCTION_248(4.8151e-34);
    OUTLINED_FUNCTION_102(v113, v114);
    OUTLINED_FUNCTION_128();
    *(v112 + 4) = v22;
    OUTLINED_FUNCTION_130();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v115 = OUTLINED_FUNCTION_208();
    if (v115)
    {
      v116 = v115;
      v117 = OUTLINED_FUNCTION_119();
      sub_2219EBE10(v117, v118);
    }

    else
    {
      v116 = OUTLINED_FUNCTION_112();
      *v137 = v70;
    }

    v69(v116);
    OUTLINED_FUNCTION_184();

    v138 = OUTLINED_FUNCTION_64();
    sub_2219A6360(v138, v70, v139);
    OUTLINED_FUNCTION_144();

    *(v112 + 14) = v105;
    OUTLINED_FUNCTION_247(&dword_221989000, v109, v32, "%s %s");
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

LABEL_47:
  v140 = OUTLINED_FUNCTION_1_0();
  sub_22198B60C(v140);
LABEL_48:
  OUTLINED_FUNCTION_48_0(&a17);
  OUTLINED_FUNCTION_191(v158, v141, v142);
  if (v69 != 1 && (*(v26 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    OUTLINED_FUNCTION_176(qword_27CFBC780);
    OUTLINED_FUNCTION_189(v143);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v144 = sub_221BCE3F8();
    v145 = OUTLINED_FUNCTION_101(v144, 1000.0);
    OUTLINED_FUNCTION_100(v145, v146, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v147 = v160[1];
    OUTLINED_FUNCTION_77(&a14);
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v148, v149, v150, v151, v152, v153, v154, v155, v147);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D12F8()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v4 = v3;
  v5 = sub_221BCCE38();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  v14 = sub_221BCDFB8();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v24);
  v26 = &v116 - v25;
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v27);
    return;
  }

  LODWORD(v120) = v4;
  v118 = v8;
  OUTLINED_FUNCTION_61_0();
  v29 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v0 + v29, v26, &qword_27CFB7FC8, &qword_221BD2880);
  v30 = OUTLINED_FUNCTION_151(v26);
  v31 = 0;
  v121 = 0;
  v119 = v30;
  if (v30 != 1)
  {
    v32 = OUTLINED_FUNCTION_90(v17);
    v33(v32, v26, v14);
    sub_221BCDF88();
    v31 = sub_221BCDFA8();
    v121 = v34;
    v35 = *(v17 + 8);
    LOBYTE(v29) = v35;
    v36 = OUTLINED_FUNCTION_24();
    v35(v36);
    v37 = OUTLINED_FUNCTION_16();
    v35(v37);
  }

  if (*(v0 + qword_27CFBC798))
  {
    v38 = *(v0 + qword_27CFBC798);

    OUTLINED_FUNCTION_160(v39);
  }

  v40 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v117 = v40;
  v41 = *&v40[v2];
  v42 = &unk_27CFBC000;
  v43 = v120;
  if (!*(v41 + 16))
  {
LABEL_12:
    if (v43)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v1 = v124;
  if (v124)
  {
    v44 = v125;
    OUTLINED_FUNCTION_62_0(&v122, v124);
    v26 = v5;
    v45 = v31;
    LOBYTE(v29) = v44 + 32;
    v46 = *(v44 + 32);

    OUTLINED_FUNCTION_3_11();
    v42 = &unk_27CFBC000;
    v46();
    v43 = v120;
    v31 = v45;
    v5 = v26;

    __swift_destroy_boxed_opaque_existential_0(&v122);
    goto LABEL_12;
  }

  sub_2219EC58C(&v122, &qword_27CFB7FD0);
  if (v43)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v47 = v124;
    if (v124)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2219E7D00(v13);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_56_0();
      v48();
      v49 = *(v118 + 8);
      v50 = OUTLINED_FUNCTION_221();
      v51(v50);
      __swift_destroy_boxed_opaque_existential_0(&v122);
    }

    else
    {
      sub_2219EC58C(&v122, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC770);
    if (v47)
    {
      v59 = *(v58 + 8);

      v60 = OUTLINED_FUNCTION_72();
      v61 = OUTLINED_FUNCTION_207(v60);
      sub_221BCDA78();
      OUTLINED_FUNCTION_251();
      if (os_log_type_enabled(v61, v26))
      {
        v62 = OUTLINED_FUNCTION_103();
        v122 = OUTLINED_FUNCTION_105();
        v63 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_102(v63, v64);
        OUTLINED_FUNCTION_148();
        *(v62 + 4) = &unk_27CFBC000;
        OUTLINED_FUNCTION_173();
        v65 = sub_221BCE198();
        v116 = v31;
        if (!v65)
        {
          v65 = OUTLINED_FUNCTION_17_2();
        }

        v66 = v65;
        v47();
        OUTLINED_FUNCTION_143();

        v67 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v67, v31, v68);
        OUTLINED_FUNCTION_97();

        *(v62 + 14) = v59;
        OUTLINED_FUNCTION_214(&dword_221989000, v61, v26, "%s %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v69 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v69);

        v31 = v116;
        goto LABEL_38;
      }

LABEL_28:

      v78 = OUTLINED_FUNCTION_72();
      sub_22198B60C(v78);
      goto LABEL_38;
    }

    v79 = *(v2 + qword_27CFDED20 + 17);

    v80 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    v81 = os_log_type_enabled(v80, v5);
    if (v79)
    {
      if (v81)
      {
        OUTLINED_FUNCTION_103();
        v82 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_146(v82);
        v83 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v83, v84);
        OUTLINED_FUNCTION_148();
        *(v79 + 4) = &unk_27CFBC000;
        *(v79 + 12) = 2085;
        v85 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v85, v86);
        OUTLINED_FUNCTION_148();
        *(v79 + 14) = &unk_27CFBC000;
        v87 = "%sFailed with %{sensitive}s";
LABEL_36:
        OUTLINED_FUNCTION_154(&dword_221989000, v80, v5, v87);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_37;
      }
    }

    else if (v81)
    {
      OUTLINED_FUNCTION_103();
      v93 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_146(v93);
      v94 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v94, v95);
      OUTLINED_FUNCTION_148();
      *(v79 + 4) = &unk_27CFBC000;
      *(v79 + 12) = 2081;
      v96 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v96, v97);
      OUTLINED_FUNCTION_148();
      *(v79 + 14) = &unk_27CFBC000;
      v87 = "%sFailed with %{private}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v52 = v124;
  if (v124)
  {
    OUTLINED_FUNCTION_13_3();
    v53 = v118;
    (*(v118 + 104))(v13, *MEMORY[0x277CD8AC8], v5);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v54();
    v55 = *(v53 + 8);
    v42 = (v53 + 8);
    v56 = OUTLINED_FUNCTION_221();
    v57(v56);
    __swift_destroy_boxed_opaque_existential_0(&v122);
  }

  else
  {
    sub_2219EC58C(&v122, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC768);
  if (v52)
  {
    v71 = *(v70 + 8);
    v72 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_228(v72);
    v61 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_209();
    if (os_log_type_enabled(v61, v29))
    {
      OUTLINED_FUNCTION_103();
      v122 = OUTLINED_FUNCTION_43_0();
      v73 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v73, v74);
      OUTLINED_FUNCTION_148();
      *(v1 + 4) = v42;
      OUTLINED_FUNCTION_83();
      v75 = v52();
      OUTLINED_FUNCTION_102(v75, v76);
      OUTLINED_FUNCTION_148();
      *(v1 + 14) = v42;
      OUTLINED_FUNCTION_154(&dword_221989000, v61, v29, "%s%s");
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v77 = OUTLINED_FUNCTION_72();
      sub_22198B60C(v77);

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v80 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_249();
  if (os_log_type_enabled(v80, v5))
  {
    OUTLINED_FUNCTION_103();
    v88 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_146(v88);
    v89 = OUTLINED_FUNCTION_134(4.8151e-34);
    OUTLINED_FUNCTION_102(v89, v90);
    OUTLINED_FUNCTION_148();
    *(v1 + 4) = v42;
    OUTLINED_FUNCTION_83();
    v91 = sub_2219C1238(*(v2 + qword_27CFDED20 + 17));
    OUTLINED_FUNCTION_102(v91, v92);
    OUTLINED_FUNCTION_148();
    *(v1 + 14) = v42;
    v87 = "%sCompleted with %s";
    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v98 = v119;
  v99 = v121;
  sub_2219E7E58(v31, v121, v119 == 1);
  if (v98 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v100 = *(v2 + 40);
    v101 = *(v2 + 48);
    if (sub_221BCE408())
    {
      OUTLINED_FUNCTION_140();
      if ((sub_221BCE408() & 1) == 0)
      {
        v120 = *(v2 + qword_27CFBC780);
        v116 = v31;
        v102 = *(v2 + qword_27CFBC780 + 8);
        v103 = *(v2 + qword_27CFBC780 + 16);
        sub_2219CB440();
        v122 = 0;
        v123 = 0xE000000000000000;
        sub_221BCDE68();
        v104 = OUTLINED_FUNCTION_63_0();
        MEMORY[0x223DA31F0](v104);

        OUTLINED_FUNCTION_28_1();
        v105 = sub_221BCE3F8();
        v106 = OUTLINED_FUNCTION_101(v105, 1000.0);
        OUTLINED_FUNCTION_100(v106, v107, 1.0e-15);
        sub_221BCD978();
        OUTLINED_FUNCTION_168();
        v108 = v122;
        v109 = v123;
        v110 = *&v117[v2];

        OUTLINED_FUNCTION_7_4();
        v116 = v109;
        OUTLINED_FUNCTION_217();
        sub_221BB52B0(v111, v112, v113, v114, v115, v116, v99, v108, v116);
        OUTLINED_FUNCTION_155();
      }
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D1C88(uint64_t a1)
{
  v2 = v1;
  v168 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v164 = (&v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v162 = &v157 - v8;
  v161 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v9 = *(*(v161 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v165 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v163 = &v157 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v157 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80E8, &qword_221BD29F0);
  v16 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v18 = (&v157 - v17);
  v19 = sub_221BCDFB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v157 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v157 - v29;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v159 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v31 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v31, v30, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v19);
  v33 = 0;
  v166 = 0;
  v160 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v20 + 32))(v26, v30, v19);
    sub_221BCDF88();
    v33 = sub_221BCDFA8();
    v166 = v34;
    v35 = *(v20 + 8);
    v35(v24, v19);
    v35(v26, v19);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v36 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v37, v2);
  }

  v38 = off_27CFBC778;
  swift_beginAccess();
  v158 = v38;
  v39 = *&v38[v2];
  v40 = &unk_27CFBC000;
  if (*(v39 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v171, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v173;
    if (v173)
    {
      v42 = v174;
      __swift_project_boxed_opaque_existential_0(&v171, v173);
      v157 = v3;
      v43 = *(v42 + 32);

      v43(v44, 0x697274654D736961, 0xEA00000000007363, v41, v42);
      v40 = &unk_27CFBC000;
      v3 = v157;

      __swift_destroy_boxed_opaque_existential_0(&v171);
    }

    else
    {
      sub_2219EC58C(&v171, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v168, v18, &qword_27CFB80E8, &qword_221BD29F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v18;
    sub_2219BAF0C(v2 + v40[241], &v171, &qword_27CFB7FD0, &qword_221BD2888);
    v46 = v173;
    if (v173)
    {
      v47 = v174;
      __swift_project_boxed_opaque_existential_0(&v171, v173);
      v170 = v45;
      v48 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        v168 = v33;
        __swift_destroy_boxed_opaque_existential_0(v169);
        v169[0] = v45;
        v49 = v45;
        v50 = sub_221BCE198();
        if (v50)
        {
          v51 = v50;
          v52 = v3;
        }

        else
        {
          v52 = v3;
          v51 = swift_allocError();
          *v94 = v45;
        }

        v95 = sub_221BCC328();

        v96 = [v95 domain];
        v97 = sub_221BCD388();
        v99 = v98;

        v100 = [v95 code];
        v101 = v164;
        *v164 = v97;
        v101[1] = v99;
        v101[2] = v100;
        v93 = v101;
        v92 = MEMORY[0x277CD8AB8];
        v3 = v52;
        v33 = v168;
      }

      else
      {
        v92 = MEMORY[0x277CD8AC0];
        v93 = v164;
      }

      v102 = v159;
      (*(v159 + 104))(v93, *v92, v3);
      (*(v47 + 24))(v93, v46, v47);
      (*(v102 + 8))(v93, v3);
      __swift_destroy_boxed_opaque_existential_0(&v171);
    }

    else
    {
      sub_2219EC58C(&v171, &qword_27CFB7FD0);
    }

    v103 = *(v2 + qword_27CFBC770);
    if (v103)
    {
      v104 = *(v2 + qword_27CFBC770 + 8);
      v105 = v45;

      v106 = v45;
      sub_22198BEB8(v103);
      v107 = sub_221BCCD68();
      v108 = sub_221BCDA78();

      if (os_log_type_enabled(v107, v108))
      {
        v168 = v33;
        v109 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v171 = v167;
        *v109 = 136315394;
        v110 = sub_2219CB3CC();
        v112 = sub_2219A6360(v110, v111, &v171);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2080;
        v169[0] = v45;
        v113 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v114 = sub_221BCE198();
        if (v114)
        {
          v115 = v114;
        }

        else
        {
          v115 = swift_allocError();
          *v138 = v45;
        }

        v139 = v103(v115);
        v141 = v140;

        v142 = sub_2219A6360(v139, v141, &v171);

        *(v109 + 14) = v142;
        _os_log_impl(&dword_221989000, v107, v108, "%s %s", v109, 0x16u);
        v143 = v167;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v143, -1, -1);
        MEMORY[0x223DA4C00](v109, -1, -1);

        sub_22198B60C(v103);
        v33 = v168;
        goto LABEL_50;
      }

      sub_22198B60C(v103);
LABEL_47:

      goto LABEL_50;
    }

    v116 = *(v2 + qword_27CFDED20 + 17);

    v117 = v45;
    v118 = sub_221BCCD68();
    v119 = sub_221BCDA78();

    v120 = os_log_type_enabled(v118, v119);
    if (v116)
    {
      if (v120)
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v171 = v122;
        *v121 = 136315395;
        v123 = sub_2219CB3CC();
        v125 = sub_2219A6360(v123, v124, &v171);

        *(v121 + 4) = v125;
        *(v121 + 12) = 2085;
        v169[0] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v126 = sub_221BCE288();
        v128 = v127;

        v129 = sub_2219A6360(v126, v128, &v171);

        *(v121 + 14) = v129;
        v130 = "%sFailed with %{sensitive}s";
LABEL_44:
        _os_log_impl(&dword_221989000, v118, v119, v130, v121, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v122, -1, -1);
        MEMORY[0x223DA4C00](v121, -1, -1);
LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v120)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v171 = v122;
      *v121 = 136315395;
      v131 = sub_2219CB3CC();
      v133 = sub_2219A6360(v131, v132, &v171);

      *(v121 + 4) = v133;
      *(v121 + 12) = 2081;
      v169[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v134 = sub_221BCE288();
      v136 = v135;

      v137 = sub_2219A6360(v134, v136, &v171);

      *(v121 + 14) = v137;
      v130 = "%sFailed with %{private}s";
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  sub_2219EC2D8(v18, v15, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  sub_2219BAF0C(v2 + v40[241], &v171, &qword_27CFB7FD0, &qword_221BD2888);
  v53 = v173;
  if (v173)
  {
    v54 = v174;
    __swift_project_boxed_opaque_existential_0(&v171, v173);
    v55 = v159;
    v56 = v162;
    (*(v159 + 104))(v162, *MEMORY[0x277CD8AC8], v3);
    (*(v54 + 24))(v56, v53, v54);
    (*(v55 + 8))(v56, v3);
    __swift_destroy_boxed_opaque_existential_0(&v171);
  }

  else
  {
    sub_2219EC58C(&v171, &qword_27CFB7FD0);
  }

  v57 = v165;
  v58 = *(v2 + qword_27CFBC768);
  if (v58)
  {
    v59 = *(v2 + qword_27CFBC768 + 8);
    v60 = v163;
    sub_2219EC27C(v15, v163, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    sub_22198BEB8(v58);

    v61 = v15;
    v62 = sub_221BCCD68();
    v63 = sub_221BCDA98();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v168 = v61;
      v65 = v64;
      v167 = swift_slowAlloc();
      v171 = v167;
      *v65 = 136315394;
      v66 = sub_2219CB3CC();
      v68 = sub_2219A6360(v66, v67, &v171);
      v165 = v59;
      v69 = v33;
      v70 = v68;

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = v58(v60);
      v73 = v72;
      sub_2219EC334(v60, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v74 = v71;
      v33 = v69;
      v75 = sub_2219A6360(v74, v73, &v171);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_221989000, v62, v63, "%s%s", v65, 0x16u);
      v76 = v167;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v76, -1, -1);
      MEMORY[0x223DA4C00](v65, -1, -1);

      sub_22198B60C(v58);
      v77 = v168;
    }

    else
    {

      sub_22198B60C(v58);
      sub_2219EC334(v60, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v77 = v61;
    }
  }

  else
  {
    sub_2219EC27C(v15, v165, type metadata accessor for AppIntentsProtocol.PerformAction.Response);

    v78 = sub_221BCCD68();
    v79 = sub_221BCDA98();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v168 = v15;
      v82 = v81;
      v169[0] = v81;
      *v80 = 136315394;
      v83 = sub_2219CB3CC();
      v85 = sub_2219A6360(v83, v84, v169);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = *(v2 + qword_27CFDED20 + 17);
      v173 = v161;
      v174 = sub_2219EBDBC(&qword_27CFB80E0, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v87 = __swift_allocate_boxed_opaque_existential_1(&v171);
      sub_2219EC27C(v57, v87, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      __swift_project_boxed_opaque_existential_0(&v171, v173);
      LOBYTE(v170) = v86;
      v88 = sub_221AE7974(&v170);
      v90 = v89;
      sub_2219EC334(v57, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      __swift_destroy_boxed_opaque_existential_0(&v171);
      v91 = sub_2219A6360(v88, v90, v169);

      *(v80 + 14) = v91;
      _os_log_impl(&dword_221989000, v78, v79, "%sCompleted with %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v82, -1, -1);
      MEMORY[0x223DA4C00](v80, -1, -1);

      v77 = v168;
    }

    else
    {

      sub_2219EC334(v57, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v77 = v15;
    }
  }

  sub_2219EC334(v77, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
LABEL_50:
  v144 = v160;
  v145 = v166;
  sub_2219E7E58(v33, v166, v160 == 1);
  if (v144 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v146 = *(v2 + 40);
    v147 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v148 = *(v2 + qword_27CFBC780);
      v167 = *(v2 + qword_27CFBC780 + 8);
      v168 = v148;
      v149 = *(v2 + qword_27CFBC780 + 16);
      v150 = sub_2219CB440();
      v152 = v151;
      v171 = 0;
      v172 = 0xE000000000000000;
      sub_221BCDE68();
      v153 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v153);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v154 = v171;
      v155 = v172;
      v156 = *&v158[v2];

      sub_221BB52B0(v168, v167, v149, v150, v152, v33, v145, v154, v155);
    }
  }
}

void sub_2219D2F44(uint64_t (*a1)(uint64_t a1))
{
  v2 = v1;
  v142 = a1;
  v3 = sub_221BCCE38();
  v139 = *(v3 - 8);
  v140 = v3;
  v4 = *(v139 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v7 = *(*(v135 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v135);
  v136 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v131 - v11;
  MEMORY[0x28223BE20](v10);
  v141 = &v131 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80D8, &qword_221BD29E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v131 - v16;
  v18 = sub_221BCDFB8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v131 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v131 - v28;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v133 = v12;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v30 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v30, v29, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v18);
  v137 = 0;
  v138 = 0;
  v134 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v19 + 32))(v25, v29, v18);
    sub_221BCDF88();
    v32 = sub_221BCDFA8();
    v137 = v33;
    v138 = v32;
    v34 = *(v19 + 8);
    v34(v23, v18);
    v34(v25, v18);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v35 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v36, v2);
  }

  v37 = off_27CFBC778;
  swift_beginAccess();
  v132 = v37;
  v38 = *&v37[v2];
  v39 = &unk_27CFBC000;
  if (*(v38 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v145, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v147;
    if (v147)
    {
      v41 = v148;
      __swift_project_boxed_opaque_existential_0(&v145, v147);
      v42 = *(v41 + 32);

      v42(v43, 0x697274654D736961, 0xEA00000000007363, v40, v41);
      v39 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(&v145);
    }

    else
    {
      sub_2219EC58C(&v145, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v142, v17, &qword_27CFB80D8, &qword_221BD29E8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v46 = v141;
    sub_2219EC2D8(v17, v141, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    sub_2219BAF0C(v2 + v39[241], &v145, &qword_27CFB7FD0, &qword_221BD2888);
    v47 = v147;
    if (v147)
    {
      v48 = v148;
      __swift_project_boxed_opaque_existential_0(&v145, v147);
      v50 = v139;
      v49 = v140;
      (*(v139 + 104))(v6, *MEMORY[0x277CD8AC8], v140);
      (*(v48 + 24))(v6, v47, v48);
      (*(v50 + 8))(v6, v49);
      __swift_destroy_boxed_opaque_existential_0(&v145);
    }

    else
    {
      sub_2219EC58C(&v145, &qword_27CFB7FD0);
    }

    v66 = v136;
    v67 = *(v2 + qword_27CFBC768);
    if (v67)
    {
      v68 = *(v2 + qword_27CFBC768 + 8);
      v69 = v133;
      sub_2219EC27C(v46, v133, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      sub_22198BEB8(v67);

      v70 = sub_221BCCD68();
      v71 = sub_221BCDA98();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v145 = v73;
        *v72 = 136315394;
        v74 = sub_2219CB3CC();
        v76 = sub_2219A6360(v74, v75, &v145);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2080;
        v77 = v67(v69);
        v79 = v78;
        v142 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
        sub_2219EC334(v69, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        v80 = sub_2219A6360(v77, v79, &v145);

        *(v72 + 14) = v80;
        _os_log_impl(&dword_221989000, v70, v71, "%s%s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v73, -1, -1);
        MEMORY[0x223DA4C00](v72, -1, -1);

        sub_22198B60C(v67);
        v81 = v141;
        v82 = v142;
LABEL_41:
        sub_2219EC334(v81, v82);
        goto LABEL_42;
      }

      sub_22198B60C(v67);
      v110 = v69;
    }

    else
    {
      sub_2219EC27C(v46, v136, type metadata accessor for AppIntentsProtocol.PerformAction.Response);

      v96 = sub_221BCCD68();
      v97 = sub_221BCDA98();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v144 = v99;
        *v98 = 136315394;
        v100 = sub_2219CB3CC();
        v102 = sub_2219A6360(v100, v101, &v144);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        v103 = v46;
        v104 = *(v2 + qword_27CFDED20 + 17);
        v147 = v135;
        v148 = sub_2219EBDBC(&qword_27CFB80E0, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        v105 = __swift_allocate_boxed_opaque_existential_1(&v145);
        sub_2219EC27C(v66, v105, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        __swift_project_boxed_opaque_existential_0(&v145, v147);
        v143 = v104;
        v106 = sub_221AE7974(&v143);
        v108 = v107;
        sub_2219EC334(v66, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        __swift_destroy_boxed_opaque_existential_0(&v145);
        v109 = sub_2219A6360(v106, v108, &v144);

        *(v98 + 14) = v109;
        _os_log_impl(&dword_221989000, v96, v97, "%sCompleted with %s", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v99, -1, -1);
        MEMORY[0x223DA4C00](v98, -1, -1);

        v81 = v103;
        v82 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
        goto LABEL_41;
      }

      v110 = v66;
    }

    sub_2219EC334(v110, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    v81 = v46;
    v82 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v39[241], &v145, &qword_27CFB7FD0, &qword_221BD2888);
  v44 = v147;
  if (v147)
  {
    v45 = v148;
    __swift_project_boxed_opaque_existential_0(&v145, v147);
    sub_2219E7D00(v6);
    (*(v45 + 24))(v6, v44, v45);
    (*(v139 + 8))(v6, v140);
    __swift_destroy_boxed_opaque_existential_0(&v145);
  }

  else
  {
    sub_2219EC58C(&v145, &qword_27CFB7FD0);
  }

  v51 = *(v2 + qword_27CFBC770);
  if (v51)
  {
    v52 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v51);
    v53 = sub_221BCCD68();
    v54 = sub_221BCDA78();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v145 = v56;
      *v55 = 136315394;
      v57 = sub_2219CB3CC();
      v59 = sub_2219A6360(v57, v58, &v145);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v60 = sub_221BCE198();
      if (!v60)
      {
        v60 = swift_allocError();
      }

      v61 = v60;
      v62 = v51();
      v64 = v63;

      v65 = sub_2219A6360(v62, v64, &v145);

      *(v55 + 14) = v65;
      _os_log_impl(&dword_221989000, v53, v54, "%s %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v56, -1, -1);
      MEMORY[0x223DA4C00](v55, -1, -1);
      sub_22198B60C(v51);
    }

    else
    {

      sub_22198B60C(v51);
    }

    goto LABEL_42;
  }

  v83 = *(v2 + qword_27CFDED20 + 17);

  v84 = sub_221BCCD68();
  v85 = sub_221BCDA78();

  v86 = os_log_type_enabled(v84, v85);
  if (v83)
  {
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v145 = v88;
      *v87 = 136315395;
      v89 = sub_2219CB3CC();
      v91 = sub_2219A6360(v89, v90, &v145);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2085;
      v92 = sub_221BCE288();
      v94 = sub_2219A6360(v92, v93, &v145);

      *(v87 + 14) = v94;
      v95 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v84, v85, v95, v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v88, -1, -1);
      MEMORY[0x223DA4C00](v87, -1, -1);
    }
  }

  else if (v86)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v145 = v88;
    *v87 = 136315395;
    v111 = sub_2219CB3CC();
    v113 = sub_2219A6360(v111, v112, &v145);

    *(v87 + 4) = v113;
    *(v87 + 12) = 2081;
    v114 = sub_221BCE288();
    v116 = sub_2219A6360(v114, v115, &v145);

    *(v87 + 14) = v116;
    v95 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v117 = v134;
  v119 = v137;
  v118 = v138;
  sub_2219E7E58(v138, v137, v134 == 1);
  if (v117 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v120 = *(v2 + 40);
    v121 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v122 = *(v2 + qword_27CFBC780);
      v141 = *(v2 + qword_27CFBC780 + 8);
      v142 = v122;
      v123 = *(v2 + qword_27CFBC780 + 16);
      v124 = sub_2219CB440();
      v126 = v125;
      v145 = 0;
      v146 = 0xE000000000000000;
      sub_221BCDE68();
      v127 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v127);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v128 = v145;
      v129 = v146;
      v130 = *&v132[v2];

      sub_221BB52B0(v142, v141, v123, v124, v126, v118, v119, v128, v129);
    }
  }
}

void sub_2219D3F00(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v138 = *(a1 + 16);
  v142 = v4;
  v137 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v141 = *(v5 - 8);
  v6 = *(v141 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v133 - v10;
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v133 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v133 - v22;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v135 = v9;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v24 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v24, v23, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v12);
  v140 = 0;
  v139 = 0;
  v136 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v19, v23, v12);
    sub_221BCDF88();
    v140 = sub_221BCDFA8();
    v139 = v26;
    v27 = *(v13 + 8);
    v27(v17, v12);
    v27(v19, v12);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v28 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v29, v2);
  }

  v30 = off_27CFBC778;
  swift_beginAccess();
  v134 = v30;
  v31 = *&v30[v2];
  v32 = &unk_27CFBC000;
  if (*(v31 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v147, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = *(&v148 + 1);
    if (*(&v148 + 1))
    {
      v34 = v149;
      __swift_project_boxed_opaque_existential_0(&v147, *(&v148 + 1));
      v35 = v3;
      v36 = v5;
      v37 = *(v34 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v33, v34);
      v32 = &unk_27CFBC000;
      v5 = v36;
      v3 = v35;

      __swift_destroy_boxed_opaque_existential_0(&v147);
    }

    else
    {
      sub_2219EC58C(&v147, &qword_27CFB7FD0);
    }
  }

  if (*(v3 + 33))
  {
    v39 = v5;
    v40 = v142;
    sub_2219BAF0C(v2 + v32[241], &v147, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = *(&v148 + 1);
    if (*(&v148 + 1))
    {
      v42 = v149;
      v43 = __swift_project_boxed_opaque_existential_0(&v147, *(&v148 + 1));
      v146 = v40;
      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v143);
        *&v143 = v40;
        v45 = v40;
        v46 = sub_221BCE198();
        *&v142 = v43;
        if (v46)
        {
          v47 = v46;
          sub_2219EC58C(v3, &unk_27CFB81B0);
        }

        else
        {
          v47 = swift_allocError();
          *v76 = v40;
        }

        v77 = sub_221BCC328();

        v78 = [v77 domain];
        v79 = sub_221BCD388();
        v81 = v80;

        v82 = [v77 code];
        v74 = v135;
        *v135 = v79;
        v74[1] = v81;
        v74[2] = v82;
        v73 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v73 = MEMORY[0x277CD8AC0];
        v74 = v135;
      }

      v83 = v141;
      (*(v141 + 104))(v74, *v73, v39);
      (*(v42 + 24))(v74, v41, v42);
      (*(v83 + 8))(v74, v39);
      __swift_destroy_boxed_opaque_existential_0(&v147);
    }

    else
    {
      sub_2219EC58C(&v147, &qword_27CFB7FD0);
    }

    v84 = *(v2 + qword_27CFBC770);
    if (v84)
    {
      v85 = v40;
      v86 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v3, &v147, &unk_27CFB81B0, &qword_221BD2B00);
      sub_22198BEB8(v84);
      v87 = sub_221BCCD68();
      v88 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *&v142 = swift_slowAlloc();
        *&v147 = v142;
        *v89 = 136315394;
        v90 = sub_2219CB3CC();
        v92 = sub_2219A6360(v90, v91, &v147);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2080;
        *&v143 = v85;
        v93 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v94 = sub_221BCE198();
        if (v94)
        {
          v95 = v94;
          sub_2219EC58C(v3, &unk_27CFB81B0);
        }

        else
        {
          v95 = swift_allocError();
          *v114 = v85;
        }

        v115 = v84(v95);
        v117 = v116;

        v118 = sub_2219A6360(v115, v117, &v147);

        *(v89 + 14) = v118;
        _os_log_impl(&dword_221989000, v87, v88, "%s %s", v89, 0x16u);
        v119 = v142;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v119, -1, -1);
        MEMORY[0x223DA4C00](v89, -1, -1);
      }

      v75 = v84;
      goto LABEL_47;
    }

    v96 = *(v2 + qword_27CFDED20 + 17);

    if (v96)
    {
      sub_2219BAF0C(v3, &v147, &unk_27CFB81B0, &qword_221BD2B00);
      v97 = sub_221BCCD68();
      v98 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v147 = v100;
        *v99 = 136315395;
        v101 = sub_2219CB3CC();
        v103 = sub_2219A6360(v101, v102, &v147);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2085;
        *&v143 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v104 = sub_221BCE288();
        v106 = sub_2219A6360(v104, v105, &v147);

        *(v99 + 14) = v106;
        v107 = "%sFailed with %{sensitive}s";
LABEL_42:
        _os_log_impl(&dword_221989000, v97, v98, v107, v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v100, -1, -1);
        MEMORY[0x223DA4C00](v99, -1, -1);
      }
    }

    else
    {
      sub_2219BAF0C(v3, &v147, &unk_27CFB81B0, &qword_221BD2B00);
      v97 = sub_221BCCD68();
      v98 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v147 = v100;
        *v99 = 136315395;
        v108 = sub_2219CB3CC();
        v110 = sub_2219A6360(v108, v109, &v147);

        *(v99 + 4) = v110;
        *(v99 + 12) = 2081;
        *&v143 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v111 = sub_221BCE288();
        v113 = sub_2219A6360(v111, v112, &v147);

        *(v99 + 14) = v113;
        v107 = "%sFailed with %{private}s";
        goto LABEL_42;
      }
    }

    goto LABEL_48;
  }

  v143 = v142;
  v144 = v138;
  v145 = v137 & 1;
  sub_2219BAF0C(v2 + v32[241], &v147, &qword_27CFB7FD0, &qword_221BD2888);
  v48 = *(&v148 + 1);
  if (*(&v148 + 1))
  {
    v49 = v149;
    __swift_project_boxed_opaque_existential_0(&v147, *(&v148 + 1));
    v50 = v141;
    (*(v141 + 104))(v11, *MEMORY[0x277CD8AC8], v5);
    (*(v49 + 24))(v11, v48, v49);
    (*(v50 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_0(&v147);
  }

  else
  {
    sub_2219EC58C(&v147, &qword_27CFB7FD0);
  }

  v51 = *(v2 + qword_27CFBC768);
  if (!v51)
  {

    sub_2219BAF0C(v3, &v147, &unk_27CFB81B0, &qword_221BD2B00);
    v63 = sub_221BCCD68();
    v64 = sub_221BCDA98();

    sub_2219EC58C(v3, &unk_27CFB81B0);
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v147 = v66;
      *v65 = 136315394;
      v67 = sub_2219CB3CC();
      v69 = sub_2219A6360(v67, v68, &v147);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = sub_2219C13A0(&v143, *(v2 + qword_27CFDED20 + 17));
      v72 = sub_2219A6360(v70, v71, &v147);

      *(v65 + 14) = v72;
      _os_log_impl(&dword_221989000, v63, v64, "%sCompleted with %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v66, -1, -1);
      MEMORY[0x223DA4C00](v65, -1, -1);
    }

    goto LABEL_48;
  }

  v52 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768));

  sub_2219BAF0C(v3, &v147, &unk_27CFB81B0, &qword_221BD2B00);
  v53 = sub_221BCCD68();
  v54 = sub_221BCDA98();

  sub_2219EC58C(v3, &unk_27CFB81B0);
  if (!os_log_type_enabled(v53, v54))
  {

    v75 = v51;
LABEL_47:
    sub_22198B60C(v75);
    goto LABEL_48;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v146 = v56;
  *v55 = 136315394;
  v57 = sub_2219CB3CC();
  v59 = sub_2219A6360(v57, v58, &v146);

  *(v55 + 4) = v59;
  *(v55 + 12) = 2080;
  v147 = v143;
  v148 = v144;
  LOBYTE(v149) = v145;
  v60 = v51(&v147);
  v62 = sub_2219A6360(v60, v61, &v146);

  *(v55 + 14) = v62;
  _os_log_impl(&dword_221989000, v53, v54, "%s%s", v55, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v56, -1, -1);
  MEMORY[0x223DA4C00](v55, -1, -1);
  sub_22198B60C(v51);

LABEL_48:
  v120 = v140;
  v121 = v139;
  v122 = v136;
  sub_2219E7E58(v140, v139, v136 == 1);
  if (v122 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v123 = *(v2 + 40);
    v124 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v125 = *(v2 + qword_27CFBC780 + 8);
      *&v142 = *(v2 + qword_27CFBC780);
      v141 = v125;
      v126 = *(v2 + qword_27CFBC780 + 16);
      v127 = sub_2219CB440();
      v129 = v128;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v130 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v130);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v131 = v147;
      v132 = *&v134[v2];

      sub_221BB52B0(v142, v141, v126, v127, v129, v120, v121, v131, *(&v131 + 1));
    }
  }
}

void sub_2219D4FC4(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v121 = *(a1 + 16);
  v119 = v4;
  v120 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v115 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v115 - v20;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v117 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v10);
  v24 = 0;
  v122 = 0;
  v118 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v17, v21, v10);
    sub_221BCDF88();
    v25 = v6;
    v26 = sub_221BCDFA8();
    v122 = v27;
    v28 = *(v11 + 8);
    v28(v15, v10);
    v28(v17, v10);
    v24 = v26;
    v6 = v25;
  }

  if (*(v2 + qword_27CFBC798))
  {
    v29 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v30, v2);
  }

  v31 = off_27CFBC778;
  swift_beginAccess();
  v115 = v31;
  v32 = *&v31[v2];
  v33 = &unk_27CFBC000;
  if (*(v32 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v124, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = *(&v125 + 1);
    if (*(&v125 + 1))
    {
      v35 = v126;
      __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
      v116 = v24;
      v36 = v2;
      v37 = v9;
      v38 = v6;
      v39 = *(v35 + 32);

      v39(v40, 0x697274654D736961, 0xEA00000000007363, v34, v35);
      v33 = &unk_27CFBC000;
      v6 = v38;
      v9 = v37;
      v2 = v36;
      v24 = v116;

      __swift_destroy_boxed_opaque_existential_0(&v124);
    }

    else
    {
      sub_2219EC58C(&v124, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 33))
  {
    sub_2219BAF0C(v2 + v33[241], &v124, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = *(&v125 + 1);
    if (*(&v125 + 1))
    {
      v42 = v126;
      __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
      sub_2219E7D00(v9);
      (*(v42 + 24))(v9, v41, v42);
      (*(v6 + 8))(v9, v117);
      __swift_destroy_boxed_opaque_existential_0(&v124);
    }

    else
    {
      sub_2219EC58C(&v124, &qword_27CFB7FD0);
    }

    v46 = *(v2 + qword_27CFBC770);
    if (v46)
    {
      v47 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v46);
      v48 = sub_221BCCD68();
      v49 = sub_221BCDA78();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v124 = v51;
        *v50 = 136315394;
        v52 = sub_2219CB3CC();
        v54 = sub_2219A6360(v52, v53, &v124);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = sub_221BCE198();
        v116 = v24;
        if (!v55)
        {
          v55 = swift_allocError();
        }

        v56 = v55;
        v57 = v46();
        v59 = v58;

        v60 = sub_2219A6360(v57, v59, &v124);

        *(v50 + 14) = v60;
        _os_log_impl(&dword_221989000, v48, v49, "%s %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v51, -1, -1);
        MEMORY[0x223DA4C00](v50, -1, -1);
        sub_22198B60C(v46);

        v24 = v116;
        goto LABEL_41;
      }

      v96 = v46;
      goto LABEL_35;
    }

    v73 = *(v2 + qword_27CFDED20 + 17);

    v74 = sub_221BCCD68();
    v75 = sub_221BCDA78();

    v76 = os_log_type_enabled(v74, v75);
    if (v73)
    {
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v124 = v78;
        *v77 = 136315395;
        v79 = sub_2219CB3CC();
        v81 = sub_2219A6360(v79, v80, &v124);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2085;
        v82 = sub_221BCE288();
        v84 = sub_2219A6360(v82, v83, &v124);

        *(v77 + 14) = v84;
        v85 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v74, v75, v85, v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v78, -1, -1);
        v95 = v77;
        goto LABEL_39;
      }
    }

    else if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v124 = v78;
      *v77 = 136315395;
      v97 = sub_2219CB3CC();
      v99 = sub_2219A6360(v97, v98, &v124);

      *(v77 + 4) = v99;
      *(v77 + 12) = 2081;
      v100 = sub_221BCE288();
      v102 = sub_2219A6360(v100, v101, &v124);

      *(v77 + 14) = v102;
      v85 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_41;
  }

  v127 = v119;
  v128 = v121;
  v129 = v120 & 1;
  sub_2219BAF0C(v2 + v33[241], &v124, &qword_27CFB7FD0, &qword_221BD2888);
  v43 = *(&v125 + 1);
  if (*(&v125 + 1))
  {
    v44 = v126;
    __swift_project_boxed_opaque_existential_0(&v124, *(&v125 + 1));
    v45 = v117;
    (*(v6 + 104))(v9, *MEMORY[0x277CD8AC8], v117);
    (*(v44 + 24))(v9, v43, v44);
    (*(v6 + 8))(v9, v45);
    __swift_destroy_boxed_opaque_existential_0(&v124);
  }

  else
  {
    sub_2219EC58C(&v124, &qword_27CFB7FD0);
  }

  v61 = *(v2 + qword_27CFBC768);
  if (!v61)
  {

    sub_2219BAF0C(a1, &v124, &qword_27CFB81A0, &qword_221BD2AF8);
    v74 = sub_221BCCD68();
    v86 = sub_221BCDA98();

    sub_2219EC58C(a1, &qword_27CFB81A0);
    if (os_log_type_enabled(v74, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v124 = v88;
      *v87 = 136315394;
      v89 = sub_2219CB3CC();
      v91 = sub_2219A6360(v89, v90, &v124);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v92 = sub_2219C13A0(&v127, *(v2 + qword_27CFDED20 + 17));
      v94 = sub_2219A6360(v92, v93, &v124);

      *(v87 + 14) = v94;
      _os_log_impl(&dword_221989000, v74, v86, "%sCompleted with %s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v88, -1, -1);
      v95 = v87;
LABEL_39:
      MEMORY[0x223DA4C00](v95, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v62 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768));

  sub_2219BAF0C(a1, &v124, &qword_27CFB81A0, &qword_221BD2AF8);
  v63 = sub_221BCCD68();
  v64 = sub_221BCDA98();

  sub_2219EC58C(a1, &qword_27CFB81A0);
  if (!os_log_type_enabled(v63, v64))
  {

    v96 = v61;
LABEL_35:
    sub_22198B60C(v96);
    goto LABEL_41;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v123 = v66;
  *v65 = 136315394;
  v67 = sub_2219CB3CC();
  v69 = sub_2219A6360(v67, v68, &v123);

  *(v65 + 4) = v69;
  *(v65 + 12) = 2080;
  v124 = v127;
  v125 = v128;
  LOBYTE(v126) = v129;
  v70 = v61(&v124);
  v72 = sub_2219A6360(v70, v71, &v123);

  *(v65 + 14) = v72;
  _os_log_impl(&dword_221989000, v63, v64, "%s%s", v65, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v66, -1, -1);
  MEMORY[0x223DA4C00](v65, -1, -1);
  sub_22198B60C(v61);

LABEL_41:
  v103 = v118;
  v104 = v122;
  sub_2219E7E58(v24, v122, v118 == 1);
  if (v103 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v105 = *(v2 + 40);
    v106 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      *&v121 = *(v2 + qword_27CFBC780);
      v116 = v24;
      v107 = *(v2 + qword_27CFBC780 + 8);
      v108 = *(v2 + qword_27CFBC780 + 16);
      v109 = sub_2219CB440();
      v111 = v110;
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v112 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v112);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v113 = v124;
      v114 = *&v115[v2];

      sub_221BB52B0(v121, v107, v108, v109, v111, v116, v104, v113, *(&v113 + 1));
    }
  }
}

void sub_2219D5DE4(uint64_t a1)
{
  v2 = v1;
  v166 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v160 = &v154[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v159 = &v154[-v8];
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  v10 = *(*(started - 8) + 64);
  v11 = MEMORY[0x28223BE20](started - 8);
  v161 = &v154[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v162 = &v154[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v154[-v15];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8198, &qword_221BD2AE8);
  v17 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v19 = &v154[-v18];
  v20 = sub_221BCDFB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v154[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v154[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v154[-v30];
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v158 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v32 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v32, v31, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v20);
  v164 = 0;
  v163 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v21 + 32))(v27, v31, v20);
    sub_221BCDF88();
    v164 = sub_221BCDFA8();
    v163 = v34;
    v35 = *(v21 + 8);
    v35(v25, v20);
    v35(v27, v20);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v36 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v37, v2);
  }

  v38 = off_27CFBC778;
  swift_beginAccess();
  v156 = v38;
  v39 = *&v38[v2];
  v40 = &unk_27CFBC000;
  if (*(v39 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v168, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v170;
    if (v170)
    {
      v42 = v171;
      __swift_project_boxed_opaque_existential_0(&v168, v170);
      v157 = v3;
      v43 = *(v42 + 32);

      v43(v44, 0x697274654D736961, 0xEA00000000007363, v41, v42);
      v40 = &unk_27CFBC000;
      v3 = v157;

      __swift_destroy_boxed_opaque_existential_0(&v168);
    }

    else
    {
      sub_2219EC58C(&v168, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v166, v19, &qword_27CFB8198, &qword_221BD2AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v19;
    sub_2219BAF0C(v2 + v40[241], &v168, &qword_27CFB7FD0, &qword_221BD2888);
    v46 = v170;
    if (v170)
    {
      v157 = v3;
      v47 = v171;
      __swift_project_boxed_opaque_existential_0(&v168, v170);
      v167[5] = v45;
      v48 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v167);
        v167[0] = v45;
        v49 = v45;
        v50 = sub_221BCE198();
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = swift_allocError();
          *v90 = v45;
        }

        v91 = sub_221BCC328();

        v92 = [v91 domain];
        v93 = sub_221BCD388();
        v95 = v94;

        v96 = [v91 code];
        v89 = v160;
        *v160 = v93;
        v89[1] = v95;
        v89[2] = v96;
        v88 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v88 = MEMORY[0x277CD8AC0];
        v89 = v160;
      }

      v97 = v158;
      v98 = v89;
      v99 = v157;
      (*(v158 + 104))(v89, *v88, v157);
      (*(v47 + 24))(v98, v46, v47);
      (*(v97 + 8))(v98, v99);
      __swift_destroy_boxed_opaque_existential_0(&v168);
    }

    else
    {
      sub_2219EC58C(&v168, &qword_27CFB7FD0);
    }

    v100 = *(v2 + qword_27CFBC770);
    if (v100)
    {
      v101 = *(v2 + qword_27CFBC770 + 8);
      v102 = v45;

      v103 = v45;
      sub_22198BEB8(v100);
      v104 = sub_221BCCD68();
      v105 = sub_221BCDA78();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v168 = v166;
        *v106 = 136315394;
        v107 = sub_2219CB3CC();
        v109 = sub_2219A6360(v107, v108, &v168);

        *(v106 + 4) = v109;
        *(v106 + 12) = 2080;
        v167[0] = v45;
        v110 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v111 = sub_221BCE198();
        v155 = EnumTagSinglePayload;
        if (v111)
        {
          v112 = v111;
        }

        else
        {
          v112 = swift_allocError();
          *v135 = v45;
        }

        v136 = v100(v112);
        v138 = v137;

        v139 = sub_2219A6360(v136, v138, &v168);

        *(v106 + 14) = v139;
        _os_log_impl(&dword_221989000, v104, v105, "%s %s", v106, 0x16u);
        v140 = v166;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v140, -1, -1);
        MEMORY[0x223DA4C00](v106, -1, -1);

        sub_22198B60C(v100);
        EnumTagSinglePayload = v155;
        goto LABEL_50;
      }

      sub_22198B60C(v100);
LABEL_47:

      goto LABEL_50;
    }

    v113 = *(v2 + qword_27CFDED20 + 17);

    v114 = v45;
    v115 = sub_221BCCD68();
    v116 = sub_221BCDA78();

    v117 = os_log_type_enabled(v115, v116);
    if (v113)
    {
      if (v117)
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v168 = v119;
        *v118 = 136315395;
        v120 = sub_2219CB3CC();
        v122 = sub_2219A6360(v120, v121, &v168);

        *(v118 + 4) = v122;
        *(v118 + 12) = 2085;
        v167[0] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v123 = sub_221BCE288();
        v125 = v124;

        v126 = sub_2219A6360(v123, v125, &v168);

        *(v118 + 14) = v126;
        v127 = "%sFailed with %{sensitive}s";
LABEL_44:
        _os_log_impl(&dword_221989000, v115, v116, v127, v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v119, -1, -1);
        MEMORY[0x223DA4C00](v118, -1, -1);
LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v117)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v168 = v119;
      *v118 = 136315395;
      v128 = sub_2219CB3CC();
      v130 = sub_2219A6360(v128, v129, &v168);

      *(v118 + 4) = v130;
      *(v118 + 12) = 2081;
      v167[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v131 = sub_221BCE288();
      v133 = v132;

      v134 = sub_2219A6360(v131, v133, &v168);

      *(v118 + 14) = v134;
      v127 = "%sFailed with %{private}s";
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  sub_2219EC2D8(v19, v16, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  sub_2219BAF0C(v2 + v40[241], &v168, &qword_27CFB7FD0, &qword_221BD2888);
  v52 = v170;
  if (v170)
  {
    v53 = v171;
    __swift_project_boxed_opaque_existential_0(&v168, v170);
    v54 = v158;
    v55 = v159;
    (*(v158 + 104))(v159, *MEMORY[0x277CD8AC8], v3);
    (*(v53 + 24))(v55, v52, v53);
    (*(v54 + 8))(v55, v3);
    __swift_destroy_boxed_opaque_existential_0(&v168);
  }

  else
  {
    sub_2219EC58C(&v168, &qword_27CFB7FD0);
  }

  v56 = v162;
  v57 = v161;
  v58 = *(v2 + qword_27CFBC768);
  if (v58)
  {
    v59 = *(v2 + qword_27CFBC768 + 8);
    sub_2219EC27C(v16, v162, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    sub_22198BEB8(v58);

    v60 = v16;
    v61 = sub_221BCCD68();
    v62 = sub_221BCDA98();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v166 = v60;
      v65 = v64;
      v168 = v64;
      *v63 = 136315394;
      v66 = sub_2219CB3CC();
      v68 = sub_2219A6360(v66, v67, &v168);
      v155 = EnumTagSinglePayload;
      v69 = v68;

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      v70 = v58(v56);
      v72 = v71;
      sub_2219EC334(v56, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v73 = sub_2219A6360(v70, v72, &v168);

      *(v63 + 14) = v73;
      EnumTagSinglePayload = v155;
      _os_log_impl(&dword_221989000, v61, v62, "%s%s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v65, -1, -1);
      MEMORY[0x223DA4C00](v63, -1, -1);

      sub_22198B60C(v58);
      v74 = v166;
    }

    else
    {

      sub_22198B60C(v58);
      sub_2219EC334(v56, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v74 = v60;
    }
  }

  else
  {
    sub_2219EC27C(v16, v161, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);

    v75 = sub_221BCCD68();
    v76 = sub_221BCDA98();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v166 = v16;
      v78 = v77;
      v79 = swift_slowAlloc();
      v168 = v79;
      *v78 = 136315394;
      v80 = sub_2219CB3CC();
      v82 = v57;
      v83 = sub_2219A6360(v80, v81, &v168);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = sub_2219C1544(v82, *(v2 + qword_27CFDED20 + 17));
      v86 = v85;
      sub_2219EC334(v82, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v87 = sub_2219A6360(v84, v86, &v168);

      *(v78 + 14) = v87;
      _os_log_impl(&dword_221989000, v75, v76, "%sCompleted with %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v79, -1, -1);
      MEMORY[0x223DA4C00](v78, -1, -1);

      v74 = v166;
    }

    else
    {

      sub_2219EC334(v57, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v74 = v16;
    }
  }

  sub_2219EC334(v74, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
LABEL_50:
  v141 = v164;
  v142 = v163;
  sub_2219E7E58(v164, v163, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0)
  {
    v143 = *(v2 + 40);
    v144 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v145 = *(v2 + qword_27CFBC780);
      v165 = *(v2 + qword_27CFBC780 + 8);
      v166 = v145;
      v146 = *(v2 + qword_27CFBC780 + 16);
      v147 = sub_2219CB440();
      v149 = v148;
      v168 = 0;
      v169 = 0xE000000000000000;
      sub_221BCDE68();
      v150 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v150);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v151 = v168;
      v152 = v169;
      v153 = *&v156[v2];

      sub_221BB52B0(v166, v165, v146, v147, v149, v141, v142, v151, v152);
    }
  }
}

void sub_2219D7018(uint64_t a1)
{
  v2 = v1;
  v142 = a1;
  v3 = sub_221BCCE38();
  v139 = *(v3 - 8);
  v140 = v3;
  v4 = *(v139 + 64);
  MEMORY[0x28223BE20](v3);
  v138 = (&v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  v7 = *(*(started - 8) + 64);
  v8 = MEMORY[0x28223BE20](started - 8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v131 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v131 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8188, &qword_221BD2AD8);
  v16 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v18 = &v131 - v17;
  v19 = sub_221BCDFB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v131 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v131 - v29;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v135 = v10;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v31 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v31, v30, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v19);
  v33 = 0;
  v137 = 0;
  v136 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v20 + 32))(v26, v30, v19);
    sub_221BCDF88();
    v33 = sub_221BCDFA8();
    v137 = v34;
    v35 = *(v20 + 8);
    v35(v24, v19);
    v35(v26, v19);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v36 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v37, v2);
  }

  v38 = off_27CFBC778;
  swift_beginAccess();
  v134 = v38;
  v39 = *&v38[v2];
  v40 = &unk_27CFBC000;
  if (*(v39 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v143, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v145;
    if (v145)
    {
      v42 = v146;
      __swift_project_boxed_opaque_existential_0(&v143, v145);
      v133 = v13;
      v43 = *(v42 + 32);

      v43(v44, 0x697274654D736961, 0xEA00000000007363, v41, v42);
      v40 = &unk_27CFBC000;
      v13 = v133;

      __swift_destroy_boxed_opaque_existential_0(&v143);
    }

    else
    {
      sub_2219EC58C(&v143, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v142, v18, &qword_27CFB8188, &qword_221BD2AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2219BAF0C(v2 + v40[241], &v143, &qword_27CFB7FD0, &qword_221BD2888);
    v45 = v145;
    if (v145)
    {
      v46 = v146;
      __swift_project_boxed_opaque_existential_0(&v143, v145);
      v47 = v138;
      sub_2219E7D00(v138);
      (*(v46 + 24))(v47, v45, v46);
      (*(v139 + 8))(v47, v140);
      __swift_destroy_boxed_opaque_existential_0(&v143);
    }

    else
    {
      sub_2219EC58C(&v143, &qword_27CFB7FD0);
    }

    v53 = *(v2 + qword_27CFBC770);
    if (v53)
    {
      v54 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v53);
      v55 = sub_221BCCD68();
      v56 = sub_221BCDA78();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v143 = v58;
        *v57 = 136315394;
        v59 = sub_2219CB3CC();
        v61 = sub_2219A6360(v59, v60, &v143);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        v62 = sub_221BCE198();
        v132 = v33;
        if (!v62)
        {
          v62 = swift_allocError();
        }

        v63 = v62;
        v64 = v53();
        v66 = v65;

        v67 = sub_2219A6360(v64, v66, &v143);

        *(v57 + 14) = v67;
        _os_log_impl(&dword_221989000, v55, v56, "%s %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v58, -1, -1);
        MEMORY[0x223DA4C00](v57, -1, -1);
        sub_22198B60C(v53);

        v33 = v132;
      }

      else
      {

        sub_22198B60C(v53);
      }

      goto LABEL_41;
    }

    v86 = *(v2 + qword_27CFDED20 + 17);

    v87 = sub_221BCCD68();
    v88 = sub_221BCDA78();

    v89 = os_log_type_enabled(v87, v88);
    if (v86)
    {
      if (v89)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v143 = v91;
        *v90 = 136315395;
        v92 = sub_2219CB3CC();
        v94 = sub_2219A6360(v92, v93, &v143);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2085;
        v95 = sub_221BCE288();
        v97 = sub_2219A6360(v95, v96, &v143);

        *(v90 + 14) = v97;
        v98 = "%sFailed with %{sensitive}s";
LABEL_37:
        _os_log_impl(&dword_221989000, v87, v88, v98, v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v91, -1, -1);
        MEMORY[0x223DA4C00](v90, -1, -1);
      }
    }

    else if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v143 = v91;
      *v90 = 136315395;
      v112 = sub_2219CB3CC();
      v114 = sub_2219A6360(v112, v113, &v143);

      *(v90 + 4) = v114;
      *(v90 + 12) = 2081;
      v115 = sub_221BCE288();
      v117 = sub_2219A6360(v115, v116, &v143);

      *(v90 + 14) = v117;
      v98 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  sub_2219EC2D8(v18, v15, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  sub_2219BAF0C(v2 + v40[241], &v143, &qword_27CFB7FD0, &qword_221BD2888);
  v48 = v145;
  if (v145)
  {
    v49 = v146;
    __swift_project_boxed_opaque_existential_0(&v143, v145);
    v51 = v138;
    v50 = v139;
    v52 = v140;
    (*(v139 + 104))(v138, *MEMORY[0x277CD8AC8], v140);
    (*(v49 + 24))(v51, v48, v49);
    (*(v50 + 8))(v51, v52);
    __swift_destroy_boxed_opaque_existential_0(&v143);
  }

  else
  {
    sub_2219EC58C(&v143, &qword_27CFB7FD0);
  }

  v68 = *(v2 + qword_27CFBC768);
  if (v68)
  {
    v69 = v15;
    v70 = *(v2 + qword_27CFBC768 + 8);
    sub_2219EC27C(v15, v13, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    sub_22198BEB8(v68);

    v71 = sub_221BCCD68();
    v72 = sub_221BCDA98();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v142 = v69;
      v74 = v73;
      v141 = swift_slowAlloc();
      v143 = v141;
      *v74 = 136315394;
      v75 = sub_2219CB3CC();
      v77 = v33;
      v78 = sub_2219A6360(v75, v76, &v143);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = v68(v13);
      v81 = v80;
      sub_2219EC334(v13, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v82 = v79;
      v33 = v77;
      v83 = sub_2219A6360(v82, v81, &v143);

      *(v74 + 14) = v83;
      _os_log_impl(&dword_221989000, v71, v72, "%s%s", v74, 0x16u);
      v84 = v141;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v84, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);

      sub_22198B60C(v68);
      v85 = v142;
    }

    else
    {

      sub_22198B60C(v68);
      sub_2219EC334(v13, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v85 = v69;
    }
  }

  else
  {
    v99 = v135;
    sub_2219EC27C(v15, v135, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);

    v100 = sub_221BCCD68();
    v101 = sub_221BCDA98();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v142 = v15;
      v103 = v102;
      v104 = swift_slowAlloc();
      v143 = v104;
      *v103 = 136315394;
      v105 = sub_2219CB3CC();
      v107 = sub_2219A6360(v105, v106, &v143);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      v108 = sub_2219C1544(v99, *(v2 + qword_27CFDED20 + 17));
      v110 = v109;
      sub_2219EC334(v99, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v111 = sub_2219A6360(v108, v110, &v143);

      *(v103 + 14) = v111;
      _os_log_impl(&dword_221989000, v100, v101, "%sCompleted with %s", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v104, -1, -1);
      MEMORY[0x223DA4C00](v103, -1, -1);

      v85 = v142;
    }

    else
    {

      sub_2219EC334(v99, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v85 = v15;
    }
  }

  sub_2219EC334(v85, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
LABEL_41:
  v118 = v136;
  v119 = v137;
  sub_2219E7E58(v33, v137, v136 == 1);
  if (v118 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v120 = *(v2 + 40);
    v121 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v122 = *(v2 + qword_27CFBC780);
      v141 = *(v2 + qword_27CFBC780 + 8);
      v142 = v122;
      v123 = *(v2 + qword_27CFBC780 + 16);
      v124 = sub_2219CB440();
      v126 = v125;
      v143 = 0;
      v144 = 0xE000000000000000;
      sub_221BCDE68();
      v127 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v127);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v128 = v143;
      v129 = v144;
      v130 = *&v134[v2];

      sub_221BB52B0(v142, v141, v123, v124, v126, v33, v119, v128, v129);
    }
  }
}

void sub_2219D7F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v25;
  a20 = v26;
  v27 = v20;
  v145 = *(v28 + 16);
  v148 = *v28;
  v151 = v28;
  v144 = *(v28 + 32);
  v29 = sub_221BCCE38();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_163();
  v36 = sub_221BCDFB8();
  v37 = OUTLINED_FUNCTION_0_2(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_239();
  if (*(v20 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v47);
    return;
  }

  v142 = v23;
  v143 = v32;
  OUTLINED_FUNCTION_61_0();
  v49 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v20 + v49, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v50 = OUTLINED_FUNCTION_151(v22);
  v147 = 0;
  v146 = 0;
  if (v50 != 1)
  {
    v51 = OUTLINED_FUNCTION_90(v39);
    v52(v51, v22, v36);
    sub_221BCDF88();
    v147 = sub_221BCDFA8();
    v146 = v53;
    v22 = *(v39 + 8);
    v54 = OUTLINED_FUNCTION_24();
    (v22)(v54);
    v55 = OUTLINED_FUNCTION_16();
    (v22)(v55);
  }

  if (*(v20 + qword_27CFBC798))
  {
    v56 = *(v20 + qword_27CFBC798);

    OUTLINED_FUNCTION_110(v57);
  }

  v58 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a9);
  v59 = v151;
  if (v60)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
    v21 = *(&v158 + 1);
    if (*(&v158 + 1))
    {
      v22 = v159;
      OUTLINED_FUNCTION_62_0(&v157, *(&v158 + 1));
      v61 = v50;
      v62 = v29;
      v49 = v22 + 32;
      v63 = *(v22 + 32);

      OUTLINED_FUNCTION_3_11();
      v63();
      v58 = &unk_27CFBC000;
      v29 = v62;
      v50 = v61;
      v59 = v151;

      __swift_destroy_boxed_opaque_existential_0(&v157);
    }

    else
    {
      sub_2219EC58C(&v157, &qword_27CFB7FD0);
    }
  }

  if (*(v59 + 34))
  {
    v64 = v29;
    v65 = v148;
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
    v66 = *(&v158 + 1);
    if (*(&v158 + 1))
    {
      v149 = v159;
      OUTLINED_FUNCTION_62_0(&v157, *(&v158 + 1));
      OUTLINED_FUNCTION_244();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      OUTLINED_FUNCTION_57_0();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_135();
        v67 = sub_221BCE198();
        if (v67)
        {
          v68 = v67;
          sub_2219EC58C(v59, &qword_27CFB8180);
        }

        else
        {
          v68 = OUTLINED_FUNCTION_17_2();
          *v97 = v65;
        }

        v98 = sub_221BCC328();

        v99 = [v98 domain];
        v100 = sub_221BCD388();
        v102 = v101;

        v103 = [v98 code];
        v22 = v142;
        *v142 = v100;
        v142[1] = v102;
        v142[2] = v103;
        v94 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v94 = MEMORY[0x277CD8AC0];
        v22 = v142;
      }

      (*(v143 + 104))(v22, *v94, v64);
      (*(v149 + 24))(v22, v66);
      LOBYTE(v21) = v143 + 8;
      (*(v143 + 8))(v22, v64);
      __swift_destroy_boxed_opaque_existential_0(&v157);
    }

    else
    {
      sub_2219EC58C(&v157, &qword_27CFB7FD0);
    }

    v104 = *(v27 + qword_27CFBC770);
    if (v104)
    {
      v150 = v50;
      v105 = *(v27 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v59, &v157, &qword_27CFB8180, &qword_221BD2AD0);
      v106 = OUTLINED_FUNCTION_3_4();
      v107 = OUTLINED_FUNCTION_207(v106);
      sub_221BCDA78();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_74();
      sub_2219EC58C(v108, v109);
      if (os_log_type_enabled(v107, v21))
      {
        OUTLINED_FUNCTION_103();
        v110 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_46_0(v110);
        v111 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v111, v112);
        OUTLINED_FUNCTION_107();

        *(&qword_221BD2AD0 + 4) = &qword_27CFB8180;
        OUTLINED_FUNCTION_116(2080);
        v113 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v114 = OUTLINED_FUNCTION_208();
        if (v114)
        {
          v115 = v114;
          sub_2219EC58C(v151, &qword_27CFB8180);
        }

        else
        {
          v115 = OUTLINED_FUNCTION_112();
          *v128 = v65;
        }

        v104(v115);
        OUTLINED_FUNCTION_184();

        v129 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v129, v65, v130);
        OUTLINED_FUNCTION_144();

        *(&qword_221BD2AD8 + 6) = v105;
        _os_log_impl(&dword_221989000, v107, v21, "%s %s", &qword_221BD2AD0, 0x16u);
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      v131 = OUTLINED_FUNCTION_3_4();
      sub_22198B60C(v131);
      v127 = v146;
      v50 = v150;
      goto LABEL_49;
    }

    v116 = *(v27 + qword_27CFDED20 + 17);

    if (v116)
    {
      OUTLINED_FUNCTION_194();
      v76 = sub_221BCCD68();
      sub_221BCDA78();
      OUTLINED_FUNCTION_188();
      sub_2219EC58C(v65, &qword_27CFB8180);
      if (os_log_type_enabled(v76, v22))
      {
        v117 = OUTLINED_FUNCTION_103();
        *&v157 = OUTLINED_FUNCTION_105();
        v118 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_102(v118, v119);
        OUTLINED_FUNCTION_107();

        *(v117 + 4) = &qword_27CFB8180;
        *(v117 + 12) = 2085;
        *&v153 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v120 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v120, v121);
        OUTLINED_FUNCTION_107();

        *(v117 + 14) = &qword_27CFB8180;
        v122 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v76, v22, v122, v117, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    else
    {
      OUTLINED_FUNCTION_194();
      v76 = sub_221BCCD68();
      sub_221BCDA78();
      OUTLINED_FUNCTION_188();
      sub_2219EC58C(v65, &qword_27CFB8180);
      if (os_log_type_enabled(v76, v22))
      {
        v117 = OUTLINED_FUNCTION_103();
        *&v157 = OUTLINED_FUNCTION_105();
        v123 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_102(v123, v124);
        OUTLINED_FUNCTION_107();

        *(v117 + 4) = &qword_27CFB8180;
        *(v117 + 12) = 2081;
        *&v153 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v125 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v125, v126);
        OUTLINED_FUNCTION_107();

        *(v117 + 14) = &qword_27CFB8180;
        v122 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v153 = v148;
  v154 = v145;
  v155 = v144;
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
  v69 = *(&v158 + 1);
  if (*(&v158 + 1))
  {
    OUTLINED_FUNCTION_13_3();
    (*(v143 + 104))(v24, *MEMORY[0x277CD8AC8], v29);
    v70 = OUTLINED_FUNCTION_26_2();
    v71(v70);
    v22 = v143 + 8;
    (*(v143 + 8))(v24, v29);
    __swift_destroy_boxed_opaque_existential_0(&v157);
  }

  else
  {
    sub_2219EC58C(&v157, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC768);
  v73 = qword_27CFBC758;
  if (v69)
  {
    v74 = *(v72 + 8);
    v75 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_228(v75);
    sub_2219BAF0C(v59, &v157, &qword_27CFB8180, &qword_221BD2AD0);
    v76 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_198();
    if (os_log_type_enabled(v76, v59))
    {
      OUTLINED_FUNCTION_103();
      v156 = OUTLINED_FUNCTION_39_0();
      v77 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_250(v77, v78);
      OUTLINED_FUNCTION_245();
      *(v22 + 4) = v24;
      OUTLINED_FUNCTION_174();
      v157 = v153;
      v158 = v154;
      LOWORD(v159) = v155;
      v79 = v69(&v157);
      v81 = v80;
      sub_2219EC58C(v59, &qword_27CFB8180);
      v82 = sub_2219A6360(v79, v81, &v156);

      *(v22 + 14) = v82;
      _os_log_impl(&dword_221989000, v76, v59, "%s%s", v22, 0x16u);
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v83 = OUTLINED_FUNCTION_94();
      sub_22198B60C(v83);
      goto LABEL_44;
    }

    v95 = OUTLINED_FUNCTION_94();
    sub_22198B60C(v95);
    v96 = v59;
    goto LABEL_30;
  }

  sub_2219BAF0C(v59, &v157, &qword_27CFB8180, &qword_221BD2AD0);
  v84 = v27 + v73;
  v85 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_188();
  if (!OUTLINED_FUNCTION_211())
  {

    v96 = v59;
LABEL_30:
    sub_2219EC58C(v96, &qword_27CFB8180);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_103();
  v86 = OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_46_0(v86);
  v87 = OUTLINED_FUNCTION_134(4.8151e-34);
  OUTLINED_FUNCTION_102(v87, v88);
  OUTLINED_FUNCTION_149();
  *(v21 + 4) = v49;
  OUTLINED_FUNCTION_83();
  sub_2219C1654(&v153, *(v27 + qword_27CFDED20 + 17));
  OUTLINED_FUNCTION_185();
  sub_2219EC58C(v59, &qword_27CFB8180);
  v89 = OUTLINED_FUNCTION_64();
  sub_2219A6360(v89, v49, v90);
  OUTLINED_FUNCTION_215();
  *(v21 + 14) = v84;
  OUTLINED_FUNCTION_51_0(&dword_221989000, v91, v92, "%sCompleted with %s");
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x223DA4C00]();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x223DA4C00]();

LABEL_45:
  v127 = v146;
LABEL_49:
  OUTLINED_FUNCTION_191(v147, v93, v50 == 1);
  if (v50 != 1 && (*(v27 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    v132 = *(v27 + qword_27CFBC780);
    v152 = *(v27 + qword_27CFBC780 + 8);
    OUTLINED_FUNCTION_189(v27 + qword_27CFBC780);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v133 = sub_221BCE3F8();
    v134 = OUTLINED_FUNCTION_101(v133, 1000.0);
    OUTLINED_FUNCTION_100(v134, v135, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v136 = v157;
    OUTLINED_FUNCTION_77(&a9);
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    sub_221BB52B0(v137, v138, v139, v140, v141, v147, v127, v136, *(&v136 + 1));
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D8D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  v28 = v27;
  v138 = *(v27 + 16);
  v136 = *v27;
  v137 = *(v27 + 32);
  v29 = sub_221BCCE38();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  v37 = (v36 - v35);
  v38 = sub_221BCDFB8();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_239();
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v49);
    return;
  }

  v135 = v37;
  OUTLINED_FUNCTION_61_0();
  v51 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v21 + v51, v23, &qword_27CFB7FC8, &qword_221BD2880);
  v52 = OUTLINED_FUNCTION_151(v23);
  v53 = 0;
  v140 = 0;
  OUTLINED_FUNCTION_175(v52, &a13);
  if (!v54)
  {
    v55 = OUTLINED_FUNCTION_90(v41);
    v56(v55, v23, v38);
    sub_221BCDF88();
    v53 = sub_221BCDFA8();
    v140 = v57;
    v58 = *(v41 + 8);
    LOBYTE(v41) = v41 + 8;
    v23 = v58;
    v59 = OUTLINED_FUNCTION_24();
    v58(v59);
    v60 = OUTLINED_FUNCTION_16();
    v58(v60);
  }

  if (*(v21 + qword_27CFBC798))
  {
    v61 = *(v21 + qword_27CFBC798);

    OUTLINED_FUNCTION_160(v62);
  }

  v63 = off_27CFBC778;
  swift_beginAccess();
  OUTLINED_FUNCTION_18_2(&a10);
  if (v64)
  {
    sub_2219BAF0C(v26 + v63[241], &v142, &qword_27CFB7FD0, &qword_221BD2888);
    v22 = *(&v143 + 1);
    if (*(&v143 + 1))
    {
      v23 = v144;
      OUTLINED_FUNCTION_62_0(&v142, *(&v143 + 1));
      LOBYTE(v41) = v53;
      v134 = v26;
      v65 = v28;
      v66 = v32;
      v67 = v29;
      v68 = *(v23 + 32);

      OUTLINED_FUNCTION_3_11();
      v68();
      v63 = &unk_27CFBC000;
      v29 = v67;
      v32 = v66;
      v28 = v65;
      v26 = v134;

      __swift_destroy_boxed_opaque_existential_0(&v142);
    }

    else
    {
      sub_2219EC58C(&v142, &qword_27CFB7FD0);
    }
  }

  if (*(v28 + 34))
  {
    sub_2219BAF0C(v26 + v63[241], &v142, &qword_27CFB7FD0, &qword_221BD2888);
    v69 = *(&v143 + 1);
    if (*(&v143 + 1))
    {
      OUTLINED_FUNCTION_23_2(&v142);
      v23 = v135;
      sub_2219E7D00(v135);
      v70 = OUTLINED_FUNCTION_55_0();
      v71(v70);
      (*(v32 + 8))(v135, v29);
      __swift_destroy_boxed_opaque_existential_0(&v142);
    }

    else
    {
      sub_2219EC58C(&v142, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC770);
    if (v69)
    {
      v75 = *(v74 + 8);

      v76 = OUTLINED_FUNCTION_72();
      v77 = OUTLINED_FUNCTION_207(v76);
      sub_221BCDA78();
      OUTLINED_FUNCTION_251();
      if (os_log_type_enabled(v77, v41))
      {
        v78 = OUTLINED_FUNCTION_103();
        *&v142 = OUTLINED_FUNCTION_105();
        v79 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_150(v79, v80);
        OUTLINED_FUNCTION_148();
        *(v78 + 4) = v23;
        OUTLINED_FUNCTION_173();
        v81 = sub_221BCE198();
        if (!v81)
        {
          v81 = OUTLINED_FUNCTION_17_2();
        }

        v82 = v81;
        v69();
        OUTLINED_FUNCTION_143();

        v83 = OUTLINED_FUNCTION_91();
        sub_2219A6360(v83, v84, v85);
        OUTLINED_FUNCTION_97();

        *(v78 + 14) = v75;
        OUTLINED_FUNCTION_214(&dword_221989000, v77, v41, "%s %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v86 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v86);
      }

      else
      {

        v112 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v112);
      }

      goto LABEL_42;
    }

    v98 = *(v26 + qword_27CFDED20 + 17);

    v69 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    v99 = os_log_type_enabled(v69, v28);
    if (v98)
    {
      if (v99)
      {
        OUTLINED_FUNCTION_103();
        *&v142 = OUTLINED_FUNCTION_43_0();
        v100 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_150(v100, v101);
        OUTLINED_FUNCTION_128();
        *(v98 + 4) = v53;
        *(v98 + 12) = 2085;
        v102 = sub_221BCE288();
        OUTLINED_FUNCTION_150(v102, v103);
        OUTLINED_FUNCTION_128();
        *(v98 + 14) = v53;
        v104 = "%sFailed with %{sensitive}s";
LABEL_37:
        v111 = v28;
        goto LABEL_38;
      }
    }

    else if (v99)
    {
      OUTLINED_FUNCTION_103();
      *&v142 = OUTLINED_FUNCTION_43_0();
      v114 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_150(v114, v115);
      OUTLINED_FUNCTION_128();
      *(v98 + 4) = v53;
      *(v98 + 12) = 2081;
      v116 = sub_221BCE288();
      OUTLINED_FUNCTION_150(v116, v117);
      OUTLINED_FUNCTION_128();
      *(v98 + 14) = v53;
      v104 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  v145 = v136;
  v146 = v138;
  v147 = v137;
  sub_2219BAF0C(v26 + v63[241], &v142, &qword_27CFB7FD0, &qword_221BD2888);
  v69 = *(&v143 + 1);
  if (*(&v143 + 1))
  {
    v22 = v144;
    OUTLINED_FUNCTION_23_2(&v142);
    (*(v32 + 104))(v135, *MEMORY[0x277CD8AC8], v29);
    v72 = OUTLINED_FUNCTION_55_0();
    v73(v72);
    (*(v32 + 8))(v135, v29);
    __swift_destroy_boxed_opaque_existential_0(&v142);
  }

  else
  {
    sub_2219EC58C(&v142, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC768);
  v88 = qword_27CFBC758;
  if (v69)
  {
    v89 = *(v87 + 8);
    v90 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_228(v90);
    sub_2219BAF0C(v28, &v142, &qword_27CFB8170, &qword_221BD2AC0);
    v91 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_251();
    if (os_log_type_enabled(v91, v41))
    {
      OUTLINED_FUNCTION_103();
      v141 = OUTLINED_FUNCTION_43_0();
      v92 = OUTLINED_FUNCTION_134(4.8151e-34);
      sub_2219A6360(v92, v93, &v141);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      v142 = v145;
      v143 = v146;
      LOWORD(v144) = v147;
      (v69)(&v142);
      OUTLINED_FUNCTION_143();
      sub_2219EC58C(v28, &qword_27CFB8170);
      v94 = OUTLINED_FUNCTION_91();
      sub_2219A6360(v94, v95, v96);
      OUTLINED_FUNCTION_97();

      *(v22 + 14) = v89;
      OUTLINED_FUNCTION_154(&dword_221989000, v91, v41, "%s%s");
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v97 = OUTLINED_FUNCTION_94();
      sub_22198B60C(v97);

      goto LABEL_42;
    }

    v113 = OUTLINED_FUNCTION_94();
    sub_22198B60C(v113);
  }

  else
  {

    sub_2219BAF0C(v28, &v142, &qword_27CFB8170, &qword_221BD2AC0);
    v105 = v26 + v88;
    v69 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_246();
    if (os_log_type_enabled(v69, v29))
    {
      OUTLINED_FUNCTION_103();
      *&v142 = OUTLINED_FUNCTION_43_0();
      v106 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_150(v106, v107);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      sub_2219C1654(&v145, *(v26 + qword_27CFDED20 + 17));
      OUTLINED_FUNCTION_143();
      sub_2219EC58C(v28, &qword_27CFB8170);
      v108 = OUTLINED_FUNCTION_91();
      sub_2219A6360(v108, v109, v110);
      OUTLINED_FUNCTION_97();

      *(v22 + 14) = v105;
      v104 = "%sCompleted with %s";
      v111 = v29;
LABEL_38:
      OUTLINED_FUNCTION_154(&dword_221989000, v69, v111, v104);
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_39;
    }
  }

  sub_2219EC58C(v28, &qword_27CFB8170);
LABEL_42:
  OUTLINED_FUNCTION_48_0(&a13);
  sub_2219E7E58(v53, v140, v118);
  if (v69 != 1 && (*(v26 + 56) & 1) == 0)
  {
    v119 = *(v26 + 40);
    v120 = *(v26 + 48);
    if (sub_221BCE408())
    {
      OUTLINED_FUNCTION_140();
      if ((sub_221BCE408() & 1) == 0)
      {
        v139 = *(v26 + qword_27CFBC780);
        v133 = v53;
        v121 = *(v26 + qword_27CFBC780 + 8);
        v122 = *(v26 + qword_27CFBC780 + 16);
        sub_2219CB440();
        *&v142 = 0;
        *(&v142 + 1) = 0xE000000000000000;
        sub_221BCDE68();
        v123 = sub_2219CB3CC();
        MEMORY[0x223DA31F0](v123);

        OUTLINED_FUNCTION_28_1();
        v124 = sub_221BCE3F8();
        v125 = OUTLINED_FUNCTION_101(v124, 1000.0);
        OUTLINED_FUNCTION_100(v125, v126, 1.0e-15);
        sub_221BCD978();
        OUTLINED_FUNCTION_168();
        v127 = v142;
        OUTLINED_FUNCTION_77(&a10);
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_217();
        sub_221BB52B0(v128, v129, v130, v131, v132, v133, v140, v127, *(&v127 + 1));
        OUTLINED_FUNCTION_155();
      }
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D983C(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v142 = *(a1 + 16);
  v145 = v3;
  v146 = a1;
  v141 = *(a1 + 32);
  v4 = sub_221BCCE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v138 - v10;
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v138 - v22;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v139 = v9;
  v140 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v24 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v24, v23, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v12);
  v144 = 0;
  v143 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v19, v23, v12);
    sub_221BCDF88();
    v144 = sub_221BCDFA8();
    v143 = v26;
    v27 = *(v13 + 8);
    v27(v17, v12);
    v27(v19, v12);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v28 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v29, v2);
  }

  v30 = off_27CFBC778;
  swift_beginAccess();
  v138 = v30;
  v31 = *&v30[v2];
  v32 = &unk_27CFBC000;
  v33 = v146;
  if (*(v31 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v151, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = *(&v152 + 1);
    if (*(&v152 + 1))
    {
      v35 = v153;
      __swift_project_boxed_opaque_existential_0(&v151, *(&v152 + 1));
      v36 = EnumTagSinglePayload;
      v37 = v4;
      v38 = *(v35 + 32);

      v38(v39, 0x697274654D736961, 0xEA00000000007363, v34, v35);
      v32 = &unk_27CFBC000;
      v4 = v37;
      EnumTagSinglePayload = v36;
      v33 = v146;

      __swift_destroy_boxed_opaque_existential_0(&v151);
    }

    else
    {
      sub_2219EC58C(&v151, &qword_27CFB7FD0);
    }
  }

  if (*(v33 + 33))
  {
    v40 = v4;
    v41 = v145;
    sub_2219BAF0C(v2 + v32[241], &v151, &qword_27CFB7FD0, &qword_221BD2888);
    v42 = *(&v152 + 1);
    if (*(&v152 + 1))
    {
      *&v145 = v153;
      v43 = __swift_project_boxed_opaque_existential_0(&v151, *(&v152 + 1));
      v150 = v41;
      v44 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v147);
        *&v147 = v41;
        v45 = v41;
        v46 = sub_221BCE198();
        *&v142 = v43;
        if (v46)
        {
          v47 = v46;
          sub_2219EC58C(v33, &qword_27CFB8160);
        }

        else
        {
          v47 = swift_allocError();
          *v82 = v41;
        }

        v83 = sub_221BCC328();

        v84 = [v83 domain];
        v85 = sub_221BCD388();
        v87 = v86;

        v88 = [v83 code];
        v80 = v139;
        *v139 = v85;
        v80[1] = v87;
        v80[2] = v88;
        v79 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v79 = MEMORY[0x277CD8AC0];
        v80 = v139;
      }

      v89 = v140;
      (*(v140 + 104))(v80, *v79, v40);
      (*(v145 + 24))(v80, v42);
      (*(v89 + 8))(v80, v40);
      __swift_destroy_boxed_opaque_existential_0(&v151);
    }

    else
    {
      sub_2219EC58C(&v151, &qword_27CFB7FD0);
    }

    v90 = *(v2 + qword_27CFBC770);
    if (v90)
    {
      LODWORD(v145) = EnumTagSinglePayload;
      v91 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v33, &v151, &qword_27CFB8160, &qword_221BD2AA8);
      sub_22198BEB8(v90);
      v92 = sub_221BCCD68();
      v93 = sub_221BCDA78();

      sub_2219EC58C(v33, &qword_27CFB8160);
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v151 = v95;
        *v94 = 136315394;
        v96 = sub_2219CB3CC();
        v98 = sub_2219A6360(v96, v97, &v151);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2080;
        *&v147 = v41;
        v99 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v100 = sub_221BCE198();
        if (v100)
        {
          v101 = v100;
          sub_2219EC58C(v146, &qword_27CFB8160);
        }

        else
        {
          v101 = swift_allocError();
          *v123 = v41;
        }

        v124 = v90(v101);
        v126 = v125;

        v127 = sub_2219A6360(v124, v126, &v151);

        *(v94 + 14) = v127;
        _os_log_impl(&dword_221989000, v92, v93, "%s %s", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v95, -1, -1);
        MEMORY[0x223DA4C00](v94, -1, -1);
      }

      sub_22198B60C(v90);
      v122 = v143;
      EnumTagSinglePayload = v145;
      goto LABEL_49;
    }

    v102 = v41;
    v103 = *(v2 + qword_27CFDED20 + 17);

    if (v103)
    {
      v104 = v146;
      sub_2219BAF0C(v146, &v151, &qword_27CFB8160, &qword_221BD2AA8);
      v53 = sub_221BCCD68();
      v105 = sub_221BCDA78();

      sub_2219EC58C(v104, &qword_27CFB8160);
      if (os_log_type_enabled(v53, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v151 = v107;
        *v106 = 136315395;
        v108 = sub_2219CB3CC();
        v110 = sub_2219A6360(v108, v109, &v151);

        *(v106 + 4) = v110;
        *(v106 + 12) = 2085;
        *&v147 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v111 = sub_221BCE288();
        v113 = sub_2219A6360(v111, v112, &v151);

        *(v106 + 14) = v113;
        v114 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v53, v105, v114, v106, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v107, -1, -1);
        MEMORY[0x223DA4C00](v106, -1, -1);
      }
    }

    else
    {
      v115 = v146;
      sub_2219BAF0C(v146, &v151, &qword_27CFB8160, &qword_221BD2AA8);
      v53 = sub_221BCCD68();
      v105 = sub_221BCDA78();

      sub_2219EC58C(v115, &qword_27CFB8160);
      if (os_log_type_enabled(v53, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v151 = v107;
        *v106 = 136315395;
        v116 = sub_2219CB3CC();
        v118 = sub_2219A6360(v116, v117, &v151);

        *(v106 + 4) = v118;
        *(v106 + 12) = 2081;
        *&v147 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v119 = sub_221BCE288();
        v121 = sub_2219A6360(v119, v120, &v151);

        *(v106 + 14) = v121;
        v114 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v147 = v145;
  v148 = v142;
  v149 = v141;
  sub_2219BAF0C(v2 + v32[241], &v151, &qword_27CFB7FD0, &qword_221BD2888);
  v48 = *(&v152 + 1);
  if (*(&v152 + 1))
  {
    v49 = v153;
    __swift_project_boxed_opaque_existential_0(&v151, *(&v152 + 1));
    v50 = v140;
    (*(v140 + 104))(v11, *MEMORY[0x277CD8AC8], v4);
    (*(v49 + 24))(v11, v48, v49);
    (*(v50 + 8))(v11, v4);
    __swift_destroy_boxed_opaque_existential_0(&v151);
  }

  else
  {
    sub_2219EC58C(&v151, &qword_27CFB7FD0);
  }

  v51 = *(v2 + qword_27CFBC768);
  if (v51)
  {
    v52 = *(v2 + qword_27CFBC768 + 8);
    sub_22198BEB8(*(v2 + qword_27CFBC768));

    sub_2219BAF0C(v33, &v151, &qword_27CFB8160, &qword_221BD2AA8);
    v53 = sub_221BCCD68();
    v54 = v33;
    v55 = sub_221BCDA98();

    if (os_log_type_enabled(v53, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      LODWORD(v145) = EnumTagSinglePayload;
      v58 = v57;
      v150 = v57;
      *v56 = 136315394;
      v59 = sub_2219CB3CC();
      v61 = sub_2219A6360(v59, v60, &v150);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      v151 = v147;
      v152 = v148;
      LOBYTE(v153) = v149;
      v62 = v51(&v151);
      v64 = v63;
      sub_2219EC58C(v54, &qword_27CFB8160);
      v65 = sub_2219A6360(v62, v64, &v150);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_221989000, v53, v55, "%s%s", v56, 0x16u);
      swift_arrayDestroy();
      v66 = v58;
      EnumTagSinglePayload = v145;
      MEMORY[0x223DA4C00](v66, -1, -1);
      MEMORY[0x223DA4C00](v56, -1, -1);
      sub_22198B60C(v51);
      goto LABEL_44;
    }

    sub_22198B60C(v51);
    v81 = v54;
    goto LABEL_30;
  }

  sub_2219BAF0C(v33, &v151, &qword_27CFB8160, &qword_221BD2AA8);
  v67 = sub_221BCCD68();
  v68 = sub_221BCDA98();

  if (!os_log_type_enabled(v67, v68))
  {

    v81 = v33;
LABEL_30:
    sub_2219EC58C(v81, &qword_27CFB8160);
    goto LABEL_45;
  }

  v69 = swift_slowAlloc();
  v70 = v33;
  v71 = swift_slowAlloc();
  *&v151 = v71;
  *v69 = 136315394;
  v72 = sub_2219CB3CC();
  v74 = sub_2219A6360(v72, v73, &v151);

  *(v69 + 4) = v74;
  *(v69 + 12) = 2080;
  v75 = sub_2219C1710(&v147, *(v2 + qword_27CFDED20 + 17));
  v77 = v76;
  sub_2219EC58C(v70, &qword_27CFB8160);
  v78 = sub_2219A6360(v75, v77, &v151);

  *(v69 + 14) = v78;
  _os_log_impl(&dword_221989000, v67, v68, "%sCompleted with %s", v69, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v71, -1, -1);
  MEMORY[0x223DA4C00](v69, -1, -1);

LABEL_45:
  v122 = v143;
LABEL_49:
  sub_2219E7E58(v144, v122, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0)
  {
    v128 = *(v2 + 40);
    v129 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v130 = *(v2 + qword_27CFBC780);
      v146 = *(v2 + qword_27CFBC780 + 8);
      v131 = *(v2 + qword_27CFBC780 + 16);
      v132 = sub_2219CB440();
      v134 = v133;
      *&v151 = 0;
      *(&v151 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v135 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v135);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v136 = v151;
      v137 = *&v138[v2];

      sub_221BB52B0(v130, v146, v131, v132, v134, v144, v122, v136, *(&v136 + 1));
    }
  }
}