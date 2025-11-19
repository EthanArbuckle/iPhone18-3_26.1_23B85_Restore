void sub_1AEA70560()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  if (qword_1EB5EA518 != -1)
  {
    swift_once();
  }

  v6 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v6, qword_1EB5F5BE0);
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Up connection invalidated", v9, 2u);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    static Entitlements.Source.auditToken(_:)(v1, v2, v3, v4, v22);
    v12 = sub_1AEA69AD4(v21);
    v14 = sub_1AEA6ACD4(v20, v22);
    if (*v13)
    {
      v15 = v13;
      v16 = v5;
      sub_1AEA6FCFC(v15, v16);
      v18 = v17;

      v19 = *(*v15 + 16);
      if (v19 < v18)
      {
        __break(1u);
        return;
      }

      sub_1AEA6FC3C(v18, v19);
      (v14)(v20, 0);
      sub_1AEA44BC8(v22);
      (v12)(v21, 0);
    }

    else
    {
      (v14)(v20, 0);
      sub_1AEA44BC8(v22);
      (v12)(v21, 0);
    }
  }
}

uint64_t sub_1AEA707D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AEA7081C()
{
  v1 = *(v0 + 24);
  if (qword_1EB5EA518 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5F5BE0);
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "Down connection invalidated", v5, 2u);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__downConnections);
  v25[2] = v8;
  v9 = v1;

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A78);
  Atomic.wrappedValue.getter(&v26);
  v10 = v26;
  v11 = v26[2];
  if (!v11)
  {

    v12 = 0;
    v13 = v10[2];
LABEL_15:
    if (__OFADD__(v13, v12 - v13))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v12 > v10[3] >> 1)
    {
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      v10 = sub_1AEA6C9D4(isUniquelyReferenced_nonNull_native, v15, 1, v10);
      v26 = v10;
    }

    sub_1AEA6FB6C(v12, v13, 0);
    v25[0] = v10;
    v25[1] = v8;
    Atomic.wrappedValue.setter(v25, v1);

    return;
  }

  v12 = 0;
  while (v26[v12 + 4] != v9)
  {
    if (v11 == ++v12)
    {
      v12 = v26[2];
      goto LABEL_13;
    }
  }

  if (__OFADD__(v12, 1))
  {
    goto LABEL_45;
  }

  if (v12 + 1 == v11)
  {
LABEL_13:

    v13 = v10[2];
    if (v13 < v12)
    {
      goto LABEL_42;
    }

    if (v12 < 0)
    {
      goto LABEL_43;
    }

    goto LABEL_15;
  }

  v16 = v12 + 5;
  while (1)
  {
    v19 = v16 - 4;
    if (v16 - 4 >= v11)
    {
      __break(1u);
      goto LABEL_38;
    }

    v20 = v10[v16];
    if (v20 != v9)
    {
      break;
    }

LABEL_27:
    v11 = v10[2];
    v18 = v16 - 3;
    ++v16;
    if (v18 == v11)
    {
      goto LABEL_13;
    }
  }

  if (v19 == v12)
  {
LABEL_26:
    ++v12;
    goto LABEL_27;
  }

  if (v12 < v11)
  {
    v21 = v10[v12 + 4];
    v22 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AEA6E830(v10);
    }

    if (v12 >= v10[2])
    {
      goto LABEL_40;
    }

    v23 = &v10[v12];
    v24 = v23[4];
    v23[4] = v22;

    if (v19 >= v10[2])
    {
      goto LABEL_41;
    }

    v17 = v10[v16];
    v10[v16] = v21;

    goto LABEL_26;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1AEA70B34(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AEA5E1AC;

  return sub_1AEA6A268(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1AEA70BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA6E628(a1, v4);
}

void sub_1AEA70CB4(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = sub_1AEAF958C();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v7 = v6;
  [a1 updateBaseSamplingIntervalWithAnalyzerUUID:v5 to:?];
}

uint64_t sub_1AEA70D5C()
{
  v2 = *(sub_1AEAF8D6C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEA66D70(v5, v6, v7, v0 + v3, v4);
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v38 = a1;
  v39 = a5;
  v36 = a6;
  v37 = sub_1AEAF9C3C();
  v9 = *(v37 - 8);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v35 = &v32 - v11;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AEAF9C3C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  (*(v14 + 16))(v17, a2, v13);
  v22 = (*(v18 + 48))(v17, 1, a4);
  v23 = *(v14 + 8);
  if (v22 != 1)
  {
    v23(v21, v13);
    (*(v9 + 8))(v38, v37);
    v30 = *(v18 + 32);
    v30(v20, v17, a4);
    v30(v36, v20, a4);
    goto LABEL_5;
  }

  v32 = v21;
  v23(v17, v13);
  v24 = v35;
  v26 = v37;
  v25 = v38;
  (*(v9 + 16))(v35, v38, v37);
  v27 = v33;
  if ((*(v33 + 48))(v24, 1, a3) != 1)
  {
    v23(v32, v13);
    (*(v9 + 8))(v25, v26);
    v28 = *(v27 + 32);
    v29 = v34;
    v28(v34, v35, a3);
    v28(v36, v29, a3);
LABEL_5:
    sub_1AEAFA40C();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v9 + 8))(v35, v26);
  result = sub_1AEAFA01C();
  __break(1u);
  return result;
}

uint64_t Result.init<>(failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1AEAF9C3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13[-v10];
  v14 = 0;
  (*(v9 + 16))(&v13[-v10], a1, v8);
  Result.init(success:failure:)(&v14, v11, MEMORY[0x1E69E7CA8] + 8, a2, a3, a4);
  return (*(v9 + 8))(a1, v8);
}

uint64_t Result.success.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }
}

uint64_t Result.failure.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(v7 - 8);
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_GxyYaq_YKXE_tYacfC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = sub_1AEAFA40C();
  v5[4] = v8;
  v5[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[6] = v9;
  v5[7] = *(a5 - 8);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v5[9] = swift_task_alloc();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v5[10] = v11;
  *v11 = v5;
  v11[1] = sub_1AEA71A90;

  return v13(v9, v10);
}

uint64_t sub_1AEA71A90()
{

  if (v0)
  {
    v1 = sub_1AEA71C54;
  }

  else
  {
    v1 = sub_1AEA71BA0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AEA71BA0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AEA71C54()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[7] + 32);
  v4(v1, v0[8], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AEA71D38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PolicyCache();
  *a1 = static PolicyCache.shared.getter();
  static SensitiveContentPolicy.currentPolicyOverride.getter();
  v2 = v13;
  static SensitiveContentPolicy.current.getter(v13);
  if (v13[8] == 1)
  {
    v2 = sub_1AEA9B378();
  }

  a1[3] = *v2;
  type metadata accessor for VideoStreamAnalysisDispatcher();
  v3 = static VideoStreamAnalysisDispatcher.dispatcher.getter();
  a1[4] = v3;
  type metadata accessor for VideoStreamAnalyzer.Sampler();
  v4 = v3;
  a1[5] = static VideoStreamAnalyzer.Sampler.processBufferOverride.getter();
  a1[6] = v5;
  v6 = swift_weakInit();
  v7 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x80))(v6);

  v8 = sub_1AEA64780();
  v9 = *v8;
  v10 = v8[1];
  v11 = *(*v7 + 120);

  v11(v9, v10);

  swift_weakAssign();
}

uint64_t sub_1AEA71EA8()
{
  v0 = sub_1AEAF8D9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AEAF8D8C();
  v4 = sub_1AEAF8D7C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1AEA71F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *(a5 + 8);
  v42 = *a5;
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  v15 = *(a5 + 40);
  v43 = *(a5 + 48);
  v37 = *a8;
  v36 = *(a8 + 8);
  v39 = a8[2];
  v40 = *(a5 + 32);
  v38 = *(a8 + 24);
  v16 = a8[4];
  v17 = *(a8 + 40);
  static Entitlements.Source.currentProcess.getter(&v44);
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  sub_1AEA766A8(&v48);
  if (v9)
  {

    sub_1AEA63364(v42, v12, v14, v13, v40, v15, v43);
    sub_1AEA62F28(a7);
    return sub_1AEA44C1C(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
  }

  else
  {
    v31 = v14;
    v29 = v17;
    v30 = v16;
    sub_1AEA44C1C(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
    if (v43 == 255)
    {
      v21 = v15;
      v20 = v40;
      v19 = v13;
    }

    else
    {
      *&v44 = v42;
      *(&v44 + 1) = v12;
      *&v45 = v14;
      *(&v45 + 1) = v13;
      v19 = v13;
      v20 = v40;
      *&v46 = v40;
      *(&v46 + 1) = v15;
      v21 = v15;
      v47 = v43;
      sub_1AEA766A8(&v44);
    }

    sub_1AEA71D38(&v44);
    *a9 = a6;
    *(a9 + 8) = a3;
    *(a9 + 16) = a4;
    *(a9 + 24) = a1;
    *(a9 + 32) = a2;
    sub_1AEA5D204(&v44, a9 + 144);
    *(a9 + 40) = v42;
    *(a9 + 48) = v12;
    *(a9 + 56) = v31;
    *(a9 + 64) = v19;
    *(a9 + 72) = v20;
    *(a9 + 80) = v21;
    *(a9 + 88) = v43;
    if (a6 == 1)
    {
      v22 = *(&v45 + 1);
      *&v48 = *sub_1AEA9B44C();
      v52 = v22;
      sub_1AEA76774();
      LOBYTE(v22) = sub_1AEAF9CFC();
      sub_1AEA62F28(a7);
      result = sub_1AEA62F28(&v44);
      v23 = v22 ^ 1 | v36;
      v24 = v37;
      if ((v22 & 1) == 0)
      {
        v24 = 0;
      }

      v25 = v39;
      v26 = v38;
      v27 = v30;
      v28 = v29;
    }

    else
    {
      sub_1AEA62F28(a7);
      result = sub_1AEA62F28(&v44);
      v25 = v39;
      v26 = v38;
      v27 = v30;
      v28 = v29;
      v24 = v37;
      v23 = v36;
    }

    *(a9 + 96) = v24;
    *(a9 + 104) = v23 & 1;
    *(a9 + 112) = v25;
    *(a9 + 120) = v26;
    *(a9 + 128) = v27;
    *(a9 + 136) = v28;
  }

  return result;
}

uint64_t sub_1AEA72280()
{
  result = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x98))();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEA722DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 200) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_1AEAF8FEC();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA7240C, 0, 0);
}

uint64_t sub_1AEA7240C()
{
  v1 = *(*(v0 + 32) + 32);
  if (!(*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))())
  {
    __break(1u);
    return MEMORY[0x1EEE6DD58]();
  }

  SamplingPrioritizer.untrackStream(for:)(*(v0 + 16));

  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if ((*(*Strong + 160))())
    {
      v4 = *(v0 + 96);
      v5 = *(v0 + 56);
      v6 = sub_1AEA65424();
      *(v0 + 112) = v6;
      v7 = *(v5 + 16);
      *(v0 + 120) = v7;
      *(v0 + 128) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v55 = v6;
      v57 = v7;
      (v7)(v4);

      v8 = sub_1AEAF8FCC();
      v9 = sub_1AEAF9A8C();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 96);
      v12 = *(v0 + 48);
      v13 = *(v0 + 56);
      if (v10)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v60 = v15;
        *v14 = 136315138;
        v52 = v12;
        v53 = v11;
        v16 = *(v3 + 16);
        v17 = *(v3 + 24);

        v18 = sub_1AEA45C14(v16, v17, &v60);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1AEA3F000, v8, v9, "Ending call %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1B270E620](v15, -1, -1);
        MEMORY[0x1B270E620](v14, -1, -1);

        v19 = *(v13 + 8);
        v20 = v19(v53, v52);
      }

      else
      {

        v19 = *(v13 + 8);
        v20 = v19(v11, v12);
      }

      *(v0 + 136) = v19;
      v21 = *(v0 + 200);
      v22 = MEMORY[0x1E69E7D40];
      v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v20);
      *(v0 + 144) = v23;
      v24 = (*((*v22 & *v1) + 0x80))();
      (*(*v24 + 128))(v24);

      v25 = *(v0 + 48);
      if (v21)
      {
        v26 = *(v0 + 72);

        v57(v26, v55, v25);
        v27 = sub_1AEAF8FCC();
        v28 = sub_1AEAF9A8C();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 72);
        v31 = *(v0 + 48);
        if (v29)
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1AEA3F000, v27, v28, "Skipping analytics aggregation (no children)", v32, 2u);
          MEMORY[0x1B270E620](v32, -1, -1);
        }

        else
        {
        }

        v19(v30, v31);
        goto LABEL_15;
      }

      v33 = *(v0 + 88);
      v34 = *(v0 + 40);
      v35 = sub_1AEAF982C();
      (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v0 + 152) = sub_1AEA67464(0, 0, v34, &unk_1AEAFD018, v36);
      v57(v33, v55, v25);

      v37 = sub_1AEAF8FCC();
      v38 = sub_1AEAF9A8C();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 88);
      v41 = *(v0 + 48);
      if (v39)
      {
        v58 = *(v0 + 48);
        v42 = swift_slowAlloc();
        v56 = v19;
        v43 = swift_slowAlloc();
        v60 = v43;
        *v42 = 134218242;
        *(v42 + 4) = *(v23 + 16);

        *(v42 + 12) = 2080;
        v54 = v40;
        v45 = *(v3 + 16);
        v44 = *(v3 + 24);

        v46 = sub_1AEA45C14(v45, v44, &v60);

        *(v42 + 14) = v46;
        _os_log_impl(&dword_1AEA3F000, v37, v38, "Fetching child analytics from %ld connections for ending call %s", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1B270E620](v43, -1, -1);
        MEMORY[0x1B270E620](v42, -1, -1);

        v56(v54, v58);
      }

      else
      {

        v19(v40, v41);
      }

      v49 = *(v0 + 32);
      v50 = swift_task_alloc();
      *(v0 + 160) = v50;
      v50[2] = v23;
      v50[3] = v3;
      v50[4] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AD0);
      v51 = swift_task_alloc();
      *(v0 + 168) = v51;
      *v51 = v0;
      v51[1] = sub_1AEA72B18;

      return MEMORY[0x1EEE6DD58]();
    }
  }

LABEL_15:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1AEA72B18()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1AEA72FC8;
  }

  else
  {

    v2 = sub_1AEA72C40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA72C40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  v2 = MEMORY[0x1E69E7CA8];
  v3 = MEMORY[0x1E69E7288];
  sub_1AEAF985C();
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_1AEA72D28;
  v5 = *(v0 + 152);

  return MEMORY[0x1EEE6DA10](v4, v5, v2 + 8, v1, v3);
}

