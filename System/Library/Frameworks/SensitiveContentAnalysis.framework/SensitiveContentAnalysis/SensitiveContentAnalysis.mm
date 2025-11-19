uint64_t type metadata accessor for PolicyCache()
{
  result = qword_1ED98D730;
  if (!qword_1ED98D730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AEA413B4()
{
  result = sub_1AEAF8E1C();
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

uint64_t sub_1AEA4149C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AEA414D4()
{
  result = sub_1AEAF8E1C();
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

uint64_t PolicyCache.policy.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  v4 = *(v1 + 24);
  if (v4 != 255)
  {
    v5 = *(v1 + 16);
    if ((v4 & 1) == 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    result = swift_willThrowTypedImpl();
  }

  v5 = 0;
  v6 = 1;
LABEL_6:
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1AEA41684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA416CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA41714(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AEA4175C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA417A4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AEA41850()
{
  result = sub_1AEAF8E1C();
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

uint64_t sub_1AEA4192C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BA8);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98D088 = result;
  return result;
}

uint64_t sub_1AEA41990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AEA419DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t SCFeatures.isEnabled.getter()
{
  v1 = *v0;
  if (qword_1ED98D090 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  if (*(v6[0] + 16) && (v2 = sub_1AEAF0044(v1), (v3 & 1) != 0))
  {
    v4 = *(*(v6[0] + 56) + v2);
  }

  else
  {

    v6[3] = &type metadata for SCFeatures.Key;
    v6[4] = sub_1AEA41AF0();
    LOBYTE(v6[0]) = v1;
    v4 = sub_1AEAF8E2C();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return v4 & 1;
}

unint64_t sub_1AEA41AF0()
{
  result = qword_1ED98A5D8;
  if (!qword_1ED98A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5D8);
  }

  return result;
}

const char *sub_1AEA41B44()
{
  v1 = *v0;
  v2 = "conferencing_detection";
  v3 = "spa_detection";
  if (v1 != 6)
  {
    v3 = "conferencing_detection_power";
  }

  if (v1 != 4)
  {
    v2 = "gv_detection";
  }

  if (*v0 > 5u)
  {
    v2 = v3;
  }

  v4 = "u13_intervention";
  if (v1 != 2)
  {
    v4 = "previous_call_tip";
  }

  v5 = "report_to_apple";
  if (*v0)
  {
    v5 = "improved_reporting";
  }

  if (*v0 <= 1u)
  {
    v4 = v5;
  }

  if (*v0 <= 3u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

const char *sub_1AEA41C04()
{
  if (*v0 - 3 >= 5)
  {
    return "SensitiveContentAnalysisUI";
  }

  else
  {
    return "SensitiveContentAnalysis";
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t CacheCheck.init(cache:)()
{
  *(v0 + 16) = 0;
  swift_weakInit();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1AEAF8E0C();
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DCC();

  return v0;
}

uint64_t sub_1AEA41D94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA41F6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA41FAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AEA4200C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA420C4(a1, v4);
}

uint64_t sub_1AEA420C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AEA4E468;

  return v6(a1);
}

uint64_t sub_1AEA421BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA63D38;

  return sub_1AEA42354(a1, v4, v5, v6);
}

uint64_t sub_1AEA42288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA5E1AC;

  return sub_1AEA42354(a1, v4, v5, v6);
}

uint64_t sub_1AEA42354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1AEA5E1AC;

  return v7();
}

uint64_t sub_1AEA4243C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA424FC(v2, v3, v4);
}

uint64_t sub_1AEA424FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1AEA63D38;

  return v6();
}

uint64_t sub_1AEA425E4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA63D38;

  return sub_1AEA42690(v2);
}

uint64_t sub_1AEA42690(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AEA4E1EC;

  return static SensitiveContentPolicy.prefetch()();
}

uint64_t static SensitiveContentPolicy.prefetch()()
{
  return MEMORY[0x1EEE6DFA0](sub_1AEA42744, 0, 0);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v7 - v1;
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  v3 = v7[1];
  v4 = sub_1AEAF982C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  sub_1AEA9D794(0, 0, v2, &unk_1AEAFE618, v5);
}

uint64_t sub_1AEA42744()
{
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  *(v0 + 96) = *(v0 + 88);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = -1;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA4E088;

  return PolicyCache.restart(with:)(v0 + 72, v0 + 16);
}

uint64_t sub_1AEA4283C()
{
  memset(v2, 0, sizeof(v2));
  v3 = -1;
  type metadata accessor for PolicyCache();
  v0 = swift_allocObject();
  PolicyCache.init(_:)(v2);
  *&v2[0] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9120);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98D740 = result;
  return result;
}

uint64_t sub_1AEA428FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA42944(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PolicyCache.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
  *(v1 + 32) = sub_1AEA42ADC(v3);
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = -1;
  *(v1 + 152) = 0;
  sub_1AEAF8E0C();
  sub_1AEA63BD4(a1, v6, &qword_1EB5E8F38);
  if (v7 == 255)
  {
    static SensitiveContentPolicy.Source.bestForProcess.getter(&v8);
    sub_1AEA41FAC(a1, &qword_1EB5E8F38);
    if (v7 != 255)
    {
      sub_1AEA41FAC(v6, &qword_1EB5E8F38);
    }
  }

  else
  {
    sub_1AEA41FAC(a1, &qword_1EB5E8F38);
    v8 = v6[0];
    v9 = v6[1];
    v10 = v6[2];
    v11 = v7;
  }

  v4 = v9;
  *(v1 + 40) = v8;
  *(v1 + 56) = v4;
  *(v1 + 72) = v10;
  *(v1 + 88) = v11;
  return v1;
}

uint64_t sub_1AEA42AE0()
{
  v0 = sub_1AEAF8D9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlockForFirstValue();
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1AEAF9E1C();

  strcpy(v11, "BlockForFirst-");
  HIBYTE(v11[1]) = -18;
  sub_1AEAF8D8C();
  v4 = sub_1AEAF8D7C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1B270CB50](v4, v6);

  v7 = v11[0];
  v8 = v11[1];
  v9 = swift_allocObject();
  sub_1AEA42D1C(v7, v8);
  return v9;
}

uint64_t sub_1AEA42C78()
{
  result = sub_1AEAF9C3C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1AEA42D1C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v3 = *v2;
  v4 = sub_1AEAF9AEC();
  v12 = *(v4 - 8);
  v13 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AEAF9ADC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1AEAF931C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  (*(*(*(v3 + 80) - 8) + 56))(&v2[*(v3 + 96)], 1, 1);
  v9 = *(*v2 + 104);
  *&v2[v9] = dispatch_semaphore_create(0);
  sub_1AEA42FDC();
  sub_1AEAF930C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AEA428FC(&unk_1ED98AA80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EC0);
  sub_1AEA42944(&qword_1ED98AAA0, &qword_1EB5E8EC0);
  sub_1AEAF9D5C();
  (*(v12 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *(v2 + 2) = sub_1AEAF9B2C();
  return v2;
}

unint64_t sub_1AEA42FDC()
{
  result = qword_1ED98AA78;
  if (!qword_1ED98AA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED98AA78);
  }

  return result;
}

unint64_t sub_1AEA4303C()
{
  result = qword_1ED98A5D0;
  if (!qword_1ED98A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5D0);
  }

  return result;
}

uint64_t sub_1AEA43090()
{
  type metadata accessor for AnalysisHistory();
  v0 = static AnalysisHistory.shared.getter();
  v2 = v1;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1ED98AD10 != -1)
  {
    swift_once();
  }

  v4 = sub_1AEAF9B6C();

  type metadata accessor for AnalysisHistoryCache(0);
  swift_allocObject();
  sub_1AEAA28E4(v0, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9190);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98D228 = result;
  return result;
}

uint64_t sub_1AEA431A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9170);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t type metadata accessor for AnalysisHistory()
{
  result = qword_1ED98D2E0;
  if (!qword_1ED98D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AEA4321C()
{
  sub_1AEA82C90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static AnalysisHistory.shared.getter()
{
  if (qword_1ED98D300 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

uint64_t sub_1AEA43338()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BA8);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - v4;
  v6 = sub_1AEAF90BC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1AEA63BD4(v5, v3, &qword_1EB5E8BA8);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_1ED98BDF0 != -1)
  {
    swift_once();
  }

  v8 = sub_1AEAF9B6C();

  type metadata accessor for AnalysisHistory();
  swift_allocObject();
  v9 = sub_1AEA86800(v3, v8);
  sub_1AEA41FAC(v5, &qword_1EB5E8BA8);
  v11[0] = v9;
  v11[1] = &protocol witness table for AnalysisHistory;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D40);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98D2F8 = result;
  return result;
}

uint64_t sub_1AEA43554(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_1AEA435B4()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1ED98DDE0);
  __swift_project_value_buffer(v0, qword_1ED98DDE0);
  return sub_1AEAF8FDC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1AEA436D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9188);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 52); ; i += 24)
    {
      v5 = *(i - 20);
      v6 = *(i - 12);
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
      v12 = v3[7] + 6 * result;
      *v12 = v7;
      *(v12 + 4) = v8;
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

uint64_t sub_1AEA43800()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1ED98DDC0);
  __swift_project_value_buffer(v0, qword_1ED98DDC0);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEA43880(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AEA438E0(v6);
}

uint64_t sub_1AEA438E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis0aB6PolicyV6SourceO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

double static Entitlements.Source.currentProcess.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SecTask(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA43A20, &v6);
  v2 = v6;
  v3 = v7;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *a1 = sub_1AEA478E8;
  *(a1 + 8) = v4;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1AEA43A20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SecTaskCreateFromSelf(0);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_1AEAEE758();
    v5 = swift_allocError();
    *v6 = xmmword_1AEB028D0;
    *(v6 + 16) = 0x80;
    result = swift_willThrow();
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AEA43AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AEA43B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 == 2)
  {
  }

  if (a7 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AEA43B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double static SensitiveContentPolicy.Source.bestForProcess.getter@<D0>(uint64_t a1@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1ED98D9A8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = qword_1ED98D9B0;
  v3 = *(qword_1ED98D9B0 + 16);
  if (!v3)
  {
LABEL_15:
    if (qword_1ED98D6E8 != -1)
    {
      swift_once();
    }

    v12 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v12, qword_1ED98DDF8);
    v13 = sub_1AEAF8FCC();
    v14 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEA3F000, v13, v14, "Couldn't find preferred source!", v15, 2u);
      MEMORY[0x1B270E620](v15, -1, -1);
    }

    *a1 = 2;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 2;
    return result;
  }

  v4 = 0;
  v5 = qword_1ED98D9B0 + 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_1AEA438F0(v5, v36);
    sub_1AEA438F0(v36, &v29);
    if (v35 != 2)
    {
      goto LABEL_22;
    }

    if (!(v33 | v34 | v29 | v32 | v31 | v30))
    {
      static Entitlements.advisoryChecks.getter();
      Entitlements.Checks.checkSupportsDirectPolicyRetrieval()();
      if (!v6)
      {

        goto LABEL_25;
      }

LABEL_5:
      sub_1AEA45CE0(v36);

      v7 = v6;
      goto LABEL_6;
    }

    v8 = v33 | v34 | v32 | v31 | v30;
    if (v29 != 1 || v8)
    {
      break;
    }

    static Entitlements.advisoryChecks.getter();
    Entitlements.Checks.checkSupportsAnalysis()();
    if (v6)
    {
      goto LABEL_5;
    }

    v9 = objc_opt_self();
    v28 = 0;
    if ([v9 checkAvailability_])
    {
      v17 = v28;
      goto LABEL_25;
    }

    v10 = v28;
    v11 = sub_1AEAF8C5C();

    swift_willThrow();
    sub_1AEA45CE0(v36);
    v7 = v11;
LABEL_6:

    ++v4;
    v5 += 56;
    if (v3 == v4)
    {
      goto LABEL_15;
    }
  }

  if (v29 != 2 || v8)
  {
LABEL_22:
    sub_1AEA45CE0(&v29);
  }

LABEL_25:
  if (qword_1ED98D6E8 != -1)
  {
    swift_once();
  }

  v18 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v18, qword_1ED98DDF8);
  sub_1AEA438F0(v36, &v29);
  v19 = sub_1AEAF8FCC();
  v20 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = SensitiveContentPolicy.Source.debugDescription.getter();
    v25 = v24;
    sub_1AEA45CE0(&v29);
    v26 = sub_1AEA45C14(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1AEA3F000, v19, v20, "Using %s for content policy...", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1B270E620](v22, -1, -1);
    MEMORY[0x1B270E620](v21, -1, -1);
  }

  else
  {

    sub_1AEA45CE0(&v29);
  }

  v27 = v36[1];
  *a1 = v36[0];
  *(a1 + 16) = v27;
  result = *&v37;
  *(a1 + 32) = v37;
  *(a1 + 48) = v38;
  return result;
}

double sub_1AEA43FDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90D8);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_1AEAFCC40;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 2;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 2;
  *(v0 + 144) = 2;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 192) = 2;
  qword_1ED98D9B0 = v0;
  return result;
}

uint64_t static Entitlements.advisoryChecks.getter()
{
  static Entitlements.Source.currentProcess.getter(v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v6[2];
  v5 = v7;
  v0 = _s24SensitiveContentAnalysis12EntitlementsV6checks3forAC6ChecksCAC6SourceO_tFZ_0(&v2);
  sub_1AEA44C1C(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
  return v0;
}

uint64_t _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = sub_1AEAFA40C();
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = v12 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  a1(v10);
  swift_storeEnumTagMultiPayload();
  return (*(v4 + 32))(v12[0], v7, v3);
}

uint64_t sub_1AEA442CC()
{
  v2 = MEMORY[0x1E69E7CC8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9260);
  return Atomic.init(wrappedValue:)(&v2, v0, &qword_1ED98DD48);
}

unint64_t sub_1AEA44320()
{
  result = qword_1ED98AAD0;
  if (!qword_1ED98AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98AAD0);
  }

  return result;
}

