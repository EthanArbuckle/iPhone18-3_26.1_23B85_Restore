uint64_t sub_1AEA5B404@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DDC();

  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEA5AAD8();
  sub_1AEAF943C();

  *a1 = v3;
  return result;
}

uint64_t sub_1AEA5B514()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2E0, type metadata accessor for SensitiveHandle);
  sub_1AEAF8DCC();
}

uint64_t sub_1AEA5B5E4()
{
  swift_getKeyPath();
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  sub_1AEA5AA30();
  sub_1AEAF944C();
}

uint64_t sub_1AEA5B6B4()
{
  v0 = swift_allocObject();
  sub_1AEA5B70C();
  return v0;
}

uint64_t *sub_1AEA5B70C()
{
  v1 = v0;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88D0);
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  v0[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1AEAF93FC();
  sub_1AEAF8E0C();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1AEAF935C();

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1AEA5AA30();
  sub_1AEAF935C();

  return v0;
}

uint64_t sub_1AEA5B924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AEA5B988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AEA5B924(v3 + 16, a2);
}

uint64_t sub_1AEA5B9D4(uint64_t a1, uint64_t *a2)
{
  sub_1AEA5B924(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 16);
  sub_1AEA49728(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t SensitiveHandle.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  sub_1AEA49728(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*SensitiveHandle.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1AEA5B924(v1 + 16, v4);
  return sub_1AEA5BB20;
}

uint64_t *SensitiveHandle.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88D0);
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_1AEAF93FC();
  sub_1AEAF8E0C();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  sub_1AEA49728(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t *SensitiveHandle.init(backingData:)(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88D0);
  sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_1AEAF93FC();
  sub_1AEAF8E0C();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 2));
  sub_1AEA49728(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t SensitiveHandle.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis15SensitiveHandle___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SensitiveHandle.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis15SensitiveHandle___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t SensitiveHandle.hashValue.getter()
{
  sub_1AEAFA3BC();
  sub_1AEA5CC40(&qword_1ED98A2D0, type metadata accessor for SensitiveHandle);
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

uint64_t *sub_1AEA5BF64(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88D0);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_1AEAF93FC();
  sub_1AEAF8E0C();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  sub_1AEA49728(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_1AEA5C09C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  sub_1AEA49728(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*sub_1AEA5C0F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1AEA5B924(v1 + 16, v4);
  return sub_1AEA5CE54;
}

void sub_1AEA5C184(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1AEA5B924(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    sub_1AEA49728((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    sub_1AEA49728(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1AEA5C240()
{
  sub_1AEAFA3BC();
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA5C318()
{
  sub_1AEAFA3BC();
  sub_1AEAF954C();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA5C3EC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1AEA5CC40(&qword_1ED98A2D8, type metadata accessor for SensitiveHandle);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1AEA5C46C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1AEA5C598(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1AEAF94BC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1AEA5C598(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88E0);
  v10 = *(sub_1AEAF94BC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1AEAF94BC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s24SensitiveContentAnalysis0A6HandleC14schemaMetadataSay9SwiftData6SchemaC08PropertyF0VGvgZ_0()
{
  v17 = sub_1AEAF94BC();
  v0 = *(v17 - 8);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88E0);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEAFC460;
  swift_getKeyPath();
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1AEAF94AC();
  swift_getKeyPath();
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1AEAF94AC();
  swift_getKeyPath();
  v21 = 0u;
  v22 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88E8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AEAFC470;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AEAFC480;
  *(v8 + 32) = swift_getKeyPath();
  *(v7 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E88F0);
  swift_allocObject();
  v10 = sub_1AEAF94CC();
  *(&v19 + 1) = v9;
  v20 = sub_1AEA5CD78();
  *&v18 = v10;
  sub_1AEAF94AC();
  v11 = sub_1AEA5C598(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AEA5C598(v12 > 1, v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = v11;
  (*(v1 + 32))(&v11[v5 + v13 * v4], v3, v17);
  *&v18 = v6;
  sub_1AEA5C46C(v14);
  return v18;
}

uint64_t sub_1AEA5CC40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AEA5CC90()
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

unint64_t sub_1AEA5CD78()
{
  result = qword_1ED989B18;
  if (!qword_1ED989B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E88F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989B18);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AEA5CE58()
{
  result = os_variant_has_internal_content();
  byte_1ED98DD60 = result;
  return result;
}

char *sub_1AEA5CE80()
{
  if (qword_1ED98AC68 != -1)
  {
    swift_once();
  }

  return &byte_1ED98DD60;
}

uint64_t sub_1AEA5CED0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AEA639C8;
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

uint64_t sub_1AEA5CF70(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AEA50FF8(v3);
  return sub_1AEA438E0(v8);
}

uint64_t VideoStreamAnalyzer.analysisChangedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1AEA50FF8(*v1);
  return v2;
}

uint64_t VideoStreamAnalyzer.analysisChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AEA438E0(v6);
}

uint64_t sub_1AEA5D1B0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  return sub_1AEA5D204(v3 + 144, a1);
}

uint64_t sub_1AEA5D260()
{
  v1 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_1AEA5D2B8()
{
  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
  swift_beginAccess();
  v3[1] = *(v0 + v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
  Atomic.wrappedValue.getter(v3);
  return v3[0];
}

void sub_1AEA5D324(void *a1)
{
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
  Atomic.wrappedValue.getter(&v4);
  v3 = v4;
  v4 = a1;

  sub_1AEA5D49C(a1);
  Atomic.wrappedValue.setter(&v4, v2);

  if (v3 >= 3)
  {
    swift_beginAccess();

    CoreAnalyticsManager.aggregateWithStreamStats(_:_:)();
    sub_1AEA5D4AC(a1);
    sub_1AEA5D4AC(v3);
  }

  else
  {
    sub_1AEA5D4AC(v3);
    sub_1AEA5D4AC(a1);
  }
}

id sub_1AEA5D49C(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1AEA5D4AC(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t VideoStreamAnalyzer.analysisResult.getter()
{
  v2[2] = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

void sub_1AEA5D518(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(*a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.getter(&v4);
  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_1AEA5D584(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v8 = *(*a2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult);
  v6 = v2;
  v7 = v3;

  sub_1AEA63974(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.setter(&v6, v4);
}

unint64_t sub_1AEA5D60C()
{
  v4 = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__streamOrientation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8940);
  Atomic.wrappedValue.getter(&v2);
  return v2 | (v3 << 32);
}

char *sub_1AEA5D678(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1AEA62748(a1, a2);
  sub_1AEA5D4AC(a2);
  return v6;
}

uint64_t sub_1AEA5D6CC()
{
  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1AEA5D740(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1AEA5EB44(a1, a2 & 1);
  v13 = v12;
  v14 = v12 & 1;
  if (sub_1AEAB1BE4(v11, v12 & 1))
  {
    v32 = *&v4[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult];
    MEMORY[0x1EEE9AC00](v32);
    *(&v31 - 2) = v11;
    *(&v31 - 8) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
    Atomic.withLock<A>(_:)();

    if (v31)
    {
      v32 = v11;
      v33 = v13 & 1;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
      Result.failure.getter(v15, &v31);
      v16 = v31;
      if (!v31)
      {
        goto LABEL_8;
      }

      if (qword_1EB5EA170 != -1)
      {
        swift_once();
      }

      v17 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v17, qword_1EB5F5BB0);
      v18 = v16;
      v19 = sub_1AEAF8FCC();
      v20 = sub_1AEAF9A9C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1AEA3F000, v19, v20, "Analysis failed with error: %@", v21, 0xCu);
        sub_1AEA41FAC(v22, &unk_1EB5E9C00);
        MEMORY[0x1B270E620](v22, -1, -1);
        MEMORY[0x1B270E620](v21, -1, -1);

LABEL_8:
        if (!a3)
        {
          goto LABEL_15;
        }

LABEL_14:
        v26 = sub_1AEAF982C();
        (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
        sub_1AEAF97FC();
        v27 = v4;
        sub_1AEA62CA0(v11);
        v28 = sub_1AEAF97EC();
        v29 = swift_allocObject();
        v30 = MEMORY[0x1E69E85E0];
        *(v29 + 16) = v28;
        *(v29 + 24) = v30;
        *(v29 + 32) = a3;
        *(v29 + 40) = v27;
        *(v29 + 48) = v11;
        *(v29 + 56) = v13 & 1;
        sub_1AEA5E2A0(0, 0, v10, &unk_1AEAFC798, v29);

        if ((a3 & 0x10) != 0)
        {
          sub_1AEA5D324(2);
          v25 = v11;
          goto LABEL_12;
        }

        goto LABEL_15;
      }

      if (a3)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    v25 = v11;
    goto LABEL_12;
  }

  v25 = v11;

LABEL_12:
  sub_1AEA4F1AC(v25);
}

uint64_t sub_1AEA5DB30()
{
  if (qword_1EB5EA170 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();

  return __swift_project_value_buffer(v0, qword_1EB5F5BB0);
}

id VideoStreamAnalyzer.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v33 - v3;
  v41 = sub_1AEAF8FEC();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_fullyInitialized] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
    swift_beginAccess();
    sub_1AEA5D154(v7, v45);
    v8 = v45[3];
    v9 = v45[4];
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E55;
    if (v45[0] == 1)
    {
      v11 = 0x6E696F6774756F2ELL;
      v10 = 0xE900000000000067;
    }

    if (v45[0] == 2)
    {
      v12 = 0x6E696D6F636E692ELL;
    }

    else
    {
      v12 = v11;
    }

    v35 = v12;
    if (v45[0] == 2)
    {
      v13 = 0xE900000000000067;
    }

    else
    {
      v13 = v10;
    }

    v37 = sub_1AEA71D28();
    v14 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
    swift_beginAccess();
    v43[0] = *&v1[v14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
    Atomic.wrappedValue.getter(v44);
    v38 = v7;
    v39 = v8;
    if (v44[0] >= 3)
    {
      v36 = v6;
      v15 = v4;
      v16 = v44[0];

      CoreAnalyticsManager.aggregateWithStreamStats(_:_:)();
      v17 = v16;
      v4 = v15;
      v6 = v36;
      sub_1AEA5D4AC(v17);
    }

    else
    {
      sub_1AEA5D4AC(v44[0]);
    }

    v18 = sub_1AEA65424();
    (*(v4 + 16))(v6, v18, v41);

    v19 = sub_1AEAF8FCC();
    v20 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v24 = v13;
      v34 = v4;
      v25 = v23;
      v43[0] = v23;
      *v22 = 136315394;
      v26 = v39;
      *(v22 + 4) = sub_1AEA45C14(v39, v36, v43);
      *(v22 + 12) = 2080;
      v27 = sub_1AEA45C14(v35, v24, v43);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1AEA3F000, v19, v20, "End analyzer: %s (%s)", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v25, -1, -1);
      v28 = v22;
      v9 = v36;
      MEMORY[0x1B270E620](v28, -1, -1);

      (*(v34 + 8))(v6, v41);
    }

    else
    {

      (*(v4 + 8))(v6, v41);
      v26 = v39;
    }

    v29 = sub_1AEAF982C();
    v30 = v40;
    (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
    sub_1AEA5D204(v38 + 144, v43);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_1AEA62D5C(v43, v31 + 32);
    *(v31 + 96) = v26;
    *(v31 + 104) = v9;
    *(v31 + 112) = v37;
    sub_1AEA5E2A0(0, 0, v30, &unk_1AEAFC7B0, v31);

    sub_1AEA62E64(v45);
  }

  v46.receiver = v1;
  v46.super_class = ObjectType;
  return objc_msgSendSuper2(&v46, sel_dealloc);
}

uint64_t sub_1AEA5E09C(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x6E696F6774756F2ELL;
  }

  if (a1 == 2)
  {
    return 0x6E696D6F636E692ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AEA5E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1AEA5E1AC;

  return sub_1AEA722DC(a5, a6, a7);
}

uint64_t sub_1AEA5E1AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AEA5E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      sub_1AEA41FAC(a3, &qword_1EB5E8F30);

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

  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
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

void VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(uint64_t a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4, char a5, __int128 *a6)
{
  v7 = v6;
  v13 = a6[1];
  v32 = *a6;
  v33 = v13;
  v34[0] = a6[2];
  *(v34 + 9) = *(a6 + 41);
  v14 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
  swift_beginAccess();
  *&v28 = *(v7 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
  Atomic.wrappedValue.getter(v31);
  if (!v31[0])
  {
LABEL_7:
    v21 = *(v7 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_sampleTimer);
    v22 = (v7 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state);
    swift_beginAccess();
    v24 = *v22;
    v23 = (v22 + 18);
    if (v24 == 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    type metadata accessor for VideoStreamAnalyzer.Sampler();
    sub_1AEA5D204(v23, &v28);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_1AEAB4CA0(v21, v25, &v28, sub_1AEA62EB8, v26);
    v15 = v27;
    sub_1AEA5D324(v27);
    goto LABEL_11;
  }

  if (v31[0] == 1)
  {
    v16 = v7 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
    swift_beginAccess();
    sub_1AEA5D204(v16 + 144, &v28);
    Strong = swift_weakLoadStrong();
    sub_1AEA62F28(&v28);
    if (Strong)
    {
      v19 = *(v16 + 24);
      v18 = *(v16 + 32);
      v20 = *(*Strong + 344);

      v20(0, v19, v18);
    }

    goto LABEL_7;
  }

  if (v31[0] == 2)
  {
    return;
  }

  v15 = v31[0];
LABEL_11:
  v28 = v32;
  v29 = v33;
  v30[0] = v34[0];
  *(v30 + 9) = *(v34 + 9);
  sub_1AEA8D754(&v28);
  v28 = v32;
  v29 = v33;
  v30[0] = v34[0];
  *(v30 + 9) = *(v34 + 9);
  sub_1AEAB5274(a1, a2, a3, a4, a5 & 1, &v28);
}

BOOL sub_1AEA5E9D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1AEA5EA00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1AEA5EA2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1AEA5EB04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1AEA639F8(a1);

  *a2 = v3;
  return result;
}

id sub_1AEA5EB44(id a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();
    v30 = v2;
    v4 = v2;
    type metadata accessor for SCAError(0);
    if (swift_dynamicCast())
    {
      sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);
      sub_1AEAF8BFC();
      if (v28 == 100)
      {
        sub_1AEA4F1AC(v2);
        v5 = sub_1AEADCB08();
        if (!v5)
        {
          goto LABEL_24;
        }

        v6 = v5;
        v7 = [v5 code];

        if (v7 != -18)
        {
          goto LABEL_24;
        }

        v8 = sub_1AEADCB08();
        if (v8)
        {
          v9 = v8;
          v10 = [v8 domain];

          v11 = sub_1AEAF95BC();
          v13 = v12;

          v14 = sub_1AEAF95BC();
          if (v13)
          {
            if (v11 == v14 && v13 == v15)
            {

LABEL_28:
              sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
              sub_1AEAF8C3C();

              v2 = v29;
              goto LABEL_21;
            }

            v27 = sub_1AEAFA2BC();

            if (v27)
            {
              goto LABEL_28;
            }

LABEL_24:

            v25 = v2;
            v24 = v2;
            goto LABEL_25;
          }
        }

        else
        {
          sub_1AEAF95BC();
        }

        goto LABEL_24;
      }
    }

    v30 = v2;
    v17 = v2;
    sub_1AEA62F7C();
    if (!swift_dynamicCast())
    {
LABEL_21:
      v24 = v30;
LABEL_25:

      return v2;
    }

    if ([v29 code] == -18)
    {
      v18 = [v29 domain];
      v19 = sub_1AEAF95BC();
      v21 = v20;

      if (v19 == sub_1AEAF95BC() && v21 == v22)
      {

LABEL_19:
        sub_1AEA4F1AC(v2);
        v2 = sub_1AEADC828(20, -18);
        goto LABEL_20;
      }

      v23 = sub_1AEAFA2BC();

      if (v23)
      {
        goto LABEL_19;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v16 = a1;
  return v2;
}

uint64_t sub_1AEA5EED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 172) = a7;
  *(v7 + 144) = a5;
  *(v7 + 152) = a6;
  *(v7 + 136) = a4;
  sub_1AEAF97FC();
  *(v7 + 160) = sub_1AEAF97EC();
  v9 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA5EF78, v9, v8);
}

uint64_t sub_1AEA5EF78()
{
  v60 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 172);
    v3 = *(v0 + 152);
    *(v0 + 16) = v3;
    v4 = v2 & 1;
    *(v0 + 24) = v2 & 1;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
    Result.success.getter(v5, v0 + 104);
    v6 = *(v0 + 104);
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    Result.failure.getter(v5, v0 + 128);
    v7 = *(v0 + 128);
    sub_1AEA5F588();
  }

  v8 = *(v0 + 136);
  if ((v8 & 2) != 0)
  {
    v9 = *(v0 + 172);
    *(v0 + 80) = *(v0 + 152);
    *(v0 + 88) = v9 & 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
    Result.success.getter(v10, v0 + 128);
    v11 = *(v0 + 128);
    if (v11)
    {
      v12 = *(v0 + 144);
      type metadata accessor for SCSensitivityAnalysis(0);
      *(v0 + 16) = MEMORY[0x1E69E7CC0];
      sub_1AEA631F4();
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8988);
      sub_1AEA4A324(&qword_1EB5E8990, &qword_1EB5E8988);
      sub_1AEAF9D5C();
      v59 = *(v0 + 104);
      v14 = *sub_1AEAD9834();
      SCSensitivityAnalysis.analysis.getter(v56);
      v15 = WORD1(v56[0]);
      *(v0 + 168) = v14;
      sub_1AEA63248();
      sub_1AEAF965C();
      sub_1AEA6329C();
      sub_1AEAFA45C();
      *(v0 + 170) = v15;
      sub_1AEA632F0();
      sub_1AEAF9D3C();
      LOWORD(v56[0]) = *(v0 + 16);
      SensitivityAnalysis.init(harmsDetected:flags:)(&v59, v56, &v58);
      LODWORD(v56[0]) = v58;
      v16 = SCSensitivityAnalysis.init(analysis:)(v56);
      v17 = v12 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
      swift_beginAccess();
      sub_1AEA5D204(v17 + 144, v0 + 16);
      Strong = swift_weakLoadStrong();
      sub_1AEA62F28(v0 + 16);
      if (Strong)
      {
        v19 = *(*Strong + 224);
        v20 = v16;
        v19(v16, 0);
      }

      v21 = sub_1AEA5FF0C();
      v22 = v21;
      if (v21 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AEAF9FFC())
      {
        v24 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1B270D3B0](v24, v22);
          }

          else
          {
            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          sub_1AEA5D740(v16, 0, 9);

          ++v24;
          if (v27 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:
    }

    v8 = *(v0 + 136);
  }

  if ((v8 & 4) != 0)
  {
    v28 = *(v0 + 144) + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
    swift_beginAccess();
    v29 = *(v28 + 88);
    if (v29 != 255)
    {
      v30 = *(v0 + 152);
      v32 = *(v28 + 72);
      v31 = *(v28 + 80);
      v33 = *(v28 + 56);
      v34 = *(v28 + 64);
      v55 = *(v28 + 48);
      v56[0] = *(v28 + 40);
      v53 = v33;
      v54 = v56[0];
      v35 = *(v28 + 176);
      v52 = *(v0 + 172);
      v56[1] = v55;
      v56[2] = v33;
      v56[3] = v34;
      v56[4] = v32;
      v56[5] = v31;
      v57 = v29;
      v36 = *(v28 + 24);
      v37 = *(v28 + 32);
      v38 = swift_allocObject();
      *(v38 + 16) = v30;
      *(v38 + 24) = v52 & 1;
      *(v38 + 32) = v36;
      *(v38 + 40) = v37;
      v51 = *((*MEMORY[0x1E69E7D40] & *v35) + 0x110);
      sub_1AEA63350(v54, v55, v53, v34, v32, v31, v29);
      v39 = v35;

      sub_1AEA62CA0(v30);
      v51(v56, sub_1AEA63D64, v38);

      sub_1AEA63364(v54, v55, v53, v34, v32, v31, v29);
    }
  }

  if ((*(v0 + 136) & 8) != 0)
  {
    v40 = *(v0 + 152);
    v41 = (*(v0 + 144) + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state);
    v42 = *(v0 + 172);
    swift_beginAccess();
    v43 = v41[22];
    v45 = v41[3];
    v44 = v41[4];
    v46 = swift_allocObject();
    *(v46 + 16) = v40;
    *(v46 + 24) = v42 & 1;
    *(v46 + 32) = v45;
    *(v46 + 40) = v44;
    v47 = *((*MEMORY[0x1E69E7D40] & *v43) + 0x118);
    sub_1AEA62CA0(v40);
    v48 = v43;

    v47(sub_1AEA63D60, v46);
  }

  v49 = *(v0 + 8);

  return v49();
}

void sub_1AEA5F588()
{
  v1 = (v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
    swift_beginAccess();
    v4 = sub_1AEA5D204(v3 + 144, v9);
    MEMORY[0x1EEE9AC00](v4);

    sub_1AEA74B00();
    sub_1AEA438E0(v2);
    sub_1AEA62F28(v9);
  }

  else
  {
    if (qword_1EB5EA170 != -1)
    {
      swift_once();
    }

    v5 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v5, qword_1EB5F5BB0);
    v6 = sub_1AEAF8FCC();
    v7 = sub_1AEAF9A8C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AEA3F000, v6, v7, "nil change handler", v8, 2u);
      MEMORY[0x1B270E620](v8, -1, -1);
    }
  }
}

uint64_t sub_1AEA5F75C()
{
  v1 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  sub_1AEA5D204(v1 + 144, v7);
  Strong = swift_weakLoadStrong();
  result = sub_1AEA62F28(v7);
  if (Strong)
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    v6 = *(*Strong + 344);

    v6(1, v5, v4);
  }

  return result;
}

id VideoStreamAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AEA5F8B8()
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

char *VideoStreamAnalyzer.__allocating_init(uuid:participantUUID:streamDirection:timerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v14 = *a6;
  v15 = *(a6 + 8);
  v16 = *(a6 + 16);
  v17 = *(a6 + 24);
  v18 = *(a6 + 32);
  v19 = *(a6 + 40);
  memset(v29, 0, sizeof(v29));
  v30 = -1;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  sub_1AEA71F84(v22);
  sub_1AEA71F88(a1, a2, a3, a4, v29, a5, v22, &v23, v31);
  if (!v7)
  {
    sub_1AEA5D154(v31, v22);
    v20 = objc_allocWithZone(v6);
    v8 = sub_1AEA62748(v22, 0);
    sub_1AEA62E64(v31);
  }

  return v8;
}

char *VideoStreamAnalyzer.__allocating_init(participantUUID:auditToken:streamDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  static Entitlements.Source.auditToken(_:)(a3, a4, a5, a6, v30);
  v28[0] = v30[0];
  v28[1] = v30[1];
  v28[2] = v30[2];
  v29 = v31;
  SampleTimer.Config.init()(&v25);
  value = v25.baseInterval.value;
  is_nil = v25.baseInterval.is_nil;
  v21 = *(&v25.followUpFrameInterval.value + 7);
  v22 = BYTE6(v25.continueStreamTimeout.value);
  v23 = v26;
  v24 = v27;
  v13 = sub_1AEA71EA8();
  v15 = v14;
  sub_1AEA71F84(v18);
  sub_1AEA71F88(v13, v15, a1, a2, v28, a7, v18, &value, v32);
  if (!v8)
  {
    sub_1AEA5D154(v32, v18);
    v16 = objc_allocWithZone(v7);
    v9 = sub_1AEA62748(v18, 0);
    sub_1AEA62E64(v32);
  }

  return v9;
}

objc_class *VideoStreamAnalyzer.__allocating_init(analysisOfPreviousCall:participantUUID:auditToken:streamDirection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static Entitlements.Source.auditToken(_:)(a4, a5, a6, a7, v32);
  v30[0] = v32[0];
  v30[1] = v32[1];
  v30[2] = v32[2];
  v31 = v33;
  SampleTimer.Config.init()(&v27);
  value = v27.baseInterval.value;
  is_nil = v27.baseInterval.is_nil;
  v23 = *(&v27.followUpFrameInterval.value + 7);
  v24 = BYTE6(v27.continueStreamTimeout.value);
  v25 = v28;
  v26 = v29;
  v14 = sub_1AEA71EA8();
  v16 = v15;
  sub_1AEA71F84(v20);
  sub_1AEA71F88(v14, v16, a2, a3, v30, a8, v20, &value, v34);
  if (v9)
  {
  }

  else
  {
    sub_1AEA5D154(v34, v20);
    v17 = objc_allocWithZone(v8);
    v8 = sub_1AEA62748(v20, 0);
    v18 = a1;
    sub_1AEA5D740(a1, 0, 31);

    sub_1AEA62E64(v34);
  }

  return v8;
}

objc_class *VideoStreamAnalyzer.__allocating_init(analysisOfPreviousCall:participantUUID:streamDirection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v26, 0, sizeof(v26));
  v27 = -1;
  SampleTimer.Config.init()(&v23);
  value = v23.baseInterval.value;
  is_nil = v23.baseInterval.is_nil;
  v19 = *(&v23.followUpFrameInterval.value + 7);
  v20 = BYTE6(v23.continueStreamTimeout.value);
  v21 = v24;
  v22 = v25;
  v10 = sub_1AEA71EA8();
  v12 = v11;
  sub_1AEA71F84(v16);
  sub_1AEA71F88(v10, v12, a2, a3, v26, a4, v16, &value, v28);
  if (v5)
  {
  }

  else
  {
    sub_1AEA5D154(v28, v16);
    v13 = objc_allocWithZone(v4);
    v4 = sub_1AEA62748(v16, 0);
    v14 = a1;
    sub_1AEA5D740(a1, 0, 31);

    sub_1AEA62E64(v28);
  }

  return v4;
}

uint64_t sub_1AEA5FEA4(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AEA5FEB4()
{
  v1 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  v2 = *(v1 + 8);

  return v2;
}

uint64_t sub_1AEA5FF0C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  sub_1AEA5D204(v2 + 144, v13);
  Strong = swift_weakLoadStrong();
  v4 = sub_1AEA62F28(v13);
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (*(*Strong + 264))(v4);

  v12 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AEAF9FFC())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B270D3B0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 == v1)
      {
      }

      else
      {
        sub_1AEAF9EBC();
        sub_1AEAF9EFC();
        sub_1AEAF9F0C();
        sub_1AEAF9ECC();
      }

      ++v7;
      if (v9 == i)
      {
        v10 = v12;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v10;
}

void sub_1AEA600D4(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v17[1] = a2;
  v9 = a3 & 1;
  v18 = a3 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
  Result.success.getter(v10, v17);
  v11 = v17[0];
  v15[1] = a2;
  v16 = v9;
  Result.failure.getter(v10, v15);
  v12 = v15[0];
  if (v15[0])
  {
    v13 = sub_1AEAF8C4C();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1AEAF958C();
  [a1 *a6];
}

uint64_t sub_1AEA601D0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v7 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
  swift_beginAccess();
  v19[0] = *(v2 + v7);
  v17 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
  Atomic.withLock<A>(_:)();

  if (v18 == 1)
  {
    v9 = v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
    swift_beginAccess();
    sub_1AEA5D204(v9 + 144, v19);
    Strong = swift_weakLoadStrong();
    sub_1AEA62F28(v19);
    if (Strong)
    {
      (*(*Strong + 224))(0, 255);
    }

    v11 = sub_1AEAF982C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1AEAF97FC();

    v13 = sub_1AEAF97EC();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    *(v14 + 32) = v12;
    *(v14 + 40) = a1 & 1;

    sub_1AEA5E2A0(0, 0, v6, &unk_1AEAFC7C8, v14);
  }

  return result;
}

uint64_t sub_1AEA60440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 64) = a4;
  sub_1AEAF97FC();
  *(v5 + 72) = sub_1AEAF97EC();
  v7 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA604DC, v7, v6);
}

uint64_t sub_1AEA604DC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
    Atomic.wrappedValue.getter(v0 + 40);
    v3 = *(v0 + 48);
    if (v3 == 255)
    {
      v6 = 0;
    }

    else
    {
      v4 = *(v0 + 40);
      *(v0 + 40) = v4;
      *(v0 + 48) = v3 & 1;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
      Result.success.getter(v5, v0 + 56);
      sub_1AEA63A30(v4, v3);
      v6 = *(v0 + 56);
    }

    v7 = *(v0 + 49);
    sub_1AEA5F588();

    if (v7 == 1)
    {
      sub_1AEA60620();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

char *sub_1AEA60620()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v53 - v5;
  v6 = sub_1AEA5FF0C();
  v7 = v6;
  v8 = (v6 >> 62);
  if (v6 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AEAF9FFC())
  {
    v10 = MEMORY[0x1E69E7CC0];
    v58 = v8;
    if (!i)
    {
      goto LABEL_13;
    }

    v64[0] = MEMORY[0x1E69E7CC0];
    result = sub_1AEA61E58(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v57 = v1;
    v12 = 0;
    v10 = v64[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B270D3B0](v12, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = &v13[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
      swift_beginAccess();
      v17 = *(v15 + 3);
      v16 = *(v15 + 4);

      v64[0] = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AEA61E58((v18 > 1), v19 + 1, 1);
        v10 = v64[0];
      }

      ++v12;
      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
    }

    while (i != v12);
    v1 = v57;
LABEL_13:
    v21 = v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
    swift_beginAccess();
    v23 = *(v21 + 24);
    v22 = *(v21 + 32);
    v8 = qword_1EB5EA170;

    if (v8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v24, qword_1EB5F5BB0);

    v25 = sub_1AEAF8FCC();
    v26 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64[0] = v28;
      *v27 = 136315394;
      v29 = sub_1AEA45C14(v23, v22, v64);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = MEMORY[0x1B270CC60](v10, MEMORY[0x1E69E6158]);
      v1 = v31;

      v8 = sub_1AEA45C14(v30, v1, v64);

      *(v27 + 14) = v8;
      _os_log_impl(&dword_1AEA3F000, v25, v26, "%s is continuing siblings' streams: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v28, -1, -1);
      MEMORY[0x1B270E620](v27, -1, -1);
    }

    else
    {
    }

    if (v58)
    {
      v32 = sub_1AEAF9FFC();
      if (!v32)
      {
      }
    }

    else
    {
      v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
      }
    }

    v33 = 0;
    v34 = 0;
    v35 = v7 & 0xC000000000000001;
    v58 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v32;
    v54 = v7 & 0xC000000000000001;
    v53 = v7;
    while (1)
    {
      if (v35)
      {
        v36 = MEMORY[0x1B270D3B0](v33, v7);
      }

      else
      {
        if (v33 >= *(v58 + 16))
        {
          goto LABEL_44;
        }

        v36 = *(v7 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v39 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
      swift_beginAccess();
      v1 = &v53;
      v64[0] = *&v37[v39];
      MEMORY[0x1EEE9AC00](v64[0]);
      v8 = &v53 - 4;
      *(&v53 - 2) = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8910);
      Atomic.withLock<A>(_:)();

      if (v65 == 1)
      {
        v57 = v34;
        v40 = &v37[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
        swift_beginAccess();
        sub_1AEA5D204((v40 + 144), v64);
        Strong = swift_weakLoadStrong();
        sub_1AEA62F28(v64);
        if (Strong)
        {
          (*(*Strong + 224))(0, 255);
        }

        v42 = sub_1AEAF982C();
        v43 = *(v42 - 8);
        v44 = v59;
        (*(v43 + 56))(v59, 1, 1, v42);
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1AEAF97FC();

        v46 = sub_1AEAF97EC();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = MEMORY[0x1E69E85E0];
        *(v47 + 32) = v45;
        *(v47 + 40) = 0;

        v48 = v56;
        sub_1AEA63BD4(v44, v56, &qword_1EB5E8F30);
        LODWORD(v45) = (*(v43 + 48))(v48, 1, v42);

        if (v45 == 1)
        {
          sub_1AEA41FAC(v48, &qword_1EB5E8F30);
        }

        else
        {
          sub_1AEAF981C();
          (*(v43 + 8))(v48, v42);
        }

        v49 = *(v47 + 16);
        swift_unknownObjectRetain();

        v7 = v53;
        if (v49)
        {
          swift_getObjectType();
          v50 = sub_1AEAF977C();
          v1 = v51;
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = 0;
          v1 = 0;
        }

        v34 = v57;
        sub_1AEA41FAC(v59, &qword_1EB5E8F30);
        v52 = swift_allocObject();
        *(v52 + 16) = &unk_1AEAFCA40;
        *(v52 + 24) = v47;
        if (v1 | v50)
        {
          v61 = 0;
          v60 = 0;
          v62 = v50;
          v63 = v1;
        }

        v32 = v55;
        v8 = swift_task_create();

        v35 = v54;
      }

      else
      {
      }

      ++v33;
      if (v38 == v32)
      {
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  __break(1u);
  return result;
}

void sub_1AEA60E68(id *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = a1;
  v34 = &v33 - v6;
  sub_1AEA5D4AC(*a1);
  v7 = &a2[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  sub_1AEA5D154(v7, &v41);

  LOBYTE(v7) = sub_1AEA71D28();
  sub_1AEA62E64(&v41);
  v35 = v8;
  if (v7)
  {
    type metadata accessor for SampleTimer();
    if (*(sub_1AEAF3FC8() + 16))
    {
      sub_1AEA61F84(v8, v9, sub_1AEA61BA0);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult;
  v37 = *&a2[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.getter(&v41);
  v14 = v42;
  v15 = v11;
  if (v42 != 255)
  {
    v16 = v41;
    v17 = sub_1AEA75E44(v41, v42 & 1);
    sub_1AEA63A30(v16, v14);
    LOBYTE(v41) = v17;
    LOBYTE(v37) = 0;
    sub_1AEA63A88();
    sub_1AEA41684(&qword_1EB5E89E8, sub_1AEA63A88);
    v15 = v11 | sub_1AEAF957C();
  }

  v40 = *&a2[v12];
  v18 = v40;

  Atomic.wrappedValue.getter(&v41);
  v19 = sub_1AEA75F30();
  v39 = v18;
  v37 = v41;
  v38 = v42;
  Atomic.wrappedValue.setter(&v37, v13);

  v20 = v11 | v19;
  if ((v11 | v19))
  {
    v21 = v35;
    if (v15)
    {
      SampleTimer.timeOutDetectionForStreamContinuation()();
      type metadata accessor for SampleTimer();

      v22 = sub_1AEAF405C(&v41);
      v20 = 1;
      sub_1AEA61330(0, 1, v21, v9);
      (v22)(&v41, 0);
    }
  }

  else
  {
    v21 = v35;
  }

  *v33 = 0;
  v23 = sub_1AEAF982C();
  v24 = v34;
  (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a2;
  v25[5] = v21;
  v25[6] = v9;

  v26 = a2;
  sub_1AEA5E2A0(0, 0, v24, &unk_1AEAFCA60, v25);

  if (qword_1EB5EA170 != -1)
  {
    swift_once();
  }

  v27 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v27, qword_1EB5F5BB0);

  v28 = sub_1AEAF8FCC();
  v29 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    v32 = sub_1AEA45C14(v21, v9, &v41);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1AEA3F000, v28, v29, "Stream %s continued.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1B270E620](v31, -1, -1);
    MEMORY[0x1B270E620](v30, -1, -1);
  }

  else
  {
  }

  *v36 = v20 & 1;
}

uint64_t sub_1AEA61330(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1AEA61F84(a3, a4, sub_1AEA61BA0);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AEA625E0();
        v13 = v16;
      }

      result = sub_1AEA622AC(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1AEA6245C(a3, a4, v15, *&a1);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_1AEA61430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AEA61454, 0, 0);
}

uint64_t sub_1AEA61454()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5] + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  v4 = *(v3 + 176);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x118);
  v7 = v4;

  v6(sub_1AEA63B78, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AEA61584()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5BB0);
  __swift_project_value_buffer(v0, qword_1EB5F5BB0);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEA61604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

char *sub_1AEA616D4()
{
  SCSensitivityAnalysis.analysis.getter(&v5);
  sub_1AEA63248();
  sub_1AEAF965C();
  sub_1AEAF965C();
  v4 = v2 | v3;
  sub_1AEA6329C();
  sub_1AEAFA45C();
  type metadata accessor for SCSensitivityAnalysis(0);
  v1 = v5;
  return SCSensitivityAnalysis.init(analysis:)(&v1);
}

double sub_1AEA61794()
{
  Width = CVPixelBufferGetWidth(v0);
  CVPixelBufferGetHeight(v0);
  return Width;
}

uint64_t sub_1AEA617CC(uint64_t a1)
{
  v2 = sub_1AEA41684(&unk_1ED98A760, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AEA61838(uint64_t a1)
{
  v2 = sub_1AEA41684(&unk_1ED98A760, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AEA618A8(uint64_t a1)
{
  v2 = sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1AEA61914()
{
  sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);

  return sub_1AEAF8C2C();
}

uint64_t sub_1AEA61980(uint64_t a1)
{
  v2 = sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1AEA619EC(void *a1, uint64_t a2)
{
  v4 = sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1AEA61AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1AEA61B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AEA41684(&unk_1ED98A750, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1AEA61BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AEAFA2BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1AEA61C58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AEA61D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_1AEA61E58(char *a1, int64_t a2, char a3)
{
  result = sub_1AEA61E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AEA61E78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEA61F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v5 = sub_1AEAFA3FC();

  return a3(a1, a2, v5);
}

uint64_t sub_1AEA62008(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9D70);
  v33 = a2;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AEA622AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AEAF9D7C() + 1) & ~v5;
    do
    {
      sub_1AEAFA3BC();

      sub_1AEAF95DC();
      v9 = sub_1AEAFA3FC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1AEA6245C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AEA61F84(a1, a2, sub_1AEA61BA0);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AEA62008(v16, a3 & 1);
      result = sub_1AEA61F84(a1, a2, sub_1AEA61BA0);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AEAFA31C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1AEA625E0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_1AEA625E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9D70);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_1AEA62748(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__analysisResult;
  v47 = 0;
  v48 = -1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8918);
  Atomic.init(wrappedValue:)(&v47, v9, v53);
  *&v3[v8] = v53[0];
  v10 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__streamOrientation;
  LODWORD(v53[0]) = 0;
  BYTE4(v53[0]) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8930);
  Atomic.init(wrappedValue:)(v53, v11, &v47);
  *&v3[v10] = v47;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter] = 0;
  v12 = &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_latestFrameDetails];
  v44 = 1;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 41) = 0u;
  v12[57] = 1;
  v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_fullyInitialized] = 0;
  sub_1AEA5D154(a1, &v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state]);
  v13 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer__mode;
  swift_beginAccess();
  v53[0] = a2;
  sub_1AEA5D49C(a2);
  Atomic.init(wrappedValue:)(v53, &_s4ModeON, &v3[v13]);
  swift_endAccess();
  type metadata accessor for SampleTimer();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  v47 = *(a1 + 96);
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;

  *&v3[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_sampleTimer] = SampleTimer.__allocating_init(id:config:)(v14, v15, &v47);
  v43.receiver = v3;
  v43.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v43, sel_init);
  v22 = &v21[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
  swift_beginAccess();
  sub_1AEA5D204((v22 + 144), &v47);
  Strong = swift_weakLoadStrong();
  sub_1AEA62F28(&v47);
  if (Strong)
  {
    v24 = *(v22 + 3);
    v25 = *(v22 + 4);
    v26 = *(*Strong + 296);

    v27 = v21;
    v26(v21, v24, v25);
  }

  sub_1AEA5D154(v22, &v47);
  v28 = sub_1AEA71D28();
  sub_1AEA62E64(&v47);
  if (!v28)
  {
    sub_1AEA5D204((v22 + 144), &v47);
    sub_1AEA72280();
    sub_1AEA62F28(&v47);
    v29 = *(v22 + 3);
    v30 = *(v22 + 4);
    v46 = *v22 != 2;
    v45 = *(v22 + 21);

    v31._countAndFlagsBits = v29;
    v31._object = v30;
    SamplingPrioritizer.trackStream(for:kind:policy:)(v31, &v46, &v45);

    sub_1AEA5D204((v22 + 144), &v47);
    v32 = swift_weakLoadStrong();
    v33 = sub_1AEA62F28(&v47);
    if (v32)
    {
      v34 = (*(*v32 + 216))(v33);
      v36 = v35;
      v37 = ~v35;

      if (v37)
      {
        sub_1AEA5D740(v34, v36 & 1, 13);
        if (qword_1EB5EA170 != -1)
        {
          swift_once();
        }

        v38 = sub_1AEAF8FEC();
        __swift_project_value_buffer(v38, qword_1EB5F5BB0);
        v39 = sub_1AEAF8FCC();
        v40 = sub_1AEAF9A8C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1AEA3F000, v39, v40, "Adopting existing analysis result for new analyzer.", v41, 2u);
          MEMORY[0x1B270E620](v41, -1, -1);
        }

        sub_1AEA63A30(v34, v36);
      }
    }
  }

  v21[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_fullyInitialized] = 1;

  sub_1AEA62E64(a1);
  return v21;
}

void sub_1AEA62BD8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (sub_1AEA76014(v5, v6) & 1) == 0 || (v7 = *(a1 + 8), v7 == 255) || (v8 = *a1, sub_1AEA62CA0(*a1), v9 = sub_1AEA760B4(v8, v7 & 1), sub_1AEA63A30(v8, v7), (v9))
  {
    sub_1AEA63A30(*a1, *(a1 + 8));
    *a1 = v5;
    *(a1 + 8) = v6;
    *a2 = 1;
    sub_1AEA62CA0(v5);
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_1AEA62CAC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA63D38;

  return sub_1AEA5EED8(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_1AEA62DB8()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA5E0F4(v5, v6, v7, v0 + 32, v2, v3, v4);
}

void sub_1AEA62EB8(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1AEA5D740(a1, a2 & 1, 23);
  }
}

unint64_t sub_1AEA62F7C()
{
  result = qword_1EB5E8978;
  if (!qword_1EB5E8978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E8978);
  }

  return result;
}

void sub_1AEA62FC8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  (*(v0 + 16))(v1, *(v0 + 40));
  v3 = v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = qword_1EB5EA170;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v7, qword_1EB5F5BB0);
  v8 = v1;

  v9 = v8;
  v10 = sub_1AEAF8FCC();
  v11 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315651;
    v14 = sub_1AEA45C14(v5, v4, &v17);

    *(v12 + 4) = v14;
    *(v12 + 12) = 513;
    if (v1)
    {
      SCSensitivityAnalysis.analysis.getter(&v16);
      *(v12 + 14) = v16;

      *(v12 + 16) = 513;
      SCSensitivityAnalysis.analysis.getter(&v16);
      v15 = HIWORD(v16);
    }

    else
    {
      *(v12 + 14) = 0;

      v15 = 0;
      *(v12 + 16) = 513;
    }

    *(v12 + 18) = v15;

    _os_log_impl(&dword_1AEA3F000, v10, v11, "Fired change handler on %s: %{private}hu, %{private}hu", v12, 0x14u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B270E620](v13, -1, -1);
    MEMORY[0x1B270E620](v12, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1AEA631F4()
{
  result = qword_1EB5E8980;
  if (!qword_1EB5E8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8980);
  }

  return result;
}

unint64_t sub_1AEA63248()
{
  result = qword_1EB5E9770;
  if (!qword_1EB5E9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9770);
  }

  return result;
}

unint64_t sub_1AEA6329C()
{
  result = qword_1EB5E8998;
  if (!qword_1EB5E8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8998);
  }

  return result;
}

unint64_t sub_1AEA632F0()
{
  result = qword_1EB5E89A0;
  if (!qword_1EB5E89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E89A0);
  }

  return result;
}

uint64_t sub_1AEA63350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1AEA43B10(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1AEA63364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1AEA44C1C(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1AEA633D8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AEA63D38;

  return sub_1AEA60440(v4, v5, v6, v2, v3);
}

unint64_t sub_1AEA63478()
{
  result = qword_1EB5E89B0;
  if (!qword_1EB5E89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E89B0);
  }

  return result;
}

unint64_t sub_1AEA634D0()
{
  result = qword_1EB5E89B8;
  if (!qword_1EB5E89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E89B8);
  }

  return result;
}

