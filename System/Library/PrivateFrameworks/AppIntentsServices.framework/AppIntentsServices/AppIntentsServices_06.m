uint64_t sub_221A07524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  v17 = v16[30];
  v49 = v16[29];
  v50 = v16[31];
  v48 = v16[28];
  v19 = v16[26];
  v18 = v16[27];
  v21 = v16[24];
  v20 = v16[25];
  v23 = v16[22];
  v22 = v16[23];
  v25 = v16[20];
  v24 = v16[21];
  OUTLINED_FUNCTION_8_7();
  sub_221A0E654(v26, v27);
  v28 = OUTLINED_FUNCTION_17_2();
  v30 = OUTLINED_FUNCTION_100_1(v28, v29);
  v31(v30);
  v32 = *(v21 + 8);
  v33 = OUTLINED_FUNCTION_69_0();
  v34(v33);
  (*(v18 + 8))(v48, v19);
  (*(v17 + 8))(v50, v49);
  v35 = v16[31];
  v36 = v16[28];
  v37 = v16[25];
  v38 = v16[22];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, a11, v49, v50, a14, a15, a16);
}

uint64_t RunnerServiceDispatcherActor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
  v4 = sub_221BCC7B8();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t RunnerServiceDispatcherActor.__allocating_init(actorSystem:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_97_1();
  RunnerServiceDispatcherActor.init(actorSystem:)(v3);
  return v0;
}

uint64_t RunnerServiceDispatcherActor.init(actorSystem:)(uint64_t a1)
{
  v3 = sub_221BCC7B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem) = a1;
  type metadata accessor for RunnerServiceDispatcherActor();
  v15 = a1;
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v8, v9);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v10, v11);

  OUTLINED_FUNCTION_119_1();
  sub_221BCC618();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8448, &qword_221BD3710);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = MEMORY[0x277D84F98];
  *(v12 + 32) = nullsub_1;
  *(v12 + 40) = 0;
  *(v12 + 48) = nullsub_1;
  *(v12 + 56) = 0;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_inFlightPerformStore) = v12;
  v15 = *(v1 + v14);

  OUTLINED_FUNCTION_119_1();
  sub_221BCC5F8();

  return v1;
}

uint64_t sub_221A07948@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8498, &unk_221BD38E0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_221BCC868();
  sub_221BCC798();
  v8 = sub_221BCC858();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_221A0E69C(v7);
    v10 = 0uLL;
    v11 = 1;
    v12 = 0uLL;
  }

  else
  {
    sub_221BCC838();
    v13 = v16;
    v14 = v15;
    v11 = v17;
    result = (*(*(v8 - 8) + 8))(v7, v8);
    v12 = v13;
    v10 = v14;
  }

  *a1 = v10;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_221A07A64(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A07A7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *v1;
  v3 = v1[1];
  v5._countAndFlagsBits = *v1;
  v5._object = v3;
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v5);
  if (v6)
  {
    sub_221BCC328();

    v7 = *(v0 + 464);
    *v7 = v2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 472);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v0 + 408) = v4;
  *(v0 + 416) = v3;
  *(v0 + 424) = v11;
  *(v0 + 432) = v12;
  sub_2219AC930(v10 + 80, v0 + 272);
  type metadata accessor for LocalQueryExecutor();
  *(v0 + 488) = swift_initStackObject();

  sub_221998178(v11, v12);
  *(v0 + 496) = sub_2219AA560((v0 + 408), (v0 + 272));
  v14 = *(v10 + 40);
  v13 = *(v10 + 48);
  *(v0 + 440) = *(v10 + 32);
  *(v0 + 448) = v14;
  *(v0 + 456) = v13;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 504) = v15;
  *v15 = v16;
  v15[1] = sub_221A07C00;
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return sub_2219AA698(v17);
}

uint64_t sub_221A07C00()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 504);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  v5[64] = v0;

  if (v0)
  {
    v11 = v5[60];
    v12 = v5[57];

    v13 = sub_221A07E20;
  }

  else
  {
    v11 = v5[60];
    v5[65] = v3;
    v14 = v5[57];

    v13 = sub_221A07D2C;
  }

  return MEMORY[0x2822009F8](v13, v11, 0);
}

uint64_t sub_221A07D2C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  sub_221A07948(v0 + 236);
  *(v0 + 528) = *(v0 + 268);
  v3 = swift_allocObject();
  v4 = *(v0 + 252);
  *(v3 + 16) = *(v0 + 236);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 528);
  *(v3 + 49) = *(v0 + 226);
  *(v3 + 52) = *(v0 + 229);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  v5 = OUTLINED_FUNCTION_53_3();
  sub_221BB8ED4(v5, v6, v3);
  v8 = v7;

  v9 = *(v0 + 464);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_221A07E20()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[62];

  v2 = v0[64];
  v3 = sub_221BCC328();

  v4 = v0[58];
  *v4 = v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221A07EA4()
{
  OUTLINED_FUNCTION_1_5();
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221A07F30, v0, 0);
}

uint64_t sub_221A07F30()
{
  OUTLINED_FUNCTION_104();
  v35 = *MEMORY[0x277D85DE8];
  v1 = v0[35];
  v2 = v0[36];
  v3 = *v1;
  v4 = v1[1];
  v5._countAndFlagsBits = OUTLINED_FUNCTION_69_0();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v5);
  v7 = v6;
  if (v6)
  {
LABEL_4:
    sub_221BCC328();

    OUTLINED_FUNCTION_114_1();
    v14 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_238();

    __asm { BRAA            X3, X16 }
  }

  v8 = v0[35];
  type metadata accessor for CachedLinkMetadataProvider();
  v0[37] = swift_initStackObject();
  v0[38] = sub_221BB6B80();
  v9 = v8[8];
  __swift_project_boxed_opaque_existential_0(v8 + 4, v8[7]);
  v10 = *(v9 + 16);
  v11 = OUTLINED_FUNCTION_75();
  v12(v11, v9);
  OUTLINED_FUNCTION_69_0();
  v13 = sub_221BB7510();
  v0[39] = v13;

  v17 = [objc_opt_self() policyWithEntityMetadata_];
  v0[33] = 0;
  v18 = [v17 connectionWithError_];
  v0[40] = v18;

  v19 = v0[33];
  if (!v18)
  {
    v33 = v19;
    v7 = sub_221BCC338();

    swift_willThrow();

    goto LABEL_4;
  }

  v20 = v0[35];
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v23 = v19;
  v24 = sub_221BCD358();
  v0[41] = v24;
  v25 = v8[7];
  v26 = v8[8];
  __swift_project_boxed_opaque_existential_0(v8 + 4, v25);
  v27 = sub_22199B82C(v25, v26);
  v28 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  v0[42] = v28;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_221A08280;
  v29 = swift_continuation_init();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F70, &qword_221BD8080);
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_221A34B38;
  v0[28] = &block_descriptor_63;
  v0[29] = v29;
  [v18 fetchValueForPropertyWithIdentifier:v24 entity:v28 completionHandler:v0 + 25];
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return MEMORY[0x282200938](v31);
}

uint64_t sub_221A08280()
{
  OUTLINED_FUNCTION_1_5();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 344) = v5;
  v6 = *(v4 + 288);
  if (v5)
  {
    v7 = sub_221A08538;
  }

  else
  {
    v7 = sub_221A083C4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_221A083C4()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);

  sub_221A07948(v0 + 360);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  *(v0 + 352) = *(v0 + 392);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);
  if (v2)
  {
    v14 = v3;
    v15 = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = v15;
    *(v8 + 32) = v14;
    *(v8 + 48) = *(v0 + 352);
    *(v8 + 49) = *(v0 + 353);
    *(v8 + 52) = *(v0 + 356);
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    sub_221BB8ED4(v2, sub_2219B1AA8, v8);
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  OUTLINED_FUNCTION_114_1();
  v12 = *MEMORY[0x277D85DE8];

  return v11(v10, 0);
}

void sub_221A08538()
{
  OUTLINED_FUNCTION_67();
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  swift_willThrow();

  v7 = v0[43];
  sub_221BCC328();

  OUTLINED_FUNCTION_114_1();
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_123_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_221A08608(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A08624()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = objc_opt_self();

  OUTLINED_FUNCTION_0_0();
  v5 = sub_221BCD358();
  v6 = [v4 applicationWithBundleIdentifier_];

  v7 = [v6 isHidden];
  v8 = [v6 isLocked];

  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = xmmword_221BD04D0;
  *(v3 + 32) = v9 | v7;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_221A08778()
{
  result = qword_27CFBB570;
  if (!qword_27CFBB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB570);
  }

  return result;
}

unint64_t sub_221A087CC()
{
  result = qword_27CFB8360;
  if (!qword_27CFB8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8360);
  }

  return result;
}

unint64_t sub_221A08820()
{
  result = qword_27CFBB540;
  if (!qword_27CFBB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB540);
  }

  return result;
}

unint64_t sub_221A08874()
{
  result = qword_27CFB8368;
  if (!qword_27CFB8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8368);
  }

  return result;
}

uint64_t type metadata accessor for RunnerServiceDispatcherActor()
{
  result = qword_27CFB8478;
  if (!qword_27CFB8478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A08914(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A03890();
}

uint64_t sub_221A08AC4()
{
  OUTLINED_FUNCTION_1_5();
  v6 = *MEMORY[0x277D85DE8];
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221A08B54, v0, 0);
}

uint64_t sub_221A08B54()
{
  v78 = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  sub_2219EB748(v0[25], (v0 + 18));
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_97_1();
  v5(v4, v2);
  sub_2219982C4(v76, v77);
  v6._countAndFlagsBits = OUTLINED_FUNCTION_70();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v6);
  v8 = v7;
  if (v7)
  {
    sub_2219B397C((v0 + 18));

LABEL_30:
    v63 = v0[24];
    sub_221BCC328();

    OUTLINED_FUNCTION_116_1();
    OUTLINED_FUNCTION_25();
    v65 = *MEMORY[0x277D85DE8];

    return v64();
  }

  if (qword_27CFB7348 != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_98();
  }

  v9 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_75();
  v12(v11, v9);
  sub_2219982C4(v76, v77);
  v13 = v0[21];
  v14 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v13);
  (*(v14 + 16))(v13, v14);
  v16 = v15;
  v17 = OUTLINED_FUNCTION_4();
  v20 = sub_221BB8738(v17, v18, v75, v19, v16);
  v0[27] = v20;
  v0[28] = v8;
  if (v8)
  {

LABEL_29:
    sub_2219B397C((v0 + 18));
    goto LABEL_30;
  }

  v21 = v20;
  v22 = v0[25];

  v23 = *(v22 + 88);
  v72 = *(v22 + 80);

  v71 = v21;
  v24 = [v21 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v8 = sub_221BCD668();

  v25 = sub_2219A69A0(v8);
  for (i = 0; ; ++i)
  {
    if (v25 == i)
    {

      sub_2219ACADC();
      v8 = OUTLINED_FUNCTION_17_2();
      *v33 = v72;
      *(v33 + 8) = v23;
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = 3;
      swift_willThrow();

      goto LABEL_29;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x223DA3BF0](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v27 = *(v8 + 8 * i + 32);
    }

    v28 = v27;
    v0[29] = v27;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v29 = sub_2219ACA70(v27);
    if (!v30)
    {
      goto LABEL_18;
    }

    if (v29 == v72 && v30 == v23)
    {
      break;
    }

    v32 = sub_221BCE1B8();

    if (v32)
    {
      goto LABEL_22;
    }

LABEL_18:
  }

LABEL_22:

  v34 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v35 = *(v34 + 24);
  v36 = OUTLINED_FUNCTION_75();
  v38 = v37(v36, v34);
  v39 = *(v38 + 16);
  if (v39)
  {
    v74 = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v40 = (v38 + 48);
    do
    {
      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      v40 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v44 = v43;

      sub_2219A62D8(v41, v42, v43);
      sub_221BCDEF8();
      v45 = *(v74 + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v39;
    }

    while (v39);
  }

  v46 = [objc_opt_self() policyWithActionMetadata_];
  v0[30] = v46;
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v47 = sub_221BCD658();

  v48 = [v46 actionWithParameters_];
  v0[31] = v48;

  v0[10] = 0;
  v49 = [v46 connectionWithError_];
  v0[32] = v49;
  v50 = v0[10];
  if (!v49)
  {
    v62 = v50;
    v8 = sub_221BCC338();

    swift_willThrow();
    goto LABEL_29;
  }

  v51 = v49;
  v73 = v48;
  v52 = v0[25];
  v53 = v52[8];
  v54 = v52[9];
  __swift_project_boxed_opaque_existential_0(v52 + 5, v53);
  v55 = *(v54 + 24);
  v56 = v50;
  v0[33] = v55(v53, v54);
  v0[34] = v57;
  if (v52[16])
  {
    v58 = *(v0[25] + 120);
    v59 = v73;
    v60 = v73;
    v61 = sub_221BCD358();
  }

  else
  {
    v59 = v73;
    v67 = v73;
    v61 = 0;
  }

  v0[35] = v61;
  v68 = sub_221BCD358();
  v0[36] = v68;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221A09278;
  v69 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80C0, &qword_221BD29C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221A34BBC;
  v0[13] = &block_descriptor_79;
  v0[14] = v69;
  [v51 fetchOptionsForAction:v59 actionMetadata:v71 parameterMetadata:v28 searchTerm:v61 localeIdentifier:v68 completionHandler:?];
  v70 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A09278()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[37] = v5;
  if (v5)
  {
    v6 = v2[34];
    v7 = v2[26];

    v8 = *MEMORY[0x277D85DE8];
    v9 = sub_221A09594;
    v10 = v7;
  }

  else
  {
    v10 = v2[26];
    v11 = *MEMORY[0x277D85DE8];
    v9 = sub_221A093E4;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_221A093E4()
{
  v28 = v0;
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_2219AF2D0(v7, v2, v3, v2, &v23);
  v8 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  if (v5)
  {
    sub_2219B397C(v0 + 144);

    swift_bridgeObjectRelease_n();

    v15 = *(v0 + 192);
    sub_221BCC328();

    OUTLINED_FUNCTION_116_1();
  }

  else
  {
    v16 = *(v0 + 192);
    sub_2219B397C(v0 + 144);

    swift_bridgeObjectRelease_n();

    v17 = v24;
    v18 = v25;
    v19 = v26;
    *v16 = v23;
    *(v16 + 16) = v17;
    *(v16 + 24) = v18;
    *(v16 + 32) = v19;
  }

  OUTLINED_FUNCTION_25();
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

void sub_221A09594()
{
  OUTLINED_FUNCTION_104();
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[27];
  swift_willThrow();

  sub_2219B397C((v0 + 18));
  v9 = v0[37];
  v10 = v0[24];
  v11 = sub_221BCC328();

  *v10 = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0x80;
  OUTLINED_FUNCTION_25();
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_221A096EC()
{
  result = qword_27CFBB420;
  if (!qword_27CFBB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB420);
  }

  return result;
}

unint64_t sub_221A09740()
{
  result = qword_27CFB8388;
  if (!qword_27CFB8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8388);
  }

  return result;
}

unint64_t sub_221A09794()
{
  result = qword_27CFBB3F0;
  if (!qword_27CFBB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3F0);
  }

  return result;
}

unint64_t sub_221A097E8()
{
  result = qword_27CFB8390;
  if (!qword_27CFB8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8390);
  }

  return result;
}

uint64_t sub_221A0983C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A040F4();
}

uint64_t sub_221A099EC(uint64_t a1, uint64_t a2)
{
  v3[187] = v2;
  v3[186] = a2;
  v3[185] = a1;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A09A08()
{
  v1 = *(v0 + 1496);
  sub_2219EB748(*(v0 + 1488), v0 + 1344);
  sub_22198B358((v0 + 1344), v0 + 1304);
  v2 = *(v0 + 1336);
  __swift_project_boxed_opaque_existential_0((v0 + 1304), *(v0 + 1328));
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_97_1();
  v5(v4, v2);
  sub_2219982C4(v47, v48);
  v6._countAndFlagsBits = OUTLINED_FUNCTION_70();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v6);
  if (v7)
  {
    v8 = *(v0 + 1480);

    __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
    v9 = sub_221BCC328();

    *v8 = v9;
    type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    OUTLINED_FUNCTION_25();

    return v10();
  }

  sub_2219A1B08(v0 + 1304, v0 + 1384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 1488);
    v13 = *(v0 + 1192);
    v14 = *(v0 + 1200);
    *(v0 + 1504) = v14;
    v15 = *(v0 + 1208);
    *(v0 + 1512) = v15;
    v16 = *(v0 + 1232);
    *(v0 + 1528) = v16;
    v17 = *(v0 + 1240);
    *(v0 + 1536) = v17;
    *(v0 + 1248) = v13;
    *(v0 + 1256) = v14;
    *(v0 + 1264) = v15;
    v18 = *(v0 + 1216);
    *(v0 + 1520) = v18;
    *(v0 + 1272) = v18;
    *(v0 + 1288) = v16;
    *(v0 + 1296) = v17;
    v19 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    v20 = v19[7];
    memcpy((v0 + 232), (v12 + v20), 0xD7uLL);
    memcpy((v0 + 448), (v12 + v20), 0xD7uLL);
    v21 = v19[6];
    v22 = (v12 + v19[8]);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v22 + 16);
    LOBYTE(v22) = *(v22 + 17);
    *(v0 + 1456) = v23;
    *(v0 + 1464) = v24;
    *(v0 + 1472) = v25;
    *(v0 + 1473) = v22;
    *(v0 + 231) = *(v12 + v19[9]);
    sub_221A0E888(v0 + 232, v0 + 664);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1544) = v26;
    *v26 = v27;
    v26[1] = sub_221A09E1C;
    v28 = *(v0 + 1496);
    v29 = *(v0 + 1480);

    return sub_221A0A950();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v43 = *(v0 + 1480);
      sub_2219A1218();
      v44 = OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_118_1(v45, 8);
      v46 = sub_221BCC328();
      OUTLINED_FUNCTION_103_1(v46);
      OUTLINED_FUNCTION_52_2();

      __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
      __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
      goto LABEL_3;
    }

    v30 = *(v0 + 1488);
    memcpy((v0 + 984), (v0 + 880), 0x68uLL);
    memcpy((v0 + 1088), (v0 + 880), 0x68uLL);
    v31 = *(v30 + 24);
    v32 = *(v30 + 32);
    v33 = OUTLINED_FUNCTION_70();
    __swift_project_boxed_opaque_existential_0(v33, v34);
    v35 = *(v32 + 8);
    v36 = OUTLINED_FUNCTION_4();
    v37(v36);
    v38 = *(v0 + 1424);
    *(v0 + 1552) = *(v0 + 1432);
    sub_2219982C4(*(v0 + 1440), *(v0 + 1448));
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1560) = v39;
    *v39 = v40;
    v39[1] = sub_221A0A054;
    v41 = *(v0 + 1496);
    v42 = *(v0 + 1480);

    return sub_221A0A388();
  }
}

