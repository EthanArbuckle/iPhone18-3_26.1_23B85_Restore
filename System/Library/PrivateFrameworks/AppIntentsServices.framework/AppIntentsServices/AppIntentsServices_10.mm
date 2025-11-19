void sub_221A5F804(void *a1, void *a2, uint64_t *a3)
{
  if (*(v3 + *a2))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v7 = sub_221BCCD88();
    v8 = OUTLINED_FUNCTION_226_0(v7, qword_27CFDEDB0);
    v9 = a1;
    oslog = OUTLINED_FUNCTION_222_1();
    v10 = sub_221BCDA98();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_103();
      v12 = OUTLINED_FUNCTION_127_3();
      v13 = OUTLINED_FUNCTION_68();
      *v11 = 136315395;
      v14 = *a3;
      v15 = sub_221BCC558();
      OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
      OUTLINED_FUNCTION_193_1();
      sub_221BCE168();
      OUTLINED_FUNCTION_183();

      v16 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v16, v17, v18);
      OUTLINED_FUNCTION_66_2();

      *(v11 + 4) = v15;
      *(v11 + 12) = 2117;
      *(v11 + 14) = v4;
      *v12 = v4;
      v19 = v4;
      v20 = "[%s] Received choice request %{sensitive}@";
LABEL_10:
      _os_log_impl(&dword_221989000, oslog, v10, v20, v11, 0x16u);
      sub_2219A1CC8(v12, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      return;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v21 = sub_221BCCD88();
    v8 = OUTLINED_FUNCTION_226_0(v21, qword_27CFDEDB0);
    v22 = a1;
    oslog = OUTLINED_FUNCTION_222_1();
    v10 = sub_221BCDA98();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_103();
      v12 = OUTLINED_FUNCTION_127_3();
      v13 = OUTLINED_FUNCTION_68();
      *v11 = 136315395;
      v23 = *a3;
      v24 = sub_221BCC558();
      OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
      OUTLINED_FUNCTION_193_1();
      sub_221BCE168();
      OUTLINED_FUNCTION_183();

      v25 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v25, v26, v27);
      OUTLINED_FUNCTION_66_2();

      *(v11 + 4) = v24;
      *(v11 + 12) = 2113;
      *(v11 + 14) = v4;
      *v12 = v4;
      v28 = v4;
      v20 = "[%s] Received choice request %{private}@";
      goto LABEL_10;
    }
  }
}