uint64_t sub_1AEA72D28()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1AEA73244;
  }

  else
  {
    v2 = sub_1AEA72E3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA72E3C()
{
  (*(v0 + 120))(*(v0 + 80), *(v0 + 112), *(v0 + 48));
  v1 = sub_1AEAF8FCC();
  v2 = sub_1AEAF9A9C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 136);
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEA3F000, v1, v2, "Analytics transaction was dropped (timed out) before analytics were aggregated.", v7, 2u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  else
  {
  }

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AEA72FC8()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[6];

  v1(v3, v2, v4);

  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  v9 = v0[17];
  if (v7)
  {
    v10 = v0[13];
    v25 = v0[6];
    v26 = v0[8];
    v11 = v0[17];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v14 = *(v10 + 16);
    v15 = *(v10 + 24);

    v16 = sub_1AEA45C14(v14, v15, &v27);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "Failed sending analytics for call %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B270E620](v13, -1, -1);
    MEMORY[0x1B270E620](v12, -1, -1);

    v11(v26, v25);
  }

  else
  {
    v17 = v0[8];
    v18 = v0[6];

    v9(v17, v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  v20 = MEMORY[0x1E69E7CA8];
  v21 = MEMORY[0x1E69E7288];
  sub_1AEAF985C();
  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_1AEA72D28;
  v23 = v0[19];

  return MEMORY[0x1EEE6DA10](v22, v23, v20 + 8, v19, v21);
}

uint64_t sub_1AEA73244()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AEA73308()
{
  v1 = sub_1AEAF9F5C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1AEAF8FEC();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA73420, 0, 0);
}

uint64_t sub_1AEA73420()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = os_transaction_create();
  v4 = sub_1AEA65424();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "Taking transaction for analytics", v7, 2u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);
  sub_1AEAFA34C();
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1AEA735C0;

  return sub_1AEA761F0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1AEA735C0()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1AEA737B8;
  }

  else
  {
    v5 = sub_1AEA73730;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AEA73730()
{
  sub_1AEA73840();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA737B8()
{
  sub_1AEA73840();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA73840()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AEA65424();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "Dropping transaction for analytics", v7, 2u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1AEA73990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B60);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = sub_1AEAF8FEC();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA73B18, 0, 0);
}

uint64_t sub_1AEA73B18()
{
  v47 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1AEAF9EEC();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v46 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
      ResumedConnection.proxy.getter(v0 + 72);
      sub_1AEAF9EBC();
      sub_1AEAF9EFC();
      sub_1AEAF9F0C();
      sub_1AEAF9ECC();
      --v2;
    }

    while (v2);
    v3 = v45;
  }

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AEAF9FFC())
  {
    v7 = 0;
    v41 = i;
    v43 = v3 & 0xFFFFFFFFFFFFFF8;
    v44 = v3 & 0xC000000000000001;
    v42 = v3;
    while (v44)
    {
      v9 = MEMORY[0x1B270D3B0](v7, v3);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      v12 = *(v0 + 200);
      v11 = *(v0 + 208);
      v13 = sub_1AEAF982C();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v9;
      sub_1AEA77344(v11, v12);
      LODWORD(v12) = (*(v14 + 48))(v12, 1, v13);
      swift_unknownObjectRetain();
      v17 = *(v0 + 200);
      if (v12 == 1)
      {
        sub_1AEA4D550(*(v0 + 200));
        if (!*v16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AEAF981C();
        (*(v14 + 8))(v17, v13);
        if (!*v16)
        {
LABEL_16:
          v18 = 0;
          v20 = 0;
          goto LABEL_17;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1AEAF977C();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_17:
      v21 = **(v0 + 104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AD0);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v3 = v42;
      v8 = *(v0 + 208);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v21;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1AEA4D550(v8);
      ++v7;
      if (v10 == v41)
      {
        goto LABEL_24;
      }
    }

    if (v7 >= *(v43 + 16))
    {
      goto LABEL_22;
    }

    v9 = *(v3 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v23 = *(v0 + 192);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);

  v26 = sub_1AEA65424();
  *(v0 + 216) = v26;
  v27 = *(v24 + 16);
  *(v0 + 224) = v27;
  *(v0 + 232) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v23, v26, v25);

  v28 = sub_1AEAF8FCC();
  v29 = sub_1AEAF9A8C();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 192);
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  if (v30)
  {
    v34 = *(v0 + 120);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1AEA45C14(*(v34 + 16), *(v34 + 24), &v46);
    _os_log_impl(&dword_1AEA3F000, v28, v29, "Waiting for call analytics %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B270E620](v36, -1, -1);
    MEMORY[0x1B270E620](v35, -1, -1);
  }

  v37 = *(v33 + 8);
  v37(v31, v32);
  *(v0 + 240) = v33 + 8;
  *(v0 + 248) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  sub_1AEAF989C();
  v38 = swift_task_alloc();
  *(v0 + 256) = v38;
  *v38 = v0;
  v38[1] = sub_1AEA740A8;
  v39 = *(v0 + 136);

  return MEMORY[0x1EEE6DAD8](v0 + 80, 0, 0, v39, v0 + 88);
}

uint64_t sub_1AEA740A8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1AEA74828;
  }

  else
  {
    v2 = sub_1AEA741BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA741BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v62 = v5;
  v6 = v5;
  v54 = v5 + 10;
  v57 = v5[10];
  if (v57)
  {
    v7 = 0;
    v8 = v57 + 64;
    v9 = -1;
    v10 = -1 << *(v57 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v57 + 64);
    v12 = (63 - v10) >> 6;
    v53 = v5;
    v13 = v5[33];
    v52 = v12;
    while (v11)
    {
      v14 = v7;
LABEL_12:
      v15 = (v14 << 10) | (16 * __clz(__rbit64(v11)));
      v16 = (*(v57 + 48) + v15);
      v17 = v16[1];
      v58 = *v16;
      v18 = (*(v57 + 56) + v15);
      v19 = *v18;
      v20 = v18[1];
      sub_1AEAF8ABC();
      swift_allocObject();

      sub_1AEA773B4(v19, v20);
      sub_1AEAF8AAC();
      type metadata accessor for CoreAnalyticsManager.StreamStats();
      sub_1AEA7745C(&qword_1EB5E8B68, type metadata accessor for CoreAnalyticsManager.StreamStats);
      v59 = v19;
      v60 = v20;
      sub_1AEAF8A9C();
      if (v13)
      {
        (*(v53[18] + 8))(v53[19], v53[17]);

        sub_1AEA77408(v19, v20);

        v50 = v53[1];
        goto LABEL_21;
      }

      v11 &= v11 - 1;
      v55 = v53[28];
      v21 = v53[27];
      v22 = v53[23];
      v23 = v53[20];

      CoreAnalyticsManager.aggregateWithStreamStats(_:_:)();

      v55(v22, v21, v23);

      v24 = sub_1AEAF8FCC();
      v25 = sub_1AEAF9A8C();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v53[31];
      v28 = v53[23];
      v29 = v53[20];
      if (v26)
      {
        v56 = v53[31];
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v61[0] = v31;
        *v30 = 136315138;
        v32 = v28;
        v33 = sub_1AEA45C14(v58, v17, v61);

        *(v30 + 4) = v33;
        _os_log_impl(&dword_1AEA3F000, v24, v25, "Aggregated analytics for child stream: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1B270E620](v31, -1, -1);
        MEMORY[0x1B270E620](v30, -1, -1);

        sub_1AEA77408(v59, v60);

        a1 = v56(v32, v29);
      }

      else
      {

        sub_1AEA77408(v59, v60);

        a1 = v27(v28, v29);
      }

      v13 = 0;
      v7 = v14;
      v12 = v52;
      v8 = v57 + 64;
    }

    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v14);
      ++v7;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    v34 = swift_task_alloc();
    v53[32] = v34;
    *v34 = v53;
    v34[1] = sub_1AEA740A8;
    a4 = v53[17];
    a5 = v53 + 11;
    a1 = v54;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
  }

  else
  {
    v35 = v5[28];
    v36 = v5[27];
    v37 = v5[22];
    v38 = v5[20];
    (*(v5[18] + 8))(v5[19], v5[17]);
    v35(v37, v36, v38);

    v39 = sub_1AEAF8FCC();
    v40 = sub_1AEAF9A8C();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v5[31];
    v43 = v5[22];
    v44 = v5[20];
    if (v41)
    {
      v45 = v5[15];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61[0] = v47;
      *v46 = 136315138;
      v48 = *(v45 + 16);
      v49 = *(v45 + 24);
      v5 = v6;
      *(v46 + 4) = sub_1AEA45C14(v48, v49, v61);
      _os_log_impl(&dword_1AEA3F000, v39, v40, "Sending analytics for call %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1B270E620](v47, -1, -1);
      MEMORY[0x1B270E620](v46, -1, -1);
    }

    v42(v43, v44);

    sub_1AEAC8940();

    v50 = v5[1];
LABEL_21:

    return v50();
  }
}

uint64_t sub_1AEA74828()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AEA748E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA74990;

  return sub_1AEA6C268(ObjectType);
}

uint64_t sub_1AEA74990(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AEA74ADC, 0, 0);
  }
}

void sub_1AEA74B00()
{
  sub_1AEA69634();
  v1 = *(v0 + 32);

  v2 = v1;
  sub_1AEAFA48C();
}

uint64_t sub_1AEA74BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v10[1] = a2;
  v10[3] = a3;
  v4 = sub_1AEAB4930();
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v6)
  {
    v4 = swift_allocObject();
    v7 = v4;
    *(v4 + 16) = v6;
    *(v4 + 24) = v5;
    v8 = sub_1AEA774A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v10[2] = v10;
  v10[4] = v8;
  v10[5] = v7;
  MEMORY[0x1EEE9AC00](v4);

  sub_1AEA50FF8(v6);
  sub_1AEAFA48C();
  sub_1AEA438E0(v8);
}

uint64_t sub_1AEA74D38@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  LOBYTE(a2) = a2(sub_1AEA76F24, v7);

  *a3 = a2 & 1;
  return result;
}

uint64_t sub_1AEA74DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  if (a4)
  {
    swift_getObjectType();
    v8 = sub_1AEAF977C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7[10] = v8;
  v7[11] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1AEA74E6C, v8, v10);
}

uint64_t sub_1AEA74E6C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v11 = *(v0 + 32);
  *(v0 + 96) = *sub_1AEA69634();
  v3 = *(v1 + 32);
  *(v0 + 104) = v3;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v11;

  v5 = v3;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1AEA74FB8;
  v7 = *(v0 + 56);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v9, v0 + 16, &unk_1AEAFD040, v4, v8, v7, 0xD000000000000037, 0x80000001AEB062A0);
}

uint64_t sub_1AEA74FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1AEA75158, v5, v6);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1AEA75170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA75198, 0, 0);
}

uint64_t sub_1AEA75198()
{
  v1 = v0[5];
  v0[9] = *sub_1AEAB4930();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1AEA76F1C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v0[10] = v5;
  v0[11] = v4;
  v7 = v0[7];
  v6 = v0[8];
  v0[2] = v5;
  v0[3] = v4;
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = *(v0 + 5);
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  *(v8 + 40) = v7;

  sub_1AEA50FF8(v2);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1AEA75318;
  v11 = v0[4];

  return MEMORY[0x1EEE6DE98](v11, v0 + 2, &unk_1AEAFD350, v8, 0, 0, 0xD000000000000037, 0x80000001AEB062A0);
}

uint64_t sub_1AEA75318()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 112) = v0;

  sub_1AEA438E0(v2);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA754D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1AEA754E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA75510, 0, 0);
}

uint64_t sub_1AEA75510()
{
  *(v0 + 64) = sub_1AEAF97FC();
  *(v0 + 72) = sub_1AEAF97EC();
  v2 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA755A8, v2, v1);
}

uint64_t sub_1AEA755A8()
{

  *(v0 + 80) = sub_1AEA9CAC0();

  return MEMORY[0x1EEE6DFA0](sub_1AEA75618, 0, 0);
}

uint64_t sub_1AEA75618()
{
  *(v0 + 88) = sub_1AEAF97EC();
  v2 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA756A4, v2, v1);
}

uint64_t sub_1AEA756A4()
{
  v1 = *(v0 + 80);

  *(v0 + 96) = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1AEA7571C, 0, 0);
}

uint64_t sub_1AEA7571C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = *v8;
  *(v0 + 104) = *v8;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1AEA75868;
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v6, v0 + 16, &unk_1AEAFD360, v4, 0, 0, 0xD000000000000037, 0x80000001AEB062A0);
}

uint64_t sub_1AEA75868()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA774A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AEA759FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA75A24, 0, 0);
}

uint64_t sub_1AEA75A24()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v8 = *(v0 + 48);
  *(v0 + 72) = *sub_1AEA9C884();
  v3 = *(v2 + 16);
  *(v0 + 16) = *(v2 + 8);
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1AEA75B70;
  v6 = *(v0 + 32);

  return MEMORY[0x1EEE6DE98](v6, v0 + 16, &unk_1AEAFD370, v4, 0, 0, 0xD000000000000037, 0x80000001AEB062A0);
}

uint64_t sub_1AEA75B70()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA75CE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AEA75D00(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AEA5E1AC;

  return v6(a1);
}

unint64_t sub_1AEA75E0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AEA769E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AEA75E44(void *a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  v8 = v2;
  v9 = v3;
  a1;
  SCSensitivityAnalysis.analysis.getter(&v7);
  sub_1AEAD9834();
  sub_1AEA632F0();
  if (sub_1AEAF9CFC())
  {
    sub_1AEA4F1AC(a1);
    return 2;
  }

  else
  {
    SCSensitivityAnalysis.analysis.getter(&v7);
    sub_1AEAD981C();
    v6 = sub_1AEAF9CFC();
    sub_1AEA4F1AC(a1);
    return v6 & 1;
  }
}

uint64_t sub_1AEA75F30()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    v3 = 0;
  }

  else
  {
    v2 = *v0;
    if (v1)
    {
      sub_1AEA63A30(*v0, *(v0 + 8));
      *v0 = 0;
      *(v0 + 8) = -1;
      v3 = 1;
    }

    else
    {
      v7 = *sub_1AEAD981C();
      *v0 = sub_1AEA616D4();
      *(v0 + 8) = 0;
      SCSensitivityAnalysis.analysis.getter(&v6);
      sub_1AEA632F0();
      v4 = sub_1AEAF9CFC();
      sub_1AEA63A30(v2, v1);
      v3 = v4 ^ 1;
    }
  }

  return v3 & 1;
}

uint64_t sub_1AEA76014(uint64_t a1, char a2)
{
  v7[1] = a1;
  v8 = a2 & 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
  Result.success.getter(v2, v7);
  v3 = v7[0];
  if (v7[0])
  {
    SCSensitivityAnalysis.analysis.getter(&v6);

    sub_1AEAD9834();
    sub_1AEA632F0();
    v4 = sub_1AEAF9CFC();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1AEA760B4(uint64_t a1, char a2)
{
  v12 = a1;
  v13 = a2 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
  Result.success.getter(v4, &v11);
  v5 = v11;
  if (!v11 || (SCSensitivityAnalysis.analysis.getter(&v10), v5, sub_1AEAD9834(), sub_1AEA632F0(), (sub_1AEAF9CFC() & 1) == 0))
  {
    v12 = a1;
    v6 = a2 & 1;
    v13 = v6;
    Result.failure.getter(v4, &v11);
    if (v11)
    {
    }

    else
    {
      v12 = a1;
      v13 = v6;
      Result.success.getter(v4, &v11);
      v9 = v11;
      if (v11)
      {
        SCSensitivityAnalysis.analysis.getter(&v10);

        sub_1AEAD981C();
        sub_1AEA632F0();
        v7 = sub_1AEAF9CFC();
        return v7 & 1;
      }
    }
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1AEA761F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1AEAF9F4C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1AEA762F0, 0, 0);
}

uint64_t sub_1AEA762F0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1AEAF9F5C();
  v5 = sub_1AEA7745C(&qword_1EB5E8B70, MEMORY[0x1E69E8820]);
  sub_1AEAFA32C();
  sub_1AEA7745C(&qword_1EB5E90C0, MEMORY[0x1E69E87E8]);
  sub_1AEAF9F6C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1AEA76480;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1AEA76480()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA7663C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1AEA7663C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AEA766A8(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  v3 = *(a1 + 48);
  LOBYTE(v11[0]) = 4;
  SCFeatures.check()();
  if (!v4)
  {
    v11[0] = v6;
    v11[1] = v7;
    v12 = v1;
    v13 = v2;
    v14 = v3;
    static Entitlements.advisoryChecks(for:)(v11);
    Entitlements.Checks.checkSupportsAnalysis()();

    if (!v5)
    {
      static SensitiveContentPolicy.blockingCurrent.getter(v11);
      v8[1] = *&v11[0];
      v9 = BYTE8(v11[0]);
      v8[0] = *sub_1AEA9B38C();
      Optional<A>.check(for:)(v8, &v10);
    }
  }
}

unint64_t sub_1AEA76774()
{
  result = qword_1EB5E8FF0;
  if (!qword_1EB5E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8FF0);
  }

  return result;
}

uint64_t sub_1AEA767C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA63D38;

  return sub_1AEA73308();
}

