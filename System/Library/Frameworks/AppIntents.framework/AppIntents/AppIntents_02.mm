__n128 OUTLINED_FUNCTION_37_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  v13[1] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_12()
{

  return sub_18F12310C(v0, (v1 - 208));
}

uint64_t OUTLINED_FUNCTION_37_13()
{
}

unint64_t OUTLINED_FUNCTION_37_15()
{
  v4 = v0[106];
  v0[107] = v0[105];
  v0[108] = v4;
  v0[83] = v1;
  v0[84] = v2;

  return sub_18F12A000();
}

uint64_t *OUTLINED_FUNCTION_37_16(uint64_t a1)
{
  *(v1 + 192) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 160));
}

uint64_t OUTLINED_FUNCTION_37_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_37_21(__n128 a1)
{
  *v1 = a1;
  v1[7] = a1;
  v1[8].n128_u8[0] = 0;
}

_OWORD *OUTLINED_FUNCTION_37_22()
{
  *(v2 - 144) = v0;

  return sub_18F118710((v2 - 176), (v1 + 8));
}

uint64_t OUTLINED_FUNCTION_37_25()
{

  return sub_18F5229DC();
}

uint64_t OUTLINED_FUNCTION_37_27(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_37_31@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  *(v2 - 176) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);

  return static AppValue._identifier.getter(a10, v12);
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  sub_18F0FF968((v1 - 176), v1 - 128);

  return sub_18F11D920(v0);
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return sub_18F5220FC();
}

uint64_t OUTLINED_FUNCTION_36_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_36_15()
{
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_36_16()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_21()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 424);

  return sub_18F52289C();
}

void OUTLINED_FUNCTION_36_22()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_36_23(uint64_t result)
{
  v1[4] = result;
  *v1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_25()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
}

void OUTLINED_FUNCTION_36_27()
{
  *(v3 - 120) = v2;
  *(v3 - 112) = v1;
  *(v0 + 1416) = *(v0 + 1032);
}

uint64_t OUTLINED_FUNCTION_36_28(_OWORD **a1)
{
  sub_18F3B3EF4(a1, v1);
}

void OUTLINED_FUNCTION_36_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 232) = a5;
  *(v5 - 320) = a4;
  *(v5 - 216) = a3;
  *(v5 - 240) = a2;
}

uint64_t OUTLINED_FUNCTION_36_31()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_36_32@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  *(v2 - 176) = v1;
  return v2 - 128;
}

uint64_t sub_18F11A2D8()
{
  v1 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_id;
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent);

  swift_unknownObjectRelease();
  sub_18F0EF1A8(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent + 8, &qword_1EACCFD68);
  return v0;
}

uint64_t sub_18F11A394()
{
  sub_18F11A2D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_85_2()
{
}

uint64_t OUTLINED_FUNCTION_85_6()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = 0;
  return v1 + 8;
}

uint64_t OUTLINED_FUNCTION_85_7()
{
}

uint64_t OUTLINED_FUNCTION_85_8()
{

  return sub_18F52163C();
}

uint64_t OUTLINED_FUNCTION_85_9()
{

  return sub_18F0FA038(v0 + 168, v1);
}

void OUTLINED_FUNCTION_85_12()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_85_14()
{
  v1 = *(v0 + 480);
  sub_18F0FD0B4((v0 + 296), v0 + 256);

  return sub_18F464FD4(v1, (v0 + 432));
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return sub_18F2B743C((v1 + 112), v0);
}

uint64_t OUTLINED_FUNCTION_81_3()
{

  return sub_18F0F9F88(v1 + 104, v1 + 144, v0);
}

void OUTLINED_FUNCTION_81_4()
{
  v2 = v1 - 240;
  *(v2 + 128) = v0;
  *(v1 - 104) = 1;
  *(v2 + 144) = 0;
  *(v1 - 88) = 2;
  *(v1 - 113) = 1;
}

uint64_t OUTLINED_FUNCTION_81_5(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_81_6()
{

  return sub_18F52165C();
}

uint64_t OUTLINED_FUNCTION_81_10()
{

  return sub_18F522D5C();
}

uint64_t type metadata accessor for PreparedIntent()
{
  result = qword_1ED6FDC80;
  if (!qword_1ED6FDC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_47_7()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_9()
{
}

uint64_t OUTLINED_FUNCTION_47_10()
{
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_18F520C8C();
}

uint64_t OUTLINED_FUNCTION_47_17()
{

  return sub_18F0F713C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_18()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_47_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = v23;
  result = *(v22 + 8);
  *(v24 - 128) = &a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_20()
{

  return swift_dynamicCast();
}

uint64_t sub_18F11A920()
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_108();
  sub_18F0EF200();
  if (v3)
  {
    sub_18F0FD0B4(&v2, v4);
    __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
    v0 = OUTLINED_FUNCTION_56();
    sub_18F238088(v0);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_18F0EF1A8(&v2, &qword_1EACD0620);
  }

  return OUTLINED_FUNCTION_22();
}

char *sub_18F11A9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18F11AB04()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2F90);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_18F11AB34(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 96))();

  return sub_18F52307C();
}

Swift::Void __swiftcall AppContext.removeAllDeferredOutputs(for:)(NSXPCConnection a1)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  sub_18F52245C();
  sub_18F11ACB0();
}

void sub_18F11ACB0()
{
  OUTLINED_FUNCTION_21_42();
  os_unfair_lock_lock(v1 + 52);
  v3 = sub_18F11AD48(v5, v2);
  if (*v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B78);
    sub_18F52171C();
  }

  (v3)(v5, 0);
  os_unfair_lock_unlock(v0 + 52);
}