uint64_t sub_221A09E1C()
{
  OUTLINED_FUNCTION_104();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  v4 = v1[193];
  v5 = v1[192];
  v6 = v1[191];
  v7 = v1[190];
  v8 = v1[189];
  v9 = v1[188];
  v10 = v1[187];
  *v3 = *v0;

  v11 = v1[183];

  memcpy(v2 + 2, v2 + 56, 0xD7uLL);
  sub_221A0E8E4((v2 + 2));

  v12 = OUTLINED_FUNCTION_221();
  sub_2219982C4(v12, v13);

  return MEMORY[0x2822009F8](sub_221A09FF4, v10, 0);
}

uint64_t sub_221A09FF4()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A0A054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[195];
  v3 = v1[194];
  v4 = v1[187];
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_221A0A170, v4, 0);
}

uint64_t sub_221A0A170()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A0A1D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A049CC();
}

uint64_t sub_221A0A388()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  memcpy(v1 + 10, v5, 0x68uLL);
  v6 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221A0A3F0()
{
  OUTLINED_FUNCTION_67();
  v16 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v1 = sub_221BCCD88();
  __swift_project_value_buffer(v1, qword_27CFDEDB0);
  v2 = sub_221BCCD68();
  v3 = sub_221BCDA98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = static Instrumentation.currentActivityId.getter();
    v8 = sub_2219A6360(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_221989000, v2, v3, "%sPerforming LNURLLaunchRequest", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DA4C00](v5, -1, -1);
    MEMORY[0x223DA4C00](v4, -1, -1);
  }

  v9 = sub_2219B5FDC();
  v10 = [objc_allocWithZone(MEMORY[0x277D23CC8]) initWithAction_];
  v0[35] = v10;

  v0[2] = v0;
  v0[3] = sub_221A0A62C;
  v11 = swift_continuation_init();
  v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  v0[23] = MEMORY[0x277D85DD0];
  v0[24] = 1107296256;
  v0[25] = sub_2219C5280;
  v0[26] = &block_descriptor_3;
  v0[27] = v11;
  [v10 performWithCompletionHandler_];
  OUTLINED_FUNCTION_123_0();

  return MEMORY[0x282200938](v12);
}

uint64_t sub_221A0A62C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 288) = v4;
  v5 = *(v3 + 272);
  if (v4)
  {
    v6 = sub_221A0A80C;
  }

  else
  {
    v6 = sub_221A0A740;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221A0A740()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  *(v4 + 112) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;

  *(v4 + 120) = 0;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0;
  *(v4 + 224) = v3;
  *(v4 + 232) = v2;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();
  v7 = v5;

  return v7();
}

void sub_221A0A80C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  v2 = v0[36];
  swift_willThrow();

  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98();
  }

  if (sub_221BB85FC(v0[32], v0[33]))
  {
    v3 = v0[36];
    v4 = v0[31];
    sub_2219A1218();
    v5 = OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_118_1(v6, 3);
  }

  else
  {
    v3 = v0[36];
    v11 = v0[32];
    v10 = v0[33];
    v4 = v0[31];
    sub_2219ACADC();
    v5 = OUTLINED_FUNCTION_17_2();
    *v12 = v11;
    *(v12 + 8) = v10;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
  }

  v7 = sub_221BCC328();

  *v4 = v7;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_52_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A0A950()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  *(v1 + 232) = *v6;
  *(v1 + 304) = v8;
  *(v1 + 312) = v0;
  *(v1 + 288) = v9;
  *(v1 + 296) = v10;
  *(v1 + 248) = v7;
  *(v1 + 264) = *(v6 + 32);
  *(v1 + 280) = *(v6 + 48);
  memcpy((v1 + 16), v11, 0xD7uLL);
  *(v1 + 320) = *v5;
  *(v1 + 231) = *(v5 + 16);
  *(v1 + 360) = *(v5 + 17);
  *(v1 + 361) = *v3;
  v12 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A0AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  LODWORD(v39) = *(v16 + 360);
  HIDWORD(v39) = *(v16 + 361);
  v17 = *(v16 + 231);
  v19 = *(v16 + 320);
  v18 = *(v16 + 328);
  v20 = *(v16 + 312);
  type metadata accessor for RunnerServiceDispatcherActor();
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v21, v22);
  v38 = *(v16 + 296);
  *(v16 + 336) = sub_221BCC668();
  v23 = swift_task_alloc();
  *(v16 + 344) = v23;
  *(v23 + 16) = v16 + 232;
  *(v23 + 24) = v16 + 16;
  *(v23 + 32) = v20;
  *(v23 + 40) = v38;
  *(v23 + 56) = v19;
  *(v23 + 64) = v18;
  *(v23 + 72) = v17;
  *(v23 + 73) = v39;
  *(v23 + 74) = BYTE4(v39);
  v24 = *(MEMORY[0x277D859E0] + 4);
  v25 = swift_task_alloc();
  *(v16 + 352) = v25;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_58_2();
  *v25 = v26;
  v25[1] = sub_221A0AB98;
  v27 = *(v16 + 288);
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822007B8](v28, v29, v30, v31, v32, v33, v34, v35, v38, *(&v38 + 1), a11, v39, "inFlightPerformStore", a14, a15, a16);
}

uint64_t sub_221A0AB98()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[44];
  v3 = v1[43];
  v4 = v1[42];
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_25();

  return v7();
}

void sub_221A0ACB0(void *a1, uint64_t *a2, void *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10)
{
  v106 = a7;
  v107 = a8;
  v108 = a6;
  v109 = a3;
  v105 = a5;
  v103 = a4;
  v111 = a1;
  v114[5] = *MEMORY[0x277D85DE8];
  v110 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v11 = *(*(v110 - 1) + 64);
  MEMORY[0x28223BE20](v110);
  v13 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_221BCC558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v102 = *(v22 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x28223BE20](v22);
  v104 = &v93 - v24;
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v25 = sub_221BB8738(qword_27CFDED38, *a2, a2[1], a2[4], a2[5]);
  v98 = v21;
  v99 = v25;
  v27 = a2[6];
  v28 = *(v27 + 16);
  v100 = v15;
  v101 = v14;
  v97 = v19;
  if (v28)
  {
    v113[0] = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v29 = (v27 + 48);
    do
    {
      v30 = *(v29 - 2);
      v31 = *(v29 - 1);
      v32 = *v29;
      v29 += 5;
      v33 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v34 = v32;

      sub_2219A62D8(v30, v31, v32);
      sub_221BCDEF8();
      v35 = *(v113[0] + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v28;
    }

    while (v28);
  }

  v36 = v109[12];
  if (v36)
  {
    v37 = v109[11];
    v38 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
    sub_221A55F28(v37, v36, v38);
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_opt_self();
  v40 = v99;
  v41 = [v39 policyWithActionMetadata:v99 signals:v38];

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v42 = sub_221BCD658();

  v43 = [v41 actionWithParameters_];

  v113[0] = 0;
  v44 = [v41 connectionWithError_];
  v45 = v113[0];
  if (v44)
  {
    v46 = v44;
    v96 = v43;
    v110 = v41;
    v95 = a10;
    v94 = a9;
    v47 = v104;
    (*(v102 + 16))(v104, v111, v22);
    v48 = *&v103[OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_inFlightPerformStore];
    v49 = v40;

    v50 = v45;
    v111 = v46;
    v51 = [v46 bundleIdentifier];
    v52 = sub_221BCD388();
    v99 = v53;

    v54 = v105;
    sub_2219A1B08(v105, v114);
    v55 = v98;
    v56 = v108;
    v102 = *(v100 + 16);
    (v102)(v98, v108, v101);
    v112[0] = BYTE1(v94) & 1;
    v57 = v109;
    memcpy(v113, v109 + 14, 0x64uLL);
    v58 = objc_allocWithZone(_s14descr283510E01V29PerformActionExecutorDelegateCMa());
    v103 = v49;
    v59 = sub_221A0FE30(v49, v47, v48, v52, v99, v114, v55, v112, v113);
    sub_221A349CC(v59, v56);
    memcpy(v113, v57, 0xD7uLL);
    v60 = v54[3];
    v61 = v54[4];
    __swift_project_boxed_opaque_existential_0(v54, v60);
    v62 = sub_2219AD2F4(v60, v61);
    v63 = 0;
    if (v95 != 11)
    {
      LOBYTE(v114[0]) = v95;
      v63 = sub_221AE7140();
    }

    v64 = sub_221AE7294(v106, v107, v62, v63);

    v65 = v96;
    v109 = v59;
    v66 = [v111 executorForAction:v96 options:v64 delegate:v59];
    [v66 perform];
    if (qword_27CFB7370 != -1)
    {
      swift_once();
    }

    v67 = sub_221BCCD88();
    __swift_project_value_buffer(v67, qword_27CFDEDB0);
    v68 = v97;
    v69 = v101;
    (v102)(v97, v108, v101);
    v70 = v66;
    v71 = sub_221BCCD68();
    v72 = sub_221BCDA98();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v108 = v64;
      v74 = v73;
      v107 = swift_slowAlloc();
      v113[0] = v107;
      *v74 = 136315650;
      v75 = static Instrumentation.currentActivityId.getter();
      LODWORD(v106) = v72;
      v77 = sub_2219A6360(v75, v76, v113);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      sub_221A0E654(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
      v78 = sub_221BCE168();
      v79 = v68;
      v81 = v80;
      v82 = *(v100 + 8);
      v82(v79, v69);
      v83 = sub_2219A6360(v78, v81, v113);

      *(v74 + 14) = v83;
      *(v74 + 22) = 2080;
      v84 = [v70 identifier];
      v85 = v98;
      sub_221BCC528();

      v86 = sub_221BCE168();
      v88 = v87;
      v82(v85, v69);
      v89 = sub_2219A6360(v86, v88, v113);

      *(v74 + 24) = v89;
      _os_log_impl(&dword_221989000, v71, v106, "%sexecutionIdentifier: %s, LNActionExecutor: %s", v74, 0x20u);
      v90 = v107;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v90, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);
    }

    else
    {

      (*(v100 + 8))(v68, v69);
    }
  }

  else
  {
    v91 = v113[0];
    v92 = sub_221BCC338();

    swift_willThrow();
    *v13 = sub_221BCC328();
    swift_storeEnumTagMultiPayload();
    sub_221BCD798();
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_221A0B5E8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0B8EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[4];
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A0BA24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A04F1C();
}

uint64_t sub_221A0BBD4()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0BED8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A05364();
}

uint64_t sub_221A0C088()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0C38C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[4];
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A0C4C4()
{
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A0C524()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0C828(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A057AC();
}

uint64_t sub_221A0C9D8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0CCDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A05BF4();
}

uint64_t sub_221A0CE8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A06048();
}

uint64_t sub_221A0D03C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0D340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  return a2;
}

uint64_t sub_221A0D39C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A0E954;

  return sub_221A0649C();
}

unint64_t sub_221A0D5A8()
{
  result = qword_27CFBB170;
  if (!qword_27CFBB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB170);
  }

  return result;
}

unint64_t sub_221A0D5FC()
{
  result = qword_27CFB8418;
  if (!qword_27CFB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8418);
  }

  return result;
}

unint64_t sub_221A0D650()
{
  result = qword_27CFBB140;
  if (!qword_27CFBB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB140);
  }

  return result;
}

unint64_t sub_221A0D6A4()
{
  result = qword_27CFB8420;
  if (!qword_27CFB8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8420);
  }

  return result;
}

uint64_t sub_221A0D6F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_221A0D894;

  return sub_221A06D90();
}

void sub_221A0D894()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v14 = *v0;
  *v6 = v7;
  *(v6 + 8) = v8 & 1;

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_4();
  v11(v10);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_221A0DA74()
{
  result = qword_27CFBB510;
  if (!qword_27CFBB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB510);
  }

  return result;
}

unint64_t sub_221A0DAC8()
{
  result = qword_27CFB8430;
  if (!qword_27CFB8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8430);
  }

  return result;
}

unint64_t sub_221A0DB1C()
{
  result = qword_27CFBB4E0;
  if (!qword_27CFBB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4E0);
  }

  return result;
}

unint64_t sub_221A0DB70()
{
  result = qword_27CFB8438;
  if (!qword_27CFB8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8438);
  }

  return result;
}

uint64_t static RunnerServiceDispatcherActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v5, v6);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v7, v8);
  v9 = sub_221BCC608();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
    v12 = sub_221BCC7B8();
    OUTLINED_FUNCTION_2_1(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem) = a2;
  }

  return v10;
}

uint64_t RunnerServiceDispatcherActor.deinit()
{
  v1 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
  v2 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem;
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v3, v4);
  sub_221BCC628();
  v5 = sub_221BCC7B8();
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_inFlightPerformStore);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RunnerServiceDispatcherActor.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
    v2 = sub_221BCC7B8();
    OUTLINED_FUNCTION_2_1(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    RunnerServiceDispatcherActor.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221A0DE70()
{
  sub_221BCE308();
  type metadata accessor for RunnerServiceDispatcherActor();
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v0, v1);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t RunnerServiceDispatcherActor.unownedExecutor.getter()
{
  if ((sub_221BCC6B8() & 1) == 0)
  {
    type metadata accessor for RunnerServiceDispatcherActor();
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v1, v2);
    OUTLINED_FUNCTION_70();
    return sub_221BCC5E8();
  }

  return v0;
}

uint64_t sub_221A0DF64@<X0>(uint64_t *a1@<X8>)
{
  result = RunnerServiceDispatcherActor.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_221A0DFF0()
{
  v1 = *v0;
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);
  return sub_221BCC688();
}

uint64_t sub_221A0E06C()
{
  v2 = *v0;
  sub_221BCE308();
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A0E1A0(uint64_t a1)
{
  result = sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A0E2AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RunnerServiceDispatcherActor();
  v5 = sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_221A0E338()
{
  v1 = *v0;
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);
  sub_221A0E654(&qword_27CFB8490, MEMORY[0x277D7E9B8]);
  return sub_221BCC698();
}

uint64_t sub_221A0E400@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);
  sub_221A0E654(&qword_27CFB8488, MEMORY[0x277D7E9B8]);
  result = sub_221BCC6A8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_221A0E4D8()
{
  result = sub_221BCC7B8();
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

void sub_221A0E5D4(void *a1)
{
  if (*(v1 + 73))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_221A0ACB0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v2 | *(v1 + 72), *(v1 + 74));
}

uint64_t sub_221A0E654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221A0E69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8498, &unk_221BD38E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_221A0E704()
{
  result = qword_27CFB9440;
  if (!qword_27CFB9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9440);
  }

  return result;
}

uint64_t sub_221A0E80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_4_9()
{
  *(v1 + 8) = v0;
  v6 = v2[18];
  v7 = v2[10];
  v8 = v2[7];
  v9 = v2[4];
  v10 = v2[2];
  v5[6] = v4;
  v5[7] = v8;
  v5[5] = v3;
}

uint64_t OUTLINED_FUNCTION_5_11()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
  v8 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_7_6(unint64_t *a1)
{

  return sub_221A0E654(a1, v1);
}

void OUTLINED_FUNCTION_14_7()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[3];
  v5 = v0[4];
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return MEMORY[0x2821E7760](v1, v2, v3, a1);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 9;

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return MEMORY[0x2821E7768](v1, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return MEMORY[0x2821E7768](v0, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return MEMORY[0x2821E7760](v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  result = *(v0 + 24);
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t result)
{
  *(v2 + 64) = result;
  *(result + 16) = v1;
  *(result + 24) = v3;
  return result;
}

void OUTLINED_FUNCTION_42_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_221BCC558();
}

uint64_t OUTLINED_FUNCTION_46_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);

  return MEMORY[0x2821E7780]();
}

uint64_t OUTLINED_FUNCTION_49_3(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *(v1 + 152) = a1;

  return type metadata accessor for RunnerServiceDispatcherActor();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return type metadata accessor for RunnerServiceDispatcherActor();
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1)
{
  *(v1 + 72) = a1;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t result)
{
  v3[3] = result;
  v3[4] = v1;
  v3[2] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return sub_221BCC6E8();
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219A6360(v9, v10, &a9);
}

uint64_t OUTLINED_FUNCTION_81_1()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return sub_221BCCD88();
}

BOOL OUTLINED_FUNCTION_83_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_96_2()
{
  result = v0[53];
  v2 = v0[50];
  v3 = v0[47];
  return result;
}