unint64_t sub_1AEA63528()
{
  result = qword_1EB5E89C0;
  if (!qword_1EB5E89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E89C0);
  }

  return result;
}

unint64_t sub_1AEA63580()
{
  result = qword_1EB5E89C8;
  if (!qword_1EB5E89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E89C8);
  }

  return result;
}

void sub_1AEA637F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1AEA63890()
{
  result = qword_1ED98A770[0];
  if (!qword_1ED98A770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98A770);
  }

  return result;
}

id sub_1AEA63974(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1AEA62CA0(a1);
  }

  return a1;
}

uint64_t sub_1AEA6398C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1AEA639F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1AEA63A30(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AEA4F1AC(a1);
  }
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_1AEA63A88()
{
  if (!qword_1EB5E89E0)
  {
    v0 = _s10PrecedenceOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5E89E0);
    }
  }
}

uint64_t sub_1AEA63AD0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEA61430(v5, v6, v7, v2, v3, v4);
}

void sub_1AEA63B78(void *a1)
{
  v2 = sub_1AEAF958C();
  [a1 continueStreamWithAnalyzerUUID_];
}

uint64_t sub_1AEA63BD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AEA63C3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEA4E524(a1, v4);
}

uint64_t objectdestroy_10Tm()
{
  sub_1AEA4F1AC(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t TimestampFaker.Iterator.nextCount.getter()
{
  v2[1] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

uint64_t TimestampFaker.Iterator.changingFPS(to:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v14 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.wrappedValue.getter(&v13);
  v8 = v13;
  v13 = 0;
  v9 = MEMORY[0x1E69E6530];
  Atomic.init(wrappedValue:)(&v13, MEMORY[0x1E69E6530], &v14);
  v10 = v14;
  a2[3] = a1;
  a2[4] = v10;
  *a2 = v6;
  a2[1] = v3[1];
  a2[2] = v7;
  v13 = v8;
  Atomic.init(wrappedValue:)(&v13, v9, &v14);
  v11 = v14;

  a2[4] = v11;
  return result;
}

uint64_t TimestampFaker.Iterator.current.getter()
{
  v2[1] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.wrappedValue.getter(v2);
  sub_1AEAF9BCC();
  return sub_1AEAF9BBC();
}

CMTime_optional __swiftcall TimestampFaker.Iterator.next()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.withLock<A>(_:)();

  sub_1AEAF9BCC();
  v0 = sub_1AEAF9BBC();
  v3 = 0;
  result.value.epoch = v2;
  *&result.value.timescale = v1;
  result.value.value = v0;
  result.is_nil = v3;
  return result;
}

uint64_t *sub_1AEA63FF8@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    *a2 = v2;
  }

  return result;
}