void (*sub_18F11AD48(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_18F11ADAC(v4, a2);
  return sub_18F11F220;
}

void (*sub_18F11ADAC(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_18F11AF64(v4);
  v4[9] = sub_18F11AE3C(v4 + 4, a2);
  return sub_18F11F26C;
}

void (*sub_18F11AE3C(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = *v2;
  v8 = sub_18F0EFA5C(a2);
  *(v6 + 32) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4870);
  if (sub_18F5229DC())
  {
    v12 = sub_18F0EFA5C(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[3] = v10;
  if (v11)
  {
    v14 = *(*(*v3 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *v6 = v14;
  return sub_18F11F2CC;
}

uint64_t (*sub_18F11AF64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_18F11F38C;
}

id CSSearchableItem.init<A>(appEntity:priority:)(void *a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v138 = a2;
  v137 = sub_18F5208DC();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v136 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8_14(&v133 - v11);
  v143 = sub_18F5208EC();
  OUTLINED_FUNCTION_11_0();
  v155 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v135 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = OUTLINED_FUNCTION_8_14(&v133 - v17);
  v142 = type metadata accessor for IntentPerson(v18);
  OUTLINED_FUNCTION_11_0();
  v139 = v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v151 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_14(&v133 - v23);
  v24 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v141 = a4;
  v29 = *(a4 + 8);
  v154 = a3;
  v152 = v29;
  v153 = a1;
  AppEntity.fullyQualifiedIdentifier.getter(a3, v29, v169);
  v30 = v169[0];
  v31 = v169[2];
  v32 = *(v169[1] + 8);
  static AppValue._identifier.getter(v169[0], v32);
  if (dynamic_cast_existential_1_conditional(v30))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      goto LABEL_82;
    }

    goto LABEL_3;
  }

  v144 = 0;
LABEL_5:
  v36 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F166ED0();
  v38 = v37;
  v39 = [v37 description];

  if (!v39)
  {
    sub_18F5218DC();
    v39 = sub_18F5218AC();
  }

  v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v41 = v152;
  v42 = OUTLINED_FUNCTION_6_19(v172);
  static AppValue._identifier.getter(v42, v43);
  v44 = sub_18F5218AC();

  v45 = (*(v141 + 16))(v31);
  v46 = [v40 initWithUniqueIdentifier:v39 domainIdentifier:v44 attributeSet:v45];

  v146 = v46;
  v47 = [v46 attributeSet];
  (*(*(*(v41 + 16) + 8) + 16))(v31);
  v48 = (v28 + *(v24 + 28));
  v49 = *v48;
  v50 = v48[1];
  sub_18F11D008(*v48, v50);
  sub_18F11CD84(v28, type metadata accessor for DisplayRepresentation);
  if (v50 >> 60 == 15)
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_18F520D2C();
    sub_18F190748(v49, v50);
  }

  [v47 setCachedViewDataSafe_];

  v32 = v154;
  v30 = v153;
  v52 = sub_18F11D920(v154);
  v53 = v52;
  v150 = *(v52 + 16);
  if (v150)
  {
    v28 = 0;
    v148 = v52 + 32;
    v147 = v32 - 8;
    v134 = (v155 + 4);
    v133 = (v155 + 1);
    v145 = MEMORY[0x1E69E7CC0];
    v149 = v52;
    while (1)
    {
      if (v28 >= *(v53 + 16))
      {
        __break(1u);
LABEL_82:
        OUTLINED_FUNCTION_12_5();
        swift_once();
LABEL_3:

        v33 = static AppValue._identifier.getter(v30, v32);
        v34 = sub_18F164CE8(v33);
        v144 = 0;

        v35 = v34;
        sub_18F1AF344();

        goto LABEL_5;
      }

      sub_18F0FD724(v148 + 40 * v28, v169);
      v54 = v170;
      v55 = v171;
      __swift_project_boxed_opaque_existential_1Tm(v169, v170);
      v55[9](&v166, v54, v55);
      v156 = v28;
      if (!*(&v167 + 1))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
      if ((swift_dynamicCast() & 1) == 0)
      {
        AssociatedConformanceWitness = 0;
        v162 = 0u;
        v163 = 0u;
        goto LABEL_23;
      }

      if (!*(&v163 + 1))
      {
        goto LABEL_23;
      }

      sub_18F0FD0B4(&v162, &v166);
      v56 = *(&v167 + 1);
      v57 = v168;
      __swift_project_boxed_opaque_existential_1Tm(&v166, *(&v167 + 1));
      AppEntity.fullyQualifiedIdentifier.getter(v56, v57, &v162);
      v58 = v162;
      v59 = *(*(&v162 + 1) + 8);
      static AppValue._identifier.getter(v162, v59);
      if (dynamic_cast_existential_1_conditional(v58))
      {
        if (qword_1ED6FF6D8 != -1)
        {
          OUTLINED_FUNCTION_12_5();
          swift_once();
        }

        v60 = static AppValue._identifier.getter(v58, v59);
        v61 = v144;
        v62 = sub_18F164CE8(v60);
        if (v61)
        {

          v144 = 0;
        }

        else
        {
          v111 = v62;
          v144 = 0;

          v112 = v111;
          sub_18F1AF344();
        }
      }

      objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F166ED0();
      v114 = v113;
      v115 = [v113 description];

      v116 = sub_18F5218DC();
      v118 = v117;

      v119 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F141818();
        v119 = v125;
      }

      v32 = v154;
      v120 = *(v119 + 16);
      if (v120 >= *(v119 + 24) >> 1)
      {
        sub_18F141818();
        v119 = v126;
      }

      *(v119 + 16) = v120 + 1;
      v145 = v119;
      v121 = v119 + 16 * v120;
      *(v121 + 32) = v116;
      *(v121 + 40) = v118;
      __swift_destroy_boxed_opaque_existential_1Tm(&v166);
LABEL_24:
      v63 = v170;
      v64 = v171;
      __swift_project_boxed_opaque_existential_1Tm(v169, v170);
      *(&v167 + 1) = v32;
      v168 = v152;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v166);
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v153, v32);
      v66 = v64[13];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v68 = sub_18F52254C();
      v155 = &v133;
      OUTLINED_FUNCTION_11_0();
      v70 = v69;
      MEMORY[0x1EEE9AC00](v71);
      v73 = &v133 - v72;
      v66(&v166, v63, v64);
      __swift_destroy_boxed_opaque_existential_1Tm(&v166);
      if (__swift_getEnumTagSinglePayload(v73, 1, AssociatedTypeWitness) == 1)
      {
        (*(v70 + 8))(v73, v68);
        v166 = 0u;
        v167 = 0u;
        v168 = 0;
      }

      else
      {
        *(&v163 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v74 = __swift_allocate_boxed_opaque_existential_1(&v162);
        (*(*(AssociatedTypeWitness - 8) + 32))(v74, v73, AssociatedTypeWitness);
        sub_18F11E26C();
        __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      }

      v24 = v151;
      v31 = v171;
      __swift_project_boxed_opaque_existential_1Tm(v169, v170);
      if (!sub_18F11E084())
      {
        goto LABEL_34;
      }

      v75 = sub_18F52112C();
      if (!v76)
      {

LABEL_34:
        v31 = v170;
        v30 = __swift_project_boxed_opaque_existential_1Tm(v169, v170);
        v83 = sub_18F11E180();
        if (v83)
        {
          v30 = v83;
          v84 = OUTLINED_FUNCTION_11_12(v83, sel_attributeSet);
          OUTLINED_FUNCTION_12_17();
          v32 = v154;
          v53 = v149;
          v85 = v156;
          if (*(&v163 + 1))
          {
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1498);
            if (swift_dynamicCast())
            {
              v86 = v159;
            }

            else
            {
              v86 = 0;
            }
          }

          else
          {
            OUTLINED_FUNCTION_7_16();
            v86 = 0;
          }

          [v84 setValue:v86 forCustomKey:{v30, v133}];

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9_13(&v166);
          goto LABEL_74;
        }

LABEL_72:
        sub_18F0EF1A8(&v166, &qword_1EACD0620);
        goto LABEL_73;
      }

      v77 = v75;
      sub_18F102F54(&v166, v157);
      if (!v158)
      {
        OUTLINED_FUNCTION_9_13(v157);
        v159 = 0u;
        v160 = 0u;
        v161 = 0;
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD14C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v161 = 0;
        v160 = 0u;
        v159 = 0u;
LABEL_43:
        sub_18F0EF1A8(&v159, &qword_1EACD14A0);
        OUTLINED_FUNCTION_12_17();
        if (*(&v163 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD14B0);
          if (swift_dynamicCast())
          {
            v87 = v159;
            v88 = *(v159 + 16);
            if (v88)
            {
              v155 = v77;
              *&v162 = MEMORY[0x1E69E7CC0];
              sub_18F5228CC();
              v89 = v87 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
              v90 = *(v139 + 72);
              do
              {
                sub_18F1CC8DC(v89, v24);
                v31 = sub_18F1DA5B8();
                OUTLINED_FUNCTION_3_17();
                sub_18F52289C();
                sub_18F5228DC();
                sub_18F5228EC();
                sub_18F5228AC();
                v89 += v90;
                --v88;
              }

              while (v88);
            }

            v123 = OUTLINED_FUNCTION_11_12(v122, sel_attributeSet);
            sub_18F1CC940();
            v124 = sub_18F521C8C();

            v30 = OUTLINED_FUNCTION_14_16();

            [v123 setAttribute:v124 forKey:v30];

            goto LABEL_71;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
        }

        OUTLINED_FUNCTION_12_17();
        if (*(&v163 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
          OUTLINED_FUNCTION_6_19(v165);
          v91 = swift_dynamicCast();
          OUTLINED_FUNCTION_10_15(v91);
          if (!v92)
          {
            v24 = v140;
            v93 = sub_18F1CC878(v31, v140);
            v31 = OUTLINED_FUNCTION_11_12(v93, sel_attributeSet);
            v30 = sub_18F1DA5B8();
            v94 = OUTLINED_FUNCTION_14_16();

            [v31 setAttribute:v30 forKey:v94];

            OUTLINED_FUNCTION_3_17();
            goto LABEL_72;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v95 = OUTLINED_FUNCTION_6_19(v165);
          __swift_storeEnumTagSinglePayload(v95, 1, 1, v142);
        }

        sub_18F0EF1A8(v31, &qword_1EACD0318);
        OUTLINED_FUNCTION_12_17();
        if (*(&v163 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
          OUTLINED_FUNCTION_6_19(&v163 + 8);
          v96 = swift_dynamicCast();
          OUTLINED_FUNCTION_10_15(v96);
          if (!v92)
          {
            v97 = v135;
            v98 = (*v134)(v135, v31, v143);
            v31 = OUTLINED_FUNCTION_11_12(v98, sel_attributeSet);
            v24 = v77;
            sub_18F5208CC();
            sub_18F1CC820();
            sub_18F521ADC();
            v99 = sub_18F5218AC();

            v30 = sub_18F5218AC();

            [v31 setAttribute:v99 forKey:v30];

            (*v133)(v97, v143);
            goto LABEL_72;
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v100 = OUTLINED_FUNCTION_6_19(&v163 + 8);
          __swift_storeEnumTagSinglePayload(v100, 1, 1, v143);
        }

        v101 = sub_18F0EF1A8(v31, &unk_1EACD1480);
        v30 = OUTLINED_FUNCTION_11_12(v101, sel_attributeSet);
        OUTLINED_FUNCTION_12_17();
        v102 = *(&v163 + 1);
        if (*(&v163 + 1))
        {
          __swift_project_boxed_opaque_existential_1Tm(&v162, *(&v163 + 1));
          OUTLINED_FUNCTION_11_0();
          v104 = v103;
          MEMORY[0x1EEE9AC00](v105);
          OUTLINED_FUNCTION_4();
          v108 = v107 - v106;
          (*(v104 + 16))(v107 - v106);
          v109 = sub_18F522D4C();
          v110 = *(v104 + 8);
          v24 = v104 + 8;
          v110(v108, v102);
          __swift_destroy_boxed_opaque_existential_1Tm(&v162);
        }

        else
        {
          v109 = 0;
        }

        v31 = OUTLINED_FUNCTION_14_16();

        [v30 setAttribute:v109 forKey:v31];

        swift_unknownObjectRelease();
LABEL_71:

        goto LABEL_72;
      }

      if (!*(&v160 + 1))
      {
        goto LABEL_43;
      }

      v78 = sub_18F0FD0B4(&v159, &v162);
      v79 = OUTLINED_FUNCTION_11_12(v78, sel_attributeSet);
      v80 = *(&v163 + 1);
      v81 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1Tm(&v162, *(&v163 + 1));
      (*(v81 + 8))(v80, v81);
      v30 = sub_18F521FDC();
      v82 = OUTLINED_FUNCTION_14_16();

      [v79 setAttribute:v30 forKey:v82];

      OUTLINED_FUNCTION_9_13(&v166);
      __swift_destroy_boxed_opaque_existential_1Tm(&v162);
LABEL_73:
      v32 = v154;
      v53 = v149;
      v85 = v156;
LABEL_74:
      v28 = v85 + 1;
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      if (v28 == v150)
      {

        v127 = v145;
        goto LABEL_77;
      }
    }

    OUTLINED_FUNCTION_9_13(&v166);
    v162 = 0u;
    v163 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_23:
    sub_18F0EF1A8(&v162, &qword_1EACCFCF8);
    goto LABEL_24;
  }

  v127 = MEMORY[0x1E69E7CC0];
LABEL_77:
  v128 = v146;
  if (*(v127 + 16))
  {
    v31 = [v146 attributeSet];
    v129 = sub_18F521C8C();

    [v31 setAttribute:v129 forKey:*MEMORY[0x1E69ACCB0]];
  }

  else
  {
  }

  v130 = [v128 attributeSet];
  v131 = OUTLINED_FUNCTION_6_19(&v171);
  CSSearchableItemAttributeSet.associateAppEntity<A>(_:priority:)(v131, v138, v32, v141);

  (*(*(v32 - 8) + 8))(v31, v32);
  return v128;
}

id IndexedEntity.defaultAttributeSet.getter(uint64_t a1, uint64_t a2)
{
  sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v66[2] = v5;
  v66[3] = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3();
  v66[0] = v6;
  MEMORY[0x1EEE9AC00](v7);
  v66[1] = v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = v66 - v10;
  v78 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = v66 - v14;
  v80 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3();
  v70 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v66 - v20;
  v73 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3();
  v77 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v66 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v66 - v28;
  v30 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v31 = [v30 init];
  v32 = *(*(*(a2 + 8) + 16) + 8);
  v33 = *(v32 + 16);
  v33(a1, v32);
  v71 = v16;
  v67 = *(v16 + 16);
  v68 = v16 + 16;
  v67(v21, v29, v80);
  sub_18F11CEE0(v29, type metadata accessor for DisplayRepresentation);
  v69 = v21;
  sub_18F52193C();
  v34 = sub_18F5218AC();

  v81 = v31;
  v35 = v31;
  v36 = v74;
  [v35 setTitle_];

  v37 = a1;
  v38 = v73;
  v75 = v33;
  v76 = v32;
  v33(v37, v32);
  sub_18F116A7C(&v27[*(v38 + 20)], v36, &qword_1EACCF7A8);
  v39 = v80;
  sub_18F11CEE0(v27, type metadata accessor for DisplayRepresentation);
  if (__swift_getEnumTagSinglePayload(v36, 1, v39) == 1)
  {
    sub_18F0EF1A8(v36, &qword_1EACCF7A8);
  }

  else
  {
    v41 = v70;
    v40 = v71;
    (*(v71 + 32))(v70, v36, v39);
    v67(v69, v41, v39);
    sub_18F52193C();
    v42 = sub_18F5218AC();

    [v81 setSubtitle_];

    (*(v40 + 8))(v41, v39);
  }

  v43 = sub_18F5218AC();
  OUTLINED_FUNCTION_5_63(v43, sel_setContentType_);

  v44 = v77;
  v75(v37, v76);
  v45 = v79;
  sub_18F116A7C(v44 + *(v38 + 24), v79, &qword_1EACD0270);
  sub_18F11CEE0(v44, type metadata accessor for DisplayRepresentation);
  if (__swift_getEnumTagSinglePayload(v45, 1, v78) == 1)
  {
    sub_18F0EF1A8(v45, &qword_1EACD0270);
  }

  else
  {
    sub_18F11CF40(v45, v72);
    v46 = sub_18F11D1B0();
    if (v46)
    {
      v47 = v46;
      v48 = [v46 inImage];
      v49 = [v48 _uri];

      if (v49)
      {
        sub_18F520C3C();

        v50 = OUTLINED_FUNCTION_45();
        v51(v50);
        v52 = sub_18F520BEC();
        OUTLINED_FUNCTION_5_63(v52, sel_setThumbnailURL_);

        v53 = OUTLINED_FUNCTION_45();
        v54(v53);
      }

      else
      {
        v55 = [v47 inImage];
        v56 = [v55 _isSystem];

        if (v56 && (v57 = [v47 inImage], v58 = objc_msgSend(v57, sel__name), v57, v58))
        {
          OUTLINED_FUNCTION_5_63(v59, sel_setThumbnailSymbolName_);
        }

        else
        {
          v60 = [v47 inImage];
          v61 = [v60 _imageData];

          if (!v61)
          {
            OUTLINED_FUNCTION_1_86();

            return v81;
          }

          sub_18F520D4C();

          OUTLINED_FUNCTION_45();
          v62 = sub_18F520D2C();
          OUTLINED_FUNCTION_5_63(v62, sel_setThumbnailData_);

          v63 = OUTLINED_FUNCTION_45();
          sub_18F123A1C(v63, v64);
        }
      }
    }

    OUTLINED_FUNCTION_1_86();
  }

  return v81;
}

uint64_t DisplayRepresentation.Image.init(systemName:isTemplate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_13_54();
  OUTLINED_FUNCTION_13_54();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = xmmword_18F566020;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0x3000000000000000;
  *(a3 + 72) = xmmword_18F566030;
  OUTLINED_FUNCTION_5_85();

  return swift_storeEnumTagMultiPayload();
}

void DisplayRepresentation.init(title:subtitle:image:synonyms:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DisplayRepresentation();
  v11 = v10[5];
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = v10[6];
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v9 + v10[7]) = xmmword_18F540410;
  *(v9 + v10[8]) = 0;
  v21 = v10[9];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  (*(*(v12 - 8) + 32))(v9, v7, v12);
  sub_18F0FF5DC(v5, v9 + v11, &qword_1EACCF7A8);
  sub_18F0FF5DC(v3, v9 + v16, &qword_1EACD0270);
  *(v9 + v21) = v1;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F11CD84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F11CDDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_31();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F11CE30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F11CE88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F11CEE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F11CF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation.Image(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F11CFA4(uint64_t a1, uint64_t a2)
{
  v4 = _s5ImageV7StorageOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F11D008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18F16AAE0(a1, a2);
  }

  return a1;
}

id sub_18F11D01C@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F10D6B0();
  (*(v10 + 16))(v12, a1, a3);
  result = CSSearchableItem.init<A>(appEntity:priority:)(v12, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_18F11D164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 24))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

id sub_18F11D1B0()
{
  v2 = v0;
  v3 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_32();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  _s5ImageV7StorageOMa(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  sub_18F11CFA4(v2, v16 - v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = *v17;
      v65 = *(v17 + 8);
      v66 = v48;
      v49 = *(v17 + 16);
      v50 = *(v17 + 24);
      v52 = *(v17 + 32);
      v51 = *(v17 + 40);
      v53 = *(v17 + 48);
      v54 = *(v17 + 56);
      v56 = *(v17 + 64);
      v55 = *(v17 + 72);
      v67 = *(v17 + 80);
      v68 = v49;
      v69 = v50;
      v70 = v52;
      v71 = v51;
      v72 = v53;
      v73 = v54;
      v57 = sub_18F11D700();
      if ((~v55 & 0x3000000000000000) != 0)
      {
        if ((v55 & 0x2000000000000000) != 0)
        {
          v61 = objc_allocWithZone(MEMORY[0x1E69ACA28]);
          sub_18F16AAE0(v56, v55 & 0xDFFFFFFFFFFFFFFFLL);
          v60 = sub_18F457BB4(v56, v55 & 0xDFFFFFFFFFFFFFFFLL, v67, &selRef_initWithPlatformSpecificationConfigurationData_platform_);
        }

        else
        {
          v60 = [objc_allocWithZone(MEMORY[0x1E69ACA28]) initWithPlatformAgnosticConfiguration_];
        }

        v58 = v60;
      }

      else
      {
        v58 = 0;
      }

      v62 = objc_allocWithZone(MEMORY[0x1E69ACA08]);
      v34 = sub_18F11D8A8(v66, v65, v57, v58);
      sub_18F11D6AC(v56, v55, v67);
      sub_18F11D6AC(v49, v50, v52);
      sub_18F11D6AC(v51, v53, v54);
      return v34;
    case 2u:
      v27 = *(v17 + 8);
      v28 = *v17;
      sub_18F520D4C();

      v29 = 1;
      if (v27)
      {
        v29 = 2;
      }

      if (v27 == 2)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      sub_18F0F21A8(0, &qword_1ED6FBDF0);
      v31 = OUTLINED_FUNCTION_56();
      v34 = sub_18F141A10(v31, v32, v30, v33);

      return v34;
    case 3u:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD98F0);
      v36 = v17 + v35[12];
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = *(v17 + v35[16]);
      v41 = *(v17 + v35[20]);
      (*(v5 + 32))(v13, v17, v3);
      v44 = *(v5 + 16);
      v43 = v5 + 16;
      v42 = v44;
      v45 = 1;
      if (v40)
      {
        v45 = 2;
      }

      if (v40 == 2)
      {
        v46 = 0;
      }

      else
      {
        v46 = v45;
      }

      if (v39)
      {
        v42(v9, v13, v3);
        sub_18F0F21A8(0, &qword_1ED6FBDF0);
        v47 = sub_18F457750(v9, v46, (v41 & 1) == 0);
      }

      else
      {
        v42(v1, v13, v3);
        sub_18F0F21A8(0, &qword_1ED6FBDF0);
        v47 = sub_18F457684(v1, v46, (v41 & 1) == 0, v37, v38);
      }

      v34 = v47;
      (*(v43 - 8))(v13, v3);
      return v34;
    case 4u:
      v25 = *v17;
      v26 = ~*(v17 + 8);
      sub_18F0F21A8(0, &qword_1ED6FBDF0);
      return sub_18F457804(v25, v26 & 1, 0);
    case 5u:
      sub_18F0F21A8(0, qword_1ED6FDFF8);
      v59 = OUTLINED_FUNCTION_56();
      return sub_18F457868(v59);
    default:
      v18 = *(v17 + 16);
      v19 = 1;
      if (v18)
      {
        v19 = 2;
      }

      if (v18 == 2)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      sub_18F0F21A8(0, &qword_1ED6FBDF0);
      v21 = OUTLINED_FUNCTION_56();
      return sub_18F45756C(v21, v22, v20, v23);
  }
}

void sub_18F11D6AC(void *a1, uint64_t a2, void *a3)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_18F11D6C0(a1, a2, a3);
  }
}

void sub_18F11D6C0(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_18F123A1C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
    a1 = a3;
    v3 = vars8;
  }
}

id sub_18F11D700()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if ((~v1 & 0x3000000000000000) != 0)
  {
    v6 = *v0;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v8 = v0[2];
      v9 = objc_allocWithZone(MEMORY[0x1E69ACA18]);
      sub_18F16AAE0(v6, v1 & 0xDFFFFFFFFFFFFFFFLL);
      v7 = sub_18F457BB4(v6, v1 & 0xDFFFFFFFFFFFFFFFLL, v8, &selRef_initWithPlatformSpecificData_platform_);
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69ACA18]) initWithSystemNamedColor_];
    }

    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  if ((~v3 & 0x3000000000000000) != 0)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v12 = objc_allocWithZone(MEMORY[0x1E69ACA18]);
      sub_18F16AAE0(v2, v3 & 0xDFFFFFFFFFFFFFFFLL);
      v11 = sub_18F457BB4(v2, v3 & 0xDFFFFFFFFFFFFFFFLL, v4, &selRef_initWithPlatformSpecificData_platform_);
    }

    else
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69ACA18]) initWithSystemNamedColor_];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  sub_18F0F21A8(0, &qword_1EACCF3F0);
  return sub_18F11D84C(v5, v10);
}

id sub_18F11D84C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithForeground:a1 background:a2];

  return v4;
}

id sub_18F11D8A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_18F5218AC();

  v8 = [v4 initWithSymbolSystemName:v7 colorization:a3 configuration:a4];

  return v8;
}

uint64_t sub_18F11D920(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v2[2] = &v3;
  sub_18F11D980(sub_18F11DF30, v2, a1);
  return v3;
}

uint64_t sub_18F11D980(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v47 = a2;
  sub_18F522F8C();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  *(&v45 + 1) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v3, a3);
  sub_18F522F6C();
  sub_18F522F7C();
  sub_18F52295C();

  v9 = &dword_1EACD1410;
  v10 = &unk_18F53FEC0;
  v33 = a1;
  while (1)
  {
    while (1)
    {
      sub_18F522AFC();
      if (!v46)
      {
        v28 = OUTLINED_FUNCTION_6_38();
        v29(v28);
      }

      v42 = v44;
      sub_18F118710(&v45, &v43);
      sub_18F11DDA0(&v42, &v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(v9);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_18F0EF148(&v42, &qword_1EACCFD88);
      memset(v34, 0, sizeof(v34));
      v35 = 0;
      sub_18F0EF148(v34, &qword_1EACD0D08);
    }

    v11 = v10;
    v12 = v9;
    sub_18F0FF968(v34, v39);
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v13 = OUTLINED_FUNCTION_43_1();
    v14(v13);
    if (v15)
    {

      goto LABEL_21;
    }

    sub_18F11DDA0(&v42, &v36);
    v16 = v37;
    if (!v37)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      goto LABEL_21;
    }

    v17 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if (sub_18F521ACC() == 95 && v19 == 0xE100000000000000)
      {
      }

      else
      {
        v21 = sub_18F522D5C();

        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_18F118720(1, v17, v16);
      v17 = MEMORY[0x193ADAF70](v22, v23, v24);
      v16 = v25;
    }

LABEL_20:
    v26 = v40;
    v27 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    (*(v27 + 24))(v17, v16, v26, v27);
    a1 = v33;
LABEL_21:
    v9 = v12;
    a1(v39);
    if (v4)
    {
      break;
    }

    v10 = v11;
    sub_18F0EF148(&v42, &qword_1EACCFD88);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  sub_18F0EF148(&v42, &qword_1EACCFD88);
  v31 = OUTLINED_FUNCTION_6_38();
  v32(v31);
  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_18F11DDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F11DE10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F11DE78(void *a1)
{
  v2 = *(*(v1 + 32) + *a1);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v2;
}

uint64_t sub_18F11DEE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(v3 + 32) + *a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_18F11DF4C(uint64_t a1, uint64_t *a2)
{
  sub_18F0FD724(a1, v6);
  sub_18F11DFC0();
  v3 = *(*a2 + 16);
  sub_18F11DFE4();
  v4 = *a2;
  *(v4 + 16) = v3 + 1;
  return sub_18F0FF968(v6, v4 + 40 * v3 + 32);
}

uint64_t sub_18F11E02C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = qword_1ED707718;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_18F102F54(v3 + v4, a1);
}

uint64_t sub_18F11E084()
{
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_7(v1, v6);
  v3(v2);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  type metadata accessor for EntityProperty();
  if (!OUTLINED_FUNCTION_2_14())
  {
    return 0;
  }

  v4 = *(v7 + 16);

  return v4;
}