uint64_t sub_1AEA76854(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AEA5E1AC;

  return sub_1AEA73990(v8, a2, v5, v6, v7);
}

uint64_t sub_1AEA76924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AEA63D38;

  return sub_1AEA75170(a1, v5, v7, v6, v4);
}

unint64_t sub_1AEA769E4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1AEA76A60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA76ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1AEA76B0C(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis12EntitlementsV6SourceOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA76B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AEA76B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AEA76C1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AEA76C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Participant.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for StreamDirection()
{
  if (!qword_1EB5E8B58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB5E8B58);
    }
  }
}

uint64_t sub_1AEA76E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AEA63D38;

  return sub_1AEA754E8(a1, v5, v7, v6, v4);
}

uint64_t sub_1AEA76F24(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1AEA76F64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AEA63D38;

  return sub_1AEA759FC(a1, v5, v7, v6, v4);
}

uint64_t sub_1AEA77024(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA75D00(a1, v4);
}

uint64_t sub_1AEA770D0()
{
  sub_1AEA9CAC0();

  sub_1AEAFA48C();
}

uint64_t sub_1AEA771B0()
{
  sub_1AEA9C884();

  sub_1AEAFA48C();
}

uint64_t sub_1AEA772A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA63D38;

  return sub_1AEA748E8(a1);
}

uint64_t sub_1AEA77344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEA773B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AEA77408(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AEA7745C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA774D4()
{
  sub_1AEA6C95C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEAFD3C0;
  *(v0 + 32) = sub_1AEA49EF8(0, &unk_1EB5E8E50);
  *(v0 + 40) = type metadata accessor for SCSensitivityAnalysis(0);
  *(v0 + 48) = sub_1AEA49EF8(0, &qword_1ED98A488);
  *(v0 + 56) = sub_1AEA49EF8(0, &unk_1EB5E9670);
  *(v0 + 64) = sub_1AEA49EF8(0, &qword_1EB5E8B00);
  *(v0 + 72) = sub_1AEA49EF8(0, &qword_1EB5E8978);
  result = sub_1AEA49EF8(0, &qword_1EB5E8B88);
  *(v0 + 80) = result;
  qword_1EB5F5C00 = v0;
  return result;
}

uint64_t sub_1AEA775DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEAFCC60;
  if (qword_1EB5EA8A8 != -1)
  {
    swift_once();
  }

  Selector.expects(_:atIndex:)(v1, 0, sel__storeMostRecentAnalysis_forHandles_completion_, v0 + 32);

  Selector.expects(_:atIndex:)(v2, 1, sel__storeMostRecentAnalysis_forHandles_completion_, v0 + 64);

  Selector.expects(_:atIndex:)(v3, 0, sel__clearMostRecentAnalysesForParticipants_completion_, v0 + 96);

  Selector.expects(_:atIndex:)(v4, 0, sel__analysesFromMostRecentCommunicationsWith_completion_, v0 + 128);

  Selector.expects(_:atIndex:)(v5, 0, sel__participantsUpdated_participantsRemoved_completion_, v0 + 160);

  Selector.expects(_:atIndex:)(v6, 1, sel__participantsUpdated_participantsRemoved_completion_, v0 + 192);

  Selector.reply(expects:atIndex:)(v7, 0, sel__participantsUpdated_participantsRemoved_completion_, v0 + 224);

  Selector.reply(expects:atIndex:)(v8, 0, sel__analysesFromMostRecentCommunicationsWith_completion_, v0 + 256);

  qword_1EB5F5C08 = v0;
  return result;
}

uint64_t sub_1AEA777B4()
{
  swift_beginAccess();
  v0 = qword_1EB5E8B78;

  return v0;
}

id sub_1AEA77808()
{
  if (qword_1EB5EA8A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB5F5BF8;

  return v0;
}

uint64_t sub_1AEA7788C()
{
  if (qword_1EB5EA8B0 != -1)
  {
    swift_once();
  }
}

uint64_t CountedFrameBuffer.__allocating_init(streamID:isOutgoing:interval:maxFrames:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  CountedFrameBuffer.init(streamID:isOutgoing:interval:maxFrames:)(a1, a2, a3, a4, a5 & 1, a6, a7 & 1);
  return v14;
}

uint64_t CountedFrameBuffer.init(streamID:isOutgoing:interval:maxFrames:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v9 = v7;
  if (![objc_opt_self() ttrFrameCollectionEnabled])
  {
    goto LABEL_7;
  }

  if (qword_1EB5EA8E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1AEAFA47C();
  if (v28 == 2)
  {
    v17 = sub_1AEA79304();
    if (v17 != 2 && (v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v28 & 1) == 0)
  {
LABEL_7:

    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    swift_willThrow();
LABEL_15:
    type metadata accessor for CountedFrameBuffer();
    swift_deallocPartialClassInstance();
    return v9;
  }

  if ((a3 & 1) == 0)
  {
    if (qword_1EB5EA8C0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (qword_1EB5EA8D0 != -1)
  {
LABEL_26:
    v17 = swift_once();
  }

LABEL_13:
  MEMORY[0x1EEE9AC00](v17);
  v18 = a3 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.withLock<A>(_:)();
  if (v8)
  {

    goto LABEL_15;
  }

  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v18;
  if (a5)
  {
    v20 = sub_1AEA794E0();
    v21 = 1.5;
    v22 = a6;
    v23 = a7;
    if ((v24 & 1) == 0)
    {
      v21 = *&v20;
    }
  }

  else
  {
    v21 = *&a4;
    v22 = a6;
    v23 = a7;
  }

  if (v23)
  {
    v25 = sub_1AEA796B8();
    if (v26)
    {
      v22 = 120;
    }

    else
    {
      v22 = v25;
    }
  }

  v27 = [objc_allocWithZone(SCFrameBuffer) initWithInterval:v22 maxFrames:v21];

  *(v9 + 40) = v27;
  return v9;
}

uint64_t static CountedFrameBuffer.bufferingEnablementOverride.getter()
{
  if (qword_1EB5EA8E0 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

uint64_t sub_1AEA77DB8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v36 = a3;
  v9 = sub_1AEAF8FEC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *a1;
  if (*a1 >= a2)
  {
    v27 = sub_1AEA8BFEC();
    (*(v10 + 16))(v13, v27, v9);

    v28 = sub_1AEAF8FCC();
    v29 = sub_1AEAF9A7C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1AEA45C14(v36, a4, &v38);
      *(v30 + 12) = 2080;
      if (a5)
      {
        v32 = 0x6E696F6774756F2ELL;
      }

      else
      {
        v32 = 0x6E696D6F636E692ELL;
      }

      v33 = sub_1AEA45C14(v32, 0xE900000000000067, &v38);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_1AEA3F000, v28, v29, "Stream %s (%s) will not buffer frames for TTR", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v31, -1, -1);
      MEMORY[0x1B270E620](v30, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    type metadata accessor for SCAError(0);
    v37 = 20;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    return swift_willThrow();
  }

  else
  {
    v35 = a5;
    v17 = v16 + 1;
    *a1 = v16 + 1;
    v18 = sub_1AEA8BFEC();
    (*(v10 + 16))(v15, v18, v9);

    v19 = sub_1AEAF8FCC();
    v20 = sub_1AEAF9A7C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v17;
      v22 = v21;
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_1AEA45C14(v36, a4, &v38);
      *(v22 + 12) = 2080;
      if (v35)
      {
        v24 = 0x6E696F6774756F2ELL;
      }

      else
      {
        v24 = 0x6E696D6F636E692ELL;
      }

      v25 = sub_1AEA45C14(v24, 0xE900000000000067, &v38);

      *(v22 + 14) = v25;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v34;
      _os_log_impl(&dword_1AEA3F000, v19, v20, "Stream %s (%s) is buffering frames for TTR. (%ld)", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v23, -1, -1);
      MEMORY[0x1B270E620](v22, -1, -1);
    }

    return (*(v10 + 8))(v15, v9);
  }
}

void CountedFrameBuffer.deinit()
{
  v1 = v0;
  v2 = sub_1AEAF8FEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AEA8BFEC();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1AEA45C14(*(v1 + 16), *(v1 + 24), &v16);
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Stream %s stopped buffering frames for TTR", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (*(v1 + 32) == 1)
  {
    if (qword_1EB5EA8D0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB5EA8D8;
    v15 = qword_1EB5EA8D8;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
    Atomic.wrappedValue.getter(&v16);
    v13 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (qword_1EB5EA8C0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB5EA8C8;
  v15 = qword_1EB5EA8C8;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.wrappedValue.getter(&v16);
  v13 = v16 - 1;
  if (!__OFSUB__(v16, 1))
  {
LABEL_12:
    v14[0] = v13;
    v14[1] = v11;
    Atomic.wrappedValue.setter(v14, v12);

    return;
  }

  __break(1u);
}

uint64_t CountedFrameBuffer.__deallocating_deinit()
{
  CountedFrameBuffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

id sub_1AEA78540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 40);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  return [v6 bufferFrame:a1 timestamp:v8 orientation:?];
}

uint64_t sub_1AEA785AC()
{
  v1 = *(v0[19] + 40);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AEA786CC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B90);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AEA787C4;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 dumpFramesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AEA786CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AEA787AC, 0, 0);
}

uint64_t sub_1AEA787C4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1AEA49EF8(0, &qword_1EB5E8B98);
  **(*(v1 + 64) + 40) = sub_1AEAF96EC();

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1AEA78848()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AEA78958;

  return v4();
}

uint64_t sub_1AEA78958(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AEA78A58, 0, 0);
}

uint64_t sub_1AEA78A58()
{
  v1 = sub_1AEA78ACC(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

char *sub_1AEA78ACC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AEAF9FFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1AEA791D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B270D3B0](i, a1);
        sub_1AEA49EF8(0, &qword_1EB5E8B98);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AEA791D4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1AEA45304(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1AEA49EF8(0, &qword_1EB5E8B98);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AEA791D4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1AEA45304(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA78CC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA0);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1EB5EA8E8 = result;
  return result;
}

uint64_t static CountedFrameBuffer.$bufferingEnablementOverride.getter()
{
  if (qword_1EB5EA8E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AEA78D84()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1AEA79B50(&v9);
    return 2;
  }

  v3 = sub_1AEAF958C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_1AEA49EF8(0, &qword_1ED989AC0);
  if (swift_dynamicCast())
  {
    v5 = [v7[0] BOOLValue];

    return v5;
  }

  return 2;
}

uint64_t sub_1AEA78EEC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1AEA79B50(&v10);
    return 0;
  }

  v3 = sub_1AEAF958C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    *v8 = 0u;
    v9 = 0u;
  }

  v10 = *v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  sub_1AEA49EF8(0, &qword_1ED989AC0);
  if (swift_dynamicCast())
  {
    [v8[0] doubleValue];
    v6 = v5;

    return v6;
  }

  return 0;
}

id sub_1AEA79064()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1AEA79B50(&v9);
    return 0;
  }

  v3 = sub_1AEAF958C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_1AEA49EF8(0, &qword_1ED989AC0);
  if (swift_dynamicCast())
  {
    v5 = [v7[0] integerValue];

    return v5;
  }

  return 0;
}

char *sub_1AEA791D4(char *a1, int64_t a2, char a3)
{
  result = sub_1AEA791F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AEA791F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEA79304()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*sub_1AEA5CE80() != 1)
  {
    return 2;
  }

  v4 = sub_1AEA78D84();
  if (v4 == 2)
  {
    v4 = sub_1AEA78D84();
    if (v4 == 2)
    {
      return 2;
    }
  }

  v6 = v4;
  v7 = sub_1AEA8BFEC();
  (*(v1 + 16))(v3, v7, v0);
  v8 = sub_1AEAF8FCC();
  v9 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6 & 1;
    _os_log_impl(&dword_1AEA3F000, v8, v9, "Using TTR Buffering Enabled from defaults: %{BOOL}d", v10, 8u);
    MEMORY[0x1B270E620](v10, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6 & 1;
}

uint64_t sub_1AEA794E0()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*sub_1AEA5CE80() != 1)
  {
    return 0;
  }

  result = sub_1AEA78EEC();
  if ((v5 & 1) == 0 || (result = sub_1AEA78EEC(), (v6 & 1) == 0))
  {
    v7 = result;
    v8 = sub_1AEA8BFEC();
    (*(v1 + 16))(v3, v8, v0);
    v9 = sub_1AEAF8FCC();
    v10 = sub_1AEAF9A8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1AEA3F000, v9, v10, "Using TTR Buffering interval from defaults: %f", v11, 0xCu);
      MEMORY[0x1B270E620](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

id sub_1AEA796B8()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*sub_1AEA5CE80() != 1)
  {
    return 0;
  }

  result = sub_1AEA79064();
  if ((v5 & 1) == 0 || (result = sub_1AEA79064(), (v6 & 1) == 0))
  {
    v7 = result;
    v8 = sub_1AEA8BFEC();
    (*(v1 + 16))(v3, v8, v0);
    v9 = sub_1AEAF8FCC();
    v10 = sub_1AEAF9A8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1AEA3F000, v9, v10, "Using TTR Max Frames from defaults: %ld", v11, 0xCu);
      MEMORY[0x1B270E620](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t dispatch thunk of CountedFrameBuffer._dumpFrames()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AEA79A54;

  return v4();
}

uint64_t sub_1AEA79A54(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1AEA79B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AnalysisHistoryXPCHost.__allocating_init(container:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v9[15] = a2;
  v9[16] = 0;
  v9[14] = a1;
  v15.receiver = v9;
  v15.super_class = v3;

  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = sub_1AEAF982C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_1AEA7A2E4(0, 0, v8, &unk_1AEAFD4D0, v12);

  return v13;
}

id AnalysisHistoryXPCHost.init(container:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  swift_defaultActor_initialize();
  v3[15] = a2;
  v3[16] = 0;
  v3[14] = a1;
  v15.receiver = v3;
  v15.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = sub_1AEAF982C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_1AEA7A2E4(0, 0, v9, &unk_1AEAFD4D8, v12);

  return v13;
}

uint64_t sub_1AEA79E94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return AnalysisHistoryXPCHost._start(anonymous:familyClosure:)(a1, 0, 0, 0);
}

uint64_t sub_1AEA79F3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA63D38;

  return sub_1AEA79E94(a1);
}

uint64_t AnalysisHistoryXPCHost._start(anonymous:familyClosure:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 96) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AEA7A004, v4, 0);
}