uint64_t sub_1AEA64014@<X0>(uint64_t a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F8);
  Atomic.withLock<A>(_:)();

  sub_1AEAF9BCC();
  result = sub_1AEAF9BBC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t TimestampFaker.init(start:framesPerSecond:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TimestampFaker.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v10 = 0;
  v6 = MEMORY[0x1E69E6530];
  Atomic.init(wrappedValue:)(&v10, MEMORY[0x1E69E6530], &v11);
  v7 = v11;
  a1[3] = v5;
  a1[4] = v7;
  *a1 = v3;
  a1[1] = v1[1];
  a1[2] = v4;
  v10 = 0;
  Atomic.init(wrappedValue:)(&v10, v6, &v11);
  v8 = v11;

  a1[4] = v8;
  return result;
}

unint64_t sub_1AEA641AC()
{
  result = qword_1EB5E8A00;
  if (!qword_1EB5E8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8A00);
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

uint64_t sub_1AEA6425C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEA6427C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1AEA642B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AEA64300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleTimer.Stats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SampleTimer.Stats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1AEA643CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v32 = 0;
  v9 = MEMORY[0x1E69E6530];
  Atomic.init(wrappedValue:)(&v32, MEMORY[0x1E69E6530], &v37);
  v36 = 0;
  v37 = a1;
  v38 = v6;
  v39 = v8;
  v40 = a3;
  v41 = a4;
  Atomic.init(wrappedValue:)(&v36, v9, &v32);
  v10 = v32;

  v42 = v10;
  sub_1AEA641AC();
  result = sub_1AEAF9C4C();
  v12 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v13 = 0;
LABEL_20:

    v29 = v12[3];
    if (v29 < 2)
    {
      return v12;
    }

    v30 = v29 >> 1;
    v28 = __OFSUB__(v30, v13);
    v31 = v30 - v13;
    if (!v28)
    {
      v12[2] = v31;
      return v12;
    }
  }

  else
  {
    v13 = 0;
    v14 = (MEMORY[0x1E69E7CC0] + 32);
    v15 = v33;
    v16 = v34;
    v17 = &type metadata for TimestampFaker.Iterator;
    while (1)
    {
      v18 = v32;
      if (!v13)
      {
        v19 = v12[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v20 = v17;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A10);
        v23 = swift_allocObject();
        v24 = (_swift_stdlib_malloc_size(v23) - 32) / 24;
        v23[2] = v22;
        v23[3] = 2 * v24;
        v25 = (v23 + 4);
        v26 = v12[3] >> 1;
        if (v12[2])
        {
          if (v23 != v12 || v25 >= &v12[3 * v26 + 4])
          {
            memmove(v23 + 4, v12 + 4, 24 * v26);
          }

          v12[2] = 0;
        }

        v14 = (v25 + 24 * v26);
        v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v12 = v23;
        v17 = v20;
      }

      v28 = __OFSUB__(v13--, 1);
      if (v28)
      {
        break;
      }

      *v14 = v18;
      v14[1] = v15;
      v14[2] = v16;
      v14 += 3;
      result = sub_1AEAF9C4C();
      v15 = v33;
      v16 = v34;
      if (v35)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA64608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, ValueMetadata *a6, uint64_t a7)
{
  v9 = a5;
  v14 = HIDWORD(a5);
  v22 = 0;
  v15 = MEMORY[0x1E69E6530];
  Atomic.init(wrappedValue:)(&v22, MEMORY[0x1E69E6530], &v27);
  v26 = 0;
  v27 = a4;
  v28 = v9;
  v29 = v14;
  v30 = a6;
  v31 = a7;
  Atomic.init(wrappedValue:)(&v26, v15, &v22);
  v16 = v22;

  v32 = v16;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *a1 = a4;
    *(a1 + 8) = v9;
    *(a1 + 12) = v14;
    *(a1 + 16) = a6;
    *(a1 + 24) = a7;
    *(a1 + 32) = v16;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = 1;
    v9 = sub_1AEA641AC();
    a6 = &type metadata for TimestampFaker.Iterator;
    while (1)
    {
      a4 = &v27;
      sub_1AEAF9C4C();
      if (v25)
      {
        a4 = v27;
        v9 = v28;
        LODWORD(v14) = v29;
        a6 = v30;
        a7 = v31;
        a3 = v16 - 1;
        goto LABEL_13;
      }

      v19 = v23;
      v18 = v24;
      v20 = HIDWORD(v23);
      *a2 = v22;
      *(a2 + 8) = v19;
      *(a2 + 12) = v20;
      *(a2 + 16) = v18;
      if (a3 == v16)
      {
        break;
      }

      a2 += 24;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v27;
    v9 = v28;
    LODWORD(v14) = v29;
    a6 = v30;
    a7 = v31;
LABEL_13:
    v16 = v32;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA647C0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return result;
}

void sub_1AEA6488C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1AEA648D8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1AEA64968;
}

void sub_1AEA64968(id **a1, char a2)
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

uint64_t sub_1AEA649E4(char a1, void *a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1 & 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v4;
}

uint64_t sub_1AEA64A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*v2 + 120))();
  if (v5)
  {
    v6 = v5;
    swift_getAtKeyPath();

    return (*(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 56))(a2, 0, 1);
  }

  else
  {
    v8 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 56);

    return v8(a2, 1, 1);
  }
}