void *sub_18F11E180()
{
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_7(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  type metadata accessor for EntityProperty();
  if (!OUTLINED_FUNCTION_2_14())
  {
    return 0;
  }

  v4 = *(v8 + 24);
  v5 = v4;

  return v4;
}

void sub_18F11E26C()
{
  OUTLINED_FUNCTION_18();
  v56 = v1;
  v57 = v0;
  v3 = v2;
  v52 = v4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v49 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - v10;
  v55 = v11;
  v12 = sub_18F52254C();
  sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v53 = v14;
  v54 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  OUTLINED_FUNCTION_11_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v49 - v34;
  v36 = *(v19 + 16);
  v36(v26, v57, v3);
  v37 = v3;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v12);
    (*(v28 + 32))(v35, v17, v12);
    (*(v28 + 16))(v32, v35, v12);
    v38 = v55;
    if (__swift_getEnumTagSinglePayload(v32, 1, v55) != 1)
    {
      v39 = v50;
      v40 = v51;
      v41 = *(v50 + 32);
      v41(v51, v32, v38);
      (*(v39 + 16))(v49, v40, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
      if (!swift_dynamicCast())
      {
        v47 = v56;
        v56[3] = v38;
        v47[4] = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
        v41(boxed_opaque_existential_1, v40, v38);
        (*(v28 + 8))(v35, v12);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      (*(v39 + 8))(v40, v38);
    }

    (*(v28 + 8))(v35, v12);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v12);
    (*(v53 + 8))(v17, v54);
    v42 = v57;
    v36(v23, v57, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (!swift_dynamicCast())
    {
      v44 = v56;
      v45 = v52;
      v56[3] = v37;
      v44[4] = v45;
      v46 = __swift_allocate_boxed_opaque_existential_1(v44);
      v36(v46, v42, v37);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  v43 = v56;
  v56[4] = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_16();
}

uint64_t CSSearchableItemAttributeSet.associateAppEntity<A>(_:priority:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v97 = a2;
  v94 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v93 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v86 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = &v86 - v12;
  v103 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v100 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  v105 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v99 = a4;
  v19 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v26 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*(v19 + 16) + 8) + 16))(a3);
  v98 = a1;
  sub_18F5227DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v96 = v31;
  v32 = AssociatedTypeWitness;
  v33 = v104;
  (*(v22 + 8))(v25, v32);
  v34 = *(v19 + 8);
  v35 = v100;
  v36 = static AppValue._identifier.getter(a3, v34);
  v37 = v103;
  v90 = v36;
  v95 = v38;
  v106 = *(v35 + 16);
  v107 = v35 + 16;
  v106(v18, v29, v103);
  v108 = v18;
  v88 = sub_18F52193C();
  v92 = v39;
  v40 = *(v26 + 20);
  v101 = v29;
  sub_18F11F0A0(&v29[v40], v33);
  v41 = 0;
  v42 = 0;
  if (__swift_getEnumTagSinglePayload(v33, 1, v37) != 1)
  {
    v43 = v108;
    (*(v35 + 32))(v108, v33, v37);
    v106(v105, v43, v37);
    v41 = sub_18F52193C();
    v42 = v44;
    (*(v35 + 8))(v43, v37);
  }

  v87.value._countAndFlagsBits = v41;
  v87.value._object = v42;
  v45 = *&v101[*(v26 + 36)];
  v46 = *(v45 + 16);
  if (v46)
  {
    v86 = v34;
    v47 = a3;
    OUTLINED_FUNCTION_2_17();
    v48 = v103;
    displaySynonyms._rawValue = rawValue;
    v50 = (v45 + ((*(v35 + 80) + 32) & ~*(v35 + 80)));
    v104 = *(v35 + 72);
    v51 = (v35 + 8);
    do
    {
      v52 = v108;
      v53 = v106;
      v106(v108, v50, v48);
      v53(v105, v52, v48);
      v54 = sub_18F52193C();
      v56 = v55;
      (*v51)(v52, v48);
      rawValue = displaySynonyms._rawValue;
      v57 = *(displaySynonyms._rawValue + 2);
      if (v57 >= *(displaySynonyms._rawValue + 3) >> 1)
      {
        sub_18F3AA158();
        v48 = v103;
        displaySynonyms._rawValue = rawValue;
      }

      *(displaySynonyms._rawValue + 2) = v57 + 1;
      v58 = displaySynonyms._rawValue + 16 * v57;
      *(v58 + 4) = v54;
      *(v58 + 5) = v56;
      v50 += v104;
      --v46;
    }

    while (v46);
    a3 = v47;
    v34 = v86;
  }

  else
  {
    displaySynonyms._rawValue = MEMORY[0x1E69E7CC0];
  }

  v59 = *(*(v34 + 16) + 8);
  v60 = v89;
  v61 = OUTLINED_FUNCTION_4_5();
  v59(v61);
  v106(v108, v60, v103);
  sub_18F115440(v60, type metadata accessor for TypeDisplayRepresentation);
  v86 = sub_18F52193C();
  v89 = v62;
  v63 = v93;
  v64 = OUTLINED_FUNCTION_4_5();
  v59(v64);
  v65 = *(v63 + *(v94 + 24));
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F115440(v63, type metadata accessor for TypeDisplayRepresentation);
  v66 = *(v65 + 16);
  if (v66)
  {
    v94 = a3;
    OUTLINED_FUNCTION_2_17();
    typeDisplaySynonyms._rawValue = rawValue;
    v68 = *(v100 + 80);
    v93 = v65;
    v69 = v65 + ((v68 + 32) & ~v68);
    v104 = *(v100 + 72);
    v70 = (v100 + 8);
    v71 = v103;
    do
    {
      v72 = v108;
      v73 = v106;
      v106(v108, v69, v71);
      v73(v105, v72, v71);
      v74 = sub_18F52193C();
      v76 = v75;
      (*v70)(v72, v71);
      rawValue = typeDisplaySynonyms._rawValue;
      v77 = *(typeDisplaySynonyms._rawValue + 2);
      if (v77 >= *(typeDisplaySynonyms._rawValue + 3) >> 1)
      {
        sub_18F3AA158();
        v71 = v103;
        typeDisplaySynonyms._rawValue = rawValue;
      }

      *(typeDisplaySynonyms._rawValue + 2) = v77 + 1;
      v78 = typeDisplaySynonyms._rawValue + 16 * v77;
      *(v78 + 4) = v74;
      *(v78 + 5) = v76;
      v69 += v104;
      --v66;
    }

    while (v66);

    a3 = v94;
  }

  else
  {

    typeDisplaySynonyms._rawValue = MEMORY[0x1E69E7CC0];
  }

  propertyDictionary = sub_18F5216CC();
  v84.value._object = v89;
  v84.value._countAndFlagsBits = v86;
  v80._countAndFlagsBits = v90;
  v79._countAndFlagsBits = v91;
  v79._object = v96;
  v80._object = v95;
  v81._countAndFlagsBits = v88;
  v81._object = v92;
  CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v79, v80, v81, v87, displaySynonyms, v84, typeDisplaySynonyms, propertyDictionary, v97);

  if ((*(v99 + 24))(a3))
  {
    v82 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v102 setDisableSearchInSpotlight_];
  }

  return sub_18F115440(v101, type metadata accessor for DisplayRepresentation);
}

uint64_t type metadata accessor for TypeDisplayRepresentation()
{
  result = qword_1ED6FE328;
  if (!qword_1ED6FE328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F11EFCC()
{
  sub_18F520B3C();
  if (v0 <= 0x3F)
  {
    sub_18F0F21E8(319, qword_1ED6FF5F8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18F0F21E8(319, &qword_1ED6FEFB0, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18F11F0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TypeDisplayRepresentation.init(name:numericFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TypeDisplayRepresentation();
  v7 = *(v6 + 20);
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  *(a3 + *(v6 + 24)) = MEMORY[0x1E69E7CC0];
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  return sub_18F0FF6E0(a2, a3 + v7, &qword_1EACCF7A8);
}

uint64_t sub_18F11F1D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_0_55();
  (*(v5 + 40))(v3, v4);
  return v3;
}

void sub_18F11F220(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_18F11F26C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_18F11F2CC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_18F0EFAF8(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B70);
    OUTLINED_FUNCTION_82();
    sub_18F5229FC();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  free(v1);
}

void sub_18F11F510()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v15 = MEMORY[0x1E69E7CC0];
    sub_18F11F4F0(0, v2, 0);
    v14 = sub_18F520E6C();
    v4 = *(v14 - 8);
    v5 = *(v4 + 16);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v5(*(v0 + 168), v6, v14);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_18F11F4F0(v8 > 1, v9 + 1, 1);
      }

      v10 = *(v0 + 168);
      *(v15 + 16) = v9 + 1;
      sub_18F11FABC(v10, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = *(v0 + 176);
  }

  OUTLINED_FUNCTION_20();

  __asm { BRAA            X2, X16 }
}

void sub_18F11F6B8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_26();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size_1(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F11F8E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_18F10FDAC(v4, v5);
  }

  else
  {
    sub_18F520E6C();
    v7 = sub_18F521CAC();

    return sub_18F11F4C8(v4, v7);
  }
}

uint64_t sub_18F11F980()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F11FABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDonationIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F11FC34()
{
  v18 = v0;
  sub_18F1201BC();
  v0[5] = v1;
  if (v1)
  {
    static AppValue._identifier.getter(v0[2], *(v0[3] + 8));
    v0[6] = v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_18F120A2C;
    v4 = OUTLINED_FUNCTION_1_28();

    return static AppNotificationEvent.observationStatus(bundleIdentifier:entityType:)(v4, v5, v6, v7);
  }

  else
  {
    if (qword_1EACCED38 != -1)
    {
      swift_once();
    }

    v9 = sub_18F52165C();
    __swift_project_value_buffer(v9, qword_1EAD0ABB0);
    v10 = sub_18F52163C();
    v11 = sub_18F52221C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_18F11897C(0x76726573624F7369, 0xEC00000029286465, &v17);
      _os_log_impl(&dword_18F0E9000, v10, v11, "SPI/%s: Cannot retrieve bundle identifier", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x193ADD350](v13, -1, -1);
      MEMORY[0x193ADD350](v12, -1, -1);
    }

    sub_18F1EB43C();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_2_33(v14, v15);
    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_18F11FE7C(uint64_t a1, char a2)
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v3 = sub_18F5218DC();
  v5 = sub_18F10051C(v3, v4, 0);
  v6 = LNDaemonApplicationXPCInterface();
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  aBlock[4] = sub_18F2AA030;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_65();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_38;
  v10 = _Block_copy(aBlock);

  v11 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v12 = *v8;
  if (v12)
  {
    swift_willThrow();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_7:

    return a2 & 1;
  }

  sub_18F0FECD4(v18, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18F2A9D1C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_7;
  }

  sub_18F1205B4(v19, aBlock);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    swift_unknownObjectRelease();
  }

  else
  {
    [v5 invalidate];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    a2 = aBlock[0];
  }

  return a2 & 1;
}

uint64_t static AppEntity.isObserved()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1201BC()
{
  if (dynamic_cast_existential_1_conditional(v0))
  {
    return (*(v1 + 16))();
  }

  type metadata accessor for AppManager();
  sub_18F3E6F18(&v8);
  v2 = v9;
  v3 = v10;
  v18 = v8;
  sub_18F0EF148(&v18, &qword_1EACD4470);
  v17 = v11;
  sub_18F0EF148(&v17, &unk_1EACCFDB0);
  if (!v3)
  {
    sub_18F3E6F18(v12);
    v2 = v12[0];
    v4 = v12[1];
    v16 = v13;
    sub_18F0EF148(&v16, &qword_1EACD4470);
    v15 = v14;
    sub_18F0EF148(&v15, &unk_1EACCFDB0);
    if (!v4)
    {
      v5 = [objc_opt_self() bundleIdentifierForCurrentProcess];
      if (v5)
      {
        v6 = v5;
        v2 = sub_18F5218DC();
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t static AppNotificationEvent.observationStatus(bundleIdentifier:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F120330()
{
  v16 = v0;
  v1 = v0[3];
  if (v1 && (v2 = v0[5]) != 0)
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    v3 = v0[2];
    v4 = *__swift_project_boxed_opaque_existential_1Tm(off_1ED6FF6C8 + 5, *(off_1ED6FF6C8 + 8));
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v5 = sub_18F11FE7C(v4, v3);
    v6 = v5;
    if (qword_1EACCED38 != -1)
    {
      OUTLINED_FUNCTION_0_48();
      swift_once();
    }

    v9 = sub_18F52165C();
    __swift_project_value_buffer(v9, qword_1EAD0ABB0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v10 = sub_18F52163C();
    v11 = sub_18F5221FC();

    if (os_log_type_enabled(v10, v11))
    {
      v14 = v0[4];
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v13 = 67109634;
      *(v13 + 4) = v6 & 1;
      *(v13 + 8) = 2080;
      *(v13 + 10) = sub_18F11897C(v12, v1, v15);
      *(v13 + 18) = 2080;
      *(v13 + 20) = sub_18F11897C(v14, v2, v15);
      _os_log_impl(&dword_18F0E9000, v10, v11, "XPC: isObserved %{BOOL}d for %s/%s", v13, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[1];

  return v7(v6 & 1);
}

uint64_t sub_18F1205B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  v4 = sub_18F5218AC();
  v5 = sub_18F5218AC();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  aBlock[4] = sub_18F1208B8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F120840;
  aBlock[3] = &block_descriptor_48;
  v7 = _Block_copy(aBlock);

  [v15 getObservationStatusForBundleIdentifier:v4 entityType:v5 reply:v7];
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (v8)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  v9 = *(v3 + 16);
  if (v9 == 2)
  {
    sub_18F2A9D1C();
    swift_allocError();
    v8 = 0;
    *v10 = 1;
LABEL_4:
    swift_willThrow();
    v11 = v8;
  }

  *a2 = v9 & 1;
  return result;
}

uint64_t sub_18F1207F0()
{

  return swift_deallocObject();
}

void sub_18F120840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_18F1208C0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = *(a3 + 16);
    *(a3 + 16) = a2;
    v7 = a2;
  }

  else
  {
    v9 = a1 & 1;
    swift_beginAccess();
    *(a4 + 16) = v9;
  }
}

uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

uint64_t sub_18F1209B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18F52165C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  result = *MEMORY[0x1E69AC200];
  if (*MEMORY[0x1E69AC200])
  {
    sub_18F521A2C();
    return sub_18F52164C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18F120A2C(char a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F1EB284, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

void IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v65 = v28;
  v66 = v27;
  v30 = v29;
  v67 = v31;
  v33 = v32;
  v61 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  v63 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v56 - v38;
  v64 = v20;
  v40 = *(v20 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v41, &a15);
  v59 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_21_20();
  v57 = v21;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v45 = OUTLINED_FUNCTION_2_2(v44, &a17);
  v62 = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  (*(v47 + 16))(v22, v33);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_25_1();
  v48();
  OUTLINED_FUNCTION_11_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v40, v49, v40, v26);
  sub_18F116908(v30, v39, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_107_7();
  OUTLINED_FUNCTION_110_6();
  sub_18F116908(v50, v51, v52);
  sub_18F12310C(v26, v68);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  sub_18F0EF148(v33, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_104_10();
  sub_18F0EF148(v53, v54);
  OUTLINED_FUNCTION_23_1();
  v55(v67, v58);
  sub_18F0EF148(v66, &qword_1EACCF7A8);
  (*(v62 + 8))(v61, v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v63 = v26;
  OUTLINED_FUNCTION_41_11(v27, v28, v29, &a17);
  v31 = v30;
  v60 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v61 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v55 - v36;
  v62 = v20;
  v38 = *(v20 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v39, &a15);
  v58 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_34_1();
  v56 = v21;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v43 = OUTLINED_FUNCTION_2_2(v42, &a18);
  v45 = v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  (*(v45 + 16))(v47 - v46, v31);
  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_25_1();
  v48();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_104();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v38, v49, v38, v25);
  v50 = v59;
  sub_18F15F1BC(v59, v37);
  v51 = v63;
  sub_18F15F1BC(v63, v61);
  sub_18F12310C(v25, v66);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  sub_18F0EF148(v51, &qword_1EACCF7A0);
  sub_18F0EF148(v50, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_23_1();
  v52(v65, v57);
  sub_18F0EF148(v64, &qword_1EACCF7A8);
  v53 = OUTLINED_FUNCTION_33_13();
  v54(v53);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  sub_18F1CDF90(&a9);
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_122_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_122_3(_WORD *a1)
{
  *a1 = 0;

  return sub_18F52157C();
}

void OUTLINED_FUNCTION_122_4()
{

  JUMPOUT(0x193ADB000);
}

void OUTLINED_FUNCTION_122_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v25[122] = a25;
  v25[123] = v27;
  v25[124] = v26;
}

uint64_t OUTLINED_FUNCTION_122_7(int a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
  *(v4 - 144) = v3;
  return result;
}

void sub_18F120FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  (*(a4 + 56))(a2, a4);
  swift_getAssociatedConformanceWitness();
  sub_18F122E1C();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F121118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t *a3@<X8>, uint64_t a4, void *a5)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v7[2])(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0248);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v63, &v56);
    __swift_project_boxed_opaque_existential_1Tm(&v56, v59);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = *(swift_getAssociatedConformanceWitness() + 8);
    *&v78[0] = type metadata accessor for UniqueEntityResolver();
    v12 = *(*(v11 + 8) + 24);
    *&v52 = swift_getWitnessTable();
    v70 = 1;
    v71 = AssociatedTypeWitness;
    v72 = AssociatedTypeWitness;
    v73 = v78;
    v74 = v12;
    v75 = v12;
    v76 = &v52;
    a3[3] = type metadata accessor for ResolverSpecificationBuilder.Specification();
    a3[4] = swift_getWitnessTable();
    sub_18F3D81A4();
LABEL_5:
    v16 = &v56;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return (v7[1])(v9, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0238);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v63, &v56);
    __swift_project_boxed_opaque_existential_1Tm(&v56, v59);
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(swift_getAssociatedConformanceWitness() + 8);
    *&v78[0] = type metadata accessor for UniqueEntityResolver();
    v15 = *(*(v14 + 8) + 24);
    *&v52 = swift_getWitnessTable();
    v70 = 1;
    v71 = v13;
    v72 = v13;
    v73 = v78;
    v74 = v15;
    v75 = v15;
    v76 = &v52;
    a3[3] = type metadata accessor for ResolverSpecificationBuilder.Specification();
    a3[4] = swift_getWitnessTable();
    sub_18F3D81E8();
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD89A0);
  v18 = swift_dynamicCast();
  v51 = a3;
  if (v18)
  {
    sub_18F14B458(v78, &v52);
    v19 = v54;
    v49 = v55;
    v20 = __swift_project_boxed_opaque_existential_1Tm(&v52, v53);
    v47 = v19;
    v48 = v20;
    v21 = swift_getAssociatedTypeWitness();
    v50 = v7;
    v22 = v21;
    swift_getAssociatedConformanceWitness();
    v70 = type metadata accessor for EntityFromFileResolver();
    v71 = type metadata accessor for EntityFromURLResolver();
    v41 = type metadata accessor for EntityFromIdentifierResolver();
    v72 = v41;
    v42 = type metadata accessor for EntityFromStringResolver();
    v73 = v42;
    ParametersResolver = type metadata accessor for EntityFromQueryParametersResolver();
    v74 = ParametersResolver;
    v44 = type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
    v75 = v44;
    v45 = type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
    v76 = v45;
    v46 = type metadata accessor for EntityFromIntentPersonResolver();
    v77 = v46;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *&v63 = swift_getWitnessTable();
    *(&v63 + 1) = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    v56 = 8;
    v57 = v22;
    v58 = v22;
    v59 = &v70;
    v7 = v50;
    v60 = AssociatedConformanceWitness;
    v61 = AssociatedConformanceWitness;
    v62 = &v63;
    v24 = type metadata accessor for ResolverSpecificationBuilder.Specification();
    v25 = v51;
    v51[3] = v24;
    v25[4] = swift_getWitnessTable();
    *v25 = swift_allocObject();
    sub_18F3D822C();
LABEL_12:
    v16 = &v52;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v78, &v52);
    v26 = v54;
    v27 = __swift_project_boxed_opaque_existential_1Tm(&v52, v53);
    v49 = v26;
    v50 = v27;
    v28 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    ParametersResolver = type metadata accessor for EntityFromFileResolver();
    v70 = ParametersResolver;
    v44 = type metadata accessor for EntityFromURLResolver();
    v71 = v44;
    v45 = type metadata accessor for EntityFromIdentifierResolver();
    v72 = v45;
    v73 = type metadata accessor for EntityFromQueryParametersResolver();
    v46 = type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
    v74 = v46;
    v47 = type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
    v75 = v47;
    v48 = type metadata accessor for EntityFromIntentPersonResolver();
    v76 = v48;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v29 = swift_getAssociatedConformanceWitness();
    *&v63 = swift_getWitnessTable();
    *(&v63 + 1) = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v56 = 7;
    v57 = v28;
    v58 = v28;
    v59 = &v70;
    v60 = v29;
    v61 = v29;
    v62 = &v63;
    v30 = type metadata accessor for ResolverSpecificationBuilder.Specification();
    v31 = v51;
    v51[3] = v30;
    v31[4] = swift_getWitnessTable();
    *v31 = swift_allocObject();
    sub_18F3D824C();
    goto LABEL_12;
  }

  v50 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD36F0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v78, &v52);
    v48 = v54;
    v49 = __swift_project_boxed_opaque_existential_1Tm(&v52, v53);
    v32 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v70 = type metadata accessor for EntityFromFileResolver();
    v71 = type metadata accessor for EntityFromURLResolver();
    ParametersResolver = type metadata accessor for EntityFromIdentifierResolver();
    v72 = ParametersResolver;
    v44 = type metadata accessor for EntityFromStringResolver();
    v73 = v44;
    v45 = type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
    v74 = v45;
    v46 = type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
    v75 = v46;
    v47 = type metadata accessor for EntityFromIntentPersonResolver();
    v76 = v47;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v33 = swift_getAssociatedConformanceWitness();
    *&v63 = swift_getWitnessTable();
    *(&v63 + 1) = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v56 = 7;
    v57 = v32;
    v58 = v32;
    v59 = &v70;
    v60 = v33;
    v61 = v33;
    v62 = &v63;
    v34 = type metadata accessor for ResolverSpecificationBuilder.Specification();
    v35 = v51;
    v51[3] = v34;
    v35[4] = swift_getWitnessTable();
    *v35 = swift_allocObject();
    sub_18F129E90();
    __swift_destroy_boxed_opaque_existential_1Tm(&v52);
  }

  else
  {
    v49 = a5;
    v36 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v41 = type metadata accessor for EntityFromFileResolver();
    v70 = v41;
    v42 = type metadata accessor for EntityFromURLResolver();
    v71 = v42;
    ParametersResolver = type metadata accessor for EntityFromIdentifierResolver();
    v72 = ParametersResolver;
    v44 = type metadata accessor for EntityFromEntityResolver();
    v73 = v44;
    v45 = type metadata accessor for OptionsBasedEntityFromStringResolver();
    v74 = v45;
    v46 = type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
    v75 = v46;
    v47 = type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
    v76 = v47;
    v48 = type metadata accessor for EntityFromIntentPersonResolver();
    v77 = v48;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    *&v63 = swift_getWitnessTable();
    *(&v63 + 1) = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    v56 = 8;
    v57 = v36;
    v58 = v36;
    v59 = &v70;
    v60 = v37;
    v61 = v37;
    v62 = &v63;
    v38 = type metadata accessor for ResolverSpecificationBuilder.Specification();
    v39 = v51;
    v51[3] = v38;
    v39[4] = swift_getWitnessTable();
    *v39 = swift_allocObject();
    sub_18F1389F4();
  }

  v7 = v50;
  return (v7[1])(v9, a2);
}