uint64_t sub_1AEA7A004()
{
  v1 = *(v0 + 88);
  v2 = v1[16];
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
    swift_beginAccess();
    sub_1AEA63BD4(v2 + v4, v3, &qword_1EB5E8BA8);
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 96);
    v8 = v1[14];
    v9 = v1[15];
    objc_allocWithZone(type metadata accessor for _AnalysisHistoryXPCHost(0));

    sub_1AEA50FF8(v5);
    v10 = _AnalysisHistoryXPCHost.init(container:anonymous:familyClosure:)(v8, v9, v7, v5, v6);
    v11 = *(v0 + 64);
    v12 = v1[16];
    v1[16] = v10;
    v13 = v10;

    v14 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
    swift_beginAccess();
    sub_1AEA63BD4(v13 + v14, v11, &qword_1EB5E8BA8);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AEA7A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AEA63BD4(a3, v25 - v10, &qword_1EB5E8F30);
  v12 = sub_1AEAF982C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AEA41FAC(v11, &qword_1EB5E8F30);
  }

  else
  {
    sub_1AEAF981C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AEAF977C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AEAF95CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1AEA41FAC(a3, &qword_1EB5E8F30);

      return v22;
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

  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void AnalysisHistoryXPCHost.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void AnalysisHistoryXPCHost.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t AnalysisHistoryXPCHost.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AnalysisHistoryXPCHost.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

id AnalysisHistoryXPCHost.__allocating_init(containerURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BB8);
  sub_1AEA63BD4(a1, v10, &qword_1EB5E8BB0);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1AEA818F0(v10, v12 + v11);
  v13 = sub_1AEA95F80(sub_1AEA81960, v12);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v14[15] = v13;
  v14[16] = 0;
  v14[14] = sub_1AEA819D0;
  v20.receiver = v14;
  v20.super_class = v2;

  v15 = objc_msgSendSuper2(&v20, sel_init);
  v16 = sub_1AEAF982C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  sub_1AEA7A2E4(0, 0, v6, &unk_1AEAFD500, v17);

  sub_1AEA41FAC(a1, &qword_1EB5E8BB0);
  return v18;
}

id sub_1AEA7AA64(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AEAF946C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1AEAF8CAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  sub_1AEA63BD4(a1, v6, &qword_1EB5E8BB0);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    if (qword_1ED98B480 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_1ED98DD88);
    (*(v8 + 16))(v13, v15, v7);
    if (v14(v6, 1, v7) != 1)
    {
      sub_1AEA41FAC(v6, &qword_1EB5E8BB0);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  v16 = [objc_opt_self() defaultManager];
  sub_1AEAF8C8C();
  v17 = sub_1AEAF8C6C();
  v32 = *(v8 + 8);
  v32(v11, v7);
  v33[0] = 0;
  v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v33];

  v19 = v33[0];
  if ((v18 & 1) == 0)
  {
    v20 = v33[0];
    sub_1AEAF8C5C();

    swift_willThrow();
    goto LABEL_11;
  }

  v20 = sub_1AEAF93DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CA8);
  v21 = swift_allocObject();
  v29 = xmmword_1AEAFC470;
  *(v21 + 16) = xmmword_1AEAFC470;
  v22 = type metadata accessor for SensitiveHandle();
  v23 = sub_1AEA82A98(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CB0);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  (*(v8 + 16))(v11, v13, v7);
  v25 = v19;
  sub_1AEAF945C();
  *(v24 + 56) = sub_1AEAF947C();
  *(v24 + 64) = sub_1AEA82A98(qword_1ED989B20, MEMORY[0x1E697BC88]);
  __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  sub_1AEAF948C();
  v26 = v31;
  v27 = sub_1AEAF93CC();
  if (v26)
  {
LABEL_11:
    v32(v13, v7);
    return v20;
  }

  v20 = v27;
  v32(v13, v7);
  return v20;
}

uint64_t _AnalysisHistoryXPCHost.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
  swift_beginAccess();
  return sub_1AEA63BD4(v1 + v3, a1, &qword_1EB5E8BA8);
}

uint64_t _AnalysisHistoryXPCHost.endpoint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
  swift_beginAccess();
  sub_1AEA81A08(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1AEA7B084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CA0);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98BBE8 = result;
  return result;
}

uint64_t static _AnalysisHistoryXPCHost.$entitlementsSourceOverride.getter()
{
  if (qword_1ED98BBF0 != -1)
  {
    swift_once();
  }
}

uint64_t static _AnalysisHistoryXPCHost.entitlementsSourceOverride.getter()
{
  if (qword_1ED98BBF0 != -1)
  {
    swift_once();
  }

  return sub_1AEAFA47C();
}

uint64_t _AnalysisHistoryXPCHost.init(container:anonymous:familyClosure:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v71 = a4;
  v72 = a5;
  v69 = a3;
  v79 = a2;
  v67 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v59 - v6;
  v7 = sub_1AEAF90EC();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v59[2] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59[1] = v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = v59 - v12;
  v64 = sub_1AEAF9AEC();
  v63 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AEAF931C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1AEAF9ADC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1AEAF8D9C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_clientUpdateQueue;
  v61 = sub_1AEA49EF8(0, &qword_1ED98AA78);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1AEAF9E1C();

  v74 = 0xD000000000000025;
  v75 = 0x80000001AEB06660;
  sub_1AEAF8D8C();
  v21 = sub_1AEAF8D7C();
  v23 = v22;
  v24 = v20;
  v25 = v65;
  (*(v18 + 8))(v24, v17);
  MEMORY[0x1B270CB50](v21, v23);

  sub_1AEAF9ACC();
  sub_1AEAF930C();
  (*(v63 + 104))(v14, *MEMORY[0x1E69E8090], v64);
  *&v25[v62] = sub_1AEAF9B2C();
  *&v25[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_listener] = 0;
  v26 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
  v27 = sub_1AEAF90BC();
  v28 = *(v27 - 8);
  v64 = *(v28 + 56);
  v63 = v28 + 56;
  v64(&v25[v26], 1, 1, v27);
  v29 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost__sessionHandlers;
  v73[0] = MEMORY[0x1E69E7CC0];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BC0);
  Atomic.init(wrappedValue:)(v73, v30, &v74);
  *&v25[v29] = v74;
  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v31, qword_1ED98DDE0);
  v32 = sub_1AEAF8FCC();
  v33 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AEA3F000, v32, v33, "Starting analysis history XPC host", v34, 2u);
    MEMORY[0x1B270E620](v34, -1, -1);
  }

  v35 = &v25[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_lazyContainer];
  v36 = v79;
  *v35 = v67;
  *(v35 + 1) = v36;
  v37 = v71;
  if (v71)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_1AEAFD510;
  }

  if (v71)
  {
    v39 = v72;
  }

  else
  {
    v39 = 0;
  }

  sub_1AEA50FF8(v37);
  v40 = v66;
  sub_1AEAF980C();
  v41 = sub_1AEAF982C();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v38;
  v42[5] = v39;

  *&v25[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_familyTask] = sub_1AEA7C1B8(0, 0, v40, &unk_1AEAFD520, v42);
  v76.receiver = v25;
  v76.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v76, sel_init);
  v44 = qword_1ED98BBF0;
  v45 = v43;
  if (v44 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  v46 = swift_allocObject();
  v47 = v77[1];
  *(v46 + 16) = v77[0];
  *(v46 + 32) = v47;
  *(v46 + 48) = v77[2];
  *(v46 + 64) = v78;
  *(v46 + 72) = v45;
  if (v69)
  {
    sub_1AEA63BD4(v77, &v74, &qword_1EB5E8BE8);
    sub_1AEAF90DC();
    sub_1AEAF914C();
    swift_allocObject();

    *&v45[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_listener] = sub_1AEAF90CC();

    v48 = v60;
    sub_1AEAF913C();

    v64(v48, 0, 1, v27);
    v49 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
    swift_beginAccess();
    sub_1AEA81A08(v48, &v45[v49]);
  }

  else
  {
    sub_1AEA63BD4(v77, &v74, &qword_1EB5E8BE8);
    sub_1AEA774C8();
    swift_beginAccess();

    sub_1AEAF90DC();
    sub_1AEAF914C();
    swift_allocObject();

    v50 = v70;
    v51 = sub_1AEAF911C();
    if (v50)
    {

      sub_1AEA41FAC(v77, &qword_1EB5E8BE8);

      sub_1AEA438E0(v71);
      goto LABEL_21;
    }

    v70 = 0;
    *&v45[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_listener] = v51;

    v52 = v60;
    v64(v60, 1, 1, v27);
    v53 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_endpoint;
    swift_beginAccess();
    sub_1AEA81A08(v52, &v45[v53]);
  }

  result = swift_endAccess();
  v55 = v70;
  if (*&v45[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_listener])
  {

    sub_1AEAF912C();
    if (!v55)
    {

      v56 = sub_1AEAF8FCC();
      v57 = sub_1AEAF9A8C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1AEA3F000, v56, v57, "Initialized client", v58, 2u);
        MEMORY[0x1B270E620](v58, -1, -1);
      }

      sub_1AEA41FAC(v77, &qword_1EB5E8BE8);

      sub_1AEA438E0(v71);

      return v45;
    }

    sub_1AEA438E0(v71);

    sub_1AEA41FAC(v77, &qword_1EB5E8BE8);
LABEL_21:

    return v45;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA7BC8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return static Family.current.getter(a1);
}

uint64_t sub_1AEA7BD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA7BD4C, 0, 0);
}

uint64_t sub_1AEA7BD4C()
{
  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v1, qword_1ED98DDE0);
  v2 = sub_1AEAF8FCC();
  v3 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEA3F000, v2, v3, "Loading family info...", v4, 2u);
    MEMORY[0x1B270E620](v4, -1, -1);
  }

  v5 = v0[3];

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1AEA7BEFC;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_1AEA7BEFC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AEA7C070;
  }

  else
  {
    v2 = sub_1AEA7C010;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA7C010()
{
  sub_1AEA7C0D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA7C070()
{
  sub_1AEA7C0D0();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1AEA7C0D0()
{
  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v0, qword_1ED98DDE0);
  oslog = sub_1AEAF8FCC();
  v1 = sub_1AEAF9A8C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1AEA3F000, oslog, v1, "Finished loading family info.", v2, 2u);
    MEMORY[0x1B270E620](v2, -1, -1);
  }
}

uint64_t sub_1AEA7C1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AEA63BD4(a3, v22 - v9, &qword_1EB5E8F30);
  v11 = sub_1AEAF982C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AEA41FAC(v10, &qword_1EB5E8F30);
  }

  else
  {
    sub_1AEAF981C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AEAF977C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AEAF95CC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AEA41FAC(a3, &qword_1EB5E8F30);

      return v20;
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

  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1AEA7C45C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v8 = *(a2 + 4);
  v7 = *(a2 + 5);
  v9 = *(a2 + 48);
  type metadata accessor for audit_token_t(0);
  sub_1AEAF90FC();
  if (v9 == 255)
  {
    static Entitlements.Source.auditToken(_:)(v17, *(&v17 + 1), v18, *(&v18 + 1), &v17);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    static Entitlements.checks(for:)(&v13);
    v11 = sub_1AEA44C1C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  }

  else
  {
    v10 = a2[1];
    v13 = *a2;
    v14 = v10;
    v15 = a2[2];
    type metadata accessor for Entitlements.Checks();
    v16 = v9;
    sub_1AEA43B10(v3, v4, v5, v6, v8, v7, v9);
    sub_1AEA45460(&v13, &v17);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    Entitlements.Checks.__allocating_init(entitlements:)(&v13);
  }

  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for _AnalysisHistoryXPCHost.SessionHandler(0);
  sub_1AEA82A98(&qword_1ED98A448, type metadata accessor for _AnalysisHistoryXPCHost.SessionHandler);

  sub_1AEAF910C();
}

uint64_t sub_1AEA7C65C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1AEA7C668@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a2;
  v45 = a1;
  v48 = a4;
  v5 = sub_1AEAF8D9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  sub_1AEAF8D8C();
  MessageHandlers.init()(&v56);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v51 = v6 + 16;
  v52 = v13;
  v13(v9, v11, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = a3;
  v46 = a3;
  v47 = v6;
  v16 = *(v6 + 32);
  v49 = v6 + 32;
  v50 = v16;
  v16(v15 + v14, v9, v5);
  v17 = sub_1AEA83520();
  swift_retain_n();
  sub_1AEAE3D30(sub_1AEA82EB8, v15, &type metadata for StoreAnalysis, v17);

  v18 = swift_allocObject();
  v19 = v44;
  swift_unknownObjectWeakInit();
  v52(v9, v11, v5);
  v20 = swift_allocObject();
  v21 = v46;
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  v22 = v20 + v14;
  v23 = v5;
  v24 = v9;
  v50(v22, v9, v5);
  v25 = sub_1AEA83904();
  sub_1AEAE3D30(sub_1AEA83640, v20, &type metadata for RemoveAnalyses, v25);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v21;
  v28 = sub_1AEA83A1C();

  sub_1AEAE3D64(&unk_1AEAFD698, v27, &type metadata for FetchSensitiveParticipants, v28);

  v46 = v11;
  v52(v9, v11, v5);
  v29 = v19;
  v30 = v56;
  type metadata accessor for _AnalysisHistoryXPCHost.SessionHandler(0);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v31 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid;
  *v32 = 0;
  *(v32 + 4) = 1;
  *(v31 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_processHandle) = 0;
  v52 = v23;
  v50(v31 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_uuid, v24, v23);
  *(v31 + 16) = v45;
  *(v31 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_handlers) = v30;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v33 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost__sessionHandlers;
  v34 = *&v19[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost__sessionHandlers];
  v54 = v34;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BF0);
  Atomic.wrappedValue.getter(&v55);
  MEMORY[0x1B270CC20]();
  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AEAF970C();
  }

  sub_1AEAF973C();
  v53[0] = v55;
  v53[1] = v34;
  Atomic.wrappedValue.setter(v53, v35);

  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v36 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v36, qword_1ED98DDE0);
  v37 = v19;
  v38 = sub_1AEAF8FCC();
  v39 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    v55 = *&v29[v33];
    Atomic.wrappedValue.getter(&v54);
    if (v54 >> 62)
    {
      v41 = sub_1AEAF9FFC();
    }

    else
    {
      v41 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v40 + 4) = v41;

    _os_log_impl(&dword_1AEA3F000, v38, v39, "New session. Total: %ld", v40, 0xCu);
    MEMORY[0x1B270E620](v40, -1, -1);
  }

  else
  {

    v38 = v37;
  }

  result = (*(v47 + 8))(v46, v52);
  *v48 = v31;
  return result;
}

uint64_t sub_1AEA7CC54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v27 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  v11 = sub_1AEA4A324(&qword_1EB5E8C88, &qword_1EB5E89A8);
  v18 = sub_1AEA9A130(v10, v11, v12, v13, v14, v15, v16, v17);
  (*(v4 + OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_lazyContainer))();
  if (v3)
  {

    v22 = v3;
    v23 = sub_1AEADC9B0(58, v3);
    v27 = v23;
    type metadata accessor for SCAError(0);
    sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1AEAF93AC();
    swift_allocObject();
    sub_1AEAF93BC();
    v19 = type metadata accessor for SensitiveHandle();
    v20 = MEMORY[0x1EEE9AC00](v19);
    *(&v26 - 2) = v18;
    v27 = v20;
    sub_1AEAF8DAC();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C08);
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    sub_1AEA82A98(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
    sub_1AEAF938C();
    sub_1AEA41FAC(v9, &qword_1EB5E8BF8);
    sub_1AEAF936C();
    v25 = sub_1AEA82468(MEMORY[0x1E69E7CC0]);
    v23 = v4;
    sub_1AEA7F9F4(v25, v18, a2);
  }

  return v23;
}

uint64_t sub_1AEA7CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = *(a2 + 8);
  *(v5 + 152) = *(a2 + 16);
  sub_1AEAF97FC();
  *(v5 + 104) = sub_1AEAF97EC();
  v7 = sub_1AEAF977C();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AEA7D060, v7, v6);
}

