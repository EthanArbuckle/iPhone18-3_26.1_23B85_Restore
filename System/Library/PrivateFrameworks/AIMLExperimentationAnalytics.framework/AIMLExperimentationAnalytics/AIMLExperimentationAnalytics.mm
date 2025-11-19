id ExperimentationAnalyticsManager.init()()
{
  v1 = v0;
  v2 = sub_23C568224();
  v3 = OUTLINED_FUNCTION_23(v2);
  v18 = v4;
  v19 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_22();
  v17 = v8 - v7;
  v9 = *(*(sub_23C568214() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_22();
  v10 = *(*(sub_23C568044() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_22();
  v11 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace] = v11;
  v12 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) 0x278BC0B78];
  type metadata accessor for Instrumentation();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_opt_self() sharedStream];
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_instrumentation] = v14;
  type metadata accessor for Experimentation();
  swift_allocObject();
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation] = sub_23C55CCA4();
  v15 = [objc_opt_self() standardUserDefaults];
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults] = v15;
  sub_23C55CD08(0, &qword_280BD2E78, 0x277D85C78);
  sub_23C568034();
  v21 = MEMORY[0x277D84F90];
  sub_23C55CC14(&unk_280BD2E80, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8078, &qword_23C568C60);
  sub_23C55CD48(&qword_280BD2E90, &unk_27E1F8078, &qword_23C568C60);
  sub_23C568284();
  (*(v18 + 104))(v17, *MEMORY[0x277D85260], v19);
  *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_queue] = sub_23C568234();
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ExperimentationAnalyticsManager();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_23C55CB80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23C55CBB8()
{
  sub_23C55CBEC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23C55CBEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23C55CC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C55CCA4()
{
  *(v0 + 16) = [objc_opt_self() defaultProvider];
  *(v0 + 24) = [objc_opt_self() clientWithIdentifier_];
  return v0;
}

uint64_t sub_23C55CD08(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23C55CD48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C55CDB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23C55CE1C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23C55CE78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C55CEB4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C55CEFC()
{
  MEMORY[0x23EED61F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C55CF84()
{
  v0 = sub_23C567FC4();
  __swift_allocate_value_buffer(v0, qword_27E1F8020);
  __swift_project_value_buffer(v0, qword_27E1F8020);
  return sub_23C567F94();
}

uint64_t sub_23C55CFD4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 128) = a1;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23C55D06C, 0, 0);
}

uint64_t sub_23C55D06C()
{
  v34 = *MEMORY[0x277D85DE8];
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0 + 11;
  v2 = v0 + 2;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v1[2];
  v33 = *(v1 + 10);
  v7 = *(v4 + 16);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v3;
  v8[6] = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23C55EFF0;
  *(v9 + 24) = v8;
  *(v1 - 5) = sub_23C55F000;
  *(v1 - 4) = v9;
  *(v1 - 9) = MEMORY[0x277D85DD0];
  *(v1 - 8) = 1107296256;
  *(v1 - 7) = sub_23C55DD1C;
  *(v1 - 6) = &block_descriptor_6;
  v10 = _Block_copy(v2);
  v11 = *(v1 - 4);

  v12 = v5;

  *(v1 - 9) = 0;
  v13 = [v7 enumerateActiveExperimentsForEnvironment:v33 error:v2 block:v10];
  _Block_release(v10);
  v14 = *(v1 - 9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13)
  {
    v5 = v32;
    if (qword_280BD2E68 == -1)
    {
LABEL_4:
      v15 = sub_23C568014();
      OUTLINED_FUNCTION_11(v15, qword_280BD2F10);
      v16 = sub_23C568004();
      v17 = sub_23C5681E4();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_5();
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        swift_beginAccess();
        *(v18 + 4) = sub_23C567148(*v1);
        OUTLINED_FUNCTION_9();
        _os_log_impl(v19, v20, v21, v22, v23, v24);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }

      swift_beginAccess();
      v25 = v5[11];

      v26 = v5[1];
      v27 = *MEMORY[0x277D85DE8];

      return v26(v25);
    }

LABEL_13:
    OUTLINED_FUNCTION_0();
    swift_once();
    goto LABEL_4;
  }

  sub_23C567F64();

  swift_willThrow();
  v29 = *(v32 + 88);

  v30 = *(v32 + 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30();
}

void sub_23C55D3F4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_23C55D468(a1, a4);
  if (v9)
  {
    v10 = a1;
    MEMORY[0x23EED5B80]();
    sub_23C55EDB8(*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_23C5681A4();
  }
}

void sub_23C55D468(void *a1, void *a2)
{
  v5 = [a1 namespaces];
  sub_23C55EEF4();
  v6 = sub_23C568184();

  v7 = sub_23C567148(v6);

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = [a1 namespaces];
  v9 = sub_23C568184();

  if (!sub_23C567148(v9))
  {

LABEL_16:
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v51 = sub_23C568014();
    OUTLINED_FUNCTION_11(v51, qword_280BD2F10);
    v52 = a1;
    v11 = sub_23C568004();
    v53 = sub_23C5681E4();

    if (os_log_type_enabled(v11, v53))
    {
      OUTLINED_FUNCTION_5();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v55 = swift_slowAlloc();
      v93[0] = v55;
      *v54 = 136315138;
      v56 = [v52 experimentId];
      v57 = sub_23C5680E4();
      v59 = v58;

      v60 = sub_23C5643D0(v57, v59, v93);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_23C55B000, v11, v53, "No namespaces for experiment %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    goto LABEL_33;
  }

  sub_23C567D54(0, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x23EED5CC0](0, v9);
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_6();
  v13 = sub_23C5680D4();
  v14 = [v11 name];
  if (!v14)
  {
    sub_23C5680E4();
    v14 = sub_23C5680D4();
  }

  v15 = [v12 levelForFactor:v13 withNamespaceName:v14];

  if (!v15)
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v61 = sub_23C568014();
    OUTLINED_FUNCTION_11(v61, qword_280BD2F10);
    v62 = a1;
    v11 = v11;

    v28 = sub_23C568004();
    v63 = sub_23C5681E4();

    if (!os_log_type_enabled(v28, v63))
    {

      return;
    }

    OUTLINED_FUNCTION_3();
    v64 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v64 = 136315650;
    v65 = [v62 experimentId];
    sub_23C5680E4();
    OUTLINED_FUNCTION_12();

    v68 = OUTLINED_FUNCTION_4(v66, v67);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    v69 = [v11 name];
    sub_23C5680E4();
    OUTLINED_FUNCTION_12();

    v72 = OUTLINED_FUNCTION_4(v70, v71);

    *(v64 + 14) = v72;
    *(v64 + 22) = 2080;
    v73 = OUTLINED_FUNCTION_6();
    *(v64 + 24) = sub_23C5643D0(v73, v74, v75);
    _os_log_impl(&dword_23C55B000, v28, v63, "No TRILevel in experiment %s with namespace %s, for factor %s", v64, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
LABEL_32:

LABEL_33:
    return;
  }

  sub_23C55EE30(v15);
  if (v16)
  {
    v17 = sub_23C568104();
    v19 = v18;

    v93[0] = v17;
    v93[1] = v19;
    v20 = [a2 UUIDString];
    sub_23C5680E4();

    OUTLINED_FUNCTION_8();
    v21 = sub_23C568104();
    v23 = v22;

    v91 = v21;
    v92 = v23;
    sub_23C55EF9C();
    LOBYTE(v21) = sub_23C568274();

    if (v21)
    {
      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v24 = sub_23C568014();
      OUTLINED_FUNCTION_11(v24, qword_280BD2F10);
      v25 = a2;
      v26 = a1;
      v27 = v15;
      v28 = sub_23C568004();
      v29 = sub_23C5681E4();

      if (!os_log_type_enabled(v28, v29))
      {

        return;
      }

      OUTLINED_FUNCTION_3();
      v30 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v30 = 136315650;
      v31 = [v25 UUIDString];
      sub_23C5680E4();
      OUTLINED_FUNCTION_12();

      v34 = OUTLINED_FUNCTION_4(v32, v33);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = [v26 experimentId];
      sub_23C5680E4();
      v37 = v36;

      v38 = OUTLINED_FUNCTION_10();
      v40 = sub_23C5643D0(v38, v37, v39);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2080;
      sub_23C55EE30(v27);
      v42 = v41;

      if (v42)
      {
LABEL_14:
        v43 = OUTLINED_FUNCTION_10();
        v45 = sub_23C5643D0(v43, v42, v44);

        *(v30 + 24) = v45;
        OUTLINED_FUNCTION_7();
        _os_log_impl(v46, v47, v48, v49, v50, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();

        return;
      }

      goto LABEL_36;
    }

    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v76 = sub_23C568014();
    OUTLINED_FUNCTION_11(v76, qword_280BD2F10);
    v77 = a2;
    v78 = a1;
    v27 = v15;
    v28 = sub_23C568004();
    v79 = sub_23C5681E4();

    if (os_log_type_enabled(v28, v79))
    {
      OUTLINED_FUNCTION_3();
      v30 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v30 = 136315650;
      v80 = [v77 UUIDString];
      sub_23C5680E4();
      OUTLINED_FUNCTION_12();

      v83 = OUTLINED_FUNCTION_4(v81, v82);

      *(v30 + 4) = v83;
      *(v30 + 12) = 2080;
      v84 = [v78 experimentId];
      sub_23C5680E4();
      v86 = v85;

      v87 = OUTLINED_FUNCTION_10();
      v89 = sub_23C5643D0(v87, v86, v88);

      *(v30 + 14) = v89;
      *(v30 + 22) = 2080;
      sub_23C55EE30(v27);
      v42 = v90;

      if (v42)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_23C55DD1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_23C55DD78(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23C5682E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_23C55DD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[6] = a2;
  v7 = sub_23C567FC4();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C55DE64, 0, 0);
}

uint64_t sub_23C55DE64()
{
  v1 = v0[7];
  v51 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v43 = (v0[12] + 16);
    v3 = (v1 + 40);
    v48 = MEMORY[0x277D84F90];
    v4 = *(v0[10] + 24);
    v5 = 0x278BC0000uLL;
    v50 = v4;
    while (1)
    {
      v7 = v0[8];
      v6 = v0[9];
      v8 = *(v3 - 1);
      v9 = *v3;

      v10 = sub_23C5680D4();
      OUTLINED_FUNCTION_8();
      v11 = sub_23C5680D4();
      v12 = [v4 *(v5 + 2136)];

      if (v12)
      {
        if ([v12 levelOneOfCase] == 11)
        {
          result = sub_23C55EE30(v12);
          if (!v14)
          {
            __break(1u);
            return result;
          }

          v15 = v0[6];
          v16 = sub_23C568104();
          v18 = v17;

          v0[2] = v16;
          v0[3] = v18;
          v19 = [v15 UUIDString];
          sub_23C5680E4();

          v20 = sub_23C568104();
          v22 = v21;

          v0[4] = v20;
          v0[5] = v22;
          sub_23C55EF9C();
          LOBYTE(v20) = sub_23C568274();

          if (v20)
          {
            OUTLINED_FUNCTION_8();
            v23 = sub_23C5680D4();
            v4 = v50;
            v24 = [v50 experimentIdentifiersWithNamespaceName_];

            if (v24)
            {
              OUTLINED_FUNCTION_8();
              v25 = sub_23C5680D4();
              v49 = [v50 compatibilityVersionWithNamespaceName_];

              if (qword_27E1F7EF0 != -1)
              {
                OUTLINED_FUNCTION_2();
                swift_once();
              }

              v26 = v0[13];
              v47 = v26;
              v27 = v0[11];
              v28 = __swift_project_value_buffer(v27, qword_27E1F8020);
              (*v43)(v26, v28, v27);
              v29 = [v24 experimentId];
              v30 = sub_23C5680E4();
              v45 = v31;
              v46 = v30;

              v44 = [v24 deploymentId];
              v32 = [v24 treatmentId];
              sub_23C5680E4();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_23C568BA0;
              sub_23C55EEF4();
              v34 = OUTLINED_FUNCTION_8();
              *(v33 + 32) = sub_23C55E388(v34, v35, v49);
              v36 = objc_allocWithZone(MEMORY[0x277D736B8]);
              sub_23C55EC88(2u, v47, v46, v45, v44);
              MEMORY[0x23EED5B80]();
              if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23C568194();
              }

              sub_23C5681A4();
              v48 = v51;

LABEL_16:
              v4 = v50;
            }

            else
            {
            }

            v5 = 0x278BC0000;
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

LABEL_18:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_22:
  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v37 = sub_23C568014();
  OUTLINED_FUNCTION_11(v37, qword_280BD2F10);

  v38 = sub_23C568004();
  v39 = sub_23C5681E4();
  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_5();
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = sub_23C55DD78(v48);

    _os_log_impl(&dword_23C55B000, v38, v39, "%ld experiment/s with factor", v40, 0xCu);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  else
  {
  }

  v41 = v0[13];

  v42 = v0[1];

  return v42(v48);
}

id sub_23C55E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_23C5680D4();

  v6 = [v4 initWithName:v5 compatibilityVersion:a3];

  return v6;
}

id sub_23C55E404()
{
  v1 = sub_23C567FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_6();
  v7 = sub_23C5680D4();
  v8 = [v6 experimentIdentifiersWithNamespaceName_];

  if (v8)
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = sub_23C55E818(v9, v10);
    if ((v11 & 0x100000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23C568BB0;
      v38 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_23C5680E4();
      *(inited + 40) = v39;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0xD000000000000023;
      *(inited + 56) = 0x800000023C568FA0;
      v40 = sub_23C5680B4();
      v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v40);
      swift_willThrow();
    }

    else
    {
      v12 = v11;
      if (qword_27E1F7EF0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v13 = __swift_project_value_buffer(v1, qword_27E1F8020);
      (*(v2 + 16))(v5, v13, v1);
      v14 = [v8 experimentId];
      v15 = sub_23C5680E4();
      v44 = v16;
      v45 = v15;

      v43 = [v8 deploymentId];
      v17 = [v8 treatmentId];
      sub_23C5680E4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_23C568BA0;
      sub_23C55EEF4();

      v19 = OUTLINED_FUNCTION_6();
      *(v18 + 32) = sub_23C55E388(v19, v20, v12);
      v21 = objc_allocWithZone(MEMORY[0x277D736B8]);
      v22 = sub_23C55EC88(2u, v5, v45, v44, v43);
    }
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v23 = sub_23C568014();
    __swift_project_value_buffer(v23, qword_280BD2F10);

    v24 = sub_23C568004();
    v25 = sub_23C5681E4();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_5();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315138;
      v28 = OUTLINED_FUNCTION_6();
      *(v26 + 4) = sub_23C5643D0(v28, v29, v30);
      OUTLINED_FUNCTION_9();
      _os_log_impl(v31, v32, v33, v34, v35, v36);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    return 0;
  }

  return v22;
}

unint64_t sub_23C55E818(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_23C5680D4();
  v7 = [v5 compatibilityVersionWithNamespaceName_];

  if (!v7)
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v8 = sub_23C568014();
    OUTLINED_FUNCTION_11(v8, qword_280BD2F10);

    v9 = sub_23C568004();
    v10 = sub_23C5681F4();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_5();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_3();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_23C5643D0(a1, a2, &v14);
      _os_log_impl(&dword_23C55B000, v9, v10, "%s doesn't exist on the device.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }
  }

  return v7 | ((v7 == 0) << 32);
}

id sub_23C55E98C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_23C5680D4();
  v7 = [v5 rolloutIdentifiersWithNamespaceName_];

  if (v7)
  {
    sub_23C567D78(v7);
    if (v8)
    {

      return v7;
    }
  }

  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v9 = sub_23C568014();
  OUTLINED_FUNCTION_11(v9, qword_280BD2F10);

  v10 = sub_23C568004();
  v11 = sub_23C5681F4();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_5();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_3();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_23C5643D0(a1, a2, &v20);
    OUTLINED_FUNCTION_7();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  return 0;
}

id sub_23C55EB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 24);
  v10 = sub_23C5680D4();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23C55EBF0;
  v14[3] = &block_descriptor;
  v11 = _Block_copy(v14);

  v12 = [v9 addUpdateHandlerForNamespaceName:v10 queue:a3 usingBlock:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_23C55EBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_23C55EC88(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_23C567F84();
  v11 = sub_23C5680D4();

  v12 = sub_23C5680D4();

  sub_23C55EEF4();
  v13 = sub_23C568174();

  v14 = [v6 initWithType:a1 date:v10 experimentId:v11 deploymentId:a5 treatmentId:v12 namespaces:v13];

  v15 = sub_23C567FC4();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v14;
}

uint64_t sub_23C55EDB8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_23C568194();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23C55EE30(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23C5680E4();

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_23C55EEF4()
{
  result = qword_27E1F8038;
  if (!qword_27E1F8038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F8038);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_23C55EF9C()
{
  result = qword_280BD2E50;
  if (!qword_280BD2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD2E50);
  }

  return result;
}

uint64_t sub_23C55F000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_23C5643D0(v2, v3, va);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTrigger(for:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(OUTLINED_FUNCTION_1_0(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_2_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalytics.cacheTrialExperiments(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v9[1] = sub_23C55F930;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTriggerFromCache(for:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(OUTLINED_FUNCTION_1_0(v0, v1, v2, v3) + 24);
  OUTLINED_FUNCTION_2_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalytics.cacheTrialExperimentIdentifiers(for:namespaces:)()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(OUTLINED_FUNCTION_1_0(v0, v1, v2, v3) + 32);
  OUTLINED_FUNCTION_2_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalytics.startRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(OUTLINED_FUNCTION_1_0(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_2_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalytics.endRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(OUTLINED_FUNCTION_1_0(v0, v1, v2, v3) + 48);
  OUTLINED_FUNCTION_2_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_0(v9);

  return v12(v11);
}

uint64_t dispatch thunk of ExperimentationAnalytics.emitTrigger(for:namespace:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 56);
  OUTLINED_FUNCTION_2_0();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  *v17 = v18;
  v17[1] = sub_23C55F83C;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C55F83C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id ExperimentationAnalyticsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23C55F9C8()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_17(v4);

  return sub_23C56110C(v3);
}

uint64_t sub_23C55FA58()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C55FB7C, 0, 0);
  }
}

id sub_23C55FB7C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *&v3[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock];
  v6 = v3;
  v7 = v4;

  [v5 lock];
  sub_23C56032C(v6, v7, v1);
  if (!v2)
  {
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    [v5 unlock];

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_38();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_38();

  return [v8 v9];
}

void sub_23C55FC84(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  [a1 lock];
  sub_23C563204(a2, a3, a4);
  [a1 unlock];
}

void *sub_23C55FD10(void *a1, void *a2, void *a3)
{
  [a1 lock];
  sub_23C560780(a2, a3, &v8);
  [a1 unlock];
  if (v3)
  {
  }

  else
  {

    a2 = v8;
  }

  return a2;
}

uint64_t sub_23C55FE38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23C55FEFC;

  return sub_23C55F9C8();
}

uint64_t sub_23C55FEFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  v8 = *(v7 + 32);
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v9 = OUTLINED_FUNCTION_6_0();
    v10(v9, v2);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_0();
    v12(v11, 0);
  }

  _Block_release(*(v2 + 32));
  OUTLINED_FUNCTION_5_0();

  return v13();
}

uint64_t sub_23C560060(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = sub_23C5681D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_23C568E28;
  v9[5] = v8;
  sub_23C563D48(0, 0, v6, &unk_23C568E38, v9);
}

uint64_t sub_23C560170()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_21();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_17(v3);
  v4 = OUTLINED_FUNCTION_15();

  return sub_23C56136C(v4, v5);
}

uint64_t sub_23C560208()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C56622C, 0, 0);
  }
}

uint64_t sub_23C56032C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID;
  swift_beginAccess();

  v7 = *(a1 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  sub_23C5654F8(a3, a2);
  *(a1 + v6) = v9;
  return swift_endAccess();
}

uint64_t sub_23C560464(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_23C568184();
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_23C560548;

  return sub_23C560170();
}

uint64_t sub_23C560548()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  v9 = *(v8 + 32);
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v10 = OUTLINED_FUNCTION_6_0();
    v11(v10, v2);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_0();
    v13(v12, 0);
  }

  _Block_release(*(v2 + 32));
  OUTLINED_FUNCTION_5_0();

  return v14();
}