uint64_t sub_18F122118()
{

  return swift_deallocObject();
}

uint64_t sub_18F122184()
{

  return swift_deallocObject();
}

uint64_t sub_18F1222A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_0_27();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v11 + 32))(&v17[v16], v15, a3);
  v18 = sub_18F52307C();
  v20 = v19;
  result = (*(v11 + 8))(a1, a3);
  *a5 = &unk_18F548FE0;
  a5[1] = v17;
  a5[2] = a3;
  a5[3] = v18;
  a5[4] = v20;
  return result;
}

uint64_t sub_18F122494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_0_27();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v11 + 32))(&v17[v16], v15, a3);
  v18 = sub_18F52307C();
  v20 = v19;
  result = (*(v11 + 8))(a1, a3);
  *a5 = &unk_18F549208;
  a5[1] = v17;
  a5[2] = a3;
  a5[3] = v18;
  a5[4] = v20;
  return result;
}

void sub_18F122600()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  if (v3 == 1)
  {
    v8 = *(v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    OUTLINED_FUNCTION_0_109();
    while (v4 != v10)
    {
      *(v9 + 8 * v10) = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * v10);
      ++v10;
    }

    v8 = OUTLINED_FUNCTION_7_57();
  }

  OUTLINED_FUNCTION_11_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  if (v4)
  {
    v17 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    v18 = (v8 + 32);
    v19 = v4;
    do
    {
      if (v4 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      v22 = *v17++;
      v21 = v22;
      v23 = *v5++;
      (*(*(v21 - 8) + 32))(v16 + v20, v23);
      v18 += 4;
      --v19;
    }

    while (v19);
  }

  (*(v12 + 32))(v7, v16, v8);
  OUTLINED_FUNCTION_16();
}

void static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v49 = v5;
  v7 = v6;
  v50 = v8;
  OUTLINED_FUNCTION_11_0();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v46 = (v13 - v12);
  if (v14 != 1)
  {
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_0_109();
    while (v3 != v16)
    {
      *(v15 + 8 * v16) = *((v1 & 0xFFFFFFFFFFFFFFFELL) + 8 * v16);
      ++v16;
    }

    OUTLINED_FUNCTION_7_57();
  }

  v45 = &v39;
  OUTLINED_FUNCTION_11_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &v39;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v39 - v22;
  v42 = &v39;
  v41 = v3 + 1;
  MEMORY[0x1EEE9AC00](v21);
  v40 = (8 * (v3 + 1) + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = (&v39 - v40);
  v52 = v24;
  v44 = v25;
  (*(v25 + 16))(v20, v7, v24);
  v26 = v1 & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v27 = v51;
    v28 = (v52 + 32);
    v29 = (v1 & 0xFFFFFFFFFFFFFFFELL);
    v30 = v3;
    do
    {
      if (v3 == 1)
      {
        v31 = 0;
        v32 = v23;
      }

      else
      {
        v31 = *v28;
        v32 = &v23[v31];
      }

      v33 = *v29++;
      (*(*(v33 - 8) + 16))(v32, &v20[v31]);
      *v27++ = v32;
      v28 += 4;
      --v30;
    }

    while (v30);
  }

  v34 = v46;
  v35 = v49;
  (*(v47 + 16))(v46, v48, v49);
  v36 = v51;
  v51[v3] = v34;
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v39 - v40;
  for (i = 0; v3 != i; ++i)
  {
    *&v37[8 * i] = *(v26 + 8 * i);
  }

    ;
  }

  sub_18F122600();
  (*(v44 + 8))(v20, v52);
  OUTLINED_FUNCTION_16();
}

uint64_t storeEnumTagSinglePayload for IntentCurrencyAmount(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for IntentCurrencyAmount(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18F122E1C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    v1 = OUTLINED_FUNCTION_6_74();
    return sub_18F3D7064(v1, v2, v3, v8, v9);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6_74();
    return sub_18F121118(v5, v6, v7, v8, v9);
  }
}

uint64_t sub_18F122EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v10 + 32))(&v14[v13], v12, a3);
  v15 = sub_18F52307C();
  v17 = v16;
  result = (*(v10 + 8))(a1, a3);
  *a5 = &unk_18F547448;
  a5[1] = v14;
  a5[2] = a3;
  a5[3] = v15;
  a5[4] = v17;
  return result;
}

void static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)()
{
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v2 - v1);
  sub_18F122600();
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

uint64_t sub_18F12310C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  swift_checkMetadataState();
  (*(a1 + 56))();
  OUTLINED_FUNCTION_26_1();
  swift_getAssociatedConformanceWitness();
  a2[3] = type metadata accessor for EntityQueryDynamicOptionsProvider();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_18F123278(v6, AssociatedTypeWitness, boxed_opaque_existential_1);
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_103_1(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_103_7()
{

  return sub_18F52163C();
}

void OUTLINED_FUNCTION_103_9()
{

  sub_18F120FCC(v1, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_103_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_103_11()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 3;
  return result;
}

uint64_t getEnumTagSinglePayload for _CopyIntent(unsigned int *a1, int a2)
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

uint64_t sub_18F123440(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3538);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3540);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3548);
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3550);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1247D4();
  sub_18F522FEC();
  v15 = *v2;
  v16 = v2[1];
  if (*(v2 + 32))
  {
    if (*(v2 + 32) == 1)
    {
      LOBYTE(v31) = 1;
      sub_18F25CE08();
      v17 = v30;
      sub_18F522BEC();
      sub_18F522C3C();
      (*(v25 + 8))(v8, v6);
      return (*(v29 + 8))(v14, v17);
    }

    LOBYTE(v31) = 2;
    sub_18F124828();
    v20 = v26;
    v19 = v30;
    sub_18F522BEC();
    LOBYTE(v31) = 0;
    v21 = v28;
    v22 = v33;
    sub_18F522C3C();
    if (!v22)
    {
      LOBYTE(v31) = 1;
      sub_18F522C3C();
    }

    (*(v27 + 8))(v20, v21);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_18F25CE5C();
    v19 = v30;
    sub_18F522BEC();
    v31 = v15;
    v32 = v16;
    sub_18F175084();
    sub_18F522C6C();
    (*(v24 + 8))(v11, v9);
  }

  return (*(v29 + 8))(v14, v19);
}

unint64_t sub_18F1238A4()
{
  result = qword_1EACD35F8;
  if (!qword_1EACD35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35F8);
  }

  return result;
}

unint64_t sub_18F1238FC()
{
  result = qword_1EACD35E0;
  if (!qword_1EACD35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35E0);
  }

  return result;
}

uint64_t sub_18F123958(char a1)
{
  if (a1)
  {
    return 0x6E6564496D657469;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_18F1239A0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

    case 1:

    case 0:

      return sub_18F123A1C(result, a2);
  }

  return result;
}

uint64_t sub_18F123A1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t OUTLINED_FUNCTION_173_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18F11897C(v3, v4, a3);
}

_BYTE *sub_18F123ACC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18F123B68);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void FileEntityIdentifier.init(fileProviderItemID:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 providerDomainID];
  v5 = sub_18F5218DC();
  v7 = v6;

  v8 = [a1 identifier];
  v9 = sub_18F5218DC();
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
}

uint64_t SiriVocabulary.DynamicTerm.init<A>(_:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  AppEntity.fullyQualifiedIdentifier.getter(a4, a5, &v26);
  v10 = v26;
  v11 = OUTLINED_FUNCTION_45();
  static AppValue._identifier.getter(v11, v12);
  if (dynamic_cast_existential_1_conditional(v10))
  {
    v24 = a6;
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v13 = OUTLINED_FUNCTION_45();
    v15 = static AppValue._identifier.getter(v13, v14);
    v16 = sub_18F164CE8(v15);

    v17 = v16;
    sub_18F1AF344();

    a6 = v24;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  sub_18F166ED0();
  v20 = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E69ACEF0]);
  v22 = sub_18F129440(a1, a2, v20);
  result = (*(*(a4 - 8) + 8))(a3, a4);
  *a6 = v22;
  return result;
}

uint64_t FileEntityIdentifier.entityIdentifierString.getter()
{
  v0 = sub_18F52190C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_18F52066C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  sub_18F52065C();
  sub_18F52067C();
  sub_18F1241C0();
  v4 = sub_18F52068C();
  v6 = v5;
  sub_18F5218FC();
  v7 = sub_18F5218EC();
  v9 = v8;

  sub_18F123A1C(v4, v6);
  if (!v9)
  {
    return 32123;
  }

  return v7;
}

unint64_t sub_18F1241C0()
{
  result = qword_1EACD3508;
  if (!qword_1EACD3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3508);
  }

  return result;
}

uint64_t FileEntityIdentifier.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD34D8);
  OUTLINED_FUNCTION_0();
  v22 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = a1[3];
  v15 = a1[4];
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_18F124470(v7, v8, v9, v10, v12);
  sub_18F1244EC();
  sub_18F522FEC();
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v12;
  sub_18F124540();
  v13 = v16;
  sub_18F522C6C();
  sub_18F1239A0(v17, v18, v19, v20, v21);
  return (*(v22 + 8))(v6, v13);
}

unint64_t sub_18F1243C4()
{
  result = qword_1EACD3528;
  if (!qword_1EACD3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3528);
  }

  return result;
}

unint64_t sub_18F12441C()
{
  result = qword_1EACD3530;
  if (!qword_1EACD3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3530);
  }

  return result;
}

uint64_t sub_18F124470(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    case 1:

      return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    case 0:

      return sub_18F16AAE0(result, a2);
  }

  return result;
}

unint64_t sub_18F1244EC()
{
  result = qword_1EACD34E0;
  if (!qword_1EACD34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD34E0);
  }

  return result;
}

unint64_t sub_18F124540()
{
  result = qword_1EACD34E8;
  if (!qword_1EACD34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD34E8);
  }

  return result;
}

unint64_t sub_18F124598()
{
  result = qword_1EACD35F0;
  if (!qword_1EACD35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35F0);
  }

  return result;
}

unint64_t sub_18F124600()
{
  result = qword_1EACD35E8;
  if (!qword_1EACD35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35E8);
  }

  return result;
}

unint64_t sub_18F124668()
{
  result = qword_1EACD35D0;
  if (!qword_1EACD35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35D0);
  }

  return result;
}

unint64_t sub_18F1246C0()
{
  result = qword_1EACD35D8;
  if (!qword_1EACD35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD35D8);
  }

  return result;
}

unint64_t sub_18F124728()
{
  result = qword_1EACD3600;
  if (!qword_1EACD3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3600);
  }

  return result;
}

unint64_t sub_18F124780()
{
  result = qword_1EACD3608;
  if (!qword_1EACD3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3608);
  }

  return result;
}

unint64_t sub_18F1247D4()
{
  result = qword_1EACD3558;
  if (!qword_1EACD3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3558);
  }

  return result;
}

unint64_t sub_18F124828()
{
  result = qword_1EACD3560;
  if (!qword_1EACD3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3560);
  }

  return result;
}

uint64_t sub_18F124884(char a1)
{
  if (!a1)
  {
    return 0x6B72616D6B6F6F62;
  }

  if (a1 == 1)
  {
    return 0x7466617264;
  }

  return 0x44496D6574497066;
}