uint64_t sub_221A5FE8C()
{
  OUTLINED_FUNCTION_1_5();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_221BCC558();
  v1[33] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[34] = v5;
  v7 = *(v6 + 64);
  v1[35] = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_221A5FF34()
{
  v90 = v1;
  v3 = v1[31];
  v4 = *(v1[32] + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_actionMetadata);
  v5 = OUTLINED_FUNCTION_66_2();
  v6 = sub_2219AD17C(v5);
  v1[36] = v6;

  if (!v6)
  {
    v13 = v1[30];
    v14 = [v1[31] parameterName];
    sub_221BCD388();
    OUTLINED_FUNCTION_92_3();

    sub_2219ACADC();
    v15 = OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_25_7(v15, v16);
    OUTLINED_FUNCTION_168_1();
    v17 = OUTLINED_FUNCTION_91_3();
    [v17 v18];

    type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
    v19 = OUTLINED_FUNCTION_15_9();
    goto LABEL_25;
  }

  v7 = v1[31];
  OUTLINED_FUNCTION_129_2(v1[32]);
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;
  v9 = v7;

  os_unfair_lock_unlock(v6);
  v10 = [v9 dialog];
  v1[37] = v10;
  if (v10)
  {
    v11 = swift_task_alloc();
    v1[38] = v11;
    *v11 = v1;
    OUTLINED_FUNCTION_57_1(v11);
    OUTLINED_FUNCTION_141_1();

    sub_22199B0DC();
    return;
  }

  v23 = v1[35];
  v24 = v1[36];
  v25 = v1[33];
  v27 = v1[31];
  v26 = v1[32];
  OUTLINED_FUNCTION_111_1(v1[34]);
  v28();
  v29 = OUTLINED_FUNCTION_14_5();
  sub_2219F6C8C(v29, v30, v31);
  v32 = v24;
  v33 = [v27 parameterName];
  v34 = sub_221BCD388();

  v35 = *(v26 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
  v82 = v26 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment;
  __swift_project_boxed_opaque_existential_0((v26 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment), *(v26 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24));
  v36 = OUTLINED_FUNCTION_22_8();
  v37(v36);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_186_0(&type metadata for AnyIntentParameterMetadata, v78, v80, v82, v1);
  OUTLINED_FUNCTION_49();
  v84[25] = swift_allocObject();
  v38 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_205_0(v38, v39, v40);
  v41 = [v27 providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  OUTLINED_FUNCTION_25_1();
  v42 = sub_221BCD668();

  sub_2219A69A0(v42);
  OUTLINED_FUNCTION_148_1();
  v81 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v88 == v35)
    {
      OUTLINED_FUNCTION_215_0();

      v67 = OUTLINED_FUNCTION_14_5();
      sub_2219F6D20(v67, v68, v69);
      v1[18] = 0;
      *(v1 + 7) = 0u;
      *(v1 + 8) = 0u;
      sub_22198B358((v1 + 25), (v1 + 19));
      v1[24] = v81;
      v70 = v32[4];
      v71 = OUTLINED_FUNCTION_70();
      v72(v71);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
      v74 = OUTLINED_FUNCTION_198_1(v73);
      memcpy(v74, v1 + 14, 0x58uLL);
      type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
      OUTLINED_FUNCTION_66_2();
      OUTLINED_FUNCTION_218_1();
      v19 = OUTLINED_FUNCTION_43_6();
LABEL_25:
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      v75 = v1[35];

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_141_1();

      __asm { BRAA            X1, X16 }
    }

    if (v86)
    {
      v44 = MEMORY[0x223DA3BF0](v35, v87);
    }

    else
    {
      OUTLINED_FUNCTION_183_1(v85);
      if (v43)
      {
        goto LABEL_29;
      }

      v44 = *(v87 + 8 * v35 + 32);
    }

    v34 = v44;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v45 = [v44 displayRepresentation];
    if (v45)
    {
      v53 = OUTLINED_FUNCTION_174_1(v45, v46, v47, v48, v49, v50, v51, v52, v79, v81, v83);
      v54 = OUTLINED_FUNCTION_118_0();
      v55 = (v32)(v54);
      v1 = v84;
      sub_221B85444(v55, v56);
      OUTLINED_FUNCTION_75();

      sub_221B856C8(v53, v84 + 2);
      v84[12] = v34;
      v84[13] = v35;

      v34 = v53;
    }

    else
    {
      OUTLINED_FUNCTION_179_0();
    }

    if (v1[3])
    {
      memcpy(__dst, v1 + 2, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v81 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_177_1();
      if (v43)
      {
        OUTLINED_FUNCTION_119_0(v65);
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_106_2(v57, v58, v59, v60, v61, v62, v63, v64, v79, v81, v83, v84, v35 + 1, v85, v86, v87, v88, __dst[0]);
    }

    else
    {
      sub_2219A1CC8((v1 + 2), &unk_27CFB9400, &unk_221BD85A0);
      ++v35;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_221A60400()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 304);
  v5 = *(v3 + 296);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[39] = v8;
  v10[40] = v9;
  v10[41] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A60500()
{
  v79 = v2;
  v6 = OUTLINED_FUNCTION_159_0();
  (*(v7 + 16))(v6, v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier);
  OUTLINED_FUNCTION_52_5();
  v8 = v1;
  v9 = [v0 parameterName];
  sub_221BCD388();
  OUTLINED_FUNCTION_92_3();

  v10 = (v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment);
  v11 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
  v12 = v10[4];
  v71 = v10;
  __swift_project_boxed_opaque_existential_0(v10, v11);
  OUTLINED_FUNCTION_40_0(v12);
  v13(v11, v12);
  OUTLINED_FUNCTION_184();
  *(v2 + 224) = &type metadata for AnyIntentParameterMetadata;
  *(v2 + 232) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_80_3(v14);
  v15 = [v0 providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  OUTLINED_FUNCTION_25_1();
  v16 = sub_221BCD668();

  sub_2219A69A0(v16);
  OUTLINED_FUNCTION_157_0();
  v69 = MEMORY[0x277D84F90];
  v70 = v4;
  while (v77 != v11)
  {
    if (v75)
    {
      v17 = MEMORY[0x223DA3BF0](v11, v76);
    }

    else
    {
      if (v11 >= *(v73 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v76 + 8 * v11 + 32);
    }

    v18 = v17;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v72 = v11 + 1;
    v19 = [v17 displayRepresentation];
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(v19, v20, v21, v22, v23, v24, v25, v26, v62, v63, __src, v66, v67, v68, v69, v70, v71);
      v27 = OUTLINED_FUNCTION_191_1();
      v28 = (v2)(v27);
      OUTLINED_FUNCTION_207_1(v28, v29);
      OUTLINED_FUNCTION_97_1();

      sub_221B856C8(v15, v4);
      *(v2 + 96) = v18;
      *(v2 + 104) = v11;

      v18 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_180_0();
    }

    if (*(v2 + 24))
    {
      memcpy(__dst, v4, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v69 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_194_1();
      if (v39)
      {
        OUTLINED_FUNCTION_119_0(v38);
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_115_1(v30, v31, v32, v33, v34, v35, v36, v37, v62, v63, __src, v66, v67, v68, v69, v70, v71, v72, v73, v75, v76, v77, __dst[0]);
    }

    else
    {
      sub_2219A1CC8(v4, &unk_27CFB9400, &unk_221BD85A0);
      ++v11;
    }
  }

  if (v68)
  {
    v41 = v67;
  }

  else
  {
    v41 = 0;
  }

  v74 = v41;
  OUTLINED_FUNCTION_139_0();

  v42 = OUTLINED_FUNCTION_118();
  v44 = sub_2219F6D20(v42, v43, v68);
  v52 = OUTLINED_FUNCTION_103_3(v44, v45, v46, v47, v48, v49, v50, v51, v62, v63, __src, v66, v67, v68, v69, v70, v71, v72, v74);
  v53(v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v55 = OUTLINED_FUNCTION_198_1(v54);
  memcpy(v55, __srca, 0x58uLL);
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_218_1();
  v56 = OUTLINED_FUNCTION_43_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = *(v2 + 280);

  OUTLINED_FUNCTION_25();

  v61();
}

uint64_t sub_221A60868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[30] = a1;
  v5 = sub_221BCC558();
  v4[33] = v5;
  v6 = *(v5 - 8);
  v4[34] = v6;
  v7 = *(v6 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A6092C, 0, 0);
}

void sub_221A6092C()
{
  v90 = v1;
  v3 = v1[31];
  v4 = *(v1[32] + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_actionMetadata);
  v5 = OUTLINED_FUNCTION_66_2();
  v6 = sub_2219AD17C(v5);
  v1[36] = v6;

  if (!v6)
  {
    v13 = v1[30];
    v14 = [v1[31] parameterName];
    sub_221BCD388();
    OUTLINED_FUNCTION_92_3();

    sub_2219ACADC();
    v15 = OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_25_7(v15, v16);
    OUTLINED_FUNCTION_168_1();
    v17 = OUTLINED_FUNCTION_91_3();
    [v17 v18];

    type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
    v19 = OUTLINED_FUNCTION_15_9();
    goto LABEL_25;
  }

  v7 = v1[31];
  OUTLINED_FUNCTION_129_2(v1[32]);
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;
  v9 = v7;

  os_unfair_lock_unlock(v6);
  v10 = [v9 dialog];
  v1[37] = v10;
  if (v10)
  {
    v11 = swift_task_alloc();
    v1[38] = v11;
    *v11 = v1;
    OUTLINED_FUNCTION_57_1(v11);
    OUTLINED_FUNCTION_141_1();

    sub_22199B0DC();
    return;
  }

  v23 = v1[35];
  v24 = v1[36];
  v25 = v1[33];
  v27 = v1[31];
  v26 = v1[32];
  OUTLINED_FUNCTION_111_1(v1[34]);
  v28();
  v29 = OUTLINED_FUNCTION_14_5();
  sub_2219F6C8C(v29, v30, v31);
  v32 = v24;
  v33 = [v27 parameterName];
  v34 = sub_221BCD388();

  v35 = *(v26 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 32);
  v82 = v26 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment;
  __swift_project_boxed_opaque_existential_0((v26 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment), *(v26 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 24));
  v36 = OUTLINED_FUNCTION_22_8();
  v37(v36);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_186_0(&type metadata for AnyIntentParameterMetadata, v78, v80, v82, v1);
  OUTLINED_FUNCTION_49();
  v84[25] = swift_allocObject();
  v38 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_205_0(v38, v39, v40);
  v41 = [v27 providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  OUTLINED_FUNCTION_25_1();
  v42 = sub_221BCD668();

  sub_2219A69A0(v42);
  OUTLINED_FUNCTION_148_1();
  v81 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v88 == v35)
    {
      OUTLINED_FUNCTION_215_0();

      v67 = OUTLINED_FUNCTION_14_5();
      sub_2219F6D20(v67, v68, v69);
      v1[18] = 0;
      *(v1 + 7) = 0u;
      *(v1 + 8) = 0u;
      sub_22198B358((v1 + 25), (v1 + 19));
      v1[24] = v81;
      v70 = v32[4];
      v71 = OUTLINED_FUNCTION_70();
      v72(v71);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
      v74 = OUTLINED_FUNCTION_198_1(v73);
      memcpy(v74, v1 + 14, 0x58uLL);
      type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
      OUTLINED_FUNCTION_66_2();
      OUTLINED_FUNCTION_218_1();
      v19 = OUTLINED_FUNCTION_43_6();
LABEL_25:
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      v75 = v1[35];

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_141_1();

      __asm { BRAA            X1, X16 }
    }

    if (v86)
    {
      v44 = MEMORY[0x223DA3BF0](v35, v87);
    }

    else
    {
      OUTLINED_FUNCTION_183_1(v85);
      if (v43)
      {
        goto LABEL_29;
      }

      v44 = *(v87 + 8 * v35 + 32);
    }

    v34 = v44;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v45 = [v44 displayRepresentation];
    if (v45)
    {
      v53 = OUTLINED_FUNCTION_174_1(v45, v46, v47, v48, v49, v50, v51, v52, v79, v81, v83);
      v54 = OUTLINED_FUNCTION_118_0();
      v55 = (v32)(v54);
      v1 = v84;
      sub_221B85444(v55, v56);
      OUTLINED_FUNCTION_75();

      sub_221B856C8(v53, v84 + 2);
      v84[12] = v34;
      v84[13] = v35;

      v34 = v53;
    }

    else
    {
      OUTLINED_FUNCTION_179_0();
    }

    if (v1[3])
    {
      memcpy(__dst, v1 + 2, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v81 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_177_1();
      if (v43)
      {
        OUTLINED_FUNCTION_119_0(v65);
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_106_2(v57, v58, v59, v60, v61, v62, v63, v64, v79, v81, v83, v84, v35 + 1, v85, v86, v87, v88, __dst[0]);
    }

    else
    {
      sub_2219A1CC8((v1 + 2), &unk_27CFB9400, &unk_221BD85A0);
      ++v35;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_221A60DE8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 304);
  v5 = *(v3 + 296);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[39] = v8;
  v10[40] = v9;
  v10[41] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A60EE8()
{
  v79 = v2;
  v6 = OUTLINED_FUNCTION_159_0();
  (*(v7 + 16))(v6, v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier);
  OUTLINED_FUNCTION_52_5();
  v8 = v1;
  v9 = [v0 parameterName];
  sub_221BCD388();
  OUTLINED_FUNCTION_92_3();

  v10 = (v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment);
  v11 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 24);
  v12 = v10[4];
  v71 = v10;
  __swift_project_boxed_opaque_existential_0(v10, v11);
  OUTLINED_FUNCTION_40_0(v12);
  v13(v11, v12);
  OUTLINED_FUNCTION_184();
  *(v2 + 224) = &type metadata for AnyIntentParameterMetadata;
  *(v2 + 232) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_80_3(v14);
  v15 = [v0 providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  OUTLINED_FUNCTION_25_1();
  v16 = sub_221BCD668();

  sub_2219A69A0(v16);
  OUTLINED_FUNCTION_157_0();
  v69 = MEMORY[0x277D84F90];
  v70 = v4;
  while (v77 != v11)
  {
    if (v75)
    {
      v17 = MEMORY[0x223DA3BF0](v11, v76);
    }

    else
    {
      if (v11 >= *(v73 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v76 + 8 * v11 + 32);
    }

    v18 = v17;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v72 = v11 + 1;
    v19 = [v17 displayRepresentation];
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(v19, v20, v21, v22, v23, v24, v25, v26, v62, v63, __src, v66, v67, v68, v69, v70, v71);
      v27 = OUTLINED_FUNCTION_191_1();
      v28 = (v2)(v27);
      OUTLINED_FUNCTION_207_1(v28, v29);
      OUTLINED_FUNCTION_97_1();

      sub_221B856C8(v15, v4);
      *(v2 + 96) = v18;
      *(v2 + 104) = v11;

      v18 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_180_0();
    }

    if (*(v2 + 24))
    {
      memcpy(__dst, v4, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v69 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_194_1();
      if (v39)
      {
        OUTLINED_FUNCTION_119_0(v38);
        sub_2219B3A0C();
      }

      OUTLINED_FUNCTION_115_1(v30, v31, v32, v33, v34, v35, v36, v37, v62, v63, __src, v66, v67, v68, v69, v70, v71, v72, v73, v75, v76, v77, __dst[0]);
    }

    else
    {
      sub_2219A1CC8(v4, &unk_27CFB9400, &unk_221BD85A0);
      ++v11;
    }
  }

  if (v68)
  {
    v41 = v67;
  }

  else
  {
    v41 = 0;
  }

  v74 = v41;
  OUTLINED_FUNCTION_139_0();

  v42 = OUTLINED_FUNCTION_118();
  v44 = sub_2219F6D20(v42, v43, v68);
  v52 = OUTLINED_FUNCTION_103_3(v44, v45, v46, v47, v48, v49, v50, v51, v62, v63, __src, v66, v67, v68, v69, v70, v71, v72, v74);
  v53(v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v55 = OUTLINED_FUNCTION_198_1(v54);
  memcpy(v55, __srca, 0x58uLL);
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_218_1();
  v56 = OUTLINED_FUNCTION_43_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = *(v2 + 280);

  OUTLINED_FUNCTION_25();

  v61();
}

uint64_t sub_221A61248()
{
  OUTLINED_FUNCTION_1_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_221BCC558();
  v1[5] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_221A612F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v17 = v15[3];
  OUTLINED_FUNCTION_129_2(v15[4]);
  v18 = *(v14 + 48);
  *(v14 + 48) = v17;
  v19 = v17;

  os_unfair_lock_unlock(v14);
  v20 = [v19 dialog];
  v15[8] = v20;
  if (v20)
  {
    v21 = swift_task_alloc();
    v15[9] = v21;
    *v21 = v15;
    OUTLINED_FUNCTION_57_1(v21);
    OUTLINED_FUNCTION_75_4();

    sub_22199B0DC();
  }

  else
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_111_1(v23);
    v24();
    v25 = OUTLINED_FUNCTION_14_5();
    sub_2219F6C8C(v25, v26, v27);
    v28 = [v14 options];
    sub_2219A1D20(0, &qword_27CFB8328, 0x277D23B88);
    OUTLINED_FUNCTION_25_1();
    v29 = sub_221BCD668();

    v30 = sub_2219A69A0(v29);
    OUTLINED_FUNCTION_185_0();
    v31 = MEMORY[0x277D84F90];
    while (v30)
    {
      if (a11)
      {
        v32 = MEMORY[0x223DA3BF0](0, v29);
      }

      else
      {
        if (!*(a10 + 16))
        {
          __break(1u);
          return;
        }

        v32 = *(v29 + 32);
      }

      v33 = v32;
      v34 = [v32 title];
      v35 = v16[4];
      __swift_project_boxed_opaque_existential_0(v16, v16[3]);
      OUTLINED_FUNCTION_40_0(v35);
      v36 = OUTLINED_FUNCTION_195_1();
      v37(v36);
      sub_221BCD358();
      OUTLINED_FUNCTION_152_1();

      v38 = [v34 localizedStringForLocaleIdentifier_];

      sub_221BCD388();
      OUTLINED_FUNCTION_242_0();

      sub_2219ACF48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v31 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3ACC();
        v31 = v41;
      }

      v39 = *(v31 + 24);
      if (*(v31 + 16) >= v39 >> 1)
      {
        OUTLINED_FUNCTION_90_3(v39);
        sub_2219B3ACC();
        v31 = v42;
      }

      OUTLINED_FUNCTION_108_2();
    }

    v43 = a9[3];

    if ([v43 viewSnippet])
    {
      sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    }

    v44 = a9[6];
    v45 = a9[7];
    v46 = a9[5];
    v47 = a9[2];
    v48 = OUTLINED_FUNCTION_14_5();
    sub_2219F6D20(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_182_1();
    v52(v51);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
    OUTLINED_FUNCTION_97_2(v53);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_75_4();

    v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_221A6168C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[10] = v8;
  v10[11] = v9;
  v10[12] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A6178C()
{
  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_111_1(v2);
  v3();
  OUTLINED_FUNCTION_52_5();
  v4 = [v0 options];
  sub_2219A1D20(0, &qword_27CFB8328, 0x277D23B88);
  OUTLINED_FUNCTION_25_1();
  v5 = sub_221BCD668();

  v6 = sub_2219A69A0(v5);
  OUTLINED_FUNCTION_178_1();
  v7 = MEMORY[0x277D84F90];
  while (v6)
  {
    if (v69)
    {
      v9 = MEMORY[0x223DA3BF0](0, v5);
    }

    else
    {
      OUTLINED_FUNCTION_183_1(v67);
      if (v8)
      {
        __break(1u);
        return;
      }

      v9 = *(v5 + 32);
    }

    v10 = v9;
    v11 = [v9 title];
    v12 = *(v1 + 24);
    v13 = *(v1 + 32);
    v14 = OUTLINED_FUNCTION_195_1();
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v16 = OUTLINED_FUNCTION_23_9();
    v17(v16);
    sub_221BCD358();
    OUTLINED_FUNCTION_152_1();

    v18 = OUTLINED_FUNCTION_91_3();
    v20 = [v18 v19];

    sub_221BCD388();
    sub_2219ACF48();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v7 + 16);
      OUTLINED_FUNCTION_21_7();
      sub_2219B3ACC();
      v7 = v23;
    }

    v21 = *(v7 + 24);
    if (*(v7 + 16) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_90_3(v21);
      sub_2219B3ACC();
      v7 = v24;
    }

    OUTLINED_FUNCTION_105_2();
  }

  v25 = v65[3];

  v26 = [v25 viewSnippet];
  if (v26)
  {
    v68 = v26;
    v57 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v70 = &protocol witness table for LNViewSnippet;
    OUTLINED_FUNCTION_101_2(v57, v34, v35, v36, v37, v38, v39, v40, v53, v55, v57, v59, v61, v63, v65);
  }

  else
  {
    v68 = 0;
    v70 = 0;
    OUTLINED_FUNCTION_101_2(0, v27, v28, v29, v30, v31, v32, v33, v53, v55, 0, v59, v61, v63, v65);
  }

  v41 = &off_283512A28;
  if (!v25)
  {
    v41 = 0;
  }

  v56 = v41;
  v42 = OUTLINED_FUNCTION_181_0();
  v43(v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  OUTLINED_FUNCTION_74_4(v44, v45, v46, v47, v48, v49, v50, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  OUTLINED_FUNCTION_100_2();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_25();

  v52();
}

uint64_t sub_221A61A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = sub_221BCC558();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A61B54, 0, 0);
}

void sub_221A61B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v17 = v15[3];
  OUTLINED_FUNCTION_129_2(v15[4]);
  v18 = *(v14 + 48);
  *(v14 + 48) = v17;
  v19 = v17;

  os_unfair_lock_unlock(v14);
  v20 = [v19 dialog];
  v15[8] = v20;
  if (v20)
  {
    v21 = swift_task_alloc();
    v15[9] = v21;
    *v21 = v15;
    OUTLINED_FUNCTION_57_1(v21);
    OUTLINED_FUNCTION_75_4();

    sub_22199B0DC();
  }

  else
  {
    OUTLINED_FUNCTION_188_1();
    OUTLINED_FUNCTION_111_1(v23);
    v24();
    v25 = OUTLINED_FUNCTION_14_5();
    sub_2219F6C8C(v25, v26, v27);
    v28 = [v14 options];
    sub_2219A1D20(0, &qword_27CFB8328, 0x277D23B88);
    OUTLINED_FUNCTION_25_1();
    v29 = sub_221BCD668();

    v30 = sub_2219A69A0(v29);
    OUTLINED_FUNCTION_185_0();
    v31 = MEMORY[0x277D84F90];
    while (v30)
    {
      if (a11)
      {
        v32 = MEMORY[0x223DA3BF0](0, v29);
      }

      else
      {
        if (!*(a10 + 16))
        {
          __break(1u);
          return;
        }

        v32 = *(v29 + 32);
      }

      v33 = v32;
      v34 = [v32 title];
      v35 = v16[4];
      __swift_project_boxed_opaque_existential_0(v16, v16[3]);
      OUTLINED_FUNCTION_40_0(v35);
      v36 = OUTLINED_FUNCTION_195_1();
      v37(v36);
      sub_221BCD358();
      OUTLINED_FUNCTION_152_1();

      v38 = [v34 localizedStringForLocaleIdentifier_];

      sub_221BCD388();
      OUTLINED_FUNCTION_242_0();

      sub_2219ACF48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v31 + 16);
        OUTLINED_FUNCTION_21_7();
        sub_2219B3ACC();
        v31 = v41;
      }

      v39 = *(v31 + 24);
      if (*(v31 + 16) >= v39 >> 1)
      {
        OUTLINED_FUNCTION_90_3(v39);
        sub_2219B3ACC();
        v31 = v42;
      }

      OUTLINED_FUNCTION_108_2();
    }

    v43 = a9[3];

    if ([v43 viewSnippet])
    {
      sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    }

    v44 = a9[6];
    v45 = a9[7];
    v46 = a9[5];
    v47 = a9[2];
    v48 = OUTLINED_FUNCTION_14_5();
    sub_2219F6D20(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_182_1();
    v52(v51);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
    OUTLINED_FUNCTION_97_2(v53);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_75_4();

    v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_221A61EE4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[10] = v8;
  v10[11] = v9;
  v10[12] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A61FE4()
{
  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_111_1(v2);
  v3();
  OUTLINED_FUNCTION_52_5();
  v4 = [v0 options];
  sub_2219A1D20(0, &qword_27CFB8328, 0x277D23B88);
  OUTLINED_FUNCTION_25_1();
  v5 = sub_221BCD668();

  v6 = sub_2219A69A0(v5);
  OUTLINED_FUNCTION_178_1();
  v7 = MEMORY[0x277D84F90];
  while (v6)
  {
    if (v69)
    {
      v9 = MEMORY[0x223DA3BF0](0, v5);
    }

    else
    {
      OUTLINED_FUNCTION_183_1(v67);
      if (v8)
      {
        __break(1u);
        return;
      }

      v9 = *(v5 + 32);
    }

    v10 = v9;
    v11 = [v9 title];
    v12 = *(v1 + 24);
    v13 = *(v1 + 32);
    v14 = OUTLINED_FUNCTION_195_1();
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v16 = OUTLINED_FUNCTION_23_9();
    v17(v16);
    sub_221BCD358();
    OUTLINED_FUNCTION_152_1();

    v18 = OUTLINED_FUNCTION_91_3();
    v20 = [v18 v19];

    sub_221BCD388();
    sub_2219ACF48();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v7 + 16);
      OUTLINED_FUNCTION_21_7();
      sub_2219B3ACC();
      v7 = v23;
    }

    v21 = *(v7 + 24);
    if (*(v7 + 16) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_90_3(v21);
      sub_2219B3ACC();
      v7 = v24;
    }

    OUTLINED_FUNCTION_105_2();
  }

  v25 = v65[3];

  v26 = [v25 viewSnippet];
  if (v26)
  {
    v68 = v26;
    v57 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v70 = &protocol witness table for LNViewSnippet;
    OUTLINED_FUNCTION_101_2(v57, v34, v35, v36, v37, v38, v39, v40, v53, v55, v57, v59, v61, v63, v65);
  }

  else
  {
    v68 = 0;
    v70 = 0;
    OUTLINED_FUNCTION_101_2(0, v27, v28, v29, v30, v31, v32, v33, v53, v55, 0, v59, v61, v63, v65);
  }

  v41 = &off_283512A28;
  if (!v25)
  {
    v41 = 0;
  }

  v56 = v41;
  v42 = OUTLINED_FUNCTION_181_0();
  v43(v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  OUTLINED_FUNCTION_74_4(v44, v45, v46, v47, v48, v49, v50, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  OUTLINED_FUNCTION_100_2();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_25();

  v52();
}

uint64_t sub_221A622E0()
{
  OUTLINED_FUNCTION_1_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_221BCC558();
  v1[5] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A62684()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[11] = v8;
  v10[12] = v9;
  v10[13] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A62784()
{
  v7 = OUTLINED_FUNCTION_93_1();
  (*(v4 + 16))(v7, v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier);
  v8 = OUTLINED_FUNCTION_217_1();
  v9 = sub_221BCD388();
  v54 = v10;
  v57 = v9;

  v11 = &off_283512A28;
  if (!v1)
  {
    v11 = 0;
  }

  v60 = v11;
  if (v1)
  {
    v12 = &type metadata for AnyDialog;
  }

  else
  {
    v12 = 0;
  }

  v42 = v3;
  if (v1)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v48 = v13;
  v51 = v12;
  if (v1)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v45 = v14;
  sub_2219F6C8C(v6, v3, v1);
  v15 = v0;
  v16 = OUTLINED_FUNCTION_217_1();
  sub_221BCD388();

  v18 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
  v17 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment), v18);
  OUTLINED_FUNCTION_40_0(v17);
  v19(v18, v17);
  OUTLINED_FUNCTION_49();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_121_2(v20);
  v21 = [v15 valueType];

  sub_2219F6D20(v6, v42, v1);
  v22 = OUTLINED_FUNCTION_113_3(OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier, v6, v42, v45, v48, v51, v54, v57, v60, v62, v63, v64);
  v23(v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  OUTLINED_FUNCTION_95_2(v24, v25, v26, v27, v28, v29, v30, v31, v40, v43, v46, v49, v52, v55, v58);
  OUTLINED_FUNCTION_137_1(v32, v41, v44, v47, v50, v53, v56, v59, v61);
  OUTLINED_FUNCTION_211_1();
  OUTLINED_FUNCTION_26_7();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

  v37 = *(v2 + 56);

  OUTLINED_FUNCTION_25();

  return v38();
}

uint64_t sub_221A62994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = sub_221BCC558();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A62A58, 0, 0);
}

uint64_t sub_221A62D40()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[11] = v8;
  v10[12] = v9;
  v10[13] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A62E40()
{
  v7 = OUTLINED_FUNCTION_93_1();
  (*(v4 + 16))(v7, v5 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier);
  v8 = OUTLINED_FUNCTION_217_1();
  v9 = sub_221BCD388();
  v54 = v10;
  v57 = v9;

  v11 = &off_283512A28;
  if (!v1)
  {
    v11 = 0;
  }

  v60 = v11;
  if (v1)
  {
    v12 = &type metadata for AnyDialog;
  }

  else
  {
    v12 = 0;
  }

  v42 = v3;
  if (v1)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v48 = v13;
  v51 = v12;
  if (v1)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v45 = v14;
  sub_2219F6C8C(v6, v3, v1);
  v15 = v0;
  v16 = OUTLINED_FUNCTION_217_1();
  sub_221BCD388();

  v18 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 24);
  v17 = *(v5 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment), v18);
  OUTLINED_FUNCTION_40_0(v17);
  v19(v18, v17);
  OUTLINED_FUNCTION_49();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_121_2(v20);
  v21 = [v15 valueType];

  sub_2219F6D20(v6, v42, v1);
  v22 = OUTLINED_FUNCTION_113_3(OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier, v6, v42, v45, v48, v51, v54, v57, v60, v62, v63, v64);
  v23(v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  OUTLINED_FUNCTION_95_2(v24, v25, v26, v27, v28, v29, v30, v31, v40, v43, v46, v49, v52, v55, v58);
  OUTLINED_FUNCTION_137_1(v32, v41, v44, v47, v50, v53, v56, v59, v61);
  OUTLINED_FUNCTION_211_1();
  OUTLINED_FUNCTION_26_7();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

  v37 = *(v2 + 56);

  OUTLINED_FUNCTION_25();

  return v38();
}

uint64_t sub_221A63044()
{
  OUTLINED_FUNCTION_1_5();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_221BCC558();
  v1[30] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A634A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 280);
  v5 = *(v3 + 272);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[36] = v8;
  v10[37] = v9;
  v10[38] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A635A4()
{
  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_192_1(v5);
  v6();
  v7 = v1;
  OUTLINED_FUNCTION_136_1();
  v8 = [v4 parameterName];
  sub_221BCD388();

  v9 = (v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment);
  v11 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 24);
  v10 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment + 32);
  v12 = OUTLINED_FUNCTION_69_0();
  __swift_project_boxed_opaque_existential_0(v12, v13);
  OUTLINED_FUNCTION_40_0(v10);
  v14(v11, v10);
  OUTLINED_FUNCTION_160_0();
  *(v2 + 200) = &type metadata for AnyIntentParameterMetadata;
  *(v2 + 208) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_86_2(v15);
  v16 = [v4 value];
  v17 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v18 = OUTLINED_FUNCTION_23_9();
  v20 = v19(v18);
  v21 = OUTLINED_FUNCTION_171_1(v20);
  v71 = v23;
  if (v23)
  {
    v67 = v21;
    v69 = v22;
    v63 = &type metadata for LNValueBackedDisplayRepresentable;
    v65 = &off_28351B418;
  }

  else
  {
    v63 = 0;
    v65 = 0;
    v67 = 0;
    v69 = 0;
  }

  v24 = *(v2 + 264);
  v25 = [*(v2 + 224) viewSnippet];

  if (v25)
  {
    v59 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v61 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  if (v0)
  {
    v26 = &off_283512A28;
  }

  else
  {
    v26 = 0;
  }

  if (v0)
  {
    v27 = v75;
  }

  else
  {
    v27 = 0;
  }

  if (v0)
  {
    v28 = v76;
  }

  else
  {
    v28 = 0;
  }

  if (v0)
  {
    v29 = &type metadata for AnyDialog;
  }

  else
  {
    v29 = 0;
  }

  OUTLINED_FUNCTION_167_0(v75, v76);
  *(v2 + 16) = v27;
  *(v2 + 24) = v28;
  *(v2 + 32) = v0;
  *(v2 + 40) = v29;
  *(v2 + 48) = v26;
  v30 = sub_22198B358(v73, v2 + 56);
  v38 = OUTLINED_FUNCTION_63_5(v30, v31, v32, v33, v34, v35, v36, v37, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  v39(v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  OUTLINED_FUNCTION_212_0(v40, v41, v42, v43, v44, v45, v46, v47, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v74);
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_124_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_7();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = *(v2 + 256);

  OUTLINED_FUNCTION_25();

  return v53();
}

uint64_t sub_221A63834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[27] = a1;
  v5 = sub_221BCC558();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A638F8, 0, 0);
}

uint64_t sub_221A63CA0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 280);
  v5 = *(v3 + 272);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[36] = v8;
  v10[37] = v9;
  v10[38] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A63DA0()
{
  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_192_1(v5);
  v6();
  v7 = v1;
  OUTLINED_FUNCTION_136_1();
  v8 = [v4 parameterName];
  sub_221BCD388();

  v9 = (v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment);
  v11 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 24);
  v10 = *(v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 32);
  v12 = OUTLINED_FUNCTION_69_0();
  __swift_project_boxed_opaque_existential_0(v12, v13);
  OUTLINED_FUNCTION_40_0(v10);
  v14(v11, v10);
  OUTLINED_FUNCTION_160_0();
  *(v2 + 200) = &type metadata for AnyIntentParameterMetadata;
  *(v2 + 208) = &protocol witness table for AnyIntentParameterMetadata;
  OUTLINED_FUNCTION_49();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_86_2(v15);
  v16 = [v4 value];
  v17 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v18 = OUTLINED_FUNCTION_23_9();
  v20 = v19(v18);
  v21 = OUTLINED_FUNCTION_171_1(v20);
  v71 = v23;
  if (v23)
  {
    v67 = v21;
    v69 = v22;
    v63 = &type metadata for LNValueBackedDisplayRepresentable;
    v65 = &off_28351B418;
  }

  else
  {
    v63 = 0;
    v65 = 0;
    v67 = 0;
    v69 = 0;
  }

  v24 = *(v2 + 264);
  v25 = [*(v2 + 224) viewSnippet];

  if (v25)
  {
    v59 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v61 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  if (v0)
  {
    v26 = &off_283512A28;
  }

  else
  {
    v26 = 0;
  }

  if (v0)
  {
    v27 = v75;
  }

  else
  {
    v27 = 0;
  }

  if (v0)
  {
    v28 = v76;
  }

  else
  {
    v28 = 0;
  }

  if (v0)
  {
    v29 = &type metadata for AnyDialog;
  }

  else
  {
    v29 = 0;
  }

  OUTLINED_FUNCTION_167_0(v75, v76);
  *(v2 + 16) = v27;
  *(v2 + 24) = v28;
  *(v2 + 32) = v0;
  *(v2 + 40) = v29;
  *(v2 + 48) = v26;
  v30 = sub_22198B358(v73, v2 + 56);
  v38 = OUTLINED_FUNCTION_63_5(v30, v31, v32, v33, v34, v35, v36, v37, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  v39(v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  OUTLINED_FUNCTION_212_0(v40, v41, v42, v43, v44, v45, v46, v47, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v74);
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_124_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_7();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = *(v2 + 256);

  OUTLINED_FUNCTION_25();

  return v53();
}

uint64_t sub_221A64028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[34] = a1;
  v5 = OUTLINED_FUNCTION_62();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A64054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v14 = *(v12 + 280);
  v15 = *(v12 + 288);
  v16 = *(v12 + 272);
  v17 = v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_pendingRequests;
  os_unfair_lock_lock((v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_pendingRequests));
  v18 = *(v17 + 32);
  *(v17 + 32) = v14;
  v19 = v14;

  os_unfair_lock_unlock(v17);
  v20 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier;
  v21 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v21);
  (*(v22 + 16))(v16, v15 + v20);
  v23 = [v19 result];
  [v23 output];

  v24 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
  v25 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_effectiveBundleIdentifier + 8);
  OUTLINED_FUNCTION_135_1();
  *(v12 + 256) = xmmword_221BD0800;
  OUTLINED_FUNCTION_221_1((v15 + OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_environment));
  OUTLINED_FUNCTION_83_4();

  v26 = OUTLINED_FUNCTION_27();
  v13(v26);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_58_4(dword_221BD1E20);
  v39 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v12 + 296) = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_29_7(v28);
  OUTLINED_FUNCTION_206();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, a11, a12);
}

uint64_t sub_221A641F8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A642DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[34] = a1;
  return MEMORY[0x2822009F8](sub_221A64300, 0, 0);
}

uint64_t sub_221A64300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v14 = *(v12 + 280);
  v15 = *(v12 + 288);
  v16 = *(v12 + 272);
  v17 = v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_pendingRequests;
  os_unfair_lock_lock((v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_pendingRequests));
  v18 = *(v17 + 32);
  *(v17 + 32) = v14;
  v19 = v14;

  os_unfair_lock_unlock(v17);
  v20 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier;
  v21 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v21);
  (*(v22 + 16))(v16, v15 + v20);
  v23 = [v19 result];
  [v23 output];

  v24 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
  v25 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier + 8);
  OUTLINED_FUNCTION_135_1();
  *(v12 + 256) = xmmword_221BD0800;
  OUTLINED_FUNCTION_221_1((v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment));
  OUTLINED_FUNCTION_83_4();

  v26 = OUTLINED_FUNCTION_27();
  v13(v26);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_58_4(dword_221BD1E20);
  v39 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v12 + 296) = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_29_7(v28);
  OUTLINED_FUNCTION_206();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, a11, a12);
}