uint64_t sub_23C5606D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C5606E4()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_23C55FD10(*(*(v0 + 24) + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_lock), *(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23C560780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentsForCodePathID;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_23C5651CC(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      *a3 = v10;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C568BB0;
  v13 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23C5680E4();
  *(inited + 40) = v14;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x800000023C569240;
  v15 = sub_23C5680B4();
  v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v15);
  return swift_willThrow();
}

uint64_t sub_23C5608F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23C565210(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_23C560940()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v2;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_17(v5);

  return sub_23C56110C(v3);
}

uint64_t sub_23C5609D4()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_23C560AF8()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);
  sub_23C5615D0(*(v0 + 16), *(v0 + 48), *(v0 + 24));

  OUTLINED_FUNCTION_7_0();

  return v2();
}

uint64_t sub_23C560B84(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23C560C58;

  return sub_23C560940();
}

uint64_t sub_23C560C58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  v9 = *(v8 + 40);
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v10 = OUTLINED_FUNCTION_6_0();
    v11(v10, v2);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_0();
    v13(v12, 0);
  }

  _Block_release(*(v2 + 40));
  OUTLINED_FUNCTION_5_0();

  return v14();
}

uint64_t sub_23C560DDC()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v2;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_17(v5);

  return sub_23C5606D0(v3);
}