uint64_t sub_1AEA44374()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1AEAF9E9C();
  return sub_1AEAF9E8C();
}

uint64_t Atomic.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1AEA44374();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_1AEA4445C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1AEA4450C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Atomic.withLock<A>(_:)()
{
  v1 = *v0;
  v2 = (*(**v0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((*v0 + v2));
  sub_1AEA44610();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis12EntitlementsV6SourceO(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

void Entitlements.Source.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 48) > 1u)
  {
    if (*(v1 + 48) != 2)
    {
      v4 = 4;
      goto LABEL_12;
    }

    MEMORY[0x1B270D930](3);
    v8 = sub_1AEAF94FC();
    sub_1AEAF9C1C();
  }

  else
  {
    if (!*(v1 + 48))
    {
      v4 = 1;
LABEL_12:
      MEMORY[0x1B270D930](v4);
      return;
    }

    v6 = v1[2];
    v5 = v1[3];
    v7 = v1[1];
    MEMORY[0x1B270D930](2);

    MEMORY[0x1EEE6C728](a1, v3, v7, v6, v5);
  }
}

unint64_t sub_1AEA447D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v6 + 40);
      v15 = *(v6 + 48);
      sub_1AEA43B10(*v6, v10, v11, v12, v13, v14, v15);
      sub_1AEA44320();
      v7 = sub_1AEAF957C();
      sub_1AEA44C1C(v9, v10, v11, v12, v13, v14, v15);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AEA448F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9258);
  v31 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v32 = *v21;
      v33 = *(v21 + 16);
      v34 = *(v21 + 32);
      v35 = *(v21 + 48);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
        sub_1AEA43B10(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32), *(v21 + 40), *(v21 + 48));
      }

      sub_1AEA45690();
      result = sub_1AEAF953C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v32;
      *(v16 + 16) = v33;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AEA44C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 == 2)
  {
  }

  if (a7 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AEA44C4C(uint64_t (*a1)(void))
{
  result = a1();
  if (v2)
  {
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    return swift_willThrowTypedImpl();
  }

  return result;
}

void *sub_1AEA44D0C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3 == 255)
  {
    if (qword_1ED98D6F0 != -1)
    {
      a1 = swift_once();
    }

    v5 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA462B4, &v10);
    v4 = v10;
    v6 = v11;
    v7 = *(v1 + 72);
    *(v1 + 72) = v10;
    v8 = *(v1 + 80);
    *(v1 + 80) = v6;
    sub_1AEA486FC(v4, v6);
    sub_1AEA486E4(v7, v8);
  }

  else
  {
    v4 = *(v1 + 72);
  }

  sub_1AEA48708(v2, v3);
  return v4;
}

uint64_t sub_1AEA44EBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFCC40;
  Entitlements.Key.init(stringLiteral:)(0xD000000000000031, 0x80000001AEB080E0, inited + 32);
  *(inited + 80) = MEMORY[0x1E69E6370];
  *(inited + 56) = 1;
  Entitlements.Key.init(stringLiteral:)(0xD00000000000003FLL, 0x80000001AEB08120, inited + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  *(inited + 136) = v1;
  *(inited + 112) = &unk_1F248CF00;
  static Entitlements.Key.oneOf(_:)(&unk_1F248CF30, inited + 144);
  *(inited + 192) = v1;
  *(inited + 168) = &unk_1F248CF70;
  v2 = sub_1AEA45018(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9240);
  result = swift_arrayDestroy();
  qword_1ED98D6F8 = v2;
  return result;
}

uint64_t Entitlements.Key.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static Entitlements.Key.oneOf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

unint64_t sub_1AEA45018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9248);
    v3 = sub_1AEAFA06C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AEA63BD4(v4, &v12, &qword_1EB5E9240);
      result = sub_1AEA45754(v12, *(&v12 + 1), v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 24 * result;
      v8 = v13;
      *v7 = v12;
      *(v7 + 16) = v8;
      result = sub_1AEA45304(&v14, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AEA45158()
{
  result = qword_1ED98ABA0;
  if (!qword_1ED98ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98ABA0);
  }

  return result;
}

unint64_t sub_1AEA451B8()
{
  result = qword_1ED98ABA8;
  if (!qword_1ED98ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98ABA8);
  }

  return result;
}

unint64_t sub_1AEA4520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      sub_1AEA458E4();
      sub_1AEA45158();
      v8 = sub_1AEAF957C();
      sub_1AEA45ED0();
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

_OWORD *sub_1AEA45304(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AEA45314@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1AEA4547C(v5), (v8 & 1) != 0))
  {
    *a2 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = *(v5 + 16);
    v17[0] = *v5;
    v17[1] = v10;
    v17[2] = *(v5 + 32);
    v18 = *(v5 + 48);
    sub_1AEA44638(v5, v19);
    sub_1AEA45460(v17, v19);
    v11 = v20;
    v12 = v21;
    v13 = v22;
    type metadata accessor for Entitlements.Checks();
    v14 = swift_allocObject();
    *(v14 + 72) = 0;
    *(v14 + 80) = -1;
    *(v14 + 88) = 0;
    *(v14 + 96) = -1;
    *(v14 + 104) = 0;
    *(v14 + 112) = -1;
    *(v14 + 120) = 0;
    *(v14 + 128) = -1;
    v15 = v19[1];
    *(v14 + 16) = v19[0];
    *(v14 + 32) = v15;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    *(v14 + 64) = v13;
    sub_1AEA44638(v5, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *a1;
    sub_1AEA45510(v14, v5, isUniquelyReferenced_nonNull_native);
    result = sub_1AEA44BC8(v5);
    *a1 = *&v19[0];
    *a2 = v14;
  }

  return result;
}

__n128 sub_1AEA45460@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

unint64_t sub_1AEA4547C(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  sub_1AEA45690();
  v1 = sub_1AEAF953C();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  return sub_1AEA447D8(v7, v1);
}

uint64_t sub_1AEA45510(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AEA4547C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AEA448F4(v14, a3 & 1);
      v9 = sub_1AEA4547C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AEAFA31C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AEAB43A0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 56 * v9;
    v22 = *a2;
    v23 = *(a2 + 16);
    v24 = *(a2 + 32);
    *(v21 + 48) = *(a2 + 48);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_1AEA44638(a2, v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_1AEA45690()
{
  result = qword_1ED98AAD8[0];
  if (!qword_1ED98AAD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98AAD8);
  }

  return result;
}

uint64_t sub_1AEA456E4()
{
  sub_1AEAFA3BC();
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

unint64_t sub_1AEA45754(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  sub_1AEA451B8();
  v3 = sub_1AEAF953C();
  return sub_1AEA4520C(a1, a2, v7, v3);
}

uint64_t sub_1AEA457C8()
{
  sub_1AEAFA3BC();
  Entitlements.Key.hash(into:)();
  return sub_1AEAFA3FC();
}

uint64_t Entitlements.Key.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1B270D930](1);
    result = MEMORY[0x1B270D930](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 40;
      do
      {

        sub_1AEAF95DC();

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    MEMORY[0x1B270D930](0);

    return sub_1AEAF95DC();
  }

  return result;
}

uint64_t _s24SensitiveContentAnalysis12EntitlementsV3KeyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v2 = sub_1AEAEB8A8(*a1, *a2);
      sub_1AEA458E4();
      sub_1AEA458E4();
      sub_1AEA45ED0();
LABEL_11:
      sub_1AEA45ED0();
      return v2 & 1;
    }

LABEL_5:
    sub_1AEA458E4();
    sub_1AEA458E4();
    sub_1AEA45ED0();
    sub_1AEA45ED0();
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v2 = sub_1AEAFA2BC();
    sub_1AEA458E4();
    sub_1AEA458E4();
    sub_1AEA45ED0();
    goto LABEL_11;
  }

  sub_1AEA458E4();
  sub_1AEA458E4();
  sub_1AEA45ED0();
  sub_1AEA45ED0();
  return 1;
}