uint64_t sub_221A64494()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A64578()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 272);
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18) + 28);
  sub_2219BAF0C(v0 + 56, v2, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219BAF0C(v0 + 16, v2 + 40, &unk_27CFBB7B0, &unk_221BE4C10);
  *(v2 + 120) = *(v0 + 136);
  sub_2219BAF0C(v0 + 192, v2 + 80, &unk_27CFB93B0, &qword_221BD1D70);
  sub_2219A1CC8(v0 + 16, &unk_27CFBB7A0, &qword_221BD2930);
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_25_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A64670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = OUTLINED_FUNCTION_62();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A6469C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1[3];
  OUTLINED_FUNCTION_129_2(v1[4]);
  v3 = *(v0 + 40);
  *(v0 + 40) = v2;
  v4 = v2;

  os_unfair_lock_unlock(v0);
  v1[5] = [v4 dialog];
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_57_1(v5);

  return sub_22199B0DC();
}

uint64_t sub_221A64778()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[7] = v8;
  v10[8] = v9;
  v10[9] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A64878()
{
  OUTLINED_FUNCTION_104();
  [v0 isThrowing];
  [v0 requestConfirmation];
  [v0 type];
  v4 = OBJC_IVAR____TtCC18AppIntentsServices28RunnerServiceDispatcherActor29PerformActionExecutorDelegate_executionIdentifier;
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 16))(v1, v3 + v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  OUTLINED_FUNCTION_199_1(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(v16 + 16) = v2;
  *(v16 + 24) = &type metadata for AnyDialog;
  OUTLINED_FUNCTION_169_1(v16);
  OUTLINED_FUNCTION_25_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_206();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A64994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_221A649B8, 0, 0);
}

uint64_t sub_221A649B8()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1[3];
  OUTLINED_FUNCTION_129_2(v1[4]);
  v3 = *(v0 + 40);
  *(v0 + 40) = v2;
  v4 = v2;

  os_unfair_lock_unlock(v0);
  v1[5] = [v4 dialog];
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_57_1(v5);

  return sub_22199B0DC();
}

uint64_t sub_221A64A90()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  v10[7] = v8;
  v10[8] = v9;
  v10[9] = v11;

  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A64B90()
{
  OUTLINED_FUNCTION_104();
  [v0 isThrowing];
  [v0 requestConfirmation];
  [v0 type];
  v4 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier;
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 16))(v1, v3 + v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  OUTLINED_FUNCTION_199_1(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(v16 + 16) = v2;
  *(v16 + 24) = &type metadata for AnyDialog;
  OUTLINED_FUNCTION_169_1(v16);
  OUTLINED_FUNCTION_25_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_206();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A65FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_221BD8468;
  v12[5] = v11;
  sub_221A6CB78(0, 0, v9, &unk_221BD8478, v12);
}

uint64_t sub_221A660C4()
{
  v6 = *(v0 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
  v7 = *(v0 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier + 8);

  MEMORY[0x223DA31F0](46, 0xE100000000000000);
  v1 = [*(v0 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_actionMetadata) identifier];
  v2 = sub_221BCD388();
  v4 = v3;

  MEMORY[0x223DA31F0](v2, v4);

  return v6;
}

void sub_221A66244()
{
  OUTLINED_FUNCTION_21();
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = sub_221BCCD08();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  v19 = sub_221BCCCD8();
  v20 = OUTLINED_FUNCTION_0_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v27 = v26 - v25;
  (*(v13 + 16))(v18, v5 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter, v10);
  sub_221BCCCF8();
  sub_221BCCCB8();
  (*(v13 + 8))(v18, v10);
  v31[2] = v5;
  v31[3] = v9;
  v31[4] = v7;
  sub_221A678F4(v4, v29, 2, v27, 0, 0xE000000000000000, v30, v31, v28);
  (*(v22 + 8))(v27, v19);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A663E8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221A5E658();
  }

  return result;
}

void sub_221A6645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t *a24, const void *a25)
{
  OUTLINED_FUNCTION_21();
  v26 = v25;
  v73 = v27;
  v64 = v28;
  v63 = v29;
  v62 = v30;
  v32 = v31;
  v34 = v33;
  ObjectType = swift_getObjectType();
  v70 = sub_221BCCD88();
  v35 = OUTLINED_FUNCTION_0_2(v70);
  v69 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_0();
  v67 = v40 - v39;
  v68 = sub_221BCCD08();
  v41 = OUTLINED_FUNCTION_0_2(v68);
  v65 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_0();
  v47 = v46 - v45;
  v61 = *a23;
  memcpy(v75, a25, sizeof(v75));
  swift_weakInit();
  swift_weakInit();
  v48 = &v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_pendingRequests];
  *v48 = 0;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 0u;
  *&v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_actionMetadata] = v34;
  v49 = v34;
  v50 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_completion;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v52 = *(v51 - 8);
  v72 = v32;
  v66 = v51;
  (*(v52 + 16))(&v26[v50], v32);
  *&v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_connection] = v62;
  swift_weakAssign();
  swift_weakAssign();
  v53 = &v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier];
  *v53 = v63;
  v53[1] = v64;
  sub_2219A1B08(v73, &v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment]);
  v54 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier;
  v55 = sub_221BCC558();
  v56 = *(v55 - 8);
  (*(v56 + 16))(&v26[v54], a21, v55);
  *&v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_intentFileStore] = a22;
  v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_payloadPrivacy] = v61;
  sub_2219A1B08(a24, OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_peer + v26);
  v57 = qword_27CFB73C0;
  v58 = v49;
  v59 = v62;

  if (v57 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v70, qword_27CFDEE88);
  (*(v69 + 16))(v67, v60, v70);
  sub_221BCCCE8();
  (*(v65 + 32))(&v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter], v47, v68);
  memcpy(&v26[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_snippetEnvironment], v75, 0x64uLL);
  v74.receiver = v26;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, sel_init);

  __swift_destroy_boxed_opaque_existential_0(a24);
  (*(v56 + 8))(a21, v55);
  __swift_destroy_boxed_opaque_existential_0(v73);
  (*(v52 + 8))(v72, v66);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A66C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_221A66C50, 0, 0);
}

uint64_t sub_221A66C50()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_221A66D3C;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_221A67C50(v9, "didPerformActionWithResult", 26, 2, v7, 0, 0xE000000000000000, &unk_221BD85D8);
}

void sub_221A66D3C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 56);

    v8 = *(v5 + 8);

    v8();
  }
}

uint64_t sub_221A66E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v6 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v5[44] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v5[47] = v8;
  v9 = *(v8 - 8);
  v5[48] = v9;
  v10 = *(v9 + 64) + 15;
  v5[49] = swift_task_alloc();
  v11 = sub_221BCCCD8();
  v5[50] = v11;
  v12 = *(v11 - 8);
  v5[51] = v12;
  v13 = *(v12 + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = sub_221BCCD08();
  v5[53] = v14;
  v15 = *(v14 - 8);
  v5[54] = v15;
  v16 = *(v15 + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A67024, 0, 0);
}

void sub_221A67024()
{
  OUTLINED_FUNCTION_57_2();
  v58 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 336);
    Strong = swift_weakLoadStrong();
    *(v0 + 448) = Strong;
    if (Strong)
    {
      v5 = *(v0 + 432);
      v4 = *(v0 + 440);
      v6 = *(v0 + 424);
      v7 = *(v0 + 336);
      v8 = *&v7[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_connection];
      v9 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_peer;
      v10 = v1;
      v11 = sub_221A5AE84(v8, (v9 + v7));
      *(v0 + 456) = v11;
      (*(v5 + 16))(v4, &v7[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter], v6);
      v12 = v10;

      v13 = v7;
      v14 = sub_221BCCCF8();
      v15 = sub_221BCDBC8();
      if (sub_221BCDC78())
      {
        v16 = *(v0 + 344);
        v17 = OUTLINED_FUNCTION_74_0();
        v18 = OUTLINED_FUNCTION_68();
        v57[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_2219A6360(0, 0xE000000000000000, v57);
        v19 = sub_221BCCCC8();
        _os_signpost_emit_with_name_impl(&dword_221989000, v14, v15, v19, "exportedLNValueConversion", "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      v21 = *(v0 + 432);
      v20 = *(v0 + 440);
      v22 = *(v0 + 424);
      v23 = *(v0 + 336);
      (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 344), *(v0 + 400));
      v24 = sub_221BCCD48();
      OUTLINED_FUNCTION_130_1(v24);
      OUTLINED_FUNCTION_30_6();
      v25 = *(v21 + 8);
      v26 = OUTLINED_FUNCTION_85_2();
      v27(v26);
      sub_221A67760(v11, v23, v12, v57);
      sub_221A6BED8();
      v31 = *(v0 + 336);

      v32 = v57[0];
      *(v0 + 464) = v57[0];
      v33 = [v12 output];
      sub_221BB80DC(v32);

      v34 = &v31[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier];
      *(v0 + 472) = *&v31[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier];
      *(v0 + 480) = *(v34 + 1);
      OUTLINED_FUNCTION_135_1();
      *(v0 + 256) = xmmword_221BD0800;
      OUTLINED_FUNCTION_221_1(&v31[OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment]);
      OUTLINED_FUNCTION_83_4();
      swift_bridgeObjectRetain_n();
      v35 = OUTLINED_FUNCTION_27();
      v9(v35);
      OUTLINED_FUNCTION_160_0();
      OUTLINED_FUNCTION_58_4(dword_221BD1E20);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 488) = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_29_7(v36);
      OUTLINED_FUNCTION_201_1();

      __asm { BR              X5 }
    }

    sub_2219ACB94();
    v29 = OUTLINED_FUNCTION_17_2();
    *v30 = 0xD00000000000001FLL;
    *(v30 + 8) = 0x8000000221BEE630;
    *(v30 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v28 = *(v0 + 328);
    if (v28)
    {
      v29 = *(v0 + 328);
    }

    else
    {
      sub_2219A1218();
      v29 = OUTLINED_FUNCTION_17_2();
      *v40 = 0u;
      *(v40 + 16) = 0u;
      *(v40 + 32) = 5;
    }

    swift_willThrow();
    v41 = v28;
  }

  v43 = *(v0 + 384);
  v42 = *(v0 + 392);
  v45 = *(v0 + 368);
  v44 = *(v0 + 376);
  v47 = *(v0 + 352);
  v46 = *(v0 + 360);
  v48 = *(v0 + 336);
  *v45 = sub_221BCC328();
  swift_storeEnumTagMultiPayload();
  v49 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_completion;
  swift_beginAccess();
  (*(v43 + 16))(v42, v48 + v49, v44);
  v50 = OUTLINED_FUNCTION_27();
  sub_221A0150C(v50, v51);
  sub_221BCD798();

  v52 = *(v43 + 8);
  v53 = OUTLINED_FUNCTION_16();
  v54(v53);
  sub_221A133F4(v45);
  OUTLINED_FUNCTION_208_1();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_201_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A67514()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A675F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[59];
  v18 = v16[60];
  v40 = v16[56];
  v41 = v16[58];
  v20 = v16[48];
  v19 = v16[49];
  v22 = v16[46];
  v21 = v16[47];
  v23 = v16[44];
  v24 = v16[42];
  v38 = v16[40];
  v39 = v16[57];
  v25 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_completion;
  swift_beginAccess();
  (*(v20 + 16))(v19, v24 + v25, v21);
  sub_2219BAF0C((v16 + 2), v22, &unk_27CFBB7A0, &qword_221BD2930);
  *(v22 + 224) = v17;
  *(v22 + 232) = v18;
  OUTLINED_FUNCTION_69_0();
  swift_storeEnumTagMultiPayload();
  sub_221BCD798();

  v26 = *(v20 + 8);
  v27 = OUTLINED_FUNCTION_70();
  v28(v27);
  sub_2219A1CC8((v16 + 2), &unk_27CFBB7A0, &qword_221BD2930);
  OUTLINED_FUNCTION_208_1();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_221A67760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_intentFileStore);
  v7 = *(a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier);
  v8 = *(a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_effectiveBundleIdentifier + 8);
  v9 = *(a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 24);
  v10 = *(a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment), v9);
  v11 = *(v10 + 24);

  v21[0] = a1;
  v21[1] = v7;
  v21[2] = v8;
  v21[3] = v6;
  v21[4] = v11(v9, v10);
  v21[5] = v12;

  sub_221A5C708(v22);
  v13 = [a3 output];
  v14 = [v13 value];

  if (v14)
  {
    sub_221A57690(v21, __src);
    v15 = swift_allocObject();
    memcpy((v15 + 16), __src, 0x58uLL);
    sub_221BB8ED4(v14, sub_221A57748, v15);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = sub_221A56FC4(v21);
  *a4 = v17;
  return result;
}