uint64_t sub_1AEA64BB8()
{
  MEMORY[0x1B270E710](v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1AEA64BF0()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E3D8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1AEA64C58(BOOL *a1@<X8>)
{
  os_unfair_lock_assert_owner((*(v1 + 56) + 16));
  sub_1AEA66BEC();
  *a1 = *(*(v1 + 40) + 16) != 0;
}

uint64_t sub_1AEA64CA4()
{
  if ((*(*v0 + 128))())
  {
    v1 = 0;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A18);
    Atomic.withLock<A>(_:)();

    v1 = v3 ^ 1;
  }

  return v1 & 1;
}

char *sub_1AEA64D68@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *result = 1;
  *a2 = v2;
  return result;
}

uint64_t sub_1AEA64D7C()
{
  v2[2] = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

uint64_t sub_1AEA64DD0(uint64_t a1, char a2)
{
  v7 = *(v2 + 48);
  v5 = a1;
  v6 = a2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.setter(&v5, v3);
}

void (*sub_1AEA64E38(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v4[5] = v5;
  v4[4] = v5;

  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8928);
  Atomic.wrappedValue.getter(v4);
  return sub_1AEA64ED8;
}

void sub_1AEA64ED8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(v3 + 8);
  v6 = v3[6];
  v3[2] = v4;
  *(v3 + 24) = v5;
  if (a2)
  {
    sub_1AEA63974(v4, v5);
    Atomic.wrappedValue.setter((v3 + 2), v6);

    sub_1AEA63A30(*v3, *(v3 + 8));
  }

  else
  {
    Atomic.wrappedValue.setter((v3 + 2), v6);
  }

  free(v3);
}

uint64_t sub_1AEA64F8C()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E460(&v15);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v15;
  v3 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(**(*(v2 + 56) + ((v9 << 9) | (8 * v10))) + 120);

      v13 = v11(v12);

      if (v13)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1B270CC20](result);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AEAF970C();
    }

    result = sub_1AEAF973C();
    v3 = v15;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {

      return v3;
    }

    v6 = *(v2 + 64 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA65150()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E460(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1AEA651B8(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AEA65208(a1, a2);
  return v4;
}

void *sub_1AEA65208(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  LOBYTE(v19) = 0;
  Atomic.init(wrappedValue:)(&v19, MEMORY[0x1E69E6370], &v17);
  v6 = MEMORY[0x1E69E7CC8];
  v2[4] = v17;
  v2[5] = v6;
  v17 = 0;
  v18 = -1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8918);
  Atomic.init(wrappedValue:)(&v17, v7, &v19);
  v2[6] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v2[7] = v8;
  v2[8] = 0;
  v2[2] = a1;
  v2[3] = a2;
  v9 = qword_1ED98AC70;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v10, qword_1ED98DD68);

  v11 = sub_1AEAF8FCC();
  v12 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_1AEA45C14(a1, a2, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1AEA3F000, v11, v12, "Call started %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B270E620](v14, -1, -1);
    MEMORY[0x1B270E620](v13, -1, -1);
  }

  else
  {
  }

  v3[8] = sub_1AEA65448();

  return v3;
}

uint64_t sub_1AEA65448()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v25 - v1;
  v3 = sub_1AEAF8D6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    return 0;
  }

  v26 = v3;
  v12 = sub_1AEAF95BC();
  v14 = v13;

  if (v12 == 0xD000000000000017 && 0x80000001AEB060B0 == v14)
  {

    v17 = v2;
  }

  else
  {
    v16 = sub_1AEAFA2BC();

    v17 = v2;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1AEAF8D5C();
  v19 = sub_1AEAF982C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v26;
  (*(v4 + 16))(v7, v9, v26);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v4 + 32))(v23 + v22, v7, v21);
  *(v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v24 = sub_1AEA67464(0, 0, v17, &unk_1AEAFCFD0, v23);
  (*(v4 + 8))(v9, v21);
  return v24;
}