unint64_t sub_1AEA45B08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AEA4CB64(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1AEAF9EAC();
    a6 = v11;
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

unint64_t sub_1AEA45C14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AEA45B08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AEA45E18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t SensitiveContentPolicy.Source.debugDescription.getter()
{
  sub_1AEA438F0(v0, &v2);
  if (v8)
  {
    if (v8 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v2);
      return 0x656469727265764FLL;
    }

    else if (v6 | v7 | v2 | v5 | v4 | v3)
    {
      result = 0x20676E696C6C6F50;
      if (v2 == 1 && !(v6 | v7 | v5 | v4 | v3))
      {
        return 0xD000000000000012;
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1AEA45CE0(&v2);
    return 0x746E65746E49;
  }

  return result;
}

uint64_t sub_1AEA45E18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AEA45E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA45EDC(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  sub_1AEA43B10(v11, v12, v13, v14, v15, v16, v17);
  Entitlements.check(_:)(a3);
  sub_1AEA44C1C(v11, v12, v13, v14, v15, v16, v17);
  if (v5)
  {
    type metadata accessor for SCAError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9230);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEAFC470;
    *(inited + 32) = sub_1AEAF95BC();
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1);
    sub_1AEAB478C(inited);
    swift_setDeallocating();
    sub_1AEA41FAC(inited + 32, &qword_1EB5E89F0);
    sub_1AEA45E88(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    a1 = v11;
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    swift_willThrowTypedImpl();
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Entitlements.check(_:)(Swift::OpaquePointer a1)
{
  v8 = *v1;
  v9 = v1[1];
  v3 = sub_1AEA4631C(a1._rawValue);
  if (v3)
  {
    v10 = v8;
    v11 = v9;
    v4 = sub_1AEA466D8(v3);

    sub_1AEA46A24(0, 0xE000000000000000, 0, v4);
    if (!v2)
    {

      return;
    }

    v5 = v2;
  }

  else
  {
    sub_1AEAEE758();
    v5 = swift_allocError();
    *v6 = xmmword_1AEB039E0;
    *(v6 + 16) = 0x80;
    swift_willThrow();
  }

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  if (swift_dynamicCast())
  {
    if ((v11 & 0xE0) == 0x80 && v10 == 3 && v11 == 128)
    {

      return;
    }

    sub_1AEAEE81C(v10, *(&v10 + 1), v11);
  }

  swift_willThrow();
}

{
  v40 = v1[1];
  v38 = *v1;
  v39 = *(v1 + 4);
  v37 = *(v1 + 5);
  v36 = *(v1 + 48);
  v2 = a1._rawValue + 64;
  v3 = 1 << *(a1._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = v2;
  while (v5)
  {
    v11 = v7;
LABEL_11:
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1._rawValue + 6) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1AEA45E18(*(a1._rawValue + 7) + 32 * v12, &v45);
    *&v44 = v15;
    *(&v44 + 1) = v14;
    sub_1AEAEE7AC(&v44, &v49);
    v16 = v49;
    sub_1AEA45304(&v50, v51);
    sub_1AEA45E18(v51, &v49);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v8;
    v18 = sub_1AEA45754(v16, *(&v16 + 1), 0);
    v20 = v8[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_38;
    }

    v24 = v19;
    if (v8[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_1AEAEDF18();
        v18 = v29;
      }
    }

    else
    {
      sub_1AEAEDBB8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1AEA45754(v16, *(&v16 + 1), 0);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_40;
      }
    }

    v5 &= v5 - 1;
    if (v24)
    {
      v9 = v18;

      v8 = v52;
      v10 = (v52[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_1AEA45304(&v49, v10);
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_1AEA41FAC(&v44, &qword_1EB5E9B60);
    }

    else
    {
      v8 = v52;
      v52[(v18 >> 6) + 8] |= 1 << v18;
      v26 = v8[6] + 24 * v18;
      *v26 = v16;
      *(v26 + 16) = 0;
      sub_1AEA45304(&v49, (v8[7] + 32 * v18));
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_1AEA41FAC(&v44, &qword_1EB5E9B60);
      v27 = v8[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_39;
      }

      v8[2] = v28;
    }

    v7 = v11;
    v2 = v42;
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_1AEAFA31C();
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v11];
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v30 = sub_1AEA4631C(v8);
  if (!v30)
  {
    sub_1AEAEE758();
    v32 = swift_allocError();
    *v33 = xmmword_1AEB039E0;
    *(v33 + 16) = 0x80;
    swift_willThrow();

LABEL_24:
    *&v49 = v32;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {
      if ((v45 & 0xE0) == 0x80 && v44 == 3 && v45 == 128)
      {
        goto LABEL_28;
      }

      sub_1AEAEE81C(v44, *(&v44 + 1), v45);
    }

    swift_willThrow();
    *&v49 = v32;
    v35 = v32;
    if (swift_dynamicCast())
    {
      if ((v45 & 0xE0) == 0x80 && v44 == 3 && v45 == 128)
      {
LABEL_28:

        return;
      }

      sub_1AEAEE81C(v44, *(&v44 + 1), v45);
    }

    swift_willThrow();
    return;
  }

  v44 = v38;
  v45 = v40;
  v46 = v39;
  v47 = v37;
  v48 = v36;
  v31 = sub_1AEA466D8(v30);

  sub_1AEA46A24(0, 0xE000000000000000, 0, v31);
  if (v41)
  {

    v32 = v41;
    goto LABEL_24;
  }
}

{
  v3 = v2;
  v5 = *v1;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(a1._rawValue + 2);
  v12 = *v1;
  v35 = *(v1 + 8);
  v27 = v7;
  v28 = v6;
  v29 = v9;
  v30 = v8;
  sub_1AEA43B10(v12, v35, v6, v7, v8, v9, v10);
  if (!v11)
  {
LABEL_21:
    sub_1AEA44C1C(v5, v35, v28, v27, v30, v29, v10);
    return;
  }

  v13 = (a1._rawValue + 40);
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    if (v10 <= 1)
    {
      v16 = v5;
      if (v10)
      {
        v16 = v30;
      }

      sub_1AEA43B10(v5, v35, v28, v27, v30, v29, v10);

      v16(&v33, v15, v14);
      if (v3)
      {
        v17 = v10;
        v18 = v3;
        v3 = 0;
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    if (v10 != 2)
    {
      break;
    }

    v19 = *(v5 + 16);
    sub_1AEA43B10(v5, v35, v28, v27, v30, v29, 2u);

    if (!v19 || (v20 = sub_1AEA8EECC(v15, v14), (v21 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AEAFC470;
      *(v22 + 32) = v15;
      *(v22 + 40) = v14;
      sub_1AEAEE758();
      v18 = swift_allocError();
      *v23 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 96;
      swift_willThrow();

      v3 = 0;
      v17 = 2;
      goto LABEL_16;
    }

    sub_1AEA45E18(*(v5 + 56) + 32 * v20, v31);
    sub_1AEA45304(v31, v32);
    sub_1AEA45304(v32, &v33);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(&v33);
    sub_1AEA44C1C(v5, v35, v28, v27, v30, v29, v10);
LABEL_5:

    v13 += 2;
    if (!--v11)
    {
      goto LABEL_21;
    }
  }

  sub_1AEAEE758();
  v18 = swift_allocError();
  *v24 = xmmword_1AEB039D0;
  *(v24 + 16) = 0x80;
  swift_willThrow();

  v3 = 0;
  v17 = 3;
LABEL_16:
  sub_1AEA44C1C(v5, v35, v28, v27, v30, v29, v17);
  v32[0] = v18;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((v34 & 0xE0) == 0x80 && v33 == 3 && v34 == 128)
  {

    goto LABEL_5;
  }

  sub_1AEAEE81C(v33, *(&v33 + 1), v34);
LABEL_23:

  swift_willThrow();

  sub_1AEA44C1C(v5, v35, v28, v27, v30, v29, v10);
  v32[0] = v18;
  v26 = v18;
  if (swift_dynamicCast())
  {
    if ((v34 & 0xE0) == 0x80 && v33 == 3 && v34 == 128)
    {

      return;
    }

    sub_1AEAEE81C(v33, *(&v33 + 1), v34);
  }

  swift_willThrow();
}

uint64_t sub_1AEA462CC(uint64_t *a1)
{
  result = (*(v1 + 16))();
  if (v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AEA4631C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B90);
    v1 = sub_1AEAFA06C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1 + 64;

  v9 = 0;
  v30 = v6;
  v31 = v1;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v13 >= v6)
        {

          return v1;
        }

        v5 = *(v2 + 8 * v13);
        ++v9;
        if (v5)
        {
          v9 = v13;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_15:
    v14 = __clz(__rbit64(v5)) | (v9 << 6);
    v15 = *(a1 + 48) + 24 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_1AEA45E18(*(a1 + 56) + 32 * v14, v40 + 8);
    *&v39 = v16;
    *(&v39 + 1) = v17;
    LOBYTE(v40[0]) = v18;
    v36 = v39;
    v37[0] = v40[0];
    v37[1] = v40[1];
    v38 = v41;
    v19 = v39;
    v20 = v18;
    sub_1AEA45304((v37 + 8), v34);
    sub_1AEA458E4();
    sub_1AEA4668C();
    if (!swift_dynamicCast())
    {
      break;
    }

    v33 = v35;
    sub_1AEAFA3BC();
    if (v18)
    {
      MEMORY[0x1B270D930](1);
      MEMORY[0x1B270D930](*(v19 + 16));
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = v19 + 40;
        do
        {

          sub_1AEAF95DC();

          v22 += 16;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      MEMORY[0x1B270D930](0);
      sub_1AEAF95DC();
    }

    result = sub_1AEAFA3FC();
    v1 = v31;
    v23 = -1 << *(v31 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      v11 = v20;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v7 + 8 * v25);
        if (v29 != -1)
        {
          v10 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v10 = __clz(__rbit64((-1 << v24) & ~*(v7 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    v11 = v20;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v12 = *(v31 + 48) + 24 * v10;
    *v12 = v19;
    *(v12 + 16) = v11;
    *(*(v31 + 56) + 8 * v10) = v33;
    ++*(v31 + 16);
    v2 = a1 + 64;
    v6 = v30;
  }

  sub_1AEA45ED0();

  v35 = 0;

  sub_1AEAEFAF8(0, 0, 0, 0);
  return 0;
}

unint64_t sub_1AEA4668C()
{
  result = qword_1ED98AA70;
  if (!qword_1ED98AA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED98AA70);
  }

  return result;
}

uint64_t sub_1AEA466D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9248);
    v1 = sub_1AEAFA06C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  v29 = v1;
  while (v4)
  {
LABEL_15:
    v13 = __clz(__rbit64(v4)) | (v8 << 6);
    v14 = *(a1 + 48) + 24 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(*(a1 + 56) + 8 * v13);
    *&v35 = *v14;
    *(&v35 + 1) = v15;
    v36 = v16;
    v34 = v17;
    v18 = v17;
    sub_1AEA458E4();
    sub_1AEA4668C();
    swift_dynamicCast();
    v31 = v35;
    v32 = v36;
    sub_1AEA45304(&v37, v33);
    sub_1AEA45304(v33, &v35);
    sub_1AEAFA3BC();
    if (v32)
    {
      MEMORY[0x1B270D930](1);
      MEMORY[0x1B270D930](*(v31 + 16));
      v19 = v31;
      v20 = *(v31 + 16);
      if (v20)
      {
        v21 = v31 + 40;
        do
        {

          sub_1AEAF95DC();

          v21 += 16;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      MEMORY[0x1B270D930](0);
      v19 = v31;
      sub_1AEAF95DC();
    }

    result = sub_1AEAFA3FC();
    v1 = v29;
    v22 = -1 << *(v29 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v6 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      v10 = *(&v31 + 1);
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v6 + 8 * v24);
        if (v28 != -1)
        {
          v9 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_32;
    }

    v9 = __clz(__rbit64((-1 << v23) & ~*(v6 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v10 = *(&v31 + 1);
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v11 = *(v29 + 48) + 24 * v9;
    *v11 = v19;
    *(v11 + 8) = v10;
    *(v11 + 16) = v32;
    result = sub_1AEA45304(&v35, (*(v29 + 56) + 32 * v9));
    ++*(v29 + 16);
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v4)
    {
      v8 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AEA46A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = *(v4 + 8);
  v113 = *v4;
  v5 = *(v4 + 24);
  v111 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = a4 + 64;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 64);
  v98 = (v9 + 63) >> 6;
  v12 = *(v4 + 48);

  v13 = 0;
  v106 = v7;
  v107 = v6;
  v99 = v8;
  v100 = v5;
  v105 = v12;
  if (!v11)
  {
LABEL_6:
    if (v98 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    else
    {
      v16 = v98;
    }

    v17 = v16 - 1;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_114;
      }

      if (v15 >= v98)
      {
        v103 = 0;
        v144 = 0;
        v142 = 0u;
        v143 = 0u;
        v14 = v17;
        v141 = 0u;
        goto LABEL_15;
      }

      v11 = *(v8 + 8 * v15);
      ++v13;
      if (v11)
      {
        v14 = v15;
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
    v14 = v13;
    v15 = v13;
LABEL_14:
    v103 = (v11 - 1) & v11;
    v18 = __clz(__rbit64(v11)) | (v15 << 6);
    v19 = *(a4 + 48) + 24 * v18;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    sub_1AEA45E18(*(a4 + 56) + 32 * v18, &v134);
    *&v141 = v20;
    *(&v141 + 1) = v21;
    LOBYTE(v142) = v22;
    sub_1AEA45304(&v134, (&v142 + 8));
    sub_1AEA458E4();
LABEL_15:
    v127 = v141;
    v128[0] = v142;
    v128[1] = v143;
    v129 = v144;
    if (!v144)
    {
    }

    v102 = v14;
    v23 = v127;
    v24 = LOBYTE(v128[0]);
    sub_1AEA45304((v128 + 8), v126);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v23 + 16);
    sub_1AEA458E4();
    v26 = v23;
    v114 = v25;
    if (v25)
    {
      goto LABEL_20;
    }

LABEL_105:

    sub_1AEA45ED0();
    __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_106:
    v8 = v99;
    v13 = v102;
    v11 = v103;
    if (!v103)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AEAFC470;
  *(v26 + 32) = v23;
  sub_1AEA458E4();
  v114 = 1;
LABEL_20:
  v27 = 0;
  v115 = v26;
  v116 = v26 + 32;
  v118 = v24;
  while (v27 < *(v26 + 16))
  {
    v122 = v27;
    v28 = (v116 + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    if (v24)
    {
      v31 = *(v23 + 16);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1AEAFC470;
      *(v32 + 32) = v23;
      v31 = 1;
    }

    sub_1AEA458E4();

    v33 = v31 - 1;
    if (!v31)
    {
      v33 = 0;
    }

    v121 = v33;
    v34 = sub_1AEAF958C();
    v35 = sub_1AEAF958C();
    v36 = [v34 stringByAppendingPathComponent_];

    v119 = sub_1AEAF95BC();
    v123 = v37;

    if (a3)
    {
      if (*(a3 + 16))
      {
        v38 = sub_1AEA8EECC(v30, v29);
        v40 = v39;

        if (v40)
        {
          sub_1AEA45E18(*(a3 + 56) + 32 * v38, &v134);
          sub_1AEA45304(&v134, &v141);
          sub_1AEA45304(&v141, &v124);
          goto LABEL_55;
        }
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AEAFC470;
      *(v43 + 32) = v119;
      *(v43 + 40) = v123;
      sub_1AEAEE758();
      v42 = swift_allocError();
      *v44 = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 96;
      swift_willThrow();
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        v49 = *(v113 + 16);
        sub_1AEA43B10(v113, v112, v111, v5, v6, v7, 2u);
        if (v49)
        {
          v50 = sub_1AEA8EECC(v30, v29);
          if (v51)
          {
            v52 = v50;

            sub_1AEA45E18(*(v113 + 56) + 32 * v52, &v131);
            sub_1AEA44C1C(v113, v112, v111, v5, v6, v7, 2u);
            sub_1AEA45304(&v131, &v134);
LABEL_52:
            sub_1AEA45304(&v134, &v141);
            sub_1AEA45304(&v141, &v124);
            goto LABEL_55;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1AEAFC470;
        *(v55 + 32) = v30;
        *(v55 + 40) = v29;
        sub_1AEAEE758();
        v42 = swift_allocError();
        *v56 = v55;
        *(v56 + 8) = 0;
        *(v56 + 16) = 96;
        swift_willThrow();
        sub_1AEA44C1C(v113, v112, v111, v5, v6, v7, 2u);
      }

      else
      {

        sub_1AEAEE758();
        v42 = swift_allocError();
        *v54 = xmmword_1AEB039D0;
        *(v54 + 16) = 0x80;
        swift_willThrow();
      }
    }

    else
    {
      v41 = v113;
      if (v12)
      {
        v41 = v6;
      }

      sub_1AEA43B10(v113, v112, v111, v5, v6, v7, v12);
      v41(&v134, v30, v29);
      v42 = v120;
      if (!v120)
      {
        v120 = 0;

        sub_1AEA44C1C(v113, v112, v111, v5, v6, v7, v12);
        goto LABEL_52;
      }

      sub_1AEA44C1C(v113, v112, v111, v5, v6, v7, v12);
    }

    v120 = 0;
    *&v131 = v42;
    v45 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (!swift_dynamicCast())
    {
      goto LABEL_48;
    }

    v46 = v134;
    v47 = v135;
    if ((v135 & 0xE0) != 0x60)
    {
      sub_1AEAEE81C(v134, *(&v134 + 1), v135);
LABEL_48:

LABEL_49:
      v24 = v118;
      v26 = v115;
      v53 = v122;
      goto LABEL_103;
    }

    sub_1AEA45E18(v126, &v141);
    if ((swift_dynamicCast() & 1) == 0 || LOBYTE(v133[0]) == 1)
    {

      sub_1AEAEE758();
      v42 = swift_allocError();
      *v48 = v46;
      *(v48 + 8) = 0;
      *(v48 + 16) = 96;
      swift_willThrow();

      v120 = 0;
      goto LABEL_49;
    }

    sub_1AEAEE81C(v46, *(&v46 + 1), v47);
    v57 = sub_1AEAF976C();
    v125 = sub_1AEA4668C();
    *&v124 = v57;

LABEL_55:
    sub_1AEA45E18(&v124, &v141);
    sub_1AEA45E18(v126, &v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B78);
    if (!swift_dynamicCast())
    {
      goto LABEL_83;
    }

    v58 = v145;
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B88);
      if (swift_dynamicCast())
      {
        *&v134 = v113;
        *(&v134 + 1) = v112;
        v135 = v111;
        v136 = v5;
        v137 = v6;
        v138 = v7;
        v139 = v12;
        sub_1AEA46A24(v119, v123, v58, v131);
        v42 = v120;

        if (v120)
        {
          goto LABEL_100;
        }

        __swift_destroy_boxed_opaque_existential_1(&v143);
        __swift_destroy_boxed_opaque_existential_1(&v141);
        goto LABEL_95;
      }

LABEL_83:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
      if (swift_dynamicCast())
      {
        v88 = v134;
        if (swift_dynamicCast())
        {
          v89 = sub_1AEA47CAC(v131);

          v90 = sub_1AEA48014(v88, v89);

          if (*(v90 + 16))
          {

            sub_1AEAEF870(v90);
            v92 = v91;

            sub_1AEAEE758();
            v42 = swift_allocError();
            *v93 = v92;
            *(v93 + 8) = 0;
            *(v93 + 16) = 96;
            swift_willThrow();
LABEL_100:
            v24 = v118;
LABEL_101:
            v26 = v115;
            v53 = v122;
            __swift_destroy_boxed_opaque_existential_1(&v143);
            __swift_destroy_boxed_opaque_existential_1(&v141);
            if (!v42)
            {
LABEL_109:

              sub_1AEA45ED0();

              __swift_destroy_boxed_opaque_existential_1(v126);
              __swift_destroy_boxed_opaque_existential_1(&v124);
              v120 = v42;
              goto LABEL_106;
            }

            goto LABEL_102;
          }

          __swift_destroy_boxed_opaque_existential_1(&v143);
          __swift_destroy_boxed_opaque_existential_1(&v141);
LABEL_94:
          v42 = v120;
LABEL_95:
          v24 = v118;
          goto LABEL_96;
        }
      }

      sub_1AEA4668C();
      if (swift_dynamicCast())
      {
        v94 = v134;
        if (swift_dynamicCast())
        {
          v95 = v131;
          if ((sub_1AEAF9C0C() & 1) == 0)
          {
            sub_1AEAEE758();
            v42 = swift_allocError();
            *v96 = v119;
            *(v96 + 8) = v123;
            *(v96 + 16) = 64;
            swift_willThrow();

            goto LABEL_100;
          }
        }

        else
        {
        }
      }

      sub_1AEA41FAC(&v141, &qword_1EB5E9B80);
      goto LABEL_94;
    }

    v104 = v58;
    v59 = v140 + 64;
    v60 = 1 << *(v140 + 32);
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v62 = v61 & *(v140 + 64);
    v63 = (v60 + 63) >> 6;
    v110 = v140;

    v64 = 0;
    v65 = MEMORY[0x1E69E7CC8];
    v66 = v113;
    v108 = v63;
    for (i = v59; ; v59 = i)
    {
      v24 = v118;
      if (!v62)
      {
        break;
      }

      v68 = v64;
LABEL_68:
      v69 = __clz(__rbit64(v62)) | (v68 << 6);
      v70 = (*(v110 + 48) + 16 * v69);
      v71 = *v70;
      v72 = v70[1];
      sub_1AEA45E18(*(v110 + 56) + 32 * v69, &v135);
      *&v134 = v71;
      *(&v134 + 1) = v72;
      sub_1AEAEE7AC(&v134, &v131);
      v73 = v131;
      sub_1AEA45304(&v132, v133);
      sub_1AEA45E18(v133, &v131);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v65;
      v76 = sub_1AEA45754(v73, *(&v73 + 1), 0);
      v77 = v65[2];
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        goto LABEL_115;
      }

      v80 = v75;
      if (v65[3] >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AEAEDF18();
        }
      }

      else
      {
        sub_1AEAEDBB8(v79, isUniquelyReferenced_nonNull_native);
        v81 = sub_1AEA45754(v73, *(&v73 + 1), 0);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_117;
        }

        v76 = v81;
      }

      v6 = v107;
      v62 &= v62 - 1;
      if (v80)
      {

        v65 = v130;
        v67 = (v130[7] + 32 * v76);
        __swift_destroy_boxed_opaque_existential_1(v67);
        sub_1AEA45304(&v131, v67);
        __swift_destroy_boxed_opaque_existential_1(v133);
        sub_1AEA41FAC(&v134, &qword_1EB5E9B60);
      }

      else
      {
        v65 = v130;
        v130[(v76 >> 6) + 8] |= 1 << v76;
        v83 = v65[6] + 24 * v76;
        *v83 = v73;
        *(v83 + 16) = 0;
        sub_1AEA45304(&v131, (v65[7] + 32 * v76));
        __swift_destroy_boxed_opaque_existential_1(v133);
        sub_1AEA41FAC(&v134, &qword_1EB5E9B60);
        v84 = v65[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_116;
        }

        v65[2] = v86;
      }

      v64 = v68;
      v66 = v113;
      v7 = v106;
      v12 = v105;
      v63 = v108;
    }

    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_113;
      }

      if (v68 >= v63)
      {
        break;
      }

      v62 = *(v59 + 8 * v68);
      ++v64;
      if (v62)
      {
        goto LABEL_68;
      }
    }

    v87 = v66;

    *&v134 = v87;
    *(&v134 + 1) = v112;
    v5 = v100;
    v135 = v111;
    v136 = v100;
    v137 = v6;
    v138 = v7;
    v139 = v12;
    sub_1AEA46A24(v119, v123, v104, v65);
    v42 = v120;

    if (v120)
    {
      goto LABEL_101;
    }

    __swift_destroy_boxed_opaque_existential_1(&v143);
    __swift_destroy_boxed_opaque_existential_1(&v141);
LABEL_96:
    v26 = v115;
    v53 = v122;
    if (!v42)
    {
      goto LABEL_109;
    }

LABEL_102:
    __swift_destroy_boxed_opaque_existential_1(&v124);

    v120 = 0;
LABEL_103:
    if (v121 == v53)
    {

      sub_1AEA45ED0();
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1(v126);
    }

    v27 = v53 + 1;

    if (v27 == v114)
    {
      goto LABEL_105;
    }
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_1AEAFA31C();
  __break(1u);
  return result;
}

void sub_1AEA47908(id a1@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, char a4@<W3>, void *a5@<X8>)
{
  if (a4)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1AEA47970(a2, a3, a5);
  }
}

void sub_1AEA47970(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v8 = sub_1AEAF958C();
  v9 = SecTaskCopyValueForEntitlement(v4, v8, error);

  if (v9)
  {
    a3[3] = swift_getObjectType();
    *a3 = v9;
  }

  else if (error[0] && (v23 = error[0], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9B98), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_1EB5F2F90 != -1)
    {
      swift_once();
    }

    v10 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v10, qword_1EB5F5CC8);

    v11 = v22;
    v12 = sub_1AEAF8FCC();
    v13 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_1AEA45C14(a1, a2, &v23);
      *(v14 + 12) = 2112;
      v17 = v22;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_1AEA3F000, v12, v13, "Failed to retrieve entitlement %s, error: %@", v14, 0x16u);
      sub_1AEA41FAC(v15, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B270E620](v16, -1, -1);
      MEMORY[0x1B270E620](v14, -1, -1);
    }

    sub_1AEAEE758();
    swift_allocError();
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AEAFC470;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;
    sub_1AEAEE758();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 96;
    swift_willThrow();
  }
}

uint64_t sub_1AEA47CAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B270CF40](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AEA47D44(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AEA47D44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v8 = sub_1AEAFA3FC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1AEAFA2BC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1AEA47E94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AEA47E94(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1AEA9A9A0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1AEA9AC00();
      goto LABEL_16;
    }

    sub_1AEA9AD5C();
  }

  v10 = *v4;
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  result = sub_1AEAFA3FC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1AEAFA2BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1AEAFA30C();
  __break(1u);
  return result;
}

uint64_t sub_1AEA48014(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1AEAFA3BC();

    sub_1AEAF95DC();
    v11 = sub_1AEAFA3FC();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1AEAFA2BC() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1AEA484C0(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1AEAFA3BC();

        sub_1AEAF95DC();
        v33 = sub_1AEAFA3FC();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1AEAFA2BC() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1AEAEE0D8(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1B270E620](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1B270E620](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AEA484C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F28);
  result = sub_1AEAF9DFC();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1AEAFA3BC();

    sub_1AEAF95DC();
    result = sub_1AEAFA3FC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1AEA486E4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AEAB4754(a1, a2 & 1);
  }
}

id sub_1AEA486FC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id sub_1AEA48708(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AEA486FC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1AEA48720()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1ED98DDF8);
  __swift_project_value_buffer(v0, qword_1ED98DDF8);
  return sub_1AEAF8FDC();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1AEA487C8()
{
  v1 = *(v0 + 624);
  swift_getKeyPath();
  *(v0 + 544) = v1;
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  if (!*(v1 + 152))
  {
    goto LABEL_20;
  }

  if (*(*(v0 + 616) + 48) == 255)
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 624);
  swift_getKeyPath();
  *(v0 + 600) = v2;
  sub_1AEAF8DDC();

  swift_beginAccess();
  sub_1AEA63BD4(v2 + 96, v0 + 352, &qword_1EB5E8F38);
  if (*(v0 + 400) == 255)
  {
    sub_1AEA438F0(*(v0 + 624) + 40, v0 + 296);
    if (*(v0 + 400) != 255)
    {
      sub_1AEA41FAC(v0 + 352, &qword_1EB5E8F38);
    }
  }

  else
  {
    v3 = *(v0 + 368);
    *(v0 + 296) = *(v0 + 352);
    *(v0 + 312) = v3;
    *(v0 + 328) = *(v0 + 384);
    *(v0 + 344) = *(v0 + 400);
  }

  v4 = *(v0 + 616);
  sub_1AEA63BD4(v0 + 296, v0 + 16, &qword_1EB5E8F38);
  sub_1AEA63BD4(v4, v0 + 72, &qword_1EB5E8F38);
  if (*(v0 + 64) == 255)
  {
    sub_1AEA41FAC(v0 + 296, &qword_1EB5E8F38);
    if (*(v0 + 120) == 255)
    {
      sub_1AEA41FAC(v0 + 16, &qword_1EB5E8F38);
      goto LABEL_13;
    }

LABEL_19:
    sub_1AEA41FAC(v0 + 16, &qword_1EB5E8F78);
LABEL_20:
    v18 = *(v0 + 624);
    swift_getKeyPath();
    *(v0 + 552) = v18;
    sub_1AEAF8DDC();

    if (*(v1 + 152))
    {
      type metadata accessor for PolicyFetcher();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      sub_1AEAF985C();
    }

    sub_1AEA63BD4(*(v0 + 616), v0 + 184, &qword_1EB5E8F38);
    if (*(v0 + 232) == 255)
    {
      sub_1AEA41FAC(v0 + 184, &qword_1EB5E8F38);
    }

    else
    {
      v19 = *(v0 + 200);
      *(v0 + 128) = *(v0 + 184);
      *(v0 + 144) = v19;
      *(v0 + 160) = *(v0 + 216);
      *(v0 + 176) = *(v0 + 232);
      sub_1AEA438F0(v0 + 128, v0 + 240);
      sub_1AEA9CF70(v0 + 240);
      sub_1AEA45CE0(v0 + 128);
    }

    v20 = *(v0 + 640);
    v21 = *(v0 + 632);
    v22 = *(v0 + 624);
    v23 = sub_1AEAF982C();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v25 = sub_1AEA41714(&unk_1ED98AA20, v24, type metadata accessor for PolicyActor);
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v25;
    v26[4] = v22;

    v27 = sub_1AEA9D4E4(0, 0, v21, &unk_1AEAFE700, v26);
    *(v0 + 648) = v27;

    sub_1AEA498AC(v28);
    v29 = swift_task_alloc();
    *(v0 + 656) = v29;
    v10 = type metadata accessor for PolicyFetcher();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    *(v0 + 664) = v11;
    *v29 = v0;
    v29[1] = sub_1AEA4DE7C;
    v12 = MEMORY[0x1E69E7288];
    v13 = v0 + 560;
    v14 = v27;
    goto LABEL_26;
  }

  sub_1AEA63BD4(v0 + 16, v0 + 408, &qword_1EB5E8F38);
  if (*(v0 + 120) == 255)
  {
    sub_1AEA41FAC(v0 + 296, &qword_1EB5E8F38);
    sub_1AEA45CE0(v0 + 408);
    goto LABEL_19;
  }

  v5 = *(v0 + 88);
  *(v0 + 464) = *(v0 + 72);
  *(v0 + 480) = v5;
  *(v0 + 496) = *(v0 + 104);
  *(v0 + 512) = *(v0 + 120);
  v6 = _s24SensitiveContentAnalysis0aB6PolicyV6SourceO2eeoiySbAE_AEtFZ_0(v0 + 408, v0 + 464);
  sub_1AEA45CE0(v0 + 464);
  sub_1AEA41FAC(v0 + 296, &qword_1EB5E8F38);
  sub_1AEA45CE0(v0 + 408);
  sub_1AEA41FAC(v0 + 16, &qword_1EB5E8F38);
  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  v7 = *(v0 + 624);
  swift_getKeyPath();
  *(v0 + 576) = v7;
  sub_1AEAF8DDC();

  v8 = *(v1 + 152);
  *(v0 + 680) = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    *(v0 + 688) = v9;
    v10 = type metadata accessor for PolicyFetcher();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    *(v0 + 696) = v11;
    *v9 = v0;
    v9[1] = sub_1AEA4EA24;
    v12 = MEMORY[0x1E69E7288];
    v13 = v0 + 584;
    v14 = v8;
LABEL_26:

    return MEMORY[0x1EEE6DA10](v13, v14, v10, v11, v12);
  }

  v15 = *(v0 + 608);
  *v15 = 0;
  *(v15 + 8) = 1;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1AEA48E80()
{
  v17 = v0;
  *(v0[52] + 48) = 0;
  if (qword_1ED98D6E8 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = sub_1AEAF8FEC();
  v0[56] = __swift_project_value_buffer(v2, qword_1ED98DDF8);
  sub_1AEA438F0(v1, (v0 + 9));
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = SensitiveContentPolicy.Source.debugDescription.getter();
    v9 = v8;
    sub_1AEA45CE0((v0 + 9));
    v10 = sub_1AEA45C14(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "Fetching policy from new source: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B270E620](v6, -1, -1);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  else
  {

    sub_1AEA45CE0((v0 + 9));
  }

  v12 = v0[52];
  v11 = v0[53];
  *(v12 + 32) = sub_1AEAA2230;
  *(v12 + 40) = v11;

  SensitiveContentPolicy.Source.changes.getter((v0 + 34));
  v13 = swift_task_alloc();
  v0[57] = v13;
  v14 = sub_1AEA4A3D0();
  *v13 = v0;
  v13[1] = sub_1AEA4BAD4;

  return AsyncSequence<>.firstAndTheRest.getter((v0 + 2), &type metadata for SensitiveContentPolicy.Changes, v14);
}

uint64_t SensitiveContentPolicy.Source.changes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F80);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F88);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F90);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F98);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8FA0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1AEA438F0(v2, &v26);
  if (v31)
  {
    if (v31 == 1)
    {
      return sub_1AEA49728(&v26, v25);
    }

    else
    {
      if (v29 | v30 | v26 | v28 | v27 | *(&v26 + 1))
      {
        if (v26 != 1 || v29 | v30 | v28 | v27 | *(&v26 + 1))
        {
          v18 = swift_allocObject();
          *(v18 + 16) = 0;
          *(v18 + 24) = 1;
          type metadata accessor for SCSensitivityAnalysisPolicy(0);
          sub_1AEAF995C();
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8FA8);
          v20 = v25;
          v25[3] = v19;
          v20[4] = sub_1AEA4A324(&qword_1EB5E8FB0, &qword_1EB5E8FA8);
          __swift_allocate_boxed_opaque_existential_1(v20);
          sub_1AEA4A324(&unk_1EB5E8FB8, &qword_1EB5E8F80);
        }

        else
        {
          sub_1AEA49EF8(0, &qword_1ED989AD0);
          (*(v22 + 104))(v6, *MEMORY[0x1E69E8790], v4);
          sub_1AEAF996C();
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8FC8);
          v15 = v25;
          v25[3] = v14;
          v15[4] = sub_1AEA4A324(&unk_1ED989AB0, &unk_1EB5E8FC8);
          __swift_allocate_boxed_opaque_existential_1(v15);
          sub_1AEA4A324(&qword_1ED989AF8, &qword_1EB5E8F90);
        }
      }

      else
      {
        sub_1AEA49EF8(0, &qword_1ED98A870);
        (*(v9 + 104))(v11, *MEMORY[0x1E69E8790], v8);
        sub_1AEAF996C();
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8FD8);
        v17 = v25;
        v25[3] = v16;
        v17[4] = sub_1AEA4A324(&unk_1ED98A860, &qword_1EB5E8FD8);
        __swift_allocate_boxed_opaque_existential_1(v17);
        sub_1AEA4A324(&qword_1ED98A878, &qword_1EB5E8FA0);
      }

      return sub_1AEAF9FDC();
    }
  }

  else
  {
    sub_1AEA45CE0(&v26);
    if (qword_1ED98D6D0 != -1)
    {
      swift_once();
    }

    return sub_1AEAA12D0(&unk_1EB5F5C38, v25);
  }
}