uint64_t sub_221A678F4@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a7;
  v42 = a9;
  v43 = a8;
  v38 = a5;
  v41 = a4;
  v45 = a2;
  v46 = a1;
  v39 = sub_221BCCCD8();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221BCCD08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v40 = v22;
  v21(v20, v9 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter);

  v23 = sub_221BCCCF8();
  v37 = sub_221BCDBC8();
  result = sub_221BCDC78();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v36 = v9;
  v35 = a3;
  if ((a3 & 1) == 0)
  {

    v25 = v46;
    if (!v46)
    {
      __break(1u);
LABEL_5:

      v26 = v41;
LABEL_11:
      (*(v12 + 16))(v15, v26, v39);
      v30 = sub_221BCCD48();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_221BCCD38();
      v33 = (*(v17 + 8))(v20, v40);
      v44(v33);
      sub_221A6BED8();
    }

LABEL_10:
    v34 = v25;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2219A6360(v38, a6, &v47);
    v26 = v41;
    v29 = sub_221BCCCC8();
    _os_signpost_emit_with_name_impl(&dword_221989000, v23, v37, v29, v34, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223DA4C00](v28, -1, -1);
    MEMORY[0x223DA4C00](v27, -1, -1);

    goto LABEL_11;
  }

  if (v46 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v46 & 0xFFFFF800) != 0xD800)
  {
    if (v46 >> 16 <= 0x10)
    {

      v25 = &v47;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_221A67C50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v18;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 168) = a4;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 24) = a1;
  v10 = sub_221BCCCD8();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = sub_221BCCD08();
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A67D88, 0, 0);
}

uint64_t sub_221A67D88()
{
  OUTLINED_FUNCTION_237();
  v35 = v1;
  OUTLINED_FUNCTION_104();
  v2 = *(v0 + 64);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter, *(v0 + 120));

  v3 = sub_221BCCCF8();
  v4 = sub_221BCDBC8();
  result = sub_221BCDC78();
  if (result)
  {
    if (*(v0 + 168))
    {
      v10 = *(v0 + 32);
      if (!HIDWORD(v10))
      {
        if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        if (v10 >> 16 <= 0x10)
        {
          v8 = (v0 + 16);
          v11 = *(v0 + 64);

          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v6 = *(v0 + 64);
      v7 = *(v0 + 32);

      if (v7)
      {
        v8 = *(v0 + 32);
LABEL_10:
        v12 = *(v0 + 56);
        v13 = *(v0 + 64);
        v14 = *(v0 + 48);
        v15 = OUTLINED_FUNCTION_74_0();
        v34 = OUTLINED_FUNCTION_68();
        *v15 = 136315138;
        v16 = OUTLINED_FUNCTION_69_0();
        *(v15 + 4) = sub_2219A6360(v16, v17, v18);
        v19 = sub_221BCCCC8();
        _os_signpost_emit_with_name_impl(&dword_221989000, v3, v4, v19, v8, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();

        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v0 + 64);

LABEL_11:
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);
  v23 = *(v0 + 72);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 48), *(v0 + 96));
  v24 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v24);
  *(v0 + 144) = OUTLINED_FUNCTION_30_6();
  v25 = *(v21 + 8);
  v26 = OUTLINED_FUNCTION_4();
  v27(v26);
  v33 = (v23 + *v23);
  v28 = v23[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 152) = v29;
  *v29 = v30;
  v29[1] = sub_221A6802C;
  v31 = *(v0 + 80);
  v32 = *(v0 + 24);

  return v33(v32);
}

uint64_t sub_221A6802C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    v9 = sub_221A681A0;
  }

  else
  {
    v9 = sub_221A68128;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221A68128()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_138_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A681A0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_138_0();

  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 160);

  return v1();
}

void sub_221A685A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6();
}

uint64_t sub_221A68638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = sub_221BCCD08();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v16 = sub_221BCCCD8();
  v6[19] = v16;
  v17 = *(v16 - 8);
  v6[20] = v17;
  v18 = *(v17 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A6884C, 0, 0);
}

uint64_t sub_221A6884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v19 = v16[22];
  v21 = v16[17];
  v20 = v16[18];
  v22 = v16[15];
  v23 = v16[16];
  OUTLINED_FUNCTION_37_3();
  v24 = OUTLINED_FUNCTION_6_15();
  v17(v24);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v25 = OUTLINED_FUNCTION_14_11();
  v19(v25);
  v26 = v19;
  v27 = v18;
  v28 = a10;
  v29 = a11;
  v30 = OUTLINED_FUNCTION_36_7();
  v17(v30);
  v31 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v32 = v16[22];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v21 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v33, v34, v35, v36);
    v37 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v38, v39, v37, "needsDisambiguation", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v40 = OUTLINED_FUNCTION_35_6();
  v41(v40);
  v42 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v42);
  v16[23] = OUTLINED_FUNCTION_30_6();
  v43 = OUTLINED_FUNCTION_38_4();
  v26(v43);
  OUTLINED_FUNCTION_58_4(&unk_221BD8598);
  v57 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v16[24] = v45;
  *v45 = v46;
  v45[1] = sub_221A68A00;
  v47 = v16[11];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v57, a13, a14, a15, a16);
}

uint64_t sub_221A68A00()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A68AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_144_1();
  if (v21)
  {
    sub_2219A1CC8(v17, &unk_27CFB93C0, &qword_221BD3A60);
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_20_4();
    v22 = OUTLINED_FUNCTION_60_5();
    v23(v22);
    v24 = OUTLINED_FUNCTION_4();
    sub_221A0150C(v24, v25);
    OUTLINED_FUNCTION_85_2();
    v17 = v18;
    sub_221BCD798();
    v26 = *(v19 + 8);
    v27 = OUTLINED_FUNCTION_27();
    v28(v27);
    sub_221A133F4(v16);
  }

  OUTLINED_FUNCTION_10_12();
  sub_221A6BED8();

  v29 = OUTLINED_FUNCTION_133_2();
  v30(v29);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A68CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v11 = sub_221BCCD08();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v14 = sub_221BCCCD8();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A68EBC, 0, 0);
}

uint64_t sub_221A68EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_34_6();
  v21 = OUTLINED_FUNCTION_6_15();
  v19(v21);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v22 = OUTLINED_FUNCTION_14_11();
  v16(v22);
  v23 = v16;
  v24 = v20;
  v25 = a10;
  v26 = a11;
  v27 = OUTLINED_FUNCTION_36_7();
  v19(v27);
  v28 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v29 = v18[20];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v17 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v30, v31, v32, v33);
    v34 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v35, v36, v34, "needsChoice", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v37 = OUTLINED_FUNCTION_33_5();
  v38(v37);
  v39 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v39);
  v18[21] = OUTLINED_FUNCTION_30_6();
  v40 = OUTLINED_FUNCTION_38_4();
  v23(v40);
  OUTLINED_FUNCTION_58_4(dword_221BD8578);
  v54 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v18[22] = v42;
  *v42 = v43;
  v42[1] = sub_221A69064;
  v44 = v18[12];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, v54, a13, a14, a15, a16);
}

uint64_t sub_221A69064()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A69318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = sub_221BCCD08();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v16 = sub_221BCCCD8();
  v6[19] = v16;
  v17 = *(v16 - 8);
  v6[20] = v17;
  v18 = *(v17 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A6952C, 0, 0);
}

uint64_t sub_221A6952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v19 = v16[22];
  v21 = v16[17];
  v20 = v16[18];
  v22 = v16[15];
  v23 = v16[16];
  OUTLINED_FUNCTION_37_3();
  v24 = OUTLINED_FUNCTION_6_15();
  v17(v24);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v25 = OUTLINED_FUNCTION_14_11();
  v19(v25);
  v26 = v19;
  v27 = v18;
  v28 = a10;
  v29 = a11;
  v30 = OUTLINED_FUNCTION_36_7();
  v17(v30);
  v31 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v32 = v16[22];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v21 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v33, v34, v35, v36);
    v37 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v38, v39, v37, "needsValueWith", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v40 = OUTLINED_FUNCTION_35_6();
  v41(v40);
  v42 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v42);
  v16[23] = OUTLINED_FUNCTION_30_6();
  v43 = OUTLINED_FUNCTION_38_4();
  v26(v43);
  OUTLINED_FUNCTION_58_4(dword_221BD8558);
  v57 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v16[24] = v45;
  *v45 = v46;
  v45[1] = sub_221A696E0;
  v47 = v16[11];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v57, a13, a14, a15, a16);
}

uint64_t sub_221A696E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A697C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_144_1();
  if (v21)
  {
    sub_2219A1CC8(v17, &unk_27CFB93C0, &qword_221BD3A60);
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_20_4();
    v22 = OUTLINED_FUNCTION_60_5();
    v23(v22);
    v24 = OUTLINED_FUNCTION_4();
    sub_221A0150C(v24, v25);
    OUTLINED_FUNCTION_85_2();
    v17 = v18;
    sub_221BCD798();
    v26 = *(v19 + 8);
    v27 = OUTLINED_FUNCTION_27();
    v28(v27);
    sub_221A133F4(v16);
  }

  OUTLINED_FUNCTION_10_12();
  sub_221A6BED8();

  v29 = OUTLINED_FUNCTION_133_2();
  v30(v29);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A699C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93C0, &qword_221BD3A60) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v6[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = sub_221BCCD08();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v16 = sub_221BCCCD8();
  v6[19] = v16;
  v17 = *(v16 - 8);
  v6[20] = v17;
  v18 = *(v17 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A69BD8, 0, 0);
}

uint64_t sub_221A69BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v19 = v16[22];
  v21 = v16[17];
  v20 = v16[18];
  v22 = v16[15];
  v23 = v16[16];
  OUTLINED_FUNCTION_37_3();
  v24 = OUTLINED_FUNCTION_6_15();
  v17(v24);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v25 = OUTLINED_FUNCTION_14_11();
  v19(v25);
  v26 = v19;
  v27 = v18;
  v28 = a10;
  v29 = a11;
  v30 = OUTLINED_FUNCTION_36_7();
  v17(v30);
  v31 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v32 = v16[22];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v21 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v33, v34, v35, v36);
    v37 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v38, v39, v37, "needsConfirmationWith", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v40 = OUTLINED_FUNCTION_35_6();
  v41(v40);
  v42 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v42);
  v16[23] = OUTLINED_FUNCTION_30_6();
  v43 = OUTLINED_FUNCTION_38_4();
  v26(v43);
  OUTLINED_FUNCTION_58_4(dword_221BD8538);
  v57 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v16[24] = v45;
  *v45 = v46;
  v45[1] = sub_221A69D8C;
  v47 = v16[11];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v57, a13, a14, a15, a16);
}

uint64_t sub_221A69D8C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A69E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_144_1();
  if (v21)
  {
    sub_2219A1CC8(v17, &unk_27CFB93C0, &qword_221BD3A60);
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_20_4();
    v22 = OUTLINED_FUNCTION_60_5();
    v23(v22);
    v24 = OUTLINED_FUNCTION_4();
    sub_221A0150C(v24, v25);
    OUTLINED_FUNCTION_85_2();
    v17 = v18;
    sub_221BCD798();
    v26 = *(v19 + 8);
    v27 = OUTLINED_FUNCTION_27();
    v28(v27);
    sub_221A133F4(v16);
  }

  OUTLINED_FUNCTION_10_12();
  sub_221A6BED8();

  v29 = OUTLINED_FUNCTION_133_2();
  v30(v29);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A6A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v11 = sub_221BCCD08();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v14 = sub_221BCCCD8();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A6A248, 0, 0);
}

uint64_t sub_221A6A248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_34_6();
  v21 = OUTLINED_FUNCTION_6_15();
  v19(v21);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v22 = OUTLINED_FUNCTION_14_11();
  v16(v22);
  v23 = v16;
  v24 = v20;
  v25 = a10;
  v26 = a11;
  v27 = OUTLINED_FUNCTION_36_7();
  v19(v27);
  v28 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v29 = v18[20];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v17 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v30, v31, v32, v33);
    v34 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v35, v36, v34, "needsActionConfirmationWith", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v37 = OUTLINED_FUNCTION_33_5();
  v38(v37);
  v39 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v39);
  v18[21] = OUTLINED_FUNCTION_30_6();
  v40 = OUTLINED_FUNCTION_38_4();
  v23(v40);
  OUTLINED_FUNCTION_58_4(dword_221BD8510);
  v54 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v18[22] = v42;
  *v42 = v43;
  v42[1] = sub_221A6A3F0;
  v44 = v18[12];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, v54, a13, a14, a15, a16);
}

uint64_t sub_221A6A3F0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A6A6A4(void *a1, void *a2, void (*a3)(void *, uint64_t *, uint64_t *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  a3(a2, &OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_payloadPrivacy, &OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier);
  v13 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
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

uint64_t sub_221A6A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v11 = sub_221BCCD08();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v14 = sub_221BCCCD8();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A6A990, 0, 0);
}

uint64_t sub_221A6A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_34_6();
  v21 = OUTLINED_FUNCTION_6_15();
  v19(v21);
  sub_221BCCCF8();
  sub_221BCCCB8();
  v22 = OUTLINED_FUNCTION_14_11();
  v16(v22);
  v23 = v16;
  v24 = v20;
  v25 = a10;
  v26 = a11;
  v27 = OUTLINED_FUNCTION_36_7();
  v19(v27);
  v28 = sub_221BCCCF8();
  sub_221BCDBC8();
  if (OUTLINED_FUNCTION_166_0())
  {
    v29 = v18[20];
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_110_2();
    *(v17 + 4) = OUTLINED_FUNCTION_44_3(4.8149e-34, v30, v31, v32, v33);
    v34 = sub_221BCCCC8();
    OUTLINED_FUNCTION_47_3(&dword_221989000, v35, v36, v34, "needsContinueInAppWith", "%s");
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v37 = OUTLINED_FUNCTION_33_5();
  v38(v37);
  v39 = sub_221BCCD48();
  OUTLINED_FUNCTION_130_1(v39);
  v18[21] = OUTLINED_FUNCTION_30_6();
  v40 = OUTLINED_FUNCTION_38_4();
  v23(v40);
  OUTLINED_FUNCTION_58_4(dword_221BD84F0);
  v54 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v18[22] = v42;
  *v42 = v43;
  v42[1] = sub_221A6AB38;
  v44 = v18[12];
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_28_0();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, v54, a13, a14, a15, a16);
}