void *Call.deinit()
{
  v1 = v0;
  if (v0[8])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    sub_1AEAF985C();
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = qword_1ED98AC70;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v5, qword_1ED98DD68);

  v6 = sub_1AEAF8FCC();
  v7 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    v10 = sub_1AEA45C14(v3, v2, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1AEA3F000, v6, v7, "Call deinited %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  else
  {
  }

  return v1;
}

uint64_t Call.__deallocating_deinit()
{
  Call.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1AEA65984()
{
  result = (*(*v0 + 312))();
  if (result)
  {
    v2 = (*(*result + 120))(result);

    return v2;
  }

  return result;
}

void sub_1AEA65A08(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    type metadata accessor for Call.AnalyzerEntry();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 16) = 0;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    (*(*v3 + 320))(v7, a2, a3);
  }

  else
  {
    v8 = *(*v3 + 320);

    v8();
  }
}

void (*sub_1AEA65B28(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[8] = a3;
  v7[9] = v3;
  v7[7] = a2;
  v9 = (*(*v3 + 312))(a2, a3);
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9);
  }

  else
  {
    v10 = 0;
  }

  v8[6] = v10;
  return sub_1AEA65C30;
}

void sub_1AEA65C30(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 56);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for Call.AnalyzerEntry();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v8 + 16) = 0;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v9 = *(*v5 + 320);

      v10 = v3;
      v9(v8, v7, v6);
    }

    else
    {
      v13 = *(*v5 + 320);

      v13(0, v7, v6);
    }
  }

  else if (v3)
  {
    type metadata accessor for Call.AnalyzerEntry();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 16) = 0;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v12 = *(*v5 + 320);

    v12(v11, v7, v6);
  }

  else
  {
    v14 = *(*v5 + 320);

    v14(0, v7, v6);
  }

  free(v2);
}

uint64_t sub_1AEA65E64()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E53C(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1AEA65ED8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_assert_owner((*(a1 + 56) + 16));
  sub_1AEA66BEC();
  v8 = *(a1 + 40);
  if (*(v8 + 16))
  {

    v9 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
}

uint64_t sub_1AEA65F80()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E584();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1AEA6600C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v8 = *(a2 + 56);

    os_unfair_lock_assert_owner(v8 + 4);
    sub_1AEA66BEC();
    v9 = *(a2 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v9;
    sub_1AEA6D27C(a1, a3, a4, isUniquelyReferenced_nonNull_native, &qword_1EB5E8AE0);

    os_unfair_lock_assert_owner(v8 + 4);
    *(a2 + 40) = v9;

    os_unfair_lock_assert_owner(v8 + 4);
    sub_1AEA66BEC();
    v11 = *(*(a2 + 40) + 16);
    v12 = (*(*a1 + 120))();
    if (v12)
    {
      v13 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state;
      v14 = v12;
      swift_beginAccess();
      sub_1AEA5D154(v14 + v13, v27);

      v15 = v27[0];
      sub_1AEA62E64(v27);
      v16 = sub_1AEA5E09C(v15);
      v18 = v17;
    }

    else
    {
      v18 = 0xE100000000000000;
      v16 = 45;
    }

    if (qword_1ED98AC70 != -1)
    {
      swift_once();
    }

    v21 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v21, qword_1ED98DD68);

    v22 = sub_1AEAF8FCC();
    v23 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_1AEA45C14(a3, a4, v27);
      *(v24 + 12) = 2080;
      v26 = sub_1AEA45C14(v16, v18, v27);

      *(v24 + 14) = v26;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v11;
      _os_log_impl(&dword_1AEA3F000, v22, v23, "Start analyzer: %s (%s) total: %ld", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B270E620](v25, -1, -1);
      MEMORY[0x1B270E620](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v19 = *(a2 + 56);
    os_unfair_lock_assert_owner(v19 + 4);
    sub_1AEA66BEC();
    v27[0] = *(a2 + 40);

    sub_1AEA66354(0, a3, a4);
    os_unfair_lock_assert_owner(v19 + 4);
    *(a2 + 40) = v27[0];
  }
}

uint64_t sub_1AEA66354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AEA6D27C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1EB5E8AE0);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AEA6D444(&qword_1EB5E8AE0);
        v14 = v16;
      }

      result = sub_1AEA622AC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void (*sub_1AEA66480(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v7[1] = a2;
  v9 = *(v3 + 56);
  v7[4] = v9;
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock(v9 + 4);
  sub_1AEA70EF8(&v12);
  v8[5] = 0;
  os_unfair_lock_unlock(v9 + 4);
  *v8 = v12;
  return sub_1AEA66598;
}

void sub_1AEA66598(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {

    os_unfair_lock_lock(v3 + 4);
    sub_1AEA70FE8();
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {

    os_unfair_lock_lock(v3 + 4);
    sub_1AEA70FE8();
    os_unfair_lock_unlock(v3 + 4);
  }

  free(v2);
}

uint64_t sub_1AEA666A4()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E5DC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1AEA66718(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  os_unfair_lock_assert_owner((*(a1 + 56) + 16));
  sub_1AEA66BEC();
  v8 = *(a1 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v14 = 2;
    goto LABEL_6;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  v13 = (*(*v11 + 96))(v12);

  v14 = v13 & 1;
LABEL_6:
  *a4 = v14;
}

uint64_t sub_1AEA667F8()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1AEA66874(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v7 = *(a2 + 56);
    os_unfair_lock_assert_owner(v7 + 4);
    sub_1AEA66BEC();
    v13 = *(a2 + 40);

    sub_1AEA66354(0, a3, a4);
    os_unfair_lock_assert_owner(v7 + 4);
    *(a2 + 40) = v13;
  }

  else
  {
    os_unfair_lock_assert_owner((*(a2 + 56) + 16));
    sub_1AEA66BEC();
    v9 = *(a2 + 40);
    if (*(v9 + 16))
    {

      v10 = sub_1AEA61F84(a3, a4, sub_1AEA61BA0);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        (*(*v12 + 104))(a1 & 1);
      }

      else
      {
      }
    }
  }
}

void (*sub_1AEA66A04(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(v3 + 56);
  v7[3] = v9;
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock(v9 + 4);
  sub_1AEA70F10(v12);
  v8[4] = 0;
  os_unfair_lock_unlock(v9 + 4);
  *(v8 + 40) = v12[0];
  return sub_1AEA66B1C;
}

void sub_1AEA66B1C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v2 + 4);
  free(v1);
}

void sub_1AEA66BEC()
{
  os_unfair_lock_assert_owner((*(v0 + 56) + 16));
  v1 = *(*(v0 + 40) + 16);

  v3 = sub_1AEA6D734(v2, sub_1AEA6D8A4, sub_1AEA6D8A4);

  *(v0 + 40) = v3;

  v4 = *(*(v0 + 40) + 16);
  v5 = v1 - v4;
  if (v5 >= 1)
  {
    if (qword_1ED98AC70 != -1)
    {
      swift_once();
    }

    v6 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v6, qword_1ED98DD68);
    oslog = sub_1AEAF8FCC();
    v7 = sub_1AEAF9A8C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;
      _os_log_impl(&dword_1AEA3F000, oslog, v7, "Pruned %ld entries, total: %ld", v8, 0x16u);
      MEMORY[0x1B270E620](v8, -1, -1);
    }
  }
}

uint64_t sub_1AEA66D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B48);
  v5[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B50);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA66E78, 0, 0);
}

uint64_t sub_1AEA66E78()
{
  if (qword_1ED98AC70 != -1)
  {
    swift_once();
  }

  v1 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v1, qword_1ED98DD68);
  v2 = sub_1AEAF8FCC();
  v3 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEA3F000, v2, v3, "Listening for join changes...", v4, 2u);
    MEMORY[0x1B270E620](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[9];

  sub_1AEA8416C(v6, v5);
  v0[16] = swift_getOpaqueTypeConformance2();
  sub_1AEAF98EC();
  swift_beginAccess();
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1AEA67084;
  v9 = v0[13];

  return MEMORY[0x1EEE6D8D0](v0 + 19, 0, 0, v0 + 8, v9, AssociatedConformanceWitness);
}

uint64_t sub_1AEA67084()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AEA673D4;
  }

  else
  {
    v2 = sub_1AEA67198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA67198()
{
  v1 = *(v0 + 152);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v2 = *(v0 + 8);

    return v2();
  }

  Strong = swift_weakLoadStrong();
  v5 = Strong;
  if (v1)
  {
    if (Strong)
    {
      v6 = *(v0 + 144);
      v7 = *(Strong + 56);
      v8 = swift_task_alloc();
      *(v8 + 16) = sub_1AEA70E5C;
      *(v8 + 24) = v5;
      v9 = v7 + 4;
      os_unfair_lock_lock(v9);
      sub_1AEA70FE8();
      if (v6)
      {
LABEL_8:
        os_unfair_lock_unlock(v9);
      }

      goto LABEL_13;
    }
  }

  else if (Strong)
  {
    v10 = *(v0 + 144);
    v11 = *(Strong + 56);
    v12 = swift_task_alloc();
    *(v12 + 16) = sub_1AEA70E88;
    *(v12 + 24) = v5;
    v9 = v11 + 4;
    os_unfair_lock_lock(v9);
    sub_1AEA70FE8();
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    os_unfair_lock_unlock(v9);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_1AEA67084;
  v15 = *(v0 + 104);

  return MEMORY[0x1EEE6D8D0](v0 + 152, 0, 0, v0 + 64, v15, AssociatedConformanceWitness);
}

uint64_t sub_1AEA673D4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AEA67464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1AEA67710(uint64_t a1)
{
  v2 = sub_1AEAF8FEC();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - v5;
  os_unfair_lock_assert_owner((*(a1 + 56) + 16));
  sub_1AEA66BEC();
  v6 = *(a1 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  i = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(**(*(v6 + 56) + 8 * (v13 | (v12 << 6))) + 120);

      v16 = v14(v15);

      if (v16)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1B270CC20](v17);
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AEAF970C();
    }

    sub_1AEAF973C();
    v7 = v42;
  }

  while (v10);
  while (1)
  {
LABEL_6:
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= i)
    {
      break;
    }

    v10 = *(v6 + 64 + 8 * v18);
    ++v12;
    if (v10)
    {
      v12 = v18;
      goto LABEL_4;
    }
  }

  i = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_35;
  }

  v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v40;
  v21 = v41;
  v23 = v39;
  if (v20)
  {
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B270D3B0](0, v7);
        swift_unknownObjectRelease();
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v24 = sub_1AEA5DB30();
      (*(v22 + 16))(v23, v24, v21);

      v25 = sub_1AEAF8FCC();
      v26 = sub_1AEAF9A7C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        if (i)
        {
          v28 = sub_1AEAF9FFC();
        }

        else
        {
          v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v27 + 4) = v28;

        _os_log_impl(&dword_1AEA3F000, v25, v26, "Issuing continues with %ld analyzers...", v27, 0xCu);
        MEMORY[0x1B270E620](v27, -1, -1);
      }

      else
      {
      }

      (*(v22 + 8))(v23, v21);
      for (i = 0; ; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B270D3B0](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v29 = *(v7 + 8 * i + 32);
        }

        v30 = v29;
        v31 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1AEA601D0(0);

        if (v31 == v20)
        {
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1AEAF9FFC();
      v20 = result;
      v22 = v40;
      v21 = v41;
      v23 = v39;
    }

    while (result);
  }

  v32 = sub_1AEA5DB30();
  v33 = v38;
  (*(v22 + 16))(v38, v32, v21);
  v34 = sub_1AEAF8FCC();
  v35 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1AEA3F000, v34, v35, "No analyzers to handle continue.", v36, 2u);
    MEMORY[0x1B270E620](v36, -1, -1);
  }

  return (*(v22 + 8))(v33, v21);
}

void sub_1AEA67BD4(uint64_t a1)
{
  v2 = sub_1AEAF8FEC();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - v5;
  os_unfair_lock_assert_owner((*(a1 + 56) + 16));
  sub_1AEA66BEC();
  v6 = *(a1 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(**(*(v6 + 56) + 8 * (v13 | (v12 << 6))) + 120);

      v16 = v14(v15);

      if (v16)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1B270CC20](v17);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AEAF970C();
    }

    sub_1AEAF973C();
    v7 = v45;
  }

  while (v10);
  while (1)
  {
LABEL_6:
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_27:
      v31 = sub_1AEAF9FFC();
      v20 = v40;
      v19 = v41;
      v21 = v39;
      if (v31)
      {
        goto LABEL_16;
      }

LABEL_28:

      v32 = sub_1AEA5DB30();
      v33 = v38;
      (*(v20 + 16))(v38, v32, v19);
      v34 = sub_1AEAF8FCC();
      v35 = sub_1AEAF9A8C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1AEA3F000, v34, v35, "No analyzers to handle join.", v36, 2u);
        MEMORY[0x1B270E620](v36, -1, -1);
      }

      (*(v20 + 8))(v33, v19);
      return;
    }

    if (v18 >= v11)
    {
      break;
    }

    v10 = *(v6 + 64 + 8 * v18);
    ++v12;
    if (v10)
    {
      v12 = v18;
      goto LABEL_4;
    }
  }

  v11 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  v20 = v40;
  v19 = v41;
  v21 = v39;
  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1B270D3B0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v22 = *(v7 + 32);
  }

  v23 = v22;
  v24 = sub_1AEA5DB30();
  (*(v20 + 16))(v21, v24, v19);

  v25 = sub_1AEAF8FCC();
  v26 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if (v11)
    {
      v28 = sub_1AEAF9FFC();
    }

    else
    {
      v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v28;

    _os_log_impl(&dword_1AEA3F000, v25, v26, "Issuing advisory analyses with %ld analyzers...", v27, 0xCu);
    MEMORY[0x1B270E620](v27, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v20 + 8))(v21, v19);
  type metadata accessor for SCSensitivityAnalysis(0);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1AEA631F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8988);
  sub_1AEA42944(&qword_1EB5E8990, &qword_1EB5E8988);
  sub_1AEAF9D5C();
  v44 = v42;
  v43 = *sub_1AEAD9834();
  SensitivityAnalysis.init(harmsDetected:flags:)(&v44, &v43, &v45);
  LODWORD(v42) = v45;
  v29 = SCSensitivityAnalysis.init(analysis:)(&v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1AEAFCC40;
  *(v30 + 32) = *sub_1AEA5D71C();
  *(v30 + 40) = *sub_1AEA5E968();
  *(v30 + 48) = *sub_1AEA5D728();
  v42 = v30;
  sub_1AEA634D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AB0);
  sub_1AEA42944(&qword_1EB5E8AB8, &qword_1EB5E8AB0);
  sub_1AEAF9D5C();
  sub_1AEA5D740(v29, 0, v45);
}