uint64_t sub_1AEA49728(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PolicyCache.restart(with:)(uint64_t a1, uint64_t a2)
{
  v3[78] = v2;
  v3[77] = a2;
  v3[76] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v3[79] = swift_task_alloc();
  if (qword_1ED98D888 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED98D890;
  v3[80] = qword_1ED98D890;

  return MEMORY[0x1EEE6DFA0](sub_1AEA487C8, v4, 0);
}

uint64_t sub_1AEA49840()
{
  type metadata accessor for PolicyActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ED98D890 = v0;
  return result;
}

uint64_t sub_1AEA498AC(uint64_t a1)
{
  if (!*(v1 + 152))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
    sub_1AEAF8DCC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PolicyFetcher();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  v3 = sub_1AEAF983C();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 152) = a1;
}

uint64_t sub_1AEA49A48()
{
  *(*(v0 + 16) + 152) = *(v0 + 24);
}

uint64_t sub_1AEA49A84(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA5E1AC;

  return sub_1AEA49B24(a1, v5, v6, v4);
}

uint64_t sub_1AEA49B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a1;
  v4[21] = a4;
  if (qword_1ED98D888 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED98D890;
  v4[22] = qword_1ED98D890;

  return MEMORY[0x1EEE6DFA0](sub_1AEA49BC0, v5, 0);
}

uint64_t sub_1AEA49BC0()
{
  v1 = *(v0 + 168);
  swift_getKeyPath();
  *(v0 + 152) = v1;
  v2 = (v0 + 16);
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
  sub_1AEA63BD4(v1 + 96, v0 + 72, &qword_1EB5E8F38);
  if (*(v0 + 120) == 255)
  {
    sub_1AEA438F0(*(v0 + 168) + 40, v0 + 16);
    if (*(v0 + 120) != 255)
    {
      sub_1AEA41FAC(v0 + 72, &qword_1EB5E8F38);
    }
  }

  else
  {
    v3 = *(v0 + 88);
    *v2 = *(v0 + 72);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
  }

  v4 = swift_allocObject();
  *(v0 + 184) = v4;
  swift_weakInit();
  type metadata accessor for PolicyFetcher();
  v5 = swift_allocObject();

  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_1AEA4D5C4;

  return sub_1AEA49E04(v2, v5, v4);
}

uint64_t sub_1AEA49DCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA49E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v3[54] = swift_task_alloc();
  v4 = qword_1ED98D888;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED98D890;
  v3[55] = qword_1ED98D890;

  return MEMORY[0x1EEE6DFA0](sub_1AEA48E80, v5, 0);
}