_BYTE *storeEnumTagSinglePayload for FileEntityIdentifier.Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x18F1249A4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentAuthenticationPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SiriVocabulary.Corpus.init(contents:capacity:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(a1 + 16);
  if ((a3 & 1) != 0 || *MEMORY[0x1E69ACD18] <= a2)
  {
    if (v6)
    {
      sub_18F5228CC();
      v11 = 32;
      do
      {
        v12 = *(a1 + v11);
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
        v11 += 8;
        --v6;
      }

      while (v6);
    }

    sub_18F0F21A8(0, &qword_1EACCDCE0);
    v13 = sub_18F3550DC();
  }

  else
  {
    if (v6)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_18F5228CC();
      v8 = 32;
      do
      {
        v9 = *(a1 + v8);
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
        v8 += 8;
        --v6;
      }

      while (v6);

      v10 = v15;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    sub_18F0F21A8(0, &qword_1EACCDCE0);
    v13 = sub_18F1294C8(v10, a2);
  }

  *(v4 + 16) = v13;
  return v4;
}

uint64_t static SiriVocabulary.setCorporaByPriority(_:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  return OUTLINED_FUNCTION_10_5();
}

{
  *(v1 + 144) = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F124C48()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_45(v1);

  return sub_18F125FA4(v2, v3, v4, v5);
}

uint64_t sub_18F124D14()
{
  OUTLINED_FUNCTION_69();
  v1[38] = v2;
  v1[39] = v3;
  v1[37] = v4;
  v5 = type metadata accessor for DynamicOptionsResult.Item(0);
  v1[40] = v5;
  OUTLINED_FUNCTION_51(v5);
  v1[41] = v6;
  v1[42] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for DynamicOptionsResult.Section(0);
  v1[43] = v7;
  OUTLINED_FUNCTION_51(v7);
  v1[44] = v8;
  v1[45] = OUTLINED_FUNCTION_34_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F10);
  OUTLINED_FUNCTION_10(v9);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F18);
  OUTLINED_FUNCTION_10(v10);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v11 = type metadata accessor for DynamicOptionsResult(0);
  OUTLINED_FUNCTION_10(v11);
  v12 = OUTLINED_FUNCTION_34_0();
  v13 = *v0;
  v1[50] = v12;
  v1[51] = v13;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_18F124EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18F124F14()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_45(v1);

  return sub_18F125160(v2, v3, v4, v5);
}

id sub_18F124FE0()
{
  v1 = sub_18F5218AC();

  sub_18F0F21A8(0, &qword_1ED6FBE28);
  v2 = sub_18F521C8C();

  v3 = [v0 initWithActionIdentifier:v1 basePhraseTemplateSubstitutions:v2];

  return v3;
}

void sub_18F125074()
{
  sub_18F1252B0();
  if (v0 <= 0x3F)
  {
    sub_18F124EB0(319, qword_1ED6FDF70, type metadata accessor for DisplayRepresentation, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18F125160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F125FC8, 0, 0);
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_18F0FF690(a11, v12 + v11, a3);
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  __swift_project_boxed_opaque_existential_1Tm((v0 + 392), *(v0 + 416));

  return swift_getDynamicType();
}

void OUTLINED_FUNCTION_146_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_80_6()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_7(uint64_t a1)
{
  *(v3 - 88) = a1;
  *v1 = *(v3 - 112);

  return sub_18F0FD6C4(v2 + 376, v2 + 216);
}

void OUTLINED_FUNCTION_80_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 - 256) = a7;
  *(v7 - 284) = a6;
  *(v7 - 300) = a5;
}

unint64_t sub_18F1252B0()
{
  result = qword_1ED6FCD58;
  if (!qword_1ED6FCD58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED6FCD58);
  }

  return result;
}

void sub_18F12532C()
{
  sub_18F124EB0(319, &qword_1EACCF410, type metadata accessor for DynamicOptionsResult.Section, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_18F124EB0(319, qword_1ED6FF5F8, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18F125438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  *(v14 + 240) = MEMORY[0x1E69E7CD0];
  *(v14 + 416) = sub_18F52288C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v16 = sub_18F521CBC();
  *(v14 + 248) = v16;
  if (v16 == sub_18F521D7C())
  {
LABEL_2:

    OUTLINED_FUNCTION_42_5();

    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_20();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, v14 + 240, a10, a11, a12, a13, a14);
  }

  v17 = (v14 + 16);
  v18 = (v14 + 56);
  v19 = (v14 + 96);
  v20 = (v14 + 136);
  a10 = v14 + 248;
  a11 = v14 + 176;
  while (1)
  {
    v21 = *(v14 + 416);
    sub_18F521D4C();
    OUTLINED_FUNCTION_30_7();
    if (v15)
    {
      OUTLINED_FUNCTION_40_5();
    }

    else
    {
      v21 = sub_18F52281C();
    }

    *(v14 + 424) = v21;
    sub_18F521DAC();
    OUTLINED_FUNCTION_22();
    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      *(v14 + 88) = 0;
      *v18 = 0u;
      *(v14 + 72) = 0u;
      sub_18F0EF1A8(v18, &qword_1EACD0F20);
      goto LABEL_12;
    }

    sub_18F0FD0B4(v18, v17);
    v22 = *(v14 + 40);
    v15 = *(v14 + 48);
    __swift_project_boxed_opaque_existential_1Tm(v17, v22);
    (*(v15 + 16))(v22, v15);
    if (!*(v14 + 160))
    {

      sub_18F0EF1A8(v20, &qword_1EACD0D98);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      goto LABEL_12;
    }

    sub_18F0FD0B4(v20, v19);
    *(v14 + 264) = v21;

    *(v14 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F28);
    sub_18F52175C();

    v23 = *(v14 + 256);
    if (!v23)
    {
      break;
    }

    sub_18F145758(v23);

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
LABEL_12:
    if (*(v14 + 248) == sub_18F521D7C())
    {
      goto LABEL_2;
    }
  }

  v33 = OUTLINED_FUNCTION_13_8(v19);
  OUTLINED_FUNCTION_38_4(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F30);
  OUTLINED_FUNCTION_29_13();
  *(v14 + 440) = sub_18F52194C();
  *(v14 + 448) = v34;
  __swift_project_boxed_opaque_existential_1Tm(v17, *(v14 + 40));
  v35 = OUTLINED_FUNCTION_28_14();
  *(v14 + 224) = v36(v35);
  *(v14 + 232) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
  OUTLINED_FUNCTION_29_13();
  *(v14 + 456) = sub_18F52194C();
  *(v14 + 464) = v38;
  __swift_project_boxed_opaque_existential_1Tm(v19, *(v14 + 120));
  OUTLINED_FUNCTION_5_19();
  *(v14 + 472) = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_26_6();
  v39();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v14 + 480) = v40;
  *v40 = v41;
  v40[1] = sub_18F1B8E4C;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_20();

  return sub_18F13F0C4(v42, v43, v44, v45, v46, v47);
}

uint64_t sub_18F1258A4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1259CC()
{
  OUTLINED_FUNCTION_29();
  sub_18F125B24(*(v0 + 136), *(v0 + 96));
  *(v0 + 96) = v3;
  v4 = sub_18F521D7C();
  v5 = *(v0 + 48);
  if (v5 == v4)
  {

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_43_2();

    __asm { BRAA            X2, X16 }
  }

  v8 = sub_18F521D4C();
  sub_18F521CEC();
  if (v8)
  {
    OUTLINED_FUNCTION_13_50();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_27_39();
    sub_18F521DAC();
    *(v0 + 16) = v5;
    *(v0 + 24) = v2;
    *(v0 + 32) = v1;
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_6_75();
    OUTLINED_FUNCTION_43_2();

    return sub_18F124D14();
  }

  else
  {
    result = sub_18F52281C();
    __break(1u);
  }

  return result;
}

void sub_18F125B24(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_18F52269C();
    sub_18F0F21A8(0, qword_1ED6FBD60);
    sub_18F3C86AC();
    sub_18F52205C();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_18F125D0C();
      return;
    }

    while (1)
    {
      sub_18F1443D4(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18F5226CC())
      {
        sub_18F0F21A8(0, qword_1ED6FBD60);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_18F125D14(uint64_t a1)
{
  v2 = type metadata accessor for AppShortcut();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F125E24()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_18F52288C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F38);
  v0[2] = sub_18F52167C();
  v0[3] = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v0 + 2;
  v6 = swift_task_alloc();
  v0[9] = v6;
  type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_146();
  v7 = sub_18F521DBC();
  v8 = sub_18F0F21A8(0, &qword_1ED6FBE28);
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_18F128B7C;

  return MEMORY[0x1EEE18F40](&unk_18F5627D8, v5, v7, v8, WitnessTable);
}

uint64_t sub_18F125FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F125E24, 0, 0);
}

uint64_t sub_18F125FC8()
{
  OUTLINED_FUNCTION_29();
  sub_18F52288C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F28);
  v0[5] = sub_18F52167C();
  v0[11] = type metadata accessor for AppShortcutPhrase();
  v0[6] = sub_18F521CBC();
  v0[12] = MEMORY[0x1E69E7CD0];
  v2 = sub_18F521D7C();
  v3 = v0[6];
  if (v3 == v2)
  {

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_43_2();

    __asm { BRAA            X2, X16 }
  }

  v6 = sub_18F521D4C();
  sub_18F521CEC();
  if (v6)
  {
    OUTLINED_FUNCTION_13_50();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_27_39();
    sub_18F521DAC();
    v0[2] = v3;
    v0[3] = v1;
    v0[4] = v6;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_6_75(v7);
    OUTLINED_FUNCTION_43_2();

    return sub_18F124D14();
  }

  else
  {
    result = sub_18F52281C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18F126184()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5(v2);
}

uint64_t AppDependency.deinit()
{
  sub_18F0F689C(*(v0 + 16));
  sub_18F0EF654(v0 + 32);

  return v0;
}

uint64_t AppDependency.__deallocating_deinit()
{
  AppDependency.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_18F1262D0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_18F5226AC();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_18F169D9C(v2, 0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v1 = sub_18F468328(&v5, v3 + 4, v2, v1);
    sub_18F125D0C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_18F126390()
{
  [*(v0 + 184) invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_36();

  return v1();
}

uint64_t sub_18F126408()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18F126524, 0, 0);
  }
}

uint64_t sub_18F126524()
{
  OUTLINED_FUNCTION_21();
  v0 = sub_18F52163C();
  v1 = sub_18F5221FC();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v2, v3, "Updated AppShortcut parameters");
    OUTLINED_FUNCTION_32();
  }

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F1265D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_18F21E57C;
  }

  else
  {
    v2 = sub_18F126390;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F126700()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F2C3364, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t _s18IntentInputOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

void IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v29 = v4;
  v30 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v28 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(v2 + 80);
  v27 = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  v16 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_18_12();
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v22 = *v6;
  LOWORD(v6) = *(v6 + 4);
  OUTLINED_FUNCTION_25_0();
  (*(v18 + 16))(v0, v8, v16);
  v33 = v6;
  v32 = v22;
  sub_18F126AC4(&v32);
  OUTLINED_FUNCTION_12_39();
  sub_18F126C08(v15, v27, &v31);
  v23 = v29;
  sub_18F116908(v29, v14, &qword_1EACCF7A0);
  v24 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v28, v25, v26, v24);
  sub_18F116B3C();
  sub_18F0EF148(v23, &qword_1EACCF7A0);
  (*(v18 + 8))(v8, v16);
  sub_18F0EF148(v30, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F126AC4(unsigned int *a1)
{
  v1 = *a1;
  v2 = v1 | (*(a1 + 2) << 32);
  if ((v1 & 0xFF0000) == 0x20000)
  {
    sub_18F1168B4();

    return sub_18F5216CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000018F526760;
    *(inited + 72) = &type metadata for String.IntentInputOptions;
    *(inited + 48) = v2;
    v5 = vdupq_n_s64(v2);
    *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_18F543380), vshlq_u64(v5, xmmword_18F543370))), 0x1000100010001);
    *(inited + 50) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
    sub_18F1168B4();
    return sub_18F5216CC();
  }
}

uint64_t sub_18F126C08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    sub_18F1B8B98(&unk_1EACCE080, &qword_1EACD0DB0);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DB8);
    OUTLINED_FUNCTION_54_16();
    result = sub_18F1B8B98(v7, &qword_1EACD0DB8);
    *(a3 + 32) = result;
  }

  else
  {
    *(a3 + 24) = type metadata accessor for EmptyResolverSpecification();
    *(a3 + 32) = swift_getWitnessTable();

    return EmptyResolverSpecification.init()(a1, a2);
  }

  return result;
}

uint64_t sub_18F126D78(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void IntentDialog.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_18();
  v36[1] = v1;
  v36[2] = v2;
  v37 = v3;
  v36[3] = type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  v36[0] = sub_18F520ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  v19 = sub_18F520F1C();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v21 = sub_18F52189C();
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v23 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  sub_18F52181C();
  sub_18F520EDC();
  (*(v17 + 104))(v0, *MEMORY[0x1E6968DF0], v36[0]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v23);
  v33 = sub_18F117248();
  sub_18F11F0A0(v15, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v23) == 1)
  {
    sub_18F1121C4(v15);
    (*(v25 + 8))(v29, v23);
    sub_18F1121C4(v12);
    v34 = 0;
  }

  else
  {
    v34 = sub_18F117248();
    sub_18F1121C4(v15);
    v35 = *(v25 + 8);
    v35(v29, v23);
    v35(v12, v23);
  }

  *v7 = v33;
  v7[1] = v34;
  v7[2] = 0;
  v7[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v7, v37);
  OUTLINED_FUNCTION_16();
}