uint64_t sub_1AEA681CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEA68218(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_1AEA6826C()
{
  v2[1] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

uint64_t sub_1AEA682BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[0] = a1;
  v5[1] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.wrappedValue.setter(v5, v3);
}

uint64_t (*sub_1AEA6831C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  v4[3] = v5;
  v4[1] = v5;

  v4[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.wrappedValue.getter(v4);
  return sub_1AEA70FE4;
}

uint64_t sub_1AEA683BC(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 88))();
  if (*(v5 + 16) && (v6 = sub_1AEA61F84(a1, a2, sub_1AEA61BA0), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    v10 = (*(*v8 + 264))(v9);

    return v10;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1AEA684B4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  type metadata accessor for Call();
  Atomic.withLock<A>(_:)();

  return v1;
}

uint64_t sub_1AEA6854C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.withLock<A>(_:)();
}

uint64_t sub_1AEA685E0(uint64_t *a1)
{
  v1 = sub_1AEA6D734(*a1, sub_1AEA6DB7C, sub_1AEA6DB7C);
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];

      v14 = sub_1AEA61F84(v12, v13, sub_1AEA61BA0);
      v16 = v15;

      if (v16)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    v21 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AEA6D444(&qword_1EB5E8B40);
      v19 = v21;
    }

    result = sub_1AEA622AC(v14, v19);
    *a1 = v19;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v17 >= v7)
    {
    }

    v6 = *(v3 + 8 * v17);
    ++v9;
    if (v6)
    {
      v9 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA68794()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A30);
  Atomic.withLock<A>(_:)();

  return v1;
}

uint64_t sub_1AEA68840@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16) && (result = sub_1AEA61F84(a2, a3, sub_1AEA61BA0), (v10 & 1) != 0))
  {
    v11 = *(**(*(v7 + 56) + 8 * result) + 288);

    v12 = v11(a4, a5);
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  return result;
}

uint64_t sub_1AEA68910(void *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.withLock<A>(_:)();
}

uint64_t sub_1AEA689CC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0), (v14 & 1) != 0))
  {
    v15 = *(**(*(v12 + 56) + 8 * v13) + 296);
    v16 = a6;

    v15(a6, a4, a5);
  }

  else
  {
    type metadata accessor for Call();
    v17 = swift_allocObject();

    sub_1AEA65208(a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_1AEA6D27C(v17, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1EB5E8B40);

    *a1 = v22;
    v19 = *(*v17 + 296);
    v20 = a6;

    v19(a6, a4, a5);
  }
}

void (*sub_1AEA68B98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[5] = a5;
  v11[6] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[2] = a2;
  MEMORY[0x1EEE9AC00](*(v5 + 16));

  v12[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A30);
  Atomic.withLock<A>(_:)();
  v12[8] = 0;

  *v12 = v12[1];
  return sub_1AEA68CE0;
}

void sub_1AEA68CE0(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = v3;

    Atomic.withLock<A>(_:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);

    Atomic.withLock<A>(_:)();
  }

  free(v2);
}

uint64_t sub_1AEA68E4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16) && (result = sub_1AEA61F84(a2, a3, sub_1AEA61BA0), (v10 & 1) != 0))
  {
    v11 = *(**(*(v7 + 56) + 8 * result) + 312);

    v12 = v11(a4, a5);
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  return result;
}

uint64_t sub_1AEA68F1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A38);
  Atomic.withLock<A>(_:)();

  return v1;
}

uint64_t sub_1AEA68FC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16) && (result = sub_1AEA61F84(a2, a3, sub_1AEA61BA0), (v10 & 1) != 0))
  {
    v11 = *(**(*(v7 + 56) + 8 * result) + 336);

    v12 = v11(a4, a5);
  }

  else
  {
    v12 = 2;
  }

  *a6 = v12;
  return result;
}

uint64_t sub_1AEA69098()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  Atomic.withLock<A>(_:)();
}

uint64_t sub_1AEA69148(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    type metadata accessor for Call();
    v14 = swift_allocObject();

    sub_1AEA65208(a2, a3);
  }

  v15 = *(*v14 + 344);

  v15(a6, a4, a5);
}

void (*sub_1AEA69248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a3;
  v11[2] = a4;
  *v11 = a2;
  MEMORY[0x1EEE9AC00](*(v5 + 16));

  v12[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A38);
  Atomic.withLock<A>(_:)();
  v12[6] = 0;

  *(v12 + 56) = *(v12 + 57);
  return sub_1AEA69390;
}

void sub_1AEA69390(uint64_t a1)
{
  v1 = *a1;
  MEMORY[0x1EEE9AC00](*(*(*a1 + 32) + 16));

  Atomic.withLock<A>(_:)();

  free(v1);
}

uint64_t ActiveCalls.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AEA6950C()
{
  v0 = swift_allocObject();
  v3 = sub_1AEA6E844(MEMORY[0x1E69E7CC0]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A20);
  Atomic.init(wrappedValue:)(&v3, v1, &v4);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t sub_1AEA69584()
{
  v2 = 0;
  v3 = -1;
  v0 = objc_allocWithZone(type metadata accessor for VideoStreamAnalysisDispatcher());
  v2 = VideoStreamAnalysisDispatcher.init(sampleRateAlgorithm:)(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B38);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98BCC8 = result;
  return result;
}

uint64_t *sub_1AEA69634()
{
  if (qword_1ED98BCD0 != -1)
  {
    swift_once();
  }

  return &qword_1ED98BCC8;
}

uint64_t static VideoStreamAnalysisDispatcher.$dispatcher.getter()
{
  if (qword_1ED98BCD0 != -1)
  {
    swift_once();
  }
}

uint64_t static VideoStreamAnalysisDispatcher.dispatcher.getter()
{
  if (qword_1ED98BCD0 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

uint64_t sub_1AEA69748@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEA697A4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_1AEA69850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_all;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1AEA69908@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEA69964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_prioritizer;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1AEA69A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_prioritizer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1AEA69A7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_listener);
  if (v1)
  {
    v2 = [*(v1 + qword_1EB5E9BF0) endpoint];

    v3 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1AEA69AD4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__upConnections);
  v4[3] = v5;
  v4[1] = v5;

  v4[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A90);
  Atomic.wrappedValue.getter(v4);
  return sub_1AEA69B7C;
}

void sub_1AEA69B80(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  (*a1)[2] = **a1;
  if (a2)
  {

    Atomic.wrappedValue.setter((v2 + 2), v3);
  }

  else
  {
    Atomic.wrappedValue.setter((v2 + 2), v3);
  }

  free(v2);
}

uint64_t sub_1AEA69C20()
{
  v2[1] = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__downConnections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A78);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

uint64_t sub_1AEA69C78(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__downConnections);
  v5[0] = a1;
  v5[1] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A78);
  Atomic.wrappedValue.setter(v5, v3);
}

char *VideoStreamAnalysisDispatcher.init(sampleRateAlgorithm:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_all;
  type metadata accessor for ActiveCalls();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v29 = sub_1AEA6E844(MEMORY[0x1E69E7CC0]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A20);
  Atomic.init(wrappedValue:)(&v29, v8, &v27);
  *(v6 + 16) = v27;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_prioritizer] = 0;
  v9 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_coreAnalyticsManager;
  type metadata accessor for CoreAnalyticsManager();
  *&v2[v9] = CoreAnalyticsManager.__allocating_init()();
  *&v2[OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_listener] = 0;
  v10 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__upConnections;
  v29 = MEMORY[0x1E69E7CC8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A60);
  Atomic.init(wrappedValue:)(&v29, v11, &v27);
  *&v2[v10] = v27;
  v12 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__downConnections;
  v29 = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A68);
  Atomic.init(wrappedValue:)(&v29, v13, &v27);
  *&v2[v12] = v27;
  v14 = type metadata accessor for VideoStreamAnalysisDispatcher();
  v31.receiver = v2;
  v31.super_class = v14;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = v15;
  if (v4 == 255)
  {
    v18 = v15;
    static BaseIntervalAlgorithm.effective.getter(&v27);
    v3 = v27;
    LOBYTE(v4) = v28;
  }

  else
  {
    v27 = v3;
    v28 = v4;
    v17 = v15;
  }

  type metadata accessor for SamplingPrioritizer();
  v29 = v3;
  v30 = v4;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v16;
  v21 = SamplingPrioritizer.__allocating_init(algorithm:baseIntervalChanged:)(&v29, sub_1AEA6EBD4, v19);
  v22 = OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_prioritizer;
  swift_beginAccess();
  *&v20[v22] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A88);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = static ResumedListener.anonymous(exporting:)(sub_1AEA6EBE0, v23);

  v25 = *&v20[OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_listener];
  *&v20[OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher_listener] = v24;

  return v20;
}

void *sub_1AEA69F84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x80))();

    v24 = v12;
    v25 = *(v15 + 16);
    MEMORY[0x1EEE9AC00](v25);
    *(&v23 - 4) = 0xD000000000000024;
    *(&v23 - 3) = v16;
    *(&v23 - 2) = a1;
    *(&v23 - 1) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA0);
    Atomic.withLock<A>(_:)();

    v17 = a3;
    v18 = v24;

    if (v26)
    {
      v19 = (*(*v26 + 120))(result);
      if (v19)
      {
        v20 = v19;
        sub_1AEA8D0D4(v17, a4 & 1, 0);
      }

      v21 = sub_1AEAF982C();
      (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = a5;
      *(v22 + 40) = a1;
      *(v22 + 48) = a2;
      *(v22 + 56) = v17;
      *(v22 + 64) = a4 & 1;

      sub_1AEA6A3DC(0, 0, v18, &unk_1AEAFCF88, v22);
    }
  }

  return result;
}

uint64_t sub_1AEA6A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 80) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA6A294, 0, 0);
}

uint64_t sub_1AEA6A294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v2 & 1;
    v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x118);

    v7(sub_1AEA70CB4, v6);
  }

  **(v0 + 40) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AEA6A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B30);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B30);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AEA6A6F0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1AEAF8FEC();

  return __swift_project_value_buffer(v3, a2);
}

id VideoStreamAnalysisDispatcher.__deallocating_deinit()
{
  if (qword_1EB5EA518 != -1)
  {
    swift_once();
  }

  v1 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v1, qword_1EB5F5BE0);
  v2 = v0;
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "Dispatcher (%@) ended", v5, 0xCu);
    sub_1AEA41FAC(v6, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v6, -1, -1);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for VideoStreamAnalysisDispatcher();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_1AEA6A960()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A90);
  type metadata accessor for audit_token_t(0);
  Atomic.withLock<A>(_:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AEA6AA1C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AEA70784;
  *(v7 + 24) = v6;
  v10[4] = sub_1AEA707AC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AEA6AB7C;
  v10[3] = &block_descriptor_94;
  v8 = _Block_copy(v10);

  [v5 establishConnectionWithReply_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1AEA6AB7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

void sub_1AEA6ABE4(const char *a1)
{
  if (qword_1EB5EA518 != -1)
  {
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5F5BE0);
  oslog = sub_1AEAF8FCC();
  v3 = sub_1AEAF9A9C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEA3F000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1B270E620](v4, -1, -1);
  }
}

void (*sub_1AEA6ACD4(uint64_t **a1, __int128 *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AEA6DFD8(v4, a2);
  return sub_1AEA6AD4C;
}

void sub_1AEA6AD4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

BOOL sub_1AEA6AD98(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v4;
  v20[2] = *(a1 + 32);
  v21 = *(a1 + 48);
  v19 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__upConnections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A90);
  Atomic.wrappedValue.getter(&v18);
  v5 = v18;
  if (*(v18 + 16) && (v6 = sub_1AEA4547C(v20), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), , , (v9 = *(v8 + 16)) != 0))
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1AEAF9EEC();
    v10 = 32;
    do
    {
      v18 = *(v8 + v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
      ResumedConnection.proxy.getter(&v17);
      sub_1AEAF9EBC();
      sub_1AEAF9EFC();
      sub_1AEAF9F0C();
      sub_1AEAF9ECC();
      v10 += 8;
      --v9;
    }

    while (v9);

    v11 = v19;
  }

  else
  {
LABEL_7:

    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11 >> 62)
  {
LABEL_21:
    v12 = sub_1AEAF9FFC();
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_10:
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B270D3B0](v13, v11);
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_7;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * v13 + 32);
          swift_unknownObjectRetain();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_18;
          }
        }

        a2(v14);
        swift_unknownObjectRelease();
        ++v13;
      }

      while (v15 != v12);
    }
  }

  return v12 != 0;
}

uint64_t sub_1AEA6AFD4(void (*a1)(uint64_t))
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_15:

    v7 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_5;
    }