uint64_t sub_1AEA49EF8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AEA49F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9038);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9040);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = objc_opt_self();
  aBlock[0] = [v10 currentScanningPolicy];
  v16 = aBlock[0];
  sub_1AEAF993C();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(&v12[v11], v5, v2);
  aBlock[4] = sub_1AEAA1FC4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEAA0EEC;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  v14 = [v10 subscribeForScanningPolicyChanges_];
  _Block_release(v13);
  *(swift_allocObject() + 16) = v14;
  sub_1AEAF991C();
}

uint64_t sub_1AEA4A22C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1AEA45E18(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AEA4A324(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1AEA4A3D0()
{
  result = qword_1ED98AA30;
  if (!qword_1ED98AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98AA30);
  }

  return result;
}

unint64_t sub_1AEA4A428()
{
  result = qword_1ED98A4C8[0];
  if (!qword_1ED98A4C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98A4C8);
  }

  return result;
}

uint64_t sub_1AEA4A48C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1AEAF98EC();
  return sub_1AEA4A65C(v2);
}

uint64_t sub_1AEA4A5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CacheCheck.listenForUpdates()()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v1[11] = swift_task_alloc();
  v2 = sub_1AEAF9B4C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_1AEAF97FC();
  v1[16] = sub_1AEAF97EC();
  v4 = sub_1AEAF977C();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AEA4A814, v4, v3);
}

unint64_t sub_1AEA4A7C0()
{
  result = qword_1ED98AA40;
  if (!qword_1ED98AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98AA40);
  }

  return result;
}

uint64_t sub_1AEA4A814()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1ED98BDE0 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC24SensitiveContentAnalysis10CacheCheck___observationRegistrar;
  v0[5] = v2;
  v0[20] = sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  swift_weakLoadStrong();
  v0[21] = sub_1AEAF9B6C();

  sub_1AEAF9B3C();
  swift_beginAccess();
  v0[22] = sub_1AEAF97EC();
  v3 = sub_1AEA41D94(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1AEAAA48C;
  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE6D8C8](v5, v6, v3);
}

uint64_t sub_1AEA4AA40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA4AB6C, 0, 0);
}

uint64_t sub_1AEA4AA60()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  if (!v1)
  {
    sub_1AEAFA3DC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AEAFA3DC();
    goto LABEL_6;
  }

  sub_1AEAFA3DC();
  sub_1AEAF95DC();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AEAFA3DC();
  sub_1AEAF95DC();
LABEL_6:
  sub_1AEA4AC28(v5, v3);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA4AB34()
{
  result = sub_1AEAF958C();
  qword_1ED98BDE8 = result;
  return result;
}

uint64_t sub_1AEA4AB6C()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AEA4B8CC;
  v5 = v0[2];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

uint64_t sub_1AEA4AC28(uint64_t a1, uint64_t a2)
{
  sub_1AEAFA3FC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B270D930](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1AEAFA3BC();

        sub_1AEAF95DC();
        v11 = sub_1AEAFA3FC();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t _s24SensitiveContentAnalysis11ParticipantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1AEAFA2BC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1AEAFA2BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1AEAFA2BC() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_16:

  return sub_1AEA99688(v5, v11);
}

uint64_t sub_1AEA4AF04(void *a1)
{
  v6 = v1;
  sub_1AEA4AF7C(&v5);
  *a1 = v5;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1AEA4AF7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [v1 policy];
  if (!result)
  {
    goto LABEL_80;
  }

  if (result == 1)
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      v96 = sub_1AEAF95BC();
      v97 = v15;
    }

    else
    {
      v96 = 0;
      v97 = 0;
    }

    v20 = [v2 allApplications];
    v100 = a1;
    if (v20)
    {
      v21 = v20;
      sub_1AEA49EF8(0, &qword_1EB5E9020);
      sub_1AEA49EF8(0, &qword_1ED989AC0);
      sub_1AEAA1F5C();
      v22 = sub_1AEAF951C();

      v98 = sub_1AEAA1E30(MEMORY[0x1E69E7CC0]);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = sub_1AEAF9FEC();
        v24 = 0;
        v25 = 0;
        a1 = 0;
        v26 = v23 | 0x8000000000000000;
      }

      else
      {
        v27 = -1 << *(v22 + 32);
        v25 = ~v27;
        v24 = v22 + 64;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        a1 = v29 & *(v22 + 64);
        v26 = v22;
      }

      v30 = (v25 + 64) >> 6;

      v31 = 0;
      while (1)
      {
        while (1)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            if (!sub_1AEAFA00C() || (swift_dynamicCast(), v36 = v103, swift_dynamicCast(), (v37 = v103) == 0))
            {
LABEL_52:
              sub_1AEA83A70();

              a1 = v100;
              goto LABEL_53;
            }
          }

          else
          {
            v32 = v31;
            v33 = a1;
            if (!a1)
            {
              while (1)
              {
                v31 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  goto LABEL_52;
                }

                v33 = *(v24 + 8 * v31);
                ++v32;
                if (v33)
                {
                  goto LABEL_35;
                }
              }

LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              swift_once();
LABEL_14:
              v16 = sub_1AEAF8FEC();
              __swift_project_value_buffer(v16, qword_1ED98DDF8);
              v17 = sub_1AEAF8FCC();
              v18 = sub_1AEAF9A9C();
              if (os_log_type_enabled(v17, v18))
              {
                v19 = swift_slowAlloc();
                *v19 = 0;
                _os_log_impl(&dword_1AEA3F000, v17, v18, "Unexpected MOUserSafetyScanningPolicy value", v19, 2u);
                MEMORY[0x1B270E620](v19, -1, -1);
              }

LABEL_17:
              result = 0;
              goto LABEL_80;
            }

LABEL_35:
            a1 = (v33 - 1) & v33;
            v34 = (v31 << 9) | (8 * __clz(__rbit64(v33)));
            v35 = *(*(v26 + 56) + v34);
            v36 = *(*(v26 + 48) + v34);
            v37 = v35;
            if (!v36)
            {
              goto LABEL_52;
            }
          }

          v38 = [v36 bundleIdentifier];
          if (v38)
          {
            break;
          }

LABEL_40:
        }

        v39 = v38;
        v95 = sub_1AEAF95BC();
        v41 = v40;

        v94 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v98;
        v92 = v41;
        v43 = sub_1AEA61F84(v95, v41, sub_1AEA61BA0);
        v44 = *(v98 + 16);
        v45 = (v42 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          result = sub_1AEAFA31C();
          __break(1u);
          return result;
        }

        if (*(v98 + 24) >= v46)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = v42;
            sub_1AEAA15AC();
            v42 = v56;
          }

          v41 = v92;
        }

        else
        {
          v99 = v42;
          sub_1AEAA1308(v46, isUniquelyReferenced_nonNull_native);
          v47 = sub_1AEA61F84(v95, v41, sub_1AEA61BA0);
          v49 = v48 & 1;
          v42 = v99;
          if ((v99 & 1) != v49)
          {
            goto LABEL_88;
          }

          v43 = v47;
        }

        if (v42)
        {

          v98 = v103;
          v50 = v103[7];
          v51 = *(v50 + 8 * v43);
          v37 = v94;
          *(v50 + 8 * v43) = v94;

          goto LABEL_40;
        }

        v103[(v43 >> 6) + 8] |= 1 << v43;
        v52 = (v103[6] + 16 * v43);
        *v52 = v95;
        v52[1] = v41;
        *(v103[7] + 8 * v43) = v94;

        v53 = v103[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_87;
        }

        v98 = v103;
        v103[2] = v55;
      }
    }

    v98 = sub_1AEAA1E30(MEMORY[0x1E69E7CC0]);