uint64_t OUTLINED_FUNCTION_100_1(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_1()
{
  v2 = *(v0 + 144);

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_102_1(unint64_t *a1)
{

  return sub_221A0E654(a1, v1);
}

uint64_t OUTLINED_FUNCTION_103_1(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{
  *(v1 + 120) = a1;

  return sub_221BCC768();
}

uint64_t OUTLINED_FUNCTION_105_1(uint64_t a1)
{
  *(v1 + 56) = a1;

  return sub_221BCC6C8();
}

uint64_t OUTLINED_FUNCTION_106_1()
{
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return sub_221BCE168();
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_221BCC668();
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_221BCC6D8();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219A6360(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_116_1()
{
  *v0 = v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x80;
}

void OUTLINED_FUNCTION_118_1(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
}

uint64_t sub_221A0F190(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v50 - v7;
  v9 = sub_221BCC418();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v50 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v50 - v17;
  v19 = [v3 fileURL];
  if (v19)
  {
    v20 = v19;
    v53 = v3;
    sub_221BCC3B8();

    v21 = *(v10 + 32);
    v21(v18, v16, v9);
    v22 = v18;
    if (sub_221BCC3C8())
    {
      v23 = v9;
      if (*(a1 + 32))
      {
        if (qword_27CFB73C8 != -1)
        {
          OUTLINED_FUNCTION_0_23();
          swift_once();
        }

        v24 = sub_221BCCD88();
        __swift_project_value_buffer(v24, qword_27CFDEEA0);
        v25 = sub_221BCCD68();
        v26 = sub_221BCDA78();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_221989000, v25, v26, "Unable to obtain audit token", v27, 2u);
          MEMORY[0x223DA4C00](v27, -1, -1);
        }

        v22 = type metadata accessor for IntentsServices.SecurityError();
        sub_221A0FA60();
        OUTLINED_FUNCTION_1_23();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v10 + 8))(v18, v9);
      }

      else
      {
        v37 = sub_221BC4328(v18, 0, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
        if (v2)
        {
          (*(v10 + 8))(v18, v9);
        }

        else
        {
          v40 = v54;
          v52 = v38;
          sub_221BC48B0(v37, v38, 1, v54);
          v41 = *(v10 + 8);
          v50[2] = v10 + 8;
          v51 = v41;
          v41(v18, v23);
          v21(v18, v40, v23);
          sub_221BCC3A8();
          v50[1] = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
          v42 = v40;
          (*(v10 + 16))(v40, v18, v23);
          v43 = v53;
          v44 = [v53 filename];
          v45 = sub_221BCD388();
          v47 = v46;

          v48 = sub_221B8B5A4(v43);
          v22 = sub_221B86580(v42, v45, v47, v48, v49);
          v51(v18, v23);
        }
      }

      return v22;
    }

    (*(v10 + 8))(v18, v9);
    v3 = v53;
  }

  if (qword_27CFB73C8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v28 = sub_221BCCD88();
  __swift_project_value_buffer(v28, qword_27CFDEEA0);
  v29 = sub_221BCCD68();
  v30 = sub_221BCDA78();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_221989000, v29, v30, "Failed to obtain secure access", v31, 2u);
    MEMORY[0x223DA4C00](v31, -1, -1);
  }

  v22 = type metadata accessor for IntentsServices.SecurityError();
  sub_221A0FA60();
  OUTLINED_FUNCTION_1_23();
  v33 = v32;
  v34 = [v3 fileURL];
  if (v34)
  {
    v35 = v34;
    sub_221BCC3B8();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v36, 1, v9);
  sub_221A0FAB8(v8, v33);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v22;
}

void sub_221A0F6D8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 displayRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = sub_221B85444(*(a2 + 40), *(a2 + 48));
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 valueType];
  v10 = objc_opt_self();
  v11 = [v10 fileValueType];
  sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
  v12 = sub_221BCDC58();

  if ((v12 & 1) == 0)
  {
    v19 = [a1 exportedContent];
    if (v19)
    {

      v20 = [a1 value];
      sub_221BCDCF8();
      swift_unknownObjectRelease();
      *(a3 + 32) = [a1 valueType];
      *(a3 + 40) = v8;
      *(a3 + 48) = [a1 exportedContent];
      v21 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v21 = 0;
    *a3 = v8;
    *(a3 + 8) = 0;
    goto LABEL_15;
  }

  v13 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v14 = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CFB73C8 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEEA0);
    v16 = sub_221BCCD68();
    v17 = sub_221BCDA78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_221989000, v16, v17, "Unable to update Intent File", v18, 2u);
      MEMORY[0x223DA4C00](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v22 = sub_221A0F190(a2);
  v23 = [a1 exportedContent];
  if (v23)
  {
    v24 = v23;
    sub_2219A1D20(0, &qword_27CFB84A8, 0x277D23C10);
    v25 = sub_221A5C6AC([v24 contentType], v22);
  }

  else
  {
    v25 = 0;
  }

  *(a3 + 24) = v14;
  *a3 = v22;
  v26 = v22;
  v27 = [v10 fileValueType];

  *(a3 + 32) = v27;
  *(a3 + 40) = v8;
  v21 = 1;
  *(a3 + 48) = v25;
LABEL_15:
  *(a3 + 56) = v21;
}

unint64_t sub_221A0FA60()
{
  result = qword_27CFB84B0;
  if (!qword_27CFB84B0)
  {
    type metadata accessor for IntentsServices.SecurityError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB84B0);
  }

  return result;
}

uint64_t sub_221A0FAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return swift_allocError();
}

uint64_t sub_221A0FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v22 - v15;
  (*(v12 + 16))(&v22 - v15, a2, v9);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  (*(v12 + 32))(v18 + v17, v16, v9);
  v19 = v5;
  v22(a1, a4, v18);

  v20 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  swift_beginAccess();
  (*(v12 + 24))(&v19[v20], a2, v9);
  return swift_endAccess();
}

id sub_221A0FE30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char *a8, const void *a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v28 = *a8;
  swift_weakInit();
  v16 = &v9[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_pendingRequests];
  *v16 = 0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *&v9[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_actionMetadata] = a1;
  v17 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a2, v18);
  swift_weakAssign();
  v20 = &v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier];
  *v20 = a4;
  v20[1] = a5;
  sub_2219A1B08(a6, &v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment]);
  v21 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier;
  v22 = sub_221BCC558();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v10[v21], a7, v22);
  v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_payloadPrivacy] = v28;
  memcpy(&v10[OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment], a9, 0x64uLL);
  v32.receiver = v10;
  v32.super_class = ObjectType;
  v24 = a1;
  v25 = objc_msgSendSuper2(&v32, sel_init);

  (*(v23 + 8))(a7, v22);
  __swift_destroy_boxed_opaque_existential_0(a6);
  (*(v19 + 8))(a2, v18);
  return v25;
}

uint64_t sub_221A10188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v11 = *(v10 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A10288, 0, 0);
}

uint64_t sub_221A10288()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
    swift_beginAccess();
    (*(v3 + 16))(v2, v5 + v6, v4);
    v7 = [v1 output];
    v8 = v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier;
    v9 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
    *(v0 + 136) = v9;
    v10 = *(v8 + 8);
    *(v0 + 144) = v10;
    *(v0 + 16) = v9;
    *(v0 + 24) = v10;
    *(v0 + 32) = xmmword_221BD0800;
    v11 = (v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment);
    v12 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
    v13 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v14 = *(v13 + 24);
    swift_bridgeObjectRetain_n();
    v15 = v14(v12, v13);
    v17 = v16;
    v18 = OUTLINED_FUNCTION_23_5(dword_221BD1E20);
    *(v0 + 152) = v18;
    *v18 = v0;
    v18[1] = sub_221A104E0;
    v19 = *(v0 + 104);

    return v28(v19, v7, v0 + 16, v15, v17);
  }

  else
  {
    v21 = *(v0 + 80);
    if (v21)
    {
      v22 = *(v0 + 80);
    }

    else
    {
      sub_2219A1218();
      swift_allocError();
      *v23 = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 5;
    }

    v24 = *(v0 + 128);
    v25 = *(v0 + 104);
    swift_willThrow();
    v26 = v21;

    OUTLINED_FUNCTION_25();

    return v27();
  }
}

uint64_t sub_221A104E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A105C4()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  *(v5 + 224) = v0[17];
  *(v5 + 232) = v1;
  swift_storeEnumTagMultiPayload();
  sub_221BCD798();

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221A106E4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221A5E640();
  }

  return result;
}

void sub_221A1075C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6();
}

uint64_t sub_221A107F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v4[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[13] = v11;
  *v11 = v4;
  v11[1] = sub_221A109A8;

  return sub_221A5FE8C();
}

uint64_t sub_221A109A8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A10B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.Response(0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  v14 = swift_task_alloc();
  v6[11] = v14;
  *v14 = v6;
  v14[1] = sub_221A10CAC;

  return (sub_221A61248)(v13, a5, a6);
}

uint64_t sub_221A10CAC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A10E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v4[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[13] = v11;
  *v11 = v4;
  v11[1] = sub_221A10FF0;

  return sub_221A622E0();
}

uint64_t sub_221A10FF0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A110D4()
{
  v1 = v0[9];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[10]) == 1)
  {
    sub_221A01F0C(v1, &unk_27CFB93C0, &qword_221BD3A60);
  }

  else
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    sub_221A13568(v1, v2);
    v8 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
    OUTLINED_FUNCTION_20_4();
    (*(v5 + 16))(v4, v7 + v8, v6);
    sub_221A0150C(v2, v3);
    sub_221BCD798();
    (*(v5 + 8))(v4, v6);
    sub_221A133F4(v2);
  }

  v10 = v0[11];
  v9 = v0[12];
  v12 = v0[8];
  v11 = v0[9];

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_221A112C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v4[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[13] = v11;
  *v11 = v4;
  v11[1] = sub_221A109A8;

  return sub_221A63044();
}

uint64_t sub_221A11528(void *a1, void *a2, void (*a3)(void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  a3(a2);
  v13 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  OUTLINED_FUNCTION_17_5();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v3;
  v16 = a1;
  v17 = a2;
  sub_2219F7E3C();
}

uint64_t sub_221A11628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.Response(0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  v14 = swift_task_alloc();
  v6[11] = v14;
  *v14 = v6;
  v14[1] = sub_221A1179C;

  return (sub_221A64028)(v13, a5, a6);
}

uint64_t sub_221A1179C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A11880()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[5] + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  OUTLINED_FUNCTION_20_4();
  v7 = OUTLINED_FUNCTION_16_6();
  v8(v7);
  sub_221A0150C(v1, v2);
  sub_221BCD798();
  (*(v4 + 8))(v3, v5);
  sub_221A133F4(v1);

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221A11A14(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_221BCD7F8();
  OUTLINED_FUNCTION_24_4(v9);
  OUTLINED_FUNCTION_17_5();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a2;
  v10[6] = a1;
  v11 = v2;
  v12 = a2;
  v13 = a1;
  OUTLINED_FUNCTION_19_4();
  sub_2219F7E3C();
}

uint64_t sub_221A11AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.Response(0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A11BF0, 0, 0);
}

uint64_t sub_221A11BF0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 40);
  sub_221A5F354(*(v0 + 48));
  v2 = OUTLINED_FUNCTION_23_5(&unk_221BD85E8);
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_221A11C94;
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  return v8(v3, v4, v5);
}

uint64_t sub_221A11C94()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A11D78()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5] + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_completion;
  OUTLINED_FUNCTION_20_4();
  v7 = OUTLINED_FUNCTION_16_6();
  v8(v7);
  sub_221A0150C(v1, v2);
  sub_221BCD798();
  (*(v4 + 8))(v3, v5);
  sub_221A133F4(v1);

  OUTLINED_FUNCTION_25();

  return v9();
}

void sub_221A11EE8()
{
  v0 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_221A106E4();
  sub_221A0E704();
  v4 = swift_allocError();
  *v5 = 3;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 9;
  *v3 = sub_221BCC328();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  sub_221BCD798();
}

uint64_t sub_221A11FE8()
{
  OUTLINED_FUNCTION_1_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v6 = sub_221BCC588();
  v1[6] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v10 = sub_221BCC558();
  v1[9] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[10] = v11;
  v13 = *(v12 + 64) + 15;
  v1[11] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A12128()
{
  v74 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v1 = v0[2];
  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEDB0);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v73 = v11;
    *v10 = 136315138;
    v12 = [v9 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v13 = OUTLINED_FUNCTION_18_6();
    v14(v13);
    v15 = sub_2219A6360(v12, off_278482000, &v73);

    *(v10 + 4) = v15;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v16, v17, "[%s] Received environmentForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v18 = v0[8];
  v19 = v0[3];
  v20 = *(v19 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
  v21 = *(v19 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment), v20);
  (*(v21 + 24))(v20, v21);
  sub_221BCC568();
  v22 = v19 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment;
  v23 = *(v19 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment + 96);
  if (v23 == 2)
  {
    v24 = 0;
  }

  else
  {
    v25 = v0[5];
    v26 = v0[6];
    v27 = v0[4];
    v28 = *(v22 + 99);
    v29 = *(v22 + 98);
    v30 = *(v22 + 97);
    v31 = *(v22 + 80);
    v68 = *(v22 + 72);
    v70 = *(v22 + 88);
    v64 = *(v22 + 56);
    v66 = *(v22 + 64);
    v32 = *(v22 + 40);
    v33 = *(v22 + 48);
    v35 = *v22;
    v34 = *(v22 + 8);
    (*(v0[7] + 16))(v25, v0[8], v26);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    sub_221A132F8(v25, v27);
    v36 = objc_allocWithZone(MEMORY[0x277D23C80]);
    v24 = sub_221A6C6C4(v27, v32, v33, v64, v66, v68, v70, v23 & 1, v35, v34, v31, v30 & 1, v29 & 1, v28 & 1);
    sub_221A01F0C(v25, &qword_27CFB82E0, &qword_221BD2C30);
  }

  v37 = v0[2];
  v38 = v24;
  v39 = v37;
  v40 = sub_221BCCD68();
  v41 = sub_221BCDA98();

  if (os_log_type_enabled(v40, v41))
  {
    v63 = v41;
    v43 = v0[10];
    v42 = v0[11];
    v44 = v0[9];
    v69 = v0[7];
    v71 = v0[6];
    v72 = v0[8];
    v45 = v0[2];
    v46 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v73 = v67;
    *v46 = 136315394;
    v47 = [v45 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v48 = sub_221BCE168();
    v49 = v24;
    v51 = v50;
    (*(v43 + 8))(v42, v44);
    v52 = sub_2219A6360(v48, v51, &v73);
    v24 = v49;

    *(v46 + 4) = v52;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v38;
    *v65 = v49;
    v53 = v38;
    _os_log_impl(&dword_221989000, v40, v63, "[%s] Responding to environment for view snippet | snippetEnvironment=%@", v46, 0x16u);
    sub_221A01F0C(v65, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_23();
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();

    (*(v69 + 8))(v72, v71);
  }

  else
  {
    v55 = v0[7];
    v54 = v0[8];
    v56 = v0[6];

    (*(v55 + 8))(v54, v56);
  }

  v57 = v0[11];
  v58 = v0[8];
  v60 = v0[4];
  v59 = v0[5];

  v61 = v0[1];

  return v61(v24);
}

uint64_t sub_221A12664(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_221A12728;

  return sub_221A11FE8();
}

uint64_t sub_221A12728(void *a1)
{
  OUTLINED_FUNCTION_21_0();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;

  (v5)[2](v5, a1);
  _Block_release(v5);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_221A1287C()
{
  OUTLINED_FUNCTION_1_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_221BCC558();
  v1[7] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A12928()
{
  v53 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v1 = *(v0 + 40);
  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEDB0);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v50 = v2;
    v52 = swift_slowAlloc();
    v11 = v52;
    *v10 = 136315138;
    v12 = [v9 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v13 = OUTLINED_FUNCTION_18_6();
    v14(v13);
    v15 = sub_2219A6360(v12, off_278482000, &v52);

    *(v10 + 4) = v15;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v16, v17, "[%s] Received preferredContentSizeForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v11);
    v2 = v50;
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v18 = *(v0 + 48) + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_snippetEnvironment;
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  v21 = *(v18 + 32);
  v22 = *(v18 + 96) == 2;
  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v19;
  }

  if (v22)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v20;
  }

  v25 = v22 | v21;
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 40);
  __swift_project_value_buffer(v2, qword_280FA9008);
  v27 = v26;
  v28 = sub_221BCCD68();
  v29 = sub_221BCDA98();

  if (os_log_type_enabled(v28, v29))
  {
    v49 = v29;
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);
    v51 = v23;
    v33 = *(v0 + 40);
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = [v33 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v36 = sub_221BCE168();
    v37 = v24;
    v39 = v38;
    (*(v31 + 8))(v30, v32);
    v40 = v36;
    v23 = v51;
    v41 = sub_2219A6360(v40, v39, &v52);
    v24 = v37;

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    *(v0 + 16) = v51;
    *(v0 + 24) = v37;
    *(v0 + 32) = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82D0, &qword_221BD2C10);
    v42 = sub_221BCD3F8();
    v44 = sub_2219A6360(v42, v43, &v52);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_221989000, v28, v49, "[%s] Responding to preferred content size for view snippet | size=%s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  if (v25)
  {
    v45 = 0;
  }

  else
  {
    v45 = [objc_opt_self() valueWithSize_];
  }

  v46 = *(v0 + 72);

  v47 = *(v0 + 8);

  return v47(v45);
}

uint64_t sub_221A12D6C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_221A65FB8(a6, v10);
}

uint64_t sub_221A12DF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_221A139DC;

  return sub_221A1287C();
}

id sub_221A12EC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14descr283510E01V29PerformActionExecutorDelegateCMa()
{
  result = qword_27CFB84D8;
  if (!qword_27CFB84D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221A13048()
{
  sub_221A13158();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_221BCC558();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_221A13158()
{
  if (!qword_27CFB9390)
  {
    type metadata accessor for AppIntentsProtocol.PerformAction.Response(255);
    v0 = sub_221BCD7A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFB9390);
    }
  }
}

uint64_t sub_221A131C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_71(v5);

  return v7(v6);
}

uint64_t sub_221A1325C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_71(v5);

  return v7(v6);
}

uint64_t sub_221A132F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A13368()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A11AE8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A133F4(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221A13450()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A11628(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A134DC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A112C8(v3, v4, v5, v6);
}

uint64_t sub_221A13568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A135CC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10E3C(v3, v4, v5, v6);
}

uint64_t sub_221A13658()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10B38(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_17_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_221A13730()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A107F4(v3, v4, v5, v6);
}

uint64_t sub_221A137BC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A10188(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_55Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_221A13964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  sub_221A11EE8();
}