uint64_t sub_23C560E70()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_23C560FB4(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_30();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_23C560060(a7, v12);
}

uint64_t sub_23C561038(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_23C566224;

  return sub_23C560DDC();
}

uint64_t sub_23C56110C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561120()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0[3] + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23C5611DC;
  v3 = v0[2];

  return sub_23C55CFD4(0, v3, 0x6874617065646F63, 0xEB00000000736469);
}

uint64_t sub_23C5611DC()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    v13 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_23C561300()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 40);
  type metadata accessor for Experimentation();
  v2 = OUTLINED_FUNCTION_27();
  sub_23C5672D0(v2);
  OUTLINED_FUNCTION_27();

  v3 = OUTLINED_FUNCTION_36();

  return v4(v3);
}

uint64_t sub_23C56136C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561384()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0[4] + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_23C561440;
  v3 = v0[2];
  v4 = v0[3];

  return sub_23C55DD9C(0, v3, v4, 0x6874617065646F63, 0xEB00000000736469);
}

uint64_t sub_23C561440()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_5_0();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_8_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_23C561564()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 48);
  type metadata accessor for Experimentation();
  v2 = OUTLINED_FUNCTION_27();
  sub_23C5672D0(v2);
  OUTLINED_FUNCTION_27();

  v3 = OUTLINED_FUNCTION_36();

  return v4(v3);
}