uint64_t sub_221A6AB38()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A6AE2C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221A6AEC4;

  return sub_221A6ADF4();
}

uint64_t sub_221A6AEC4()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  OUTLINED_FUNCTION_21_0();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  v5[2](v5, v2 & 1);
  _Block_release(v5);
  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221A6AFD8()
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
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_210();
  v10 = sub_221BCC558();
  v1[9] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A6B108()
{
  v75 = v0;
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
    v3 = OUTLINED_FUNCTION_74_0();
    v10 = OUTLINED_FUNCTION_68();
    v74 = v10;
    *v3 = 136315138;
    v11 = [v9 identifier];
    sub_221BCC528();

    OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
    sub_221BCE168();
    OUTLINED_FUNCTION_242_0();
    (*(v6 + 8))(v7, v8);
    sub_2219A6360(v11, off_278482000, &v74);
    OUTLINED_FUNCTION_124_2();

    *(v3 + 1) = v7;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v12, v13, "[%s] Received environmentForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v14 = v0[8];
  v15 = v0[3];
  OUTLINED_FUNCTION_221_1((v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_environment));
  OUTLINED_FUNCTION_40_0(v3);
  v16 = OUTLINED_FUNCTION_27();
  v17(v16);
  sub_221BCC568();
  v18 = v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_snippetEnvironment;
  v19 = *(v15 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_snippetEnvironment + 96);
  if (v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = v0[5];
    v22 = v0[6];
    v23 = v0[4];
    v24 = *(v18 + 99);
    v25 = *(v18 + 98);
    v26 = *(v18 + 97);
    v27 = *(v18 + 80);
    v69 = *(v18 + 72);
    v71 = *(v18 + 88);
    v65 = *(v18 + 56);
    v67 = *(v18 + 64);
    v28 = *(v18 + 40);
    v29 = *(v18 + 48);
    v31 = *v18;
    v30 = *(v18 + 8);
    (*(v0[7] + 16))(v21, v0[8], v22);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    v32 = OUTLINED_FUNCTION_118();
    sub_2219BAF0C(v32, v33, &qword_27CFB82E0, v34);
    v35 = objc_allocWithZone(MEMORY[0x277D23C80]);
    v20 = sub_221A6C6C4(v23, v28, v29, v65, v67, v69, v71, v19 & 1, v31, v30, v27, v26 & 1, v25 & 1, v24 & 1);
    sub_2219A1CC8(v21, &qword_27CFB82E0, &qword_221BD2C30);
  }

  v36 = v0[2];
  v37 = v20;
  v38 = v36;
  v39 = sub_221BCCD68();
  v40 = sub_221BCDA98();

  if (os_log_type_enabled(v39, v40))
  {
    v64 = v40;
    v42 = v0[10];
    v41 = v0[11];
    v43 = v0[9];
    v70 = v0[7];
    v72 = v0[6];
    v73 = v0[8];
    v44 = v0[2];
    v45 = OUTLINED_FUNCTION_103();
    v66 = OUTLINED_FUNCTION_127_3();
    v68 = OUTLINED_FUNCTION_68();
    v74 = v68;
    *v45 = 136315394;
    v46 = [v44 identifier];
    sub_221BCC528();

    OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
    sub_221BCE168();
    (*(v42 + 8))(v41, v43);
    v47 = OUTLINED_FUNCTION_85_2();
    v50 = sub_2219A6360(v47, v48, v49);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v37;
    *v66 = v20;
    v51 = v37;
    _os_log_impl(&dword_221989000, v39, v64, "[%s] Responding to environment for view snippet | snippetEnvironment=%@", v45, 0x16u);
    sub_2219A1CC8(v66, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    (*(v70 + 8))(v73, v72);
  }

  else
  {
    v53 = v0[7];
    v52 = v0[8];
    v54 = v0[6];

    v55 = *(v53 + 8);
    v56 = OUTLINED_FUNCTION_16();
    v57(v56);
  }

  v58 = v0[11];
  v59 = v0[8];
  v61 = v0[4];
  v60 = v0[5];

  v62 = v0[1];

  return v62(v20);
}

uint64_t sub_221A6B63C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2219F5FE4;

  return sub_221A6AFD8();
}

uint64_t sub_221A6B700()
{
  OUTLINED_FUNCTION_1_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_221BCC558();
  v1[7] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A6B7A4()
{
  OUTLINED_FUNCTION_200_0();
  v49 = v0;
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
    v10 = OUTLINED_FUNCTION_74_0();
    v46 = v2;
    v48 = OUTLINED_FUNCTION_68();
    v11 = v48;
    *v10 = 136315138;
    v12 = [v9 identifier];
    sub_221BCC528();

    OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
    sub_221BCE168();
    OUTLINED_FUNCTION_242_0();
    (*(v6 + 8))(v7, v8);
    sub_2219A6360(v12, off_278482000, &v48);
    OUTLINED_FUNCTION_124_2();

    *(v10 + 4) = v7;
    OUTLINED_FUNCTION_22_6(&dword_221989000, v13, v14, "[%s] Received preferredContentSizeForViewSnippet request");
    __swift_destroy_boxed_opaque_existential_0(v11);
    v2 = v46;
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v15 = *(v0 + 48) + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_snippetEnvironment;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v18 = *(v15 + 32);
  v19 = *(v15 + 96) == 2;
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v16;
  }

  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v17;
  }

  v22 = v19 | v18;
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 40);
  __swift_project_value_buffer(v2, qword_280FA9008);
  v24 = v23;
  v25 = sub_221BCCD68();
  v26 = sub_221BCDA98();

  if (os_log_type_enabled(v25, v26))
  {
    v45 = v26;
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);
    v47 = v20;
    v30 = *(v0 + 40);
    v31 = OUTLINED_FUNCTION_103();
    v48 = OUTLINED_FUNCTION_105();
    *v31 = 136315394;
    v32 = [v30 identifier];
    sub_221BCC528();

    OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
    v33 = sub_221BCE168();
    v34 = v21;
    v36 = v35;
    (*(v28 + 8))(v27, v29);
    v37 = v33;
    v20 = v47;
    sub_2219A6360(v37, v36, &v48);
    v21 = v34;

    OUTLINED_FUNCTION_132_1();
    *(v0 + 16) = v47;
    *(v0 + 24) = v34;
    *(v0 + 32) = v22 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82D0, &qword_221BD2C10);
    v38 = sub_221BCD3F8();
    v40 = sub_2219A6360(v38, v39, &v48);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_221989000, v25, v45, "[%s] Responding to preferred content size for view snippet | size=%s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  if (v22)
  {
    v41 = 0;
  }

  else
  {
    v41 = [objc_opt_self() valueWithSize_];
  }

  v42 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43(v41);
}

uint64_t sub_221A6BBE4(void *a1, int a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  OUTLINED_FUNCTION_152_1();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v4;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_0_0();

  return sub_221A65FB8(v10, v11);
}

uint64_t sub_221A6BC60(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2219F70E8;

  return sub_221A6B700();
}

uint64_t sub_221A6BD24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t *))
{
  v23 = a5;
  v24 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v22 - v15;
  (*(v12 + 16))(&v22 - v15, a3, v9);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  (*(v12 + 32))(v18 + v17, v16, v9);
  v19 = a1;
  v24(a2, v23, v18, &OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_executionIdentifier, &OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_pendingRequests);

  v20 = OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_completion;
  swift_beginAccess();
  (*(v12 + 24))(&v19[v20], a3, v9);
  return swift_endAccess();
}

void sub_221A6BED8()
{
  OUTLINED_FUNCTION_21();
  v38 = v0;
  v39 = v1;
  v3 = v2;
  v4 = sub_221BCCD18();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = sub_221BCCCD8();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  v21 = sub_221BCCD08();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  v29 = v28 - v27;
  (*(v24 + 16))(v28 - v27, v3 + OBJC_IVAR____TtCC18AppIntentsServices21RemoteAppIntentsActor29PerformActionExecutorDelegate_signposter, v21);
  v30 = sub_221BCCCF8();
  sub_221BCCD28();
  v35 = sub_221BCDBB8();
  if ((sub_221BCDC78() & 1) == 0)
  {
LABEL_13:

    (*(v15 + 8))(v20, v12);
    (*(v24 + 8))(v29, v21);
    OUTLINED_FUNCTION_22();
    return;
  }

  v34 = v12;
  if ((v38 & 1) == 0)
  {
    if (v39)
    {
LABEL_9:

      sub_221BCCD58();

      if ((*(v36 + 88))(v11, v37) == *MEMORY[0x277D85B00])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v36 + 8))(v11, v37);
        v31 = "";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v30, v35, v33, v39, v31, v32, 2u);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v12 = v34;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v39 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v39 & 0xFFFFF800) != 0xD800)
  {
    if (v39 >> 16 <= 0x10)
    {
      v39 = &v40;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void sub_221A6C1F0()
{
  v0 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_221A663E8();
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

uint64_t _s29PerformActionExecutorDelegateCMa()
{
  result = qword_27CFB9380;
  if (!qword_27CFB9380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221A6C4CC()
{
  sub_221A13158();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_221BCCD08();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_221BCC558();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_221A6C630()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_71(v5);

  return v8(v7);
}

id sub_221A6C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = sub_221BCC588();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    v24 = sub_221BCC578();
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:v24 locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

uint64_t sub_221A6C80C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2219EC5F0;

  return v7();
}

uint64_t sub_221A6C8F4()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_3(v5);
  *v6 = v7;
  v6[1] = sub_2219EC5F0;
  v8 = OUTLINED_FUNCTION_4();

  return v9(v8);
}

uint64_t sub_221A6C9A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2219CA70C;

  return v8();
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_221A6CAD0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v6[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_125_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A6CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2219BAF0C(a3, v25 - v11, &unk_27CFB82F0, &qword_221BD2C40);
  v13 = sub_221BCD7F8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2219A1CC8(v12, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    sub_221BCD7E8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_221BCD778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_221BCD408() + 32;
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

      sub_2219A1CC8(a3, &unk_27CFB82F0, &qword_221BD2C40);

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

  sub_2219A1CC8(a3, &unk_27CFB82F0, &qword_221BD2C40);
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

uint64_t sub_221A6CE54(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221A6CF4C;

  return v7(a1);
}

uint64_t sub_221A6CF4C()
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

uint64_t sub_221A6D030()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_12(v4);

  return v7(v6);
}

uint64_t sub_221A6D0C4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_71(v5);

  return v8(v7);
}

uint64_t sub_221A6D158()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_71(v5);

  return v8(v7);
}

uint64_t sub_221A6D1EC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A6A7B8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A6D278()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A6A070(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A6D304()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A699C4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A6D390()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A69318(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221A6D41C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A68CE4(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_221A6D4F8()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_1_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_24(v1);
  OUTLINED_FUNCTION_125_1();

  return sub_221A68638(v3, v4, v5, v6, v7, v8);
}

void *sub_221A6D58C(uint64_t a1)
{
  v2 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_120_0();
      v2 = sub_221A6D924(v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_221BB5B90(0, v4, v20 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_120_0();
  sub_221A6D6F0(v5, v6, v7, v8, v9, v10);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v11;
  }

LABEL_5:
  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_221A6D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v33 = sub_221BCC558();
  v7 = OUTLINED_FUNCTION_0_2(v33);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v32 = v12 - v11;
  v13 = 0;
  v35 = a3;
  v30 = 0;
  v31 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v10;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v36 = (v16 - 1) & v16;
LABEL_11:
    v22 = v19 | (v13 << 6);
    (*(v18 + 16))(v32, *(v35 + 48) + *(v18 + 72) * v22, v33);
    v23 = v22;
    v24 = *(*(v35 + 56) + 8 * v22);
    v25 = OUTLINED_FUNCTION_190_1();
    LOBYTE(v22) = a4(v25);

    (*(v18 + 8))(v32, v33);
    v16 = v36;
    if (v22)
    {
      *(a1 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_15:
        a6(a1, a2, v30, v35);
        return;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v17)
    {
      goto LABEL_15;
    }

    v21 = *(v31 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v36 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_221A6D924(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_221A6D6F0(v11, a2, a3, a4, a5, a6);
    v13 = v12;

    return v13;
  }

  return result;
}

uint64_t sub_221A6D9C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_221BCC558();
    OUTLINED_FUNCTION_25_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221A6DA04(uint64_t a1)
{
  v3 = v2;
  v5 = sub_221BCCCD8();
  OUTLINED_FUNCTION_18_4(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2219EC5F0;

  return sub_221A66C28(a1, v10, v11, v12, v1 + v7, v13, v14);
}

uint64_t sub_221A6DB40()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v6[1] = sub_2219CA70C;
  v8 = OUTLINED_FUNCTION_6_12();

  return sub_221A66E60(v8, v9, v10, v11, v3);
}

id sub_221A6DCCC(id result, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
    return result;
  }

  return result;
}

void sub_221A6DDC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  sub_221A6C1F0();
}

uint64_t OUTLINED_FUNCTION_0_39(unint64_t *a1)
{

  return sub_221A6D9C4(a1);
}

void OUTLINED_FUNCTION_9_13()
{
  v1 = v0[21];
  v2 = v0[18];
  v11 = v0[20];
  v12 = v0[19];
  v3 = v0[16];
  v13 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
}

void OUTLINED_FUNCTION_10_12()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[11];
  v14 = v0[10];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
}

void OUTLINED_FUNCTION_13_10()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_221BCCD38();
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = *(v0[18] + 16);
  return v0[19];
}

void OUTLINED_FUNCTION_34_6()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[6];
  v8 = v0[7];
  v6 = v0[5];
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = *(v0[20] + 16);
  return v0[21];
}

void OUTLINED_FUNCTION_37_3()
{
  v2 = v0[6];
  v3 = v0[7];
  v1 = v0[5];
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  v3 = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v5 = a1;

  return sub_2219A6360(0, 0xE000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_47_3(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v8, a4, a5, a6, v7, 0xCu);
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return sub_2219F6C8C(v2, v1, v0);
}

void OUTLINED_FUNCTION_55_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_59_5(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  *v11 = a1;
  v13 = *a11;

  return sub_221BCC558();
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17[12] = a15;
  v17[13] = a17;
  v17[14] = a16;
  v17[15] = a13;
  v17[16] = a14;
  v17[17] = v18;
  v17[18] = 0;
  v17[19] = 0;
  v17[20] = a11;
  v17[21] = a12;
  v21 = *(v19 + 32);
  return v20;
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v3 = v1[13];
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[14];

  return sub_221A13568(v0, v8);
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[12] = v13;
  v14[13] = v12;
  v14[14] = a11;
  v14[15] = a9;
  v14[16] = a10;
  v14[17] = v16;
  v14[18] = 0;
  v14[19] = 0;
  v14[20] = v17;
  v14[21] = v18;
  v19 = *(v11 + 32);
  return v15;
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = (v19 + *(a1 + 28));
  *v24 = v22;
  v24[1] = v21;
  v24[2] = v18;
  v24[3] = v17;
  v24[4] = a10;
  v24[5] = v20;
  v24[6] = a16;
  v24[7] = 0;
  v24[8] = 0;
  v24[9] = a11;
  v24[10] = a17;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

void OUTLINED_FUNCTION_77_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_80_3(uint64_t a1)
{
  *(v2 + 200) = a1;

  sub_2219BCDE0(v1, v3, v4, (a1 + 16));
}

void OUTLINED_FUNCTION_86_2(uint64_t a1)
{
  *(v2 + 176) = a1;

  sub_2219BCDE0(v3, v1, v4, (a1 + 16));
}

uint64_t OUTLINED_FUNCTION_93_1()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  result = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_95_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = (v16 + *(result + 28));
  *v17 = a15;
  v17[1] = a14;
  v17[2] = a11;
  v17[3] = a12;
  v17[4] = v15;
  v17[5] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{
  v7 = v4 + *(a1 + 28);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = v3;
  *(v7 + 80) = v5;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_101_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v16 = a15[6];
  v17 = a15[7];
  v18 = a15[5];
  v19 = a15[2];

  return sub_2219F6D20(a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_103_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21[14] = v25;
  v21[15] = a19;
  v21[16] = v19;
  v21[17] = v22;
  v21[18] = v23;
  sub_22198B358(a10, (v21 + 19));
  v21[24] = a15;
  v26 = *(v24 + 32);
  return v20;
}

void OUTLINED_FUNCTION_105_2()
{
  *(v4 + 16) = v2;
  v7 = v4 + 32 * v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = v3;
  *(v7 + 48) = v0;
  *(v7 + 56) = v1;
}

void *OUTLINED_FUNCTION_106_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __src)
{
  *(v18 + 16) = v19;

  return memcpy((v18 + 96 * v20 + 32), &__src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_107_3()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  result = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  return result;
}

void OUTLINED_FUNCTION_108_2()
{
  *(v0 + 16) = v4;
  v7 = v0 + 32 * v2;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *(v7 + 56) = v1;
}

void OUTLINED_FUNCTION_112_2()
{
  v3 = (v1 + *v0);

  os_unfair_lock_lock(v3);
}

uint64_t OUTLINED_FUNCTION_113_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (v13 + a1);
  v16 = *v14;
  v15 = v14[1];
  v17 = *(v12 + 32);
  return a12;
}

uint64_t OUTLINED_FUNCTION_114_2(float a1)
{
  *v2 = a1;
  v4 = *v1;

  return sub_221BCC558();
}

void *OUTLINED_FUNCTION_115_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{
  *(v25 + 16) = v24;

  return memcpy((v25 + 96 * v23 + 32), &__src, 0x60uLL);
}

BOOL OUTLINED_FUNCTION_116_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_117_2()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

void OUTLINED_FUNCTION_121_2(uint64_t a1)
{

  sub_2219BCDE0(v2, v3, v1, (a1 + 16));
}

void OUTLINED_FUNCTION_122_2(uint64_t a1)
{

  sub_2219BCDE0(v1, v2, v3, (a1 + 16));
}

double OUTLINED_FUNCTION_126_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11 + *(a1 + 28);
  *v12 = a11;
  *(v12 + 8) = a10;
  result = 0.0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_129_2(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((a1 + v1));
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_136_1()
{
  *(v3 - 80) = v1;

  return sub_2219F6C8C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_137_1@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1[6] = a9;
  a1[7] = v12;
  a1[10] = v9;
  a1[11] = v10;
  a1[12] = v11;
  a1[13] = v14;
  a1[14] = v13;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

void OUTLINED_FUNCTION_138_0()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 168);

  sub_221A6BED8();
}

uint64_t OUTLINED_FUNCTION_139_0()
{
  v2 = v0[36];
  v7 = v0[35];
  v3 = v0[34];
  v6 = v0[33];
  v4 = v0[30];
}

uint64_t OUTLINED_FUNCTION_140_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v6 + 4) = v3;
  *(v6 + 12) = 2080;

  return sub_2219A6360(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_146_1()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  result = v0[32];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  return result;
}

__n128 OUTLINED_FUNCTION_154_1()
{
  v1 = *(v0 + 72);
  result = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_158_1()
{
  result = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_159_0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  result = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[32];
  return result;
}

id OUTLINED_FUNCTION_161_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v18 = a17[4];
  __swift_project_boxed_opaque_existential_0(a17, a17[3]);
  v19 = *(v18 + 24);

  return a1;
}

uint64_t OUTLINED_FUNCTION_163_1@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v2 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_166_0()
{

  return sub_221BCDC78();
}

uint64_t OUTLINED_FUNCTION_167_0(uint64_t a1, uint64_t a2)
{
  v5 = v3[31];
  v9 = v3[32];
  v6 = v3[30];
  v7 = v3[27];

  return sub_2219F6D20(a1, a2, v2);
}

void OUTLINED_FUNCTION_168_1()
{
}

uint64_t OUTLINED_FUNCTION_169_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  *(a1 + 48) = v2;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_170_1(uint64_t a1)
{

  return sub_221B85944(v1, a1);
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t a1)
{

  return sub_221B85944(v1, a1);
}

uint64_t OUTLINED_FUNCTION_172_1@<X0>(void *a1@<X8>)
{
  a1[6] = 0;
  a1[7] = v3;
  a1[10] = v1;
  a1[11] = v2;
  a1[12] = v5;
  a1[13] = v4;
  a1[14] = v6;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

id OUTLINED_FUNCTION_173_1@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3)
{
  *(v4 + 22) = a1;
  *(v4 + 24) = v3;
  *v5 = a3;
  *(v4 + 32) = a1;

  return v3;
}

id OUTLINED_FUNCTION_174_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = a11[4];
  __swift_project_boxed_opaque_existential_0(a11, a11[3]);
  v13 = *(v12 + 24);

  return a1;
}

BOOL OUTLINED_FUNCTION_176_1()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_179_0()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

double OUTLINED_FUNCTION_180_0()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_188_1()
{
  v2 = v0[6];
  result = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  return result;
}

__n128 OUTLINED_FUNCTION_199_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v9 + *(a1 + 28)) = a9;
  return result;
}