LABEL_53:
    v57 = [v2 allServices];
    if (v57)
    {
      v58 = v57;
      type metadata accessor for MOUserSafetyScannableServices(0);
      sub_1AEA49EF8(0, &qword_1ED989AC0);
      sub_1AEA41714(&qword_1EB5E9018, 255, type metadata accessor for MOUserSafetyScannableServices);
      v59 = sub_1AEAF951C();

      v60 = sub_1AEAA1E30(MEMORY[0x1E69E7CC0]);
      v61 = v59 + 64;
      v62 = 1 << *(v59 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v59 + 64);
      v65 = (v62 + 63) >> 6;
      v102 = v59;

      v66 = 0;
      v101 = v59 + 64;
      while (v64)
      {
        a1 = v66;
LABEL_64:
        v70 = (a1 << 9) | (8 * __clz(__rbit64(v64)));
        v71 = *(*(v102 + 48) + v70);
        v72 = *(*(v102 + 56) + v70);
        v73 = sub_1AEAF95BC();
        v75 = v74;
        v76 = v72;
        v77 = v71;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v79 = sub_1AEA61F84(v73, v75, sub_1AEA61BA0);
        v81 = v60[2];
        v82 = (v80 & 1) == 0;
        v54 = __OFADD__(v81, v82);
        v83 = v81 + v82;
        if (v54)
        {
          goto LABEL_83;
        }

        v84 = v80;
        if (v60[3] >= v83)
        {
          if ((v78 & 1) == 0)
          {
            v89 = v79;
            sub_1AEAA15AC();
            v79 = v89;
          }
        }

        else
        {
          sub_1AEAA1308(v83, v78);
          v79 = sub_1AEA61F84(v73, v75, sub_1AEA61BA0);
          if ((v84 & 1) != (v85 & 1))
          {
            goto LABEL_88;
          }
        }

        v64 &= v64 - 1;
        if (v84)
        {
          v67 = v79;

          v68 = v60[7];
          v69 = *(v68 + 8 * v67);
          *(v68 + 8 * v67) = v76;
        }

        else
        {
          v60[(v79 >> 6) + 8] |= 1 << v79;
          v86 = (v60[6] + 16 * v79);
          *v86 = v73;
          v86[1] = v75;
          *(v60[7] + 8 * v79) = v76;

          v87 = v60[2];
          v54 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v54)
          {
            goto LABEL_84;
          }

          v60[2] = v88;
        }

        v66 = a1;
        v61 = v101;
      }

      while (1)
      {
        a1 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_82;
        }

        if (a1 >= v65)
        {
          break;
        }

        v64 = *(v61 + 8 * a1);
        ++v66;
        if (v64)
        {
          goto LABEL_64;
        }
      }

      a1 = v100;
      v90 = v97;
      if (!v97)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v60 = sub_1AEAA1E30(MEMORY[0x1E69E7CC0]);
      v90 = v97;
      if (!v97)
      {
LABEL_78:

LABEL_79:
        result = 67;
        goto LABEL_80;
      }
    }

    v91 = static ServicePolicyChecker.isSCWEnabledByServiceOrApplication(for:allServices:allApplications:)(v96, v90, v60, v98);

    a1 = v100;
    if (v91 != 2 && (v91 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

  if (result != 2)
  {
    if (qword_1ED98D6E8 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_14;
  }

  v5 = [v1 interventionType];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = sub_1AEAF95BC();
  v9 = v8;
  if (v7 == sub_1AEAF95BC() && v9 == v10)
  {

    result = 1951;
    goto LABEL_80;
  }

  v12 = sub_1AEAFA2BC();

  if (v12)
  {
    result = 1951;
  }

  else
  {
LABEL_18:
    result = 1959;
  }

LABEL_80:
  *a1 = result;
  return result;
}

uint64_t sub_1AEA4B8D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AEA4B9C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AEA4BAD4()
{
  v1 = *v0;
  v2 = *(*v0 + 440);

  sub_1AEA4A65C(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1AEA4BBEC, v2, 0);
}

uint64_t sub_1AEA4BBEC()
{
  v49 = v0;
  if (*(v0 + 56))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    *(v0 + 191) = v4;
    *(v0 + 207) = v5;
    v6 = *(v0 + 64);
    *(v0 + 223) = v6;
    *(v0 + 232) = v4;
    *(v0 + 248) = v5;
    *(v0 + 264) = v6;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v46 = v2;
      v47 = v3;
      sub_1AEA4C6F4(v2, v3);
      sub_1AEA4C24C(&v46);
    }

    else
    {
      sub_1AEA4C6F4(v2, v3);
    }

    v45 = v3;
    if (v3)
    {
      *(v0 + 400) = v2;
      v16 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      swift_willThrowTypedImpl();
      v17 = v2;
      v18 = sub_1AEAF8FCC();
      v19 = sub_1AEAF9A8C();
      sub_1AEA4D5B8(v2, 1);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v2;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1AEA3F000, v18, v19, "Failed to fetch first policy: %@", v20, 0xCu);
        sub_1AEA41FAC(v21, &unk_1EB5E9C00);
        MEMORY[0x1B270E620](v21, -1, -1);
        MEMORY[0x1B270E620](v20, -1, -1);
        sub_1AEA4D5B8(v2, 1);
      }

      else
      {

        sub_1AEA4D5B8(v2, 1);
      }
    }

    else
    {
      v24 = sub_1AEAF8FCC();
      v25 = sub_1AEAF9A8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v27;
        *v26 = 136315138;
        v46 = v2;
        v28 = SensitiveContentPolicy.description.getter();
        v30 = sub_1AEA45C14(v28, v29, &v48);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1AEA3F000, v24, v25, "Fetched first policy: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1B270E620](v27, -1, -1);
        MEMORY[0x1B270E620](v26, -1, -1);
      }
    }

    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    v34 = *(v0 + 416);
    v35 = *(v0 + 408);
    v36 = sub_1AEAF982C();
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    sub_1AEAA12D0(v0 + 232, v0 + 312);
    v38 = sub_1AEA41714(&unk_1ED98AA20, v37, type metadata accessor for PolicyActor);
    v39 = swift_allocObject();
    *(v39 + 16) = v33;
    *(v39 + 24) = v38;
    v40 = *(v0 + 328);
    *(v39 + 32) = *(v0 + 312);
    *(v39 + 48) = v40;
    *(v39 + 64) = *(v0 + 344);
    *(v39 + 72) = v34;

    v41 = sub_1AEA67464(0, 0, v32, &unk_1AEAFEF58, v39);
    sub_1AEA4D5B8(v2, v45);

    sub_1AEA45CE0(v35);
    sub_1AEA4A65C(v0 + 232);
    *(v34 + 48) = v41;
  }

  else
  {
    v7 = *(v0 + 408);
    sub_1AEA41FAC(v0 + 16, &qword_1EB5E90D0);
    sub_1AEA438F0(v7, v0 + 128);
    v8 = sub_1AEAF8FCC();
    v9 = sub_1AEAF9A7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46 = v11;
      *v10 = 136315138;
      v12 = SensitiveContentPolicy.Source.debugDescription.getter();
      v14 = v13;
      sub_1AEA45CE0(v0 + 128);
      v15 = sub_1AEA45C14(v12, v14, &v46);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEA3F000, v8, v9, "Failed to receive first policy from source: %s, defaulting to disabled...", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1B270E620](v11, -1, -1);
      MEMORY[0x1B270E620](v10, -1, -1);
    }

    else
    {

      sub_1AEA45CE0(v0 + 128);
    }

    v31 = *(v0 + 416);
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v46 = 0;
      v47 = 0;
      sub_1AEA4C24C(&v46);
    }

    sub_1AEA45CE0(*(v0 + 408));
  }

  v42 = *(v0 + 8);
  v43 = *(v0 + 416);

  return v42(v43);
}

uint64_t sub_1AEA4C1B4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEA4C204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AEA4C24C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  result = sub_1AEAF987C();
  if ((result & 1) == 0)
  {
    if (v9)
    {
      v37 = v8;
      v11 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      swift_willThrowTypedImpl();
      if (qword_1ED98D6E8 != -1)
      {
        swift_once();
      }

      v12 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v12, qword_1ED98DDF8);
      v13 = v8;
      v14 = sub_1AEAF8FCC();
      v15 = sub_1AEAF9A9C();
      sub_1AEA4D5B8(v8, 1);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v8;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_1AEA3F000, v14, v15, "Failed to retrieve SensitiveContentPolicy: %@, Defaulting to disabled...", v16, 0xCu);
        sub_1AEA41FAC(v17, &unk_1EB5E9C00);
        MEMORY[0x1B270E620](v17, -1, -1);
        MEMORY[0x1B270E620](v16, -1, -1);
        sub_1AEA4D5B8(v8, 1);
      }

      else
      {

        sub_1AEA4D5B8(v8, 1);
      }
    }

    else
    {
      if (qword_1ED98D6E8 != -1)
      {
        swift_once();
      }

      v20 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v20, qword_1ED98DDF8);
      v21 = sub_1AEAF8FCC();
      v22 = sub_1AEAF9A7C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v36[0] = v4;
        v36[1] = v8;
        v25 = v24;
        v37 = v24;
        *v23 = 136315138;
        v26 = SensitiveContentPolicy.description.getter();
        v28 = sub_1AEA45C14(v26, v27, &v37);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1AEA3F000, v21, v22, "Updating SensitiveContentPolicy to %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v29 = v25;
        v4 = v36[0];
        MEMORY[0x1B270E620](v29, -1, -1);
        MEMORY[0x1B270E620](v23, -1, -1);
      }
    }

    v30 = v2[4];
    v37 = v8;
    v38 = v9;
    sub_1AEA4C6F4(v8, v9);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
    sub_1AEA4CE4C(&v37, v30, v31);
    v32 = sub_1AEAF982C();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_1AEAF97FC();
    sub_1AEA4C6F4(v8, v9);

    v33 = sub_1AEAF97EC();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v2;
    *(v34 + 40) = v8;
    *(v34 + 48) = v9;
    *(v34 + 56) = v4;
    sub_1AEA5E2A0(0, 0, v7, &unk_1AEAFEF70, v34);
  }

  return result;
}

uint64_t sub_1AEA4C6A8()
{
  swift_unknownObjectRelease();

  sub_1AEA4D5B8(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_1AEA4C6F4(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t SensitiveContentPolicy.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1AEA61C58((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x657A796C616E61;
      *(v6 + 5) = 0xE700000000000000;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    if ((v1 & 2) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
      }

      v8 = *(v2 + 2);
      v7 = *(v2 + 3);
      if (v8 >= v7 >> 1)
      {
        v2 = sub_1AEA61C58((v7 > 1), v8 + 1, 1, v2);
      }

      *(v2 + 2) = v8 + 1;
      v9 = &v2[16 * v8];
      *(v9 + 4) = 0xD000000000000015;
      *(v9 + 5) = 0x80000001AEB07130;
      if ((v1 & 4) == 0)
      {
LABEL_10:
        if ((v1 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    else if ((v1 & 4) == 0)
    {
      goto LABEL_10;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_1AEA61C58((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0xD000000000000014;
    *(v12 + 5) = 0x80000001AEB07110;
    if ((v1 & 8) == 0)
    {
LABEL_11:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }

LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1AEA61C58((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000024;
    *(v15 + 5) = 0x80000001AEB070E0;
    if ((v1 & 0x10) == 0)
    {
LABEL_12:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v17 = *(v2 + 2);
    v16 = *(v2 + 3);
    if (v17 >= v16 >> 1)
    {
      v2 = sub_1AEA61C58((v16 > 1), v17 + 1, 1, v2);
    }

    *(v2 + 2) = v17 + 1;
    v18 = &v2[16 * v17];
    *(v18 + 4) = 0xD000000000000011;
    *(v18 + 5) = 0x80000001AEB070C0;
    if ((v1 & 0x20) == 0)
    {
LABEL_13:
      if ((v1 & 0x40) == 0)
      {
LABEL_45:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
        sub_1AEA4A324(&qword_1EB5E8F40, &qword_1EB5E89A8);
        v3 = sub_1AEAF955C();

        return v3;
      }

LABEL_40:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
      }

      v23 = *(v2 + 2);
      v22 = *(v2 + 3);
      if (v23 >= v22 >> 1)
      {
        v2 = sub_1AEA61C58((v22 > 1), v23 + 1, 1, v2);
      }

      *(v2 + 2) = v23 + 1;
      v24 = &v2[16 * v23];
      *(v24 + 4) = 0xD000000000000011;
      *(v24 + 5) = 0x80000001AEB07080;
      goto LABEL_45;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1AEA61C58((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    v21 = &v2[16 * v20];
    *(v21 + 4) = 0xD000000000000010;
    *(v21 + 5) = 0x80000001AEB070A0;
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  return 0x64656C6261736964;
}

uint64_t sub_1AEA4CB64(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AEA4CBB0(a1, a2);
  sub_1AEA4CD5C(&unk_1F248A5A0);
  return v3;
}

uint64_t sub_1AEA4CBB0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AEA4CCE0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AEAF9EAC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AEAF95FC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AEA4CCE0(v10, 0);
        result = sub_1AEAF9E0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1AEA4CCE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1AEA4CD5C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AEA61D64(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AEA4CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AEAF9C3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    v14 = *(v7 + 8);
    v14(a1, v6);
    return (v14)(v10, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v10, a3);
    (*(*a2 + 160))(v13);
    (*(v7 + 8))(a1, v6);
    return (*(v11 + 8))(v13, a3);
  }
}

unint64_t sub_1AEA4D064()
{
  result = qword_1ED98A5E0;
  if (!qword_1ED98A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5E0);
  }

  return result;
}

uint64_t sub_1AEA4D0B8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AEAF92FC();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AEAF931C();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v19 - v13;
  v19[1] = v1[2];
  (*(v12 + 16))(v19 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v1;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1AEA4DB94;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEA4DB50;
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  sub_1AEAF930C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AEA428FC(&qword_1ED98AAC8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EC8);
  sub_1AEA42944(&qword_1ED98AAA8, &qword_1EB5E8EC8);
  sub_1AEAF9D5C();
  MEMORY[0x1B270D080](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v10, v21);
}

uint64_t sub_1AEA4D444()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1AEA4D4FC()
{
  result = qword_1ED98A5E8[0];
  if (!qword_1ED98A5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98A5E8);
  }

  return result;
}

uint64_t sub_1AEA4D550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AEA4D5B8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1AEA4D5C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = *(v4 + 176);
    v6 = sub_1AEA9D480;
  }

  else
  {
    v7 = *(v4 + 176);

    *(v4 + 208) = a1;
    v6 = sub_1AEA4D700;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1AEAF8EDC();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 40) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = *(v5 + 64);
  v20 = sub_1AEAF8F3C();
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v21 = *(v12 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v15 = sub_1AEAF8EAC();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v6, 1, v15))
  {
    (*(v16 + 8))(v0 + v6, v15);
  }

  (*(v8 + 8))(v0 + v10, v20);
  v17 = sub_1AEAF8E8C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v14, 1, v17))
  {
    (*(v18 + 8))(v0 + v14, v17);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | v9 | v13 | 7);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_2()
{
  sub_1AEA4F1AC(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AEA4DB50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AEA4DBCC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_1AEAF9C3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  v13 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v12, a1 + v13, v6);
  v14 = *(v5 - 8);
  LODWORD(v4) = (*(v14 + 48))(v12, 1, v5);
  (*(v7 + 8))(v12, v6);
  if (v4 == 1)
  {
    sub_1AEAF9B8C();
  }

  (*(v14 + 16))(v10, a2, v5);
  (*(v14 + 56))(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(a1 + v13, v10, v6);
  return swift_endAccess();
}

uint64_t sub_1AEA4DE7C()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 640);
  if (v0)
  {
    v4 = sub_1AEA9D414;
  }

  else
  {
    v4 = sub_1AEA4DFA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AEA4DFA8()
{
  v1 = v0[70];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1AEA4C6F4(v2, v3);

  if (v3)
  {
    v0[71] = v2;
    swift_willThrowTypedImpl();
  }

  else
  {

    v5 = v0[76];
    *v5 = v2;
    *(v5 + 8) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AEA4E088()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    sub_1AEA41FAC(v2 + 16, &qword_1EB5E8F38);
    v3 = sub_1AEA9B734;
  }

  else
  {

    sub_1AEA41FAC(v2 + 16, &qword_1EB5E8F38);
    v3 = sub_1AEA4E1D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AEA4E1EC()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    if (v3)
    {
      v5 = *(v2 + 16);
      v6 = sub_1AEAF8C4C();

      (v5)[2](v5, v6);
      _Block_release(v5);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v7 = *(v2 + 16);
    v7[2](v7, 0);
    _Block_release(v7);
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_1AEA4E370()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AEA4E46C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA4E524(a1, v4);
}

uint64_t sub_1AEA4E524(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AEA4E370;

  return v6(a1);
}

uint64_t sub_1AEA4E61C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEA4E6C4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1AEA4E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  sub_1AEAF97FC();
  *(v6 + 48) = sub_1AEAF97EC();
  v8 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA4E760, v8, v7);
}

uint64_t sub_1AEA4E760()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);

  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2 & 1;
  *(v0 + 16) = v3;
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DCC();

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1ED98D768 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  v7 = qword_1ED98D770;
  *(v0 + 16) = v6;
  v8 = *(v0 + 25) & 1;
  *(v0 + 24) = v8;
  sub_1AEA4C6F4(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
  [v5 postNotificationName:v7 object:sub_1AEAFA2FC()];
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

void sub_1AEA4E950()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = *(v0 + 32);
  *(v2 + 16) = v1;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1AEA4E9A4(v1, v4);
  sub_1AEA4E9D4(v3, v5);
}

id sub_1AEA4E9A4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AEA4C6F4(result, a2 & 1);
  }

  return result;
}

void sub_1AEA4E9D4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AEA4D5B8(a1, a2 & 1);
  }
}

uint64_t sub_1AEA4E9EC()
{
  result = sub_1AEAF958C();
  qword_1ED98D770 = result;
  return result;
}

uint64_t sub_1AEA4EA24()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 640);
  if (v0)
  {
    v4 = sub_1AEA9D3B0;
  }

  else
  {
    v4 = sub_1AEA4EB6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AEA4EB6C()
{
  v1 = v0[73];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1AEA4C6F4(v2, v3);

  if (v3)
  {
    v0[74] = v2;
    swift_willThrowTypedImpl();
  }

  else
  {
    v5 = v0[76];
    *v5 = v2;
    *(v5 + 8) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AEA4EDCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA4EE8C(v2, v3, v4);
}

uint64_t sub_1AEA4EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1AEAF97FC();
  v3[5] = sub_1AEAF97EC();
  v5 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA4EF28, v5, v4);
}

uint64_t sub_1AEA4EF28()
{
  v1 = v0[4];

  v0[6] = _Block_copy(v1);
  v0[7] = sub_1AEA49EF8(0, &qword_1ED98A488);
  v2 = sub_1AEAF96EC();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1AEABF924;
  v4 = v0[3];

  return (sub_1AEAC38C4)(v2, v4);
}

uint64_t static AnalysisHistoryCache.shared.getter()
{
  if (qword_1ED98D230 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

BOOL _s24SensitiveContentAnalysis12EntitlementsV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48) > 1u)
  {
    if (*(a1 + 48) == 2 && v2 == 2)
    {
      sub_1AEA4668C();
      v5 = sub_1AEAF94FC();
      v6 = sub_1AEAF94FC();
      v7 = sub_1AEAF9C0C();

      return v7 & 1;
    }

    return 0;
  }

  if (!*(a1 + 48))
  {
    return !*(a2 + 48);
  }

  if (v2 != 1)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && v9 == v8 && (v9 ^ v8) >> 32 == 0;
}

void *sub_1AEA4F1E4(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if (v3 == 255)
  {
    if (qword_1ED98CE70 != -1)
    {
      a1 = swift_once();
    }

    v5 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA462B4, &v10);
    v4 = v10;
    v6 = v11;
    v7 = *(v1 + 104);
    *(v1 + 104) = v10;
    v8 = *(v1 + 112);
    *(v1 + 112) = v6;
    sub_1AEA486FC(v4, v6);
    sub_1AEA486E4(v7, v8);
  }

  else
  {
    v4 = *(v1 + 104);
  }

  sub_1AEA48708(v2, v3);
  return v4;
}

uint64_t static SensitiveContentPolicy.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED98D6C8 != -1)
  {
    swift_once();
  }

  result = sub_1AEAFA47C();
  if (v4)
  {
    if (qword_1ED98D748 != -1)
    {
      swift_once();
    }

    sub_1AEAFA47C();
    PolicyCache.currentPolicy.getter(a1);
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  return result;
}