void sub_23C5615D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *(v3 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_instrumentation);
    v11 = a3;
    v5 = OUTLINED_FUNCTION_15();
    sub_23C5668D0(v5, v6, v7);
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_instrumentation);
    v9 = OUTLINED_FUNCTION_15();
    sub_23C566508(v9, v10);
  }
}

uint64_t sub_23C561660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C56167C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[8];
  v2 = v0[9];
  v3 = *(v0[11] + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation);
  v4 = sub_23C55E404();
  if (v4)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[7];
    type metadata accessor for Experimentation();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C568BA0;
    *(inited + 32) = v4;
    v9 = v4;
    v10 = sub_23C5672D0(inited);
    swift_setDeallocating();
    sub_23C5641EC();
    sub_23C5615D0(v7, v10, v6);
  }

  OUTLINED_FUNCTION_7_0();

  return v11();
}

uint64_t sub_23C561848(void *a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = sub_23C5680E4();
  v11 = v10;
  v5[6] = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_23C561948;

  return sub_23C561660(v12, v9, v11, a3);
}

uint64_t sub_23C561948()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  v6 = *(v2 + 32);
  v7 = *(v2 + 24);
  v8 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_35();
  v10 = *(v9 + 40);
  if (v0)
  {
    sub_23C567F54();
    OUTLINED_FUNCTION_37();
    v11 = OUTLINED_FUNCTION_6_0();
    v12(v11, v2);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6_0();
    v14(v13, 0);
  }

  _Block_release(*(v2 + 40));
  OUTLINED_FUNCTION_5_0();

  return v15();
}

uint64_t sub_23C561AE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C561B00()
{
  v27 = v0;
  if (qword_280BD2E68 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_23C568014();
  __swift_project_value_buffer(v3, qword_280BD2F10);

  v4 = sub_23C568004();
  v5 = sub_23C5681E4();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    OUTLINED_FUNCTION_5();
    swift_slowAlloc();
    OUTLINED_FUNCTION_29();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v1 = 136315138;
    *(v1 + 4) = sub_23C5643D0(v7, v6, &v26);
    OUTLINED_FUNCTION_28();
    _os_log_impl(v9, v10, v11, v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  sub_23C562330();
  v18 = v0[3];
  v19 = v0[4];
  v20 = v0[2];
  sub_23C561CF4();
  v21 = sub_23C568004();
  v22 = sub_23C5681E4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_23C55B000, v21, v22, "Finished starting tracking for namespace", v23, 2u);
    OUTLINED_FUNCTION_1();
    MEMORY[0x23EED6180]();
  }

  OUTLINED_FUNCTION_7_0();

  return v24();
}

uint64_t sub_23C561CF4()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = OUTLINED_FUNCTION_15();
  sub_23C5620B8(v1, v2, v3, v0);
}

void sub_23C561D74(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 namespaceName];
    sub_23C5680E4();

    sub_23C562330();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      swift_once();
    }

    v5 = sub_23C568014();
    __swift_project_value_buffer(v5, qword_280BD2F10);
    v3 = sub_23C568004();
    v6 = sub_23C5681F4();
    if (os_log_type_enabled(v3, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23C55B000, v3, v6, "ExperimentationAnalyticsManager object is not retained in memory of the process", v7, 2u);
      MEMORY[0x23EED6180](v7, -1, -1);
    }
  }
}

void sub_23C5620B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock];
  v10 = v4;

  [v9 lock];
  sub_23C562180(v10, a1, a2, a3, a4);
  [v9 unlock];
}