void OUTLINED_FUNCTION_1_24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_22_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_5@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunnerServiceDispatcherActor.validateExecutionPermission(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v100 = *MEMORY[0x277D85DE8];
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v5 = sub_221BB85FC(countAndFlagsBits, object);
  if (v1)
  {

LABEL_30:
    sub_2219ACADC();
    swift_allocError();
    *v28 = countAndFlagsBits;
    *(v28 + 8) = object;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 1;
    swift_willThrow();

    goto LABEL_31;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_221A07948(v98);
  if ((v99 & 1) != 0 || (v6 = sub_221A145F0(v98[0], v98[1], v98[2], v98[3])) == 0)
  {
    type metadata accessor for IntentsServices.SecurityError();
    OUTLINED_FUNCTION_0_25();
    sub_221A149B8(v30, v31);
    v32 = OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_7_7(v32, v33);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_31;
  }

  v7 = v6;
  error = 0;
  if ((SecTaskGetCodeSignStatus(v6) & 0xC000001) != 0x4000001)
  {
    v34 = SecTaskCopyTeamIdentifier();
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v95 = 0;
        v96 = 0;
        sub_221BCD378();
      }
    }

    v53 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v54 = sub_221A14A00(countAndFlagsBits, object, 1);
    if (v54)
    {
      v55 = v54;
      sub_221A14ADC(v55);
    }

    else
    {

      v55 = 0;
    }

    type metadata accessor for IntentsServices.SecurityError();
    OUTLINED_FUNCTION_0_25();
    sub_221A149B8(v56, v57);
    OUTLINED_FUNCTION_2_20();
    *v58 = countAndFlagsBits;
    v58[1] = object;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_63;
  }

  if (qword_27CFB7318 != -1)
  {
    OUTLINED_FUNCTION_3_14();
    swift_once();
  }

  OUTLINED_FUNCTION_11_5(&qword_27CFBC6E0);
  v9 = v9 && v8 == 0xE800000000000000;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v44 = sub_221BCCD88();
    __swift_project_value_buffer(v44, qword_27CFDEDB0);
    v45 = sub_221BCCD68();
    v46 = sub_221BCDA98();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_5(&dword_221989000, v47, v48, "Unable to run internal tests on a Customer build");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    type metadata accessor for IntentsServices.SecurityError();
    OUTLINED_FUNCTION_0_25();
    sub_221A149B8(v49, v50);
    v51 = OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_7_7(v51, v52);
LABEL_53:
    swift_storeEnumTagMultiPayload();
LABEL_62:
    swift_willThrow();
    goto LABEL_63;
  }

  v91 = v7;
  v92 = countAndFlagsBits;
  v10 = [objc_opt_self() allBundles];
  sub_221A14B4C();
  v11 = sub_221BCD668();

  v12 = sub_2219A69A0(v11);
  v13 = 0;
  v94 = v11 & 0xC000000000000001;
  v93 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v13)
    {

      v95 = v92;
      v96 = object;
      MEMORY[0x28223BE20](v36);
      v89[2] = &v95;
      v37 = sub_221A14908(sub_221A14BBC, v89, v93);

      if (v37)
      {
LABEL_38:

        goto LABEL_31;
      }

      v7 = v91;
      v38 = SecTaskCopySigningIdentifier(v91, &error);
      if (v38)
      {
        v39 = v38;
        v40 = sub_221BCD388();
        v42 = v41;

        if (!error)
        {
          if (v42)
          {
            v43 = v40 == v92 && v42 == object;
            if (v43 || (sub_221BCE1B8() & 1) != 0)
            {

LABEL_63:

              goto LABEL_31;
            }

            v63 = 0;
            goto LABEL_66;
          }

LABEL_65:
          v63 = 1;
LABEL_66:
          v64 = sub_221A146DC();
          if (v64)
          {
            v2 = v64;
            v65 = SecTaskCopySigningIdentifier(v64, &error);
            if (v65)
            {
              v66 = v65;
              v67 = sub_221BCD388();
              v69 = v68;
            }

            else
            {
              v67 = 0;
              v69 = 0;
            }

            if (error)
            {

              v79 = error;
              type metadata accessor for CFError(0);
              OUTLINED_FUNCTION_1_25();
              sub_221A149B8(v80, v81);
              OUTLINED_FUNCTION_2_20();
              *v82 = v79;
              swift_willThrow();
LABEL_77:

              goto LABEL_38;
            }

            if (v63)
            {
              if (!v69)
              {
                goto LABEL_77;
              }
            }

            else if (v69)
            {
              if (v40 == v67 && v42 == v69)
              {
                goto LABEL_94;
              }

              v84 = sub_221BCE1B8();

              v85 = v91;
              if (v84)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }

            v85 = v91;
LABEL_90:
            type metadata accessor for IntentsServices.SecurityError();
            OUTLINED_FUNCTION_0_25();
            sub_221A149B8(v86, v87);
            OUTLINED_FUNCTION_2_20();
            *v88 = v92;
            v88[1] = object;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

LABEL_91:

            goto LABEL_31;
          }

          if (qword_27CFB7370 != -1)
          {
            OUTLINED_FUNCTION_1_20();
          }

          v70 = sub_221BCCD88();
          __swift_project_value_buffer(v70, qword_27CFDEDB0);
          v71 = sub_221BCCD68();
          v72 = sub_221BCDA98();
          if (os_log_type_enabled(v71, v72))
          {
            OUTLINED_FUNCTION_117();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_10_5(&dword_221989000, v73, v74, "Unable to perform tests due to unknown Team Identifier");
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
          }

          type metadata accessor for IntentsServices.SecurityError();
          OUTLINED_FUNCTION_0_25();
          sub_221A149B8(v75, v76);
          v77 = OUTLINED_FUNCTION_2_20();
          OUTLINED_FUNCTION_7_7(v77, v78);
          goto LABEL_53;
        }
      }

      else if (!error)
      {
        v40 = 0;
        v42 = 0;
        goto LABEL_65;
      }

      v59 = error;
      type metadata accessor for CFError(0);
      OUTLINED_FUNCTION_1_25();
      sub_221A149B8(v60, v61);
      OUTLINED_FUNCTION_2_20();
      *v62 = v59;
      goto LABEL_62;
    }

    if (v94)
    {
      v14 = MEMORY[0x223DA3BF0](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v16 = v14;
    v17 = [v16 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_221BCD388();
      v90 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v93 + 16);
        sub_2219B3AFC();
        v93 = v26;
      }

      v21 = *(v93 + 16);
      if (v21 >= *(v93 + 24) >> 1)
      {
        sub_2219B3AFC();
        v93 = v27;
      }

      v22 = v93;
      *(v93 + 16) = v21 + 1;
      v23 = v22 + 16 * v21;
      v24 = v90;
      *(v23 + 32) = v19;
      *(v23 + 40) = v24;
      v13 = v15;
    }

    else
    {

      ++v13;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:

LABEL_31:
  v29 = *MEMORY[0x277D85DE8];
}

SecTaskRef sub_221A145F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v10.val = a1;
  *&v10.val[2] = a2;
  *&v10.val[4] = a3;
  *&v10.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &v10);
  if (!result)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v5 = sub_221BCCD88();
    __swift_project_value_buffer(v5, qword_27CFDEDF8);
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA98();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_7(&dword_221989000, v8, v9, "A security task couldn’t be created for the audit token.");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    return 0;
  }

  return result;
}

SecTaskRef sub_221A146DC()
{
  result = SecTaskCreateFromSelf(0);
  if (!result)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v1 = sub_221BCCD88();
    __swift_project_value_buffer(v1, qword_27CFDEDF8);
    v2 = sub_221BCCD68();
    v3 = sub_221BCDA98();
    if (os_log_type_enabled(v2, v3))
    {
      OUTLINED_FUNCTION_117();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_7(&dword_221989000, v4, v5, "A security task for self couldn’t be created.");
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    return 0;
  }

  return result;
}

uint64_t RunnerServiceDispatcherActor.isAppleInternal.getter()
{
  if (qword_27CFB7318 != -1)
  {
    OUTLINED_FUNCTION_3_14();
    swift_once();
  }

  OUTLINED_FUNCTION_11_5(&qword_27CFBC6E0);
  v2 = v2 && v0 == 0xE800000000000000;
  if (v2)
  {
    return 1;
  }

  return sub_221BCE1B8();
}

void sub_221A14814(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2219A69A0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DA3BF0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_221A14908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_221A149B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_221A14A00(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_221BCD358();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_221BCC338();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_221A14ADC(void *a1)
{
  v2 = [a1 teamIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_221BCD388();

  return v3;
}

unint64_t sub_221A14B4C()
{
  result = qword_27CFB8510;
  if (!qword_27CFB8510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB8510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_10_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

uint64_t sub_221A14CCC()
{
  OUTLINED_FUNCTION_1_5();
  v0[2] = v1;
  v2 = sub_221BCC708();
  v0[3] = v2;
  OUTLINED_FUNCTION_18_4(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = sub_221BCC7D8();
  v0[6] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[7] = v7;
  v9 = *(v8 + 64) + 15;
  v0[8] = swift_task_alloc();
  v10 = sub_221BCC858();
  v0[9] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v0[10] = v11;
  v13 = *(v12 + 64) + 15;
  v0[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A14E28, 0, 0);
}

uint64_t sub_221A14E28()
{
  OUTLINED_FUNCTION_1_5();
  if (qword_27CFB6CC8 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  v1 = v0[8];
  sub_221BCC7C8();
  v2 = *(MEMORY[0x277D7E9A0] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_221A14F24;
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  return MEMORY[0x2821E7788](v4, v5, sub_221A15730, 0, v6);
}

uint64_t sub_221A14F24()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v8 = sub_221A151D4;
  }

  else
  {
    v8 = sub_221A15088;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221A15088()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  type metadata accessor for RunnerServiceDispatcherActor();
  sub_221A15D14(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor);
  v7 = sub_221BCC848();
  sub_221BCC838();
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v12 = v9;
  v13 = *(v0 + 104);
  (*(v2 + 8))(v1, v3);

  *v6 = v7;
  *(v6 + 24) = v12;
  *(v6 + 8) = v13;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_221A151D4()
{
  v1 = v0[11];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_221A15D14(&qword_27CFB85B0, MEMORY[0x277D7E968]);
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t RunnerServiceDispatcherActor.XPCService.Role.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_221A15364()
{
  v0 = sub_221BCC868();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_221BCC878();
  qword_27CFB8518 = result;
  return result;
}

uint64_t sub_221A153BC()
{
  v0 = sub_221BCC868();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_221BCC878();
  qword_27CFB8520 = result;
  return result;
}

uint64_t static RunnerServiceDispatcherActor.XPCService.xpcSystem(for:)(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_27CFB6CD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CFB8520;
  }

  else
  {
    if (qword_27CFB6CC8 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v1 = &qword_27CFB8518;
  }

  v2 = *v1;
}

unint64_t sub_221A154C8()
{
  result = qword_27CFB8528[0];
  if (!qword_27CFB8528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB8528);
  }

  return result;
}

_BYTE *_s14descr283510E01V10XPCServiceOwst(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s14descr283510E01V10XPCServiceO4RoleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_221A1569C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_221A15730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_221BCC808();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85B8, &qword_221BD3BC0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + *(*v14 + 88), v10, v6);
  v15 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  sub_2219F8084();
}

uint64_t sub_221A158FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(sub_221BCC828() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A1598C, 0, 0);
}

uint64_t sub_221A1598C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[4];
  v2 = v0[3] + *(*v0[3] + 88);
  sub_221BCC7F8();
  v3 = *(MEMORY[0x277D7E9D8] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_221A15A44;
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2821E77D0](v6);
}

uint64_t sub_221A15A44()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(*v0 + 40);
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_221A15B34, 0, 0);
}

uint64_t sub_221A15B34()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A15BFC()
{
  v0 = sub_221A15B8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221A15C7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_221A15CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A15D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221A15D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2219A77F8;

  return sub_221A158FC(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t sub_221A15E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_221A15F10()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  v145 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v138 = &v131 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v139);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_157();
  v141 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v20 = OUTLINED_FUNCTION_2_21(v141);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_6();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58_3();
  if (!v29 || !v2 || v1 == v0)
  {
LABEL_104:
    v130 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_22();
    return;
  }

  v137 = v11;
  v140 = v5;
  v134 = 0;
  OUTLINED_FUNCTION_12_4(v27);
  OUTLINED_FUNCTION_78(v28);
  while (1)
  {
    sub_221A1C608();
    sub_221A1C608();
    v29 = *v4 == *v25 && v4[1] == v25[1];
    if (!v29 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_103;
    }

    v30 = *(v141 + 24);
    v31 = *(v139 + 48);
    sub_221A1C558();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v3, 1, v140);
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_145(v3 + v31);
    if (!v29)
    {
      goto LABEL_101;
    }

    v32 = OUTLINED_FUNCTION_39_4();
    sub_2219A1CC8(v32, v33, &qword_221BE4610);
LABEL_94:
    v125 = *(v141 + 20);
    sub_221BCC8D8();
    sub_221A1C500();
    LOBYTE(v125) = OUTLINED_FUNCTION_85_1();
    sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_Property);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_Property);
    if (v125)
    {
      OUTLINED_FUNCTION_59_3();
      if (!v29)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  v34 = v138;
  sub_221A1C558();
  OUTLINED_FUNCTION_145(v3 + v31);
  if (v35)
  {
    OUTLINED_FUNCTION_6_9();
    sub_221A1C660(v34, v129);
LABEL_101:
    v127 = &qword_27CFB85E0;
    v128 = &unk_221BD3E40;
LABEL_102:
    sub_2219A1CC8(v3, v127, v128);
LABEL_103:
    sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_Property);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_Property);
    goto LABEL_104;
  }

  v136 = v11;
  OUTLINED_FUNCTION_8_8();
  v36 = v137;
  sub_221A1C5B0();
  OUTLINED_FUNCTION_48_4();
  if (v29)
  {
    v42 = 0;
    if (!v38 && v11 == 0xC000000000000000 && v37 >= 3)
    {
      v42 = 0;
      if (!v36 && &qword_221BE4610 == 0xC000000000000000)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v42 = 0;
    switch(v40)
    {
      case 1:
        if (__OFSUB__(v39, v38))
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
        }

        v42 = v39 - v38;
        break;
      case 2:
        OUTLINED_FUNCTION_82_2();
        if (!v43)
        {
          break;
        }

        goto LABEL_107;
      case 3:
        break;
      default:
        v42 = BYTE6(v11);
        break;
    }
  }

  v44 = (&qword_221BE4610 >> 48);
  switch(v37)
  {
    case 1uLL:
      LODWORD(v45) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_105;
      }

      v45 = v45;
LABEL_42:
      if (v42 != v45)
      {
        goto LABEL_99;
      }

      if (v42 < 1)
      {
        goto LABEL_93;
      }

      break;
    case 2uLL:
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      v43 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (!v43)
      {
        goto LABEL_42;
      }

      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    case 3uLL:
      if (v42)
      {
        goto LABEL_99;
      }

      goto LABEL_93;
    default:
      v45 = (&qword_221BE4610 >> 48);
      goto LABEL_42;
  }

  v135 = v5;
  v48 = v36 >> 32;
  v49 = v36 >> 8;
  v50 = v36 >> 16;
  v51 = v36 >> 24;
  v52 = v36 >> 40;
  v53 = HIWORD(v36);
  v54 = HIBYTE(v36);
  v55 = &qword_221BE4610 >> 8;
  switch(v40)
  {
    case 1:
      if (v38 >> 32 < v38)
      {
        goto LABEL_108;
      }

      v133 = v38;
      v82 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v82, v83);
      v84 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v84, v85);
      v86 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v86, v87);
      if (sub_221BCC278())
      {
        v88 = OUTLINED_FUNCTION_87_2();
        if (__OFSUB__(v133, v88))
        {
          goto LABEL_111;
        }

        v132 = v133 - v88 + v48;
      }

      else
      {
        v132 = 0;
      }

      sub_221BCC298();
      v93 = OUTLINED_FUNCTION_53_4();
      v94 = v144;
LABEL_75:
      v95 = v134;
      sub_221A1C1B4(v93, v36, &qword_221BE4610, v94);
      v96 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v96, v97);
      v98 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v98, v99);
      v100 = OUTLINED_FUNCTION_18_7();
      sub_2219EC040(v100, v101);
      v134 = v95;
      if (v95)
      {
        goto LABEL_124;
      }

      v5 = v135;
      if ((v144[0] & 1) == 0)
      {
        goto LABEL_99;
      }

      break;
    case 2:
      v67 = *(v38 + 16);
      v133 = *(v38 + 24);
      v68 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v68, v69);
      v70 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v70, v71);
      v72 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v72, v73);
      if (sub_221BCC278())
      {
        if (__OFSUB__(v67, OUTLINED_FUNCTION_87_2()))
        {
          goto LABEL_110;
        }

        v74 = v67;
      }

      else
      {
        v74 = v67;
      }

      if (__OFSUB__(v133, v74))
      {
        goto LABEL_109;
      }

      sub_221BCC298();
      v93 = OUTLINED_FUNCTION_15_5();
      goto LABEL_75;
    case 3:
      memset(v144, 0, 14);
      if (!v37)
      {
        goto LABEL_68;
      }

      if (v37 == 2)
      {
        v75 = *(v36 + 16);
        v76 = *(v36 + 24);
        v77 = OUTLINED_FUNCTION_18_7();
        sub_2219EBFC8(v77, v78);
        v65 = sub_221BCC278();
        if (v65)
        {
          v79 = sub_221BCC2A8();
          if (__OFSUB__(v75, v79))
          {
            goto LABEL_117;
          }

          v65 += v75 - v79;
        }

        v43 = __OFSUB__(v76, v75);
        v80 = v76 - v75;
        if (v43)
        {
          goto LABEL_115;
        }

        v81 = sub_221BCC298();
        if (!v65)
        {
          goto LABEL_121;
        }

LABEL_89:
        if (v81 >= v80)
        {
          v105 = v80;
        }

        else
        {
          v105 = v81;
        }

        goto LABEL_92;
      }

      if (v48 < v36)
      {
        goto LABEL_113;
      }

      v102 = OUTLINED_FUNCTION_18_7();
      sub_2219EBFC8(v102, v103);
      v65 = sub_221BCC278();
      if (v65)
      {
        v104 = sub_221BCC2A8();
        if (__OFSUB__(v36, v104))
        {
          goto LABEL_119;
        }

        v65 += v36 - v104;
      }

      sub_221BCC298();
      if (v65)
      {
        goto LABEL_83;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_62_2();
      v144[2] = v56;
      v144[3] = v57;
      v144[4] = v58;
      v144[5] = v59;
      OUTLINED_FUNCTION_47_1();
      v144[10] = v61;
      v144[11] = v62;
      v144[12] = BYTE4(v11);
      v144[13] = BYTE5(v11);
      if (v60)
      {
        if (v60 != 1)
        {
          v106 = *(v36 + 16);
          v107 = *(v36 + 24);
          v108 = OUTLINED_FUNCTION_18_7();
          sub_2219EBFC8(v108, v109);
          v65 = sub_221BCC278();
          if (v65)
          {
            v110 = sub_221BCC2A8();
            if (__OFSUB__(v106, v110))
            {
              goto LABEL_116;
            }

            v65 += v106 - v110;
          }

          v43 = __OFSUB__(v107, v106);
          v80 = v107 - v106;
          if (v43)
          {
            goto LABEL_114;
          }

          v81 = sub_221BCC298();
          if (!v65)
          {
            goto LABEL_122;
          }

          goto LABEL_89;
        }

        if (v48 < v36)
        {
          goto LABEL_112;
        }

        v63 = OUTLINED_FUNCTION_18_7();
        sub_2219EBFC8(v63, v64);
        v65 = sub_221BCC278();
        if (v65)
        {
          v66 = sub_221BCC2A8();
          if (__OFSUB__(v36, v66))
          {
            goto LABEL_118;
          }

          v65 += v36 - v66;
        }

        sub_221BCC298();
        if (!v65)
        {
          goto LABEL_123;
        }

LABEL_83:
        OUTLINED_FUNCTION_83_3();
LABEL_92:
        v111 = memcmp(v144, v65, v105);
        v112 = OUTLINED_FUNCTION_18_7();
        sub_2219EC040(v112, v113);
        v5 = v135;
        if (!v111)
        {
          break;
        }

LABEL_99:
        OUTLINED_FUNCTION_5_12();
        sub_221A1C660(v137, v126);
        sub_221A1C660(v138, v36);
        v127 = &unk_27CFBB660;
        v128 = &qword_221BE4610;
        goto LABEL_102;
      }

LABEL_68:
      v142 = v36;
      OUTLINED_FUNCTION_16_7(v55, v54, v44, v53, v52, v51, v50, v49);
      v143 = &qword_221BE4610;
      v92 = OUTLINED_FUNCTION_24_5(v89, v90, v91);
      v5 = v135;
      if (v92)
      {
        goto LABEL_99;
      }

      break;
  }