void PolicyCache.currentPolicy.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
  sub_1AEA4F548(v3);
  v4 = v8;
  if (v9 == 255)
  {
    v5 = v8;
    v6 = -1;
  }

  else
  {
    sub_1AEA4C6F4(v8, v9 & 1);
    sub_1AEA4E9D4(v8, v9);
    if ((v9 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();
    v5 = v8;
    v6 = v9;
  }

  sub_1AEA4E9D4(v5, v6);
  v4 = 0;
  v7 = 1;
LABEL_7:
  *a1 = v4;
  *(a1 + 8) = v7;
}

uint64_t sub_1AEA4F638@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1AEAF9C3C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

unint64_t sub_1AEA4F6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E90E0);
    v3 = sub_1AEAFA06C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AEA63BD4(v4, &v13, &qword_1EB5E89F0);
      v5 = v13;
      v6 = v14;
      result = sub_1AEA61F84(v13, v14, sub_1AEA61BA0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1AEA45304(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t objectdestroy_21Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1AEA4F9A8(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AnalysisHistory();
  static AnalysisHistory.shared.getter();
  v4 = a1;
  if (a1 >> 62)
  {
    v29 = sub_1AEAF9FFC();
    v4 = a1;
    v5 = v29;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6._rawValue = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v4;
    rawValue = MEMORY[0x1E69E7CC0];
    result = sub_1AEA4FF44(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v6._rawValue = rawValue;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x1B270D3B0](v9);
        sub_1AEA50004(&v34);
        swift_unknownObjectRelease();
        v11 = v34;
        v10 = v35;
        v12 = v36;
        v13 = v37;
        v14 = v38;
        rawValue = v6._rawValue;
        v16 = *(v6._rawValue + 2);
        v15 = *(v6._rawValue + 3);
        if (v16 >= v15 >> 1)
        {
          v30 = v37;
          v31 = v36;
          sub_1AEA4FF44((v15 > 1), v16 + 1, 1);
          v13 = v30;
          v12 = v31;
          v6._rawValue = rawValue;
        }

        ++v9;
        *(v6._rawValue + 2) = v16 + 1;
        v17 = v6._rawValue + 56 * v16;
        *(v17 + 4) = v11;
        *(v17 + 5) = v10;
        *(v17 + 3) = v12;
        *(v17 + 4) = v13;
        *(v17 + 10) = v14;
      }

      while (v5 != v9);
    }

    else
    {
      v18 = (v7 + 32);
      do
      {
        v19 = *v18;
        sub_1AEA50004(&v34);

        v20 = v34;
        v21 = v35;
        v22 = v36;
        v23 = v37;
        v24 = v38;
        rawValue = v6._rawValue;
        v26 = *(v6._rawValue + 2);
        v25 = *(v6._rawValue + 3);
        if (v26 >= v25 >> 1)
        {
          v33 = v36;
          v32 = v37;
          sub_1AEA4FF44((v25 > 1), v26 + 1, 1);
          v23 = v32;
          v22 = v33;
          v6._rawValue = rawValue;
        }

        *(v6._rawValue + 2) = v26 + 1;
        v27 = v6._rawValue + 56 * v26;
        *(v27 + 4) = v20;
        *(v27 + 5) = v21;
        *(v27 + 3) = v22;
        *(v27 + 4) = v23;
        *(v27 + 10) = v24;
        ++v18;
        --v5;
      }

      while (v5);
    }
  }

  if (a2 >= 5)
  {
    v28 = 1;
  }

  else
  {
    v28 = 0x302000101uLL >> (8 * a2);
  }

  swift_getObjectType();
  LOBYTE(v34) = v28;
  AnalysisHistoryStorage.willNeedInterventionForOutgoingCall(to:callType:)(v6, &v34);
  swift_unknownObjectRelease();
}

char *sub_1AEA4FD64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEA4FE8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA4E524(a1, v4);
}

char *sub_1AEA4FF44(char *a1, int64_t a2, char a3)
{
  result = sub_1AEA4FD64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AEA4FF64(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA63D38;

  return sub_1AEA50154(a1, v5, v6, v4);
}

uint64_t sub_1AEA50004@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 displayName];
  v5 = sub_1AEAF95BC();
  v7 = v6;

  v8 = [v2 firstName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1AEAF95BC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v2 lastName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1AEAF95BC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [v2 handles];
  v19 = sub_1AEAF99CC();

  return Participant.init(displayName:firstName:lastName:handles:)(v5, v7, v10, v12, v15, v17, v19, a1);
}

uint64_t sub_1AEA50154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AEA50180, 0, 0);
}

uint64_t sub_1AEA50180()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = -1;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA50248;
  v2 = *(v0 + 72);

  return PolicyCache.restart(with:)(v2, v0 + 16);
}

uint64_t sub_1AEA50248()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    sub_1AEA41FAC(v2 + 16, &qword_1EB5E8F38);

    return MEMORY[0x1EEE6DFA0](sub_1AEA9F340, 0, 0);
  }

  else
  {
    sub_1AEA41FAC(v2 + 16, &qword_1EB5E8F38);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Participant.init(displayName:firstName:lastName:handles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[5] = a6;
  a8[6] = a7;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalysisHistoryStorage.willNeedInterventionForOutgoingCall(to:callType:)(Swift::OpaquePointer to, SensitiveContentAnalysis::CallType callType)
{
  v31 = v2;
  v32 = v3;
  v5 = callType;
  v7 = sub_1AEAF8FEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AEAF92DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*v5 == 2)
  {
    type metadata accessor for SCAError(0);
    v34 = 20;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA417A4(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    v16 = v36;
    swift_willThrow();
  }

  else
  {
    v30 = v13;
    v17 = v4;
    static Entitlements.advisoryChecks.getter();
    Entitlements.Checks.checkSupportsAnalysisHistoryRead()();
    v16 = v18;
    if (!v18)
    {

      static SensitiveContentPolicy.blockingCurrent.getter(&v36);
      v34 = v36;
      v35 = v37;
      v33 = *sub_1AEA4F830();
      Optional<A>.check(for:)(&v33, &v38);
      *v15 = 2;
      (*(v12 + 104))(v15, *MEMORY[0x1E69E7F48], v30);
      v28 = swift_allocObject();
      v29 = v32;
      v28[2]._rawValue = v31;
      v28[3]._rawValue = v29;
      v28[4]._rawValue = v17;
      v28[5]._rawValue = to._rawValue;
      swift_unknownObjectRetain();

      sub_1AEAC03A4(v15, v28);
      (*(v12 + 8))(v15, v30);

      return;
    }
  }

  v19 = sub_1AEA4351C();
  v20 = v7;
  (*(v8 + 16))(v10, v19, v7);
  v21 = v16;
  v22 = sub_1AEAF8FCC();
  v23 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v16;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_1AEA3F000, v22, v23, "Failed to check analysis history for outgoing call: %@", v24, 0xCu);
    sub_1AEA41FAC(v25, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v25, -1, -1);
    MEMORY[0x1B270E620](v24, -1, -1);
  }

  (*(v8 + 8))(v10, v20);
  swift_willThrow();
}

uint64_t static SensitiveContentPolicy.blockingCurrent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED98D6C8 != -1)
  {
    swift_once();
  }

  v2 = v4;
  result = sub_1AEAFA47C();
  if (v4[8] == 1)
  {
    if (qword_1ED98D748 != -1)
    {
      swift_once();
    }

    sub_1AEAFA47C();
    v2 = &v5;
    PolicyCache.blockingCurrentPolicy.getter(&v5);
  }

  *a1 = *v2;
  *(a1 + 8) = 0;
  return result;
}

void PolicyCache.blockingCurrentPolicy.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AEAF92DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-v9];
  v11 = sub_1AEAF982C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;

  sub_1AEA9D794(0, 0, v10, &unk_1AEAFE6A0, v12);

  v13 = *(v2 + 32);
  *v7 = 3;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F48], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
  sub_1AEA50C8C(v7, v13);
  (*(v5 + 8))(v7, v4);
  v14 = v21;
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();
    v21 = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {

      if (qword_1ED98D6E8 != -1)
      {
        swift_once();
      }

      v16 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v16, qword_1ED98DDF8);
      v17 = sub_1AEAF8FCC();
      v18 = sub_1AEAF9A7C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1AEA3F000, v17, v18, "Timed out waiting for initial SensitiveContentPolicy. Returning .disabled...", v19, 2u);
        MEMORY[0x1B270E620](v19, -1, -1);
      }

      *a1 = 0;
    }

    else
    {

      *a1 = 0;
    }
  }

  else
  {
    *a1 = v21;
  }
}