uint64_t sub_23C562180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace;
  swift_beginAccess();
  v10 = *(a1 + v9);

  v11 = sub_23C5608F0(a2, a3, v10);
  v13 = v12;

  if (!v11)
  {
    v16 = *(a1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation);
    v17 = sub_23C55EB04(a2, a3, *(a1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_queue), a4, a5);
    swift_beginAccess();
    swift_unknownObjectRetain();
    v18 = *(a1 + v9);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + v9);
    sub_23C565634(v17, 1, a2, a3);
    *(a1 + v9) = v21;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  if (!__OFADD__(v13, 1))
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = *(a1 + v9);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v9);
    sub_23C565634(v11, v13 + 1, a2, a3);
    *(a1 + v9) = v20;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_23C562330()
{
  [*(*(v0 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation) + 24) refresh];
  v3 = OUTLINED_FUNCTION_6();
  v5 = sub_23C5625D4(v3, v4);
  if (!v1)
  {
    v6 = v5;
    if (v5)
    {
      v7 = OUTLINED_FUNCTION_6();
      sub_23C562820(v7, v8, v6);
      if (v9)
      {
        v22 = OUTLINED_FUNCTION_6();
        sub_23C5628DC(v22, v23, v6);

        return;
      }

      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v24 = sub_23C568014();
      __swift_project_value_buffer(v24, qword_280BD2F10);

      v11 = sub_23C568004();
      v25 = sub_23C5681F4();

      if (os_log_type_enabled(v11, v25))
      {
        OUTLINED_FUNCTION_5();
        v26 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v26 = 136315138;
        v27 = OUTLINED_FUNCTION_6();
        *(v26 + 4) = sub_23C5643D0(v27, v28, v29);
        _os_log_impl(&dword_23C55B000, v11, v25, "No update to %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }
    }

    else
    {
      if (qword_280BD2E68 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v10 = sub_23C568014();
      __swift_project_value_buffer(v10, qword_280BD2F10);

      v11 = sub_23C568004();
      v12 = sub_23C568204();

      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_5();
        swift_slowAlloc();
        OUTLINED_FUNCTION_29();
        v30 = swift_slowAlloc();
        *v2 = 136315138;
        v13 = OUTLINED_FUNCTION_6();
        *(v2 + 4) = sub_23C5643D0(v13, v14, v15);
        OUTLINED_FUNCTION_28();
        _os_log_impl(v16, v17, v18, v19, v20, v21);
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
        OUTLINED_FUNCTION_1();
        MEMORY[0x23EED6180]();
      }
    }
  }
}

id sub_23C5625D4(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation);
  v5 = sub_23C55E818(a1, a2);
  if ((v5 & 0x100000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8120, &qword_23C568BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C568BB0;
    v16 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23C5680E4();
    *(inited + 40) = v17;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x800000023C568FA0;
    v18 = sub_23C5680B4();
    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23C563A7C(0xD000000000000027, 0x800000023C568F70, -1, v18);
    swift_willThrow();
  }

  else
  {
    v6 = v5;
    v7 = OUTLINED_FUNCTION_6();
    v9 = sub_23C55E98C(v7, v8);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for Experimentation();
      v11 = OUTLINED_FUNCTION_6();
      v13 = sub_23C567418(v11, v12, v10, v6);

      return v13;
    }

    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v20 = sub_23C568014();
    __swift_project_value_buffer(v20, qword_280BD2F10);

    v21 = sub_23C568004();
    v22 = sub_23C568204();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_29();
      v32 = swift_slowAlloc();
      *v3 = 136315138;
      v23 = OUTLINED_FUNCTION_6();
      *(v3 + 4) = sub_23C5643D0(v23, v24, v25);
      OUTLINED_FUNCTION_28();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }
  }

  return 0;
}

uint64_t sub_23C562820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23C562BE4(a3);
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_23C56299C();
    if (v9)
    {
      if (v6 == v8 && v9 == v7)
      {

LABEL_10:

        return OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_6();
      v11 = sub_23C5682F4();

      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  return OUTLINED_FUNCTION_6();
}

void sub_23C5628DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_instrumentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23C568BA0;
  *(v6 + 32) = a3;
  v7 = a3;
  sub_23C566DD0(v6);

  sub_23C562B4C();
}

uint64_t sub_23C56299C()
{
  sub_23C5630E4();
  v1 = *(v0 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults);
  v2 = sub_23C5680D4();
  v3 = [v1 stringForKey_];

  if (v3)
  {

    v4 = sub_23C5680E4();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v5 = sub_23C568014();
    __swift_project_value_buffer(v5, qword_280BD2F10);
    OUTLINED_FUNCTION_27();

    v6 = sub_23C568004();
    v7 = sub_23C5681F4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_5();
      v8 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v8 = 136315138;
      v9 = OUTLINED_FUNCTION_15();
      v12 = sub_23C5643D0(v9, v10, v11);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_23C55B000, v6, v7, "Couldn't find %s key in UserDefaults", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
      OUTLINED_FUNCTION_1();
      MEMORY[0x23EED6180]();
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void sub_23C562B4C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_userDefaults);
  v2 = sub_23C5680D4();
  OUTLINED_FUNCTION_15();
  sub_23C5630E4();
  v3 = sub_23C5680D4();

  [v1 setObject:v2 forKey:v3];
}

void *sub_23C562BE4(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = sub_23C568094();
  v4 = OUTLINED_FUNCTION_23(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22();
  v11 = v10 - v9;
  v12 = sub_23C568084();
  v13 = OUTLINED_FUNCTION_23(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v55 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v47 - v20;
  v22 = objc_opt_self();
  v56 = 0;
  v23 = [v22 archivedDataWithRootObject:a1 requiringSecureCoding:0 error:&v56];
  v24 = v56;
  if (v23)
  {
    v25 = sub_23C567F74();
    v51 = v21;
    v26 = v6;
    v27 = v25;
    v54 = v1;
    v29 = v28;

    sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540]);
    sub_23C568074();
    sub_23C5658B4(v27, v29);
    v30 = v54;
    sub_23C565818(v27, v29);
    v47[1] = v30;
    v48 = v29;
    v49 = v27;
    sub_23C56590C(v27, v29);
    v31 = v51;
    sub_23C568064();
    (*(v26 + 8))(v11, v3);
    (*(v15 + 16))(v55, v31, v12);
    sub_23C55CC14(qword_280BD2D28, MEMORY[0x277CC5290]);
    v50 = v12;
    sub_23C568154();
    v32 = v57;
    v55 = v56;
    v54 = *(v56 + 2);
    if (v57 == v54)
    {
      v33 = MEMORY[0x277D84F90];
    }

    else
    {
      v53 = v55 + 32;
      v33 = MEMORY[0x277D84F90];
      v52 = xmmword_23C568BB0;
      v37 = v57;
      do
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
        }

        if (v37 >= *(v55 + 2))
        {
          goto LABEL_17;
        }

        v38 = v15;
        v39 = v53[v37];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8100, &qword_23C568DE0);
        v40 = swift_allocObject();
        *(v40 + 16) = v52;
        *(v40 + 56) = MEMORY[0x277D84B78];
        *(v40 + 64) = MEMORY[0x277D84BC0];
        *(v40 + 32) = v39;
        v41 = sub_23C5680F4();
        v43 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_23C564234(0, *(v33 + 2) + 1, 1, v33);
        }

        v45 = *(v33 + 2);
        v44 = *(v33 + 3);
        if (v45 >= v44 >> 1)
        {
          v33 = sub_23C564234((v44 > 1), v45 + 1, 1, v33);
        }

        ++v37;
        *(v33 + 2) = v45 + 1;
        v46 = &v33[16 * v45];
        *(v46 + 4) = v41;
        *(v46 + 5) = v43;
        v15 = v38;
      }

      while (v54 != v37);
    }

    (*(v15 + 8))(v31, v50);

    v56 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8108, &qword_23C568DE8);
    sub_23C55CD48(&unk_280BD2D10, &unk_27E1F8108, &qword_23C568DE8);
    v34 = sub_23C5680C4();
    sub_23C56590C(v49, v48);
  }

  else
  {
    v34 = v24;
    sub_23C567F64();

    swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_23C563130(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_23C563148()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_23C5631A4();
  OUTLINED_FUNCTION_7_0();

  return v4();
}

void sub_23C5631A4()
{
  OUTLINED_FUNCTION_21();
  v3 = *&v1[OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutRegistrationLock];
  v4 = v1;
  OUTLINED_FUNCTION_27();

  sub_23C55FC84(v3, v1, v2, v0);
}

void sub_23C563204(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_rolloutTrackingInfoForNamespace;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_23C5608F0(a2, a3, v7);
  v10 = v9;

  if (v8)
  {
    if (!__OFSUB__(v10, 1))
    {
      if (v10 == 1)
      {
        [*(*(a1 + OBJC_IVAR___AIMLExperimentationAnalyticsManagerInternal_experimentation) + 24) removeUpdateHandlerForToken_];
        swift_beginAccess();
        sub_23C565414(a2, a3);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        v11 = *(a1 + v6);
        swift_isUniquelyReferenced_nonNull_native();
        v17 = *(a1 + v6);
        sub_23C565634(v8, v10 - 1, a2, a3);
        *(a1 + v6) = v17;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_280BD2E68 != -1)
  {
LABEL_12:
    swift_once();
  }

  v12 = sub_23C568014();
  __swift_project_value_buffer(v12, qword_280BD2F10);

  v13 = sub_23C568004();
  v14 = sub_23C5681F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23C5643D0(a2, a3, &v18);
    _os_log_impl(&dword_23C55B000, v13, v14, "%s is not being tracked", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EED6180](v16, -1, -1);
    MEMORY[0x23EED6180](v15, -1, -1);
  }
}

id ExperimentationAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentationAnalyticsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C5634B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C566220;

  return sub_23C560940();
}

uint64_t sub_23C56355C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C566220;

  return sub_23C55F9C8();
}