LABEL_16:
    result = sub_1AEAF9FFC();
    v8 = result;
    if (result)
    {
      goto LABEL_6;
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1AEAF9EEC();
  v5 = 32;
  do
  {
    v12[1] = *(v3 + v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
    ResumedConnection.proxy.getter(v12);
    sub_1AEAF9EBC();
    sub_1AEAF9EFC();
    sub_1AEAF9F0C();
    sub_1AEAF9ECC();
    v5 += 8;
    --v4;
  }

  while (v4);

  v7 = v13;
  if (v13 >> 62)
  {
    goto LABEL_16;
  }

LABEL_5:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
  }

LABEL_6:
  v9 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B270D3B0](v9, v7);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_10:
    a1(v10);
    result = swift_unknownObjectRelease();
    ++v9;
    if (v11 == v8)
    {
    }
  }

  if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id VideoStreamAnalysisDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1AEA6B2A4(void *a1, void *a2)
{
  v18 = *((*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))() + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA0);
  Atomic.withLock<A>(_:)();

  if (v16)
  {
    if (((*(*v16 + 96))(v5) & 1) != 0 && (v6 = (*(*v16 + 120))()) != 0)
    {
      v7 = v6;
      v18 = a1;
      v15 = a2;
      v8 = a1;
      v9 = a2;
      v10 = type metadata accessor for SCSensitivityAnalysis(0);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      Result.init(success:failure:)(&v18, &v15, v10, v11, MEMORY[0x1E69E7288], &v16);
      v12 = v16;
      v13 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AEAFCC50;
      *(v14 + 32) = *sub_1AEA5D71C();
      *(v14 + 40) = *sub_1AEA5D734();
      *(v14 + 48) = *sub_1AEA5E968();
      *(v14 + 56) = *sub_1AEA5E974();
      v15 = v14;
      sub_1AEA634D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AB0);
      sub_1AEA42944(&qword_1EB5E8AB8, &qword_1EB5E8AB0);
      sub_1AEAF9D5C();
      sub_1AEA5D740(v12, v13, v18);
      sub_1AEA4F1AC(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1AEA6B594(uint64_t a1, unint64_t a2, id a3, void *a4, unsigned int a5)
{
  [a3 sizeValue];
  if (a4)
  {
    v12 = v10;
    v13 = v11;
    [a4 rectValue];
    *&v17 = v14;
    v10 = v12;
    v16 = v15;
    v11 = v13;
    *(&v17 + 1) = v16;
    *(&v19 + 1) = v18;
  }

  else
  {
    v17 = 0uLL;
    v19 = 0uLL;
  }

  v26[0] = v17;
  v26[1] = v19;
  v27 = a4 == 0;
  LOBYTE(v24[0]) = 0;
  v20 = FrameDetails.init(orientation:frameSize:regionOfInterest:)(a5, v26, v24, v10, v11);
  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x98))(v20);
  if (result)
  {
    v22[0] = v24[0];
    v22[1] = v24[1];
    v23[0] = v25[0];
    *(v23 + 9) = *(v25 + 9);
    SamplingPrioritizer.updateLatestFrameDetails(for:details:)(a1, a2, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEA6B7EC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA0);
  Atomic.withLock<A>(_:)();

  if (v4)
  {
    v2 = (*(*v4 + 120))(result);
    if (v2)
    {
      v3 = v2;
      VideoStreamAnalyzer.continueStream()();
    }
  }

  return result;
}

void sub_1AEA6B9A0(void *a1, void *a2)
{
  v18 = *((*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))() + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA0);
  Atomic.withLock<A>(_:)();

  if (v16)
  {
    v6 = (*(*v16 + 120))(v5);
    if (v6)
    {
      v7 = v6;
      v18 = a1;
      v15 = a2;
      v8 = a1;
      v9 = a2;
      v10 = type metadata accessor for SCSensitivityAnalysis(0);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      Result.init(success:failure:)(&v18, &v15, v10, v11, MEMORY[0x1E69E7288], &v16);
      v12 = v16;
      v13 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AEAFC460;
      *(v14 + 32) = *sub_1AEA5D71C();
      *(v14 + 40) = *sub_1AEA5D728();
      v15 = v14;
      sub_1AEA634D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AB0);
      sub_1AEA42944(&qword_1EB5E8AB8, &qword_1EB5E8AB0);
      sub_1AEAF9D5C();
      sub_1AEA5D740(v12, v13, v18);
      sub_1AEA4F1AC(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1AEA6BC4C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, void *, uint64_t, uint64_t))
{
  v10 = sub_1AEAF95BC();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  v15 = a4;
  a6(a3, a4, v10, v12);
}

uint64_t sub_1AEA6BCF4(uint64_t a1, uint64_t a2, void *a3)
{
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AA0);
  Atomic.withLock<A>(_:)();

  if (v10)
  {
    v6 = (*(*v10 + 120))(result);
    if (v6)
    {
      v7 = v6;
      if (a3)
      {
        [a3 doubleValue];
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      sub_1AEA8D0D4(v9, a3 == 0, 1);
    }
  }

  return result;
}

uint64_t sub_1AEA6BF0C()
{
  sub_1AEA6C95C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEAFCC60;
  *(v0 + 32) = type metadata accessor for SCVideoStreamAnalyzer();
  *(v0 + 40) = type metadata accessor for VideoStreamAnalyzer();
  *(v0 + 48) = sub_1AEA49EF8(0, &qword_1EB5E8AF8);
  *(v0 + 56) = sub_1AEA49EF8(0, &unk_1EB5E8E50);
  *(v0 + 64) = type metadata accessor for SCSensitivityAnalysis(0);
  *(v0 + 72) = sub_1AEA49EF8(0, &unk_1EB5E9670);
  *(v0 + 80) = sub_1AEA49EF8(0, &qword_1EB5E8B00);
  result = sub_1AEA49EF8(0, &qword_1EB5E8978);
  *(v0 + 88) = result;
  qword_1EB5F5BD0 = v0;
  return result;
}

uint64_t sub_1AEA6C010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEAFCC70;
  if (qword_1EB5EA508 != -1)
  {
    swift_once();
  }

  Selector.expects(_:atIndex:)(v1, 0, sel_childAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 32);

  Selector.expects(_:atIndex:)(v2, 1, sel_childAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 64);

  Selector.expects(_:atIndex:)(v3, 2, sel_childAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 96);

  Selector.expects(_:atIndex:)(v4, 0, sel_parentAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 128);

  Selector.expects(_:atIndex:)(v5, 1, sel_parentAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 160);

  Selector.expects(_:atIndex:)(v6, 2, sel_parentAnalysisChangedWithAnalysis_error_analyzerUUID_, v0 + 192);

  qword_1EB5F5BD8 = v0;
  return result;
}

id sub_1AEA6C188()
{
  if (qword_1EB5EA500 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB5F5BC8;

  return v0;
}

uint64_t sub_1AEA6C20C()
{
  if (qword_1EB5EA510 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AEA6C268(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA6C288, 0, 0);
}

uint64_t sub_1AEA6C288()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AD0);
  *v2 = v0;
  v2[1] = sub_1AEA6C390;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001AEB05E50, sub_1AEA6F8C8, v1, v3);
}

uint64_t sub_1AEA6C390()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AEA6C4C8;
  }

  else
  {

    v2 = sub_1AEA6C4AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA6C4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AEA6C52C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1AEA703D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEA6C6DC;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [a2 fetchAggregateStatsForCallWithReply_];
  _Block_release(v10);
}

uint64_t sub_1AEA6C6DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AEAF951C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1AEA6C784(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[6];
  v11 = *(a3 + 56);
  v12 = sub_1AEAF958C();
  v13 = objc_opt_self();
  v15 = [v13 valueWithSize_];
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v13 valueWithRect_];
  }

  [v3 childFrameDetailsChangedWithAnalyzerUUID:v12 newFrameSize:v15 newRegionOfInterest:v14 newOrientation:v4];
}

uint64_t sub_1AEA6C8E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEA6C95C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B08);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EB5E8B10;
  }

  else
  {
    v2 = &unk_1EB5E8E10;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

void *sub_1AEA6C9D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEA6CB08(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1AEAFA04C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1AEA6CDA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B20);
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

uint64_t sub_1AEA6D07C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AEAF9D7C() + 1) & ~v5;
    do
    {
      v9 = 56 * v6;
      v10 = *(a2 + 48) + 56 * v6;
      v25 = *v10;
      v26 = *(v10 + 8);
      v27 = *(v10 + 16);
      v28 = *(v10 + 24);
      v29 = *(v10 + 32);
      v30 = *(v10 + 40);
      v31 = *(v10 + 48);
      sub_1AEA43B10(*v10, v26, v27, v28, v29, v30, v31);
      sub_1AEA45690();
      v11 = sub_1AEAF953C();
      result = sub_1AEA44C1C(v25, v26, v27, v28, v29, v30, v31);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = v13 + 56 * v3;
        v15 = (v13 + v9);
        if (56 * v3 < v9 || v14 >= v15 + 56 || v3 != v6)
        {
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          *(v14 + 48) = *(v15 + 6);
          *(v14 + 16) = v17;
          *(v14 + 32) = v18;
          *v14 = v16;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AEA6D27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1AEA6CB08(v18, a4 & 1, a5);
      v13 = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1AEAFA31C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1AEA6D444(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void *sub_1AEA6D444(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1AEAFA03C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1AEA6D5A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B20);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_1AEA43B10(v21, v22, v23, v24, v25, v26, v29);
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

uint64_t sub_1AEA6D734(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1AEA6DD14(v12, v7, v5, a3);
  result = MEMORY[0x1B270E620](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1AEA6D8A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v30 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v32 = v9;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(**(*(v3 + 56) + 8 * v13) + 120);

    v19 = v17(v18);
    if (v19)
    {
      v26 = v19;

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v27 = __OFADD__(v30++, 1);
      v9 = v32;
      v8 = v33;
      if (v27)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1ED98AC70 != -1)
      {
        swift_once();
      }

      v20 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v20, qword_1ED98DD68);

      v21 = sub_1AEAF8FCC();
      v22 = sub_1AEAF9A8C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1AEA45C14(v15, v16, &v34);
        _os_log_impl(&dword_1AEA3F000, v21, v22, "Removed analyzer: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1B270E620](v24, -1, -1);
        v25 = v23;
        v3 = a3;
        MEMORY[0x1B270E620](v25, -1, -1);
      }

      v9 = v32;
      v8 = v33;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_1AEA6DD9C(a1, a2, v30, v3, &qword_1EB5E8AE0);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1AEA6DB7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(**(*(a3 + 56) + 8 * v13) + 272);

    v16 = v14(v15);

    if (v16 <= 0)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_1AEA6DD9C(v19, a2, v20, a3, &qword_1EB5E8B40);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1AEA6DD9C(v19, a2, v20, a3, &qword_1EB5E8B40);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1AEA6DD14(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1AEA6DD9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = a4;
  v6 = a3;
  if (*(a4 + 16) == a3)
  {

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_1AEAFA06C();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  v33 = v5;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = *(v5 + 56);
    v19 = (*(v5 + 48) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v18 + 8 * v17);
    sub_1AEAFA3BC();

    sub_1AEAF95DC();
    result = sub_1AEAFA3FC();
    v23 = -1 << *(v10 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v10 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v10 + 56) + 8 * v26) = v22;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    v5 = v33;
    if (!v6)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
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

void (*sub_1AEA6DFD8(uint64_t *a1, __int128 *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AEA6E3A4(v5);
  v5[9] = sub_1AEA6E0DC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AEA6E07C;
}

void sub_1AEA6E07C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1AEA6E0DC(uint64_t *a1, __int128 *a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 64) = a2;
  *(v8 + 72) = v3;
  v10 = *v3;
  v11 = sub_1AEA4547C(a2);
  *(v9 + 49) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1AEA6D5A4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1AEA6CDA8(v16, a3 & 1);
    v11 = sub_1AEA4547C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AEAFA31C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 80) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 56) = v21;
  return sub_1AEA6E224;
}

void sub_1AEA6E224(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  LOBYTE(v4) = *(*a1 + 49);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 80);
    v6 = **(v2 + 72);
    if (*(*a1 + 49))
    {
      goto LABEL_9;
    }

    v7 = *(v2 + 64);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v8 = v6[6] + 56 * v5;
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    *(v8 + 48) = *(v7 + 48);
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    *v8 = v9;
    v4 = v6[7];
    *(v4 + 8 * v5) = v3;
    v12 = v6[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v23 = *(v2 + 64);
      v6[2] = v14;
      sub_1AEA44638(v23, v2);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v15 = *(v2 + 80);
      v16 = **(v2 + 72);
      sub_1AEA44BC8(*(v16 + 48) + 56 * v15);
      sub_1AEA6D07C(v15, v16);
    }

    goto LABEL_14;
  }

  v5 = *(v2 + 80);
  v6 = **(v2 + 72);
  if ((v4 & 1) == 0)
  {
    v17 = *(v2 + 64);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v18 = v6[6] + 56 * v5;
    v19 = *v17;
    v20 = v17[1];
    v21 = v17[2];
    *(v18 + 48) = *(v17 + 48);
    *(v18 + 16) = v20;
    *(v18 + 32) = v21;
    *v18 = v19;
    *(v6[7] + 8 * v5) = v3;
    v22 = v6[2];
    v13 = __OFADD__(v22, 1);
    v14 = v22 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1AEA6E3A4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AEA6E3CC;
}

void *sub_1AEA6E3D8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AEA6E41C@<X0>(void *a1@<X8>)
{
  os_unfair_lock_assert_owner((*(v1 + 56) + 16));
  sub_1AEA66BEC();
  *a1 = *(v1 + 40);
}

void *sub_1AEA6E460@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1AEA6E4A4(void *a1@<X8>)
{
  os_unfair_lock_assert_owner((*(v1 + 56) + 16));
  sub_1AEA66BEC();
  *a1 = *(*(v1 + 40) + 16);
}

uint64_t sub_1AEA6E628(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AEA6E71C;

  return v5(v2 + 32);
}

uint64_t sub_1AEA6E71C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1AEA6E844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8B40);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AEA61F84(v5, v6, sub_1AEA61BA0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AEA6E95C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1AEA61F84(v6, v5, sub_1AEA61BA0), (v9 & 1) != 0))
  {
    *a2 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    type metadata accessor for Call();
    v11 = swift_allocObject();

    sub_1AEA65208(v6, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    sub_1AEA6D27C(v11, v6, v5, isUniquelyReferenced_nonNull_native, &qword_1EB5E8B40);

    *a1 = v13;
    *a2 = v11;
  }

  return result;
}