uint64_t sub_1AEA7D060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    sub_1AEAB42AC();
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1AEA7D304;
    v10 = *(v0 + 152);
    v11 = *(v0 + 96);

    return sub_1AEA7D544(v11, v10);
  }

  else
  {

    if (qword_1ED98D6B8 != -1)
    {
      swift_once();
    }

    v2 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v2, qword_1ED98DDE0);
    v3 = sub_1AEAF8FCC();
    v4 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEA3F000, v3, v4, "No host to handle fetch participants message", v5, 2u);
      MEMORY[0x1B270E620](v5, -1, -1);
    }

    type metadata accessor for SCAError(0);
    *(v0 + 48) = 57;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA82A98(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    v6 = *(v0 + 40);
    *(v0 + 56) = v6;
    sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
    swift_willThrowTypedImpl();
    **(v0 + 88) = v6;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1AEA7D304(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  v4 = *(v3 + 120);
  v5 = *(v3 + 112);
  if (v1)
  {
    v6 = sub_1AEA7D4CC;
  }

  else
  {
    v6 = sub_1AEA7D448;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1AEA7D448()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AEA7D4CC()
{
  v1 = *(v0 + 128);

  **(v0 + 88) = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AEA7D544(uint64_t a1, char a2)
{
  *(v3 + 508) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BF8);
  *(v3 + 320) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C00);
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = sub_1AEAF97FC();
  *(v3 + 360) = sub_1AEAF97EC();
  v6 = sub_1AEAF977C();
  *(v3 + 368) = v6;
  *(v3 + 376) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AEA7D684, v6, v5);
}

uint64_t sub_1AEA7D684()
{
  v64 = v0;
  v1 = *(v0 + 312);
  v2 = sub_1AEAF9DBC();
  (*(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_lazyContainer))(v2);
  v20 = *(v0 + 304);
  sub_1AEAF93AC();
  swift_allocObject();
  *(v0 + 384) = sub_1AEAF93BC();
  v21 = *(v20 + 16);
  *(v0 + 392) = v21;
  if (v21)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 400) = v24;
      *(v0 + 408) = v22;
      v25 = *(v0 + 508);
      v26 = (*(v0 + 304) + 56 * v22);
      v27 = v26[4];
      *(v0 + 416) = v27;
      v28 = v26[5];
      *(v0 + 424) = v28;
      v29 = v26[6];
      *(v0 + 432) = v29;
      v30 = v26[7];
      *(v0 + 440) = v30;
      v31 = v26[8];
      *(v0 + 448) = v31;
      v32 = v26[9];
      *(v0 + 456) = v32;
      v33 = v26[10];
      *(v0 + 464) = v33;
      if (v25 == 1)
      {
        *(v0 + 192) = v27;
        *(v0 + 200) = v28;
        *&v56 = v29;
        *(&v56 + 1) = v30;
        *&v57 = v31;
        *(&v57 + 1) = v32;
        *(v0 + 208) = v56;
        *(v0 + 224) = v57;
        *(v0 + 240) = v33;

        v58 = Participant.handlesForStoring.getter();
        *(v0 + 472) = v58;
        v59 = swift_task_alloc();
        *(v0 + 480) = v59;
        *v59 = v0;
        v59[1] = sub_1AEA7DF6C;

        return sub_1AEA7F350(v58);
      }

      *(v0 + 80) = v27;
      *(v0 + 88) = v28;
      *&v34 = v29;
      *(&v34 + 1) = v30;
      *&v35 = v31;
      *(&v35 + 1) = v32;
      *(v0 + 96) = v34;
      *(v0 + 112) = v35;
      *(v0 + 128) = v33;

      v36 = Participant.handlesForStoring.getter();
      v37 = *(v36 + 16);
      if (v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
        v38 = swift_allocObject();
        v39 = _swift_stdlib_malloc_size(v38);
        v40 = v39 - 32;
        if (v39 < 32)
        {
          v40 = v39 - 17;
        }

        v38[2] = v37;
        v38[3] = 2 * (v40 >> 4);
        v41 = sub_1AEA822AC((v0 + 248), v38 + 4, v37, v36);
        sub_1AEA83A70();
        if (v41 != v37)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          swift_once();
          v3 = sub_1AEAF8FEC();
          __swift_project_value_buffer(v3, qword_1ED98DDE0);

          v4 = v41;
          v5 = sub_1AEAF8FCC();
          v6 = sub_1AEAF9A9C();

          if (os_log_type_enabled(v5, v6))
          {
            v7 = *(v0 + 304);
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v63 = v10;
            *v8 = 136380931;
            v11 = MEMORY[0x1B270CC60](v7, &type metadata for Participant);
            v13 = sub_1AEA45C14(v11, v12, &v63);

            *(v8 + 4) = v13;
            *(v8 + 12) = 2112;
            v14 = v41;
            v15 = _swift_stdlib_bridgeErrorToNSError();
            *(v8 + 14) = v15;
            *v9 = v15;
            _os_log_impl(&dword_1AEA3F000, v5, v6, "Failed fetch for %{private}s. Error: %@", v8, 0x16u);
            sub_1AEA41FAC(v9, &unk_1EB5E9C00);
            MEMORY[0x1B270E620](v9, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v10);
            MEMORY[0x1B270E620](v10, -1, -1);
            MEMORY[0x1B270E620](v8, -1, -1);
          }

          v16 = v41;
          v17 = sub_1AEADC9B0(57, v41);
          *(v0 + 288) = v17;
          type metadata accessor for SCAError(0);
          sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
          swift_willThrowTypedImpl();

          v18 = *(v0 + 8);
          v19 = v17;
          goto LABEL_35;
        }
      }

      else
      {

        v38 = v23;
      }

      v42 = *(v0 + 320);
      *(swift_task_alloc() + 16) = v38;
      *(v0 + 296) = type metadata accessor for SensitiveHandle();
      sub_1AEAF8DAC();

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C08);
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      sub_1AEA82A98(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
      sub_1AEAF93EC();
      v41 = 0;
      v44 = sub_1AEAF937C();
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      if (v44 >> 62)
      {
        if (!sub_1AEAF9FFC())
        {
LABEL_25:

          v24 = *(v0 + 400);
          goto LABEL_26;
        }
      }

      else if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B270D3B0](0, v44);
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }
      }

      v45 = *(v0 + 464);
      v46 = *(v0 + 416);
      v47 = *(v0 + 424);
      v61 = *(v0 + 448);
      v62 = *(v0 + 432);

      sub_1AEA5B2FC();

      v48 = *(v0 + 76);
      *(v0 + 136) = v46;
      *(v0 + 144) = v47;
      *(v0 + 168) = v61;
      *(v0 + 152) = v62;
      *(v0 + 184) = v45;
      *(v0 + 504) = v48;
      SensitiveParticipant.init(participant:analysis:)(v0 + 136, (v0 + 504), v0 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v0 + 400);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1AEA81760(0, *(v24 + 2) + 1, 1, *(v0 + 400));
      }

      v51 = *(v24 + 2);
      v50 = *(v24 + 3);
      if (v51 >= v50 >> 1)
      {
        v24 = sub_1AEA81760((v50 > 1), v51 + 1, 1, v24);
      }

      *(v24 + 2) = v51 + 1;
      v52 = &v24[64 * v51];
      v53 = *(v0 + 16);
      v54 = *(v0 + 32);
      v55 = *(v0 + 48);
      *(v52 + 76) = *(v0 + 60);
      *(v52 + 3) = v54;
      *(v52 + 4) = v55;
      *(v52 + 2) = v53;
LABEL_26:
      if (*(v0 + 408) + 1 == *(v0 + 392))
      {

        goto LABEL_34;
      }

      v22 = *(v0 + 408) + 1;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v18 = *(v0 + 8);
  v19 = v24;
LABEL_35:

  return v18(v19);
}

uint64_t sub_1AEA7DF6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {

    v5 = v4[46];
    v6 = v4[47];
    v7 = sub_1AEA7E900;
  }

  else
  {
    v4[62] = a1;
    v5 = v4[46];
    v6 = v4[47];
    v7 = sub_1AEA7E0E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AEA7E0E0()
{
  v61 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  while (1)
  {
    v4 = *(v0 + 320);
    *(swift_task_alloc() + 16) = v2;
    *(v0 + 296) = type metadata accessor for SensitiveHandle();
    sub_1AEAF8DAC();

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C08);
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    sub_1AEA82A98(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
    sub_1AEAF93EC();
    v6 = sub_1AEAF937C();
    if (v3)
    {
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

      if (qword_1ED98D6B8 != -1)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    }

    v7 = v6;
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    if (v7 >> 62)
    {
      if (!sub_1AEAF9FFC())
      {
LABEL_16:

        v13 = *(v0 + 400);
        goto LABEL_17;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B270D3B0](0, v7);
      goto LABEL_10;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      swift_once();
LABEL_26:
      v36 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v36, qword_1ED98DDE0);

      v37 = v3;
      v38 = sub_1AEAF8FCC();
      v39 = sub_1AEAF9A9C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 304);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v60 = v43;
        *v41 = 136380931;
        v44 = MEMORY[0x1B270CC60](v40, &type metadata for Participant);
        v46 = sub_1AEA45C14(v44, v45, &v60);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2112;
        v47 = v3;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v48;
        *v42 = v48;
        _os_log_impl(&dword_1AEA3F000, v38, v39, "Failed fetch for %{private}s. Error: %@", v41, 0x16u);
        sub_1AEA41FAC(v42, &unk_1EB5E9C00);
        MEMORY[0x1B270E620](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1B270E620](v43, -1, -1);
        MEMORY[0x1B270E620](v41, -1, -1);
      }

      v49 = v3;
      v50 = sub_1AEADC9B0(57, v3);
      *(v0 + 288) = v50;
      type metadata accessor for SCAError(0);
      sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
      swift_willThrowTypedImpl();

      v51 = *(v0 + 8);
      v52 = v50;
      goto LABEL_30;
    }

LABEL_10:
    v8 = *(v0 + 464);
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);
    v58 = *(v0 + 448);
    v59 = *(v0 + 432);

    sub_1AEA5B2FC();

    v11 = *(v0 + 76);
    *(v0 + 136) = v10;
    *(v0 + 144) = v9;
    *(v0 + 168) = v58;
    *(v0 + 152) = v59;
    *(v0 + 184) = v8;
    *(v0 + 504) = v11;
    SensitiveParticipant.init(participant:analysis:)(v0 + 136, (v0 + 504), v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 400);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AEA81760(0, *(v13 + 2) + 1, 1, *(v0 + 400));
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AEA81760((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[64 * v15];
    v17 = *(v0 + 16);
    v18 = *(v0 + 32);
    v19 = *(v0 + 48);
    *(v16 + 76) = *(v0 + 60);
    *(v16 + 3) = v18;
    *(v16 + 4) = v19;
    *(v16 + 2) = v17;
LABEL_17:
    if (*(v0 + 408) + 1 == *(v0 + 392))
    {

      v51 = *(v0 + 8);
      v52 = v13;
LABEL_30:

      return v51(v52);
    }

    v20 = *(v0 + 408);
    *(v0 + 400) = v13;
    *(v0 + 408) = v20 + 1;
    v21 = *(v0 + 508);
    v22 = (*(v0 + 304) + 56 * v20);
    v23 = v22[11];
    *(v0 + 416) = v23;
    v24 = v22[12];
    *(v0 + 424) = v24;
    v25 = v22[13];
    *(v0 + 432) = v25;
    v26 = v22[14];
    *(v0 + 440) = v26;
    v27 = v22[15];
    *(v0 + 448) = v27;
    v28 = v22[16];
    *(v0 + 456) = v28;
    v29 = v22[17];
    *(v0 + 464) = v29;
    if (v21)
    {
      break;
    }

    *(v0 + 80) = v23;
    *(v0 + 88) = v24;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *(v0 + 96) = v30;
    *(v0 + 112) = v31;
    *(v0 + 128) = v29;

    v32 = Participant.handlesForStoring.getter();
    v33 = *(v32 + 16);
    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
      v2 = swift_allocObject();
      v34 = _swift_stdlib_malloc_size(v2);
      v35 = v34 - 32;
      if (v34 < 32)
      {
        v35 = v34 - 17;
      }

      v2[2] = v33;
      v2[3] = 2 * (v35 >> 4);
      v3 = sub_1AEA822AC((v0 + 248), v2 + 4, v33, v32);
      sub_1AEA83A70();
      if (v3 != v33)
      {
        goto LABEL_37;
      }
    }

    else
    {

      v2 = v1;
    }

    v3 = 0;
  }

  *(v0 + 192) = v23;
  *(v0 + 200) = v24;
  *&v54 = v25;
  *(&v54 + 1) = v26;
  *&v55 = v27;
  *(&v55 + 1) = v28;
  *(v0 + 208) = v54;
  *(v0 + 224) = v55;
  *(v0 + 240) = v29;

  v56 = Participant.handlesForStoring.getter();
  *(v0 + 472) = v56;
  v57 = swift_task_alloc();
  *(v0 + 480) = v57;
  *v57 = v0;
  v57[1] = sub_1AEA7DF6C;

  return sub_1AEA7F350(v56);
}

uint64_t sub_1AEA7E900()
{
  v20 = v0;

  v1 = v0[61];
  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1ED98DDE0);

  v3 = v1;
  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136380931;
    v10 = MEMORY[0x1B270CC60](v6, &type metadata for Participant);
    v12 = sub_1AEA45C14(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1AEA3F000, v4, v5, "Failed fetch for %{private}s. Error: %@", v7, 0x16u);
    sub_1AEA41FAC(v8, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  v15 = v1;
  v16 = sub_1AEADC9B0(57, v1);
  v0[36] = v16;
  type metadata accessor for SCAError(0);
  sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
  swift_willThrowTypedImpl();

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_1AEA7EBB8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = *a3;
  swift_unknownObjectWeakInit();
  v10 = v8 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(v8 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_processHandle) = 0;
  v11 = OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_uuid;
  v12 = sub_1AEAF8D9C();
  (*(*(v12 - 8) + 32))(v8 + v11, a1, v12);
  *(v8 + 16) = a2;
  *(v8 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_handlers) = v9;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v8;
}

void sub_1AEA7ECD4(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost__sessionHandlers);
  v36[3] = v5;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BF0);
  Atomic.wrappedValue.getter(&v37);
  v7 = sub_1AEA8267C(&v37, a1);

  if (!(v37 >> 62))
  {
    v8 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_5:
    v10 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v10, qword_1ED98DDE0);

    v11 = a2;
    v12 = sub_1AEAF8FCC();
    v13 = sub_1AEAF9A7C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v14 = 136315650;
      v17 = sub_1AEAF900C();
      v19 = sub_1AEA45C14(v17, v18, &v37);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      sub_1AEAF8D9C();
      sub_1AEA82A98(&qword_1ED98A450, MEMORY[0x1E69695A8]);
      v20 = sub_1AEAFA27C();
      v22 = sub_1AEA45C14(v20, v21, &v37);

      *(v14 + 14) = v22;
      *(v14 + 22) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v24;
      *v15 = v24;
      _os_log_impl(&dword_1AEA3F000, v12, v13, "Removed session: %s %s. Error: %@", v14, 0x20u);
      sub_1AEA41FAC(v15, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v15, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v16, -1, -1);
      MEMORY[0x1B270E620](v14, -1, -1);
    }

    else
    {
    }

    return;
  }

  v8 = sub_1AEAF9FFC();
  if (v8 < v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  sub_1AEA829C0(v7, v8);
  v36[0] = v37;
  v36[1] = v5;
  Atomic.wrappedValue.setter(v36, v6);

  sub_1AEAF906C();
  if (a2)
  {
    v9 = a2;
    if (qword_1ED98D6B8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v25, qword_1ED98DDE0);

  v26 = sub_1AEAF8FCC();
  v27 = sub_1AEAF9A7C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315394;
    v30 = sub_1AEAF900C();
    v32 = sub_1AEA45C14(v30, v31, &v37);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    sub_1AEAF8D9C();
    sub_1AEA82A98(&qword_1ED98A450, MEMORY[0x1E69695A8]);
    v33 = sub_1AEAFA27C();
    v35 = sub_1AEA45C14(v33, v34, &v37);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_1AEA3F000, v26, v27, "Removed session: %s %s.", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B270E620](v29, -1, -1);
    MEMORY[0x1B270E620](v28, -1, -1);
  }
}

id _AnalysisHistoryXPCHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _AnalysisHistoryXPCHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEA7F350(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA7F370, 0, 0);
}

uint64_t sub_1AEA7F370()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_familyTask);
  v0[6] = v1;

  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  v0[8] = v3;
  *v2 = v0;
  v2[1] = sub_1AEA7F458;
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v1, &type metadata for Family, v3, v4);
}

uint64_t sub_1AEA7F458()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AEA7F7BC;
  }

  else
  {
    v2 = sub_1AEA7F588;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA7F588()
{
  v1 = *(v0 + 32);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AEAFC470;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    swift_bridgeObjectRetain_n();
    v14 = Family.hasParent(withOneOf:)(v13);

    if (v14)
    {
    }

    else
    {
      v15 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AEA61E58(0, *(v22 + 16) + 1, 1);
        v15 = v22;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_1AEA61E58((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        v15 = v22;
      }

      *(v15 + 16) = v18;
      v22 = v15;
      v19 = v15 + 16 * v17;
      *(v19 + 32) = v11;
      *(v19 + 40) = v12;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v7);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v20 = *(v21 + 8);

  return v20(v22);
}

uint64_t sub_1AEA7F7BC()
{
  v16 = v0;
  v1 = *(v0 + 72);
  *(v0 + 24) = v1;
  v2 = v1;
  if (!swift_dynamicCast())
  {
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v3, qword_1ED98DDE0);
  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEA3F000, v4, v5, "Timed-out waiting for family info.", v6, 2u);
    MEMORY[0x1B270E620](v6, -1, -1);
  }

  v7 = *(v0 + 32);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 32);
    v10 = sub_1AEA8186C(v8, 0);
    v11 = sub_1AEA822AC(&v15, v10 + 4, v8, v9);

    sub_1AEA83A70();
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 8);

  return v14(v10);
}

void sub_1AEA7F9F4(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = sub_1AEAF92DC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_1AEAF934C();
  v53 = *(v54 - 8);
  v8 = MEMORY[0x1EEE9AC00](v54);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v10;
  v69 = sub_1AEAF92FC();
  v11 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1AEAF931C();
  v13 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3;
  aBlock[0] = *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost__sessionHandlers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BF0);
  Atomic.wrappedValue.getter(&v77);
  v74[2] = a3;
  v15 = sub_1AEA80730(sub_1AEA83D10, v74, v77);
  if (qword_1ED98D6B8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v16 = sub_1AEAF8FEC();
    v17 = __swift_project_value_buffer(v16, qword_1ED98DDE0);

    v58 = v17;
    v18 = sub_1AEAF8FCC();
    v19 = sub_1AEAF9A8C();
    v20 = v15 >> 62;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      if (v20)
      {
        v22 = sub_1AEAF9FFC();
      }

      else
      {
        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v22;

      *(v21 + 12) = 2048;
      *(v21 + 14) = a1[2];

      *(v21 + 22) = 2048;
      *(v21 + 24) = *(a2 + 16);

      _os_log_impl(&dword_1AEA3F000, v18, v19, "Updating %ld client caches for %ld additions and %ld removals.", v21, 0x20u);
      MEMORY[0x1B270E620](v21, -1, -1);
    }

    else
    {
    }

    v73 = dispatch_group_create();
    v70 = a1;
    v71 = a2;
    v49 = v15 >> 62;
    if (!v20)
    {
      a2 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        break;
      }

      goto LABEL_9;
    }

    a2 = sub_1AEAF9FFC();
    if (!a2)
    {
      break;
    }

LABEL_9:
    v24 = 0;
    v62 = OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_clientUpdateQueue;
    v65 = v15 & 0xC000000000000001;
    v64 = v15 & 0xFFFFFFFFFFFFFF8;
    v61 = v76;
    v60 = (v11 + 8);
    v59 = (v13 + 8);
    *&v23 = 67109120;
    v57 = v23;
    v63 = v15;
    while (v65)
    {
      v11 = MEMORY[0x1B270D3B0](v24, v15);
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v31 = (*(*v11 + 200))();
      if (v31)
      {

        v32 = sub_1AEAF8FCC();
        v33 = sub_1AEAF9A8C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v34;
          *v34 = v57;
          if (*(v11 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid + 4))
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v11 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid);
          }

          *(v34 + 1) = v36;

          _os_log_impl(&dword_1AEA3F000, v32, v33, "Not waiting for suspended client %d", v35, 8u);
          MEMORY[0x1B270E620](v35, -1, -1);
        }

        else
        {
        }
      }

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v28 = v70;
      v27 = v71;
      v26[2] = v11;
      v26[3] = v28;
      v26[4] = v27;
      v26[5] = v25;
      v76[2] = sub_1AEA83DB4;
      v76[3] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v76[0] = sub_1AEA4DB50;
      v76[1] = &block_descriptor_1;
      a1 = _Block_copy(aBlock);

      v29 = v66;
      sub_1AEA9757C();
      v30 = v68;
      sub_1AEA97580();
      sub_1AEA97658(v73, (v31 & 1) == 0, v29, v30, a1);
      _Block_release(a1);

      (*v60)(v30, v69);
      (*v59)(v29, v67);

      ++v24;
      v15 = v63;
      if (v13 == a2)
      {
        goto LABEL_27;
      }
    }

    if (v24 >= *(v64 + 16))
    {
      goto LABEL_24;
    }

    v11 = *(v15 + 8 * v24 + 32);

    v13 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_15;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_27:
  v37 = v50;
  sub_1AEAF932C();
  v38 = v52;
  *v52 = 2;
  v39 = v55;
  v40 = v56;
  (*(v55 + 104))(v38, *MEMORY[0x1E69E7F48], v56);
  v41 = v51;
  sub_1AEAF933C();
  (*(v39 + 8))(v38, v40);
  v42 = *(v53 + 8);
  v43 = v54;
  v42(v37, v54);
  v44 = v73;
  sub_1AEAF9ABC();
  v42(v41, v43);
  if ((sub_1AEAF92EC() & 1) == 0)
  {

    goto LABEL_35;
  }

  v45 = sub_1AEAF8FCC();
  v46 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    if (v49)
    {
      v48 = sub_1AEAF9FFC();
    }

    else
    {
      v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 4) = v48;

    _os_log_impl(&dword_1AEA3F000, v45, v46, "Timed out waiting for %ld other clients to update.", v47, 0xCu);
    MEMORY[0x1B270E620](v47, -1, -1);

LABEL_35:
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AEA80380@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C20);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C28);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAF8B9C();
  sub_1AEA4A324(&qword_1EB5E8C30, &qword_1EB5E8C18);
  sub_1AEAF8BAC();
  swift_getKeyPath();
  sub_1AEAF8B7C();

  (*(v5 + 8))(v7, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C38);
  a2[4] = sub_1AEA83A78();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1AEA4A324(&qword_1EB5E8C70, &qword_1EB5E8C28);
  sub_1AEA4A324(&qword_1EB5E8C78, &qword_1EB5E8C20);
  sub_1AEA4A324(&qword_1EB5E8C80, &qword_1EB5E89A8);
  v16 = v19;
  sub_1AEAF8B8C();
  (*(v20 + 8))(v11, v16);
  return (*(v13 + 8))(v15, v12);
}

void *sub_1AEA80730(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1AEAF9FFC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1B270D3B0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1AEAF9EBC();
          sub_1AEAF9EFC();
          v5 = v14;
          sub_1AEAF9F0C();
          v3 = &v18;
          sub_1AEAF9ECC();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

void sub_1AEA80934(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1AEA80990(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_host;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1AEA80A28;
}

void sub_1AEA80A28(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1AEA80AA4()
{
  result = *(v0 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_processHandle);
  if (result)
  {
    result = [result currentState];
    if (result)
    {
      v2 = result;
      v3 = [result taskState];

      return (v3 == 3);
    }
  }

  return result;
}

uint64_t sub_1AEA80B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *atoken.val = sub_1AEAF924C();
  atoken.val[2] = v6;
  atoken.val[3] = v7;
  atoken.val[4] = v8;
  atoken.val[5] = v9;
  atoken.val[6] = v10;
  atoken.val[7] = v11;
  v12 = audit_token_to_pid(&atoken);
  v13 = v2 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid;
  v14 = *(v2 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid);
  v15 = *(v2 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid + 4);
  *v13 = v12;
  *(v13 + 4) = 0;
  if (*(v2 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid + 4))
  {
    if (v15)
    {
      goto LABEL_12;
    }

    v18 = 0;
    goto LABEL_11;
  }

  v16 = *(v2 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_pid);
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == v14;
  }

  if (!v17)
  {
    v18 = [objc_opt_self() identifierWithPid_];
    if (v18)
    {
      sub_1AEA49EF8(0, &qword_1ED989AD8);
      v19 = v18;
      v18 = sub_1AEA82DEC(v19);
    }

LABEL_11:
    v20 = *(v3 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_processHandle);
    *(v3 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_processHandle) = v18;
  }

LABEL_12:
  *atoken.val = *(v3 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_handlers);

  MessageHandlers.findAndInvokeHandler(for:)(a1, a2);
}

void sub_1AEA80C7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AEAF915C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED98D6B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v8, qword_1ED98DDE0);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_1AEAF8FCC();
  v11 = sub_1AEAF9A9C();
  v12 = os_log_type_enabled(v10, v11);
  v29 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v2;
    v16 = v15;
    *v14 = 138412290;
    sub_1AEA82A98(&qword_1ED98A4A8, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v9(v17, v7, v4);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v14 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1AEA3F000, v10, v11, "SessionHandler cancelled with error: %@", v14, 0xCu);
    sub_1AEA41FAC(v16, &unk_1EB5E9C00);
    v19 = v16;
    v2 = v27;
    MEMORY[0x1B270E620](v19, -1, -1);
    v20 = v14;
    a1 = v28;
    MEMORY[0x1B270E620](v20, -1, -1);
  }

  else
  {

    v21 = (*(v5 + 8))(v7, v4);
  }

  v22 = (*(*v2 + 128))(v21);
  if (v22)
  {
    v23 = v22;
    sub_1AEA82A98(&qword_1ED98A4A8, MEMORY[0x1E69E84C0]);
    v24 = swift_allocError();
    v29(v25, a1, v4);
    sub_1AEA7ECD4(v2, v24);
  }
}

void sub_1AEA80FC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AEAF900C();
  v7 = v6;

  v8 = sub_1AEA92F20();
  sub_1AEAB9B04(v8 & 1, a1, a2, &v29);
  v27[0] = v29;
  v28 = v30;
  v9 = sub_1AEA82AE0();
  sub_1AEAE79AC(v27, &type metadata for UpdateSensitiveParticipantCache, v9, v10);
  if (v2)
  {

    if (qword_1ED98D6B8 != -1)
    {
      swift_once();
    }

    v11 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v11, qword_1ED98DDE0);

    v12 = v2;
    v13 = sub_1AEAF8FCC();
    v14 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v15 = 136315394;
      v18 = sub_1AEA45C14(v5, v7, &v29);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_1AEA3F000, v13, v14, "Failed to update client %s cache: %@", v15, 0x16u);
      sub_1AEA41FAC(v16, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B270E620](v17, -1, -1);
      MEMORY[0x1B270E620](v15, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
  }

  else
  {

    if (qword_1ED98D6B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v21, qword_1ED98DDE0);

    v22 = sub_1AEAF8FCC();
    v23 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      v26 = sub_1AEA45C14(v5, v7, &v29);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1AEA3F000, v22, v23, "Updated client cache at %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1B270E620](v25, -1, -1);
      MEMORY[0x1B270E620](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1AEA81360()
{

  v1 = OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_uuid;
  v2 = sub_1AEAF8D9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1B270E710](v0 + OBJC_IVAR____TtCC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost14SessionHandler_host);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1AEA814BC()
{
  v0 = sub_1AEAF8CAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = sub_1AEAF958C();
  v8 = CFCopyHomeDirectoryURLForUser();

  if (v8)
  {
    v9 = v8;
    sub_1AEAF8C9C();

    sub_1AEAF8C7C();
    v10 = *(v1 + 8);
    v10(v4, v0);
    sub_1AEAF8C7C();
    v10(v6, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AEA81650()
{
  v0 = sub_1AEAF8CAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1ED98DD88);
  __swift_project_value_buffer(v0, qword_1ED98DD88);
  sub_1AEA814BC();
  sub_1AEAF8C7C();
  return (*(v1 + 8))(v4, v0);
}

char *sub_1AEA81760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AEA8186C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1AEA818F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEA81A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEA81A78(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AEA63D38;

  return sub_1AEA7BD28(a1, v6, v7, v5, v4);
}

uint64_t sub_1AEA81B30(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1AEA61C58(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1AEA822AC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1AEA61C58((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1AEA83A70();
  *v1 = v4;
  return result;
}

uint64_t sub_1AEA81DEC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AEAF9FFC();
LABEL_9:
  result = sub_1AEAF9E5C();
  *v1 = result;
  return result;
}

uint64_t sub_1AEA81E8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C98);
  v36 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 4 * v21);
      v26 = *v25;
      v37 = v25[1];
      if ((v36 & 1) == 0)
      {
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 4 * v15);
      *v17 = v26;
      v17[1] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1AEA82144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C98);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1AEA822AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AEA82404(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AEAF9FFC();
  }

  return sub_1AEAF9E5C();
}

unint64_t sub_1AEA82468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C98);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 50); ; i += 12)
    {
      v5 = *(i - 9);
      v6 = *(i - 5);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1AEA61F84(v5, v6, sub_1AEA61BA0);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 4 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AEA82590(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_1AEAF9FFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B270D3B0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v8 = *(v7 + 16);
    v9 = *(a2 + 16);

    if (v8 == v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1AEA8267C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1AEA82590(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1AEAF9FFC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1AEAF9FFC())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B270D3B0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_17:
    v14 = *(v13 + 16);
    v15 = *(a2 + 16);

    if (v14 != v15)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1B270D3B0](v10, v7);
          v16 = MEMORY[0x1B270D3B0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1AEA82404(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_1AEA82404(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_1AEAF9FFC();
}

uint64_t sub_1AEA828C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for _AnalysisHistoryXPCHost.SessionHandler(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1AEAF9FFC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1AEAF9FFC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEA829C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1AEAF9FFC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1AEAF9FFC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1AEA81DEC(result);

  return sub_1AEA828C0(v4, v2, 0);
}

uint64_t sub_1AEA82A98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AEA82AE0()
{
  result = qword_1ED98A2E8;
  if (!qword_1ED98A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A2E8);
  }

  return result;
}

void sub_1AEA82B8C()
{
  sub_1AEA82C90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AEA82C90()
{
  if (!qword_1ED98A6A0)
  {
    sub_1AEAF90BC();
    v0 = sub_1AEAF9C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED98A6A0);
    }
  }
}

uint64_t sub_1AEA82D10()
{
  result = sub_1AEAF8D9C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1AEA82DEC(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1AEAF8C5C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1AEA82EB8(uint64_t a1)
{
  v51 = *(*(sub_1AEAF8D9C() - 8) + 80);
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1ED98D6B8 == -1)
    {
LABEL_5:
      v11 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v11, qword_1ED98DDE0);
      v12 = sub_1AEAF8FCC();
      v13 = sub_1AEAF9A9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1AEA3F000, v12, v13, "No host to handle store message", v14, 2u);
        MEMORY[0x1B270E620](v14, -1, -1);
      }

      type metadata accessor for SCAError(0);
      sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
      sub_1AEA82A98(&unk_1ED98A750, type metadata accessor for SCAError);
      sub_1AEAF8C3C();
      v10 = v54;
      sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
      swift_willThrowTypedImpl();
      return v10;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v8 = Strong;
  v9 = sub_1AEAB42D8();
  if (!v2)
  {
    v54 = v6;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    v16 = sub_1AEA4A324(&qword_1EB5E8C88, &qword_1EB5E89A8);
    v23 = sub_1AEA9A130(v15, v16, v17, v18, v19, v20, v21, v22);
    (*&v8[OBJC_IVAR____TtC24SensitiveContentAnalysis23_AnalysisHistoryXPCHost_lazyContainer])();
    v47 = v1;
    v48 = v8;
    v53 = v23;
    sub_1AEAF93AC();
    swift_allocObject();
    sub_1AEAF93BC();
    v52 = *(v23 + 16);
    if (v52)
    {
      v24 = 0;
      v25 = v23 + 40;
      while (v24 < *(v23 + 16))
      {
        ++v24;
        type metadata accessor for SensitiveHandle();
        LOWORD(v54) = v4;
        WORD1(v54) = v5;
        swift_bridgeObjectRetain_n();
        sub_1AEA5B6B4();
        sub_1AEA82A98(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
        sub_1AEAF939C();
        v23 = v53;

        v25 += 16;
        if (v52 == v24)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_12:
    sub_1AEAF936C();
    v27 = sub_1AEA82468(MEMORY[0x1E69E7CC0]);
    if (!v52)
    {
LABEL_30:

      v10 = v48;
      sub_1AEA7F9F4(v27, MEMORY[0x1E69E7CC0], v47 + ((v51 + 32) & ~v51));

      return v10;
    }

    v28 = 0;
    v29 = (v23 + 40);
    v49 = v5;
    v50 = v4;
    while (1)
    {
      if (v28 >= *(v23 + 16))
      {
        goto LABEL_32;
      }

      v32 = *(v29 - 1);
      v31 = *v29;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v27;
      v35 = sub_1AEA61F84(v32, v31, sub_1AEA61BA0);
      v36 = v27[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_33;
      }

      v39 = v34;
      if (v27[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1AEA82144();
          if (v39)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_1AEA81E8C(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1AEA61F84(v32, v31, sub_1AEA61BA0);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_36;
        }

        v35 = v40;
        if (v39)
        {
LABEL_16:
          v30 = (v27[7] + 4 * v35);
          *v30 = v50;
          v30[1] = v49;

          goto LABEL_17;
        }
      }

      v27[(v35 >> 6) + 8] |= 1 << v35;
      v42 = (v27[6] + 16 * v35);
      *v42 = v32;
      v42[1] = v31;
      v43 = (v27[7] + 4 * v35);
      *v43 = v50;
      v43[1] = v49;
      v44 = v27[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        __break(1u);
LABEL_36:
        result = sub_1AEAFA31C();
        __break(1u);
        return result;
      }

      v27[2] = v46;
LABEL_17:
      ++v28;
      v29 += 2;
      v23 = v53;
      if (v52 == v28)
      {
        goto LABEL_30;
      }
    }
  }

  v10 = v9;

  return v10;
}

unint64_t sub_1AEA83520()
{
  result = qword_1ED98A300;
  if (!qword_1ED98A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A300);
  }

  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = sub_1AEAF8D9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEA83640(uint64_t a1)
{
  v4 = *(*(sub_1AEAF8D9C() - 8) + 80);
  v5 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1AEAB42D8();
    if (v2)
    {
      v9 = v8;

      return v9;
    }

    v14 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    v15 = *(v5 + 16);
    if (!v15)
    {
LABEL_13:
      v9 = sub_1AEA7CC54(v14, v1 + ((v4 + 32) & ~v4));

      return v9;
    }

    v16 = 0;
    v17 = v5 + 80;
    while (v16 < *(v5 + 16))
    {
      ++v16;
      v17 += 56;

      sub_1AEA81B30(v18);
      if (v15 == v16)
      {
        v14 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_1ED98D6B8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v10 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v10, qword_1ED98DDE0);
  v11 = sub_1AEAF8FCC();
  v12 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1AEA3F000, v11, v12, "No host to handle remove message", v13, 2u);
    MEMORY[0x1B270E620](v13, -1, -1);
  }

  type metadata accessor for SCAError(0);
  sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
  sub_1AEA82A98(&unk_1ED98A750, type metadata accessor for SCAError);
  sub_1AEAF8C3C();
  v9 = v20;
  sub_1AEA82A98(&qword_1ED98AAC0, type metadata accessor for SCAError);
  swift_willThrowTypedImpl();
  return v9;
}

unint64_t sub_1AEA83904()
{
  result = qword_1ED989F90;
  if (!qword_1ED989F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989F90);
  }

  return result;
}

uint64_t sub_1AEA83958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1AEA5E1AC;

  return sub_1AEA7CFB4(a1, a2, v9, v8, a3);
}

unint64_t sub_1AEA83A1C()
{
  result = qword_1ED98A5B0;
  if (!qword_1ED98A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5B0);
  }

  return result;
}

unint64_t sub_1AEA83A78()
{
  result = qword_1EB5E8C40;
  if (!qword_1EB5E8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8C38);
    sub_1AEA83B04();
    sub_1AEA83C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8C40);
  }

  return result;
}