uint64_t sub_23C5635F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C566220;

  return sub_23C560DDC();
}

uint64_t sub_23C56369C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C566220;

  return sub_23C560170();
}

uint64_t sub_23C563744(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C566220;

  return sub_23C561AE8(a1, a2);
}

uint64_t sub_23C5637EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C566220;

  return sub_23C563130(a1, a2);
}

uint64_t sub_23C563894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23C563954;

  return sub_23C561660(a1, a2, a3, a4);
}

uint64_t sub_23C563954()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_23C563A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23C5680D4();

  if (a4)
  {
    v8 = sub_23C5680A4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_23C563B2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23C563B78(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23C566220;

  return v7();
}

uint64_t sub_23C563C60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23C563954;

  return v8();
}

uint64_t sub_23C563D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_23C565D7C(a3, v24 - v10);
  v12 = sub_23C5681D4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23C5661C0(v11, &qword_27E1F8130, &qword_23C568E18);
  }

  else
  {
    sub_23C5681C4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_23C5681B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23C568114() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_23C5661C0(a3, &qword_27E1F8130, &qword_23C568E18);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C5661C0(a3, &qword_27E1F8130, &qword_23C568E18);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23C564014(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C56410C;

  return v7(a1);
}

uint64_t sub_23C56410C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_7_0();

  return v5();
}

uint64_t sub_23C5641EC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