void OUTLINED_FUNCTION_48_1()
{

  sub_18F1820C8();
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t a1)
{

  return sub_18F123278(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return type metadata accessor for AppIntentError.Context(0);
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_48_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_48_14()
{
  *(v2 - 136) = v0;

  return sub_18F118710((v2 - 208), (v1 + 8));
}

uint64_t OUTLINED_FUNCTION_48_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;

  return sub_18F520E6C();
}

uint64_t OUTLINED_FUNCTION_48_16()
{

  return sub_18F0F713C(v0, v1);
}

void OUTLINED_FUNCTION_48_17(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{
  v6 = *(v4 - 112);

  _os_log_impl(a1, v6, a3, a2, v3, 0x34u);
}

uint64_t OUTLINED_FUNCTION_48_18(uint64_t a1, uint64_t a2)
{

  return sub_18F116908(a1, a2, v2);
}

void OUTLINED_FUNCTION_48_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void OUTLINED_FUNCTION_48_23(uint64_t a1)
{

  sub_18F21974C(a1, v1);
}

void IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = sub_18F520B3C();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  (*(v15 + 16))(v18, v3, v13);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v1, v12, &qword_1EACCF7A0);
  v21 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v9, v22, v23, v21);
  sub_18F116B3C();
  sub_18F0EF148(v1, &qword_1EACCF7A0);
  v24 = OUTLINED_FUNCTION_31_1();
  v25(v24);
  sub_18F0EF148(v27, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v22 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_49_4();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  (*(v15 + 16))(v1, v5, v13);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v3, v0, &qword_1EACCF7A0);
  v19 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v11, v20, v21, v19);
  OUTLINED_FUNCTION_47_7();
  sub_18F0EF148(v3, &qword_1EACCF7A0);
  (*(v15 + 8))(v5, v13);
  sub_18F0EF148(v22, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v25[1] = v2;
  v26 = v1;
  v4 = v3;
  v25[0] = v3;
  v27 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22_13();
  v18 = sub_18F520B3C();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v16 + 16))(v0, v4, v14);
  OUTLINED_FUNCTION_90();
  sub_18F1E3FD8(v20);
  v21 = v26;
  sub_18F116908(v26, v13, &qword_1EACCF7A0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v10, v23, v24, v22);
  OUTLINED_FUNCTION_29_16();
  sub_18F116B3C();
  sub_18F0EF148(v21, &qword_1EACCF7A0);
  (*(v16 + 8))(v25[0], v14);
  sub_18F0EF148(v27, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v23 = v3;
  v24 = v2;
  v5 = v4;
  v22 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_34();
  swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_32_2();
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v14 + 16))(v0, v5, v12);
  OUTLINED_FUNCTION_90();
  sub_18F35E9D8(v18);
  sub_18F116908(v23, v1, &qword_1EACCF7A0);
  v19 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v10, v20, v21, v19);
  sub_18F116B3C();
  sub_18F0EF148(v23, &qword_1EACCF7A0);
  (*(v14 + 8))(v22, v12);
  sub_18F0EF148(v24, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v13 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = sub_18F520B3C();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  (*(v15 + 16))(v18, v3, v13);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v1, v12, &qword_1EACCF7A0);
  v21 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v9, v22, v23, v21);
  OUTLINED_FUNCTION_11_17();
  sub_18F116B3C();
  sub_18F0EF148(v1, &qword_1EACCF7A0);
  v24 = OUTLINED_FUNCTION_31_1();
  v25(v24);
  sub_18F0EF148(v27, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v10 = MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13(v10, v11, v12, v13, v14, v15, v16, v17, v62);
  v68 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v69 = v21 - v20;
  OUTLINED_FUNCTION_27_37();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v22 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v26 = OUTLINED_FUNCTION_51(v25);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_43_18();
  v33 = sub_18F520B3C();
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  v35 = *(v4 + 16);
  if (v35)
  {
    v63 = v2;
    v64 = v6;
    OUTLINED_FUNCTION_32_1();
    v37 = v4 + v36;
    v38 = *(v28 + 72);
    v39 = (v67 + 32);
    v40 = MEMORY[0x1E69E7CC0];
    v41 = &qword_1EACD0360;
    v42 = v68;
    do
    {
      sub_18F116908(v37, v0, v41);
      sub_18F178778(v0, v31);
      v43 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_106(v43, v44, v42);
      if (v45)
      {
        sub_18F0EF148(v31, v41);
      }

      else
      {
        v46 = v41;
        v47 = *v39;
        (*v39)(v69, v31, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18_30();
          sub_18F167ED8();
          v40 = v54;
        }

        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_52_15(v49);
          sub_18F167ED8();
          v40 = v55;
        }

        *(v40 + 16) = v50 + 1;
        OUTLINED_FUNCTION_8_54();
        v53 = v40 + v51 + *(v52 + 72) * v50;
        v42 = v68;
        v39 = (v67 + 32);
        v47(v53, v69, v68);
        v41 = v46;
      }

      v37 += v38;
      --v35;
    }

    while (v35);

    v56 = v64;
    v2 = v63;
  }

  else
  {

    v56 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810);
  OUTLINED_FUNCTION_41_20();
  v57 = OUTLINED_FUNCTION_34_27();
  OUTLINED_FUNCTION_53_0(v65, v57 ^ 1u);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_48_18(v2, v66);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_14_40();
  sub_18F116B3C();
  OUTLINED_FUNCTION_30_2(v2);
  sub_18F0EF148(v56, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:kind:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v5;
  v26 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_18_12();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v4) = *v4;
  OUTLINED_FUNCTION_25_0();
  v20 = OUTLINED_FUNCTION_23_15();
  v21(v20, v6, v14);
  v27[0] = v4;
  sub_18F1277BC(v27);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v12, v23, v24, v22);
  sub_18F116B3C();
  sub_18F0EF148(v2, &qword_1EACCF7A0);
  (*(v16 + 8))(v25, v14);
  sub_18F0EF148(v26, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v5;
  v26 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_18_12();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v4) = *v4;
  OUTLINED_FUNCTION_25_0();
  v20 = OUTLINED_FUNCTION_23_15();
  v21(v20, v6, v14);
  v27[0] = v4;
  sub_18F1277BC(v27);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v12, v23, v24, v22);
  sub_18F116B3C();
  sub_18F0EF148(v2, &qword_1EACCF7A0);
  (*(v16 + 8))(v25, v14);
  sub_18F0EF148(v26, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F1277BC(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0x646E694B65746164;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for IntentParameter.DateKind();
  *(inited + 48) = v1;
  sub_18F1168B4();
  return sub_18F5216CC();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18F127884()
{
  sub_18F522EFC();
  OUTLINED_FUNCTION_93();
  sub_18F5219CC();
  return sub_18F522F4C();
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_5()
{
}

uint64_t OUTLINED_FUNCTION_91_7()
{
  *(v1 + v0[1]) = v0[9];
  v4 = v0[5];
  *v4 = 0;
  v4[1] = 0;
  *(v1 + v0[2]) = 0;
  *(v1 + *(v2 + 112)) = 0;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_91_8()
{

  return sub_18F0FECD4(v0 - 176, v0 - 144);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return sub_18F5227FC();
}

void IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27 = v4;
  v28 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = sub_18F520B3C();
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_31_10();
  v23(v20, v5, v15);
  sub_18F127C44(v3);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v1, v14, &qword_1EACCF7A0);
  v24 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v11, v25, v26, v24);
  sub_18F116B3C();
  sub_18F0EF148(v1, &qword_1EACCF7A0);
  (*(v17 + 8))(v27, v15);
  sub_18F0EF148(v28, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F127C44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000018F525E50;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0408);
  *(inited + 48) = a1;
  sub_18F1168B4();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F5216CC();
}

void IntentParameter<>.init(description:default:displayStyle:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v5;
  v26 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_18_12();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v4) = *v4;
  OUTLINED_FUNCTION_25_0();
  v20 = OUTLINED_FUNCTION_23_15();
  v21(v20, v6, v14);
  v27[0] = v4;
  sub_18F127F18(v27);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v12, v23, v24, v22);
  sub_18F116B3C();
  sub_18F0EF148(v2, &qword_1EACCF7A0);
  (*(v16 + 8))(v25, v14);
  sub_18F0EF148(v26, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F127F18(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000018F528380;
  *(inited + 72) = type metadata accessor for IntentParameter.PlacemarkDisplayStyle();
  *(inited + 48) = v1;
  sub_18F1168B4();
  return sub_18F5216CC();
}

void IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v35 = v3;
  v36 = v2;
  v5 = v4;
  v31 = v6;
  v32 = v7;
  v8 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v34 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_1();
  v33 = v13;
  v14 = *(v0 + 80);
  swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_47_5(v15);
  OUTLINED_FUNCTION_11_0();
  v17 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_31_2();
  v30 = v19;
  OUTLINED_FUNCTION_11_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v25 = *v5;
  v26 = *(v5 + 4);
  (*(v21 + 16))(v24 - v23, v8);
  (*(v17 + 16))(v1, v32, v15);
  v39 = v26;
  v38 = v25;
  sub_18F126AC4(&v38);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_24_31(v14, &v37);
  sub_18F116908(v35, v33, &qword_1EACCF7A0);
  v27 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v34, v28, v29, v27);
  sub_18F116B3C();
  sub_18F0EF148(v35, &qword_1EACCF7A0);
  (*(v17 + 8))(v32);
  sub_18F0EF148(v36, &qword_1EACCF7A8);
  (*(v21 + 8))(v31, v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a3 = result;
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

__n128 AppShortcutPhrase.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_18F1283EC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_6(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_10_51();

  return sub_18F1285B4(v7, v8, v9, v3, v1, v2);
}

uint64_t sub_18F1284A4()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;
  v5 = type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_8_60();
  WitnessTable = swift_getWitnessTable();
  v0[16] = sub_18F10ED3C(v4, v5, WitnessTable);
  v0[17] = v7;
  v0[5] = v3;
  v0[6] = v2;
  v0[7] = v1;
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_18F128924;

  return sub_18F1285EC();
}

uint64_t sub_18F1285B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 64) = a1;
  *(v6 + 104) = *a2;
  *(v6 + 120) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_18F1284A4, 0, 0);
}

uint64_t sub_18F1285EC()
{
  OUTLINED_FUNCTION_69();
  v1[5] = v2;
  v1[6] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v6 = *v0;
  v1[7] = v7;
  v1[8] = v6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F12865C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  sub_18F52288C();
  v7 = sub_18F521DBC();
  v8 = sub_18F0F21A8(0, qword_1ED6FBE30);
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_18F1287B4;

  return MEMORY[0x1EEE18F40](&unk_18F543B38, v4, v7, v8, WitnessTable);
}

uint64_t sub_18F1287B4(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 88) = v1;

  if (v1)
  {

    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(a1);
  }
}

uint64_t sub_18F128924()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F128A34()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = objc_allocWithZone(MEMORY[0x1E69ACDE0]);
  v4 = OUTLINED_FUNCTION_80_0();
  *v2 = sub_18F128AD8(v4, v5, v1, v6, v7, v8);
  OUTLINED_FUNCTION_71();

  return v9();
}

id sub_18F128AD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, SEL *a6)
{
  v9 = sub_18F5218AC();

  sub_18F0F21A8(0, a4);
  v10 = sub_18F521C8C();

  v11 = [v6 *a6];

  return v11;
}

uint64_t sub_18F128B7C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F128C8C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 88);

  return v1(v2);
}

void sub_18F128CF0()
{
  sub_18F124EB0(319, qword_1ED6FDF70, type metadata accessor for DisplayRepresentation, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18F124EB0(319, &qword_1EACCF418, type metadata accessor for DynamicOptionsResult.Item, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18F128DD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18F540420;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18F128E38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ViewAnnotation(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B70);
  result = sub_18F52276C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_18F0F99B8(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for ViewAnnotation);
    sub_18F522EFC();
    ViewAnnotation.hash(into:)();
    result = sub_18F522F4C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_18F0F90A4(v10, *(v11 + 48) + v24 * v20, type metadata accessor for ViewAnnotation);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_27:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_27;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_18F1290FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v16, a2);
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  v17 = a6;
  v18 = a7;
  v19 = type metadata accessor for AppShortcutParameterPresentation();
  (*(*(v19 - 8) + 16))(__src, a1, v19);
  v20 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  v22 = v25;
  *(v21 + 4) = a4;
  *(v21 + 5) = v22;
  *(v21 + 6) = v17;
  *(v21 + 7) = v18;
  (*(v14 + 32))(&v21[v20], &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  memcpy(&v21[(v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8], __src, 0xA2uLL);
  return &unk_18F562788;
}

uint64_t sub_18F1292D0()
{
  OUTLINED_FUNCTION_31_0();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3 + 8);
  if (*(v0 + v3 + 48))
  {
  }

  if (*(v0 + v3 + 120))
  {
  }

  return swift_deallocObject();
}

id sub_18F1293B8()
{
  v1 = sub_18F5218AC();

  v2 = sub_18F5218AC();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

id sub_18F129440(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F5218AC();

  v6 = [v3 initWithTerm:v5 entityIdentifier:a3];

  return v6;
}

id sub_18F1294C8(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACCDD38);
  v4 = sub_18F521C8C();

  v5 = [v3 initWithContents:v4 capacity:a2];

  return v5;
}

uint64_t sub_18F129558()
{
  if (![objc_opt_self() isVocabularyDonationEnabled])
  {
    goto LABEL_16;
  }

  v3 = [objc_opt_self() mainBundle];
  sub_18F10FBF8(v3);
  v0[19] = v4;
  if (!v4)
  {
    sub_18F356230();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_71();
    goto LABEL_17;
  }

  if (!OUTLINED_FUNCTION_13_39())
  {

LABEL_16:
    OUTLINED_FUNCTION_71();
LABEL_17:
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[18];
  sub_18F0F21A8(0, &qword_1EACD7118);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F3561CC();
  v0[20] = v6;
  v7 = sub_18F111F70(v5);
  if (v7)
  {
    v8 = v7;
    v9 = sub_18F5228CC();
    if (v8 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v9);
    }

    OUTLINED_FUNCTION_10_42();
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x193ADBE10](v5, v0[18]);
      }

      else
      {
        v10 = *(v2 + 8 * v5);
      }

      ++v5;
      v11 = *(v10 + 16);

      sub_18F52289C();
      OUTLINED_FUNCTION_11_39();
      sub_18F5228DC();
      OUTLINED_FUNCTION_11_39();
      sub_18F5228EC();
      sub_18F5228AC();
    }

    while (v8 != v5);
  }

  sub_18F0F21A8(0, &qword_1EACCDCE0);
  v12 = sub_18F521C8C();
  v0[21] = v12;

  v0[2] = v0;
  v0[3] = sub_18F355BD8;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
  OUTLINED_FUNCTION_2_79(v13);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_77();
  [v6 setCorporaByPriority:v12 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_176();

  return MEMORY[0x1EEE6DEC8](v9);
}

void IntentDialog.init(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  (*(v19 + 16))(v0, v2, v17);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  v28 = sub_18F117248();
  sub_18F11F0A0(v16, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
  {
    v24 = *(v19 + 8);
    v24(v2, v17);
    sub_18F1121C4(v16);
    v24(v0, v17);
    sub_18F1121C4(v13);
    v25 = 0;
  }

  else
  {
    v25 = sub_18F117248();
    v26 = *(v19 + 8);
    v26(v2, v17);
    sub_18F1121C4(v16);
    v26(v0, v17);
    v26(v13, v17);
  }

  *v8 = v28;
  v8[1] = v25;
  v8[2] = 0;
  v8[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_18F2E9C6C(v8, v4);
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_107_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18F0F9F88(v3 + 224, v3 + 304, a3);
}

uint64_t OUTLINED_FUNCTION_107_8(int a1)
{
  result = __swift_storeEnumTagSinglePayload(v3, a1 ^ 1u, 1, v2);
  *(v4 - 144) = v1;
  return result;
}

uint64_t sub_18F129B88()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntityFromFileResolver();
  type metadata accessor for EntityFromURLResolver();
  type metadata accessor for EntityFromIdentifierResolver();
  type metadata accessor for EntityFromStringResolver();
  type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
  type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
  type metadata accessor for EntityFromIntentPersonResolver();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F3E0F28);
}

uint64_t AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1)
{
  sub_18F52288C();
  sub_18F521D7C();
  v2 = sub_18F522C9C();
  MEMORY[0x193ADB000](v2);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000](0x656D617261707B24, 0xEB00000000726574);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v3 = sub_18F521CDC();
  *v4 = a1;
  sub_18F129FD4(v3);

  OUTLINED_FUNCTION_56();
  sub_18F521D5C();
}

unint64_t sub_18F12A000()
{
  result = qword_1ED6FE658[0];
  if (!qword_1ED6FE658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FE658);
  }

  return result;
}

uint64_t sub_18F12A150(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_18F2CA734();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_18F12A2B8();
LABEL_10:
      v15 = *v4;
      sub_18F522EFC();
      sub_18F5219CC();
      result = sub_18F522F4C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_18F522D5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_18F2CC2A0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_18F12A2B8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B40);
  result = sub_18F52274C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_18F522EFC();
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        sub_18F5219CC();
        result = sub_18F522F4C();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v62 = v27;
  v61 = v28;
  v63 = v29;
  v31 = v30;
  v58 = v30;
  v64 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_49_1(a22);
  v35 = a21;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_121_6(v39);
  v40 = v22;
  v41 = *(v22 + 88);
  v42 = *(v40 + 80);
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  v43 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_2(v43, &a11);
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_21_20();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v48 = OUTLINED_FUNCTION_2_2(v47, &a16);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_45_0();
  v49(v24, v34);
  (*(v45 + 16))(v23, v31, v43);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  v50 = OUTLINED_FUNCTION_47_23();
  sub_18F12A88C(v50, v61, v51, v42, v62, v60, v41);
  sub_18F116908(v63, v65, &qword_1EACCF7A0);
  v52 = OUTLINED_FUNCTION_117_7();
  sub_18F116908(v52, v59, &qword_1EACCF7A0);
  v66[3] = v62;
  v66[4] = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v54 = *(v62 - 8);
  (*(v54 + 16))(boxed_opaque_existential_1, v61, v62);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  (*(v54 + 8))(v61, v62);
  sub_18F0EF148(v23, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_30_2(v63);
  OUTLINED_FUNCTION_23_1();
  v55(v58);
  sub_18F0EF148(v64, &qword_1EACCF7A8);
  v56 = OUTLINED_FUNCTION_29_12();
  v57(v56);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void sub_18F12A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a4;
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  (*(a6 + 56))(a3, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18F12A9EC(AssociatedConformanceWitness, v16, a2, a3, v18, AssociatedTypeWitness, v19, a6, a7, AssociatedConformanceWitness);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F12A9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_7_65();
    OUTLINED_FUNCTION_16();

    return sub_18F3D7064(v11, v12, v13, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_65();
    OUTLINED_FUNCTION_16();

    return sub_18F121118(v16, v17, v18, a9, a10);
  }
}

uint64_t AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  sub_18F52288C();
  sub_18F521D7C();
  v2 = sub_18F522C9C();
  MEMORY[0x193ADB000](v2);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000](0x656D617261707B24, 0xEB00000000726574);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v3 = sub_18F521CDC();
  *v4 = a1;
  sub_18F129FD4(v3);

  sub_18F521D5C();
}

void AppShortcutParameterPresentationSummary.init(_:table:)(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *a1;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u16[4] = 256;
  OUTLINED_FUNCTION_0_112(a2, v2);
}

void sub_18F12AC28()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_18F520B3C();
    if (v1 <= 0x3F)
    {
      sub_18F12ACC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18F12ACC8()
{
  if (!qword_1ED6FDA40)
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FDA40);
    }
  }
}

unint64_t sub_18F12AD30()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_18F12EB70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F12ADB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v15 = a2[1];
  v16 = *a2;
  v8 = *(a2 + 4);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 146) = 0u;
  *a6 = a1;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  __swift_allocate_boxed_opaque_existential_1((a6 + 8));

  a3(v11);

  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v9;
  sub_18F12B5CC(*(a6 + 120));
  result = v15;
  *(a6 + 120) = v16;
  *(a6 + 136) = v15;
  *(a6 + 152) = v8;
  *(a6 + 160) = v13;
  return result;
}

uint64_t AppShortcutOptionsCollection.init(_:title:systemImageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for AppShortcutOptionsCollection();
  v11 = *(v10 + 36);
  v12 = sub_18F520B3C();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  v14 = (a6 + *(v10 + 40));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  return sub_18F12B088(v12, a1, a2, a3, a4, a5);
}