unint64_t sub_1AEA83B04()
{
  result = qword_1EB5E8C48;
  if (!qword_1EB5E8C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8C28);
    sub_1AEA83BD8(&qword_1EB5E8C50);
    sub_1AEA83BD8(&qword_1EB5E8C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8C48);
  }

  return result;
}

uint64_t sub_1AEA83BD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E89A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AEA83C44()
{
  result = qword_1EB5E8C60;
  if (!qword_1EB5E8C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8C20);
    sub_1AEA4A324(&qword_1EB5E8C68, &qword_1EB5E8C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8C60);
  }

  return result;
}

BOOL sub_1AEA83D10()
{
  sub_1AEAF8D9C();
  sub_1AEA82A98(&qword_1EB5E8C90, MEMORY[0x1E69695A8]);
  return (sub_1AEAF957C() & 1) == 0;
}

uint64_t sub_1AEA83E78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA4E524(a1, v4);
}

uint64_t ParticipantJoins.Event.hashValue.getter()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

void static ParticipantJoins.post(_:)()
{
  v0 = sub_1AEAF8D6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AEAF8D5C();
  sub_1AEAF8D3C();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (qword_1ED98AC50 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED98DD50;
  v7 = sub_1AEAF958C();
  [v6 setDouble:v7 forKey:v5];
}

uint64_t *sub_1AEA8411C()
{
  if (qword_1ED98AC50 != -1)
  {
    swift_once();
  }

  return &qword_1ED98DD50;
}

uint64_t sub_1AEA8416C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v20 = sub_1AEAF8D6C();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CC0);
  MEMORY[0x1EEE9AC00](v19);
  v8 = swift_allocObject();
  v23 = 0;
  v24 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CC8);
  Atomic.init(wrappedValue:)(&v23, v9, (v8 + 16));
  v10 = swift_allocObject();
  v23 = 0;
  v24 = 1;
  Atomic.init(wrappedValue:)(&v23, v9, (v10 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CD0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  sub_1AEAF996C();
  v11 = v18;
  v12 = v20;
  (*(v2 + 16))(v18, v21, v20);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v13, v11, v12);
  *(v15 + v14) = v8;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_1AEA4A324(&qword_1ED989B00, &qword_1EB5E8CC0);
  return sub_1AEAFA2CC();
}

uint64_t sub_1AEA844CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  v7 = sub_1AEAF8FEC();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_1AEAF8D6C();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 25) = *a2;
  *(v5 + 168) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1AEA8460C, 0, 0);
}

uint64_t sub_1AEA8460C()
{
  sub_1AEAF988C();
  v1 = *(v0 + 168);
  sub_1AEAF8D3C();
  if (v2 >= v1)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 168);
  if ((*(v0 + 25) & 1) == 0)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D20);
    Atomic.wrappedValue.getter(v0 + 48);
    if ((*(v0 + 56) & 1) != 0 || v3 > *(v0 + 48))
    {
      v6 = (v0 + 136);
      v20 = *(v0 + 136);
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = *(v0 + 144);
      v24 = *(v0 + 112);
      v25 = *(v0 + 120);
      sub_1AEAF8D5C();
      sub_1AEAF8D3C();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      *(v0 + 64) = v27;
      *(v0 + 72) = 0;

      Atomic.wrappedValue.setter(v0 + 64, v19);

      v28 = sub_1AEA65424();
      (*(v25 + 16))(v20, v28, v24);
      v15 = sub_1AEAF8FCC();
      v16 = sub_1AEAF9A7C();
      v17 = 0;
      if (!os_log_type_enabled(v15, v16))
      {
        v29 = *v6;
        goto LABEL_15;
      }

      v18 = "Participant joined";
      goto LABEL_12;
    }

LABEL_9:
    v17 = 2;
    goto LABEL_16;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D20);
  Atomic.wrappedValue.getter(v0 + 16);
  if ((*(v0 + 24) & 1) == 0 && v3 <= *(v0 + 16))
  {
    goto LABEL_9;
  }

  v6 = (v0 + 128);
  v5 = *(v0 + 128);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_1AEAF8D5C();
  sub_1AEAF8D3C();
  v13 = v12;
  (*(v8 + 8))(v7, v9);
  *(v0 + 32) = v13;
  *(v0 + 40) = 0;

  Atomic.wrappedValue.setter(v0 + 32, v4);

  v14 = sub_1AEA65424();
  (*(v11 + 16))(v5, v14, v10);
  v15 = sub_1AEAF8FCC();
  v16 = sub_1AEAF9A7C();
  if (!os_log_type_enabled(v15, v16))
  {
    v29 = *v6;
    v17 = 1;
    goto LABEL_15;
  }

  v17 = 1;
  v18 = "Participant continued";
LABEL_12:
  v29 = *v6;
  v30 = swift_slowAlloc();
  *v30 = 0;
  _os_log_impl(&dword_1AEA3F000, v15, v16, v18, v30, 2u);
  MEMORY[0x1B270E620](v30, -1, -1);
LABEL_15:
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);

  (*(v32 + 8))(v29, v31);
LABEL_16:
  **(v0 + 80) = v17;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1AEA8498C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  (*(v3 + 16))(&v18 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = type metadata accessor for ParticipantJoins.Observer();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV24SensitiveContentAnalysis16ParticipantJoinsP33_A1B455ED37557BDC9F886674143C91148Observer_block];
  *v10 = sub_1AEA85960;
  v10[1] = v7;
  v18.receiver = v9;
  v18.super_class = v8;

  v11 = objc_msgSendSuper2(&v18, sel_init);
  v12 = qword_1ED98AC50;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED98DD50;
  v15 = sub_1AEAF958C();
  [v14 addObserver:v13 forKeyPath:v15 options:1 context:0];

  v16 = sub_1AEAF958C();
  [v14 addObserver:v13 forKeyPath:v16 options:1 context:0];

  *(swift_allocObject() + 16) = v13;
  return sub_1AEAF991C();
}

uint64_t sub_1AEA84C04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D30);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  if (qword_1ED98AC50 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED98DD50;
  v5 = sub_1AEAF958C();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    v7 = swift_dynamicCast();
    v8 = v7 ^ 1;
    if (v7)
    {
      v9 = v14;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    sub_1AEA79B50(&v17);
    v8 = 1;
    v9 = 0.0;
  }

  v10 = sub_1AEAF958C();
  v11 = [v4 objectForKey_];

  if (v11)
  {
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    result = swift_dynamicCast();
    if (v8)
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    if ((result & 1) != 0 && v14 > v9)
    {
LABEL_17:
      LOBYTE(v17) = 1;
      *(&v17 + 1) = v14;
LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D28);
      sub_1AEAF993C();
      return (*(v1 + 8))(v3, v0);
    }

LABEL_22:
    LOBYTE(v17) = 0;
    *(&v17 + 1) = v9;
    goto LABEL_23;
  }

  result = sub_1AEA79B50(&v17);
  if ((v8 & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1AEA84FE0()
{
  if (qword_1ED98AC50 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED98DD50;
  v2 = v0;
  v3 = sub_1AEAF958C();
  [v1 removeObserver:v2 forKeyPath:v3];

  v4 = sub_1AEAF958C();
  [v1 removeObserver:v2 forKeyPath:v4];

  v6.receiver = v2;
  v6.super_class = type metadata accessor for ParticipantJoins.Observer();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1AEA85148()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1ED98DD50 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AEA851C4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1AEAF8D6C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1AEA5E1AC;

  return sub_1AEA844CC(a1, a2, v2 + v7, v9, v10);
}

unint64_t sub_1AEA852F4()
{
  result = qword_1EB5E8CD8;
  if (!qword_1EB5E8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8CD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantJoins(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ParticipantJoins(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for NSKeyValueChangeKey()
{
  if (!qword_1EB5E8CF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB5E8CF0);
    }
  }
}

uint64_t sub_1AEA854AC(uint64_t a1, id *a2)
{
  result = sub_1AEAF959C();
  *a2 = 0;
  return result;
}

uint64_t sub_1AEA85524(uint64_t a1, id *a2)
{
  v3 = sub_1AEAF95AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1AEA855A4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AEAF95BC();
  v2 = sub_1AEAF958C();

  *a1 = v2;
  return result;
}

uint64_t sub_1AEA855E8()
{
  v0 = sub_1AEAF95BC();
  v1 = MEMORY[0x1B270CB80](v0);

  return v1;
}

uint64_t sub_1AEA85624()
{
  sub_1AEAF95BC();
  sub_1AEAF95DC();
}

uint64_t sub_1AEA85678()
{
  sub_1AEAF95BC();
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v0 = sub_1AEAFA3FC();

  return v0;
}

uint64_t sub_1AEA856EC()
{
  v0 = sub_1AEAF95BC();
  v2 = v1;
  if (v0 == sub_1AEAF95BC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AEAFA2BC();
  }

  return v5 & 1;
}

uint64_t sub_1AEA85774@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AEAF958C();

  *a1 = v2;
  return result;
}

uint64_t sub_1AEA857BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AEAF95BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AEA857E8(uint64_t a1)
{
  v2 = sub_1AEA8591C(&qword_1EB5E8D10);
  v3 = sub_1AEA8591C(&qword_1EB5E8D18);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AEA8591C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AEA85960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D28);

  return sub_1AEA84C04();
}

uint64_t sub_1AEA859CC()
{
  result = sub_1AEAF958C();
  qword_1ED98BDF8 = result;
  return result;
}

uint64_t AnalysisHistory.__allocating_init(listenerEndpoint:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  sub_1AEA63BD4(a1, &v9 - v3, &qword_1EB5E8BA8);
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1ED98BDF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1AEAF9B6C();

  swift_allocObject();
  v7 = sub_1AEA86800(v4, v6);
  sub_1AEA41FAC(a1, &qword_1EB5E8BA8);
  return v7;
}

uint64_t static AnalysisHistory.$shared.getter()
{
  if (qword_1ED98D300 != -1)
  {
    swift_once();
  }
}

char *sub_1AEA85BAC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session;
  v5 = *(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session);
  if (v5)
  {
    v6 = v5;
LABEL_3:
    *a2 = v6;
  }

  v8 = a2;
  result = sub_1AEA85C34();
  if (!v2)
  {
    v6 = result;
    *(a1 + v4) = result;

    a2 = v8;
    goto LABEL_3;
  }

  return result;
}

char *sub_1AEA85C34()
{
  v1 = sub_1AEAF8FEC();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AEAF902C();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1AEAF90BC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v33 = v0;
  sub_1AEA63BD4(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_endpoint, v10, &qword_1EB5E8BA8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AEA41FAC(v10, &qword_1EB5E8BA8);
    sub_1AEAF90AC();
    sub_1AEA774C8();
    swift_beginAccess();

    sub_1AEAF901C();
    v18 = v35;
    v19 = sub_1AEAF8FFC();
    if (v18)
    {
      return v7;
    }

    v7 = v19;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    sub_1AEAF90AC();
    (*(v12 + 16))(v15, v17, v11);
    sub_1AEAF901C();
    v20 = v35;
    v21 = sub_1AEAF908C();
    if (v20)
    {
      (*(v12 + 8))(v17, v11);
      return v7;
    }

    v7 = v21;
    (*(v12 + 8))(v17, v11);
  }

  MessageHandlers.init()(&v36);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = sub_1AEA82AE0();
  _s24SensitiveContentAnalysis15MessageHandlersV12addAsyncMainyyyx7FailureQzYKScMYccAA12SCXPCMessageRzAA12SCEmptyReplyV0L0RtzlF(sub_1AEA89F28, v22, &type metadata for UpdateSensitiveParticipantCache, v23);

  sub_1AEAE6B54(&v36);

  swift_allocObject();
  swift_weakInit();

  sub_1AEAF903C();

  sub_1AEAF907C();

  v25 = sub_1AEA4351C();
  (*(v31 + 16))(v30, v25, v32);
  v26 = sub_1AEAF8FCC();
  v27 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1AEA3F000, v26, v27, "Recreated session", v28, 2u);
    MEMORY[0x1B270E620](v28, -1, -1);
  }

  (*(v31 + 8))(v30, v32);
  return v7;
}