char *sub_23C564234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8118, &unk_23C568DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_23C56433C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23C564374(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23C5643D0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23C5643D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C564D20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_23C56615C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperiments(for:)()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v6 = *(v5 + 200);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_17(v9);

  return v12(v2);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.cacheTrialExperimentIdentifiers(for:namespaces:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v2 = *(v1 + 208);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTrigger(for:requestID:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v2 = *(v1 + 224);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTriggerFromCache(for:requestID:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v2 = *(v1 + 232);
  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.emitTrigger(for:namespace:requestID:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v17 = (*(v11 + 264) + **(v11 + 264));
  v12 = *(*(v11 + 264) + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_17(v14);

  return v17(v8, v6, v4, v2);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.startRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v9 = *(v1 + 272) + **(v1 + 272);
  v2 = *(*(v1 + 272) + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ExperimentationAnalyticsManager.endRolloutUpdateTracking(for:)()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12_0();
  v0 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_25();
  v9 = *(v1 + 360) + **(v1 + 360);
  v2 = *(*(v1 + 360) + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_1(v4);

  return v7(v6);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C564C94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23C564CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23C564D20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C564E20(a5, a6);
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
    result = sub_23C5682B4();
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

uint64_t sub_23C564E20(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C564E6C(a1, a2);
  sub_23C564F84(&unk_284F2A340);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23C564E6C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_23C568144())
  {
    result = sub_23C565068(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23C568294();
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

        v9 = (result + 32);
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
          result = sub_23C5682B4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C564F84(uint64_t result)
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

    result = sub_23C5650D8(result, v8, 1, v3);
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

void *sub_23C565068(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8138, &qword_23C568E98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_23C5650D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8138, &qword_23C568E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23C5651CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23C568244();

  return sub_23C565288(a1, v5);
}

unint64_t sub_23C565210(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23C568314();
  sub_23C568124();
  v6 = sub_23C568324();

  return sub_23C565360(a1, a2, v6);
}

unint64_t sub_23C565288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_23C55CD08(0, &qword_280BD2E48, 0x277CCAD78);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_23C568254();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_23C565360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23C5682F4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23C565414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_23C565210(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8128, &qword_23C568E00);
  sub_23C5682C4();
  v10 = *(*(v15 + 48) + 16 * v7 + 8);

  v11 = (*(v15 + 56) + 16 * v7);
  v12 = *v11;
  v13 = v11[1];
  sub_23C5682D4();
  *v3 = v15;
  return v12;
}

id sub_23C5654F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23C5651CC(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8150, &qword_23C568EA8);
  if ((sub_23C5682C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_23C5651CC(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_23C55CD08(0, &qword_280BD2E48, 0x277CCAD78);
    result = sub_23C568304();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v8);
    *(v14 + 8 * v8) = a1;
  }

  else
  {
    sub_23C565788(v8, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_23C565634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C565210(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8128, &qword_23C568E00);
  if ((sub_23C5682C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_23C565210(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_23C568304();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = *v19;
    *v19 = a1;
    v19[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_23C5657CC(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_23C565788(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23C5657CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_23C565818(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_23C565A3C(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_23C565968();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_23C5658B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23C56590C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23C565968()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23C568094();
  sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540]);
  result = sub_23C568054();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C565A3C(uint64_t a1, uint64_t a2)
{
  result = sub_23C567F24();
  if (!result || (result = sub_23C567F44(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23C567F34();
      sub_23C568094();
      sub_23C55CC14(&qword_280BD2D20, MEMORY[0x277CC5540]);
      return sub_23C568054();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C565B1C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  *v7 = v8;
  v7[1] = sub_23C563954;
  OUTLINED_FUNCTION_33();

  return v9();
}

void sub_23C565BF8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_30();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_23C565CC4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  *v6 = v7;
  v6[1] = sub_23C566220;
  OUTLINED_FUNCTION_33();

  return v8();
}

uint64_t sub_23C565D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8130, &qword_23C568E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C565E14()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26(v4);

  return v7(v6);
}

void sub_23C565EAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

void sub_23C565F40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t objectdestroy_49Tm()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_30();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_23C56601C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_1(v1);
  OUTLINED_FUNCTION_38();

  __asm { BR              X4 }
}

uint64_t sub_23C5660B0()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  *v5 = v6;
  v5[1] = sub_23C566220;

  return sub_23C55FE38(v1, v2, v3);
}

uint64_t sub_23C56615C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C5661C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_34()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void OUTLINED_FUNCTION_37()
{
}

uint64_t sub_23C566430()
{
  v0 = sub_23C568014();
  __swift_allocate_value_buffer(v0, qword_280BD2F10);
  __swift_project_value_buffer(v0, qword_280BD2F10);
  sub_23C5664C4();
  sub_23C568264();
  return sub_23C568024();
}

unint64_t sub_23C5664C4()
{
  result = qword_280BD2E58;
  if (!qword_280BD2E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD2E58);
  }

  return result;
}

void sub_23C566508(unint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_23C567FF4();
  v10 = OUTLINED_FUNCTION_3_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  if (sub_23C55DD78(a1))
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D57260]) init];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
      sub_23C567064(a1, v23, &qword_27E1F8178, 0x277D57228, &selRef_setAllocations_);
    }

    v24 = [a2 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v8);
    if (v25)
    {
      sub_23C5670E0(v8);
    }

    else
    {
      (*(v12 + 32))(v20, v8, v2);
      if (v22)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        (*(v12 + 16))(v17, v20, v2);
        v33 = v22;
        v34 = sub_23C5675C4(v17);
        [v33 setCodepathId_];
      }

      (*(v12 + 8))(v20, v2);
    }

    v35 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v35 setExperimentTriggered_];
    sub_23C566F8C(v35);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v36 = sub_23C568014();
    v37 = OUTLINED_FUNCTION_13_0(v36, qword_280BD2F10);
    v38 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v38))
    {
      v39 = OUTLINED_FUNCTION_4_2();
      *v39 = 0;
      OUTLINED_FUNCTION_10_0(&dword_23C55B000, v40, v41, "experimentTriggered event emitted");
      MEMORY[0x23EED6180](v39, -1, -1);
    }

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v26 = sub_23C568014();
    v43 = OUTLINED_FUNCTION_13_0(v26, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(v43, v27))
    {
      v28 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v28);
      OUTLINED_FUNCTION_11_1(&dword_23C55B000, v29, v30, "experimentTriggered event no emitted. Trial experiments empty.");
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23C5668D0(unint64_t a1, void *a2, NSObject *a3)
{
  v63 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_2();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = sub_23C567FF4();
  v16 = OUTLINED_FUNCTION_3_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v60 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v60 - v28;
  if (sub_23C55DD78(a1))
  {
    v61 = v23;
    v62 = v3;
    v30 = [objc_allocWithZone(MEMORY[0x277D57268]) init];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      sub_23C567064(a1, v32, &qword_27E1F8178, 0x277D57228, &selRef_setAllocations_);
    }

    v33 = [a2 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v14);
    if (v34)
    {
      sub_23C5670E0(v14);
      v35 = v31;
    }

    else
    {
      (*(v18 + 32))(v29, v14, v4);
      v35 = v31;
      if (v31)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        v43 = OUTLINED_FUNCTION_8_1();
        v44(v43, v29, v4);
        v45 = v31;
        v46 = sub_23C5675C4(v27);
        [v45 setCodepathId_];
      }

      (*(v18 + 8))(v29, v4);
    }

    v47 = [v63 UUIDString];
    sub_23C5680E4();

    sub_23C567FD4();

    OUTLINED_FUNCTION_14_0(v11);
    if (v34)
    {
      sub_23C5670E0(v11);
    }

    else
    {
      v48 = v61;
      (*(v18 + 32))(v61, v11, v4);
      if (v35)
      {
        sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
        v49 = OUTLINED_FUNCTION_8_1();
        v50(v49, v48, v4);
        v51 = v35;
        v52 = sub_23C5675C4(v27);
        [v51 setRequestId_];
      }

      (*(v18 + 8))(v48, v4);
    }

    v53 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v53 setSiriRequestExperimentTriggered_];
    sub_23C566F8C(v53);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v54 = sub_23C568014();
    v55 = OUTLINED_FUNCTION_13_0(v54, qword_280BD2F10);
    v56 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v56))
    {
      v57 = OUTLINED_FUNCTION_4_2();
      *v57 = 0;
      OUTLINED_FUNCTION_10_0(&dword_23C55B000, v58, v59, "SiriRequestExperimentTriggered event emitted.");
      MEMORY[0x23EED6180](v57, -1, -1);
    }

    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v36 = sub_23C568014();
    v63 = OUTLINED_FUNCTION_13_0(v36, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(v63, v37))
    {
      v38 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v38);
      OUTLINED_FUNCTION_11_1(&dword_23C55B000, v39, v40, "SiriRequestExperimentTriggered event no emitted. Trial experiments empty.");
      OUTLINED_FUNCTION_1_2();
    }

    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23C566DD0(unint64_t a1)
{
  if (sub_23C55DD78(a1))
  {
    oslog = [objc_allocWithZone(MEMORY[0x277D57270]) init];
    if (oslog)
    {
      sub_23C567064(a1, oslog, &qword_27E1F8160, 0x277D57230, &selRef_setRollouts_);
    }

    v2 = [objc_allocWithZone(MEMORY[0x277D57290]) init];
    [v2 setRolloutChangeSnapshot_];
    sub_23C566F8C(v2);
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v3 = sub_23C568014();
    v4 = OUTLINED_FUNCTION_13_0(v3, qword_280BD2F10);
    v5 = sub_23C5681E4();
    if (OUTLINED_FUNCTION_5_1(v5))
    {
      v6 = OUTLINED_FUNCTION_4_2();
      *v6 = 0;
      _os_log_impl(&dword_23C55B000, v4, OS_LOG_TYPE_DEFAULT, "RolloutChangeSnapshot event emitted", v6, 2u);
      MEMORY[0x23EED6180](v6, -1, -1);
    }
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v7 = sub_23C568014();
    oslog = OUTLINED_FUNCTION_13_0(v7, qword_280BD2F10);
    sub_23C5681E4();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v9);
      OUTLINED_FUNCTION_12_1(&dword_23C55B000, v10, v11, "RolloutChangeSnapshot event not emitted. Trial rollouts empty.", v12, v13, v14, v15, v16, oslog);
      OUTLINED_FUNCTION_1_2();
    }
  }
}

void sub_23C566F8C(uint64_t a1)
{
  if (a1)
  {
    v3 = *(v1 + 16);

    [v3 emitMessage_];
  }

  else
  {
    if (qword_280BD2E68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v4 = sub_23C568014();
    oslog = OUTLINED_FUNCTION_13_0(v4, qword_280BD2F10);
    sub_23C568204();
    OUTLINED_FUNCTION_6_1();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_12_1(&dword_23C55B000, v7, v8, "EXPSiriSchemaEXPSiriClientEvent nil", v9, v10, v11, v12, v13, oslog);
      OUTLINED_FUNCTION_1_2();
    }
  }
}

void sub_23C567064(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_23C55CD08(0, a3, a4);
  v7 = sub_23C568174();
  [a2 *a5];
}

uint64_t sub_23C5670E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_2()
{

  JUMPOUT(0x23EED6180);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_5_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_12_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_23C568004();
}

uint64_t sub_23C5672D0(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = sub_23C5682E4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  result = type metadata accessor for Experimentation();
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED5CC0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = sub_23C567660(v6);
      if (v8)
      {
        v9 = v8;
        MEMORY[0x23EED5B80]();
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23C568194();
        }

        sub_23C5681A4();

        v5 = v10;
      }

      else
      {
      }

      ++v4;
    }

    while (v2 != v4);
    return v5;
  }

  __break(1u);
  return result;
}