uint64_t sub_18F12B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  OUTLINED_FUNCTION_0_27();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v12 + 16))(a6, a1);
  v16 = *(v12 + 32);
  v16(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  v19 = v23;
  *(v18 + 4) = a4;
  *(v18 + 5) = v19;
  v16(v18 + v17, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = type metadata accessor for _AppShortcutOptionsCollectionSpecification();
  v21 = (a6 + *(result + 44));
  *v21 = sub_18F1D63B8;
  v21[1] = v18;
  return result;
}

uint64_t sub_18F12B1F4()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

void AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  v25 = v24;
  v27 = v26;
  v76 = v28;
  v77 = v29;
  v75 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v80 = v37;
  OUTLINED_FUNCTION_11_0();
  v78 = v39;
  v79 = v38;
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_7_66();
  v42 = OUTLINED_FUNCTION_19_43();
  v43(v42);
  sub_18F10E0AC();
  v44 = OUTLINED_FUNCTION_20_39();
  *v36 = sub_18F1194F4(v44, v45, v46, a23);
  v81[10] = v32;
  v81[2] = v27;
  v81[3] = v25;
  v81[4] = a21;
  v81[5] = a22;
  v81[6] = a23;
  v81[7] = a24;
  v81[8] = v34;
  type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_146();
  sub_18F521DBC();
  v47 = OUTLINED_FUNCTION_0_127();
  v36[1] = sub_18F10C138(sub_18F12B6A4, v81, v41, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v47, MEMORY[0x1E69E7410], v48);
  v49 = OUTLINED_FUNCTION_9_57();
  v36[2] = sub_18F10E724(v49, v50, v51);
  v36[3] = v52;
  v36[4] = sub_18F1290FC(v80, v27, v79, a21, a22, a23, a24);
  v36[5] = v53;
  v54 = type metadata accessor for AppShortcut();
  v55 = v54[8];
  v56 = sub_18F520B3C();
  v57 = *(v56 - 8);
  (*(v57 + 16))(v36 + v55, v75, v56);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v56);
  v61 = (v36 + v54[9]);
  *v61 = v76;
  v61[1] = v77;
  v62 = OUTLINED_FUNCTION_9_57();
  v65 = sub_18F10E43C(v62, v63, v64);
  (*(v57 + 8))(v75, v56);
  *(v36 + v54[10]) = v65;
  v66 = OUTLINED_FUNCTION_9_57();
  v69 = sub_18F10E500(v66, v67, v68);
  v71 = v70;

  v72 = (v36 + v54[11]);
  *v72 = v69;
  v72[1] = v71;
  v73 = swift_allocObject();
  v73[2] = v27;
  v73[3] = v79;
  v73[4] = a21;
  v73[5] = a22;
  v73[6] = a23;
  v73[7] = a24;
  memcpy(v73 + 8, v80, 0xA2uLL);
  v74 = (v36 + v54[12]);
  *v74 = sub_18F3E5180;
  v74[1] = v73;
  (*(v78 + 8))(v34, v27);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F12B564()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  if (*(v0 + 112))
  {
  }

  if (*(v0 + 184))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18F12B5CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18F12B60C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppShortcutPhrase();
  WitnessTable = swift_getWitnessTable();
  result = sub_18F10ED3C(a1, v4, WitnessTable);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_18F12B6F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B764()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B7B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B7F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B830()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B86C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F12B8A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12B900(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12B958(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12B9B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12BA08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12BA60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F12BAC0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v4 != i; ++i)
    {
      *&v6[8 * i] = *((*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    result = swift_getTupleTypeMetadata();
  }

  if (v3 <= 0x3F)
  {
    v8[7] = 0;
    v9 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F12BC00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18F12BC3C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_79();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_10_0(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_30_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_30_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_18F12BCF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_35_6();

  return sub_18F12C158(v6, v7, v8, v9, v10, v11, v2, v3);
}

uint64_t sub_18F12BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  swift_getAtPartialKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v22 + 56), v22 + 16);
    v25 = *(v22 + 40);
    __swift_project_boxed_opaque_existential_1Tm((v22 + 16), v25);
    OUTLINED_FUNCTION_37_0();
    v27 = v26(v25);
    *(v22 + 272) = v27;
    *(v22 + 280) = v28;
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      __swift_project_boxed_opaque_existential_1Tm((v22 + 16), *(v22 + 40));
      v31 = OUTLINED_FUNCTION_43_1();
      v32(v31);
      if (*(v22 + 160))
      {
        sub_18F0FD0B4((v22 + 136), v22 + 96);
        if (qword_1ED6FED58 != -1)
        {
          swift_once();
        }

        v33 = sub_18F52165C();
        __swift_project_value_buffer(v33, qword_1ED707790);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v34 = sub_18F52163C();
        v35 = sub_18F5221FC();

        if (os_log_type_enabled(v34, v35))
        {
          v37 = *(v22 + 224);
          v36 = *(v22 + 232);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          a11 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_18F11897C(v37, v36, &a11);
          _os_log_impl(&dword_18F0E9000, v34, v35, "Computing substitutions for phrase for %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x193ADD350](v39, -1, -1);
          MEMORY[0x193ADD350](v38, -1, -1);
        }

        v41 = *(v22 + 224);
        v40 = *(v22 + 232);
        v42 = *(v22 + 216);
        v43 = swift_task_alloc();
        *(v22 + 288) = v43;
        *(v43 + 16) = *(v22 + 248);
        *(v43 + 32) = v29;
        *(v43 + 40) = v30;
        *(v43 + 48) = v41;
        *(v43 + 56) = v40;
        *(v43 + 64) = v22 + 96;
        *(v43 + 72) = v42;
        v44 = swift_task_alloc();
        *(v22 + 296) = v44;
        sub_18F52288C();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0F38);
        sub_18F52172C();
        *v44 = v22;
        v44[1] = sub_18F1B9070;
        OUTLINED_FUNCTION_20();

        return sub_18F12C314(v45, v46, v47, v48);
      }

      sub_18F0EF1A8(v22 + 136, &qword_1EACD0D98);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F0EF1A8(v22 + 56, &qword_1EACD0F20);
  }

  **(v22 + 208) = 0;
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F12C158(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  v8[26] = a1;
  v8[27] = a3;
  v9 = *a2;
  v8[32] = a8;
  v8[33] = v9;
  return MEMORY[0x1EEE6DFA0](sub_18F12BDC4, 0, 0);
}

uint64_t sub_18F12C188()
{
  OUTLINED_FUNCTION_29();
  v0[3] = v0[6];

  OUTLINED_FUNCTION_80_0();
  sub_18F52175C();

  if (v0[2])
  {
    OUTLINED_FUNCTION_20_0();

    return v1();
  }

  else
  {
    v4 = (v0[7] + *v0[7]);
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_18F3E4D74;

    return v4();
  }
}

uint64_t sub_18F12C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F12C188, 0, 0);
}

uint64_t sub_18F12C33C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18F1B98B8;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_35_6();

  return sub_18F12C400(v5, v6, v7, v8, v9, v10, v2, v3);
}

uint64_t sub_18F12C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F13EC14, 0, 0);
}

uint64_t sub_18F12C4A8()
{
  OUTLINED_FUNCTION_69();
  v0[74] = v24;
  v0[73] = v23;
  v0[72] = v22;
  v0[71] = v1;
  v0[70] = v2;
  v0[69] = v3;
  v0[68] = v4;
  v0[67] = v5;
  v0[66] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v7);
  v0[75] = OUTLINED_FUNCTION_34_0();
  v8 = sub_18F520E6C();
  v0[76] = v8;
  OUTLINED_FUNCTION_51(v8);
  v0[77] = v9;
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  OUTLINED_FUNCTION_10(v10);
  v0[80] = OUTLINED_FUNCTION_34_0();
  v11 = type metadata accessor for DisplayRepresentation();
  v0[81] = v11;
  OUTLINED_FUNCTION_10(v11);
  v0[82] = OUTLINED_FUNCTION_34_0();
  v12 = type metadata accessor for DynamicOptionsResult.Item(0);
  v0[83] = v12;
  OUTLINED_FUNCTION_51(v12);
  v0[84] = v13;
  v0[85] = OUTLINED_FUNCTION_34_0();
  v14 = type metadata accessor for DynamicOptionsResult.Section(0);
  v0[86] = v14;
  OUTLINED_FUNCTION_51(v14);
  v0[87] = v15;
  v0[88] = OUTLINED_FUNCTION_34_0();
  v0[89] = *(v23 - 8);
  v0[90] = OUTLINED_FUNCTION_34_0();
  v16 = type metadata accessor for DynamicOptionsResult(0);
  OUTLINED_FUNCTION_10(v16);
  v0[91] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_18F12C70C()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_5_19();
  *(v0 + 32) = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_26_6();
  v1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_18F1B9638;
  OUTLINED_FUNCTION_3_15();

  return sub_18F13F0C4(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_18F12C810(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_18F5219FC();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_18F521AFC();

      return v5;
    }
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_63_0()
{

  JUMPOUT(0x193ADB000);
}

double OUTLINED_FUNCTION_63_1()
{

  return sub_18F33B850(v0, v1 + 80);
}

unint64_t OUTLINED_FUNCTION_63_3()
{
  v2 = v0[88];
  v0[91] = v0[87];
  v0[92] = v2;

  return sub_18F12A000();
}

void OUTLINED_FUNCTION_63_6()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
}

_OWORD *OUTLINED_FUNCTION_63_8()
{
  *(v2 - 120) = v0;

  return sub_18F118710((v2 - 152), (v1 + 8));
}

uint64_t OUTLINED_FUNCTION_63_9()
{
  *(v1 + 280) = v0;

  return sub_18F12D014(v1 + 16, v1 + 56);
}

unint64_t OUTLINED_FUNCTION_63_13(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(0x6E65746E49707041, 0xE900000000000074, va);
}

uint64_t OUTLINED_FUNCTION_63_14()
{

  return sub_18F522BAC();
}

uint64_t OUTLINED_FUNCTION_63_15()
{
}

uint64_t OUTLINED_FUNCTION_63_17()
{

  return sub_18F479950();
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return sub_18F52279C();
}

uint64_t OUTLINED_FUNCTION_100_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_100_2()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = v2;

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t result, uint64_t a2)
{

  return sub_18F2B7624(result, a2);
}

uint64_t OUTLINED_FUNCTION_100_6()
{

  return sub_18F5228EC();
}

uint64_t OUTLINED_FUNCTION_100_8()
{

  return os_transaction_create();
}

void OUTLINED_FUNCTION_100_9(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_type_t a21, uint64_t a22, os_log_t log)
{

  _os_log_impl(a1, log, a21, a4, v23, 0x34u);
}

uint64_t OUTLINED_FUNCTION_100_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 - 256) = a4;
  *(v5 - 224) = a3;
  *(v5 - 216) = result;
  *(v5 - 240) = a2;
  return result;
}

void OUTLINED_FUNCTION_100_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 264);

  sub_18F120FCC(a1, a2, a3, v5);
}

uint64_t sub_18F12CC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F12CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130D80;

  return sub_18F12E43C(a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_162_0()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_162_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65_7()
{
  *(v0 + 176) = *(v0 + 192);
}

void OUTLINED_FUNCTION_65_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_65_10()
{

  return sub_18F0FD724(v0 + 464, v0 + 544);
}

uint64_t OUTLINED_FUNCTION_65_13()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  return sub_18F12F320(v2, v3);
}

__n128 OUTLINED_FUNCTION_65_14()
{
  v3 = (*(v1 + 56) + 32 * v0);
  result = *v3;
  *(v2 - 112) = *v3;
  return result;
}

void OUTLINED_FUNCTION_65_18()
{

  sub_18F116B3C();
}

uint64_t sub_18F12D014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F12D084()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F130C90;

  return sub_18F12F614();
}

uint64_t type metadata accessor for AppIntentEnablement()
{
  result = qword_1ED6FE8D8;
  if (!qword_1ED6FE8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F12D184()
{
  v1 = [*(v0 + 96) metadata];
  if (v1)
  {
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v2 = *(v0 + 96);
    v3 = sub_18F52165C();
    __swift_project_value_buffer(v3, qword_1ED7077A8);
    v4 = v2;
    v5 = sub_18F52163C();
    v6 = sub_18F52221C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 80);
      swift_slowAlloc();
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_148_0();
      v8 = OUTLINED_FUNCTION_182_0(4.8752e-34);
      OUTLINED_FUNCTION_144(v8, v9, v10);
      OUTLINED_FUNCTION_120_1();
      *(v4 + 4) = v7;
      *(v4 + 6) = 2082;
      OUTLINED_FUNCTION_163_0();
      if (qword_1ED6FD140 != -1)
      {
        OUTLINED_FUNCTION_6_36();
      }

      sub_18F52305C();
      v11 = *(v0 + 72);
      MEMORY[0x193ADB000](*(v0 + 64), v11);

      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_95(v12, v13, v14, v15, v16, v17, v18, v19, v113, v115, v116, v117);
      OUTLINED_FUNCTION_120_1();
      *(v4 + 14) = v11;
      OUTLINED_FUNCTION_32_19();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_26_0();
    }
  }

  if (sub_18F12DA08())
  {
    v114 = v25;
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v26 = *(v0 + 96);
    v27 = sub_18F52165C();
    __swift_project_value_buffer(v27, qword_1ED7077A8);
    v28 = v26;
    v29 = sub_18F52163C();
    v30 = sub_18F52223C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v31 = 136446978;
      v32 = sub_18F5227FC();
      v35 = OUTLINED_FUNCTION_144(v32, v33, v34);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v116 = 978205756;
      v117 = 0xE400000000000000;
      if (qword_1ED6FD140 != -1)
      {
        OUTLINED_FUNCTION_6_36();
      }

      v36 = *(v0 + 96);
      sub_18F52305C();
      MEMORY[0x193ADB000](*(v0 + 48), *(v0 + 56));

      OUTLINED_FUNCTION_96_2();
      v45 = OUTLINED_FUNCTION_95(v37, v38, v39, v40, v41, v42, v43, v44, v114, v115, v116, v117);

      *(v31 + 14) = v45;
      *(v31 + 22) = 2082;
      v46 = sub_18F52307C();
      v49 = OUTLINED_FUNCTION_144(v46, v47, v48);

      *(v31 + 24) = v49;
      *(v31 + 32) = 2082;
      v50 = [v36 identifier];
      v51 = sub_18F5218DC();
      v53 = v52;

      v54 = sub_18F11897C(v51, v53, &v115);

      *(v31 + 34) = v54;
      _os_log_impl(&dword_18F0E9000, v29, v30, "[%{public}s %{public}s] Found %{public}s matching %{public}s registered with AppManager", v31, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_65();
    }

    if (![objc_opt_self() isConditionallyEnabledIntentsEnabled] || (v55 = OUTLINED_FUNCTION_66(), static AppIntent.asSystemImplementedIntentType.getter(v55, v56), v116 != 8))
    {
LABEL_23:
      sub_18F12FCE4();
      OUTLINED_FUNCTION_111();
      sub_18F12FFE8(v60, v61, v62);

      OUTLINED_FUNCTION_12_7();
      OUTLINED_FUNCTION_28_2();

      __asm { BRAA            X2, X16 }
    }

    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v57 = *(v0 + 136);

    OUTLINED_FUNCTION_111();
    sub_18F12F8F4(v58);

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
    if (__swift_getEnumTagSinglePayload(v57, 1, v59) == 1)
    {
      sub_18F12FC8C(*(v0 + 136), type metadata accessor for AppIntentEnablement);
      goto LABEL_23;
    }

    v101 = *(v0 + 144);
    v102 = *(v0 + 104);
    sub_18F144EA0();
    OUTLINED_FUNCTION_22();
    sub_18F0EF200();
    if (__swift_getEnumTagSinglePayload(v101, 1, v102) == 1)
    {
      sub_18F0EF1A8(*(v0 + 144), &qword_1EACCF7A8);
      v103 = 0;
      v104 = 0;
    }

    else
    {
      v105 = *(v0 + 128);
      v106 = *(v0 + 104);
      v107 = *(v0 + 112);
      (*(v107 + 32))(v105, *(v0 + 144), v106);
      v108 = OUTLINED_FUNCTION_56();
      v109(v108);
      v103 = sub_18F52193C();
      v104 = v110;
      (*(v107 + 8))(v105, v106);
    }

    v111 = *(v0 + 152);
    sub_18F133EDC();
    OUTLINED_FUNCTION_28();
    *v112 = v103;
    *(v112 + 8) = v104;
    *(v112 + 24) = 0;
    *(v112 + 32) = 0;
    *(v112 + 16) = 0;
    *(v112 + 40) = 0;
    swift_willThrow();
    sub_18F0EF1A8(v111, &qword_1EACCF7A8);
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v65 = *(v0 + 96);
    v66 = sub_18F52165C();
    __swift_project_value_buffer(v66, qword_1ED7077A8);
    v67 = v65;
    v68 = sub_18F52163C();
    v69 = sub_18F52221C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v0 + 80);
      v71 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_148_0();
      v72 = OUTLINED_FUNCTION_182_0(4.8755e-34);
      OUTLINED_FUNCTION_144(v72, v73, v74);
      OUTLINED_FUNCTION_120_1();
      *(v71 + 4) = v70;
      *(v71 + 12) = 2082;
      OUTLINED_FUNCTION_163_0();
      if (qword_1ED6FD140 != -1)
      {
        OUTLINED_FUNCTION_6_36();
      }

      v75 = *(v0 + 96);
      sub_18F52305C();
      v76 = *(v0 + 24);
      OUTLINED_FUNCTION_185_0();

      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_95(v77, v78, v79, v80, v81, v82, v83, v84, v113, v115, v116, v117);
      OUTLINED_FUNCTION_136_0();
      *(v71 + 14) = v76;
      *(v71 + 22) = 2082;
      v85 = [v75 identifier];
      sub_18F5218DC();
      OUTLINED_FUNCTION_131_0();

      v86 = OUTLINED_FUNCTION_115();
      sub_18F11897C(v86, v87, v88);
      OUTLINED_FUNCTION_161_0();
      *(v71 + 24) = v85;
      *(v71 + 32) = 2082;
      *(v0 + 32) = sub_18F220C7C(v75);
      *(v0 + 40) = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
      v90 = sub_18F52194C();
      OUTLINED_FUNCTION_144(v90, v91, v92);
      OUTLINED_FUNCTION_120_1();
      *(v71 + 34) = v75;
      OUTLINED_FUNCTION_32_19();
      _os_log_impl(v93, v94, v95, v96, v97, 0x2Au);
      OUTLINED_FUNCTION_86_3();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F133EDC();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_30_14(v98, 2);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F12DA08()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    sub_18F12DB84(v2);
    v8 = v7;
  }

  else
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v3 = [v0 identifier];
    v4 = sub_18F5218DC();
    v6 = v5;

    v8 = sub_18F2798A8(v4, v6, 0, 0);
  }

  return v8;
}