LABEL_93:
  v114 = *(v140 + 20);
  v115 = sub_221BCC8D8();
  sub_221A1C500();
  v116 = v5;
  v117 = v2;
  v118 = v4;
  v119 = v25;
  v120 = v3;
  v121 = v137;
  v122 = v138;
  LOBYTE(v114) = sub_221BCD338();
  OUTLINED_FUNCTION_7_8();
  sub_221A1C660(v121, v123);
  v124 = v122;
  v3 = v120;
  v25 = v119;
  v4 = v118;
  v2 = v117;
  v5 = v116;
  sub_221A1C660(v124, v115);
  sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
  v11 = v136;
  if ((v114 & 1) == 0)
  {
    goto LABEL_103;
  }

  goto LABEL_94;
}

void sub_221A16800()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(v5);
  v7 = OUTLINED_FUNCTION_2_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_6();
  if (!v18 || !v4 || v3 == v0)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_8(v11);
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    sub_221A1C608();
    OUTLINED_FUNCTION_63_3();
    sub_221A1C608();
    v12 = *v2;
    v13 = *v1;
    if (*(v1 + 8) == 1)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          if (v12 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v12 != 2)
        {
          goto LABEL_36;
        }
      }

      else if (v12)
      {
        goto LABEL_36;
      }
    }

    else if (v12 != v13)
    {
      goto LABEL_36;
    }

    v14 = *(v2 + 32);
    v15 = *(v1 + 32);
    if (v14 == 255)
    {
      if (v15 != 255)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if (v15 == 255)
    {
      goto LABEL_36;
    }

    v16 = v2[2];
    v17 = *(v1 + 16);
    if ((v14 & 1) == 0)
    {
      if ((v15 & 1) != 0 || v16 != v17)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if ((v15 & 1) == 0)
    {
      break;
    }

    v18 = v16 == v17 && v2[3] == *(v1 + 24);
    if (!v18 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v19 = *(v6 + 24);
    sub_221BCC8D8();
    sub_221A1C500();
    v20 = OUTLINED_FUNCTION_38_1();
    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
    OUTLINED_FUNCTION_86_1();
    if (v20)
    {
      OUTLINED_FUNCTION_14_8();
      if (!v18)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  sub_2219980F0(*(v1 + 16), *(v1 + 24), 0);
LABEL_36:
  sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
  v21 = OUTLINED_FUNCTION_55_3();
  sub_221A1C660(v21, v22);
LABEL_37:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A16A34()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_69_1();
  v144 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v138 = &v130 - v16;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v139);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_157();
  v140 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v20 = OUTLINED_FUNCTION_2_21(v140);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_6();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58_3();
  if (!v29 || !v2 || v1 == v0)
  {
    goto LABEL_104;
  }

  v136 = v11;
  v137 = v5;
  v133 = 0;
  OUTLINED_FUNCTION_12_4(v27);
  OUTLINED_FUNCTION_78(v28);
  while (1)
  {
    sub_221A1C608();
    sub_221A1C608();
    if (*v4 != *v25)
    {
      goto LABEL_103;
    }

    v29 = v4[1] == v25[1] && v4[2] == v25[2];
    if (!v29 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_103;
    }

    v30 = *(v140 + 28);
    v31 = *(v139 + 48);
    sub_221A1C558();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v3, 1, v137);
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_145(v3 + v31);
    if (!v29)
    {
      goto LABEL_101;
    }

    v32 = OUTLINED_FUNCTION_39_4();
    sub_2219A1CC8(v32, v33, &qword_221BE4610);
LABEL_94:
    v124 = *(v140 + 24);
    sub_221BCC8D8();
    sub_221A1C500();
    LOBYTE(v124) = OUTLINED_FUNCTION_85_1();
    sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    if (v124)
    {
      OUTLINED_FUNCTION_59_3();
      if (!v29)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  v34 = v138;
  sub_221A1C558();
  OUTLINED_FUNCTION_145(v3 + v31);
  if (v35)
  {
    OUTLINED_FUNCTION_6_9();
    sub_221A1C660(v34, v128);
LABEL_101:
    v126 = &qword_27CFB85E0;
    v127 = &unk_221BD3E40;
    goto LABEL_102;
  }

  v135 = v11;
  OUTLINED_FUNCTION_8_8();
  v36 = v136;
  sub_221A1C5B0();
  OUTLINED_FUNCTION_48_4();
  if (v29)
  {
    v42 = 0;
    if (!v38 && v11 == 0xC000000000000000 && v37 >= 3)
    {
      v42 = 0;
      if (!v36 && &qword_221BE4610 == 0xC000000000000000)
      {
LABEL_93:
        v114 = *(v137 + 20);
        v115 = sub_221BCC8D8();
        sub_221A1C500();
        v116 = v5;
        v117 = v4;
        v118 = v25;
        v119 = v2;
        v120 = v3;
        v121 = v138;
        v122 = v136;
        LOBYTE(v114) = sub_221BCD338();
        OUTLINED_FUNCTION_7_8();
        sub_221A1C660(v122, v123);
        v3 = v120;
        v2 = v119;
        v25 = v118;
        v4 = v117;
        v5 = v116;
        sub_221A1C660(v121, v115);
        sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
        v11 = v135;
        if ((v114 & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_94;
      }
    }
  }

  else
  {
    v42 = 0;
    switch(v40)
    {
      case 1:
        if (__OFSUB__(v39, v38))
        {
          goto LABEL_108;
        }

        v42 = v39 - v38;
        break;
      case 2:
        OUTLINED_FUNCTION_82_2();
        if (!v43)
        {
          break;
        }

        goto LABEL_107;
      case 3:
        break;
      default:
        v42 = BYTE6(v11);
        break;
    }
  }

  v44 = (&qword_221BE4610 >> 48);
  switch(v37)
  {
    case 1uLL:
      LODWORD(v45) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
      }

      v45 = v45;
LABEL_43:
      if (v42 == v45)
      {
        if (v42 >= 1)
        {
          v134 = v5;
          v48 = v36 >> 32;
          v49 = v36 >> 8;
          v50 = v36 >> 16;
          v51 = v36 >> 24;
          v52 = v36 >> 40;
          v53 = HIWORD(v36);
          v54 = HIBYTE(v36);
          v55 = &qword_221BE4610 >> 8;
          switch(v40)
          {
            case 1:
              if (v38 >> 32 < v38)
              {
                goto LABEL_109;
              }

              v132 = v38;
              v82 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v82, v83);
              v84 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v84, v85);
              v86 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v86, v87);
              if (sub_221BCC278())
              {
                v88 = OUTLINED_FUNCTION_87_2();
                if (__OFSUB__(v132, v88))
                {
                  goto LABEL_112;
                }

                v131 = v132 - v88 + v48;
              }

              else
              {
                v131 = 0;
              }

              sub_221BCC298();
              v93 = OUTLINED_FUNCTION_53_4();
              v94 = v143;
LABEL_76:
              v95 = v133;
              sub_221A1C1B4(v93, v36, &qword_221BE4610, v94);
              v133 = v95;
              v96 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v96, v97);
              v98 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v98, v99);
              v100 = OUTLINED_FUNCTION_18_7();
              sub_2219EC040(v100, v101);
              v5 = v134;
              if ((v143[0] & 1) == 0)
              {
                goto LABEL_99;
              }

              goto LABEL_93;
            case 2:
              v67 = *(v38 + 16);
              v132 = *(v38 + 24);
              v68 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v68, v69);
              v70 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v70, v71);
              v72 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v72, v73);
              if (sub_221BCC278())
              {
                if (__OFSUB__(v67, OUTLINED_FUNCTION_87_2()))
                {
                  goto LABEL_111;
                }

                v74 = v67;
              }

              else
              {
                v74 = v67;
              }

              if (__OFSUB__(v132, v74))
              {
                goto LABEL_110;
              }

              sub_221BCC298();
              v93 = OUTLINED_FUNCTION_15_5();
              goto LABEL_76;
            case 3:
              memset(v143, 0, 14);
              if (!v37)
              {
                goto LABEL_69;
              }

              if (v37 == 2)
              {
                v75 = *(v36 + 16);
                v76 = *(v36 + 24);
                v77 = OUTLINED_FUNCTION_18_7();
                sub_2219EBFC8(v77, v78);
                v65 = sub_221BCC278();
                if (v65)
                {
                  v79 = sub_221BCC2A8();
                  if (__OFSUB__(v75, v79))
                  {
                    goto LABEL_117;
                  }

                  v65 += v75 - v79;
                }

                v43 = __OFSUB__(v76, v75);
                v80 = v76 - v75;
                if (v43)
                {
                  goto LABEL_115;
                }

                v81 = sub_221BCC298();
                if (!v65)
                {
                  goto LABEL_124;
                }

                goto LABEL_89;
              }

              if (v48 < v36)
              {
                goto LABEL_114;
              }

              v102 = OUTLINED_FUNCTION_18_7();
              sub_2219EBFC8(v102, v103);
              v65 = sub_221BCC278();
              if (v65)
              {
                v104 = sub_221BCC2A8();
                if (__OFSUB__(v36, v104))
                {
                  goto LABEL_119;
                }

                v65 += v36 - v104;
              }

              sub_221BCC298();
              if (!v65)
              {
                goto LABEL_123;
              }

              goto LABEL_83;
            default:
              OUTLINED_FUNCTION_62_2();
              v143[2] = v56;
              v143[3] = v57;
              v143[4] = v58;
              v143[5] = v59;
              OUTLINED_FUNCTION_47_1();
              v143[10] = v61;
              v143[11] = v62;
              v143[12] = BYTE4(v11);
              v143[13] = BYTE5(v11);
              if (v60)
              {
                if (v60 == 1)
                {
                  if (v48 < v36)
                  {
                    goto LABEL_113;
                  }

                  v63 = OUTLINED_FUNCTION_18_7();
                  sub_2219EBFC8(v63, v64);
                  v65 = sub_221BCC278();
                  if (v65)
                  {
                    v66 = sub_221BCC2A8();
                    if (__OFSUB__(v36, v66))
                    {
                      goto LABEL_120;
                    }

                    v65 += v36 - v66;
                  }

                  sub_221BCC298();
                  if (!v65)
                  {
                    goto LABEL_122;
                  }

LABEL_83:
                  OUTLINED_FUNCTION_83_3();
                }

                else
                {
                  v106 = *(v36 + 16);
                  v107 = *(v36 + 24);
                  v108 = OUTLINED_FUNCTION_18_7();
                  sub_2219EBFC8(v108, v109);
                  v65 = sub_221BCC278();
                  if (v65)
                  {
                    v110 = sub_221BCC2A8();
                    if (__OFSUB__(v106, v110))
                    {
                      goto LABEL_118;
                    }

                    v65 += v106 - v110;
                  }

                  v43 = __OFSUB__(v107, v106);
                  v80 = v107 - v106;
                  if (v43)
                  {
                    goto LABEL_116;
                  }

                  v81 = sub_221BCC298();
                  if (!v65)
                  {
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
LABEL_124:
                    __break(1u);
                    return;
                  }

LABEL_89:
                  if (v81 >= v80)
                  {
                    v105 = v80;
                  }

                  else
                  {
                    v105 = v81;
                  }
                }

                v111 = memcmp(v143, v65, v105);
                v112 = OUTLINED_FUNCTION_18_7();
                sub_2219EC040(v112, v113);
                v5 = v134;
                if (v111)
                {
                  goto LABEL_99;
                }
              }

              else
              {
LABEL_69:
                v141 = v36;
                OUTLINED_FUNCTION_16_7(v55, v54, v44, v53, v52, v51, v50, v49);
                v142 = &qword_221BE4610;
                v92 = OUTLINED_FUNCTION_24_5(v89, v90, v91);
                v5 = v134;
                if (v92)
                {
                  goto LABEL_99;
                }
              }

              break;
          }
        }

        goto LABEL_93;
      }

LABEL_99:
      OUTLINED_FUNCTION_5_12();
      sub_221A1C660(v136, v125);
      sub_221A1C660(v138, v36);
      v126 = &unk_27CFBB660;
      v127 = &qword_221BE4610;
LABEL_102:
      sub_2219A1CC8(v3, v126, v127);
LABEL_103:
      sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221A1C660(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
LABEL_104:
      v129 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_22();
      return;
    case 2uLL:
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      v43 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (!v43)
      {
        goto LABEL_43;
      }

      goto LABEL_106;
    case 3uLL:
      if (v42)
      {
        goto LABEL_99;
      }

      goto LABEL_93;
    default:
      v45 = (&qword_221BE4610 >> 48);
      goto LABEL_43;
  }
}

void sub_221A17320()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  v6 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(v5);
  v7 = OUTLINED_FUNCTION_2_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_6();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8(v11);
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      v12 = *v2 == *v1 && v2[1] == v1[1];
      if (!v12 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v13 = v2[2] == v1[2] && v2[3] == v1[3];
      if (!v13 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v14 = *(v6 + 24);
      sub_221BCC8D8();
      sub_221A1C500();
      v15 = OUTLINED_FUNCTION_38_1();
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
      OUTLINED_FUNCTION_86_1();
      if (v15)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
    v16 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v16, v17);
  }

LABEL_22:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A174D8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v117 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v5 = OUTLINED_FUNCTION_2_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_6();
  v113 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v13 = (&v108 - v12);
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    v110 = 0;
    v111 = v4;
    OUTLINED_FUNCTION_12_4(v11);
    v16 = v3 + v15;
    v17 = v1 + v15;
    v112 = *(v18 + 72);
    while (1)
    {
      sub_221A1C608();
      v19 = v113;
      sub_221A1C608();
      v20 = *v13;
      v21 = v13[1];
      v22 = v21 >> 62;
      v24 = *v19;
      v23 = v19[1];
      v25 = HIDWORD(*v13);
      v26 = v23 >> 62;
      if (v27)
      {
        v29 = 0;
        if (!v20 && v21 == 0xC000000000000000 && v23 >> 62 == 3)
        {
          v29 = 0;
          if (!v24 && v23 == 0xC000000000000000)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        v29 = 0;
        switch(v22)
        {
          case 0uLL:
            v29 = BYTE6(v21);
            break;
          case 1uLL:
            if (__OFSUB__(v25, v20))
            {
              goto LABEL_87;
            }

            v29 = v25 - v20;
            break;
          case 2uLL:
            OUTLINED_FUNCTION_82_2();
            if (!v30)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
            goto LABEL_106;
        }
      }

      v31 = BYTE6(v23);
      switch(v26)
      {
        case 1uLL:
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
          }

          v32 = v32;
LABEL_30:
          if (v29 != v32)
          {
LABEL_83:
            OUTLINED_FUNCTION_5_12();
            sub_221A1C660(v113, v106);
            sub_221A1C660(v13, v14);
            goto LABEL_84;
          }

          if (v29 >= 1)
          {
            v35 = v24 >> 32;
            v36 = v24 >> 8;
            v37 = v24 >> 16;
            v38 = v24 >> 24;
            v39 = v24 >> 40;
            v40 = HIWORD(v24);
            v41 = HIBYTE(v24);
            v42 = v23 >> 8;
            switch(v22)
            {
              case 1:
                if (v20 >> 32 < v20)
                {
                  goto LABEL_89;
                }

                v109 = v20;
                v69 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v69, v70);
                v71 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v71, v72);
                v73 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v73, v74);
                if (!sub_221BCC278() || !__OFSUB__(v109, sub_221BCC2A8()))
                {
                  goto LABEL_60;
                }

                goto LABEL_92;
              case 2:
                v54 = *(v20 + 16);
                v109 = *(v20 + 24);
                v55 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v55, v56);
                v57 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v57, v58);
                v59 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v59, v60);
                if (sub_221BCC278() && __OFSUB__(v54, sub_221BCC2A8()))
                {
                  goto LABEL_91;
                }

                if (__OFSUB__(v109, v54))
                {
                  goto LABEL_90;
                }