id sub_23C567418(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D57230]) init];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [a3 rolloutId];
    v12 = sub_23C5680E4();
    v14 = v13;

    sub_23C567EB8(v12, v14, v10, &selRef_setRolloutId_);
    v15 = v10;
    sub_23C567D78(a3);
    if (v16)
    {
      v17 = sub_23C5680D4();
    }

    else
    {
      v17 = 0;
    }

    [v15 setRampId_];

    v18 = v15;
    result = [a3 deploymentId];
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    [v18 setDeploymentId_];
  }

  type metadata accessor for Experimentation();
  v20 = sub_23C567C80(a1, a2, a3, a4);
  if (v20)
  {
    v21 = v20;
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F8090, &qword_23C568BC8);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23C568BA0;
      *(v22 + 32) = v21;
      sub_23C567E34(v22, v9);
    }

    else
    {
    }
  }

  return v9;
}

id sub_23C5675C4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23C567FE4();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_23C567FF4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_23C567660(id a1)
{
  v2 = sub_23C567FC4();
  v3 = OUTLINED_FUNCTION_23(v2);
  v66 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F8168, &qword_23C568F08);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v64 - v10;
  v12 = sub_23C567FF4();
  v13 = OUTLINED_FUNCTION_23(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D57228]) init];
  v24 = v23;
  v67 = a1;
  if (v23)
  {
    v64 = v23;
    v25 = v11;
    v26 = v12;
    v27 = v20;
    v28 = v22;
    v29 = v15;
    v30 = v2;
    v31 = [v67 experimentId];
    v32 = sub_23C5680E4();
    v34 = v33;

    v2 = v30;
    v15 = v29;
    v22 = v28;
    v20 = v27;
    v12 = v26;
    v11 = v25;
    v35 = v32;
    v36 = v64;
    sub_23C567EB8(v35, v34, v64, &selRef_setExperimentId_);

    a1 = v67;
  }

  v37 = [a1 treatmentId];
  sub_23C5680E4();

  sub_23C567FD4();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23C5670E0(v11);
    v38 = v67;
    v39 = v24;
    if (!v24)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  (*(v15 + 32))(v22, v11, v12);
  v39 = v24;
  if (v24)
  {
    sub_23C55CD08(0, &qword_27E1F8170, 0x277D5AC78);
    (*(v15 + 16))(v20, v22, v12);
    v40 = v24;
    v41 = sub_23C5675C4(v20);
    [v40 setTreatmentId_];
  }

  (*(v15 + 8))(v22, v12);
  v38 = v67;
  if (v24)
  {
LABEL_9:
    v42 = v39;
    [v42 setDeploymentId_];

    v43 = v42;
    v44 = [v38 type];
    if (v44 - 1 < 3)
    {
      v45 = (v44 - 1) + 1;
    }

    else
    {
      v45 = 0;
    }

    [v43 setAllocationStatus_];
  }

LABEL_13:
  v46 = [v38 namespaces];
  sub_23C55CD08(0, &qword_27E1F8038, 0x277D73808);
  v47 = sub_23C568184();

  v48 = sub_23C567148(v47);

  if (!v48)
  {
LABEL_21:
    if (v39)
    {
      goto LABEL_22;
    }

    return v39;
  }

  v49 = [v38 namespaces];
  v50 = sub_23C568184();

  result = sub_23C567148(v50);
  if (!result)
  {

    goto LABEL_21;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v50 + 32); ; i = MEMORY[0x23EED5CC0](0, v50))
    {
      v53 = i;

      if (!v39)
      {
LABEL_26:

        return v39;
      }

      v54 = v39;
      v55 = [v53 name];
      v56 = sub_23C5680E4();
      v58 = v57;

      sub_23C567EB8(v56, v58, v54, &selRef_setExperimentNamespace_);
      v59 = v54;
      [v59 setCompatibilityVersion_];

LABEL_22:
      v53 = v39;
      v60 = [v38 date];
      v50 = v65;
      sub_23C567FB4();

      sub_23C567FA4();
      v62 = v61;
      (*(v66 + 8))(v50, v2);
      v63 = v62 * 1000.0;
      if (COERCE__INT64(fabs(v62 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v63 <= -1.0)
      {
        goto LABEL_29;
      }

      if (v63 < 1.84467441e19)
      {
        [v53 setLastUpdatedAtInMs_];
        goto LABEL_26;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C567C6C(char a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_23C567C80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D57238]) init];
  if (v8)
  {
    sub_23C567DDC(a1, a2, v8);
    v9 = v8;
    v10 = [a3 factorPackId];
    v11 = sub_23C5680E4();
    v13 = v12;

    sub_23C567EB8(v11, v13, v9, &selRef_setFactorPackId_);
  }

  [v8 setCompatibilityVersion_];
  return v8;
}

unint64_t sub_23C567D54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C567D78(void *a1)
{
  v1 = [a1 rampId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23C5680E4();

  return v3;
}

void sub_23C567DDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23C5680D4();
  [a3 setName_];
}

void sub_23C567E34(uint64_t a1, void *a2)
{
  sub_23C55CD08(0, &unk_280BD2D00, 0x277D57238);
  v3 = sub_23C568174();

  [a2 setNamespaces_];
}

void sub_23C567EB8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_23C5680D4();

  [a3 *a4];
}