uint64_t sub_18F12DBB0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = qword_1ED6FD148;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = [a2 identifier];
  v7 = sub_18F5218DC();
  v9 = v8;

  v52[0] = v4;
  swift_getAtKeyPath();

  v10 = (sub_18F12F7DC)(v7, v9);

  if (!v10)
  {
    sub_18F137F7C(a1);

    v11 = qword_1ED6FDC90;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = [a2 identifier];
    sub_18F5218DC();

    v13 = a2;
    v14 = swift_modifyAtReferenceWritableKeyPath();
    v16 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *v16;
    v46 = v13;
    sub_18F13406C();
    *v16 = v51;

    v14(v52, 0);

    sub_18F3E6F18(&v53);
    v17 = v62;
    v20 = sub_18F134080();
    v10 = v21;
    if (v17)
    {
      v22 = v18;
      v23 = v19;
      v61 = v53;
      sub_18F0EF148(&v61, &qword_1EACD4470);
      v60 = v54;
      sub_18F0EF148(&v60, &qword_1EACD4470);
      v59 = v55;
      sub_18F0EF148(&v59, &unk_1EACCFDB0);
      sub_18F16A9C8();
      swift_allocError();
      *v24 = v20;
      v24[1] = v10;
      v24[2] = v22;
      v24[3] = v23;
    }

    else
    {
      v58 = v53;
      sub_18F0EF148(&v58, &qword_1EACD4470);
      v57 = v54;
      sub_18F0EF148(&v57, &qword_1EACD4470);
      v56 = v55;
      sub_18F0EF148(&v56, &unk_1EACCFDB0);
      sub_18F13694C();
      v26 = v25;
      v28 = v27;

      v62 = 0;
      swift_retain_n();

      v30 = [v46 identifier];
      v45 = sub_18F5218DC();
      v32 = v31;

      v10 = v4;

      v33 = swift_modifyAtReferenceWritableKeyPath();
      v35 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v35;
      sub_18F136D3C(v4, v50, v45, v32, isUniquelyReferenced_nonNull_native);
      *v35 = v47;

      v33(v52, 0);

      v37 = swift_modifyAtReferenceWritableKeyPath();
      v39 = v38;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v39;
      sub_18F136D3C(v4, v50, v26, v28, v40);
      *v39 = v48;
      v37(v52, 0);

      v41 = swift_modifyAtReferenceWritableKeyPath();
      v43 = v42;
      v44 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v43;
      sub_18F13406C();
      *v43 = v49;

      v41(v52, 0);
    }
  }

  return v10;
}

uint64_t sub_18F12E148()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B38);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E174()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B40);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E1A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B48);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E1CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B50);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E1F8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B58);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E224()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B60);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E250()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8B68);
  }

  else
  {
    return OUTLINED_FUNCTION_2_98(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_18F12E27C()
{
  result = swift_getKeyPath();
  qword_1ED707688 = result;
  return result;
}

uint64_t sub_18F12E2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F12E2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_18F0F713C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_108()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_108_0()
{

  return sub_18F2D94A8(v0);
}

void OUTLINED_FUNCTION_108_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_108_2()
{
}

uint64_t OUTLINED_FUNCTION_108_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_108_6(int a1)
{
  result = __swift_storeEnumTagSinglePayload(v3, a1 ^ 1u, 1, v2);
  *(v4 - 144) = v1;
  return result;
}

uint64_t sub_18F12E43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = type metadata accessor for Annotation(0);
  v5[29] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F12EFC0, 0, 0);
}

__n128 OUTLINED_FUNCTION_83_2@<Q0>(uint64_t a1@<X8>, __int128 a2, __n128 a3)
{
  v6 = v3 + a1;
  result = a3;
  *v6 = a3;
  *(v6 + 16) = a2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_3(uint64_t a1, uint64_t a2)
{

  return sub_18F1169CC(a1, a2, v2);
}

BOOL OUTLINED_FUNCTION_83_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_83_6()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_83_8()
{
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_70_3()
{
}

double OUTLINED_FUNCTION_70_6@<D0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = 0.0;
  *(v2 + 25) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return sub_18F0FECD4(v0, v1 - 208);
}

uint64_t OUTLINED_FUNCTION_70_8()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
}

void OUTLINED_FUNCTION_70_11()
{

  sub_18F3AA158();
}

void OUTLINED_FUNCTION_70_12()
{
}

__n128 OUTLINED_FUNCTION_70_13@<Q0>(__n128 *a1@<X2>, uint64_t a2@<X8>)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_40_4()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_40_5()
{
}

uint64_t OUTLINED_FUNCTION_40_6()
{
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;

  return sub_18F1C3B80(v0 - 176);
}

double OUTLINED_FUNCTION_40_8()
{
  *(v0 + 312) = 0;
  result = 0.0;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void OUTLINED_FUNCTION_40_11(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 - 256) = a4;
  *(v5 - 248) = a1;
  *(v5 - 240) = a3;
  *(v5 - 224) = a2;
}

uint64_t OUTLINED_FUNCTION_40_16()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_40_22()
{
  result = *(v0 + 88);
  *(v2 - 112) = v1 + 80;
  return result;
}

unint64_t OUTLINED_FUNCTION_40_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_40_24()
{
  *(v0 + 192) = 10;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 7;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_40_26()
{

  return sub_18F1413B0(v0, type metadata accessor for AppShortcut);
}

unint64_t sub_18F12EB70()
{
  result = qword_1ED6FEF48;
  if (!qword_1ED6FEF48)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED6FEF48);
  }

  return result;
}

void OUTLINED_FUNCTION_67_5()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v2 = *(v0 - 208);

  return sub_18F0FECD4(v2, v0 - 176);
}

unint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 776);

  return sub_18F11897C(a1, a2, (v3 - 88));
}

uint64_t OUTLINED_FUNCTION_67_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 280) = a1;
  v4 = *(v2 + 264) + a1 * v1 + 32;

  return sub_18F139A94(v4, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return sub_18F520B4C();
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_98_2()
{

  return sub_18F2B70D8();
}

uint64_t OUTLINED_FUNCTION_98_4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_18F0F9F88(v2 + a2, v3 + 384, a1);
}

double OUTLINED_FUNCTION_98_5()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 151) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_98_7()
{
}

uint64_t OUTLINED_FUNCTION_98_8()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_98_9()
{

  return [v1 (v0 + 1656)];
}

uint64_t OUTLINED_FUNCTION_98_10()
{

  return sub_18F122E1C();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
  __swift_project_boxed_opaque_existential_1Tm((v0 + 592), *(v0 + 616));

  return swift_getDynamicType();
}

unint64_t OUTLINED_FUNCTION_118_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_18F11897C(a1, a2, va);
}

void OUTLINED_FUNCTION_118_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_118_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_118_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_118_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 248) = a8;
  *(v8 - 268) = a7;
  *(v8 - 272) = a6;
}

uint64_t sub_18F12F320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_18F52279C();
}

uint64_t OUTLINED_FUNCTION_101_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  v13 = *(v10 + 840);
  a10 = v11;

  return sub_18F1D1274(&a10, v13);
}

uint64_t OUTLINED_FUNCTION_101_3(uint64_t a1)
{

  return sub_18F12FC8C(a1, type metadata accessor for NeedsConfirmationTask);
}

uint64_t OUTLINED_FUNCTION_101_4(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_101_9()
{
  *(v2 + 288) = v1;
  *(v2 + 296) = v0;

  return sub_18F52163C();
}

uint64_t OUTLINED_FUNCTION_101_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_101_12@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 232) = a1;
}

uint64_t sub_18F12F4CC()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_24(v1);

  return v4(v3);
}

uint64_t sub_18F12F560(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F130E78;

  return sub_18F12D084();
}

uint64_t sub_18F12F614()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  *(v0 + 160) = v3;
  *(v0 + 80) = v4;
  v5 = sub_18F520B3C();
  *(v0 + 104) = v5;
  OUTLINED_FUNCTION_51(v5);
  *(v0 + 112) = v6;
  *(v0 + 120) = OUTLINED_FUNCTION_19_13();
  *(v0 + 128) = swift_task_alloc();
  v7 = type metadata accessor for AppIntentEnablement();
  OUTLINED_FUNCTION_10(v7);
  *(v0 + 136) = OUTLINED_FUNCTION_34_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v8);
  *(v0 + 144) = OUTLINED_FUNCTION_19_13();
  *(v0 + 152) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F12F724(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = a1;
  os_unfair_lock_lock(v2 + 32);
  sub_18F1BC784(&v2[34], &v5, &v4, a2, &v6);
  os_unfair_lock_unlock(v2 + 32);
}

uint64_t static AppIntent.getSystemImplementedIntentType<A>(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v5 = 1;
    }

    else
    {
      result = swift_dynamicCastMetatype();
      if (result)
      {
        v5 = 2;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v5 = 3;
        }

        else
        {
          result = dynamic_cast_existential_1_conditional(a1);
          if (result)
          {
            v5 = 4;
          }

          else
          {
            result = dynamic_cast_existential_1_conditional(a1);
            if (result)
            {
              v5 = 5;
            }

            else
            {
              result = dynamic_cast_existential_1_conditional(a1);
              if (result)
              {
                v5 = 6;
              }

              else
              {
                result = swift_dynamicCastMetatype();
                if (result)
                {
                  v5 = 7;
                }

                else
                {
                  v5 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a2 = v5;
  return result;
}

void sub_18F12F8F4(uint64_t a1)
{
  v1 = dynamic_cast_existential_1_conditional(a1);
  if (v1)
  {

    sub_18F3E6B10(v1, v1, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
    OUTLINED_FUNCTION_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void OUTLINED_FUNCTION_46_2()
{

  os_unfair_lock_unlock(v0 + 32);
}

void OUTLINED_FUNCTION_46_3()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_46_5()
{
}

BOOL OUTLINED_FUNCTION_46_7(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return os_log_type_enabled(v17, a1);
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1)
{

  return sub_18F1194F4(v3, a1, v2, v1);
}

uint64_t *OUTLINED_FUNCTION_46_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[90] = v9;
  v10[91] = a9;

  return __swift_allocate_boxed_opaque_existential_1(v10 + 87);
}

id OUTLINED_FUNCTION_46_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24)
{
  v38 = *(v31 - 104);
  v37 = *(v31 - 128);
  v34 = *(v31 - 120);
  v33 = *(v31 - 112);
  v35 = *(v31 - 96);

  return sub_18F316A78(a21, a22, a23, v33, v34, v35, v25, v29, v37, 0, a24, v38, v24, v30, v26, v28, a20, v27);
}

uint64_t OUTLINED_FUNCTION_46_17()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = 0;
  return v1 + 8;
}

void OUTLINED_FUNCTION_46_18()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_46_19()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_46_21()
{
  result = v0[3];
  *(v2 - 120) = v1 + 40;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_22()
{

  return sub_18F122E1C();
}

void OUTLINED_FUNCTION_46_25()
{
  *(v0 - 35) = v0[5];
  *(v0 - 38) = v0[4];
  *(v0 - 34) = v0[2];
}

__n128 OUTLINED_FUNCTION_46_26()
{
  v1 = *(v0 + 128);
  *v0 = *(v0 + 112);
  *(v0 + 16) = v1;
  result = *(v0 + 144);
  *(v0 + 32) = result;
  *(v0 + 48) = *(v0 + 160);
  return result;
}

uint64_t sub_18F12FC8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_18F12FCE4()
{
  v1 = [v0 parameters];
  sub_18F0F21A8(0, qword_1ED6FE8F8);
  v2 = sub_18F521CAC();

  v3 = sub_18F111F70(v2);
  if (v3)
  {
    v4 = v3;
    v11 = MEMORY[0x1E69E7CC0];
    sub_18F130458();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v11;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x193ADBE10](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
        }

        v8 = v7;
        sub_18F12FE6C(__src);

        v11 = v6;
        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          sub_18F130458();
          v6 = v11;
        }

        ++v5;
        *(v6 + 16) = v9 + 1;
        memcpy((v6 + 80 * v9 + 32), __src, 0x50uLL);
      }

      while (v4 != v5);
    }
  }

  else
  {
  }
}

void sub_18F12FE6C(uint64_t a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClass() configuration];
  v5 = [v1 value];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  LNValue.asPropertyType.getter();
  if (!v18)
  {

    sub_18F0FA038(&v17, &qword_1EACD0620);
LABEL_5:
    v13 = [v2 identifier];
    v14 = sub_18F5218DC();
    v16 = v15;

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 64) = 0;
    goto LABEL_6;
  }

  sub_18F0FD0B4(&v17, v19);
  v7 = [v2 identifier];
  v8 = sub_18F5218DC();
  v10 = v9;

  sub_18F0FD6C4(v19, a1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
  DynamicType = swift_getDynamicType();
  v12 = v19[4];
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 56) = DynamicType;
  *(a1 + 64) = v12;
LABEL_6:
  *(a1 + 72) = v4;
}

uint64_t sub_18F12FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreparedIntent();
  (*(a3 + 120))(a2, a3);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F1194F4(v7, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_51_3()
{
  result = *(v0 + 57);
  *(v1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_51_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51_13(_OWORD **a1)
{
  sub_18F3B3E60(a1, v1);
}

uint64_t OUTLINED_FUNCTION_51_14()
{

  return sub_18F122E1C();
}

void OUTLINED_FUNCTION_51_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_106_3(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_106_4(uint64_t a1)
{
  *(v1 + 14) = a1;
}

uint64_t OUTLINED_FUNCTION_106_6()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_18F138888(v2, v3, v4, v5);
}

double OUTLINED_FUNCTION_106_7()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_106_11(int a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v3);
  *(v4 - 144) = v1;
  return result;
}

void sub_18F1303A4()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8618);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16A0DC(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(Swift::String entityInstanceIdentifier, Swift::String entityTypeIdentifier, Swift::String displayTitle, Swift::String_optional displaySubtitle, Swift::OpaquePointer displaySynonyms, Swift::String_optional typeDisplayName, Swift::OpaquePointer typeDisplaySynonyms, Swift::OpaquePointer propertyDictionary, Swift::Int priority)
{
  object = displaySubtitle.value._object;
  v10 = typeDisplayName.value._object;
  v11 = sub_18F5218AC();
  v12 = sub_18F5218AC();
  v13 = sub_18F5218AC();
  if (object)
  {
    v18 = sub_18F5218AC();
  }

  else
  {
    v18 = 0;
  }

  v14 = sub_18F521C8C();
  if (typeDisplayName.value._object)
  {
    v10 = sub_18F5218AC();
  }

  v15 = objc_opt_self();
  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_18F1305E8(v17, v11, v12, v13, v18, v14, v10, typeDisplaySynonyms._rawValue, propertyDictionary._rawValue, v16, v15);
}

void sub_18F1305E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = sub_18F521C8C();
  v17 = sub_18F5216AC();
  [a11 tagCSSearchableItem:a1 entityInstanceIdentifier:a2 typeIdentifier:a3 displayTitle:a4 displaySubtitle:a5 displaySynonyms:a6 typeDisplayName:a7 typeDisplaySynonyms:v16 propertyDictionary:v17 priority:a10];
}

uint64_t get_enum_tag_for_layout_string_10AppIntents12_IntentValue_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F13071C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18F1307A0()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F08);
      v6 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F169E98(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_18F130880(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18F135710();
  }

  v8 = *(v7 + 16);
  v10[0] = v7 + 32;
  v10[1] = v8;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  sub_18F135728(v10, a2, a3);
  *a1 = v7;
  if (v3)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return swift_bridgeObjectRelease_n();
  }
}