uint64_t sub_1AEA50CDC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v24 = *(*v1 + 80);
  v2 = sub_1AEAF9C3C();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = sub_1AEAF934C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_1AEAF932C();
  sub_1AEAF933C();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_1AEAF9B7C();
  v15(v14, v8);
  if (sub_1AEAF92EC())
  {
    v16 = v23;
    sub_1AEAF9B0C();
    sub_1AEAF9B8C();
    v17 = v22;
    (*(v22 + 16))(v5, v7, v16);
    v18 = v24;
    v19 = *(v24 - 8);
    result = (*(v19 + 48))(v5, 1, v24);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v17 + 8))(v7, v16);
      return (*(v19 + 32))(v21, v5, v18);
    }
  }

  else
  {
    sub_1AEA97768();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1AEA50FF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AEA51008()
{
  swift_unknownObjectRelease();

  sub_1AEA4F1AC(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1AEA51054()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1AEA510BC()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA510FC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AEA5112C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA51164()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEA511AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA51200()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA51238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEA512CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEA5131C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA5135C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1AEA513A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA513DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AEA51414()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA5144C()
{
  v1 = sub_1AEAF8D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEA5152C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo21SCSensitivityAnalysisCs5Error_pGIegg_SbIeggd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AEA5157C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA515B4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEA51600()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8BB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1AEAF8CAC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEA51718()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA51758()
{
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1AEA44C1C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEA517AC()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA517E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA51828()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA51878()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA518C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA518F8()
{
  v1 = sub_1AEAF8D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEA519E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEA51A7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA51AB4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA51AEC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEA51BBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA51BF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEA51C4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA51C84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA51CD4()
{
  swift_unknownObjectRelease();

  sub_1AEA44C1C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_1AEA51D28()
{

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1AEA51D60()
{
  v1 = sub_1AEAF8FEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEA51E64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEA51EA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEA51EE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 88) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  else if (!*(v0 + 88))
  {
  }

  v5 = (v3 + 89) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1AEA52000()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA52044()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA5207C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEA521FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA52244()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA5227C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA522B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA522EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

uint64_t sub_1AEA5233C()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA52374()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEA523CC()
{
  swift_unknownObjectRelease();

  sub_1AEA4F1AC(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1AEA52430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA52468()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1AEA524C8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1AEA524DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AEAF8D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AEA5259C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AEAF8D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEA52658()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA52690()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEA526D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA5270C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA52754()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA5278C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEA527CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA52804()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v1 = sub_1AEAF97AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEA52914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9BB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEA529A8()
{
  MEMORY[0x1B270E710](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA529E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEA52A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEA52A54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1AEA52AA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AEA52ABC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA52ADC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1AEA53108(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = +[SCLog client];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1AEA3F000, v18, OS_LOG_TYPE_DEFAULT, "Exception fetching CommSafety configuration from ScreenTime: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1AEA530D4);
  }

  _Unwind_Resume(a1);
}

Class __getSTCommunicationClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A43970;
    v6 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ScreenTimeCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STCommunicationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationClientClass_block_invoke_cold_1();
  }

  getSTCommunicationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AEA54148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AEA552B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA555D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AEA55984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA55D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA56094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA564B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA56870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA56C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA57348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AEA5741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADServiceClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary();
  }
}

void MediaAnalysisServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A43B60;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMADImageSafetyClassificationRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  result = objc_getClass("MADImageSafetyClassificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADImageSafetyClassificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADImageSafetyClassificationRequestClass_block_invoke_cold_1();
    return __getMADVideoSafetyClassificationRequestClass_block_invoke(v3);
  }

  return result;
}

void __getMADVideoSafetyClassificationRequestClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVideoSafetyClassificationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVideoSafetyClassificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getMADVideoSafetyClassificationRequestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id SCAError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [v5 initWithDomain:@"com.apple.SensitiveContentAnalysis" code:a1 userInfo:v6];

  return v7;
}

id SCAErrorCausedBy(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = a2;
    v8 = [v6 alloc];
    v9 = *MEMORY[0x1E696AA08];
    v14[0] = *MEMORY[0x1E696A578];
    v14[1] = v9;
    v15[0] = v7;
    v15[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v11 = [v8 initWithDomain:@"com.apple.SensitiveContentAnalysis" code:a1 userInfo:v10];
  }

  else
  {
    v12 = a2;
    v11 = SCAError(a1, v12);
  }

  return v11;
}

void sub_1AEA58474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADVideoSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADVideoSessionClass_softClass;
  v7 = getMADVideoSessionClass_softClass;
  if (!getMADVideoSessionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADVideoSessionClass_block_invoke;
    v3[3] = &unk_1E7A43950;
    v3[4] = &v4;
    __getMADVideoSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AEA58554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADVideoSessionFramePropertiesClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMADVideoSessionFramePropertiesClass_softClass;
  v6 = getMADVideoSessionFramePropertiesClass_softClass;
  if (!getMADVideoSessionFramePropertiesClass_softClass)
  {
    MediaAnalysisServicesLibraryCore();
    v4[3] = objc_getClass("MADVideoSessionFrameProperties");
    getMADVideoSessionFramePropertiesClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1AEA58B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADVideoSessionTTRFrameClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMADVideoSessionTTRFrameClass_softClass;
  v6 = getMADVideoSessionTTRFrameClass_softClass;
  if (!getMADVideoSessionTTRFrameClass_softClass)
  {
    MediaAnalysisServicesLibraryCore();
    v4[3] = objc_getClass("MADVideoSessionTTRFrame");
    getMADVideoSessionTTRFrameClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1AEA58CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADVideoSessionTTROptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMADVideoSessionTTROptionsClass_softClass;
  v6 = getMADVideoSessionTTROptionsClass_softClass;
  if (!getMADVideoSessionTTROptionsClass_softClass)
  {
    MediaAnalysisServicesLibraryCore();
    v4[3] = objc_getClass("MADVideoSessionTTROptions");
    getMADVideoSessionTTROptionsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1AEA58DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADVideoSessionClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVideoSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVideoSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADVideoSessionClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary_0();
  }
}

void MediaAnalysisServicesLibrary_0()
{
  if (!MediaAnalysisServicesLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t MediaAnalysisServicesLibraryCore()
{
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_0)
  {
    MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return MediaAnalysisServicesLibraryCore_frameworkLibrary_0;
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMADVideoSessionSafetyRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_0();
  result = objc_getClass("MADVideoSessionSafetyRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVideoSessionSafetyRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADVideoSessionSafetyRequestClass_block_invoke_cold_1();
    return __getMADVideoSessionSafetyResultClass_block_invoke(v3);
  }

  return result;
}

Class __getMADVideoSessionSafetyResultClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_0();
  result = objc_getClass("MADVideoSessionSafetyResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVideoSessionSafetyResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADVideoSessionSafetyResultClass_block_invoke_cold_1();
    return __getMADVideoSessionFramePropertiesClass_block_invoke(v3);
  }

  return result;
}

Class __getMADVideoSessionFramePropertiesClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore();
  result = objc_getClass("MADVideoSessionFrameProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADVideoSessionFramePropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMADVideoSessionTTRFrameClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore();
  result = objc_getClass("MADVideoSessionTTRFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADVideoSessionTTRFrameClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMADVideoSessionTTROptionsClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore();
  result = objc_getClass("MADVideoSessionTTROptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADVideoSessionTTROptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SCIsVCPDecompressionSessionSetContentAnalyzer2Available()
{
  result = VideoProcessingLibraryCore();
  if (result)
  {
    return getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc() != 0;
  }

  return result;
}

uint64_t SCVCPDecompressionSessionSetContentAnalyzer(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_ptr;
  v12 = getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_ptr;
  if (!getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_ptr)
  {
    v5 = VideoProcessingLibrary();
    v10[3] = dlsym(v5, "VCPDecompressionSessionSetContentAnalyzer");
    getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v8 = SCVCPDecompressionSessionSetContentAnalyzer_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = v4(a1, v3);

  return v6;
}

uint64_t SCVCPDecompressionSessionSetContentAnalyzer2(uint64_t a1, void *a2)
{
  v3 = a2;
  VCPDecompressionSessionSetContentAnalyzer2SymbolLoc = getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc();
  if (VCPDecompressionSessionSetContentAnalyzer2SymbolLoc)
  {
    v5 = VCPDecompressionSessionSetContentAnalyzer2SymbolLoc(a1, v3);

    return v5;
  }

  else
  {
    SCVCPDecompressionSessionSetContentAnalyzer_cold_1();
    return VideoProcessingLibraryCore();
  }
}

uint64_t VideoProcessingLibraryCore()
{
  if (!VideoProcessingLibraryCore_frameworkLibrary)
  {
    VideoProcessingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return VideoProcessingLibraryCore_frameworkLibrary;
}

uint64_t getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_ptr;
  v6 = getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_ptr;
  if (!getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_ptr)
  {
    v1 = VideoProcessingLibrary();
    v4[3] = dlsym(v1, "VCPDecompressionSessionSetContentAnalyzer2");
    getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AEA598B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __VideoProcessingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPDecompressionSessionSetContentAnalyzer2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPDecompressionSessionSetContentAnalyzer2SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VideoProcessingLibrary()
{
  v0 = VideoProcessingLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPDecompressionSessionSetContentAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPDecompressionSessionSetContentAnalyzerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AEA59BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADServiceClass_softClass_0;
  v7 = getMADServiceClass_softClass_0;
  if (!getMADServiceClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADServiceClass_block_invoke_0;
    v3[3] = &unk_1E7A43950;
    v3[4] = &v4;
    __getMADServiceClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AEA59C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADServiceClass_block_invoke_0(uint64_t a1)
{
  MediaAnalysisServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADServiceClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary_1();
  }
}

void MediaAnalysisServicesLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A43C58;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getMADUserSafetyPolicyClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_1();
  result = objc_getClass("MADUserSafetyPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADUserSafetyPolicyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADUserSafetyPolicyClass_block_invoke_cold_1();
    return +[(SCLog *)v3];
  }

  return result;
}

__n128 SensitiveContent.description.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 SensitiveContent.init(analysis:description:)@<Q0>(_DWORD *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

void SensitiveContent.init(analysis:description:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  SCSensitivityAnalysis.analysis.getter(&v8);

  *a3 = v8;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

uint64_t sub_1AEA5A2A0()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA5A314()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA5A358()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x736973796C616E61;
  }
}

uint64_t sub_1AEA5A39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736973796C616E61 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AEA5A494(uint64_t a1)
{
  v2 = sub_1AEA5A9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEA5A4D0(uint64_t a1)
{
  v2 = sub_1AEA5A9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SensitiveContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = v9;
  v17 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEA5A9DC();
  sub_1AEAFA42C();
  LODWORD(v14) = v8;
  v18 = 0;
  sub_1AEA5AA30();
  sub_1AEAFA22C();
  if (!v2)
  {
    v14 = v13;
    v15 = v12;
    v16 = v17;
    v18 = 1;
    sub_1AEA5AA84();
    sub_1AEAFA1CC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SensitiveContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEA5A9DC();
  sub_1AEAFA41C();
  if (!v2)
  {
    v16 = 0;
    sub_1AEA5AAD8();
    sub_1AEAFA14C();
    v9 = v14;
    v10 = WORD1(v14);
    v16 = 1;
    sub_1AEA5AB2C();
    sub_1AEAFA0EC();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    v12 = v14;
    *a2 = v9;
    *(a2 + 2) = v10;
    *(a2 + 8) = v12;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s24SensitiveContentAnalysis0aB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  LODWORD(v12[0]) = *a1;
  LODWORD(v10[0]) = v5;
  if (!static SensitivityAnalysis.== infix(_:_:)(v12, v10))
  {
    return 0;
  }

  if (v4 == 255)
  {
    if (v8 != 255)
    {
      return 0;
    }
  }

  else
  {
    v12[0] = v2;
    v12[1] = v3;
    v13 = v4;
    if (v8 == 255)
    {
      return 0;
    }

    v10[0] = v6;
    v10[1] = v7;
    v11 = v8;
    sub_1AEA5AEA0();
    if ((sub_1AEAF957C() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AEA5A9DC()
{
  result = qword_1EB5E9E10[0];
  if (!qword_1EB5E9E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5E9E10);
  }

  return result;
}

unint64_t sub_1AEA5AA30()
{
  result = qword_1EB5E96C0;
  if (!qword_1EB5E96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96C0);
  }

  return result;
}

unint64_t sub_1AEA5AA84()
{
  result = qword_1EB5E88B0;
  if (!qword_1EB5E88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E88B0);
  }

  return result;
}

unint64_t sub_1AEA5AAD8()
{
  result = qword_1EB5E96B0;
  if (!qword_1EB5E96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96B0);
  }

  return result;
}

unint64_t sub_1AEA5AB2C()
{
  result = qword_1EB5E88C0;
  if (!qword_1EB5E88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E88C0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AEA5AB94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AEA5ABE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SensitiveContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AEA5AD9C()
{
  result = qword_1EB5EA020[0];
  if (!qword_1EB5EA020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EA020);
  }

  return result;
}

unint64_t sub_1AEA5ADF4()
{
  result = qword_1EB5EA130;
  if (!qword_1EB5EA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EA130);
  }

  return result;
}

unint64_t sub_1AEA5AE4C()
{
  result = qword_1EB5EA138[0];
  if (!qword_1EB5EA138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EA138);
  }

  return result;
}

unint64_t sub_1AEA5AEA0()
{
  result = qword_1EB5E88C8;
  if (!qword_1EB5E88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E88C8);
  }

  return result;
}

uint64_t sub_1AEA5AEF4()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DDC();

  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEAF943C();

  return v0;
}

uint64_t sub_1AEA5AFF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DDC();

  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEAF943C();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEA5B104()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DCC();
}

uint64_t type metadata accessor for SensitiveHandle()
{
  result = qword_1ED98B610;
  if (!qword_1ED98B610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AEA5B228()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEAF944C();
}

uint64_t sub_1AEA5B2FC()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DDC();

  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEA5AAD8();
  sub_1AEAF943C();
}