uint64_t sub_1AEA86174(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_1AEAF915C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AEAF8FEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AEA4351C();
  v12 = *(v8 + 16);
  v26 = v7;
  v12(v10, v11, v7);
  v13 = *(v4 + 16);
  v13(v6, a1, v3);
  v14 = sub_1AEAF8FCC();
  v15 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v16;
    v25 = swift_slowAlloc();
    *v16 = 138412290;
    sub_1AEA8A144(&qword_1ED98A4A8, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v13(v17, v6, v3);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v4 + 8))(v6, v3);
    v19 = v24;
    v20 = v25;
    *(v24 + 1) = v18;
    *v20 = v18;
    _os_log_impl(&dword_1AEA3F000, v14, v15, "Session cancelled: %@", v19, 0xCu);
    sub_1AEA41FAC(v20, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v20, -1, -1);
    MEMORY[0x1B270E620](v19, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  (*(v8 + 8))(v10, v26);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock);
    v23 = MEMORY[0x1EEE9AC00](result);
    *(&v24 - 2) = sub_1AEA8A040;
    *(&v24 - 1) = v23;

    os_unfair_lock_lock(v22 + 4);
    sub_1AEA6E584();
    os_unfair_lock_unlock(v22 + 4);
  }

  return result;
}

uint64_t sub_1AEA86514@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AEA89EF8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AEA50FF8(v4);
}

uint64_t sub_1AEA865B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AEA6398C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AEA50FF8(v3);
  return sub_1AEA438E0(v8);
}

uint64_t AnalysisHistory.historyUpdated.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v2 = *v1;
  sub_1AEA50FF8(*v1);
  return v2;
}

uint64_t AnalysisHistory.historyUpdated.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AEA438E0(v6);
}

uint64_t AnalysisHistory.__allocating_init<A>(listenerEndpoint:appLifecycle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AnalysisHistory.init<A>(listenerEndpoint:appLifecycle:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1AEA86800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AEAF8FEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session) = 0;
  v13 = OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v14 = swift_allocObject();
  *(v3 + v13) = v14;
  *(v14 + 16) = 0;
  v15 = (v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lifecycle) = 0;
  sub_1AEA63BD4(a1, v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_endpoint, &qword_1EB5E8BA8);
  if (a2)
  {
    v16 = sub_1AEAF982C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a2;
    v18[5] = v17;
    *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lifecycle) = sub_1AEA67464(0, 0, v12, &unk_1AEAFDB48, v18);
  }

  v19 = sub_1AEA4351C();
  (*(v7 + 16))(v9, v19, v6);
  v20 = sub_1AEAF8FCC();
  v21 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1AEA3F000, v20, v21, "Initialized client", v22, 2u);
    MEMORY[0x1B270E620](v22, -1, -1);
  }

  sub_1AEA41FAC(a1, &qword_1EB5E8BA8);
  (*(v7 + 8))(v9, v6);
  return v3;
}

uint64_t AnalysisHistory.init<A>(listenerEndpoint:appLifecycle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v9 = sub_1AEAF8FEC();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v47 - v12;
  v13 = sub_1AEAF9C3C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v47 - v21;
  *(v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session) = 0;
  v22 = OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v23 = swift_allocObject();
  *(v5 + v22) = v23;
  v24 = v13;
  v25 = v14;
  *(v23 + 16) = 0;
  v26 = (v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  *v26 = 0;
  v26[1] = 0;
  *(v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lifecycle) = 0;
  v27 = a1;
  sub_1AEA63BD4(a1, v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_endpoint, &qword_1EB5E8BA8);
  v28 = *(v25 + 16);
  v53 = a2;
  v28(v17, a2, v24);
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    (*(v25 + 8))(v17, v24);
  }

  else
  {
    v49 = v24;
    v47 = *(v18 + 32);
    v29 = v54;
    v47(v54, v17, a3);
    v30 = sub_1AEAF982C();
    (*(*(v30 - 8) + 56))(v55, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v51;
    (*(v18 + 16))(v51, v29, a3);
    v33 = *(v18 + 80);
    v48 = v25;
    v34 = (v33 + 48) & ~v33;
    v50 = v27;
    v35 = (v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v37 = v52;
    *(v36 + 4) = a3;
    *(v36 + 5) = v37;
    v25 = v48;
    v47(&v36[v34], v32, a3);
    *&v36[v35] = v31;
    v24 = v49;
    v27 = v50;
    v38 = sub_1AEA67464(0, 0, v55, &unk_1AEAFDA10, v36);
    (*(v18 + 8))(v54, a3);
    *(v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lifecycle) = v38;
  }

  v39 = sub_1AEA4351C();
  v40 = v56;
  (*(v57 + 16))(v56, v39, v58);
  v41 = sub_1AEAF8FCC();
  v42 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v25;
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1AEA3F000, v41, v42, "Initialized client", v44, 2u);
    v45 = v44;
    v25 = v43;
    MEMORY[0x1B270E620](v45, -1, -1);
  }

  (*(v25 + 8))(v53, v24);
  sub_1AEA41FAC(v27, &qword_1EB5E8BA8);
  (*(v57 + 8))(v40, v58);
  return v5;
}

uint64_t sub_1AEA87088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1AEAF8B1C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v5[11] = swift_task_alloc();
  v7 = sub_1AEAF9B4C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA871DC, 0, 0);
}

uint64_t sub_1AEA871DC()
{
  v0[5] = v0[6];
  sub_1AEAF9B5C();
  sub_1AEA8A144(&qword_1ED98A480, MEMORY[0x1E6969F08]);

  sub_1AEAF98EC();
  swift_beginAccess();
  v1 = sub_1AEA8A144(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1AEA8734C;
  v4 = v0[11];
  v5 = v0[12];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v2, v5, v1);
}

uint64_t sub_1AEA8734C()
{
  *(*v1 + 128) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA87460, 0, 0);
  }

  return result;
}

uint64_t sub_1AEA87460()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[16];
  (*(v3 + 32))(v0[10], v1, v2);
  sub_1AEAF988C();
  if (v5)
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v7 + 8))(v6, v8);

    v4 = v0[1];
    goto LABEL_5;
  }

  v10 = sub_1AEAF8AFC();
  if (qword_1ED98BDF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1AEAF95BC();
  v13 = v12;
  if (v11 == sub_1AEAF95BC() && v13 == v14)
  {

LABEL_17:
    if (swift_weakLoadStrong())
    {
      sub_1AEA87EA0();
    }

    goto LABEL_19;
  }

  v16 = sub_1AEAFA2BC();

  if (v16)
  {
    goto LABEL_17;
  }

LABEL_19:
  (*(v0[9] + 8))(v0[10], v0[8]);
  v17 = sub_1AEA8A144(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_1AEA8734C;
  v20 = v0[11];
  v21 = v0[12];

  return MEMORY[0x1EEE6D8D0](v20, 0, 0, v18, v21, v17);
}

uint64_t sub_1AEA8777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = sub_1AEAF8B1C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v7[12] = swift_task_alloc();
  v7[13] = *(a6 - 8);
  v7[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[15] = AssociatedTypeWitness;
  v7[16] = *(AssociatedTypeWitness - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA87948, 0, 0);
}

uint64_t sub_1AEA87948()
{
  (*(v0[13] + 16))(v0[14], v0[5], v0[7]);
  sub_1AEAF98EC();
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1AEA87A74;
  v4 = v0[15];
  v5 = v0[12];

  return MEMORY[0x1EEE6D8D0](v5, 0, 0, v2, v4, AssociatedConformanceWitness);
}

uint64_t sub_1AEA87A74()
{
  *(*v1 + 152) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA87B88, 0, 0);
  }

  return result;
}

uint64_t sub_1AEA87B88()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[19];
  (*(v3 + 32))(v0[11], v1, v2);
  sub_1AEAF988C();
  if (v5)
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v7 + 8))(v6, v8);

    v4 = v0[1];
    goto LABEL_5;
  }

  v10 = sub_1AEAF8AFC();
  if (qword_1ED98BDF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1AEAF95BC();
  v13 = v12;
  if (v11 == sub_1AEAF95BC() && v13 == v14)
  {

LABEL_17:
    if (swift_weakLoadStrong())
    {
      sub_1AEA87EA0();
    }

    goto LABEL_19;
  }

  v16 = sub_1AEAFA2BC();

  if (v16)
  {
    goto LABEL_17;
  }

LABEL_19:
  (*(v0[10] + 8))(v0[11], v0[9]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1AEA87A74;
  v20 = v0[15];
  v21 = v0[12];

  return MEMORY[0x1EEE6D8D0](v21, 0, 0, v18, v20, AssociatedConformanceWitness);
}

uint64_t sub_1AEA87EA0()
{
  v1 = v0;
  v2 = sub_1AEAF8FEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AEA4351C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Handling app backgrounded", v9, 2u);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  if (*(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session))
  {

    sub_1AEAF906C();
  }

  return result;
}

uint64_t AnalysisHistory.deinit()
{
  v1 = v0;
  v2 = sub_1AEAF8FEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory__session))
  {

    sub_1AEAF906C();
  }

  if (*(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lifecycle))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    sub_1AEAF985C();
  }

  v6 = sub_1AEA4351C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Deinitialized client", v9, 2u);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1AEA41FAC(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_endpoint, &qword_1EB5E8BA8);

  sub_1AEA438E0(*(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated));

  return v1;
}

uint64_t AnalysisHistory.__deallocating_deinit()
{
  AnalysisHistory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AnalysisHistory.analysesFromMostRecentCommunications(with:excludeParents:)(uint64_t a1, char a2)
{
  *(v3 + 33) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1AEA882FC, 0, 0);
}

uint64_t sub_1AEA882FC()
{
  v15 = v0;
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryRead()();
  if (v1)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = *(v0 + 80);

    v3 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock);
    v4 = swift_task_alloc();
    *(v4 + 16) = sub_1AEA897DC;
    *(v4 + 24) = v2;
    os_unfair_lock_lock(v3 + 4);
    sub_1AEA6E53C(&v14);
    v7 = *(v0 + 33);
    v8 = *(v0 + 72);
    os_unfair_lock_unlock(v3 + 4);
    *(v0 + 88) = v14;

    v9 = sub_1AEA92F20();
    sub_1AEAB84D4(v9 & 1, v8, v7, v0 + 16);
    v10 = *(v0 + 24);
    *(v0 + 40) = *(v0 + 16);
    v11 = *(v0 + 32);
    *(v0 + 48) = v10;
    *(v0 + 56) = v11;
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    v13 = sub_1AEA83A1C();
    *v12 = v0;
    v12[1] = sub_1AEA884D0;

    return sub_1AEAE6BD0(v0 + 64, v0 + 40, &type metadata for FetchSensitiveParticipants, v13);
  }
}

uint64_t sub_1AEA884D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1AEA88628;
  }

  else
  {
    v2 = sub_1AEA8860C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AnalysisHistory.storeMostRecentAnalysis(_:forHandles:)(_DWORD *a1, uint64_t a2)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = v2;
  *(v3 + 88) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA88668, 0, 0);
}

uint64_t sub_1AEA88668()
{
  v15 = v0;
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryReadWrite()();
  if (v1)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = *(v0 + 56);

    v3 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock);
    v4 = swift_task_alloc();
    *(v4 + 16) = sub_1AEA8A190;
    *(v4 + 24) = v2;
    os_unfair_lock_lock(v3 + 4);
    sub_1AEA70EF8(v14);
    v7 = *(v0 + 88);
    v8 = *(v0 + 48);
    os_unfair_lock_unlock(v3 + 4);
    *(v0 + 64) = *v14;

    v14[0] = v7;

    v9 = sub_1AEA92F20();
    sub_1AEAB8DB4(v9 & 1, v14, v8, v0 + 16);
    v10 = *(v0 + 18);
    *(v0 + 32) = *(v0 + 16);
    v11 = *(v0 + 24);
    *(v0 + 34) = v10;
    *(v0 + 40) = v11;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    v13 = sub_1AEA83520();
    *v12 = v0;
    v12[1] = sub_1AEA8883C;

    return sub_1AEAE6BD0(v13, v0 + 32, &type metadata for StoreAnalysis, v13);
  }
}

uint64_t sub_1AEA8883C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AEA88978;
  }

  else
  {
    v2 = sub_1AEA4E1D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AnalysisHistory.clearMostRecentAnalyses(for:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA889B0, 0, 0);
}

uint64_t sub_1AEA889B0()
{
  v13 = v0;
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryReadWrite()();
  if (v1)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = *(v0 + 56);

    v3 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_lock);
    v4 = swift_task_alloc();
    *(v4 + 16) = sub_1AEA8A190;
    *(v4 + 24) = v2;
    os_unfair_lock_lock(v3 + 4);
    sub_1AEA70EF8(&v12);
    v7 = *(v0 + 48);
    os_unfair_lock_unlock(v3 + 4);
    *(v0 + 64) = v12;

    v8 = sub_1AEA92F20();
    sub_1AEAB93EC(v8 & 1, v7, v0 + 16);
    v9 = *(v0 + 24);
    *(v0 + 32) = *(v0 + 16);
    *(v0 + 40) = v9;
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    v11 = sub_1AEA83904();
    *v10 = v0;
    v10[1] = sub_1AEA88B70;

    return sub_1AEAE6BD0(v11, v0 + 32, &type metadata for RemoveAnalyses, v11);
  }
}

uint64_t sub_1AEA88B70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AEA8A1A8;
  }

  else
  {
    v2 = sub_1AEA8A18C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA88CAC()
{
  v1 = (v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v2 = *v1;
  sub_1AEA50FF8(*v1);
  return v2;
}

uint64_t sub_1AEA88D68(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA88E0C;

  return AnalysisHistory.analysesFromMostRecentCommunications(with:excludeParents:)(a1, a2);
}

uint64_t sub_1AEA88E0C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1AEA88F0C(_DWORD *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return AnalysisHistory.storeMostRecentAnalysis(_:forHandles:)(a1, a2);
}

uint64_t sub_1AEA88FB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA63D38;

  return AnalysisHistory.clearMostRecentAnalyses(for:)(a1);
}

void sub_1AEA89148(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1AEAF8C4C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}