LABEL_60:
                sub_221BCC298();
                v79 = OUTLINED_FUNCTION_15_5();
                v80 = v110;
                sub_221A1C1B4(v79, v24, v23, v81);
                v82 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v82, v83);
                v84 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v84, v85);
                v86 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v86, v87);
                v110 = v80;
                if (v80)
                {
                  goto LABEL_105;
                }

                v4 = v111;
                if ((v116[0] & 1) == 0)
                {
                  goto LABEL_83;
                }

                goto LABEL_79;
              case 3:
                memset(v116, 0, 14);
                if (!v26)
                {
                  goto LABEL_58;
                }

                if (v26 == 2)
                {
                  v61 = *(v24 + 16);
                  v62 = *(v24 + 24);
                  v63 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v63, v64);
                  v65 = sub_221BCC278();
                  if (v65)
                  {
                    v66 = sub_221BCC2A8();
                    if (__OFSUB__(v61, v66))
                    {
                      goto LABEL_97;
                    }

                    v65 += v61 - v66;
                  }

                  v30 = __OFSUB__(v62, v61);
                  v67 = v62 - v61;
                  if (v30)
                  {
                    goto LABEL_96;
                  }

                  v68 = sub_221BCC298();
                  if (!v65)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_74;
                }

                if (v35 < v24)
                {
                  goto LABEL_93;
                }

                v88 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v88, v89);
                v52 = sub_221BCC278();
                if (v52)
                {
                  v90 = sub_221BCC2A8();
                  if (__OFSUB__(v24, v90))
                  {
                    goto LABEL_100;
                  }

                  v52 += v24 - v90;
                }

                sub_221BCC298();
                if (!v52)
                {
                  goto LABEL_102;
                }

                goto LABEL_68;
              default:
                OUTLINED_FUNCTION_62_2();
                LOBYTE(v116[1]) = v44;
                HIBYTE(v116[1]) = v45;
                LOBYTE(v116[2]) = v46;
                HIBYTE(v116[2]) = v47;
                LOBYTE(v116[3]) = v48;
                HIBYTE(v116[3]) = v49;
                v116[4] = v21;
                LOBYTE(v116[5]) = BYTE2(v21);
                HIBYTE(v116[5]) = BYTE3(v21);
                LOBYTE(v116[6]) = BYTE4(v21);
                HIBYTE(v116[6]) = BYTE5(v21);
                if (v43)
                {
                  if (v43 == 1)
                  {
                    if (v35 < v24)
                    {
                      goto LABEL_94;
                    }

                    v50 = OUTLINED_FUNCTION_17_6();
                    sub_2219EBFC8(v50, v51);
                    v52 = sub_221BCC278();
                    if (v52)
                    {
                      v53 = sub_221BCC2A8();
                      if (__OFSUB__(v24, v53))
                      {
                        goto LABEL_99;
                      }

                      v52 += v24 - v53;
                    }

                    sub_221BCC298();
                    if (!v52)
                    {
                      goto LABEL_103;
                    }

LABEL_68:
                    OUTLINED_FUNCTION_83_3();
                    v92 = v52;
                  }

                  else
                  {
                    v93 = *(v24 + 16);
                    v94 = *(v24 + 24);
                    v95 = OUTLINED_FUNCTION_17_6();
                    sub_2219EBFC8(v95, v96);
                    v65 = sub_221BCC278();
                    if (v65)
                    {
                      v97 = sub_221BCC2A8();
                      if (__OFSUB__(v93, v97))
                      {
                        goto LABEL_98;
                      }

                      v65 += v93 - v97;
                    }

                    v30 = __OFSUB__(v94, v93);
                    v67 = v94 - v93;
                    if (v30)
                    {
                      goto LABEL_95;
                    }

                    v68 = sub_221BCC298();
                    if (!v65)
                    {
                      __break(1u);
LABEL_102:
                      __break(1u);
LABEL_103:
                      __break(1u);
LABEL_104:
                      __break(1u);
LABEL_105:

                      __break(1u);
LABEL_106:
                      JUMPOUT(0);
                    }

LABEL_74:
                    if (v68 >= v67)
                    {
                      v91 = v67;
                    }

                    else
                    {
                      v91 = v68;
                    }

                    v92 = v65;
                  }

                  v98 = memcmp(v116, v92, v91);
                  v99 = OUTLINED_FUNCTION_17_6();
                  sub_2219EC040(v99, v100);
                  v4 = v111;
                  if (v98)
                  {
                    goto LABEL_83;
                  }
                }

                else
                {
LABEL_58:
                  v114 = v24;
                  OUTLINED_FUNCTION_16_7(v42, v41, v31, v40, v39, v38, v37, v36);
                  v115 = v23;
                  v78 = OUTLINED_FUNCTION_24_5(v75, v76, v77);
                  v4 = v111;
                  if (v78)
                  {
                    goto LABEL_83;
                  }
                }

                break;
            }
          }

          break;
        case 2uLL:
          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v30 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (!v30)
          {
            goto LABEL_30;
          }

          goto LABEL_86;
        case 3uLL:
          if (v29)
          {
            goto LABEL_83;
          }

          break;
        default:
          v32 = BYTE6(v23);
          goto LABEL_30;
      }

LABEL_79:
      v101 = *(v4 + 20);
      v102 = sub_221BCC8D8();
      sub_221A1C500();
      v103 = v113;
      sub_221BCD338();
      OUTLINED_FUNCTION_35_4();
      v105 = v104;
      sub_221A1C660(v103, v104);
      sub_221A1C660(v13, v105);
      if (v102)
      {
        v17 += v112;
        v16 += v112;
        v14 = (v14 - 1);
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_84:
  v107 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A17B70()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v425[3] = *MEMORY[0x277D85DE8];
  v416 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v5 = OUTLINED_FUNCTION_2_1(v416);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157();
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v412);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v414 = &v384 - v18;
  v420 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v19 = OUTLINED_FUNCTION_0_2(v420);
  v407 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_5();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v384 - v27;
  v419 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v29 = OUTLINED_FUNCTION_2_1(v419);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_5();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v408 = &v384 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v38 = OUTLINED_FUNCTION_8_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_5();
  v409 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  v415 = &v384 - v44;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85F0, &unk_221BD3E50);
  v45 = OUTLINED_FUNCTION_2_1(v417);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_5();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  v411 = &v384 - v52;
  v418 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  v53 = OUTLINED_FUNCTION_2_21(v418);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13_6();
  v421 = (v56 - v57);
  MEMORY[0x28223BE20](v58);
  v61 = &v384 - v60;
  v62 = *(v4 + 16);
  if (v62 != *(v2 + 16) || !v62 || v4 == v2)
  {
    goto LABEL_262;
  }

  v400 = v0;
  v392 = 0;
  OUTLINED_FUNCTION_12_4(v59);
  v64 = v4 + v63;
  v65 = 0;
  v398 = v2 + v63;
  v67 = *(v66 + 72);
  v413 = v61;
  v406 = v50;
  v399 = v10;
  v403 = v62;
  v394 = v64;
  v393 = v67;
  v397 = v28;
  do
  {
    OUTLINED_FUNCTION_33_2();
    sub_221A1C608();
    if (v65 == v62)
    {
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
    }

    v401 = v65;
    v68 = v25;
    OUTLINED_FUNCTION_33_2();
    v62 = v421;
    sub_221A1C608();
    v69 = v418[6];
    v70 = *(v417 + 48);
    v71 = v411;
    OUTLINED_FUNCTION_89_2();
    OUTLINED_FUNCTION_89_2();
    v72 = v419;
    OUTLINED_FUNCTION_49_4(v71, 1, v419);
    if (v76)
    {
      OUTLINED_FUNCTION_49_4(v71 + v70, 1, v72);
      v73 = v71;
      if (!v76)
      {
        goto LABEL_254;
      }

      sub_2219A1CC8(v71, &qword_27CFB85E8, &unk_221BD86E0);
      v25 = v68;
      v74 = v397;
      OUTLINED_FUNCTION_57_3();
    }

    else
    {
      v75 = v415;
      sub_221A1C558();
      OUTLINED_FUNCTION_49_4(v71 + v70, 1, v72);
      if (v76)
      {
        OUTLINED_FUNCTION_30_3();
        sub_221A1C660(v75, v372);
        v73 = v71;
LABEL_254:
        sub_2219A1CC8(v73, &qword_27CFB85F0, &unk_221BD3E50);
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_31_4();
      v77 = v408;
      sub_221A1C5B0();
      sub_221A79FC4();
      OUTLINED_FUNCTION_34_3();
      v79 = v78;
      sub_221A1C660(v77, v78);
      sub_221A1C660(v415, v79);
      v80 = OUTLINED_FUNCTION_18_7();
      sub_2219A1CC8(v80, v81, &unk_221BD86E0);
      v25 = v68;
      v74 = v397;
      OUTLINED_FUNCTION_57_3();
      if ((v70 & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    v82 = *v413;
    v83 = *v421;
    v84 = *(*v413 + 16);
    if (v84 != *(*v421 + 16))
    {
      goto LABEL_261;
    }

    if (v84 && v82 != v83)
    {
      v85 = (*(v407 + 80) + 32) & ~*(v407 + 80);
      v86 = v82 + v85;
      v87 = v83 + v85;
      v395 = *(v407 + 72);
      v410 = v34;
      while (1)
      {
        OUTLINED_FUNCTION_29_4();
        sub_221A1C608();
        v405 = v86;
        OUTLINED_FUNCTION_29_4();
        v404 = v87;
        sub_221A1C608();
        v88 = *(v420 + 28);
        v89 = *(v417 + 48);
        OUTLINED_FUNCTION_89_2();
        OUTLINED_FUNCTION_89_2();
        v90 = v419;
        OUTLINED_FUNCTION_49_4(v50, 1, v419);
        if (v76)
        {
          OUTLINED_FUNCTION_145(v50 + v89);
          if (!v76)
          {
            goto LABEL_248;
          }

          sub_2219A1CC8(v50, &qword_27CFB85E8, &unk_221BD86E0);
          v91 = v420;
          goto LABEL_73;
        }

        v92 = v409;
        sub_221A1C558();
        OUTLINED_FUNCTION_145(v50 + v89);
        if (v93)
        {
          OUTLINED_FUNCTION_30_3();
          sub_221A1C660(v92, v364);
LABEL_248:
          v362 = &qword_27CFB85F0;
          v363 = &unk_221BD3E50;
          goto LABEL_258;
        }

        OUTLINED_FUNCTION_31_4();
        v94 = v410;
        sub_221A1C5B0();
        v95 = *(v90 + 20);
        v97 = *(v92 + v95);
        v96 = *(v92 + v95 + 8);
        v98 = (v94 + v95);
        v99 = *v98;
        v396 = v98[1];
        if (v96 >> 60 != 15)
        {
          break;
        }

        if (v396 >> 60 != 15)
        {
          goto LABEL_249;
        }

        v100 = OUTLINED_FUNCTION_39_4();
        v102 = v101;
        sub_2219EBFB4(v100, v103);
        sub_2219EBFB4(v102, v396);
LABEL_63:
        v133 = OUTLINED_FUNCTION_39_4();
        sub_2219EC02C(v133, v134);
        v135 = v410;
LABEL_64:
        OUTLINED_FUNCTION_84_2(*(v419 + 24));
        if (v137)
        {
          if (!v136)
          {
            goto LABEL_257;
          }
        }

        else
        {
          OUTLINED_FUNCTION_77_3();
          if (v138)
          {
            goto LABEL_257;
          }
        }

        OUTLINED_FUNCTION_84_2(*(v419 + 28));
        if (v140)
        {
          if (!v139)
          {
            goto LABEL_257;
          }
        }

        else
        {
          OUTLINED_FUNCTION_77_3();
          if (v141)
          {
            goto LABEL_257;
          }
        }

        v142 = sub_221BCC8D8();
        sub_221A1C500();
        sub_221BCD338();
        OUTLINED_FUNCTION_34_3();
        v143 = v92;
        v145 = v144;
        sub_221A1C660(v410, v144);
        sub_221A1C660(v143, v145);
        sub_2219A1CC8(v406, &qword_27CFB85E8, &unk_221BD86E0);
        v91 = v420;
        if ((v142 & 1) == 0)
        {
          goto LABEL_260;
        }

LABEL_73:
        if (*v74 != *v25)
        {
          goto LABEL_260;
        }

        v146 = *(v91 + 32);
        v147 = *(v25 + v146 + 8);
        if (*(v74 + v146 + 8))
        {
          if (!v147)
          {
            goto LABEL_260;
          }

          OUTLINED_FUNCTION_61_3((v74 + v146));
          v150 = v76 && v148 == v149;
          if (!v150 && (sub_221BCE1B8() & 1) == 0)
          {
            goto LABEL_260;
          }
        }

        else if (v147)
        {
          goto LABEL_260;
        }

        v151 = v74[1] == v25[1] && v74[2] == v25[2];
        if (!v151 && (sub_221BCE1B8() & 1) == 0)
        {
          goto LABEL_260;
        }

        v152 = *(v91 + 36);
        v153 = *(v412 + 48);
        v154 = v414;
        sub_221A1C558();
        sub_221A1C558();
        v155 = v416;
        OUTLINED_FUNCTION_49_4(v154, 1, v416);
        if (!v76)
        {
          v157 = v400;
          sub_221A1C558();
          OUTLINED_FUNCTION_49_4(v154 + v153, 1, v155);
          if (v158)
          {
            OUTLINED_FUNCTION_6_9();
            sub_221A1C660(v157, v370);
LABEL_251:
            v362 = &qword_27CFB85E0;
            v363 = &unk_221BD3E40;
LABEL_252:
            v371 = v154;
LABEL_259:
            sub_2219A1CC8(v371, v362, v363);
LABEL_260:
            sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_DynamicOption);
            v381 = OUTLINED_FUNCTION_12();
            sub_221A1C660(v381, v382);
LABEL_261:
            sub_221A1C660(v421, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
            sub_221A1C660(v413, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
            goto LABEL_262;
          }

          v402 = v84;
          OUTLINED_FUNCTION_8_8();
          v159 = v399;
          sub_221A1C5B0();
          v160 = *v157;
          v161 = v157[1];
          v162 = v161 >> 62;
          v164 = *v159;
          v163 = v159[1];
          v165 = HIDWORD(v160);
          v166 = v163 >> 62;
          if (!v76)
          {
            v34 = v410;
            v168 = v406;
            v169 = 0;
            switch(v162)
            {
              case 0uLL:
                v169 = BYTE6(v161);
                goto LABEL_110;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v160), v160))
                {
                  goto LABEL_268;
                }

                v169 = HIDWORD(v160) - v160;
                break;
              case 2uLL:
                OUTLINED_FUNCTION_82_2();
                if (!v110)
                {
                  goto LABEL_110;
                }

                goto LABEL_269;
              case 3uLL:
                goto LABEL_110;
              default:
                goto LABEL_301;
            }

            goto LABEL_110;
          }

          v169 = 0;
          v34 = v410;
          v168 = v406;
          if (v160 || (v161 == 0xC000000000000000 ? (v167 = v163 >> 62 == 3) : (v167 = 0), !v167 || (v169 = 0, v164) || v163 != 0xC000000000000000))
          {
LABEL_110:
            switch(v166)
            {
              case 1uLL:
                LODWORD(v170) = HIDWORD(v164) - v164;
                if (__OFSUB__(HIDWORD(v164), v164))
                {
                  goto LABEL_264;
                }

                v170 = v170;
LABEL_119:
                if (v169 != v170)
                {
                  goto LABEL_246;
                }

                if (v169 < 1)
                {
                  goto LABEL_176;
                }

                break;
              case 2uLL:
                v172 = *(v164 + 16);
                v171 = *(v164 + 24);
                v110 = __OFSUB__(v171, v172);
                v170 = v171 - v172;
                if (!v110)
                {
                  goto LABEL_119;
                }

                goto LABEL_265;
              case 3uLL:
                if (v169)
                {
                  goto LABEL_246;
                }

                goto LABEL_176;
              default:
                v170 = BYTE6(v163);
                goto LABEL_119;
            }

            v173 = v164 >> 32;
            switch(v162)
            {
              case 1:
                if (v160 >> 32 < v160)
                {
                  goto LABEL_270;
                }

                v197 = v160;
                v198 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v198, v199);
                v200 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v200, v201);
                v202 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v202, v203);
                v189 = sub_221BCC278();
                if (!v189)
                {
                  goto LABEL_139;
                }

                v204 = sub_221BCC2A8();
                if (__OFSUB__(v197, v204))
                {
                  goto LABEL_275;
                }

                v189 += v197 - v204;
LABEL_139:
                v153 = v161 & 0x3FFFFFFFFFFFFFFFLL;
                sub_221BCC298();
                sub_221A1C1B4(v189, v164, v163, v425);
                OUTLINED_FUNCTION_70_2();
                v205 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v205, v206);
                v207 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v207, v208);
                v209 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v209, v210);
                v154 = v414;
                v34 = v410;
                v168 = v406;
                if ((v425[0] & 1) == 0)
                {
                  goto LABEL_246;
                }

                break;
              case 2:
                v181 = *(v160 + 16);
                v182 = *(v160 + 24);
                v183 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v183, v184);
                v185 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v185, v186);
                v187 = OUTLINED_FUNCTION_17_6();
                sub_2219EBFC8(v187, v188);
                v189 = sub_221BCC278();
                if (!v189)
                {
                  goto LABEL_129;
                }

                v190 = sub_221BCC2A8();
                if (__OFSUB__(v181, v190))
                {
                  goto LABEL_274;
                }

                v189 += v181 - v190;
LABEL_129:
                if (!__OFSUB__(v182, v181))
                {
                  goto LABEL_139;
                }

                goto LABEL_271;
              case 3:
                memset(v425, 0, 14);
                if (!v166)
                {
                  goto LABEL_141;
                }

                if (v166 == 2)
                {
                  v191 = *(v164 + 16);
                  v192 = *(v164 + 24);
                  v193 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v193, v194);
                  v153 = OUTLINED_FUNCTION_88_3(v191, v192, v163 & 0x3FFFFFFFFFFFFFFFLL, v425);
                  OUTLINED_FUNCTION_70_2();
                  v195 = OUTLINED_FUNCTION_17_6();
                  sub_2219EC040(v195, v196);