void OUTLINED_FUNCTION_205_0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  sub_2219BCDE0(a1, a2, v3, a3);
}

void OUTLINED_FUNCTION_206_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_207_1(uint64_t a1, uint64_t a2)
{

  return sub_221B85444(a1, a2);
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
}

uint64_t OUTLINED_FUNCTION_210_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_211_1()
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_212_0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__src)
{
  v21 = (v19 + *(a1 + 28));

  return memcpy(v21, __src, 0xA0uLL);
}

void *OUTLINED_FUNCTION_213_1(uint64_t a1)
{
  v4 = (v2 + *(a1 + 28));

  return memcpy(v4, (v1 + 16), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_215_0()
{
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[30];
}

uint64_t OUTLINED_FUNCTION_216_0()
{

  return sub_221BCCD68();
}

id OUTLINED_FUNCTION_217_1()
{

  return [v0 (v1 + 223)];
}

uint64_t OUTLINED_FUNCTION_218_1()
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_219_1()
{

  return [v0 (v1 + 223)];
}

id OUTLINED_FUNCTION_220_1(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{

  return [a11 a2];
}

void *OUTLINED_FUNCTION_221_1(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return __swift_project_boxed_opaque_existential_0(a1, v3);
}

uint64_t OUTLINED_FUNCTION_222_1()
{

  return sub_221BCCD68();
}

void OUTLINED_FUNCTION_223_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  os_unfair_lock_unlock(v11);
}

id OUTLINED_FUNCTION_226_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

id OUTLINED_FUNCTION_227_1(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

uint64_t sub_221A6EEFC()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Action(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A6EF40()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Action(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A6EF9C()
{
  v1 = (v0 + *(type metadata accessor for AppIntentsProtobuf_Action(0) + 48));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_221A6EFD0()
{
  v2 = OUTLINED_FUNCTION_40_3();
  result = type metadata accessor for AppIntentsProtobuf_Action(v2);
  v4 = v1 + *(result + 48);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_221A6F034()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_29_8();
  v5 = type metadata accessor for AppIntentsProtobuf_Action(v4);
  OUTLINED_FUNCTION_145_1(*(v5 + 52));
  OUTLINED_FUNCTION_95_3();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  OUTLINED_FUNCTION_16_10();
  if (v6)
  {
    OUTLINED_FUNCTION_137_2(xmmword_221BD8630);
    result = OUTLINED_FUNCTION_16_10();
    if (!v6)
    {
      return sub_2219A1CC8(v0, &qword_27CFB95E0, &qword_221BE0A10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6F108()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_Action(v1);
  sub_2219A1CC8(v0 + *(v2 + 52), &qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_103_4();
  sub_221A8554C();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v3 = OUTLINED_FUNCTION_144_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A6F178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_29_8();
  v5 = type metadata accessor for AppIntentsProtobuf_Action(v4);
  OUTLINED_FUNCTION_145_1(*(v5 + 52));
  sub_221A1C558();
  v6 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  OUTLINED_FUNCTION_49_4(v0, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v9, v10, &qword_221BE0A10);
  return v8;
}

BOOL sub_221A6F23C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_221A6F29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A855FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_221A6F310@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = 0;
  v1[4] = v3;
  v1[5] = v2;
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v5 = v1 + v4[8];
  sub_221BCC8C8();
  OUTLINED_FUNCTION_110_3(v4[9]);
  *(v6 + 8) = 256;
  OUTLINED_FUNCTION_68_2(v4[10]);
  *(v1 + v4[11]) = 2;
  OUTLINED_FUNCTION_92_4(v4[12]);
  v7 = v4[13];
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v8 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_221A6F3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v6);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_16_10();
  if (v7)
  {
    sub_221A6F478(a1);
    result = OUTLINED_FUNCTION_16_10();
    if (!v7)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB790, &qword_221BDADD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

void sub_221A6F478(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = OUTLINED_FUNCTION_147_1();
  *(a1 + 80) = v2;
  *(a1 + 88) = OUTLINED_FUNCTION_147_1();
  v3 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v4 = a1 + v3[15];
  sub_221BCC8C8();
  OUTLINED_FUNCTION_68_2(v3[16]);
  *(a1 + v3[17]) = xmmword_221BD8640;
  OUTLINED_FUNCTION_68_2(v3[18]);
  OUTLINED_FUNCTION_68_2(v3[19]);
}

uint64_t sub_221A6F524()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6F638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v8);
  v9 = *a1;
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_96_4();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_16_10();
  if (v10)
  {
    sub_221A6F310(a2);
    result = OUTLINED_FUNCTION_16_10();
    if (!v10)
    {
      return sub_2219A1CC8(v2, &unk_27CFBB690, &qword_221BDADD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6F738()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6F840(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_75_5();
  v14 = *(v4 + v13);
  v15 = *a3;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  a4(0);
  v16 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v16, v17, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_2219A1CC8(v5, a1, a2);
  return v20;
}

uint64_t sub_221A6F918()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FA20()
{
  v1 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v4);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_16_10();
  if (v5)
  {
    OUTLINED_FUNCTION_137_2(xmmword_221BD8630);
    result = OUTLINED_FUNCTION_16_10();
    if (!v5)
    {
      return sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A6FAF8@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_221BD8630;
  v2 = a2 + *(a1(0) + 20);
  return sub_221BCC8C8();
}

uint64_t sub_221A6FB40()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FC48@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v6);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  v7 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_16_10();
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    a1[1] = v9;
    v10 = a1 + v7[6];
    sub_221BCC8C8();
    OUTLINED_FUNCTION_68_2(v7[7]);
    OUTLINED_FUNCTION_68_2(v7[8]);
    result = OUTLINED_FUNCTION_16_10();
    if (!v8)
    {
      return sub_2219A1CC8(v1, &qword_27CFB9928, &qword_221BE4A20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

void sub_221A6FD3C(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_101_3(v3);
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(*(v3 + 32));
}

uint64_t sub_221A6FD88()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A6FE90@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_117_3(v6);
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_87_3();
  v7 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_16_10();
  if (v8)
  {
    OUTLINED_FUNCTION_137_2(xmmword_221BD8630);
    OUTLINED_FUNCTION_68_2(v7[6]);
    OUTLINED_FUNCTION_68_2(v7[7]);
    OUTLINED_FUNCTION_68_2(v7[8]);
    *(a1 + v7[9]) = xmmword_221BD8640;
    result = OUTLINED_FUNCTION_16_10();
    if (!v8)
    {
      return sub_2219A1CC8(v1, &qword_27CFB9920, &unk_221BDADC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

double sub_221A6FF90@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_221BD8630;
  v3 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_99_2(v3);
  OUTLINED_FUNCTION_68_2(v1[6]);
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(v1[8]);
  result = 0.0;
  *(a1 + v1[9]) = xmmword_221BD8640;
  return result;
}

uint64_t sub_221A6FFEC()
{
  OUTLINED_FUNCTION_121_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_81_4();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    OUTLINED_FUNCTION_124_3(v7);
  }

  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_1();
  v8 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_70_5(v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A700F4()
{
  OUTLINED_FUNCTION_75_5();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
  OUTLINED_FUNCTION_106_3();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_221A70148()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_40_3();
  v4 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    v7 = v8;
    *(v2 + v4) = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  result = swift_beginAccess();
  *v9 = v0;
  *(v9 + 8) = 0;
  return result;
}

BOOL sub_221A701D0()
{
  OUTLINED_FUNCTION_75_5();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  OUTLINED_FUNCTION_106_3();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_221A70220@<X0>(uint64_t a1@<X8>)
{
  sub_221BCC8C8();
  v2 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
  if (qword_27CFB6DA0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CFB9450;
}

uint64_t sub_221A7029C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  OUTLINED_FUNCTION_101_3(v3);
  sub_221BCC8C8();
  v4 = *(v3 + 28);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(a1 + *(v3 + 32)) = 2;
  return result;
}

uint64_t sub_221A7030C()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 64)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70350()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A703AC()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 72)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A703F0()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A7044C()
{
  v0 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 76)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70490()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70594(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A85844();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void sub_221A705EC(uint64_t a1@<X8>)
{
  sub_221BCC8C8();
  v2 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  *(a1 + *(v2 + 20)) = xmmword_221BD8640;
  OUTLINED_FUNCTION_92_4(*(v2 + 24));
  OUTLINED_FUNCTION_110_3(*(v3 + 28));
  *(v4 + 8) = v5;
}

uint64_t sub_221A70690@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_29_8();
  v8 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v7);
  OUTLINED_FUNCTION_145_1(*(v8 + 32));
  OUTLINED_FUNCTION_95_3();
  sub_221A1C558();
  v9 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_16_10();
  if (v10)
  {
    sub_221BCC8C8();
    *(a1 + v9[5]) = xmmword_221BD8640;
    OUTLINED_FUNCTION_110_3(v9[6]);
    *(v11 + 8) = 1;
    OUTLINED_FUNCTION_110_3(v9[7]);
    *(v12 + 8) = 1;
    result = OUTLINED_FUNCTION_16_10();
    if (!v10)
    {
      return sub_2219A1CC8(v1, &qword_27CFB85E8, &unk_221BD86E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_55_3();
    return sub_221A8554C();
  }

  return result;
}

uint64_t sub_221A7078C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v1);
  sub_2219A1CC8(v0 + *(v2 + 32), &qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_103_4();
  sub_221A8554C();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v3 = OUTLINED_FUNCTION_144_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A707FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  v6 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v5);
  OUTLINED_FUNCTION_145_1(*(v6 + 32));
  sub_221A1C558();
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_49_4(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v10, v11, &unk_221BD86E0);
  return v9;
}

uint64_t sub_221A708AC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  OUTLINED_FUNCTION_101_3(v2);
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  v3 = *(v2 + 32);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_221A70928(uint64_t (*a1)(void))
{
  v1 = a1(0);
  if (OUTLINED_FUNCTION_113_4(*(v1 + 28)))
  {
    OUTLINED_FUNCTION_112_3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A7098C()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_134_2(*(v5 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void sub_221A709EC(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  OUTLINED_FUNCTION_101_3(v3);
  sub_221BCC8C8();
  OUTLINED_FUNCTION_64_4();
  *(a1 + *(v3 + 32)) = 2;
}

uint64_t sub_221A70A3C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  OUTLINED_FUNCTION_101_3(v1);
  sub_221BCC8C8();
  v2 = v1[7];
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_68_2(v1[8]);
  v7 = v1[9];
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v8 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_221A70AC8(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  OUTLINED_FUNCTION_99_2(v2);
  v3 = *(v1 + 24);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_68_2(*(v1 + 32));
}

uint64_t sub_221A70B30@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_101_3(v3);
  return sub_221BCC8C8();
}

uint64_t sub_221A70B64@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(v1[6]);
  OUTLINED_FUNCTION_92_4(v1[7]);
  OUTLINED_FUNCTION_68_2(v1[8]);
  v3 = v1[9];
  type metadata accessor for AppIntentsProtobuf_Error(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221A70BC8(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(*(v1 + 24));
  OUTLINED_FUNCTION_64_4();
}

void sub_221A70C00(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  OUTLINED_FUNCTION_99_2(v2);
  OUTLINED_FUNCTION_68_2(*(v1 + 24));
}

uint64_t sub_221A70C34@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v2 = type metadata accessor for AppIntentsProtobuf_Property(0);
  OUTLINED_FUNCTION_99_2(v2);
  v3 = *(v1 + 24);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_221A70C80@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  OUTLINED_FUNCTION_101_3(v3);
  return sub_221BCC8C8();
}

uint64_t sub_221A70CBC@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 44) = 0u;
  v3 = a1 + *(v2 + 60);
  sub_221BCC8C8();
  v4 = *(v2 + 64);
  type metadata accessor for AppIntentsProtobuf_Size(0);
  v5 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_221A70D24@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  v3 = v1 + *(v2(0) + 20);
  return sub_221BCC8C8();
}

uint64_t sub_221A70D60()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70DA4()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70E54()
{
  v0 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  if (OUTLINED_FUNCTION_113_4(*(v0 + 32)))
  {
    OUTLINED_FUNCTION_112_3(v1);
  }

  else
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A70E98()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(v3);
  result = OUTLINED_FUNCTION_134_2(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A70EF4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDD9D8);
  __swift_project_value_buffer(v0, qword_27CFDD9D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundleIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mangledTypeName";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "openAppWhenRun";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "outputFlags";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "outputType";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "systemProtocols";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A71270()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
      case 2:
        OUTLINED_FUNCTION_5_17();
        sub_221A7135C();
        break;
      case 4:
        OUTLINED_FUNCTION_5_17();
        sub_221A713FC();
        break;
      case 5:
        OUTLINED_FUNCTION_5_17();
        sub_221A71470();
        break;
      case 6:
        OUTLINED_FUNCTION_5_17();
        sub_221A714D4();
        break;
      case 7:
        OUTLINED_FUNCTION_5_17();
        sub_221A71538();
        break;
      case 8:
        OUTLINED_FUNCTION_5_17();
        sub_221A7159C();
        break;
      case 9:
        OUTLINED_FUNCTION_5_17();
        sub_221A71650();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A7135C()
{
  type metadata accessor for AppIntentsProtobuf_Property(0);
  sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);
  return sub_221BCCAC8();
}

uint64_t sub_221A713FC()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_Action(0) + 36);
  sub_221A855FC();
  return sub_221BCC9D8();
}

uint64_t sub_221A7159C()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_Action(0) + 52);
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
  return sub_221BCCAD8();
}

uint64_t sub_221A71650()
{
  type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
  return sub_221BCCAC8();
}

void sub_221A716F0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_2_29();
  if (!v2 || (OUTLINED_FUNCTION_12_7(), sub_221BCCBF8(), !v0))
  {
    if (!*(v1[2] + 16) || (type metadata accessor for AppIntentsProtobuf_Property(0), sub_221A8395C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v0))
    {
      v3 = v1[3];
      v4 = v1[4];
      OUTLINED_FUNCTION_25_8();
      if (!v5 || (OUTLINED_FUNCTION_17_11(), sub_221BCCBF8(), !v0))
      {
        v6 = OUTLINED_FUNCTION_3_21();
        sub_221A7188C(v6);
        if (!v0)
        {
          v7 = OUTLINED_FUNCTION_3_21();
          sub_221A71930(v7);
          v8 = OUTLINED_FUNCTION_3_21();
          sub_221A719A8(v8);
          v9 = OUTLINED_FUNCTION_3_21();
          sub_221A71A20(v9);
          v10 = OUTLINED_FUNCTION_3_21();
          sub_221A71A98(v10, v11, v12, v13);
          if (*(v1[5] + 16))
          {
            type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
            sub_221A8395C(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
            OUTLINED_FUNCTION_91_4();
            OUTLINED_FUNCTION_49_6();
            sub_221BCCC18();
          }

          v14 = *(type metadata accessor for AppIntentsProtobuf_Action(0) + 32);
          OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7188C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  v3 = (a1 + *(result + 36));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_221A855FC();
    return sub_221BCCB98();
  }

  return result;
}

uint64_t sub_221A71930(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A719A8(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A71A20(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Action(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221A71A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_Action(0) + 52);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB95E0, &qword_221BE0A10);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A71C78()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ValueType(v4);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_157();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9940, &unk_221BDADE0);
  OUTLINED_FUNCTION_2_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_225_0();
  v20 = *v1;
  v21 = v1[1];
  OUTLINED_FUNCTION_102_2();
  v24 = v24 && v22 == v23;
  if (!v24 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_55;
  }

  v25 = v1[2];
  v26 = v0[2];
  sub_221A15F10();
  if ((v27 & 1) == 0)
  {
    goto LABEL_55;
  }

  v28 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v28 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_55;
  }

  v29 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v30 = v29;
  v31 = *(v29 + 36);
  v32 = v1 + v31;
  v33 = *(v1 + v31 + 9);
  v34 = v0 + v31;
  v35 = v34[9];
  if (v33)
  {
    if ((v34[9] & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v34[9])
    {
      goto LABEL_55;
    }

    v42 = *v32;
    v43 = v32[8];
    v44 = *v34;
    v45 = v34[8];
    v46 = v42 != 0;
    if ((v43 & 1) == 0)
    {
      v46 = v42;
    }

    if (v45)
    {
      if (v44)
      {
        if (v46 != 1)
        {
          goto LABEL_55;
        }
      }

      else if (v46)
      {
        goto LABEL_55;
      }
    }

    else if (v46 != v44)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_34_7(v1 + *(v29 + 40));
  if (v38)
  {
    if (!v36)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_61_3(v37);
    v41 = v24 && v39 == v40;
    if (!v41 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v36)
  {
    goto LABEL_55;
  }

  v47 = v30[11];
  v48 = *(v1 + v47);
  v49 = *(v0 + v47);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      goto LABEL_55;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_90_4(v30[12]);
  if ((v51 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_3();
    if ((v52 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_55:
    v61 = 0;
    goto LABEL_56;
  }

  if (!v50)
  {
    goto LABEL_55;
  }

LABEL_43:
  v53 = v30[13];
  v54 = *(v16 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2);
  if (v24)
  {
    OUTLINED_FUNCTION_20_8(v2 + v54);
    if (v24)
    {
      sub_2219A1CC8(v2, &qword_27CFB95E0, &qword_221BE0A10);
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2 + v54);
  if (v62)
  {
    sub_221A857F0();
LABEL_53:
    v63 = &qword_27CFB9940;
    v64 = &unk_221BDADE0;
LABEL_54:
    sub_2219A1CC8(v2, v63, v64);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_47_4();
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v3, v3[1], *v11, v11[1]) & 1) == 0)
  {
    sub_221A857F0();
    sub_221A857F0();
    v63 = &qword_27CFB95E0;
    v64 = &qword_221BE0A10;
    goto LABEL_54;
  }

  v65 = *(v5 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v66, v67);
  v68 = OUTLINED_FUNCTION_148_2();
  sub_221A857F0();
  OUTLINED_FUNCTION_153_2();
  sub_2219A1CC8(v2, &qword_27CFB95E0, &qword_221BE0A10);
  if ((v68 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_48:
  v55 = v1[5];
  v56 = v0[5];
  sub_221A19668();
  if ((v57 & 1) == 0)
  {
    goto LABEL_55;
  }

  v58 = v30[8];
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v59, v60);
  v61 = OUTLINED_FUNCTION_118_3();
LABEL_56:
  OUTLINED_FUNCTION_100_3(v61);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A720BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_221BCC8D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_221A72130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_221BCC8D8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_221A721A4(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_221A721F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9930, type metadata accessor for AppIntentsProtobuf_Action);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A72298(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A72360()
{
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);

  return sub_221BCCB48();
}

uint64_t sub_221A723E0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDD9F0);
  __swift_project_value_buffer(v0, qword_27CFDD9F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GENERIC_SPECIFICATION";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OPEN_URL_SPECIFICATION";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A725CC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA08);
  __swift_project_value_buffer(v0, qword_27CFDDA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_221BD8660;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 10;
  *v5 = "dialog";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 11;
  *v9 = "nextAction";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "showOutputAction";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 13;
  *v13 = "value";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 14;
  *v15 = "confirmationActionName";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 15;
  *v17 = "shouldShowPrompt";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 16;
  *v19 = "viewSnippet";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 17;
  *v21 = "showOutputActionOptions";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A7290C()
{
  OUTLINED_FUNCTION_72_4();
  result = sub_221A7293C();
  qword_27CFB9450 = result;
  return result;
}

uint64_t sub_221A7293C()
{
  v1 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog;
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction;
  v4 = type metadata accessor for AppIntentsProtobuf_Action(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value;
  v6 = type metadata accessor for AppIntentsProtobuf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName;
  v8 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt) = 2;
  v9 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet;
  v10 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  *v11 = 0;
  *(v11 + 8) = 1;
  return v0;
}

void sub_221A72A60()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_104_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_104_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_104_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v45 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  *(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt) = 2;
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
  *v41 = 0;
  *(v41 + 8) = 1;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3();
  LOBYTE(v42) = *(v2 + v42);
  swift_beginAccess();
  *(v0 + v45) = v42;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_95_3();
  sub_221A855A4();
  swift_endAccess();
  v43 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
  OUTLINED_FUNCTION_106_3();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);

  swift_beginAccess();
  *v41 = v44;
  *(v41 + 8) = v43;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A72FD0()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__nextAction, &unk_27CFBB690, &qword_221BDADD0);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputAction, &unk_27CFBB690, &qword_221BDADD0);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__value, &unk_27CFBB660, &qword_221BE4610);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__confirmationActionName, &qword_27CFB9928, &qword_221BE4A20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__viewSnippet, &qword_27CFB9920, &unk_221BDADC0);
  return v0;
}

uint64_t sub_221A730B8()
{
  v0 = sub_221A72FD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221A73134()
{
  sub_221A733D0(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_221A733D0(319, &qword_27CFB94B0, type metadata accessor for AppIntentsProtobuf_Action, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_221A733D0(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_221A733D0(319, &qword_27CFB94C0, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_221A733D0(319, &qword_27CFB94C8, type metadata accessor for AppIntentsProtobuf_ViewSnippet, MEMORY[0x277D83D88]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_221A733D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_221A734FC()
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221A733D0(319, &qword_27CFB94E8, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221A73678()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_221A737EC()
{
  result = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_221A73900()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221A73A54()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9578, type metadata accessor for AppIntentsProtobuf_Size, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *(v2 + 24);
  v4 = sub_221BCC8D8();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_81Tm()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *(v0 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_221A73C64()
{
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221A73D88()
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v1 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v2 = *(a1 + 8) >> 60;
    if (((4 * v2) & 0xC) != 0)
    {
      return 16 - ((4 * v2) & 0xC | (v2 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_129_3();
    v5 = OUTLINED_FUNCTION_10_9(v4);

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *__swift_store_extra_inhabitant_index_45Tm(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_141_2();
    OUTLINED_FUNCTION_130_2();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_221A73FB8()
{
  sub_221A7448C(319, &qword_27CFB94E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_221A7448C(319, &qword_27CFB95D0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_221A74174();
    if (v5 > 0x3F)
    {
      return v3;
    }

    v1 = sub_221BCC8D8();
    if (v6 <= 0x3F)
    {
      sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v1 = v7;
      if (v8 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9500, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }

        return v3;
      }
    }
  }

  return v1;
}

void sub_221A74174()
{
  if (!qword_27CFB95D8)
  {
    v0 = sub_221BCD2D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFB95D8);
    }
  }
}

void sub_221A74208()
{
  sub_221A733D0(319, &qword_27CFB95F8, type metadata accessor for AppIntentsProtobuf_Property, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_221A733D0(319, &qword_27CFB9600, type metadata accessor for AppIntentsProtobuf_SystemProtocol, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v2 <= 0x3F)
      {
        sub_221A7448C(319, &qword_27CFB9608, &type metadata for AppIntentsProtobuf_Action.Kind, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221A7448C(319, qword_27CFB7C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_221A7448C(319, &qword_27CFB9610, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_221A7448C(319, &qword_27CFB9508, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_221A733D0(319, &qword_27CFB9618, type metadata accessor for AppIntentsProtobuf_ValueType, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_221A7448C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_221A74584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = sub_221BCC8D8();
  if (v9 <= 0x3F)
  {
    OUTLINED_FUNCTION_58_6();
    result = a7();
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221A74628()
{
  result = qword_27CFB9640;
  if (!qword_27CFB9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9640);
  }

  return result;
}

unint64_t sub_221A746B0()
{
  result = qword_27CFB9658;
  if (!qword_27CFB9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9658);
  }

  return result;
}

unint64_t sub_221A74708()
{
  result = qword_27CFB9660;
  if (!qword_27CFB9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9660);
  }

  return result;
}

unint64_t sub_221A74760()
{
  result = qword_27CFB9668;
  if (!qword_27CFB9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9668);
  }

  return result;
}

uint64_t sub_221A747E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_221A7483C()
{
  result = qword_27CFB9680;
  if (!qword_27CFB9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9680);
  }

  return result;
}

unint64_t sub_221A74894()
{
  result = qword_27CFB9688;
  if (!qword_27CFB9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9688);
  }

  return result;
}

void sub_221A748E8()
{
  OUTLINED_FUNCTION_151_2();
  v1 = v0;
  v2 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221A72A60();
    *(v1 + v2) = v9;
  }

  sub_221A74980();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A74980()
{
  while (1)
  {
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
        sub_221A74AD0();
        break;
      case 11:
        sub_221A74BAC();
        break;
      case 12:
        sub_221A74C88();
        break;
      case 13:
        sub_221A74D64();
        break;
      case 14:
        sub_221A74E40();
        break;
      case 15:
        sub_221A74F1C();
        break;
      case 16:
        sub_221A74FA8();
        break;
      case 17:
        sub_221A75084();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A74AD0()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74BAC()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74C88()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74D64()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74E40()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A74F1C()
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A74FA8()
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A75084()
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A75110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20));
  OUTLINED_FUNCTION_58_6();
  result = sub_221A75174(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_56_3();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A75174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221A75254(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221A75448(a1, a2, a3, a4);
    sub_221A7563C(a1, a2, a3, a4);
    sub_221A75830(a1, a2, a3, a4);
    sub_221A75A24(a1, a2, a3, a4);
    sub_221A75C18(a1);
    sub_221A75CA8(a1, a2, a3, a4);
    return sub_221A75E9C(a1);
  }

  return result;
}

uint64_t sub_221A75254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A7563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9928, &qword_221BE4A20);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75C18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A75CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221A8554C();
  sub_221A8395C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221BCCC38();
  return sub_221A857F0();
}

uint64_t sub_221A75E9C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A75F28()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_75_5();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    sub_221A75FF0();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v6, v7);
  OUTLINED_FUNCTION_91_4();
  return sub_221BCD338() & 1;
}

void sub_221A75FF0()
{
  OUTLINED_FUNCTION_21();
  v209 = v0;
  v2 = v1;
  v183 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v3 = OUTLINED_FUNCTION_2_1(v183);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v180 = (v7 - v6);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9960, &qword_221BDAE00);
  OUTLINED_FUNCTION_2_1(v182);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  v184 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v13 = OUTLINED_FUNCTION_8_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_51_4();
  v181 = v16;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_132_2();
  v191 = v18;
  v19 = OUTLINED_FUNCTION_133_3();
  v189 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(v19);
  v20 = OUTLINED_FUNCTION_2_1(v189);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v185 = v24 - v23;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9968, &qword_221BDAE08);
  OUTLINED_FUNCTION_2_1(v188);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_104_2();
  v190 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  v30 = OUTLINED_FUNCTION_8_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_51_4();
  v186 = v33;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_132_2();
  v196 = v35;
  v36 = OUTLINED_FUNCTION_133_3();
  v194 = type metadata accessor for AppIntentsProtobuf_Value(v36);
  v37 = OUTLINED_FUNCTION_2_1(v194);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_0();
  v187 = (v41 - v40);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1(v193);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_104_2();
  v195 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v47 = OUTLINED_FUNCTION_8_1(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_51_4();
  v192 = v50;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_132_2();
  v198 = v52;
  v53 = OUTLINED_FUNCTION_133_3();
  v208 = type metadata accessor for AppIntentsProtobuf_Action(v53);
  v54 = OUTLINED_FUNCTION_2_1(v208);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4_0();
  v199 = v58 - v57;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9970, &qword_221BDAE10);
  v59 = OUTLINED_FUNCTION_2_1(v207);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_51_4();
  v200 = v62;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_132_2();
  v205 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v66 = OUTLINED_FUNCTION_8_1(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_51_4();
  v197 = v69;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v70);
  v202 = &v179 - v71;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v72);
  v201 = &v179 - v73;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_132_2();
  v204 = v75;
  v76 = OUTLINED_FUNCTION_133_3();
  v77 = type metadata accessor for AppIntentsProtobuf_Dialog(v76);
  v78 = OUTLINED_FUNCTION_2_1(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_4_0();
  v203 = v82 - v81;
  v83 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18) - 8);
  v84 = *(*v83 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v85);
  v87 = &v179 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v89 = OUTLINED_FUNCTION_8_1(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_51_4();
  v206 = v92;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v93);
  v95 = &v179 - v94;
  OUTLINED_FUNCTION_106_3();
  sub_221A1C558();
  v96 = v209;
  OUTLINED_FUNCTION_106_3();
  v97 = v83[14];
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v87);
  if (v99)
  {

    sub_2219A1CC8(v95, &unk_27CFBB790, &qword_221BDADD8);
    OUTLINED_FUNCTION_53_7(&v87[v97]);
    v98 = v2;
    if (v99)
    {
      sub_2219A1CC8(v87, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_12;
    }

LABEL_9:
    v100 = &qword_27CFB9978;
    v101 = &qword_221BDAE18;
LABEL_10:
    v102 = v87;
LABEL_21:
    sub_2219A1CC8(v102, v100, v101);
    goto LABEL_22;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(&v87[v97]);
  if (v99)
  {

    sub_2219A1CC8(v95, &unk_27CFBB790, &qword_221BDADD8);
    sub_221A857F0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_45_7();
  sub_221A8554C();
  v98 = v2;

  v103 = sub_221A7941C();
  sub_221A857F0();
  sub_2219A1CC8(v95, &unk_27CFBB790, &qword_221BDADD8);
  sub_221A857F0();
  sub_2219A1CC8(v87, &unk_27CFBB790, &qword_221BDADD8);
  if ((v103 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  OUTLINED_FUNCTION_106_3();
  v104 = v204;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3();
  v105 = *(v207 + 48);
  v106 = v205;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_49_4(v106, 1, v208);
  if (v99)
  {
    sub_2219A1CC8(v104, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_20_8(v106 + v105);
    if (v99)
    {
      sub_2219A1CC8(v106, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_25;
    }

LABEL_20:
    v100 = &qword_27CFB9970;
    v101 = &qword_221BDAE10;
    v102 = v106;
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v106 + v105);
  if (v107)
  {
    sub_2219A1CC8(v104, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_89_4();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_10();
  sub_221A8554C();
  sub_221A71C78();
  LODWORD(v206) = v108;
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v109, v110, v111);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v112, v113, v114);
  if ((v206 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  OUTLINED_FUNCTION_106_3();
  v115 = v202;
  sub_221A1C558();
  OUTLINED_FUNCTION_106_3();
  v116 = *(v207 + 48);
  v87 = v200;
  sub_221A1C558();
  v117 = v208;
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v87, 1, v117);
  if (v99)
  {
    sub_2219A1CC8(v115, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_49_4(&v87[v116], 1, v117);
    if (v99)
    {
      sub_2219A1CC8(v87, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(&v87[v116], 1, v117);
  if (v118)
  {
    sub_2219A1CC8(v202, &unk_27CFBB690, &qword_221BDADD0);
    OUTLINED_FUNCTION_89_4();
LABEL_33:
    v100 = &qword_27CFB9970;
    v101 = &qword_221BDAE10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_10();
  sub_221A8554C();
  sub_221A71C78();
  v120 = v119;
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v121, v122, v123);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v124, v125, v126);
  if ((v120 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  OUTLINED_FUNCTION_106_3();
  v127 = v198;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3();
  v128 = *(v193 + 48);
  v129 = v195;
  OUTLINED_FUNCTION_119_3();
  v130 = v129;
  OUTLINED_FUNCTION_119_3();
  v131 = OUTLINED_FUNCTION_127_4();
  v132 = v194;
  OUTLINED_FUNCTION_49_4(v131, v133, v194);
  if (v99)
  {
    sub_2219A1CC8(v127, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_20_8(v129 + v128);
    v134 = v196;
    if (v99)
    {
      sub_2219A1CC8(v129, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v140 = v192;
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v130 + v128);
  v134 = v196;
  if (v141)
  {
    sub_2219A1CC8(v198, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_46_5();
    sub_221A857F0();
LABEL_48:
    v100 = &qword_27CFB85E0;
    v101 = &unk_221BD3E40;
    v102 = v130;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8_13();
  v142 = v187;
  sub_221A8554C();
  if ((MEMORY[0x223DA21A0](*v140, v140[1], *v142, v142[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    sub_221A857F0();
    sub_2219A1CC8(v198, &unk_27CFBB660, &qword_221BE4610);
    sub_221A857F0();
    v102 = v130;
    v100 = &unk_27CFBB660;
    v101 = &qword_221BE4610;
    goto LABEL_21;
  }

  v143 = *(v132 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v144, v145);
  v146 = sub_221BCD338();
  sub_221A857F0();
  sub_2219A1CC8(v198, &unk_27CFBB660, &qword_221BE4610);
  sub_221A857F0();
  v147 = OUTLINED_FUNCTION_56_3();
  sub_2219A1CC8(v147, v148, &qword_221BE4610);
  if ((v146 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_40:
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3();
  v135 = *(v188 + 48);
  v136 = v190;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  v137 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v137, v138, v189);
  if (v99)
  {
    sub_2219A1CC8(v134, &qword_27CFB9928, &qword_221BE4A20);
    OUTLINED_FUNCTION_22_9(v136 + v135);
    v139 = v191;
    if (v99)
    {
      sub_2219A1CC8(v136, &qword_27CFB9928, &qword_221BE4A20);
      goto LABEL_59;
    }

LABEL_55:
    v100 = &qword_27CFB9968;
    v101 = &qword_221BDAE08;
LABEL_56:
    v102 = v136;
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v136 + v135);
  v139 = v191;
  if (v149)
  {
    sub_2219A1CC8(v134, &qword_27CFB9928, &qword_221BE4A20);
    sub_221A857F0();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_43_7();
  sub_221A8554C();
  OUTLINED_FUNCTION_56_3();
  v150 = sub_221A78340();
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v151, v152, v153);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v154, v155, v156);
  if ((v150 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_59:
  v157 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3();
  v158 = *(v98 + v157);
  v159 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  OUTLINED_FUNCTION_106_3();
  v160 = *(v96 + v159);
  if (v158 == 2)
  {
    if (v160 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v160 == 2 || ((v158 ^ v160) & 1) != 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_106_3();
  v161 = *(v182 + 48);
  v136 = v184;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_119_3();
  v162 = OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_49_4(v162, v163, v183);
  if (v99)
  {
    sub_2219A1CC8(v139, &qword_27CFB9920, &unk_221BDADC0);
    OUTLINED_FUNCTION_22_9(v136 + v161);
    if (v99)
    {
      sub_2219A1CC8(v136, &qword_27CFB9920, &unk_221BDADC0);
LABEL_74:
      v174 = (v98 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
      OUTLINED_FUNCTION_106_3();
      v175 = *v174;
      v176 = *(v174 + 8);

      v177 = (v96 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions);
      OUTLINED_FUNCTION_106_3();
      v178 = *v177;
      LOBYTE(v177) = *(v177 + 8);

      goto LABEL_23;
    }

    goto LABEL_72;
  }

  v164 = v181;
  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v136 + v161);
  if (v165)
  {
    sub_2219A1CC8(v139, &qword_27CFB9920, &unk_221BDADC0);
    sub_221A857F0();
LABEL_72:
    v100 = &qword_27CFB9960;
    v101 = &qword_221BDAE00;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_42_7();
  v166 = v180;
  sub_221A8554C();
  v167 = sub_221A832C8(v164, v166);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v168, v169, v170);
  sub_221A857F0();
  OUTLINED_FUNCTION_96_4();
  sub_2219A1CC8(v171, v172, v173);
  if (v167)
  {
    goto LABEL_74;
  }

LABEL_22:

LABEL_23:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A77154(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9958, type metadata accessor for AppIntentsProtobuf_ActionOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A771F4(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A772BC()
{
  sub_221A8395C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);

  return sub_221BCCB48();
}

uint64_t sub_221A7733C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA20);
  __swift_project_value_buffer(v0, qword_27CFDDA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iteratorIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "complete";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "values";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A77580()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221A77680();
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7B3A0();
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A7B304(v3, v4, v5, v6, v7, &unk_27CFBB6C0, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A77680()
{
  v0 = *(type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0) + 28);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  return sub_221BCCAD8();
}

void sub_221A77734()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  sub_221A7783C(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7B500();
    if (*(v1[1] + 16))
    {
      type metadata accessor for AppIntentsProtobuf_Value(0);
      sub_221A8395C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    v6 = *(type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0) + 24);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A7783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0) + 28);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2219A1CC8(v7, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221A8554C();
  sub_221A8395C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCC38();
  return sub_221A857F0();
}

void sub_221A77A1C()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v5 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_157();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_29_8();
  v40 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v20);
  v21 = v40[7];
  v22 = *(v2 + 56);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_20_8(v0);
  if (v26)
  {
    OUTLINED_FUNCTION_20_8(v0 + v22);
    if (v26)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v22);
  if (v26)
  {
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
LABEL_13:
    v27 = &qword_27CFB9990;
    v28 = &qword_221BDAE28;
LABEL_20:
    sub_2219A1CC8(v0, v27, v28);
    goto LABEL_21;
  }

  sub_221A8554C();
  if (*v1 != *v11 || v1[1] != v11[1])
  {
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
    goto LABEL_19;
  }

  v29 = *(v5 + 24);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v30, v31);
  v32 = OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_11_12();
  sub_221A857F0();
  if ((v32 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_11_12();
    sub_221A857F0();
    v27 = &qword_27CFB9988;
    v28 = &qword_221BDAE20;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_11_12();
  sub_221A857F0();
LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_142_1();
  if (!v26)
  {
    goto LABEL_21;
  }

  v23 = v40[8];
  v24 = *(v0 + v23);
  v25 = *(v4 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    goto LABEL_21;
  }

  v34 = *(v0 + 8);
  v35 = *(v4 + 8);
  sub_221A174D8();
  if (v36)
  {
    v37 = v40[6];
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_40();
    sub_221A8395C(v38, v39);
    v33 = OUTLINED_FUNCTION_149_1();
    goto LABEL_22;
  }

LABEL_21:
  v33 = 0;
LABEL_22:
  OUTLINED_FUNCTION_100_3(v33);
  OUTLINED_FUNCTION_22();
}

uint64_t (*sub_221A77D28(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_221A77D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9980, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A77E1C(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A77EE4()
{
  sub_221A8395C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);

  return sub_221BCCB48();
}

uint64_t sub_221A77F64()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA38);
  __swift_project_value_buffer(v0, qword_27CFDDA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "acceptLabel";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "acceptAlternatives";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "denyLabel";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "denyAlternatives";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A781A8()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_4_18();
        sub_221A7A6DC();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 3:
        OUTLINED_FUNCTION_4_18();
        sub_221A7BC94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A78264()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221A7A888();
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBC8();
    }

    OUTLINED_FUNCTION_1_34();
    sub_221A7C03C();
    if (*(v1[1] + 16))
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBC8();
    }

    v3 = *(type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0) + 24);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221A78340()
{
  OUTLINED_FUNCTION_69_1();
  v2 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  v3 = v2[7];
  OUTLINED_FUNCTION_18_10();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (sub_221A15E30(*v1, *v0))
  {
    v10 = v2[8];
    OUTLINED_FUNCTION_18_10();
    if (v13)
    {
      if (!v11)
      {
        return 0;
      }

      OUTLINED_FUNCTION_61_3(v12);
      v16 = v9 && v14 == v15;
      if (!v16 && (sub_221BCE1B8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (sub_221A15E30(v1[1], v0[1]))
    {
      v17 = v2[6];
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_40();
      sub_221A8395C(v18, v19);
      return OUTLINED_FUNCTION_36_8() & 1;
    }
  }

  return 0;
}

uint64_t sub_221A78488(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&qword_27CFB9998, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A78528(uint64_t a1)
{
  v2 = sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A785F0()
{
  sub_221A8395C(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);

  return sub_221BCCB48();
}

uint64_t sub_221A78670()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDA50);
  __swift_project_value_buffer(v0, qword_27CFDDA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_221BD8670;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_221BCCC48();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 10;
  *v8 = "print";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 11;
  *v10 = "captionPrint";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 12;
  *v12 = "printOnly";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "speak";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 21;
  *v16 = "captionSpeak";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 22;
  *v18 = "spokenOnly";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 23;
  *v20 = "spokenOnlyDefined";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 30;
  *v22 = "visualId";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 31;
  *v24 = "visualParameters";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 32;
  *v26 = "visualResponse";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 100;
  *v28 = "catId";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 101;
  *v30 = "dialogId";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 102;
  *v32 = "localeIdentifier";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 103;
  *v34 = "meta";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  return sub_221BCCC58();
}

uint64_t sub_221A78B68()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
      case 11:
      case 20:
      case 21:
LABEL_15:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA48();
        break;
      case 12:
      case 22:
      case 23:
        OUTLINED_FUNCTION_58_6();
        sub_221BCC9F8();
        break;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
        continue;
      case 30:
        OUTLINED_FUNCTION_5_17();
        sub_221A78D2C();
        break;
      case 31:
        OUTLINED_FUNCTION_5_17();
        sub_221A78D90();
        break;
      case 32:
        OUTLINED_FUNCTION_5_17();
        sub_221A78E08();
        break;
      default:
        switch(result)
        {
          case 'd':
            OUTLINED_FUNCTION_5_17();
            sub_221A78E6C();
            break;
          case 'e':
            goto LABEL_15;
          case 'f':
            OUTLINED_FUNCTION_5_17();
            sub_221A78ED0();
            break;
          case 'g':
            OUTLINED_FUNCTION_5_17();
            sub_221A78F34();
            break;
          default:
            if (result == 1)
            {
              OUTLINED_FUNCTION_5_17();
              sub_221A78CC4();
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_221A78FAC()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (v9 = *v0, v10 = *(v2 + 8), sub_221A85844(), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
      {
        if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
        {
          if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
          {
            if (!*(*(v2 + 48) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBC8(), !v1))
            {
              if (!*(*(v2 + 56) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
              {
                if (!*(*(v2 + 64) + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB78(), !v1))
                {
                  v4 = OUTLINED_FUNCTION_3_21();
                  result = sub_221A79214(v4);
                  if (!v1)
                  {
                    if (*(*(v2 + 72) + 16))
                    {
                      sub_221BCC8A8();
                      OUTLINED_FUNCTION_61_5();
                      sub_221BCCB68();
                    }

                    v5 = OUTLINED_FUNCTION_3_21();
                    sub_221A7928C(v5);
                    v6 = OUTLINED_FUNCTION_3_21();
                    sub_221A7932C(v6);
                    if (*(*(v2 + 80) + 16))
                    {
                      OUTLINED_FUNCTION_14_12();
                      sub_221BCCBC8();
                    }

                    v7 = OUTLINED_FUNCTION_3_21();
                    sub_221A793A4(v7);
                    if (*(*(v2 + 88) + 16))
                    {
                      sub_221BCC8A8();
                      OUTLINED_FUNCTION_61_5();
                      sub_221BCCB68();
                    }

                    v8 = *(type metadata accessor for AppIntentsProtobuf_Dialog(0) + 60);
                    return OUTLINED_FUNCTION_30_7();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_221A79214(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = (a1 + *(result + 64));
  if (v3[1])
  {
    v4 = *v3;
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7928C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = a1 + *(result + 68);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_2219EBFC8(*v3, *(v3 + 8));
    sub_221BCCBA8();
    return sub_2219EC02C(v5, v4);
  }

  return result;
}

uint64_t sub_221A7932C(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A793A4(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = (a1 + *(result + 76));
  if (v3[1])
  {
    v4 = *v3;
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A7941C()
{
  OUTLINED_FUNCTION_69_1();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((sub_221A15E30(v1[2], v0[2]) & 1) == 0 || (sub_221A15E30(v1[3], v0[3]) & 1) == 0 || (sub_221A19610(v1[4], v0[4]) & 1) == 0 || (sub_221A15E30(v1[5], v0[5]) & 1) == 0 || (sub_221A15E30(v1[6], v0[6]) & 1) == 0 || (sub_221A19610(v1[7], v0[7]) & 1) == 0 || (sub_221A19610(v1[8], v0[8]) & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v7 = v6[16];
  OUTLINED_FUNCTION_18_10();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v9);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((sub_221A85650(v1[9], v0[9]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_65_5(v6[17]);
  if (!v13 & v16)
  {
    OUTLINED_FUNCTION_122_3();
    if (!v13 & v16)
    {
      v14 = OUTLINED_FUNCTION_6_16();
      sub_2219EC02C(v14, v15);
      goto LABEL_37;
    }

LABEL_34:
    v18 = OUTLINED_FUNCTION_6_16();
    sub_2219EC02C(v18, v19);
    v20 = OUTLINED_FUNCTION_14();
    sub_2219EC02C(v20, v21);
    return 0;
  }

  OUTLINED_FUNCTION_122_3();
  if (!v17 & v16)
  {
    goto LABEL_34;
  }

  v23 = OUTLINED_FUNCTION_6_16();
  v24 = MEMORY[0x223DA21A0](v23);
  v25 = OUTLINED_FUNCTION_14();
  sub_2219EC02C(v25, v26);
  v27 = OUTLINED_FUNCTION_56_3();
  sub_2219EC02C(v27, v28);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v29 = v6[18];
  OUTLINED_FUNCTION_18_10();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v31);
    v35 = v13 && v33 == v34;
    if (!v35 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  if ((sub_221A15E30(v1[10], v0[10]) & 1) == 0)
  {
    return 0;
  }

  v36 = v6[19];
  OUTLINED_FUNCTION_18_10();
  if (!v39)
  {
    if (!v37)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (!v37)
  {
    return 0;
  }

  OUTLINED_FUNCTION_61_3(v38);
  v42 = v13 && v40 == v41;
  if (!v42 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

LABEL_56:
  if ((sub_221A85650(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  v43 = v6[15];
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_40();
  sub_221A8395C(v44, v45);
  return OUTLINED_FUNCTION_36_8() & 1;
}

uint64_t (*sub_221A7969C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_221A796F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221A8395C(&dword_27CFB99A0, type metadata accessor for AppIntentsProtobuf_Dialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A79790(uint64_t a1)
{
  v2 = sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A79858()
{
  sub_221A8395C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);

  return sub_221BCCB48();
}