void sub_1AEA6EBE0(void *a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a1;
    ResumedConnection.init(existingConnection:alreadyResumed:)(v6, 1, &type metadata for VideoStreamAnalyzerConnectionConfig, &off_1EE7C3600, &aBlock);
    v7 = *(v5 + OBJC_IVAR____TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher__downConnections);
    v26[2] = v7;
    v8 = aBlock;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A78);
    Atomic.wrappedValue.getter(&aBlock);
    v10 = aBlock;
    v19 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AEA6C9D4(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AEA6C9D4((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v10[v12 + 4] = v8;
    v26[0] = v10;
    v26[1] = v7;
    Atomic.wrappedValue.setter(v26, v9);

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v6;
    v24 = sub_1AEA7081C;
    v25 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1AEA4DB50;
    v23 = &block_descriptor_101;
    v15 = _Block_copy(&aBlock);
    v16 = v6;
    v17 = v8;

    [v17 setInvalidationHandler_];
    _Block_release(v15);

    v24 = sub_1AEA6A744;
    v25 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1AEA4DB50;
    v23 = &block_descriptor_104;
    v18 = _Block_copy(&aBlock);
    [v17 setInterruptionHandler_];
    _Block_release(v18);

    *v19 = v5;
  }

  else
  {
    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA707D4(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    swift_willThrow();
  }
}

void sub_1AEA6EF28(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_40:
    if (qword_1EB5EA518 != -1)
    {
      swift_once();
    }

    v73 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v73, qword_1EB5F5BE0);

    v74 = sub_1AEAF8FCC();
    v75 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      v78 = sub_1AEA49EF8(0, &qword_1EB5E8AF8);
      v79 = MEMORY[0x1B270CC60](v5, v78);
      v81 = sub_1AEA45C14(v79, v80, &aBlock);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_1AEA3F000, v74, v75, "Failed to connect to client %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1B270E620](v77, -1, -1);
      MEMORY[0x1B270E620](v76, -1, -1);
    }

    sub_1AEA7050C();
    swift_allocError();
    *v82 = 8;
    swift_willThrow();
    return;
  }

LABEL_3:
  sub_1AEA49EF8(0, &qword_1EB5E8AF8);
  v100 = v5 & 0xC000000000000001;
  v86 = v5 & 0xFFFFFFFFFFFFFF8;
  v97 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xB0);
  v8 = 4;
  v92 = v6;
  v94 = v5;
  v90 = v7;
  while (1)
  {
    v9 = v8 - 4;
    if (v100)
    {
      v10 = MEMORY[0x1B270D3B0](v8 - 4, v5);
    }

    else
    {
      if (v9 >= *(v86 + 16))
      {
        goto LABEL_38;
      }

      v10 = *(v5 + 8 * v8);
    }

    v11 = v10;
    v12 = v8 - 3;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v7 = sub_1AEAF9FFC();
      if (!v7)
      {
        goto LABEL_40;
      }

      goto LABEL_3;
    }

    v13 = v97();
    v14 = sub_1AEAF9C0C();

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_5:
    ++v8;
    if (v12 == v7)
    {
      goto LABEL_40;
    }
  }

  v15 = v11;
  ResumedConnection.init(listenerEndpoint:)(v15, &type metadata for VideoStreamAnalyzerConnectionConfig, &off_1EE7C3600, &aBlock);
  v16 = aBlock;
  aBlock = v6;
  v17 = v6;
  v18 = v16;
  static ConnectionConfig.exportObject(_:_:)(&aBlock, v18, &type metadata for VideoStreamAnalyzerConnectionConfig, &off_1EE7C3600);

  v108 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
  v20 = v4;
  ResumedConnection.withSyncProxy(_:_:)("connect(to:)", 12, 2, sub_1AEA6AA1C, 0, v19);
  if (v4)
  {
    if (qword_1EB5EA518 != -1)
    {
      swift_once();
    }

    v21 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v21, qword_1EB5F5BE0);
    v22 = v4;
    v23 = sub_1AEAF8FCC();
    v24 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v88 = v15;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1AEA3F000, v23, v24, "Failed to establish connection with client: %@", v25, 0xCu);
      sub_1AEA41FAC(v26, &unk_1EB5E9C00);
      v29 = v26;
      v15 = v88;
      MEMORY[0x1B270E620](v29, -1, -1);
      MEMORY[0x1B270E620](v25, -1, -1);
    }

    aBlock = v18;
    ResumedConnection.invalidate()();

    v4 = 0;
    v6 = v92;
    v5 = v94;
    v7 = v90;
    goto LABEL_5;
  }

  v89 = v15;
  [v18 auditToken];
  v98 = HIDWORD(aBlock);
  v99 = aBlock;
  v101 = v103;
  v95 = v104;
  v96 = HIDWORD(v103);
  v30 = v103 | (HIDWORD(v103) << 32);
  v91 = v105;
  v93 = HIDWORD(v104);
  v31 = v104 | (HIDWORD(v104) << 32);
  v87 = HIDWORD(v105);
  v32 = (v105 | (HIDWORD(v105) << 32));
  v33 = aBlock | (HIDWORD(aBlock) << 32);
  static Entitlements.Source.auditToken(_:)(v33, v30, v31, v32, v111);
  v34 = *a1;
  if (*(*a1 + 16) && (v35 = sub_1AEA4547C(v111), (v36 & 1) != 0))
  {
    v37 = *(*(v34 + 56) + 8 * v35);

    sub_1AEA44BC8(v111);
    v85 = *(v37 + 16);

    if (v85)
    {
      aBlock = v18;
      ResumedConnection.invalidate()();

      v39 = v98;
      v38 = v99;
      v40 = v101;
      v41 = v95;
      v42 = v96;
      v44 = v91;
      v43 = v93;
      v45 = v87;
LABEL_36:
      *a2 = v38;
      a2[1] = v39;
      a2[2] = v40;
      a2[3] = v42;
      a2[4] = v41;
      a2[5] = v43;
      a2[6] = v44;
      a2[7] = v45;
      return;
    }
  }

  else
  {
    sub_1AEA44BC8(v111);
  }

  static Entitlements.Source.auditToken(_:)(v33, v30, v31, v32, v109);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = *a1;
  v47 = aBlock;
  v49 = sub_1AEA4547C(v109);
  v50 = v47[2];
  v51 = (v48 & 1) == 0;
  v52 = v50 + v51;
  if (__OFADD__(v50, v51))
  {
    __break(1u);
    goto LABEL_46;
  }

  v53 = v48;
  if (v47[3] >= v52)
  {
    LODWORD(v31) = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AEA6D5A4();
      v47 = aBlock;
    }

LABEL_29:
    *a1 = v47;
    if ((v53 & 1) == 0)
    {
      v47[(v49 >> 6) + 8] |= 1 << v49;
      v56 = v47[6] + 56 * v49;
      v57 = v109[0];
      v58 = v109[1];
      v59 = v109[2];
      *(v56 + 48) = v110;
      *(v56 + 16) = v58;
      *(v56 + 32) = v59;
      *v56 = v57;
      *(v47[7] + 8 * v49) = MEMORY[0x1E69E7CC0];
      v60 = v47[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        __break(1u);
        goto LABEL_48;
      }

      v47[2] = v62;
      sub_1AEA44638(v109, &aBlock);
    }

    v33 = v47[7];
    v32 = *(v33 + 8 * v49);
    v47 = v18;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v49) = v32;
    if (v63)
    {
LABEL_33:
      v65 = v32[2];
      v64 = v32[3];
      if (v65 >= v64 >> 1)
      {
        *(v33 + 8 * v49) = sub_1AEA6C9D4((v64 > 1), v65 + 1, 1, v32);
      }

      sub_1AEA44BC8(v109);
      v66 = *(v33 + 8 * v49);
      *(v66 + 16) = v65 + 1;
      *(v66 + 8 * v65 + 32) = v47;
      v106 = sub_1AEA6ABD8;
      v107 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v103 = 1107296256;
      v104 = sub_1AEA4DB50;
      v105 = &block_descriptor_78;
      v67 = _Block_copy(&aBlock);
      v68 = v47;
      [v68 setInterruptionHandler_];
      _Block_release(v67);

      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v99;
      *(v70 + 28) = v98;
      *(v70 + 32) = v31;
      v41 = v95;
      v42 = v96;
      *(v70 + 36) = v96;
      *(v70 + 40) = v95;
      v44 = v91;
      v43 = v93;
      *(v70 + 44) = v93;
      *(v70 + 48) = v91;
      v45 = v87;
      *(v70 + 52) = v87;
      *(v70 + 56) = v68;
      v106 = sub_1AEA70560;
      v107 = v70;
      aBlock = MEMORY[0x1E69E9820];
      v103 = 1107296256;
      v104 = sub_1AEA4DB50;
      v105 = &block_descriptor_85;
      v71 = _Block_copy(&aBlock);
      v72 = v68;

      [v72 setInvalidationHandler_];

      _Block_release(v71);
      v38 = v99;
      v40 = v101;
      v39 = v98;
      goto LABEL_36;
    }

LABEL_46:
    v32 = sub_1AEA6C9D4(0, v32[2] + 1, 1, v32);
    *(v33 + 8 * v49) = v32;
    goto LABEL_33;
  }

  sub_1AEA6CDA8(v52, isUniquelyReferenced_nonNull_native);
  v47 = aBlock;
  v54 = sub_1AEA4547C(v109);
  LODWORD(v31) = v101;
  if ((v53 & 1) == (v55 & 1))
  {
    v49 = v54;
    goto LABEL_29;
  }

LABEL_48:
  sub_1AEAFA31C();
  __break(1u);
}

unint64_t sub_1AEA6F8D4()
{
  result = qword_1EB5E8AD8;
  if (!qword_1EB5E8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8AD8);
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitivityAnalysis(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SensitivityAnalysis(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1AEA6FB6C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8A98);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AEA6FC3C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1AEA6C9D4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1AEA6FB6C(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1AEA6FCFC(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    while (v3[v7 + 4] != a2)
    {
      if (v4 == ++v7)
      {
        return;
      }
    }

    if (!v2)
    {
      if (!__OFADD__(v7, 1))
      {
        if (v7 + 1 == v4)
        {
          return;
        }

        for (i = v7 + 5; ; ++i)
        {
          v10 = i - 4;
          if (i - 4 >= v4)
          {
            break;
          }

          v11 = v3[i];
          if (v11 != a2)
          {
            if (v10 != v7)
            {
              if (v7 >= v4)
              {
                goto LABEL_24;
              }

              v12 = v3[v7 + 4];
              v13 = v11;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_1AEA6E830(v3);
              }

              if (v7 >= v3[2])
              {
                goto LABEL_25;
              }

              v14 = &v3[v7];
              v15 = v14[4];
              v14[4] = v13;

              if (v10 >= v3[2])
              {
                goto LABEL_26;
              }

              v16 = v3[i];
              v3[i] = v12;

              *a1 = v3;
            }

            ++v7;
          }

          v4 = v3[2];
          v9 = i - 3;
          if (v9 == v4)
          {
            return;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1AEA6FE68(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v50 = sub_1AEAF8FEC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AEAC8DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AC0);
  v4 = sub_1AEAFA03C();
  v5 = v4;
  v6 = 0;
  v8 = v3 + 64;
  v7 = *(v3 + 64);
  v52 = v4;
  v53 = v3;
  v9 = 1 << *(v3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v51 = v4 + 64;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v54 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v6 << 6);
      v17 = *(v53 + 56);
      v18 = (*(v53 + 48) + 16 * v16);
      v19 = v18[1];
      v55 = *v18;
      v20 = *(v17 + 8 * v16);
      sub_1AEAF8AEC();
      swift_allocObject();

      sub_1AEAF8ADC();
      v56 = v20;
      type metadata accessor for CoreAnalyticsManager.StreamStats();
      sub_1AEA707D4(&qword_1EB5E8AC8, type metadata accessor for CoreAnalyticsManager.StreamStats);
      v21 = sub_1AEAF8ACC();
      v23 = v22;

      v5 = v52;
      *(v51 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v24 = (v5[6] + 16 * v16);
      *v24 = v55;
      v24[1] = v19;
      v25 = (v5[7] + 16 * v16);
      *v25 = v21;
      v25[1] = v23;
      v26 = v5[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v5[2] = v28;
      v11 = v54;
      if (!v54)
      {
        goto LABEL_5;
      }
    }

LABEL_21:
    __break(1u);
    swift_once();
    __swift_project_value_buffer(v50, qword_1EB5F5BE0);
    v37 = 0;
    v38 = sub_1AEAF8FCC();
    v39 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = 0;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_1AEA3F000, v38, v39, "Failed to encode analytics data: %@", v40, 0xCu);
      sub_1AEA41FAC(v41, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v41, -1, -1);
      MEMORY[0x1B270E620](v40, -1, -1);
    }

    v44 = 0;
    v45 = sub_1AEAF8C4C();
    (*(v49 + 16))(v49, 0, v45);
  }

  else
  {
LABEL_5:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v6 >= v12)
      {
        break;
      }

      v15 = *(v8 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v54 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    v29 = sub_1AEA8BFEC();
    v31 = v47;
    v30 = v48;
    v32 = v50;
    (*(v48 + 16))(v47, v29, v50);

    v33 = sub_1AEAF8FCC();
    v34 = sub_1AEAF9A8C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v5[2];

      _os_log_impl(&dword_1AEA3F000, v33, v34, "Sending analytics data for %ld streams.", v35, 0xCu);
      MEMORY[0x1B270E620](v35, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v31, v32);
    v36 = sub_1AEAF94FC();
    (*(v49 + 16))(v49, v36, 0);
  }
}

uint64_t sub_1AEA703D4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AE8);
  v8 = a2;
  v9 = a1;

  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AD0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  Result.init(success:failure:)(&v9, &v8, v5, v6, MEMORY[0x1E69E7288], &v10);
  v9 = v10;
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AE8);
    return sub_1AEAF978C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8AE8);
    return sub_1AEAF979C();
  }
}

unint64_t sub_1AEA7050C()
{
  result = qword_1EB5E8B18;
  if (!qword_1EB5E8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8B18);
  }

  return result;
}