LABEL_175:
                  v154 = v414;
                  if ((v153 & 1) == 0)
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
                  if (v173 < v164)
                  {
                    goto LABEL_281;
                  }

                  v245 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v245, v246);
                  v247 = sub_221BCC278();
                  if (v247)
                  {
                    v396 = v247;
                    v248 = sub_221BCC2A8();
                    if (__OFSUB__(v164, v248))
                    {
                      goto LABEL_282;
                    }

                    v396 += v164 - v248;
                  }

                  else
                  {
                    v396 = 0;
                  }

                  v328 = v173 - v164;
                  v329 = sub_221BCC298();
                  if (v329 >= v328)
                  {
                    v330 = v328;
                  }

                  else
                  {
                    v330 = v329;
                  }

                  v227 = &v426;
                  if (!v396)
                  {
                    __break(1u);
LABEL_294:
                    __break(1u);
LABEL_295:
                    __break(1u);
LABEL_296:
                    __break(1u);
LABEL_297:
                    __break(1u);
LABEL_298:
                    __break(1u);
LABEL_299:
                    __break(1u);
LABEL_300:

                    __break(1u);
LABEL_301:
                    JUMPOUT(0);
                  }

                  v154 = v414;
                  if (v425 == v396)
                  {
                    v333 = OUTLINED_FUNCTION_17_6();
                    sub_2219EC040(v333, v334);
                  }

                  else
                  {
                    v153 = memcmp(v425, v396, v330);
                    v331 = OUTLINED_FUNCTION_17_6();
                    sub_2219EC040(v331, v332);
                    if (v153)
                    {
LABEL_246:
                      OUTLINED_FUNCTION_7_8();
                      sub_221A1C660(v399, v361);
                      sub_221A1C660(v400, v153);
                      v362 = &unk_27CFBB660;
                      v363 = &qword_221BE4610;
                      goto LABEL_252;
                    }
                  }
                }

                break;
              default:
                LOWORD(v425[0]) = v160;
                BYTE2(v425[0]) = BYTE2(v160);
                BYTE3(v425[0]) = BYTE3(v160);
                BYTE4(v425[0]) = v165;
                BYTE5(v425[0]) = BYTE5(v160);
                BYTE6(v425[0]) = BYTE6(v160);
                HIBYTE(v425[0]) = HIBYTE(v160);
                LOWORD(v425[1]) = v161;
                BYTE2(v425[1]) = BYTE2(v161);
                BYTE3(v425[1]) = BYTE3(v161);
                BYTE4(v425[1]) = BYTE4(v161);
                BYTE5(v425[1]) = BYTE5(v161);
                if (!v166)
                {
LABEL_141:
                  v422 = v164;
                  LOWORD(v423) = v163;
                  BYTE2(v423) = BYTE2(v163);
                  HIBYTE(v423) = BYTE3(v163);
                  LOBYTE(v424) = BYTE4(v163);
                  HIBYTE(v424) = BYTE5(v163);
                  v211 = memcmp(v425, &v422, BYTE6(v163));
                  v154 = v414;
                  if (v211)
                  {
                    goto LABEL_246;
                  }

                  break;
                }

                if (v166 == 1)
                {
                  if (v173 < v164)
                  {
                    goto LABEL_280;
                  }

                  v174 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v174, v175);
                  v176 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v176, v177);
                  v178 = v163 & 0x3FFFFFFFFFFFFFFFLL;
                  v179 = v164;
                  v180 = v164 >> 32;
                }

                else
                {
                  v173 = *(v164 + 16);
                  v249 = *(v164 + 24);
                  v250 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v250, v251);
                  v252 = OUTLINED_FUNCTION_17_6();
                  sub_2219EBFC8(v252, v253);
                  v178 = v163 & 0x3FFFFFFFFFFFFFFFLL;
                  v179 = v173;
                  v180 = v249;
                }

                v153 = OUTLINED_FUNCTION_88_3(v179, v180, v178, v425);
                v254 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v254, v255);
                v256 = OUTLINED_FUNCTION_17_6();
                sub_2219EC040(v256, v257);
                OUTLINED_FUNCTION_70_2();
                if (v173)
                {
                  goto LABEL_300;
                }

                goto LABEL_175;
            }
          }

LABEL_176:
          v258 = v154;
          v259 = *(v416 + 20);
          v260 = sub_221BCC8D8();
          sub_221A1C500();
          v261 = v400;
          v262 = v399;
          sub_221BCD338();
          OUTLINED_FUNCTION_35_4();
          v264 = v263;
          sub_221A1C660(v262, v263);
          sub_221A1C660(v261, v264);
          sub_2219A1CC8(v258, &unk_27CFBB660, &qword_221BE4610);
          v156 = v420;
          v62 = v403;
          v50 = v168;
          v84 = v402;
          if ((v260 & 1) == 0)
          {
            goto LABEL_260;
          }

          goto LABEL_177;
        }

        OUTLINED_FUNCTION_49_4(v154 + v153, 1, v155);
        if (!v76)
        {
          goto LABEL_251;
        }

        sub_2219A1CC8(v154, &unk_27CFBB660, &qword_221BE4610);
        v34 = v410;
        v156 = v420;
        v50 = v406;
LABEL_177:
        v265 = *(v156 + 24);
        sub_221BCC8D8();
        sub_221A1C500();
        v266 = sub_221BCD338();
        sub_221A1C660(v25, type metadata accessor for AppIntentsProtobuf_DynamicOption);
        sub_221A1C660(v74, type metadata accessor for AppIntentsProtobuf_DynamicOption);
        if ((v266 & 1) == 0)
        {
          goto LABEL_261;
        }

        v87 = v404 + v395;
        v86 = v405 + v395;
        if (!--v84)
        {
          goto LABEL_224;
        }
      }

      if (v396 >> 60 == 15)
      {
LABEL_249:
        v365 = OUTLINED_FUNCTION_39_4();
        sub_2219EBFB4(v365, v366);
        OUTLINED_FUNCTION_71_1();
        sub_2219EBFB4(v367, v94);
        sub_2219EC02C(v97, v96);
        v368 = OUTLINED_FUNCTION_69_0();
        sub_2219EC02C(v368, v369);
LABEL_256:
        v135 = v410;
LABEL_257:
        sub_221A1C660(v135, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        v379 = OUTLINED_FUNCTION_65_2();
        sub_221A1C660(v379, v380);
        v362 = &qword_27CFB85E8;
        v363 = &unk_221BD86E0;
LABEL_258:
        v371 = v50;
        goto LABEL_259;
      }

      v402 = v84;
      v104 = v96 >> 62;
      v105 = v396;
      v84 = v396 >> 62;
      if (v396 >> 60 == 14)
      {
        v107 = 0;
        if (!v97 && v96 == 0xC000000000000000 && v396 >> 62 == 3)
        {
          v107 = 0;
          if (!v99 && v396 == 0xC000000000000000)
          {
            sub_2219EBFB4(0, 0xC000000000000000);
            sub_2219EBFB4(0, 0xC000000000000000);
            sub_2219EC02C(0, 0xC000000000000000);
LABEL_62:
            OUTLINED_FUNCTION_72_1();
            goto LABEL_63;
          }
        }
      }

      else
      {
        v107 = 0;
        switch(v104)
        {
          case 0uLL:
            v107 = BYTE6(v96);
            break;
          case 1uLL:
            LODWORD(v107) = HIDWORD(v97) - v97;
            if (__OFSUB__(HIDWORD(v97), v97))
            {
              goto LABEL_273;
            }

            v107 = v107;
            break;
          case 2uLL:
            v109 = *(v97 + 16);
            v108 = *(v97 + 24);
            v110 = __OFSUB__(v108, v109);
            v107 = v108 - v109;
            if (!v110)
            {
              break;
            }

            goto LABEL_272;
          case 3uLL:
            break;
          default:
            goto LABEL_301;
        }
      }

      v50 = HIDWORD(v99);
      v111 = BYTE6(v396);
      switch(v84)
      {
        case 1uLL:
          LODWORD(v112) = HIDWORD(v99) - v99;
          if (__OFSUB__(HIDWORD(v99), v99))
          {
            goto LABEL_267;
          }

          v112 = v112;
LABEL_52:
          if (v107 != v112)
          {
LABEL_255:
            v373 = OUTLINED_FUNCTION_39_4();
            sub_2219EBFB4(v373, v374);
            v375 = OUTLINED_FUNCTION_27_6();
            sub_2219EBFB4(v375, v376);
            v377 = OUTLINED_FUNCTION_27_6();
            sub_2219EC02C(v377, v378);
            sub_2219EC02C(v97, v96);
            OUTLINED_FUNCTION_37_0();
            goto LABEL_256;
          }

          if (v107 >= 1)
          {
            v115 = v99 >> 16;
            v116 = v99 >> 24;
            v117 = v99 >> 40;
            v118 = HIWORD(v99);
            v119 = HIBYTE(v99);
            v120 = v396 >> 8;
            v121 = v396 >> 16;
            v122 = v396 >> 24;
            v123 = v99 >> 32;
            v391 = v96;
            v390 = v97;
            switch(v104)
            {
              case 1:
                v386 = HIDWORD(v99);
                v387 = v99 >> 8;
                OUTLINED_FUNCTION_20_5(v122, v121, v120, v119, v118, v117, v116, v115);
                if (v97 >> 32 < v97)
                {
                  goto LABEL_276;
                }

                v50 = v97;
                OUTLINED_FUNCTION_36_4();
                v228 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v228, v229);
                v230 = OUTLINED_FUNCTION_65_2();
                sub_2219EBFB4(v230, v231);
                v232 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v232, v233);
                v389 = v97;
                v234 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v234, v235);
                v221 = sub_221BCC278();
                v385 = v111;
                if (!v221)
                {
                  goto LABEL_164;
                }

                v236 = sub_221BCC2A8();
                if (__OFSUB__(v97, v236))
                {
                  goto LABEL_279;
                }

                v221 += v97 - v236;
LABEL_164:
                OUTLINED_FUNCTION_71_1();
                v62 = (v97 >> 32) - v97;
                sub_221BCC298();
                OUTLINED_FUNCTION_64_2();
                if (v84 == 2)
                {
                  v307 = *(v389 + 16);
                  v308 = *(v389 + 24);
LABEL_191:
                  OUTLINED_FUNCTION_88_3(v307, v308, v111 & 0x3FFFFFFFFFFFFFFFLL, v221);
                  OUTLINED_FUNCTION_70_2();
                  if (v221)
                  {
                    goto LABEL_300;
                  }

                  v238 = v309;
                  v310 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v310, v311);
                  v312 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v312, v313);
                  v314 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v314, v315);
                  v92 = v409;
                  OUTLINED_FUNCTION_57_3();
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_72_1();
                }

                else if (v84 == 1)
                {
                  OUTLINED_FUNCTION_66_0();
                  v62 = v403;
                  v50 = v406;
                  v84 = v402;
                  if (v224 != v110)
                  {
                    goto LABEL_287;
                  }

LABEL_167:
                  OUTLINED_FUNCTION_88_3(v388, v223, v111 & 0x3FFFFFFFFFFFFFFFLL, v221);
                  OUTLINED_FUNCTION_70_2();
                  if (v221)
                  {
                    goto LABEL_300;
                  }

                  v238 = v237;
                  v239 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v239, v240);
                  v241 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v241, v242);
                  v243 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v243, v244);
                  v92 = v409;
                }

                else
                {
                  OUTLINED_FUNCTION_26_5();
                  BYTE4(v425[0]) = v386;
                  OUTLINED_FUNCTION_19_5();
                  if (!v221)
                  {
                    goto LABEL_297;
                  }

                  v317 = v221;
                  v316 = v385;
LABEL_197:
                  v318 = memcmp(v317, v425, v316);
                  v319 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v319, v320);
                  v321 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC02C(v321, v322);
                  v323 = OUTLINED_FUNCTION_69_0();
                  sub_2219EC040(v323, v324);
                  v238 = v318 == 0;
                  v92 = v409;
                  OUTLINED_FUNCTION_37_0();
                }

                v325 = OUTLINED_FUNCTION_69_0();
                sub_2219EC040(v325, v326);
                v327 = v390;
                v135 = v410;
                goto LABEL_222;
              case 2:
                v387 = v99 >> 8;
                OUTLINED_FUNCTION_20_5(v122, v121, v120, v119, v118, v117, v116, v115);
                v212 = *(v97 + 16);
                v386 = *(v97 + 24);
                OUTLINED_FUNCTION_36_4();
                v213 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v213, v214);
                v215 = OUTLINED_FUNCTION_65_2();
                sub_2219EBFB4(v215, v216);
                v217 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v217, v218);
                v389 = v97;
                v219 = OUTLINED_FUNCTION_27_6();
                sub_2219EBFB4(v219, v220);
                v221 = sub_221BCC278();
                if (!v221)
                {
                  goto LABEL_146;
                }

                v222 = sub_221BCC2A8();
                if (__OFSUB__(v212, v222))
                {
                  goto LABEL_278;
                }

                v221 += v212 - v222;
LABEL_146:
                v110 = __OFSUB__(v386, v212);
                v62 = v386 - v212;
                if (v110)
                {
                  goto LABEL_277;
                }

                sub_221BCC298();
                OUTLINED_FUNCTION_64_2();
                if (v84 == 2)
                {
                  v305 = *(v389 + 16);
                  v306 = *(v389 + 24);
                  OUTLINED_FUNCTION_71_1();
                  goto LABEL_191;
                }

                v111 = v396;
                if (v84 == 1)
                {
                  OUTLINED_FUNCTION_66_0();
                  v62 = v403;
                  v50 = v406;
                  v84 = v402;
                  if (v224 != v110)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_167;
                }

                OUTLINED_FUNCTION_26_5();
                BYTE4(v425[0]) = v50;
                OUTLINED_FUNCTION_19_5();
                if (!v221)
                {
                  goto LABEL_296;
                }

                v317 = v221;
                goto LABEL_197;
              case 3:
                memset(v425, 0, 14);
                if (v84 == 2)
                {
                  v267 = *(v99 + 16);
                  v50 = *(v99 + 24);
                  OUTLINED_FUNCTION_36_4();
                  v268 = OUTLINED_FUNCTION_65_2();
                  sub_2219EBFB4(v268, v269);
                  v270 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v270, v271);
                  v272 = sub_221BCC278();
                  if (v272)
                  {
                    v273 = sub_221BCC2A8();
                    v135 = v410;
                    if (__OFSUB__(v267, v273))
                    {
                      goto LABEL_289;
                    }

                    v272 += v267 - v273;
                  }

                  else
                  {
                    v135 = v410;
                  }

                  v110 = __OFSUB__(v50, v267);
                  v62 = v50 - v267;
                  if (v110)
                  {
                    goto LABEL_286;
                  }

                  sub_221BCC298();
                  OUTLINED_FUNCTION_37_0();
                  if (!v272)
                  {
                    goto LABEL_295;
                  }

                  goto LABEL_215;
                }

                if (v84 != 1)
                {
                  OUTLINED_FUNCTION_72_1();
                  LOBYTE(v422) = v281;
                  BYTE1(v422) = v282;
                  BYTE2(v422) = v283;
                  BYTE3(v422) = v284;
                  BYTE4(v422) = v50;
                  BYTE5(v422) = v285;
                  BYTE6(v422) = v286;
                  HIBYTE(v422) = v287;
                  LOBYTE(v423) = v105;
                  BYTE1(v423) = v288;
                  BYTE2(v423) = v289;
                  HIBYTE(v423) = v290;
                  LOBYTE(v424) = v291;
                  HIBYTE(v424) = v292;
                  v293 = OUTLINED_FUNCTION_39_4();
                  sub_2219EBFB4(v293, v294);
                  v295 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v295, v296);
                  v278 = memcmp(v425, &v422, BYTE6(v105));
                  v297 = OUTLINED_FUNCTION_27_6();
                  sub_2219EC02C(v297, v298);
                  OUTLINED_FUNCTION_37_0();
                  goto LABEL_185;
                }

                v388 = v99;
                v84 = v402;
                if (v123 < v99)
                {
                  goto LABEL_284;
                }

                v124 = OUTLINED_FUNCTION_45_3();
                OUTLINED_FUNCTION_37_0();
                if (v225)
                {
                  v226 = sub_221BCC2A8();
                  if (__OFSUB__(v388, v226))
                  {
                    goto LABEL_291;
                  }

                  v124 += v388 - v226;
                }

                OUTLINED_FUNCTION_71_1();
                sub_221BCC298();
                if (!v124)
                {
                  goto LABEL_294;
                }

                goto LABEL_220;
              default:
                v425[0] = v97;
                LOWORD(v425[1]) = v96;
                BYTE2(v425[1]) = BYTE2(v96);
                BYTE3(v425[1]) = BYTE3(v96);
                BYTE4(v425[1]) = BYTE4(v96);
                BYTE5(v425[1]) = BYTE5(v96);
                if (v84)
                {
                  if (v84 == 1)
                  {
                    v388 = v99;
                    if (v123 < v99)
                    {
                      goto LABEL_283;
                    }

                    v124 = OUTLINED_FUNCTION_45_3();
                    OUTLINED_FUNCTION_37_0();
                    OUTLINED_FUNCTION_72_1();
                    if (v125)
                    {
                      v126 = sub_221BCC2A8();
                      if (__OFSUB__(v388, v126))
                      {
                        goto LABEL_292;
                      }

                      v124 += v388 - v126;
                    }

                    OUTLINED_FUNCTION_71_1();
                    sub_221BCC298();
                    if (!v124)
                    {
                      goto LABEL_299;
                    }

LABEL_220:
                    OUTLINED_FUNCTION_83_3();
                    v278 = memcmp(v425, v124, v341);
                    v342 = v389;
                    sub_2219EC02C(v389, v111);
                    sub_2219EC040(v342, v111);
                    v92 = v409;
                    v135 = v410;
                  }

                  else
                  {
                    v299 = *(v99 + 16);
                    v50 = *(v99 + 24);
                    OUTLINED_FUNCTION_36_4();
                    v300 = OUTLINED_FUNCTION_65_2();
                    sub_2219EBFB4(v300, v301);
                    v302 = OUTLINED_FUNCTION_27_6();
                    sub_2219EBFB4(v302, v303);
                    v272 = sub_221BCC278();
                    if (v272)
                    {
                      v304 = sub_221BCC2A8();
                      v135 = v410;
                      if (__OFSUB__(v299, v304))
                      {
                        goto LABEL_290;
                      }

                      v272 += v299 - v304;
                    }

                    else
                    {
                      v135 = v410;
                    }

                    v110 = __OFSUB__(v50, v299);
                    v62 = v50 - v299;
                    if (v110)
                    {
                      goto LABEL_285;
                    }

                    sub_221BCC298();
                    OUTLINED_FUNCTION_37_0();
                    if (!v272)
                    {
                      goto LABEL_298;
                    }

LABEL_215:
                    if (v335 >= v62)
                    {
                      v336 = v62;
                    }

                    else
                    {
                      v336 = v335;
                    }

                    v278 = memcmp(v425, v272, v336);
                    v337 = OUTLINED_FUNCTION_86();
                    sub_2219EC02C(v337, v338);
                    v339 = OUTLINED_FUNCTION_86();
                    sub_2219EC040(v339, v340);
                    v92 = v409;
                    OUTLINED_FUNCTION_57_3();
                    OUTLINED_FUNCTION_72_1();
                  }
                }

                else
                {
                  v422 = v99;
                  v423 = v396;
                  v424 = WORD2(v396);
                  v274 = OUTLINED_FUNCTION_39_4();
                  sub_2219EBFB4(v274, v275);
                  v276 = OUTLINED_FUNCTION_27_6();
                  sub_2219EBFB4(v276, v277);
                  v278 = memcmp(v425, &v422, BYTE6(v105));
                  v279 = OUTLINED_FUNCTION_27_6();
                  sub_2219EC02C(v279, v280);
                  OUTLINED_FUNCTION_37_0();
                  OUTLINED_FUNCTION_72_1();
LABEL_185:
                  v135 = v410;
                }

                v238 = v278 == 0;
                v327 = v390;
LABEL_222:
                sub_2219EC02C(v327, v391);
                if (!v238)
                {
                  goto LABEL_257;
                }

                goto LABEL_64;
            }
          }

LABEL_61:
          v127 = OUTLINED_FUNCTION_39_4();
          sub_2219EBFB4(v127, v128);
          v129 = OUTLINED_FUNCTION_86();
          sub_2219EBFB4(v129, v130);
          v131 = OUTLINED_FUNCTION_86();
          sub_2219EC02C(v131, v132);
          OUTLINED_FUNCTION_37_0();
          break;
        case 2uLL:
          v114 = *(v99 + 16);
          v113 = *(v99 + 24);
          v110 = __OFSUB__(v113, v114);
          v112 = v113 - v114;
          if (!v110)
          {
            goto LABEL_52;
          }

          goto LABEL_266;
        case 3uLL:
          if (v107)
          {
            goto LABEL_255;
          }

          goto LABEL_61;
        default:
          v112 = BYTE6(v396);
          goto LABEL_52;
      }

      goto LABEL_62;
    }

LABEL_224:
    v343 = v418[7];
    OUTLINED_FUNCTION_54_3();
    if (v346)
    {
      if (!v344)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_61_3(v345);
      v349 = v76 && v347 == v348;
      if (!v349 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    else if (v344)
    {
      goto LABEL_261;
    }

    v350 = v418[8];
    OUTLINED_FUNCTION_54_3();
    if (v353)
    {
      if (!v351)
      {
        goto LABEL_261;
      }

      OUTLINED_FUNCTION_61_3(v352);
      v356 = v76 && v354 == v355;
      if (!v356 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_261;
      }
    }

    else if (v351)
    {
      goto LABEL_261;
    }

    v357 = v418[5];
    sub_221BCC8D8();
    sub_221A1C500();
    v358 = v413;
    v359 = v421;
    v360 = sub_221BCD338();
    sub_221A1C660(v359, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
    sub_221A1C660(v358, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
    if ((v360 & 1) == 0)
    {
      break;
    }

    v65 = v401 + 1;
  }

  while (v401 + 1 != v62);
LABEL_262:
  v383 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A19610(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_75_2();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_221A19668()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  v6 = type metadata accessor for AppIntentsProtobuf_SystemProtocol(v5);
  v7 = OUTLINED_FUNCTION_2_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_6();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8(v11);
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      v12 = *v2 == *v1 && v2[1] == v1[1];
      if (!v12 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v13 = *(v6 + 20);
      sub_221BCC8D8();
      sub_221A1C500();
      v14 = OUTLINED_FUNCTION_38_1();
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
      OUTLINED_FUNCTION_86_1();
      if (v14)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
    v15 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v15, v16);
  }

LABEL_17:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A19800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 64)
    {
      sub_221A1C73C(v3, v21);
      sub_221A1C73C(i, v17);
      v5 = v21[0] == v17[0] && v21[1] == v17[1];
      if (!v5 && (sub_221BCE1B8() & 1) == 0 || v21[2] != v17[2])
      {
        break;
      }

      v6 = v22[4];
      __swift_project_boxed_opaque_existential_0(v22, v22[3]);
      v7 = *(v6 + 16);
      v8 = OUTLINED_FUNCTION_69_0();
      v10 = v9(v8);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = v13;
      if (v10)
      {
        if (!v13)
        {
          v14 = v10;
LABEL_20:

          break;
        }

        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        OUTLINED_FUNCTION_69_0();
        v15 = sub_221BCDC58();

        sub_221A1C798(v17);
        sub_221A1C798(v21);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v13)
        {
          goto LABEL_20;
        }

        sub_221A1C798(v17);
        sub_221A1C798(v21);
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_221A1C798(v17);
    sub_221A1C798(v21);
  }

  return 0;
}

uint64_t sub_221A199D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); *(i - 24) == *(v3 - 24); i += 32)
    {
      v5 = *(i - 2);
      v6 = *(v3 - 2);
      v7 = *v3;
      if (*i)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v8 = v5 == v6 && *(i - 1) == *(v3 - 1);
        if (!v8 && (sub_221BCE1B8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v6)
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_221A19AAC(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    if (a2 >> 62)
    {
      result = sub_221BCDDA8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v23 = 0;
      return v23 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v23 = 1;
      return v23 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_2219A1D20(0, a3, a4);
    v26 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = MEMORY[0x223DA3BF0](v17 - 4, v26);
      }

      else
      {
        if (v18 >= *(v25 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v26 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = OUTLINED_FUNCTION_63_3();
        v21 = MEMORY[0x223DA3BF0](v20);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v7 + 8 * v17);
      }

      v22 = v21;
      v23 = sub_221BCDC58();

      if (v23)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_221A19C78()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
    goto LABEL_56;
  }

  v3 = (v1 + 48);
  v4 = (v0 + 48);
  while (2)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v8 = *v4;
    v4 += 24;
    v7 = v8;
    v9 = *(v3 - 2);
    v10 = *(v3 - 1);
    v11 = *v3;
    switch(v8 >> 5)
    {
      case 1u:
        if ((v11 & 0xE0) != 0x20)
        {
          goto LABEL_53;
        }

        if (v6 != v9 || v5 != v10)
        {
          v62 = *(v3 - 2);
          v63 = *(v3 - 1);
          v48 = sub_221BCE1B8();
          v64 = OUTLINED_FUNCTION_27();
          v66 = OUTLINED_FUNCTION_0_27(v64, v65);
          sub_221A1C70C(v66, v67, v68);
          v69 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v69, v70, v71);
          v58 = OUTLINED_FUNCTION_4_11();
          goto LABEL_20;
        }

        v96 = OUTLINED_FUNCTION_0_27(v6, v5);
        sub_221A1C70C(v96, v97, v98);
        v99 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v99, v100, v101);
        v73 = OUTLINED_FUNCTION_12();
        v76 = v11;
        goto LABEL_50;
      case 2u:
        if ((v11 & 0xE0) != 0x40)
        {
          goto LABEL_53;
        }

        if (v6 == v9 && v5 == v10)
        {
          v77 = OUTLINED_FUNCTION_0_27(v6, v5);
          sub_221A1C70C(v77, v78, v79);
          v80 = OUTLINED_FUNCTION_12();
          v82 = OUTLINED_FUNCTION_0_27(v80, v81);
          sub_221A1C70C(v82, v83, v84);
          v85 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v85, v86, v87);
          v88 = OUTLINED_FUNCTION_12();
          sub_2219A1B7C(v88, v89, v11);
        }

        else
        {
          v19 = *(v3 - 2);
          v20 = *(v3 - 1);
          v21 = sub_221BCE1B8();
          v22 = OUTLINED_FUNCTION_27();
          v24 = OUTLINED_FUNCTION_0_27(v22, v23);
          sub_221A1C70C(v24, v25, v26);
          v27 = OUTLINED_FUNCTION_27();
          v29 = OUTLINED_FUNCTION_0_27(v27, v28);
          sub_221A1C70C(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v32, v33, v34);
          v35 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v35, v36, v37);
          if ((v21 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        v90 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v90, v91, v92);
        v93 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v93, v94, v95);
        if (((v11 ^ v7) & 0x1F) != 0)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
      case 3u:
        if ((v11 & 0xE0) == 0x60)
        {
          goto LABEL_19;
        }

        goto LABEL_53;
      case 4u:
        if ((v11 & 0xE0) == 0x80)
        {
LABEL_19:
          v38 = OUTLINED_FUNCTION_27();
          v40 = OUTLINED_FUNCTION_0_27(v38, v39);
          sub_221A1C70C(v40, v41, v42);
          v43 = OUTLINED_FUNCTION_27();
          v45 = OUTLINED_FUNCTION_0_27(v43, v44);
          sub_221A1C70C(v45, v46, v47);
          v48 = sub_221A19C78(v6, v9);
          v49 = OUTLINED_FUNCTION_1_26();
          sub_2219A1B7C(v49, v50, v51);
          v52 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v52, v53, v54);
          v55 = OUTLINED_FUNCTION_4_11();
          sub_2219A1B7C(v55, v56, v57);
          v58 = OUTLINED_FUNCTION_1_26();
LABEL_20:
          sub_2219A1B7C(v58, v59, v60);
          if ((v48 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_51:
          v3 += 24;
          if (!--v2)
          {
            goto LABEL_56;
          }

          continue;
        }

LABEL_53:
        v102 = OUTLINED_FUNCTION_1_26();
        sub_221A1C70C(v102, v103, v104);

LABEL_54:
        v105 = OUTLINED_FUNCTION_27();
        v107 = OUTLINED_FUNCTION_0_27(v105, v106);
        sub_2219A1B7C(v107, v108, v109);
LABEL_55:
        v110 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v110, v111, v112);
        v113 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v113, v114, v115);
LABEL_56:
        OUTLINED_FUNCTION_22();
        return;
      case 5u:
        if (v5 | v6 || v7 != 160)
        {
          if ((v11 & 0xE0) != 0xA0)
          {
            goto LABEL_54;
          }

          v74 = v9 == 1 && v10 == 0;
          if (!v74 || v11 != 160)
          {
            goto LABEL_54;
          }

          sub_2219A1B7C(1, 0, 0xA0u);
          v73 = 1;
        }

        else
        {
          v72 = (v11 & 0xE0) == 0xA0 && (v10 | v9) == 0;
          if (!v72 || v11 != 160)
          {
            goto LABEL_54;
          }

          sub_2219A1B7C(0, 0, 0xA0u);
          v73 = 0;
        }

        v75 = 0;
        v76 = -96;
LABEL_50:
        sub_2219A1B7C(v73, v75, v76);
        goto LABEL_51;
      default:
        if (v11 >= 0x20)
        {
          goto LABEL_54;
        }

        v12 = OUTLINED_FUNCTION_1_26();
        sub_2219A1B7C(v12, v13, v14);
        v15 = OUTLINED_FUNCTION_4_11();
        sub_2219A1B7C(v15, v16, v17);
        if (v9 != v6)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
    }
  }
}

void sub_221A19F98()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 48);
    v4 = (v1 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) != *(v4 - 2) || *(v3 - 1) != *(v4 - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(v4 - 1);
        if ((sub_221BCE1B8() & 1) == 0)
        {
          break;
        }
      }

      if (v5)
      {
        if (!v6)
        {
          break;
        }

        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);

        v10 = v5;

        v11 = v6;
        v12 = v10;
        v13 = sub_221BCDC58();

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      else if (v6)
      {
        break;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_22();
}

void sub_221A1A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  OUTLINED_FUNCTION_13_6();
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v29 + 16);
  if (v37 == *(v27 + 16) && v37 && v29 != v27)
  {
    OUTLINED_FUNCTION_12_4(v34);
    v39 = v29 + v38;
    v40 = v27 + v38;
    v42 = *(v41 + 72);
    do
    {
      sub_221A1C608();
      sub_221A1C608();
      v43 = OUTLINED_FUNCTION_56_3();
      v44 = v25(v43);
      v45 = OUTLINED_FUNCTION_55_3();
      sub_221A1C660(v45, v46);
      sub_221A1C660(v36, v23);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v40 += v42;
      v39 += v42;
      --v37;
    }

    while (v37);
  }

  OUTLINED_FUNCTION_22();
}

void sub_221A1A2AC()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_41_1();
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(v5);
  v7 = OUTLINED_FUNCTION_2_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_6();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_9_8(v11);
    while (1)
    {
      OUTLINED_FUNCTION_56_3();
      sub_221A1C608();
      OUTLINED_FUNCTION_63_3();
      sub_221A1C608();
      if (*v2 != *v1)
      {
        break;
      }

      v12 = v2[1] == *(v1 + 8) && v2[2] == *(v1 + 16);
      if (!v12 && (sub_221BCE1B8() & 1) == 0)
      {
        break;
      }

      v13 = v2[3];
      v14 = *(v1 + 24);
      if (*(v1 + 32) == 1)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            if (v13 != 1)
            {
              break;
            }
          }

          else if (v13 != 2)
          {
            break;
          }
        }

        else if (v13)
        {
          break;
        }
      }

      else if (v13 != v14)
      {
        break;
      }

      v15 = *(v6 + 28);
      sub_221BCC8D8();
      sub_221A1C500();
      v16 = OUTLINED_FUNCTION_38_1();
      sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      OUTLINED_FUNCTION_86_1();
      if (v16)
      {
        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_221A1C660(v1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
    v17 = OUTLINED_FUNCTION_55_3();
    sub_221A1C660(v17, v18);
  }

LABEL_28:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

AppIntentsServices::AppNotificationEvent::EventType_optional __swiftcall AppNotificationEvent.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221BCE0B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221A1A52C()
{
  v0 = sub_221BCD388();
  v2 = v1;
  if (v0 == sub_221BCD388() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_74_2();
  }

  return v5 & 1;
}

uint64_t sub_221A1A59C()
{
  v0 = Entitlement.Constants.rawValue.getter();
  v2 = v1;
  if (v0 == Entitlement.Constants.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_74_2();
  }

  return v5 & 1;
}

uint64_t sub_221A1A68C(char a1, char a2)
{
  if (*&aCreated_1[8 * a1] == *&aCreated_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_221BCE1B8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_221A1A6F4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54797469746E655FLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x7954746E6576655FLL;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000221BEBF00;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else
  {
    v5 = 0x54797469746E655FLL;
    v6 = 0xEB00000000657079;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x7954746E6576655FLL;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000221BEBF00;
    }

    else
    {
      v2 = 0xEA00000000006570;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_221BCE1B8();
  }

  return v8 & 1;
}

uint64_t sub_221A1A7FC(unsigned __int8 a1, char a2)
{
  v2 = 0x73646F50726961;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73646F50726961;
  switch(v4)
  {
    case 1:
      v5 = 0x79616C50726163;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6565724673657965;
      break;
    case 3:
      v5 = 0x646F50656D6F68;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6578544;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v5 = 30324;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69736976;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x79616C50726163;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6565724673657965;
      break;
    case 3:
      v2 = 0x646F50656D6F68;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6578544;
      break;
    case 7:
      v6 = 0xE200000000000000;
      v2 = 30324;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69736976;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_221BCE1B8();
  }

  return v8 & 1;
}

uint64_t sub_221A1AA40()
{
  Entitlement.Constants.rawValue.getter();
  sub_221BCD448();
}

uint64_t sub_221A1AB78()
{
  sub_221BCD448();
}

uint64_t sub_221A1AD70(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_52_3();
  }

  sub_221BCD448();
}

uint64_t sub_221A1ADE4(uint64_t a1, char a2)
{
  v2 = *&aCreated_1[8 * a2];
  sub_221BCD448();
}

uint64_t sub_221A1AE38@<X0>(uint64_t *a1@<X8>)
{
  result = AppNotificationEvent.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AppNotificationEvent.entityType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_0_0();
}

unint64_t AppNotificationEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_221BCDE68();

  v10 = 0xD000000000000015;
  v11 = 0x8000000221BED630;
  v7[0] = v1;
  v7[1] = v2;
  v8 = v3;
  v9 = v4;
  v5 = sub_221A1B008(v7);
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_221A1B008(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_221BCF7F0;
  *(v5 + 32) = *&aCreated_1[8 * v3];
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  v6 = OUTLINED_FUNCTION_73_3();
  v8 = v7;

  if (v4)
  {
    v9 = sub_221BCD328();
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_221BCF7F0;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = v11;
    OUTLINED_FUNCTION_73_3();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t static AppNotificationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_221BCE1B8()) && (sub_221A1A68C(v2, v4))
  {
    if (v3)
    {
      if (v5)
      {
        v7 = OUTLINED_FUNCTION_0_0();
        if (sub_221A15E30(v7, v8))
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void AppNotificationEvent.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  sub_221BCD448();
  v7 = *&aCreated_1[8 * v5];
  sub_221BCD448();

  if (v6)
  {
    sub_221BCE328();

    sub_2219A1098(a1, v6);
  }

  else
  {
    sub_221BCE328();
  }
}

uint64_t AppNotificationEvent.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_221BCE308();
  sub_221BCD448();
  v5 = *&aCreated_1[8 * v3];
  sub_221BCD448();

  sub_221BCE328();
  if (v4)
  {
    sub_2219A1098(v7, v4);
  }

  return sub_221BCE358();
}

uint64_t sub_221A1B32C()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_221BCE308();
  AppNotificationEvent.hash(into:)(v5);
  return sub_221BCE358();
}