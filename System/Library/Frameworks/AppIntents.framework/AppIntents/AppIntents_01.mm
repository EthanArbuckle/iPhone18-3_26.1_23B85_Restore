uint64_t sub_18F102F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntity.fullyQualifiedIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  return EntityIdentifier.init<A>(for:)(v9, a1, a2, a3);
}

uint64_t sub_18F103090()
{
  sub_18F0F689C(*(v0 + 16));

  return v0;
}

uint64_t sub_18F1030B8()
{
  sub_18F103090();
  v0 = OUTLINED_FUNCTION_8_48();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F1030F8()
{
  OUTLINED_FUNCTION_79();
  v2 = type metadata accessor for ViewAnnotation(0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t type metadata accessor for AppViewEntityNode()
{
  result = qword_1EACCF3E0;
  if (!qword_1EACCF3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F10318C()
{
  result = type metadata accessor for ViewAnnotation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F103210(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t AppViewEntityNode.init(fullyQualifiedIdentifier:interactionId:)()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
  v4 = OUTLINED_FUNCTION_30_33();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppViewEntityNode();
  *(v2 + *(result + 20)) = v0;
  *(v2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_18F1032E4()
{
  OUTLINED_FUNCTION_79();
  v2 = type metadata accessor for ViewAnnotation(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1)
{

  return sub_18F164CE8(a1);
}

uint64_t OUTLINED_FUNCTION_39_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_18F522A6C();
}

void OUTLINED_FUNCTION_39_11(uint64_t a1, uint64_t a2)
{

  sub_18F120FCC(v2, a2, v2, v3);
}

double OUTLINED_FUNCTION_39_12()
{
  *(v0 + 168) = 0;
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

void OUTLINED_FUNCTION_39_13()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_39_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_39_17()
{

  sub_18F2E9CD0();
}

unint64_t OUTLINED_FUNCTION_39_20(uint64_t a1)
{

  return sub_18F33A964(a1);
}

void OUTLINED_FUNCTION_39_21()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_39_22()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_39_23()
{
  result = *(v0 + 72);
  *(v2 - 88) = v1 + 72;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_25()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_39_28()
{

  return sub_18F141568();
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_18F1E45C0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1)
{

  return sub_18F0EF148(a1, v1);
}

void OUTLINED_FUNCTION_55_8()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_55_9()
{

  return sub_18F5229FC();
}

uint64_t OUTLINED_FUNCTION_55_10()
{
  *(v1 + 32) = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_55_11()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 464);

  return sub_18F0FD0B4((v0 + 624), v0 + 464);
}

void OUTLINED_FUNCTION_55_12()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_55_13()
{

  return sub_18F522ACC();
}

uint64_t OUTLINED_FUNCTION_55_14()
{

  return sub_18F52165C();
}

uint64_t OUTLINED_FUNCTION_55_19(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return swift_beginAccess();
}

uint64_t sub_18F1037E0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ViewAnnotation(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v25 = v10;
      sub_18F10A688();
      goto LABEL_10;
    }

    if (v14 <= v13)
    {
      v25 = v10;
      sub_18F2CCCA4();
LABEL_10:
      v20 = *v4;
      sub_18F522EFC();
      ViewAnnotation.hash(into:)();
      v21 = sub_18F522F4C();
      v22 = ~(-1 << *(v20 + 32));
      while (1)
      {
        a2 = v21 & v22;
        if (((*(v20 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_18F0F99B8(*(v20 + 48) + *(v9 + 72) * a2, v12, type metadata accessor for ViewAnnotation);
        static ViewAnnotation.== infix(_:_:)();
        v24 = v23;
        sub_18F106ED8(v12, type metadata accessor for ViewAnnotation);
        if (v24)
        {
          goto LABEL_15;
        }

        v21 = a2 + 1;
      }
    }

    sub_18F2CBF38();
  }

LABEL_7:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18F0F90A4(a1, *(v15 + 48) + *(v9 + 72) * a2, type metadata accessor for ViewAnnotation);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_15:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_18F103A00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_31_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_18F103A5C()
{
  result = qword_1ED6FD778;
  if (!qword_1ED6FD778)
  {
    type metadata accessor for ViewAnnotation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FD778);
  }

  return result;
}

uint64_t sub_18F103AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F103AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F103B8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t EntityIdentifier.interactionId.getter()
{
  OUTLINED_FUNCTION_17_11();
  static AppValue._identifier.getter(v0, *(v1 + 8));
  OUTLINED_FUNCTION_12_15();

  sub_18F5219CC();
  result = sub_18F522F4C();
  if (result < 0)
  {
    v3 = __OFSUB__(0, result);
    result = -result;
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id StandardEntityProvider.__allocating_init(entityIdentifier:)(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[3];
    v14 = *(a1 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0078);
    OUTLINED_FUNCTION_87_5();
    OUTLINED_FUNCTION_98_3();
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18F53F800;
    v7 = v6 + v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
    *v7 = v2;
    *(v7 + 8) = v14;
    *(v7 + 24) = v3;
    type metadata accessor for DisplayRepresentation();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_92_0();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v12 = objc_allocWithZone(v1);
  return sub_18F0F94A0(v6);
}

uint64_t sub_18F103E18(uint64_t a1, uint64_t a2, int *a3)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_34();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_34();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void RepresentedEntityProviding._setRepresentedAppEntity<A>(_:state:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v64 = v23;
  v67 = v24;
  v68 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v69 = a22;
  v66 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v65 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v64 - v39;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_75_0();
  v46 = *v33;
  v48 = v47;
  sub_18F0EF200();
  OUTLINED_FUNCTION_106(v40, 1, v48);
  if (v49)
  {
    sub_18F0EF1A8(v40, &qword_1EACCFD00);
    RepresentedEntityProviding._clearAnnotations<A>(view:)();
  }

  else
  {
    v50 = v69;
    sub_18F0F904C();
    if ((*(v27 + 48))(v29, v27))
    {
      v53 = v52;
      ObjectType = swift_getObjectType();
      *&v72 = v46;
      AppViewBridgeAnnotationManager.addAnnotation<A>(_:for:state:)(v22, v31, &v72, ObjectType, v67, v53, v68, v64, v66, v50, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4]);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_17_2();
    sub_18F0F9960();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_18F0FD0B4(v44, &v72);
        sub_18F0FD6C4(&v72, v71);
        RepresentedEntityProviding.configureEntityProvider(_:)();
        sub_18F0EF1A8(v71, &qword_1EACCFCF8);
        __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      }

      else
      {
        v59 = *(v44 + 16);
        v58 = *(v44 + 24);
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
        v72 = *v44;
        v73 = v59;
        v74 = v58;
        RepresentedEntityProviding.configureEntityProvider(_:)();

        sub_18F0EF1A8(v44 + v60, &qword_1EACD32D0);
      }

      v57 = v65;
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      sub_18F106ED8(v44, v56);
      v57 = v65;
    }

    sub_18F0F9960();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v48);
    (*(v27 + 40))(v57, v29, v27);
    sub_18F0EF1A8(v57, &qword_1EACCFD00);
    sub_18F106ED8(v22, type metadata accessor for ViewAnnotation);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return type metadata accessor for ResolverSpecificationBuilder.Specification();
}

uint64_t OUTLINED_FUNCTION_56_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = 2;

  return type metadata accessor for AppIntentError.Context(0);
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_56_15()
{
}

uint64_t OUTLINED_FUNCTION_87_3()
{
}

uint64_t OUTLINED_FUNCTION_87_4(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

double OUTLINED_FUNCTION_87_6()
{
  result = 0.0;
  *(v0 + 31) = 2;
  return result;
}

double OUTLINED_FUNCTION_87_7()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_32_8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_14()
{
  *(v0 + 696) = 0;
  *(v0 + 704) = 0xE000000000000000;

  return swift_getAtPartialKeyPath();
}

id OUTLINED_FUNCTION_32_20()
{

  return sub_18F262604(v0);
}

void *OUTLINED_FUNCTION_32_23()
{

  return __swift_project_boxed_opaque_existential_1Tm((v1 + 88), v0);
}

uint64_t OUTLINED_FUNCTION_32_24(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_28()
{
  *(v1 - 124) = WORD2(v0);
  *(v1 - 128) = v0;
  return v1 - 128;
}

double OUTLINED_FUNCTION_32_29()
{
  *(v0 + 256) = 0;
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  return result;
}

void OUTLINED_FUNCTION_32_30(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_32_34()
{

  return sub_18F1C3ED4(v2, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_32_36()
{

  return sub_18F520B3C();
}

__n128 OUTLINED_FUNCTION_32_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a25 = v26;
  result = *(v25 + 8);
  *(v27 - 120) = &a25;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_41()
{

  return sub_18F520C8C();
}

__n128 OUTLINED_FUNCTION_32_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v10 + 416) = a1;
  *(a1 + 16) = v9;
  result = a9;
  *(a1 + 24) = a9;
  return result;
}

void OUTLINED_FUNCTION_32_43(uint64_t a1@<X8>)
{
  *(v5 - 136) = v4;
  *(v5 - 128) = v3;
  *(v5 - 120) = v2;
  *(v5 - 112) = v1;
  *(v5 - 104) = a1;
}

void OUTLINED_FUNCTION_13_11()
{
  v0[7] = 0;
  v0[5] = 0;
  v0[6] = 1;
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_18F0EF148(v0, v1);
}

double OUTLINED_FUNCTION_13_14()
{
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 129) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return sub_18F521B3C();
}

uint64_t OUTLINED_FUNCTION_13_22()
{
}

uint64_t OUTLINED_FUNCTION_13_26()
{
}

void OUTLINED_FUNCTION_13_30(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_13_33()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;

  return sub_18F2DE854(v0);
}

uint64_t OUTLINED_FUNCTION_13_36()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_13_39()
{

  return [v0 (v1 + 3205)];
}

uint64_t OUTLINED_FUNCTION_13_40()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_42()
{

  return static IntentContext.current.getter(v0);
}

uint64_t OUTLINED_FUNCTION_13_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_18F10C138(v8, a2, v9, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_13_50()
{
  v3 = v1[7] + 24 * v0;
  v1[13] = *(v3 + 32);
  v1[14] = *(v3 + 48);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

void OUTLINED_FUNCTION_13_54()
{

  sub_18F11D6AC(0, 0x3000000000000000, 0);
}

void OUTLINED_FUNCTION_15_6()
{

  sub_18F166ED0();
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_15_14()
{
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_15_27()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_28()
{

  return sub_18F5229DC();
}

uint64_t OUTLINED_FUNCTION_15_30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return v1;
}

void OUTLINED_FUNCTION_15_33()
{

  JUMPOUT(0x193ADB260);
}

double OUTLINED_FUNCTION_15_35()
{
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0;
  *(v0 - 232) = 0;
  return result;
}

void OUTLINED_FUNCTION_15_37()
{
  v1[88] = 0x656D617261707B24;
  v1[89] = 0xEB00000000726574;
  v1[117] = v0;
}

uint64_t OUTLINED_FUNCTION_15_40()
{
  v1 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_41()
{
}

uint64_t OUTLINED_FUNCTION_15_42()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_15_47@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_18F522BFC();
}

void OUTLINED_FUNCTION_15_49(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 264) = a8;
  *(v8 - 292) = a7;
  *(v8 - 296) = a6;
  *(v8 - 308) = a4;
  *(v8 - 328) = a3;
  *(v8 - 256) = a2;
}

uint64_t OUTLINED_FUNCTION_15_56()
{
}

id OUTLINED_FUNCTION_31_13()
{

  return sub_18F1F0988(v0, v1);
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_15()
{

  return static AppValue._identifier.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_31_16(uint64_t result)
{
  *(v1 + 80) = 0;
  *(v1 + 176) = result;
  return result;
}

void OUTLINED_FUNCTION_31_19()
{
  v1 = v0[84];
  v0[81] = v0[83];
  v0[82] = v1;
}

uint64_t OUTLINED_FUNCTION_31_20()
{
}

uint64_t OUTLINED_FUNCTION_31_21()
{
  v2 = *(v0 + 128);
  v3 = *(*(v0 + 136) + 8);

  return AppIntent.systemContext.getter(v2, v3);
}

double OUTLINED_FUNCTION_109()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_25()
{

  return sub_18F0FA038(v1 + 256, v0);
}

uint64_t OUTLINED_FUNCTION_31_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_29()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_31_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = v23;
  result = v22[2];
  *(v24 - 112) = &a22;
  return result;
}

uint64_t *OUTLINED_FUNCTION_31_40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

unint64_t OUTLINED_FUNCTION_31_41(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 + 4) = v5;
  *(v4 + 12) = 2082;

  return sub_18F11897C(v6, v3, va);
}

uint64_t OUTLINED_FUNCTION_31_44()
{

  return sub_18F520C8C();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
}

double OUTLINED_FUNCTION_7_8()
{
  result = 0.0;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 0u;
  *(v0 - 48) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return static AppValue._identifier.getter(v1, v0);
}

double OUTLINED_FUNCTION_90()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_18F0EF1A8(v1 - 224, v0);
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  v1 = v0[111];
  __swift_storeEnumTagSinglePayload(v0[109], 0, 1, v0[106]);
  return v1;
}

void OUTLINED_FUNCTION_7_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_7_24()
{

  JUMPOUT(0x193ADB180);
}

uint64_t OUTLINED_FUNCTION_7_26(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return AppIntentPrototype.entities<A, B>(for:intentIdentifier:parameter:matching:localeIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_7_27()
{
}

__n128 OUTLINED_FUNCTION_7_29()
{
  result = v0[6];
  v0[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return type metadata accessor for ViewEntityIdentifier();
}

uint64_t OUTLINED_FUNCTION_7_32()
{
  *(v0 + 696) = 0;
  *(v0 + 704) = 0xE000000000000000;
  return v0 + 896;
}

uint64_t OUTLINED_FUNCTION_7_37()
{
  *(v2 - 272) = v1 & 0xCFFFFFFFFFFFFFFFLL;

  return sub_18F16AAE0(v0, v1 & 0xCFFFFFFFFFFFFFFFLL);
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return sub_18F521CEC();
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_7_42()
{

  return sub_18F521D0C();
}

double OUTLINED_FUNCTION_7_43()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 3;
  return result;
}

void OUTLINED_FUNCTION_7_45(__n128 a1)
{
  v1[12] = a1;
  v1[13] = a1;
  v1[11].n128_u64[0] = 0;
  v1[9] = a1;
  v1[10] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[3] = a1;
  v1[4] = a1;
}

uint64_t OUTLINED_FUNCTION_7_46(unint64_t *a1)
{

  return sub_18F31F9B4(a1);
}

double OUTLINED_FUNCTION_7_48()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_7_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10)
{
  *(v10 + 112) = a1;
  result = a9;
  *(a1 + 16) = a10;
  *(a1 + 32) = v11;
  *(a1 + 40) = a9;
  return result;
}

void OUTLINED_FUNCTION_7_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 16) = v11;
  v14 = a11 + 16 * v12;
  *(v14 + 32) = 1701669204;
  *(v14 + 40) = v13;
}

uint64_t OUTLINED_FUNCTION_7_53(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_57()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_7_60()
{

  return sub_18F52259C();
}

uint64_t OUTLINED_FUNCTION_7_61(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_7_62()
{

  return sub_18F521C1C();
}

uint64_t OUTLINED_FUNCTION_7_63()
{
  v3 = *(v1 - 280);

  return sub_18F15F1BC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_7_65()
{
  v4[3] = v2;
  v4[4] = v3;
  v4[2] = v0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_66()
{

  return type metadata accessor for PreparedIntent();
}

uint64_t OUTLINED_FUNCTION_7_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  *(v15 + a10) = 0;
  *a15 = 0;
  a15[1] = 0;
  *(v15 + a11) = 0;
  *(v15 + *(v16 + 112)) = 0;
}

double OUTLINED_FUNCTION_7_70@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 144) = a1;
  result = 0.0;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 7;
  return result;
}

double OUTLINED_FUNCTION_7_72(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v1 - 288), 1, 1, a1);
  *(v1 - 208) = 0;
  result = 0.0;
  *(v1 - 240) = 0u;
  *(v1 - 224) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_74()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_7_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 136) = a2;
  *(v4 - 128) = a4;
  *(v4 - 144) = a1;

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t OUTLINED_FUNCTION_76_1()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_18F138888(v2, v3, v4, v5);
}

unint64_t OUTLINED_FUNCTION_76_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20)
{
  v21 = a19;
  v22 = a20;

  return sub_18F11897C(v21, v22, &a18);
}

uint64_t OUTLINED_FUNCTION_76_9()
{

  return sub_18F0FECD4(v0, v1 - 152);
}

void OUTLINED_FUNCTION_76_11()
{
}

uint64_t OUTLINED_FUNCTION_76_12()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

void OUTLINED_FUNCTION_76_14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*(a2 - 256) + 8);

  sub_18F120FCC(v2, a1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_43_4()
{
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_18F11897C(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_43_12()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_43_13()
{
  v2[125] = v1;
  v2[124] = v3;
  v2[123] = v0;
}

uint64_t OUTLINED_FUNCTION_43_15()
{

  return AppIntentError.localizedStringResource.getter();
}

uint64_t OUTLINED_FUNCTION_43_16()
{
  v2 = *(v1 - 136);
  v3 = v0[14];
  v4 = *(v1 - 120);
  v0[16] = v0[12];
  *(v1 - 104) = v2;
  v0[18] = v3;
  *(v1 - 88) = v4;
  return v1 - 112;
}

uint64_t OUTLINED_FUNCTION_43_19()
{
  *(v2 - 80) = v1 + 80;
  sub_18F3B3EB4((v2 - 96), v0);
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1)
{
  v1[49] = a1;
  v1[24] = a1;
  v1[20] = v2;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_18F5218AC();
}

__n128 OUTLINED_FUNCTION_14_22(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_23()
{
}

uint64_t OUTLINED_FUNCTION_14_24()
{
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_27()
{
}

uint64_t OUTLINED_FUNCTION_14_35()
{
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 16) = 0;

  return OUTLINED_FUNCTION_292();
}

uint64_t OUTLINED_FUNCTION_14_36()
{
  v2 = *(v0 + 792);
  v3 = *(v0 + 808);

  return sub_18F306F94(v2, v3, type metadata accessor for IntentDialog.Storage);
}

void OUTLINED_FUNCTION_14_37(__n128 a1)
{
  v4 = v2 + *(v3 + 96);
  *(v4 + 32) = a1;
  *(v4 + 48) = a1;
  *v4 = a1;
  *(v4 + 16) = a1;
  *(v4 + 64) = *(v1 + 16);
  *(v4 + 80) = 0;
  v5 = (v2 + *(v3 + 100));
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
}

uint64_t OUTLINED_FUNCTION_14_39(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  sub_18F383EB0(a1, a2);
  sub_18F383E84(a15, v15, a13);
  return v16;
}

double OUTLINED_FUNCTION_14_40()
{
  *(v0 - 208) = 0;
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_41(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14_44(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);

  return sub_18F3C12AC(v3, v4, (v2 + 56));
}

uint64_t OUTLINED_FUNCTION_14_46()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

void OUTLINED_FUNCTION_14_48()
{
  v4 = (v2 + *(v1 + 44));
  *v4 = v0;
  v4[1] = v3;
  v5 = (v2 + *(v1 + 48));
  *v5 = 0;
  v5[1] = 0;
}

uint64_t OUTLINED_FUNCTION_14_50(uint64_t a1)
{
  *(v1 + 152) = a1;

  return sub_18F521DBC();
}

void OUTLINED_FUNCTION_14_53(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *(v8 - 276) = a8;
  *(v8 - 280) = a7;
  *(v8 - 232) = a5;
  *(v8 - 292) = a4;
  *(v8 - 288) = a3;
  *(v8 - 240) = a2;
  *(v8 - 256) = *(v8 + 16);
}

uint64_t OUTLINED_FUNCTION_14_54(uint64_t a1)
{
  *(v1 + 184) = a1;
}

uint64_t type metadata accessor for IntentDonationIdentifier()
{
  result = qword_1EACCF438;
  if (!qword_1EACCF438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StandardEntityProvider.__allocating_init(node:viewIdentifier:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0078);
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_98_3();
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18F53F800;
  v12 = v11 + v10;
  *v12 = *v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v4;
  *(v12 + 40) = v2 & 1;
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(v0);
  sub_18F0F94A0(v11);
  OUTLINED_FUNCTION_16();
}

uint64_t RepresentedEntityProviding.standardProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v8);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    *(&v12 + 1) = v2;
    v13 = v3;
    __swift_allocate_boxed_opaque_existential_1(&v11);
    OUTLINED_FUNCTION_31_0();
    (*(v4 + 16))();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_18F0EF1A8(v8, &qword_1EACCFCD8);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_18F0EF200();
  if (!v9)
  {
    sub_18F0EF1A8(v8, &qword_1EACCFCE0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCE8);
  type metadata accessor for StandardEntityProvider(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v7;
LABEL_9:
  sub_18F0EF1A8(&v11, &qword_1EACCFCE0);
  return v5;
}

uint64_t sub_18F106C58()
{
  result = sub_18F106C7C();
  byte_1ED707680 = result & 1;
  return result;
}

uint64_t sub_18F106C7C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_18F5218DC();
  v4 = sub_18F106DDC(0xD000000000000026, 0x800000018F526690, v2, v3, v1);

  if (v4)
  {
    sub_18F52261C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_18F106E70(v13);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = v10;
LABEL_9:
  v6 = [v0 standardUserDefaults];
  v7 = sub_18F5218AC();
  v8 = [v6 BOOLForKey_];

  return (v5 | v8) & 1;
}

id sub_18F106DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_18F5218AC();

  v7 = sub_18F5218AC();

  v8 = [a5 objectForKey:v6 inDomain:v7];

  return v8;
}

uint64_t sub_18F106E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F106ED8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F106F30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

void AppViewBridgeAnnotationManager.addAnnotation<A>(_:for:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v25 = v24;
  v52 = v26;
  v53 = v27;
  v29 = v28;
  v54 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9368);
  OUTLINED_FUNCTION_10(v33);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12_63();
  v35 = type metadata accessor for AppViewBridgeAnnotation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4();
  v40 = v39 - v38;
  v41 = *v32;
  if (qword_1ED6FD648 != -1)
  {
    OUTLINED_FUNCTION_5_83();
  }

  OUTLINED_FUNCTION_17_46();
  if (v42)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_1_113();
  sub_18F0F9A14();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_135();
    sub_18F106F30(v40, v46);
LABEL_8:
    ViewAnnotation.id.getter();
    OUTLINED_FUNCTION_22_45();
    v47(v52, v25);
    OUTLINED_FUNCTION_1_113();
    sub_18F0F9A14();
    v48 = (v23 + *(v35 + 20));
    v48[1] = 0;
    v48[2] = 0;
    v48[3] = 0;
    v49 = swift_unknownObjectWeakInit();
    v49[1] = v53;
    v49[2] = a21;
    v49[3] = a22;
    swift_unknownObjectWeakAssign();
    *(v23 + *(v35 + 24)) = v41;
    OUTLINED_FUNCTION_3_86();
    sub_18F0F9A14();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v35);
    v50 = (*(v29 + 24))(v55, v54, v29);
    sub_18F10AD98(v22);
    v50(v55, 0);
    OUTLINED_FUNCTION_2_105();
    v45 = v23;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
    sub_18F0EF1A8(v40 + *(v51 + 48), &qword_1EACD32D0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_135();
  v45 = v40;
LABEL_9:
  sub_18F106F30(v45, v44);
LABEL_10:
  OUTLINED_FUNCTION_16();
}

uint64_t type metadata accessor for AppViewBridgeAnnotation()
{
  result = qword_1ED6FD508;
  if (!qword_1ED6FD508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F107270()
{
  result = type metadata accessor for ViewAnnotation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void RepresentedEntityProviding.configureEntityProvider(_:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  v11 = *v5;
  v10 = v5[1];
  v13 = v5[2];
  v12 = v5[3];
  v14 = (*(v1 + 16))(v3, v1);
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
    *v9 = v11;
    v9[1] = v10;
    v9[2] = v13;
    v9[3] = v12;
    type metadata accessor for DisplayRepresentation();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    swift_storeEnumTagMultiPayload();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    StandardEntityProvider.addAnnotation(_:)();

    OUTLINED_FUNCTION_0_3();
    sub_18F106ED8(v9, v20);
  }

  else
  {
    (*(v1 + 24))(v28, v3, v1);
    v21 = v29;
    sub_18F0EF1A8(v28, &qword_1EACCFCF0);
    if (v21)
    {
      if (qword_1ED6FD658 != -1)
      {
        OUTLINED_FUNCTION_2_12();
        swift_once();
      }

      v22 = sub_18F52165C();
      __swift_project_value_buffer(v22, qword_1ED707698);
      v23 = sub_18F52163C();
      v24 = sub_18F52221C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_18F0E9000, v23, v24, "Tried to use standard annotation with a custom entity provider. This is not allowed", v25, 2u);
        OUTLINED_FUNCTION_47_2();
        MEMORY[0x193ADD350]();
      }
    }

    else
    {
      type metadata accessor for StandardEntityProvider(0);
      v28[0] = v11;
      v28[1] = v10;
      v28[2] = v13;
      v29 = v12;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v26 = StandardEntityProvider.__allocating_init(entityIdentifier:)(v28);
      OUTLINED_FUNCTION_90_1();
      v27();
    }
  }

  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_80_0();
  v10 = v9(v8);
  if (v10)
  {
    v11 = v10;
    sub_18F0EF200();
    if (!v30)
    {
      sub_18F0EF1A8(&v29, &qword_1EACCFCF8);
      StandardEntityProvider.clearEntities()();
      OUTLINED_FUNCTION_90_1();
      v28(v11, v3, v1);

      goto LABEL_9;
    }

    sub_18F0FD0B4(&v29, v31);
    sub_18F0FD6C4(v31, v7);
    OUTLINED_FUNCTION_78();
    swift_storeEnumTagMultiPayload();
    StandardEntityProvider.addAnnotation(_:)();
    OUTLINED_FUNCTION_0_3();
    sub_18F106ED8(v7, v12);
    OUTLINED_FUNCTION_90_1();
    v14 = v11;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_80_0();
    v16(v15);
    v17 = v32;
    sub_18F0EF1A8(v31, &qword_1EACCFCF0);
    if (v17)
    {
      goto LABEL_9;
    }

    sub_18F0EF200();
    if (!v30)
    {
      sub_18F0EF1A8(&v29, &qword_1EACCFCF8);
      goto LABEL_9;
    }

    sub_18F0FD0B4(&v29, v31);
    v18 = v32;
    v19 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    type metadata accessor for StandardEntityProvider(0);
    v20 = sub_18F52254C();
    OUTLINED_FUNCTION_10(v20);
    OUTLINED_FUNCTION_12();
    MEMORY[0x1EEE9AC00](v21);
    v23 = &v29 - v22;
    OUTLINED_FUNCTION_31_0();
    (*(v24 + 16))(v23, v19, v18);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v18);
    v11 = StandardEntityProvider.__allocating_init<A>(entity:)();
    OUTLINED_FUNCTION_90_1();
  }

  v13(v14, v3, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
LABEL_9:
  OUTLINED_FUNCTION_16();
}

void RepresentedEntityProviding.customProvider.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 16))();
  if (v3)
  {

LABEL_3:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = OUTLINED_FUNCTION_92_0();
  v5(v4);
  v6 = v10;
  if (!v10)
  {
    sub_18F0EF1A8(v9, &qword_1EACCFCD8);
    goto LABEL_3;
  }

  v7 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  __swift_allocate_boxed_opaque_existential_1(a2);
  OUTLINED_FUNCTION_31_0();
  (*(v8 + 16))();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t type metadata accessor for CollectionsEntityProvider()
{
  result = qword_1EACCE7D8;
  if (!qword_1EACCE7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F107694()
{
  result = sub_18F5215DC();
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

void *CollectionsEntityProvider.init(provider:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = sub_18F52165C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v9 = __swift_project_value_buffer(v5, qword_1ED707698);
  (*(v7 + 16))(v2, v9, v5);
  sub_18F5215AC();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F522D4C();
  OUTLINED_FUNCTION_55_1();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_init);
  v10 = OUTLINED_FUNCTION_46();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v1;
}

uint64_t sub_18F1078C0()
{
  OUTLINED_FUNCTION_55_1();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id StandardEntityProvider.__allocating_init<A>(entity:)()
{
  v1 = v0;
  sub_18F52254C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B20);
  sub_18F107A24(sub_18F107C68, v2, v3, &v10);
  if (v10)
  {
    v4 = v10;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = objc_allocWithZone(v1);
  v6 = sub_18F0F94A0(v4);
  v7 = OUTLINED_FUNCTION_19_3();
  v8(v7);
  return v6;
}

uint64_t sub_18F107A24@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_11_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v26, 1, a2);
}

uint64_t sub_18F107C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0078);
  v8 = *(type metadata accessor for ViewAnnotation(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18F53F800;
  v11 = (v10 + v9);
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v10;
  return result;
}

BOOL static AppViewBridgeAnnotationKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_18F522D5C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t DisplayRepresentation.init(title:subtitle:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DisplayRepresentation();
  v9 = v8[5];
  v10 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = v8[6];
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *(a4 + v8[7]) = xmmword_18F540410;
  *(a4 + v8[8]) = 0;
  *(a4 + v8[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  sub_18F0FF5DC(a2, a4 + v9, &qword_1EACCF7A8);
  return sub_18F0FF5DC(a3, a4 + v14, &qword_1EACD0270);
}

uint64_t static AppEntity.structuredDataRepresentations.getter()
{
  v0 = OUTLINED_FUNCTION_4_41();
  v1 = OUTLINED_FUNCTION_4_41();
  v2 = 2;
  if (v0)
  {
    v2 = 3;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0 != 0;
  }

  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_2_52();
  if (OUTLINED_FUNCTION_4_41())
  {
    return v3 | 0x1000;
  }

  else
  {
    return v3;
  }
}

uint64_t EntityIdentifier.description.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_12();
  if (dynamic_cast_existential_1_conditional(v1))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_37();
    v2 = sub_18F164CE8();

    v3 = v2;
    sub_18F1AF344();
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_8_11();
  v6 = v5;
  v7 = [v5 description];

  v8 = sub_18F5218DC();
  return v8;
}

void RepresentedEntityProviding._clearAnnotations<A>(view:)()
{
  OUTLINED_FUNCTION_18();
  v13[1] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - v3;
  v5 = OUTLINED_FUNCTION_92_0();
  if (v6(v5))
  {
    swift_getObjectType();
    AppViewBridgeAnnotationManager.removeEntityAnnotations<A>(for:)();
    swift_unknownObjectRelease();
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  RepresentedEntityProviding.configureEntityProvider(_:)();
  sub_18F0EF1A8(v14, &qword_1EACCFCF8);
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_67_0();
  v12(v11);
  sub_18F0EF1A8(v4, &qword_1EACCFD00);
  OUTLINED_FUNCTION_16();
}

void AppViewBridgeAnnotationManager.removeEntityAnnotations<A>(for:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (qword_1ED6FD648 != -1)
  {
    OUTLINED_FUNCTION_5_83();
  }

  OUTLINED_FUNCTION_17_46();
  if (v14 == 1)
  {
    OUTLINED_FUNCTION_22_45();
    v16 = v15(v11, v7);
    MEMORY[0x1EEE9AC00](v16);
    v18[2] = v11;
    v18[3] = v9;
    v18[4] = v7;
    v18[5] = v5;
    v18[6] = v3;
    v18[7] = v1;
    v18[8] = v13;
    v17 = sub_18F42330C(sub_18F4231CC, v18, v16);

    (*(v7 + 16))(v17, v11, v7);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t EntityProperty.wrappedValue.getter()
{
  if (*(v0 + 72) != 3 || (OUTLINED_FUNCTION_18_35(), v1))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F10887C();
  }

  return result;
}

void sub_18F10887C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v33 = v2;
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v32 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  OUTLINED_FUNCTION_11_0();
  v12 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = qword_1ED707718;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F102F54(v1 + v16, &v35);
  if (v36)
  {
    sub_18F0FD0B4(&v35, v37);
    sub_18F0FD724(v37, &v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v3);
      v20 = *(v12 + 32);
      v20(v15, v10, v3);
      v20(v33, v15, v3);
LABEL_6:
      OUTLINED_FUNCTION_16();
      return;
    }

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
    (*(v32 + 8))(v10, v6);
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v27 = *(v1 + qword_1ED707728 + 8);
    if (v27)
    {
      v1 = *(v1 + qword_1ED707728);
      v16 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_19_34();
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v1, v16);

    OUTLINED_FUNCTION_44_13();
    __swift_project_boxed_opaque_existential_1Tm(v37, v37[3]);
    swift_getDynamicType();
    v29 = sub_18F52307C();
    MEMORY[0x193ADB000](v29);

    OUTLINED_FUNCTION_44_13();
    v34 = v3;
    swift_getMetatypeMetadata();
    v30 = sub_18F52196C();
    MEMORY[0x193ADB000](v30);
  }

  else
  {
    sub_18F10095C(&v35);
    if (sub_18F31CF78())
    {
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, AssociatedTypeWitness);
      swift_dynamicCast();
      goto LABEL_6;
    }

    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_18F52279C();
    v28 = *(v1 + qword_1ED707728 + 8);
    if (v28)
    {
      v1 = *(v1 + qword_1ED707728);
      v16 = v28;
    }

    else
    {
      OUTLINED_FUNCTION_19_34();
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v1, v16);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v35 = v3;
    swift_getMetatypeMetadata();
    v31 = sub_18F52196C();
    MEMORY[0x193ADB000](v31);
  }

  sub_18F522A3C();
  __break(1u);
}

void OUTLINED_FUNCTION_96_2()
{

  JUMPOUT(0x193ADB000);
}

unint64_t OUTLINED_FUNCTION_96_3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18F11897C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_96_5@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_18F0F9F88(v2 + a2, v3 + 344, a1);
}

uint64_t OUTLINED_FUNCTION_96_6()
{

  return sub_18F0FECD4(v0 - 152, v0 - 120);
}

uint64_t OUTLINED_FUNCTION_96_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(a18 + 4) = v18;
  *(a18 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

uint64_t *OUTLINED_FUNCTION_96_9(uint64_t a1)
{
  *(v1 - 176) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 208));
}

uint64_t OUTLINED_FUNCTION_96_10()
{
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_44_5(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_44_8(float a1)
{
  *v1 = a1;

  return sub_18F5227FC();
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t result, uint64_t a2)
{
  v2[80] = v3;
  v2[81] = result;
  v2[82] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_12@<X0>(uint64_t a1@<X8>)
{
  result = __swift_storeEnumTagSinglePayload(v3 + a1, 1, 1, v2);
  *(v3 + *(v4 + 72)) = 1;
  *v1 = *(v4 + 80);
  return result;
}

void OUTLINED_FUNCTION_44_13()
{

  JUMPOUT(0x193ADB000);
}

unint64_t OUTLINED_FUNCTION_44_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_18F11897C(v13, v14, va);
}

__n128 OUTLINED_FUNCTION_44_17()
{
  result = v0[3];
  *(v2 - 88) = v1 + 40;
  return result;
}

void OUTLINED_FUNCTION_116()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1)
{
  *(v1 + 280) = a1;

  return swift_getObjectType();
}

__n128 OUTLINED_FUNCTION_116_1()
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *(v0 + 60) = result;
  *(v0 + 76) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t result)
{
  *(v2 + 8) = v1;
  *(v3 + 16) = 0;
  *(v3 + 24) = result;
  return result;
}

double OUTLINED_FUNCTION_116_3()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_116_6()
{
  *(v0 + 8) = v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 1;
}

void StandardEntityProvider.addAnnotation(_:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v0;
  v5 = v4;
  v53 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_0();
  v52 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_77_5();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  if (ViewAnnotation.isEntity.getter())
  {
    v48 = v1;
    v15 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
    swift_beginAccess();
    v47 = v15;
    v16 = *(v3 + v15);
    v17 = *(v16 + 32);
    v18 = (v17 & 0x3F);
    v19 = ((1 << v17) + 63) >> 6;
    v20 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (v18 > 0xD)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v44 = v11;
      v45 = v5;
      v46 = v3;
      v43 = &v43;
      MEMORY[0x1EEE9AC00](v20);
      v21 = OUTLINED_FUNCTION_112_1();
      v51 = v19;
      v49 = v22;
      sub_18F128DD4(v21, v19, v22);
      v50 = 0;
      v3 = 0;
      v11 = (v16 + 56);
      OUTLINED_FUNCTION_10_33();
      v5 = v24 & v23;
      v26 = (v25 + 63) >> 6;
      while (v5)
      {
        v27 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
LABEL_11:
        v19 = v27 | (v3 << 6);
        OUTLINED_FUNCTION_3_45();
        sub_18F0F99B8(v32, v14, v33);
        sub_18F0F90A4(v14, v2, v18);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_1_61();
          sub_18F106ED8(v2, v36);
        }

        else if (EnumCaseMultiPayload == 2)
        {

          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
          sub_18F0EF1A8(v2 + *(v35 + 48), &qword_1EACD32D0);
        }

        else
        {
          OUTLINED_FUNCTION_1_61();
          sub_18F106ED8(v2, v37);
          *(v49 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
LABEL_18:
            v39 = sub_18F128E38(v49, v29, v50, v16);
            v11 = v44;
            v5 = v45;
            v3 = v46;
            goto LABEL_19;
          }
        }
      }

      v28 = v3;
      v29 = v51;
      while (1)
      {
        v3 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v3 >= v26)
        {
          goto LABEL_18;
        }

        ++v28;
        if (*&v11[8 * v3])
        {
          OUTLINED_FUNCTION_21_24();
          v5 = v31 & v30;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_22:
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    swift_slowAlloc();

    v40 = OUTLINED_FUNCTION_22();
    v39 = sub_18F2CDAE0(v40, v41, v16, v42);
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_32();
LABEL_19:
    *(v3 + v47) = v39;

    v1 = v48;
  }

  sub_18F0F99B8(v5, v1, type metadata accessor for ViewAnnotation);
  swift_beginAccess();
  sub_18F0F9788();
  swift_endAccess();
  sub_18F106ED8(v11, type metadata accessor for ViewAnnotation);
  OUTLINED_FUNCTION_16();
}

uint64_t ViewAnnotation.isEntity.getter()
{
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_0_71();
  v4 = OUTLINED_FUNCTION_22();
  sub_18F0F99B8(v4, v5, v6);
  OUTLINED_FUNCTION_66();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F106ED8(v3, type metadata accessor for ViewAnnotation);
    }

    else
    {

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
      sub_18F0EF1A8(v3 + *(v9 + 48), &qword_1EACD32D0);
    }

    return 1;
  }

  else
  {
    sub_18F106ED8(v3, type metadata accessor for ViewAnnotation);
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_74_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{

  return sub_18F1170D0(a3, v3 + a1);
}

BOOL OUTLINED_FUNCTION_74_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_74_3()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 264);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 464);
}

uint64_t OUTLINED_FUNCTION_74_7()
{

  return sub_18F0FECD4(v0 - 136, v0 - 104);
}

void OUTLINED_FUNCTION_74_8()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_74_9()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_74_12(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(0x6D756E45707041, 0xE700000000000000, va);
}

void OUTLINED_FUNCTION_90_4(__n128 a1, __n128 a2)
{
  v2[1] = a1;
  v2[2] = a2;
  v2[3].n128_u8[0] = 0;
  v2[3].n128_u64[1] = v3;
}

uint64_t OUTLINED_FUNCTION_90_5()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_90_6()
{

  return sub_18F16CC14(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_90_9()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

void static ViewAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v62 - v9);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  OUTLINED_FUNCTION_0_71();
  sub_18F0F99B8(v5, v13, v14);
  OUTLINED_FUNCTION_56();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = *(v13 + 4);
    v28 = v13[40];
    OUTLINED_FUNCTION_0_71();
    v29 = OUTLINED_FUNCTION_43_1();
    sub_18F0F99B8(v29, v30, v31);
    if (swift_getEnumCaseMultiPayload())
    {
      v32 = OUTLINED_FUNCTION_92_0();
      sub_18F0F689C(v32);
      OUTLINED_FUNCTION_1_61();
      sub_18F106ED8(v1, v33);
      goto LABEL_52;
    }

    if (v28)
    {
      if ((*(v1 + 40) & 1) == 0)
      {
LABEL_25:
        v54 = OUTLINED_FUNCTION_22();
        sub_18F0F689C(v54);
        v55 = OUTLINED_FUNCTION_92_0();
        sub_18F0F689C(v55);
        goto LABEL_52;
      }
    }

    else if ((*(v1 + 40) & 1) != 0 || v27 != *(v1 + 32))
    {
      goto LABEL_25;
    }

    v52 = OUTLINED_FUNCTION_92_0();
    sub_18F0F689C(v52);
    v53 = OUTLINED_FUNCTION_22();
    sub_18F0F689C(v53);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_18F0FF968(v13, v66);
    OUTLINED_FUNCTION_0_71();
    sub_18F0F99B8(v3, v10, v16);
    OUTLINED_FUNCTION_53();
    v17 = swift_getEnumCaseMultiPayload();
    if (v17)
    {
      if (v17 == 1)
      {
        sub_18F0FF968(v10, v63);
        __swift_project_boxed_opaque_existential_1Tm(v66, v66[3]);
        v18 = OUTLINED_FUNCTION_56();
        AppEntity.fullyQualifiedIdentifier.getter(v18, v19, v20);
        v21 = v62[4];
        v23 = v62[6];
        v22 = v62[7];
        OUTLINED_FUNCTION_1_42(v63);
        v24 = OUTLINED_FUNCTION_45();
        AppEntity.fullyQualifiedIdentifier.getter(v24, v25, v26);
        if (v21 == v62[0] && (v23 != v62[2] || v22 != v62[3]))
        {
          sub_18F522D5C();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      else
      {
        v45 = *v10;
        v47 = *(v10 + 2);
        v46 = *(v10 + 3);
        OUTLINED_FUNCTION_1_42(v66);
        v48 = OUTLINED_FUNCTION_89_0();
        AppEntity.fullyQualifiedIdentifier.getter(v48, v49, v50);
        if (v63[0] == v45 && (v64 != v47 || v65 != v46))
        {
          OUTLINED_FUNCTION_106_5();
          sub_18F522D5C();
        }

        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
        sub_18F0EF1A8(v10 + *(v61 + 48), &qword_1EACD32D0);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      sub_18F106ED8(v10, v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }
  }

  else
  {
    v34 = *v13;
    v36 = *(v13 + 2);
    v35 = *(v13 + 3);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
    v38 = *(v37 + 48);
    OUTLINED_FUNCTION_0_71();
    sub_18F0F99B8(v3, v0, v39);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40)
    {
      if (v40 == 1)
      {
        sub_18F0FF968(v0, v66);
        OUTLINED_FUNCTION_1_42(v66);
        v41 = OUTLINED_FUNCTION_89_0();
        AppEntity.fullyQualifiedIdentifier.getter(v41, v42, v43);
        if (v34 == v63[0] && (v36 != v64 || v35 != v65))
        {
          sub_18F522D5C();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        v60 = &v13[v38];
      }

      else
      {
        if (v34 == *v0 && (v36 != *(v0 + 16) || v35 != *(v0 + 24)))
        {
          sub_18F522D5C();
        }

        sub_18F0EF1A8(v0 + *(v37 + 48), &qword_1EACD32D0);
        v60 = &v13[v38];
      }

      sub_18F0EF1A8(v60, &qword_1EACD32D0);
    }

    else
    {

      OUTLINED_FUNCTION_1_61();
      sub_18F106ED8(v0, v51);
      sub_18F0EF1A8(&v13[v38], &qword_1EACD32D0);
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F109FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ViewAnnotation(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    v9[2] = 0;
    v9[3] = 0;
    *v9 = (a2 - 1);
    v9[1] = 1;
  }

  return result;
}

uint64_t sub_18F10A0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewAnnotation(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = a1 + *(a3 + 20);
    if (((*(v8 + 16) | *(v8 + 8) | *(v8 + 24)) & 0xF000000000000007) != 0)
    {
      return (*v8 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18F10A168()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = OUTLINED_FUNCTION_3_42(v8, v6);
  sub_18F10A40C(v9, v10, v11);
  OUTLINED_FUNCTION_0_68();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4800);
  OUTLINED_FUNCTION_20_24();
  if ((sub_18F5229DC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_18F10A40C(v7, v5, v3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v1;
  if (v16)
  {
    v20 = v19[7];
    v21 = type metadata accessor for AppViewBridgeAnnotation();
    v22 = OUTLINED_FUNCTION_10(v21);
    OUTLINED_FUNCTION_68_6(v22, v20 + *(v23 + 72) * v15);
    OUTLINED_FUNCTION_16();
  }

  else
  {
    sub_18F10A2F8(v15, v7, v5, v3, v0, v19);
    OUTLINED_FUNCTION_16();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

unint64_t sub_18F10A2A4()
{
  result = qword_1EACCF080;
  if (!qword_1EACCF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF080);
  }

  return result;
}

uint64_t sub_18F10A2F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = type metadata accessor for AppViewBridgeAnnotation();
  result = sub_18F10A3AC(a5, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for AppViewBridgeAnnotation);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_18F10A3AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_18F10A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_50();
  sub_18F5219CC();
  MEMORY[0x193ADC4F0](a3);
  v6 = sub_18F522F4C();

  return sub_18F10AF44(a1, a2, a3, v6);
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

double OUTLINED_FUNCTION_53_2()
{
  result = 0.0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  return result;
}

void OUTLINED_FUNCTION_47_6()
{
  v1 = v0[84];
  v0[81] = v0[83];
  v0[82] = v1;
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return sub_18F0F713C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

void OUTLINED_FUNCTION_53_8(__n128 a1)
{
  v4 = &v2[v3[25]];
  v4[2].n128_u64[0] = 0;
  *v4 = a1;
  v4[1] = a1;
  *&v2[v3[27]] = 0;
  v5 = &v2[v3[29]];
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
  *v2 = v1;
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_18F0F713C(v1, v0);
}

void OUTLINED_FUNCTION_53_12()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_53_18()
{
}

uint64_t sub_18F10A688()
{
  v1 = v0;
  v2 = type metadata accessor for ViewAnnotation(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B70);
  result = sub_18F52274C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v1 = v7;
    return result;
  }

  v29 = v0;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      sub_18F128DD4(0, (v27 + 63) >> 6, v5 + 56);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v30 + 72);
    sub_18F0F90A4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for ViewAnnotation);
    sub_18F522EFC();
    ViewAnnotation.hash(into:)();
    result = sub_18F522F4C();
    v19 = -1 << *(v7 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_18F0F90A4(v4, *(v7 + 48) + v22 * v18, type metadata accessor for ViewAnnotation);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v14 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void ViewAnnotation.id.getter()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_0_71();
  v4 = OUTLINED_FUNCTION_22();
  sub_18F0F99B8(v4, v5, v6);
  OUTLINED_FUNCTION_66();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FF968(v3, v36);
      __swift_project_boxed_opaque_existential_1Tm(v36, v36[3]);
      v8 = OUTLINED_FUNCTION_56();
      AppEntity.fullyQualifiedIdentifier.getter(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_45();
      static AppValue._identifier.getter(v11, v12);
      if (dynamic_cast_existential_1_conditional(v35))
      {
        if (qword_1ED6FF6D8 != -1)
        {
          OUTLINED_FUNCTION_12_5();
          swift_once();
        }

        v13 = OUTLINED_FUNCTION_45();
        static AppValue._identifier.getter(v13, v14);
        OUTLINED_FUNCTION_37();
        v25 = sub_18F164CE8();

        v26 = v25;
        sub_18F1AF344();
        OUTLINED_FUNCTION_83_1();
      }

      objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_43_1();
      sub_18F166ED0();
      v28 = v27;
      v29 = [v27 description];

      sub_18F5218DC();
      OUTLINED_FUNCTION_101_6();

      __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }

    else
    {
      v17 = *v3;
      v18 = OUTLINED_FUNCTION_45();
      static AppValue._identifier.getter(v18, v19);
      if (dynamic_cast_existential_1_conditional(v17))
      {
        if (qword_1ED6FF6D8 != -1)
        {
          OUTLINED_FUNCTION_12_5();
          swift_once();
        }

        v20 = off_1ED6FF6C8;

        v21 = OUTLINED_FUNCTION_45();
        static AppValue._identifier.getter(v21, v22);
        OUTLINED_FUNCTION_37();
        sub_18F164CE8();
        OUTLINED_FUNCTION_88_2();

        v30 = v20;
        sub_18F1AF344();
        OUTLINED_FUNCTION_83_1();
      }

      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
      objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_68_7();
      sub_18F166ED0();
      v33 = v32;
      v34 = [v32 description];

      sub_18F5218DC();
      OUTLINED_FUNCTION_101_6();

      sub_18F0EF1A8(v3 + v31, &qword_1EACD32D0);
    }
  }

  else
  {
    v15 = *v3;
    if (*(v3 + 40))
    {
      static AppIntent._identifier.getter(v15);
      OUTLINED_FUNCTION_101_6();
    }

    else
    {
      v36[0] = static AppIntent._identifier.getter(v15);
      v36[1] = v23;
      MEMORY[0x193ADB000](47, 0xE100000000000000);
      v24 = sub_18F522C9C();
      MEMORY[0x193ADB000](v24);
    }

    v16 = OUTLINED_FUNCTION_82();
    sub_18F0F689C(v16);
  }

  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F10AD98(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9368);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for AppViewBridgeAnnotation();
  MEMORY[0x1EEE9AC00](v7);
  if (__swift_getEnumTagSinglePayload(a1, 1, v8) == 1)
  {
    sub_18F0EF1A8(a1, &qword_1EACD9368);
    sub_18F2BEE14();

    return sub_18F0EF1A8(v6, &qword_1EACD9368);
  }

  else
  {
    sub_18F0F9100();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    sub_18F10A168();

    *v2 = v11;
  }

  return result;
}

unint64_t sub_18F10AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_18F522D5C()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_18F10B030()
{
  sub_18F522EFC();
  AppViewBridgeAnnotationKey.hash(into:)();
  return sub_18F522F4C();
}

uint64_t AppViewBridgeAnnotationKey.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_18F5219CC();
  return MEMORY[0x193ADC4F0](v1);
}

uint64_t sub_18F10B0C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18F3176A4;

  return v6(a1);
}

uint64_t sub_18F10B2F4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18F10B344()
{
  OUTLINED_FUNCTION_79();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = sub_18F521EFC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  OUTLINED_FUNCTION_4_58();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v0;
  OUTLINED_FUNCTION_4_58();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_18F566C18;
  v8[5] = v7;
  sub_18F467394(0, 0, v5, &unk_18F566C28, v8);
}

void *sub_18F10B478(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4720);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[5] = v5;
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8FD0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = a2;
  v2[3] = v6;
  return v2;
}

void sub_18F10B50C()
{
  OUTLINED_FUNCTION_16_46();
  os_unfair_lock_lock((v0 + 192));

  swift_isUniquelyReferenced_nonNull_native();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_82();
  sub_18F10B58C();
  *(v0 + 200) = v1;

  os_unfair_lock_unlock((v0 + 192));
}

uint64_t sub_18F10B5A0()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  v3 = OUTLINED_FUNCTION_15_51();

  return v4(v3);
}

uint64_t sub_18F10B644()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  v3 = OUTLINED_FUNCTION_15_51();

  return v4(v3);
}

void sub_18F10B6FC()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_24_23();
  OUTLINED_FUNCTION_31_9();

  __asm { BR              X4 }
}

uint64_t sub_18F10B7AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_18F0FC874;

  return v7();
}

uint64_t sub_18F10B894(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_18F0FC870;

  return v6();
}

uint64_t sub_18F10B97C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F10DF80;

  return sub_18F10BA3C(v2, v3, v5, v4);
}

uint64_t sub_18F10BA3C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_18F10DD7C;

  return AppContext.updateContext(connection:context:)(v8, a2);
}

uint64_t AppContext.updateContext(connection:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F10BB30, 0, 0);
}

uint64_t sub_18F10BB30()
{
  v36 = v0;
  if (*(v0 + 24))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = sub_18F52245C();
      if (qword_1ED6FF6D8 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v4 = sub_18F10C01C(v3);

      if (v4)
      {
        if (qword_1ED6FEF38 != -1)
        {
          OUTLINED_FUNCTION_9_1();
        }

        v5 = sub_18F52165C();
        __swift_project_value_buffer(v5, qword_1ED707778);
        swift_unknownObjectRetain();
        v6 = sub_18F52163C();
        v7 = sub_18F5221FC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v33 = v3;
          v9 = swift_slowAlloc();
          v35[0] = v9;
          *v8 = 136315394;
          swift_unknownObjectRetain();
          v10 = [v2 description];
          v11 = sub_18F5218DC();
          v13 = v12;

          swift_unknownObjectRelease();
          v14 = sub_18F11897C(v11, v13, v35);

          *(v8 + 4) = v14;
          *(v8 + 12) = 2048;
          *(v8 + 14) = v33;
          _os_log_impl(&dword_18F0E9000, v6, v7, "[Context Setup] Updating context: %s for connection: %ld", v8, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v9);
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_32();
        }

        sub_18F4075C4();
      }

      else
      {
        if (qword_1ED6FEF38 != -1)
        {
          OUTLINED_FUNCTION_9_1();
        }

        v20 = sub_18F52165C();
        __swift_project_value_buffer(v20, qword_1ED707778);
        swift_unknownObjectRetain();
        v21 = sub_18F52163C();
        v22 = sub_18F5221FC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35[0] = v34;
          *v23 = 136315394;
          swift_unknownObjectRetain();
          v24 = [v2 description];
          v25 = v2;
          v26 = sub_18F5218DC();
          v27 = v3;
          v29 = v28;

          swift_unknownObjectRelease();
          v30 = v26;
          v2 = v25;
          v31 = sub_18F11897C(v30, v29, v35);
          v3 = v27;

          *(v23 + 4) = v31;
          *(v23 + 12) = 2048;
          *(v23 + 14) = v27;
          _os_log_impl(&dword_18F0E9000, v21, v22, "[Context Setup] Creating context: %s for connection: %ld", v23, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_32();
        }

        type metadata accessor for ConnectionContext();
        swift_allocObject();
        sub_18F10B478(v3, v2);
        swift_unknownObjectRetain();

        sub_18F10B50C();
      }

      swift_unknownObjectRelease();
      v19 = *(v0 + 8);
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v15 = sub_18F52165C();
  __swift_project_value_buffer(v15, qword_1ED707778);
  v16 = sub_18F52163C();
  v17 = sub_18F52221C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_18F0E9000, v16, v17, "[Context Setup] Missing or malformed LNConnectionContext", v18, 2u);
    OUTLINED_FUNCTION_32();
  }

  sub_18F1CDB48();
  swift_allocError();
  swift_willThrow();
  v19 = *(v0 + 8);
LABEL_23:

  return v19();
}

uint64_t sub_18F10C01C(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 192));
  v4 = *(v1 + 200);
  if (*(v4 + 16) && (v5 = sub_18F0EFA5C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v2 + 48);
  if (!v7)
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_18F52165C();
    __swift_project_value_buffer(v8, qword_1ED7077A8);
    v9 = sub_18F52163C();
    v10 = sub_18F52220C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_126();
      *v11 = 134217984;
      *(v11 + 4) = a1;
      _os_log_impl(&dword_18F0E9000, v9, v10, "[Context Setup] No ConnectionContext found for %ld", v11, 0xCu);
      OUTLINED_FUNCTION_32();
    }
  }

  return v7;
}

uint64_t sub_18F10C138(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v46 = a1;
  v47 = a2;
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v48 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v50 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v44 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v38 = v23;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  v26 = sub_18F5220BC();
  if (!v26)
  {
    return sub_18F521D2C();
  }

  v49 = v26;
  v53 = sub_18F52290C();
  v40 = sub_18F52291C();
  sub_18F5228BC();
  result = sub_18F5220AC();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a5;
    v28 = 0;
    v41 = (v50 + 16);
    v42 = v50 + 8;
    v43 = v8;
    while (!__OFADD__(v28, 1))
    {
      v50 = v28 + 1;
      v29 = sub_18F52216C();
      (*v41)(v19);
      v29(v52, 0);
      v30 = v51;
      v46(v19, v48);
      if (v30)
      {
        v33 = OUTLINED_FUNCTION_30_8();
        v34(v33);
        (*(v38 + 8))(v25, v39);

        return (*(v35 + 32))(v37, v48, v36);
      }

      v51 = 0;
      v31 = OUTLINED_FUNCTION_30_8();
      v32(v31);
      sub_18F5228FC();
      result = sub_18F52210C();
      ++v28;
      if (v50 == v49)
      {
        (*(v38 + 8))(v25, v39);
        return v53;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppDependency.__allocating_init(key:manager:)(uint64_t a1)
{
  sub_18F116908(a1, v4, &qword_1EACD0650);
  v2 = sub_18F10C610();
  sub_18F0EF148(a1, &qword_1EACD0650);
  return v2;
}

uint64_t sub_18F10C610()
{
  OUTLINED_FUNCTION_7_0();
  v4 = swift_allocObject();
  sub_18F10C66C(v3, v2, v1, v0);
  return v4;
}

uint64_t sub_18F10C66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F116908(a1, &v11, &qword_1EACD0650);
  if (*(&v12 + 1))
  {
    sub_18F0EF148(a1, &qword_1EACD0650);
    v14 = v11;
    v15 = v12;
    v16 = v13;
  }

  else
  {
    type metadata accessor for AppDependencyManager();
    sub_18F0EFA0C();
    sub_18F0EF148(a1, &qword_1EACD0650);
    if (*(&v12 + 1))
    {
      sub_18F0EF148(&v11, &qword_1EACD0650);
    }
  }

  v9 = v15;
  *(v4 + 32) = v14;
  *(v4 + 48) = v9;
  *(v4 + 64) = v16;
  *(v4 + 72) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return v4;
}

uint64_t sub_18F10C820(uint64_t a1)
{
  sub_18F0EFA0C();
  v2 = MEMORY[0x193ADBCE0](a1, v5);
  sub_18F0EF654(v5);
  if (v2)
  {
    return 0;
  }

  v5[0] = 0x79656B2068746977;
  v5[1] = 0xEA00000000002220;
  v4 = sub_18F5226DC();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](8226, 0xE200000000000000);
  return v5[0];
}

void sub_18F10C8C4(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_18F10C94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a4;
  v11 = sub_18F52254C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  if (*(*a1 + 16) && (sub_18F0EFA5C(a2), (v15 & 1) != 0))
  {

    sub_18F10D528(v18);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, a5);
    return (*(*(a5 - 8) + 32))(a6, v14, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, a5);
    (*(v12 + 8))(v14, v11);
    *&v18[0] = 0;
    *(&v18[0] + 1) = 0xE000000000000000;
    sub_18F52279C();
    MEMORY[0x193ADB000](0x6E65706544707041, 0xEE002079636E6564);
    MEMORY[0x193ADB000](a3, v19);
    MEMORY[0x193ADB000](0x6570797420666F20, 0xE900000000000020);
    swift_getMetatypeMetadata();
    v17 = sub_18F52307C();
    MEMORY[0x193ADB000](v17);

    MEMORY[0x193ADB000](0xD0000000000000EALL, 0x800000018F52A990);
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t AppDependency.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13(a1);
  v3 = *(v1 + 80);

  sub_18F10CCFC();

  (*(*(v3 - 8) + 8))(a1, v3);
  return sub_18F0EF654(v5);
}

void sub_18F10CCFC()
{
  sub_18F52271C();
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_18F10CD68((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_18F10CDB0()
{
  type metadata accessor for IntentPerson.Name(319);
  if (v0 <= 0x3F)
  {
    sub_18F10D290(319, &qword_1EACCF468, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18F10D290(319, &qword_1EACCF428, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_18F10D2E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18F10CED4()
{
  result = sub_18F5209EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18F10CF60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDependencyManager.DependencyProvider();
  (*(v7 + 16))(v9, a3, a4);
  sub_18F10D084(v9, a4);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  sub_18F0EFC04();
  *a1 = v11;
}

uint64_t sub_18F10D084(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_48();
  v4 = swift_allocObject();
  sub_18F10D0CC(a1, a2);
  return v4;
}

void *sub_18F10D0CC(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7610);
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  sub_18F116970(v7, v5 + 16, &qword_1EACD0430);
  sub_18F0EF1A8(v7, &qword_1EACD0430);
  v2[3] = 0;
  v2[4] = v5;
  v2[2] = 0;

  os_unfair_lock_lock((v5 + 48));
  sub_18F10D274((v5 + 16));
  os_unfair_lock_unlock((v5 + 48));

  (*(*(a2 - 8) + 8))(a1, a2);
  return v2;
}

uint64_t sub_18F10D1EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_18F0EF1A8(a1, &qword_1EACD0430);
  a1[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
}

void sub_18F10D290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for IntentPerson.Handle);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18F10D2E4()
{
  if (!qword_1ED6FF220)
  {
    type metadata accessor for DisplayRepresentation.Image(255);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FF220);
    }
  }
}

uint64_t sub_18F10D33C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18F52271C();
  v7 = sub_18F10C820(a1);
  v8 = *(v3 + 16);
  v12[2] = a2;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7618);
  sub_18F10D3F0(sub_18F10D47C, v12, v8, v10, a2);
}

uint64_t AppDependency.wrappedValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13(a1);
  v2 = *(v1 + 80);

  sub_18F10D33C(v4, v2);

  return sub_18F0EF654(v4);
}

void sub_18F10D528(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 12);
  sub_18F116970(&v3[4], a1, &qword_1EACD0430);

  os_unfair_lock_unlock(v3 + 12);
}

uint64_t CSSearchableIndex.indexAppEntities<A>(_:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F10D5A0()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_10_57();
  v1 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_17_49(v1);
  sub_18F10D6B0();
  v2 = OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5_86(v2, v3, v4, v5, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v6);
  OUTLINED_FUNCTION_25_45();
  v7 = OUTLINED_FUNCTION_24_53();
  OUTLINED_FUNCTION_14_54(v7);
  OUTLINED_FUNCTION_15_50();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_7_74();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
  OUTLINED_FUNCTION_2_109(v9);
  OUTLINED_FUNCTION_13_55(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_0_141();
  OUTLINED_FUNCTION_11_56(v10, sel_indexSearchableItems_completionHandler_);
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DEC8](v11);
}

unint64_t sub_18F10D6B0()
{
  result = qword_1EACCEB20;
  if (!qword_1EACCEB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACCEB20);
  }

  return result;
}

uint64_t sub_18F10D6F4(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_18F10FDB4(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_18F10D758()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_18F459460;
  }

  else
  {
    v5 = sub_18F10CBF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F10D858()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F10D8B4()
{
  v0 = sub_18F52165C();
  __swift_allocate_value_buffer(v0, qword_1ED707778);
  v1 = __swift_project_value_buffer(v0, qword_1ED707778);
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED7077A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18F10D980()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for AppShortcut()
{
  result = qword_1ED6FC318;
  if (!qword_1ED6FC318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AppContext.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void __getUILinkConnectionActionClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UILinkConnectionAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUILinkConnectionActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUILinkConnectionActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNAppConnectionListener.m" lineNumber:21 description:{@"Unable to find class %s", "UILinkConnectionAction"}];

    __break(1u);
  }
}

void UIKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72B7198;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LNAppConnectionListener.m" lineNumber:20 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_18F10DD7C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  swift_unknownObjectRelease();
  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = sub_18F520A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_58();

  return swift_deallocObject();
}

uint64_t sub_18F10DF80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A34ShortcutParameterPresentationTitleVyxq_q0_q1_GSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F10E0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcut();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AppShortcutsBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00D0);
  v2 = *(type metadata accessor for AppShortcut() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18F53F800;
  sub_18F10E0D0(a1, v4 + v3);
  return v4;
}

void AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v43 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_11_0();
  v44 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_66();
  v14 = OUTLINED_FUNCTION_19_43();
  v15(v14);
  sub_18F10E0AC();
  v16 = OUTLINED_FUNCTION_20_39();
  *v11 = sub_18F1194F4(v16, v17, v18, v1);
  OUTLINED_FUNCTION_10_51();
  type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_146();
  sub_18F521DBC();
  v19 = OUTLINED_FUNCTION_0_127();
  v11[1] = OUTLINED_FUNCTION_26_42(v19, v20, v21, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v22);
  v23 = OUTLINED_FUNCTION_2_97();
  v11[2] = sub_18F10E724(v23, v24, v25);
  v11[3] = v26;
  v27 = type metadata accessor for AppShortcut();
  v28 = v27[8];
  v29 = sub_18F520B3C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v11 + v28, v7, v29);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  v34 = (v11 + v27[9]);
  *v34 = v42;
  v34[1] = v43;
  v35 = OUTLINED_FUNCTION_2_97();
  v38 = sub_18F10E43C(v35, v36, v37);
  (*(v30 + 8))(v7, v29);
  *(v11 + v27[10]) = v38;
  v39 = OUTLINED_FUNCTION_2_97();
  sub_18F10E500(v39, v40, v41);

  OUTLINED_FUNCTION_14_48();
  v11[4] = &unk_18F5626C0;
  v11[5] = 0;
  (*(v44 + 8))(v9, v3);
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_11_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_66();
  v16 = OUTLINED_FUNCTION_19_43();
  v17(v16);
  sub_18F10E0AC();
  v18 = OUTLINED_FUNCTION_20_39();
  *v12 = sub_18F1194F4(v18, v19, v20, v1);
  OUTLINED_FUNCTION_10_51();
  type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_146();
  sub_18F521DBC();
  v21 = OUTLINED_FUNCTION_0_127();
  v12[1] = OUTLINED_FUNCTION_26_42(v21, v22, v23, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v24);
  v25 = OUTLINED_FUNCTION_2_97();
  v12[2] = sub_18F10E724(v25, v26, v27);
  v12[3] = v28;
  v29 = type metadata accessor for AppShortcut();
  sub_18F11F0A0(v8, v12 + v29[8]);
  v30 = (v12 + v29[9]);
  *v30 = v6;
  v30[1] = v38;
  OUTLINED_FUNCTION_10_51();
  v34 = sub_18F10E43C(v31, v32, v33);
  sub_18F0FA038(v8, &qword_1EACCF7A8);
  *(v12 + v29[10]) = v34;
  v35 = OUTLINED_FUNCTION_2_97();
  sub_18F10E500(v35, v36, v37);

  OUTLINED_FUNCTION_14_48();
  v12[4] = &unk_18F5626B8;
  v12[5] = 0;
  (*(v14 + 8))(v10, v3);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F10E43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[7] = a1;
  v8[2] = a2;
  v8[3] = a3;
  type metadata accessor for AppShortcutPhrase();
  v3 = sub_18F521DBC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8AF8);
  WitnessTable = swift_getWitnessTable();
  return sub_18F10C138(sub_18F10E700, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

void *sub_18F10E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a1;
  (*(v7 + 32))(&v10[v9], &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return &unk_18F5627B0;
}

uint64_t sub_18F10E638@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppShortcutPhrase();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_18F10ED3C(a1, v4, WitnessTable);
  v8 = v7;
  result = sub_18F10E93C();
  *a2 = v6;
  a2[1] = v8;
  a2[2] = result;
  return result;
}

void *sub_18F10E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a1;
  (*(v7 + 32))(&v10[v9], &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return &unk_18F5627C8;
}

uint64_t sub_18F10E890@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppShortcutPhrase();
  OUTLINED_FUNCTION_8_60();
  WitnessTable = swift_getWitnessTable();
  result = sub_18F10ED3C(a1, v4, WitnessTable);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_18F10E93C()
{
  v12 = MEMORY[0x1E69E7CD0];
  sub_18F52288C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v11 = sub_18F521CBC();
  if (v11 == sub_18F521D7C())
  {

    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    do
    {
      v1 = sub_18F521D4C();
      sub_18F521CEC();
      if (v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_22();
        sub_18F52281C();
      }

      sub_18F521DAC();
      swift_getAtPartialKeyPath();
      v2 = OUTLINED_FUNCTION_43_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      if (swift_dynamicCast())
      {
        sub_18F0FD0B4(v7, v9);
        v3 = v10;
        __swift_project_boxed_opaque_existential_1Tm(v9, v10);
        OUTLINED_FUNCTION_37_0();
        v5 = v4(v3);
        if (v6)
        {
          sub_18F12A054(v7, v5, v6);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      else
      {

        v8 = 0;
        memset(v7, 0, sizeof(v7));
        sub_18F0EF1A8(v7, &qword_1EACD0F20);
      }
    }

    while (v11 != sub_18F521D7C());

    return v12;
  }
}

size_t sub_18F10EB68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = OUTLINED_FUNCTION_35_1();
  v9 = a5(v8);
  OUTLINED_FUNCTION_51(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18F10EC60()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD00D0, &unk_18F53FE90);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for AppShortcut();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for AppShortcut, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

uint64_t sub_18F10ED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v18 = (*(a3 + 24))(a2, a3);
  *(&v18 + 1) = v5;
  (*(a3 + 32))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_18F52288C();
  v6 = sub_18F521DBC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193ADB130](v23, v6, WitnessTable);

  *&v19[0] = v23[0];
  sub_18F522A8C();
  sub_18F522A5C();
  sub_18F522A7C();
  while (1)
  {
    sub_18F522A6C();
    if (!v23[1])
    {
      break;
    }

    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4(v19, v23);
      v9 = v24;
      v8 = v25;
      __swift_project_boxed_opaque_existential_1Tm(v23, v24);
      v10 = (*(*(v8 + 8) + 16))(v9);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        v19[0] = v18;
        v21 = 0x656D617261707B24;
        v22 = 0xEB00000000726574;
        v14 = sub_18F522C9C();
        MEMORY[0x193ADB000](v14);

        MEMORY[0x193ADB000](125, 0xE100000000000000);
        MEMORY[0x193ADB000](v12, v13);

        MEMORY[0x193ADB000](125, 0xE100000000000000);
        sub_18F12A000();
        *&v18 = sub_18F5225CC();
        v16 = v15;

        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        *(&v18 + 1) = v16;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }
    }

    else
    {

      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_18F407C78(v19);
    }
  }

  return v18;
}

uint64_t static AppShortcutsBuilder.buildBlock(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    if (__OFADD__(v6, v5))
    {
      break;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
    {
      sub_18F10EC60();
      v3 = v7;
    }

    if (*(v4 + 16))
    {
      v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
      result = type metadata accessor for AppShortcut();
      if (v8 < v5)
      {
        goto LABEL_16;
      }

      swift_arrayInitWithCopy();

      if (v5)
      {
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, v5);
        v11 = v9 + v5;
        if (v10)
        {
          goto LABEL_17;
        }

        *(v3 + 16) = v11;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_15;
      }
    }

    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_18F10F23C(uint64_t a1, uint64_t *a2)
{
  sub_18F0FD724(a1, v6);
  sub_18F10F2D8();
  v3 = *(*a2 + 16);
  sub_18F10F8F8();
  v4 = *a2;
  *(v4 + 16) = v3 + 1;
  return sub_18F0FD0B4(v6, v4 + 40 * v3 + 32);
}

unint64_t sub_18F10F340()
{
  result = qword_1ED6FE648;
  if (!qword_1ED6FE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE648);
  }

  return result;
}

void __getUILinkConnectionActionResponseClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UILinkConnectionActionResponse");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUILinkConnectionActionResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUILinkConnectionActionResponseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNAppConnectionListener.m" lineNumber:22 description:{@"Unable to find class %s", "UILinkConnectionActionResponse"}];

    __break(1u);
  }
}

unint64_t sub_18F10F45C()
{
  v0 = type metadata accessor for PreparedIntent();
  if (v1 <= 0x3F)
  {
    sub_18F10F6BC(319, &qword_1EACCF488, MEMORY[0x1E69E62F8]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_18F12EB70();
      if (v4 <= 0x3F)
      {
        sub_18F119B88();
        if (v6 > 0x3F)
        {
          return v5;
        }

        sub_18F10F6BC(319, &qword_1ED6FDA40, MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v5;
        }

        sub_18F10F608(319, &qword_1EACCF480, &qword_1EACD8AF8, &unk_18F5626F0, MEMORY[0x1E69E62F8]);
        if (v8 > 0x3F)
        {
          return v5;
        }

        else
        {
          sub_18F10F608(319, &qword_1ED6FDC50, &qword_1EACD3318, &unk_18F54B258, MEMORY[0x1E69E6720]);
          v0 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_18F10F608(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_18F10F6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18F10F710(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_18F5218DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_18F10F7C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F0F21A8(255, &qword_1EACCDD48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F10F820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F10F868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F10F8B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F10F958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F5208EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F10F99C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18F10F9E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_18F10FA38(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v2)
  {
    v3 = v2;
    v4 = sub_18F10FBF8(v3);
    v6 = v5;
    v7 = v3;
    v8 = sub_18F52228C();

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v10 = v9;
    if (v9)
    {
      v11 = [v9 containingBundleRecord];
      if (v11)
      {
        v12 = sub_18F10FBF8(v11);
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = [v10 extensionPointRecord];
      v16 = [v15 identifier];

      v17 = sub_18F5218DC();
      v19 = v18;

      if (v17 == 0xD00000000000001DLL && 0x800000018F52BAE0 == v19)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = sub_18F522D5C();
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v12 = 0;
    v14 = 0;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10 & 1;
}

uint64_t sub_18F10FBF8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F10FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    v6 = a5;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

id sub_18F10FCB8()
{
  v0 = sub_18F5218AC();

  v1 = [swift_getObjCClassFromMetadata() serviceForClientIdentifier_];

  return v1;
}

uint64_t *sub_18F10FD1C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_18F10FDAC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_18F11F4C8(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18F10FDB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_18F10FE20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 544) = v4;
  if (v4)
  {
    v5 = sub_18F10FF5C;
  }

  else
  {

    v5 = sub_18F3CBD28;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F10FF5C()
{
  v64 = v0;
  v63[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  swift_willThrow();

  *(v0 + 360) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  sub_18F0F21A8(0, &qword_1ED6FBF40);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  v4 = *(v0 + 368);
  *(v0 + 576) = v4;
  v5 = [v4 domain];
  v6 = sub_18F5218DC();
  v8 = v7;

  if (v6 == sub_18F5218DC() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_18F522D5C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ([v4 code] != 1007)
  {
LABEL_24:

LABEL_25:

    v42 = sub_18F52163C();
    v43 = sub_18F52221C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_18F0E9000, v42, v43, "Failed to fetch current Set Focus Filter AppIntent", v44, 2u);
      OUTLINED_FUNCTION_32();
    }

    v45 = *(v0 + 520);

    swift_willThrow();
LABEL_28:
    OUTLINED_FUNCTION_1_97();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

  v12 = sub_18F52163C();
  v13 = sub_18F52220C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 400);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v63[0] = v16;
    *v15 = 136315138;
    v17 = static AppIntent._identifier.getter(v14);
    v19 = sub_18F11897C(v17, v18, v63);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_18F0E9000, v12, v13, "Current %s Focus Filter not found. Attempting to fetch default filter.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v20 = *(v0 + 528);
  v21 = *(v0 + 400);
  static AppIntent._identifier.getter(v21);
  v22 = objc_allocWithZone(MEMORY[0x1E69AC858]);
  v23 = sub_18F1106E0();
  *(v0 + 584) = v23;
  sub_18F0F21A8(0, &qword_1EACCDCF8);
  v24 = v23;
  v25 = sub_18F110768(v21, v20);
  v26 = sub_18F114A54(v24, v25);
  *(v0 + 592) = v26;
  type metadata accessor for AppManager();
  sub_18F3E6F18(v0 + 144);
  v27 = *(v0 + 160);
  *(v0 + 312) = *(v0 + 144);
  *(v0 + 328) = v27;
  sub_18F0EF1A8(v0 + 328, &qword_1EACD4470);
  *(v0 + 344) = *(v0 + 176);
  sub_18F0EF1A8(v0 + 344, &unk_1EACCFDB0);
  if (!*(v0 + 320))
  {
    v48 = *(v0 + 520);
    sub_18F3CC690();
    v49 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_5_73(v49, v50);

LABEL_33:
    goto LABEL_28;
  }

  v62 = v24;
  v28 = sub_18F5218AC();
  sub_18F0EF1A8(v0 + 312, &qword_1EACD4470);
  *(v0 + 376) = 0;
  v29 = [v26 loadStaticDefaultValueForBundleIdentifier:v28 error:v0 + 376];
  *(v0 + 600) = v29;

  v30 = *(v0 + 376);
  if (!v29)
  {
    v51 = *(v0 + 520);
    v52 = v30;
    sub_18F520A8C();

    swift_willThrow();
    goto LABEL_33;
  }

  v31 = *(v0 + 528);
  v32 = *(v0 + 400);
  v33 = v30;
  v34 = sub_18F110768(v32, v31);
  v35 = [v34 parameters];

  sub_18F0F21A8(0, &qword_1EACCDD08);
  v36 = sub_18F521CAC();

  v37 = sub_18F111F70(v36);
  for (i = 0; v37 != i; ++i)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x193ADBE10](i, v36);
    }

    else
    {
      if (i >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v39 = *(v36 + 8 * i + 32);
    }

    v40 = v39;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v41 = [v39 dynamicOptionsSupport];

    if (v41)
    {

      *(v0 + 608) = [objc_allocWithZone(type metadata accessor for AppContext()) init];
      v57 = v29;
      v58 = swift_task_alloc();
      *(v0 + 616) = v58;
      *v58 = v0;
      v58[1] = sub_18F3CBDE8;
      OUTLINED_FUNCTION_68_1();

      return AppContext.fetchOptionsDefaultValues(intent:connectionIdentifier:)(v59, v60);
    }
  }

  v53 = v29;
  *(v0 + 552) = v53;
  v54 = swift_task_alloc();
  *(v0 + 560) = v54;
  *v54 = v0;
  OUTLINED_FUNCTION_0_124(v54);
  OUTLINED_FUNCTION_7_64();
  OUTLINED_FUNCTION_68_1();

  return sub_18F114AB0();
}

id sub_18F1106E0()
{
  v1 = sub_18F5218AC();

  v2 = sub_18F5218AC();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

uint64_t sub_18F110768(uint64_t a1, uint64_t a2)
{
  v96 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD32D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v79 - v6;
  v100 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v95 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v97 = v16 - v15;
  v17 = OUTLINED_FUNCTION_123();
  v18(v17);
  type metadata accessor for AppManager();
  sub_18F3E6F18(v106);
  v19 = v107;
  v109 = v106[0];
  v20 = v107;
  sub_18F0EF1A8(&v109, &qword_1EACD4470);
  v108 = v106[1];
  sub_18F0EF1A8(&v108, &qword_1EACD4470);

  v21 = OUTLINED_FUNCTION_123();
  v93 = static AppIntent._identifier.getter(v21);
  v92 = v22;
  OUTLINED_FUNCTION_123();
  v91 = sub_18F114CB8();
  v90 = v23;
  v94 = v20;
  if (v19)
  {
    v101[0] = v20;
    v24 = v96;
    sub_18F111FC4(v101, a1, a2, sub_18F114CB8, &v104);
    v89 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD32A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18F53F800;
    *(v25 + 56) = sub_18F0F21A8(0, &unk_1ED6FE300);
    *(v25 + 32) = v20;
    sub_18F0F21A8(0, &qword_1ED6FE310);
    v26 = v20;
    v88 = MEMORY[0x193ADB7A0](v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v89 = sub_18F5216CC();
    sub_18F0F21A8(0, &qword_1ED6FE310);
    v88 = MEMORY[0x193ADB7A0](v27);
    v24 = v96;
  }

  v28 = OUTLINED_FUNCTION_123();
  v29(v28);
  v30 = sub_18F117248();
  (*(v9 + 8))(v13, v100);
  v31 = OUTLINED_FUNCTION_123();
  v32(v31);
  v33 = type metadata accessor for IntentDescription();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v33);
  v35 = v2;
  v96 = v24;
  v87 = v30;
  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v7, &unk_1EACD32D8);
    v86 = 0;
  }

  else
  {
    sub_18F114EC4();
    v86 = v36;
    sub_18F115498(v7, type metadata accessor for IntentDescription);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getDynamicType();
  v38 = OUTLINED_FUNCTION_4_37();
  v85 = sub_18F1122D0(v38, v39);
  v40 = OUTLINED_FUNCTION_4_37();
  v41(v40);
  if ((v101[0] & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    type metadata accessor for LNSystemProtocolIdentifier(0);
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  v81 = v101[0];
  v42 = OUTLINED_FUNCTION_4_37();
  v43(v42);
  if (v105)
  {
    if (v105 == 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    v80 = v44;
    if (AssociatedTypeWitness != MEMORY[0x1E69E73E0])
    {
      goto LABEL_15;
    }

    v45 = 0;
  }

  else
  {
    v80 = 0;
    v45 = 0;
    if (AssociatedTypeWitness != MEMORY[0x1E69E73E0])
    {
LABEL_15:
      swift_getAssociatedConformanceWitness();
      v46 = swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_18F0F21A8(0, &qword_1ED6FE3A0);
      v45 = sub_18F114200(v46);
    }
  }

  v79[2] = v45;
  v47 = OUTLINED_FUNCTION_4_37();
  v49 = sub_18F113E38(v47, v48);
  v50 = *(v49 + 16);
  if (v50)
  {
    v104 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v51 = v49 + 32;
    do
    {
      sub_18F0FD724(v51, v101);
      v52 = v102;
      v53 = v103;
      __swift_project_boxed_opaque_existential_1Tm(v101, v102);
      sub_18F1140B4(v52, v53);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v51 += 40;
      --v50;
    }

    while (v50);

    v54 = v104;
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  v79[1] = v54;
  v84 = a1;
  v82 = a2;
  v83 = v35;
  v55 = sub_18F113CB8(a1, a2);
  v56 = sub_18F111F70(v55);
  v57 = 0;
  v99 = v55 & 0xC000000000000001;
  v100 = v56;
  v98 = v55 & 0xFFFFFFFFFFFFFF8;
  v58 = MEMORY[0x1E69E7CC8];
  while (v100 != v57)
  {
    if (v99)
    {
      v59 = MEMORY[0x193ADBE10](v57, v55);
    }

    else
    {
      if (v57 >= *(v98 + 16))
      {
        goto LABEL_45;
      }

      v59 = *(v55 + 8 * v57 + 32);
    }

    v60 = v59;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v61 = [v59 identifier];
    v62 = [objc_allocWithZone(MEMORY[0x1E69AC7C0]) init];
    swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v58;
    v63 = sub_18F1155C0(v61);
    if (__OFADD__(v58[2], (v64 & 1) == 0))
    {
      goto LABEL_46;
    }

    v65 = v63;
    v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD32E8);
    if (sub_18F5229DC())
    {
      v67 = sub_18F1155C0(v61);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_49;
      }

      v65 = v67;
    }

    v58 = v101[0];
    if (v66)
    {
      *(*(v101[0] + 7) + 8 * v65) = v62;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v101[0] + (v65 >> 6) + 8) |= 1 << v65;
      *(v58[6] + 8 * v65) = v61;
      *(v58[7] + 8 * v65) = v62;

      v69 = v58[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_47;
      }

      v58[2] = v71;
    }

    ++v57;
  }

  v72 = v83;
  if (dynamic_cast_existential_1_conditional(v83))
  {
    (*(v73 + 16))();
  }

  if (dynamic_cast_existential_1_conditional(v72))
  {
    (*(v74 + 16))();
  }

  else
  {
    sub_18F5216CC();
  }

  v75 = v84;
  v76 = v82;
  sub_18F1148F8();
  sub_18F0F21A8(0, &qword_1ED6FE720);
  [objc_allocWithZone(MEMORY[0x1E69ACAA8]) initWithIsDiscoverable:1 assistantOnly:0];
  sub_18F1149E4(v75, v76);
  v77 = sub_18F5222CC();

  (*(v95 + 8))(v97, v75);
  return v77;
}

uint64_t type metadata accessor for IntentDescription()
{
  result = qword_1ED6FE7F8;
  if (!qword_1ED6FE7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F1112B0()
{
  v0 = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    sub_18F0F2248(319, qword_1ED6FF5F8, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_18F0F2248(319, &qword_1ED6FEFB0, MEMORY[0x1E6968E10], MEMORY[0x1E69E62F8]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_18F0F2248(319, &qword_1ED6FF220, type metadata accessor for DisplayRepresentation.Image, MEMORY[0x1E69E6720]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_18F111410(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6108);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_51();
  v5 = type metadata accessor for Bool.IntentDisplayName();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18F116490(a1, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_18F1115C4(v1);
    sub_18F1168B4();
    return sub_18F5216CC();
  }

  else
  {
    sub_18F45996C(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = 0x707369446C6F6F62;
    *(inited + 40) = 0xEF656D614E79616CLL;
    *(inited + 72) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    sub_18F45A28C(v8, boxed_opaque_existential_1);
    sub_18F1168B4();
    v9 = sub_18F5216CC();
    sub_18F4599D0(v8);
  }

  return v9;
}

uint64_t sub_18F1115C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_92_2(id a1)
{
  *(v1 + 160) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return sub_18F5219CC();
}

uint64_t OUTLINED_FUNCTION_92_5()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 8) = 0;

  return sub_18F16AAE0(v2, v1);
}

void OUTLINED_FUNCTION_92_6()
{

  sub_18F3AADAC();
}

uint64_t OUTLINED_FUNCTION_246()
{
}

void OUTLINED_FUNCTION_92_8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 - 292) = a4;
  *(v4 - 288) = a3;
  *(v4 - 240) = a2;
}

id OUTLINED_FUNCTION_182()
{
  *(v1 + 760) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_182_0(float a1)
{
  *v1 = a1;

  return sub_18F5227FC();
}

__n128 *OUTLINED_FUNCTION_182_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v4[4];
  result[2].n128_u64[1] = v3;
  result[3].n128_u64[0] = v4[6];
  result[3].n128_u64[1] = v4[7];
  result[4].n128_u64[0] = v2;
  return result;
}

BOOL OUTLINED_FUNCTION_182_2()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_182_3()
{
  v3 = *(v1 - 240);
  v4 = *(v1 - 256);

  return sub_18F116A7C(v3, v4, v0);
}

void OUTLINED_FUNCTION_71_1(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_69_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_71_8(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_71_10()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_71_12(float a1)
{
  *v2 = a1;

  return [v3 (v1 + 1656)];
}

void OUTLINED_FUNCTION_71_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_18F402D10(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t sub_18F1119D8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 104) = v3;
  *(v0 + 48) = v7;
  *(v0 + 56) = v5;
  *(v0 + 64) = type metadata accessor for Annotation(0);
  *(v0 + 72) = OUTLINED_FUNCTION_34_0();
  *(v0 + 16) = v8;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F111AA0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338) + 48);
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v6 = sub_18F52165C();
  __swift_project_value_buffer(v6, qword_1ED7077A8);
  OUTLINED_FUNCTION_31_0();
  (*(v7 + 16))(v1 + v5);
  OUTLINED_FUNCTION_22();
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = v0 + 16;
  OUTLINED_FUNCTION_99_8();
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_18F131528;
  OUTLINED_FUNCTION_13_0();

  return v11();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;

  return sub_18F52279C();
}

unint64_t OUTLINED_FUNCTION_99_3(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_18F11897C(0xD00000000000001BLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_99_5@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_18F0F9F88(v2 + a2, v3 + 16, a1);
}

double OUTLINED_FUNCTION_99_6()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 119) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_99_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{
  *(v16 + 14) = v15;
  *(v16 + 22) = 2080;

  return sub_18F11897C(a15, a14, (v17 - 88));
}

uint64_t OUTLINED_FUNCTION_99_10()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_99_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_99_12()
{

  return swift_getWitnessTable();
}

uint64_t sub_18F111D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_18F520E6C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F111E64, 0, 0);
}

uint64_t storeEnumTagSinglePayload for IntentCollectionSize(uint64_t result, int a2, int a3)
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

uint64_t sub_18F111FA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18F5226AC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_18F111FC4@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  v11 = [v9 bundleIdentifier];
  v12 = sub_18F5218DC();
  v14 = v13;

  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = a4(a2, a3);
  *(inited + 56) = v15;
  result = sub_18F5216CC();
  *a5 = result;
  return result;
}

uint64_t IntentDescription.init(_:categoryName:searchKeywords:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_4_17();
  v7 = type metadata accessor for IntentDescription();
  v8 = v7[5];
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = v7[7];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  (*(*(v9 - 8) + 32))(v0, v6, v9);
  sub_18F0FF5DC(v4, v0 + v8, &qword_1EACCF7A8);
  *(v0 + v7[6]) = v2;
  sub_18F1121C4(v0 + v13);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_18F1121C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F11222C(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_18F0F21A8(0, &qword_1ED6FEFA8);
  v8 = sub_18F521C8C();

  v9 = [v4 initWithDescriptionText:a1 categoryName:a2 searchKeywords:v8 resultValueName:a4];

  return v9;
}

uint64_t sub_18F112308(uint64_t a1)
{
  v50 = MEMORY[0x1E69E7CC0];
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v2 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v3 = [objc_opt_self() assistantIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v4 = [objc_opt_self() assistantInvocableIntentProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v5 = [objc_opt_self() cancelProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v6 = [objc_opt_self() changeBinarySettingSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v7 = [objc_opt_self() closeEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    [objc_opt_self() copySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v8 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v9 = [objc_opt_self() createEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v10 = [objc_opt_self() cutSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v11 = [objc_opt_self() deleteEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  swift_getMetatypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C20);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v12 = [objc_opt_self() duplicateEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v13 = [objc_opt_self() favoriteEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C28);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v14 = [objc_opt_self() moveSpatialProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v15 = [objc_opt_self() navigateSequentiallyProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v16 = [objc_opt_self() openEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v17 = [objc_opt_self() pasteSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v18 = [objc_opt_self() previewEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v19 = [objc_opt_self() enterMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = [objc_opt_self() exitMarkupProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v21 = [objc_opt_self() putEntityInContainerProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v22 = [objc_opt_self() resizeProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C38);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v23 = [objc_opt_self() saveEntitySystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v24 = [objc_opt_self() scrollProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD5C40);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v25 = [objc_opt_self() searchSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (swift_dynamicCastMetatype())
  {
    v26 = [objc_opt_self() undoSystemProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v27 = [objc_opt_self() zoomProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v28 = [objc_opt_self() widgetConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v29 = [objc_opt_self() focusConfigurationProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    [objc_opt_self() copyEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v30 = [objc_opt_self() cutEntityProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v31 = [objc_opt_self() startWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v32 = [objc_opt_self() pauseWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v33 = [objc_opt_self() resumeWorkoutProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v34 = [objc_opt_self() progressReportingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1) || dynamic_cast_existential_1_conditional(a1))
  {
    v35 = [objc_opt_self() sessionStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v36 = [objc_opt_self() snippetProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1) || dynamic_cast_existential_1_conditional(a1))
  {
    v37 = [objc_opt_self() audioStartingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v38 = [objc_opt_self() audioRecordingProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v39 = [objc_opt_self() requiresMDMChecksProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v40 = [objc_opt_self() cameraCaptureProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v41 = [objc_opt_self() staccatoLongPressProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v42 = [objc_opt_self() toggleProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v43 = [objc_opt_self() pushToTalkTransmissionProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v44 = [objc_opt_self() undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v45 = [objc_opt_self() undoableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  if (dynamic_cast_existential_1_conditional(a1))
  {
    v46 = [objc_opt_self() foregroundContinuableProtocol];
    MEMORY[0x193ADB260]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    sub_18F521D6C();
  }

  return v50;
}

uint64_t static AppIntent.supportedModes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_18F113CB8(a1, a2);
  v7 = [objc_opt_self() foregroundContinuableProtocol];
  v13 = v7;
  v12[2] = &v13;
  sub_18F113CBC(sub_18F11559C, v12, v6);
  v9 = v8;

  if (v9)
  {
    v11 = 8;
  }

  else if (OUTLINED_FUNCTION_4_41() && (result = sub_18F3433D0(a1, a2), (result & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    result = sub_18F1122D0(a1, a2);
    v11 = 1;
    if (result)
    {
      v11 = 2;
    }
  }

  *a3 = v11;
  return result;
}

void sub_18F113CBC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_18F111F70(a3);
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
      v8 = MEMORY[0x193ADBE10](v6, a3);
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

uint64_t sub_18F113E38(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[2] = &v4;
  sub_18F117B6C(sub_18F113FCC, v3, nullsub_1, 0, nullsub_1, 0, a1, a2);
  return v4;
}

uint64_t sub_18F113EC0(uint64_t a1, uint64_t *a2)
{
  sub_18F0FD724(a1, v12);
  sub_18F113FD4();
  v3 = *(*a2 + 16);
  sub_18F113FF8();
  v4 = v13;
  v5 = v14;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8);
  sub_18F11401C(v3, v8, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_18F11401C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_18F0FD0B4(&v12, v10 + 40 * a1 + 32);
}

id sub_18F1140B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = (*(v3 + 16))(a1, v3);
  v6 = v5;
  sub_18F0F21A8(0, &qword_1ED6FE3A0);
  v7 = (*(v3 + 96))(a1, v3);
  v8 = sub_18F114200(v7);
  v9 = (*(*(v3 + 8) + 24))(a1);
  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  sub_18F114508();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_18F5216CC();
  v12 = objc_allocWithZone(MEMORY[0x1E69AC688]);
  return sub_18F1145F0(v4, v6, v8, v9 & 1, 0, 0, v10, v11, 0, 0, 0, 0, 0);
}

id sub_18F114200(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1))
  {
    goto LABEL_17;
  }

  v1 = OUTLINED_FUNCTION_10_25();
  v2 = dynamic_cast_existential_1_conditional(v1);
  if (v2)
  {
    return sub_18F1435A0(v2, v3);
  }

  v5 = OUTLINED_FUNCTION_10_25();
  if (dynamic_cast_existential_1_conditional(v5))
  {
    goto LABEL_17;
  }

  v6 = OUTLINED_FUNCTION_10_25();
  v7 = dynamic_cast_existential_1_conditional(v6);
  if (v7)
  {
    return static AppEntity.valueType.getter(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_10_25();
  if (dynamic_cast_existential_1_conditional(v9))
  {
    goto LABEL_17;
  }

  v10 = OUTLINED_FUNCTION_10_25();
  v11 = dynamic_cast_existential_1_conditional(v10);
  if (v11)
  {
    return sub_18F1E79B8(v11, v12);
  }

  v13 = OUTLINED_FUNCTION_10_25();
  if (dynamic_cast_existential_1_conditional(v13))
  {
    goto LABEL_17;
  }

  v14 = OUTLINED_FUNCTION_10_25();
  v15 = dynamic_cast_existential_1_conditional(v14);
  if (v15)
  {
    return static _IntentValueRepresentable.valueType.getter(v15, v16);
  }

  v17 = OUTLINED_FUNCTION_10_25();
  if (dynamic_cast_existential_1_conditional(v17) || (v18 = OUTLINED_FUNCTION_10_25(), dynamic_cast_existential_1_conditional(v18)))
  {
LABEL_17:
    OUTLINED_FUNCTION_8_22();
    return v19();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_10_25();
    if (dynamic_cast_existential_2_conditional(v20))
    {
      return sub_18F35DCE8();
    }

    else
    {
      sub_18F52279C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
      v21 = sub_18F52196C();
      MEMORY[0x193ADB000](v21);

      MEMORY[0x193ADB000](0x756C6176206F7420, 0xEF2E657079742065);
      result = OUTLINED_FUNCTION_21_19();
      __break(1u);
    }
  }

  return result;
}

id static Bool.valueType.getter()
{
  v0 = [objc_opt_self() BOOLValueType];

  return v0;
}

unint64_t sub_18F114508()
{
  result = qword_1ED6FE2F0;
  if (!qword_1ED6FE2F0)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE2F0);
  }

  return result;
}

uint64_t sub_18F114560(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18F1145F0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v16 = sub_18F5218AC();
  }

  else
  {
    v16 = 0;
  }

  sub_18F0F21A8(0, &qword_1ED6FE2F8);
  v17 = sub_18F521C8C();

  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  sub_18F114508();
  v18 = sub_18F5216AC();

  if (a13)
  {
    v19 = sub_18F5218AC();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v23 initWithName:v16 valueType:a3 optional:a4 & 1 title:a5 description:a6 resolvableInputTypes:v17 typeSpecificMetadata:v18 dynamicOptionsSupport:a9 inputConnectionBehavior:a10 capabilities:a11 queryIdentifier:v19];

  swift_unknownObjectRelease();
  return v20;
}

void sub_18F114770()
{
  sub_18F5218DC();
  sub_18F522EFC();
  sub_18F5219CC();
  sub_18F522F4C();

  sub_18F114800();
}

void sub_18F114800()
{
  OUTLINED_FUNCTION_18();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_18F5218DC();
    v6 = v5;
    if (v4 == sub_18F5218DC() && v6 == v7)
    {

      break;
    }

    OUTLINED_FUNCTION_66_0();
    v9 = sub_18F522D5C();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F1148F8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == (MEMORY[0x1E69E7CA8] + 8))
  {
    return 0;
  }

  if (AssociatedTypeWitness == &type metadata for _SnippetViewContainer)
  {
    return 2;
  }

  if (AssociatedTypeWitness == &type metadata for _SnippetIntentContainer)
  {
    return 32;
  }

  return 16 * (AssociatedTypeWitness == &type metadata for SnippetPluginContainer);
}

uint64_t sub_18F1149E4(uint64_t a1, uint64_t a2)
{
  result = dynamic_cast_existential_1_conditional(a1);
  if (result)
  {

    return sub_18F242910(result, a1, result, a2, v5);
  }

  return result;
}

id sub_18F114A54(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActionIdentifier:a1 actionMetadata:a2];

  return v4;
}

uint64_t sub_18F114AB0()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_18F136D50;

  return sub_18F1119D8();
}

void sub_18F114B68()
{
  sub_18F1155C8();
  if (v0 <= 0x3F)
  {
    sub_18F114BDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_18F114BDC()
{
  if (!qword_1ED6FCF88)
  {
    sub_18F52165C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6FCF88);
    }
  }
}

uint64_t sub_18F114C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8090);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED707690 = result;
  return result;
}

uint64_t sub_18F114CB8()
{
  result = sub_18F5229BC();
  if (!v1)
  {
    sub_18F52279C();

    v2 = sub_18F52307C();
    MEMORY[0x193ADB000](v2);

    MEMORY[0x193ADB000](0xD000000000000012, 0x800000018F526560);
    result = OUTLINED_FUNCTION_36_6();
    __break(1u);
  }

  return result;
}

void sub_18F114DA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
    OUTLINED_FUNCTION_34();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6]) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_18F114EC4()
{
  OUTLINED_FUNCTION_18();
  v3 = 0;
  sub_18F520B3C();
  OUTLINED_FUNCTION_5_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v40 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  v41 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  sub_18F117248();
  OUTLINED_FUNCTION_57_0();
  v44 = type metadata accessor for IntentDescription();
  sub_18F0F9F88(v1 + v44[5], v19, &qword_1EACCF7A8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v2);
  v42 = v0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v5 + 32))(v13, v19, v2);
    sub_18F1D6D44(v13, &v47);
    (*(v5 + 8))(v13, v2);
    v3 = v47;
  }

  v21 = v44[6];
  v43 = v1;
  v22 = *(v1 + v21);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v39 = v3;
    v48 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v38 = v5;
    v26 = *(v5 + 16);
    v25 = v5 + 16;
    v45 = v26;
    v27 = v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    while (1)
    {
      v45(v11, v27, v2);
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v29 = v46;
      [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      (*(v25 - 8))(v11, v2);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v27 += v28;
      if (!--v23)
      {
        v24 = v48;
        v5 = v38;
        v3 = v39;
        goto LABEL_9;
      }
    }

    sub_18F522A3C();
    __break(1u);
    (*(v25 + 8))(v28, v2);
    __break(1u);
  }

  else
  {
LABEL_9:
    v30 = v41;
    sub_18F0F9F88(v43 + v44[7], v41, &qword_1EACCF7A8);
    if (__swift_getEnumTagSinglePayload(v30, 1, v2) == 1)
    {
      v31 = 0;
    }

    else
    {
      v32 = v40;
      v33 = OUTLINED_FUNCTION_56();
      v34(v33);
      v31 = sub_18F117248();
      (*(v5 + 8))(v32, v2);
    }

    v35 = v42;
    v36 = objc_allocWithZone(MEMORY[0x1E69AC668]);
    sub_18F11222C(v35, v3, v24, v31);
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_18F11531C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_34();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_18F115440(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F115498(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F1154F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F115548()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_18F1155C8()
{
  result = qword_1ED6FD308[0];
  if (!qword_1ED6FD308[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED6FD308);
  }

  return result;
}

void sub_18F115624()
{
  type metadata accessor for LNTranscriptMatchingPredicateType(319);
  if (v0 <= 0x3F)
  {
    sub_18F115734();
    if (v1 <= 0x3F)
    {
      sub_18F11578C();
      if (v2 <= 0x3F)
      {
        sub_18F0FE110(319, &qword_1EACCE6D0, &qword_1EACD5800);
        if (v3 <= 0x3F)
        {
          sub_18F0FE110(319, &qword_1EACCE6D8, &qword_1EACD5808);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18F115734()
{
  if (!qword_1EACCDF78)
  {
    type metadata accessor for IntentDonationIdentifier();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDF78);
    }
  }
}

void sub_18F11578C()
{
  if (!qword_1EACCE500[0])
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, qword_1EACCE500);
    }
  }
}

uint64_t static IntentDonationMatchingPredicate.intentType(_:entityIdentifier:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = type metadata accessor for IntentDonationMatchingPredicate();
  type metadata accessor for IntentDonationIdentifier();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v5 = 2;
  v16 = (v5 + v11[6]);
  *v16 = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v17 = (v5 + v11[7]);
  *v17 = v3;
  v17[1] = v1;
  v18 = (v5 + v11[8]);
  *v18 = 0;
  v18[1] = 0;
  OUTLINED_FUNCTION_16();

  return sub_18F1158E0(v19);
}

uint64_t type metadata accessor for IntentDonationMatchingPredicate()
{
  result = qword_1EACCDE60;
  if (!qword_1EACCDE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F1158E0(uint64_t result)
{
  if (result)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t IntentDonationManager.deleteDonations(matching:)()
{
  OUTLINED_FUNCTION_69();
  v0[19] = v1;
  v2 = type metadata accessor for IntentDonationIdentifier();
  OUTLINED_FUNCTION_51(v2);
  v0[20] = v3;
  v0[21] = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F115990()
{
  OUTLINED_FUNCTION_31();
  if ([objc_opt_self() isActionTranscriptEnabled])
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69AD070]) init];
    v0[22] = v1;
    sub_18F115B44();
    v3 = v2;
    v0[23] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_18F11F980;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57F0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18F11F8E8;
    v0[13] = &block_descriptor_7;
    v0[14] = v4;
    [v1 deleteRecordsWithMatchingPredicate:v3 reply:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v5 = v0[1];
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

void sub_18F115B44()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57F8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  v10 = *v1;
  v11 = type metadata accessor for IntentDonationMatchingPredicate();
  sub_18F116970(v1 + v11[5], v5, &qword_1EACD57F8);
  v12 = type metadata accessor for IntentDonationIdentifier();
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_18F0EF1A8(v5, &qword_1EACD57F8);
    sub_18F520E6C();
    OUTLINED_FUNCTION_11();
  }

  else
  {
    v17 = sub_18F520E6C();
    OUTLINED_FUNCTION_10_0();
    v18 = OUTLINED_FUNCTION_56();
    v19(v18);
    sub_18F1A27DC(v5);
    OUTLINED_FUNCTION_58_0();
    v16 = v17;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v20 = (v1 + v11[6]);
  v21 = *v20;
  if (*v20)
  {
    v39 = v10;
    v22 = v20[2];
    v23 = *(v20[1] + 8);
    static AppValue._identifier.getter(v21, v23);
    if (dynamic_cast_existential_1_conditional(v21))
    {
      v38[1] = v22;
      if (qword_1ED6FF6D8 != -1)
      {
        swift_once();
      }

      v24 = static AppValue._identifier.getter(v21, v23);
      v26 = sub_18F164CE8(v24);

      v27 = v26;
      sub_18F1AF344();
    }

    objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F166ED0();
    v25 = v28;
    v10 = v39;
  }

  else
  {
    v25 = 0;
  }

  v29 = *(v1 + v11[7]);
  if (v29)
  {
    v30 = static AppIntent._identifier.getter(v29);
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = (v1 + v11[8]);
  if (*v33)
  {
    v34 = static AppValue._identifier.getter(*v33, *(v33[1] + 8));
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = objc_allocWithZone(MEMORY[0x1E69AD058]);
  sub_18F115F38(0, 0, v10, v9, v25, v30, v32, v34, v36);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F115EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520E6C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

id sub_18F115F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (a2)
  {
    v15 = sub_18F5218AC();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_18F520E6C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v16) != 1)
  {
    v17 = sub_18F520E2C();
    (*(*(v16 - 8) + 8))(a4, v16);
  }

  if (!a7)
  {
    v18 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v18 = sub_18F5218AC();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v19 = sub_18F5218AC();

LABEL_11:
  v20 = [v10 initWithBundleIdentifier:v15 type:a3 executionUUID:v17 entityIdentifier:a5 actionType:v18 entityType:v19];

  return v20;
}

uint64_t type metadata accessor for Bool.IntentDisplayName()
{
  result = qword_1ED6FC6F8;
  if (!qword_1ED6FC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F1160F0()
{
  result = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F116170(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520B3C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v5 = v4;
  v35 = v6;
  v7 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  v34 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1();
  v30 = v14;
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29[-v18];
  v31 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  (*(v21 + 16))(v24 - v23, v7);
  (*(v16 + 16))(v19, v5, v14);
  v25 = v33;
  sub_18F111410(v33);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v1, v13, &qword_1EACCF7A0);
  v26 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v34, v27, v28, v26);
  sub_18F116B3C();
  sub_18F0EF148(v1, &qword_1EACCF7A0);
  sub_18F0EF148(v25, &qword_1EACD6108);
  (*(v16 + 8))(v5, v30);
  sub_18F0EF148(v35, &qword_1EACCF7A8);
  (*(v21 + 8))(v32, v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F116490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F116514(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520B3C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void sub_18F116560()
{
  swift_getAssociatedTypeWitness();
  sub_18F52254C();
  if (v0 <= 0x3F)
  {
    sub_18F520B3C();
    if (v1 <= 0x3F)
    {
      sub_18F0FDE68();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

unint64_t sub_18F1166B8()
{
  result = qword_1ED6FE728;
  if (!qword_1ED6FE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE728);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_18F5229DC();
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_18F522EFC();
}

uint64_t OUTLINED_FUNCTION_69_5(uint64_t result)
{
  *(v1 + 664) = v2;
  *(v1 + 672) = result;
  return result;
}

void OUTLINED_FUNCTION_69_6(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4 = &v3[a1];
  v4[2].n128_u64[0] = 0;
  *v4 = a2;
  v4[1] = a2;
  *v3 = v2;
}

BOOL OUTLINED_FUNCTION_69_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_69_10()
{

  sub_18F3AA158();
}

uint64_t OUTLINED_FUNCTION_69_12()
{

  return swift_slowAlloc();
}

unint64_t sub_18F1168B4()
{
  result = qword_1ED6FE730[0];
  if (!qword_1ED6FE730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FE730);
  }

  return result;
}

uint64_t sub_18F116908(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18F116970(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F1169CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_18F116A1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_31_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F116A7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18F116AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDialog.Storage(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_18F116B3C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_allocObject();
  sub_18F116BC4(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F116BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_162();
  v15 = (v8 + *(v14 + 152));
  *v15 = 0;
  v15[1] = 0;
  OUTLINED_FUNCTION_22_2();
  v17 = (v8 + *(v16 + 160));
  *v17 = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_133(v8 + *(v18 + 168));
  OUTLINED_FUNCTION_22_2();
  *(v8 + *(v19 + 176)) = 0;
  OUTLINED_FUNCTION_22_2();
  v21 = v8 + *(v20 + 184);
  *v21 = v22;
  *(v21 + 16) = v22;
  *(v21 + 32) = 0;
  OUTLINED_FUNCTION_22_2();
  v24 = *(v23 + 104);
  v25 = sub_18F520B3C();
  v26 = *(v25 - 8);
  v43 = a1;
  (*(v26 + 16))(v8 + v24, a1, v25);
  OUTLINED_FUNCTION_22_2();
  v28 = *(v27 + 96);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v29 = sub_18F52254C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v8 + v28, a2, v29);
  if (!a3)
  {
    sub_18F1168B4();
    a3 = sub_18F5216CC();
  }

  (*(v30 + 8))(a2, v29);
  (*(v26 + 8))(v43, v25);
  OUTLINED_FUNCTION_22_2();
  *(v8 + *(v31 + 112)) = a3;
  OUTLINED_FUNCTION_22_2();
  v33 = v8 + *(v32 + 120);
  *(v33 + 32) = *(a4 + 32);
  v34 = *(a4 + 16);
  *v33 = *a4;
  *(v33 + 16) = v34;
  OUTLINED_FUNCTION_22_2();
  v36 = v8 + *(v35 + 128);
  v37 = *(a5 + 16);
  *v36 = *a5;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a5 + 32);
  OUTLINED_FUNCTION_22_2();
  sub_18F1170D0(a6, v8 + *(v38 + 136));
  OUTLINED_FUNCTION_22_2();
  sub_18F1170D0(a7, v8 + *(v39 + 144));
  OUTLINED_FUNCTION_22_2();
  v41 = *(v40 + 184);
  swift_beginAccess();
  sub_18F117140(a8, v8 + v41);
  swift_endAccess();
  return v8;
}

unint64_t OUTLINED_FUNCTION_159(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_18F11897C(v1, v2, va);
}

void OUTLINED_FUNCTION_159_0()
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
}

uint64_t sub_18F116F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDialog.Storage(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void OUTLINED_FUNCTION_143(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 + 16) = v2;
  a1[2] = a2;
  *(v3 + 152) = v4;
  v6 = *(v3 + 160);
}

uint64_t OUTLINED_FUNCTION_143_1()
{
}

uint64_t OUTLINED_FUNCTION_143_2()
{
}

uint64_t OUTLINED_FUNCTION_128_0@<X0>(uint64_t a1@<X8>)
{

  return sub_18F0FD724(v1 + 40 * a1 + 32, v2 + 96);
}

uint64_t OUTLINED_FUNCTION_128_1()
{

  return swift_dynamicCast();
}

uint64_t sub_18F1170D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F117140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1171B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1171EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F117248()
{
  sub_18F520AAC();
  sub_18F118258();
  if (swift_dynamicCast())
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

    return v0;
  }

  else
  {
    result = OUTLINED_FUNCTION_0_79();
    __break(1u);
  }

  return result;
}

uint64_t sub_18F117320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_18F117398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD05F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F117450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1174C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD05F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F117530()
{
  OUTLINED_FUNCTION_22_2();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F117570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD05F0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v23 = MEMORY[0x1E69E7CC0];
  v16 = sub_18F522F8C();
  v17 = (*(v16 - 8) + 16);
  (*v17)(v15, v0, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v18 = (v17 - 1);
  while (1)
  {
    sub_18F117398(v15, v13);
    result = OUTLINED_FUNCTION_0_13(v13);
    if (v20)
    {
      break;
    }

    sub_18F522F7C();
    v21 = *v18;
    (*v18)(v13, v16);
    sub_18F1178A8();
    sub_18F117398(v15, v10);
    result = OUTLINED_FUNCTION_0_13(v10);
    if (v20)
    {
      goto LABEL_8;
    }

    sub_18F522F5C();
    sub_18F1181CC(v15);
    v21(v10, v16);
    sub_18F1174C0(v7, v15);
    sub_18F117398(v15, v4);
    OUTLINED_FUNCTION_0_13(v4);
    if (v20)
    {
      sub_18F1181CC(v15);
      sub_18F1181CC(v4);
      return v23;
    }

    sub_18F1181CC(v4);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_18F1177BC()
{
  OUTLINED_FUNCTION_29_7();
  if (v6)
  {
    OUTLINED_FUNCTION_6_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD80);
    v4 = 48;
    v9 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v11 = OUTLINED_FUNCTION_43_1();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD88);
    OUTLINED_FUNCTION_43_1();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_18F1178A8()
{
  v2 = v0;
  v3 = sub_18F52297C();
  v4 = *(*v0 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_18F117B0C(v4 + v3, 1);
  v1 = *v0;
  v5 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  v6 = sub_18F52296C();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3610);
  result = swift_initStackObject();
  *(result + 16) = v6;
  if (v8 < v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 < 1)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 16);
  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  if (!v11)
  {
    *(v1 + 16) = v12;
LABEL_6:
    if (v8 != v5)
    {

LABEL_8:
      *v2 = v1;
      return result;
    }

LABEL_11:
    v13 = *(v1 + 16);
    sub_18F522AFC();
    while (1)
    {
      sub_18F117450(v27, &v24);
      if (!*(&v26 + 1))
      {
        break;
      }

      sub_18F0EF148(&v24, &qword_1EACD3618);
      v14 = *(v1 + 24) >> 1;
      if (v14 < v13 + 1)
      {
        sub_18F1177BC();
        v1 = v21;
        v14 = *(v21 + 24) >> 1;
      }

      for (i = 48 * v13 + 32; ; i += 48)
      {
        sub_18F117450(v27, v22);
        if (!*(&v23 + 1))
        {
          v19 = v22;
          v20 = &qword_1EACD3618;
          goto LABEL_21;
        }

        v24 = v22[0];
        v25 = v22[1];
        v26 = v23;
        if (v13 >= v14)
        {
          break;
        }

        sub_18F0EF148(v27, &qword_1EACD3618);
        v16 = (v1 + i);
        v18 = v25;
        v17 = v26;
        *v16 = v24;
        v16[1] = v18;
        v16[2] = v17;
        ++v13;
        sub_18F522AFC();
      }

      v19 = &v24;
      v20 = &qword_1EACCFD88;
LABEL_21:
      sub_18F0EF148(v19, v20);
      *(v1 + 16) = v13;
    }

    sub_18F0EF148(v27, &qword_1EACD3618);

    result = sub_18F0EF148(&v24, &qword_1EACD3618);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_18F117B6C(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(__int128 *), uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v63 = a5;
  v64 = a6;
  v65 = a3;
  v66 = a4;
  v67 = a1;
  v68 = a2;
  v9 = sub_18F522F8C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v86 + 1) = a7;
  __swift_allocate_boxed_opaque_existential_1(&v85);
  OUTLINED_FUNCTION_31_0();
  v16 = *(v15 + 16);
  v69 = a7;
  v16();
  sub_18F522F6C();
  v17 = sub_18F117570();
  v19 = *(v17 + 16);
  if (!v19)
  {

    return (*(v11 + 8))(v14, v9);
  }

  v59 = v14;
  v60 = v11;
  v61 = v9;
  v58 = v17;
  v20 = v17 + 32;
  *&v18 = 136315138;
  v62 = v18;
  do
  {
    OUTLINED_FUNCTION_24_12();
    sub_18F0F9FD4(v21, v22, v23);
    v83 = v85;
    sub_18F118710(&v86, v84);
    sub_18F0FECD4(v84, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4(&v81, v78);
      OUTLINED_FUNCTION_24_12();
      sub_18F0F9FD4(v24, v25, v26);
      v27 = *(&v76 + 1);
      if (*(&v76 + 1))
      {
        v28 = v76;
        v29 = HIBYTE(*(&v76 + 1)) & 0xFLL;
        if ((*(&v76 + 1) & 0x2000000000000000) == 0)
        {
          v29 = v76 & 0xFFFFFFFFFFFFLL;
        }

        if (!v29)
        {
          goto LABEL_25;
        }

        if (sub_18F521ACC() == 95 && v30 == 0xE100000000000000)
        {
        }

        else
        {
          v32 = sub_18F522D5C();

          if ((v32 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_18F118720(1, v28, v27);
        v28 = MEMORY[0x193ADAF70](v48);
        v27 = v49;

LABEL_25:
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        v51 = v79;
        v50 = v80;
        __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
        v52 = *(v50 + 8);
        v53 = *(v52 + 24);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v53(v28, v27, v51, v52);
        *&v76 = static AppIntent._identifier.getter(v69);
        *(&v76 + 1) = v54;
        MEMORY[0x193ADB000](58, 0xE100000000000000);
        MEMORY[0x193ADB000](v28, v27);

        __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
        v55 = OUTLINED_FUNCTION_45();
        v56(v55);
        v67(v78);
        sub_18F0FA038(&v83, &qword_1EACCFD88);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        goto LABEL_28;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      if (qword_1ED6FEFE8 != -1)
      {
        swift_once();
      }

      v33 = sub_18F52165C();
      __swift_project_value_buffer(v33, qword_1ED7077A8);
      OUTLINED_FUNCTION_24_12();
      sub_18F0F9FD4(v34, v35, v36);
      v37 = sub_18F52163C();
      v38 = sub_18F52221C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v75 = v40;
        *v39 = v62;
        OUTLINED_FUNCTION_24_12();
        sub_18F0F9FD4(v41, v42, v43);
        v71 = v73;
        sub_18F118710(&v74, &v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD88);
        v44 = sub_18F52194C();
        v46 = v45;
        sub_18F0FA038(&v76, &qword_1EACCFD88);
        v47 = sub_18F11897C(v44, v46, &v75);

        *(v39 + 4) = v47;
        _os_log_impl(&dword_18F0E9000, v37, v38, "Label not found for child %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x193ADD350](v40, -1, -1);
        MEMORY[0x193ADD350](v39, -1, -1);
      }

      else
      {

        sub_18F0FA038(&v76, &qword_1EACCFD88);
      }

      sub_18F0FA038(&v83, &qword_1EACCFD88);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
      if (OUTLINED_FUNCTION_32_9())
      {
        sub_18F0FD0B4(&v76, &v73);
        v65(&v73);
        __swift_destroy_boxed_opaque_existential_1Tm(&v73);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0890);
        if (OUTLINED_FUNCTION_32_9())
        {
          v73 = v76;
          v63(&v73);
          swift_unknownObjectRelease();
        }
      }

      sub_18F0FA038(&v83, &qword_1EACCFD88);
    }

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    v20 += 48;
    --v19;
  }

  while (v19);

  v11 = v60;
  v9 = v61;
  v14 = v59;
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_18F1181CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD05F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F118258()
{
  result = qword_1ED6FEEC0;
  if (!qword_1ED6FEEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FEEC0);
  }

  return result;
}

uint64_t sub_18F1182B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_79_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

void *OUTLINED_FUNCTION_79_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __dst, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&__dst, &__src, 0x91uLL);
}

double OUTLINED_FUNCTION_79_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 - 112) = 0;
  result = 0.0;
  *(v22 - 144) = 0u;
  *(v22 - 128) = 0u;
  *(v22 - 96) = a22;
  return result;
}

void OUTLINED_FUNCTION_79_5(__n128 a1)
{
  v1[9].n128_u64[1] = v3;
  v1[10].n128_u64[0] = v2;
  v1[10].n128_u64[1] = 0;
  v1[11].n128_u64[0] = 0;
  v1[11].n128_u8[8] = 0;
  v1[6] = a1;
  v1[7] = a1;
  v1[4] = a1;
  v1[5] = a1;
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  *(v22 - 88) = a1;
  *v21 = a21;

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_79_8(uint64_t a1)
{

  return sub_18F0F713C(a1, v1);
}

void OUTLINED_FUNCTION_79_10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 - 232) = a5;
  *(v5 - 292) = a4;
  *(v5 - 288) = a3;
  *(v5 - 240) = a2;
}

unint64_t OUTLINED_FUNCTION_79_11(float a1)
{
  *v3 = a1;

  return sub_18F11897C(v2, v1, (v4 - 88));
}

uint64_t OUTLINED_FUNCTION_79_13()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_45_3()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_8()
{
}

uint64_t OUTLINED_FUNCTION_45_9()
{

  return swift_getAssociatedTypeWitness();
}

unint64_t OUTLINED_FUNCTION_45_10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a4 + 48) + 8 * result) = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  return result;
}

void OUTLINED_FUNCTION_45_12(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_45_14()
{

  return sub_18F522ACC();
}

uint64_t OUTLINED_FUNCTION_45_15()
{
  v1 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v1);
  return v1;
}

__n128 OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = v21;
  result = *(v20 + 8);
  *(v22 - 96) = &a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_19()
{
  v4 = *(v2 - 88);

  return sub_18F3F041C(v0, v4, v1);
}

_OWORD *sub_18F118710(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_18F118720(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
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

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    v6 = sub_18F5219FC();
    if (v7)
    {
      v6 = v5;
    }

    if (4 * v3 >= v6 >> 14)
    {
      sub_18F521AFC();

      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_24_12();
      return;
    }
  }

  __break(1u);
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

unint64_t sub_18F118844()
{
  result = qword_1ED6FCFC0;
  if (!qword_1ED6FCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FCFC0);
  }

  return result;
}

uint64_t sub_18F118898(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_18F16A6BC(result, v7, 1, v3);
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

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_18F11897C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F118A40(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_18F0FECD4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_18F118A40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18F118CC8(a5, a6);
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
    result = sub_18F52286C();
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

uint64_t sub_18F118B40(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_18F521A3C())
  {
    result = sub_18F118C58(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18F52277C();
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
          result = sub_18F52286C();
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

  return MEMORY[0x1E69E7CC0];
}

void *sub_18F118C58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0120);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_18F118CC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_18F118B40(a1, a2);
  sub_18F118898(&unk_1F030CA18);
  return v3;
}

uint64_t sub_18F118D14(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v26[0] = 0;
  v26[1] = 0;
  v22 = a2;
  v23 = &v28;
  v20 = &v27;
  v18[2] = v26;
  sub_18F117B6C(sub_18F1195FC, v21, sub_18F10EC58, v19, sub_18F22C0A8, v18, a4, a5);
  if ((a3 & 1) == 0)
  {
    sub_18F22B5E8(v28, a2);
  }

  v7 = v28;
  KeyPath = swift_getKeyPath();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_18F130860();
    v10 = v25;
    v11 = a2 + 32;
    do
    {
      sub_18F1306CC(v11, v24);
      v13 = v24[0];
      v12 = v24[1];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F130770(v24);
      v25 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_18F130860();
        v10 = v25;
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
      v11 += 80;
      --v9;
    }

    while (v9);
  }

  v16 = sub_18F119604(KeyPath, v10, v7);

  return v16;
}

uint64_t sub_18F118EEC(void *a1, void *a2, uint64_t *a3)
{
  sub_18F1196E0(a2, a1, v52);
  sub_18F116A7C(v52, &v45, &qword_1EACD2F98);
  if (*(&v45 + 1))
  {
    sub_18F116A7C(&v46, &v49, &qword_1EACD0620);
    sub_18F130770(&v45);
    if (*(&v50 + 1))
    {
      sub_18F0FD0B4(&v49, &v45);
      sub_18F0FD724(&v45, &v49);
      v5 = a1[3];
      v6 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
      (*(*(v6 + 8) + 80))(&v49, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
      goto LABEL_6;
    }
  }

  else
  {
    sub_18F0EF1A8(&v45, &qword_1EACD2F98);
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
  }

  sub_18F0EF1A8(&v49, &qword_1EACD0620);
LABEL_6:
  sub_18F0FD724(a1, &v49);
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v7 = sub_18F52165C();
  __swift_project_value_buffer(v7, qword_1ED7077A8);
  sub_18F0FD724(&v49, &v45);
  sub_18F0FD724(&v49, &v42);
  sub_18F0FD724(&v49, v39);
  v8 = sub_18F52163C();
  v9 = sub_18F52223C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136446722;
    v13 = *(&v46 + 1);
    v12 = v47;
    __swift_project_boxed_opaque_existential_1Tm(&v45, *(&v46 + 1));
    result = (*(*(v12 + 8) + 16))(v13);
    if (!v15)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    v18 = sub_18F11897C(v16, v17, &v38);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2082;
    v19 = v43;
    v20 = v44;
    __swift_project_boxed_opaque_existential_1Tm(&v42, v43);
    v21 = sub_18F11AB34(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    v24 = sub_18F11897C(v21, v23, &v38);

    *(v10 + 14) = v24;
    *(v10 + 22) = 2080;
    v25 = v40;
    v26 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v27 = (*(v26 + 80))(v25, v26);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v30 = sub_18F11897C(v27, v29, &v38);

    *(v10 + 24) = v30;
    _os_log_impl(&dword_18F0E9000, v8, v9, "Prepared %{public}s to %{public}s(%s))", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v11, -1, -1);
    MEMORY[0x193ADD350](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  sub_18F0FD724(a1, &v42);
  sub_18F116A7C(v52, &v45, &qword_1EACD2F98);
  if (*(&v45 + 1))
  {
    v31 = v48;
    v32 = v48;
    sub_18F130770(&v45);
  }

  else
  {
    sub_18F0EF1A8(&v45, &qword_1EACD2F98);
    v31 = 0;
  }

  sub_18F0FD0B4(&v42, &v45);
  *(&v47 + 1) = v31;
  sub_18F119814();
  v33 = *(*a3 + 16);
  sub_18F1197FC(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  result = sub_18F0EF1A8(v52, &qword_1EACD2F98);
  v34 = *a3;
  *(v34 + 16) = v33 + 1;
  v35 = (v34 + 48 * v33);
  v36 = v45;
  v37 = v47;
  v35[3] = v46;
  v35[4] = v37;
  v35[2] = v36;
  return result;
}

uint64_t sub_18F119378(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v12 = v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = (v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent);
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  v15 = *(a4 - 8);
  (*(v15 + 16))(boxed_opaque_existential_1, a1, a4);
  *(v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_silenceWarnings) = a3;
  v16 = sub_18F118D14(a1, a2, a3, a4, a5);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  (*(v15 + 8))(a1, a4);
  *(v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata) = v16;
  *(v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_dependencies) = v18;
  v23 = (v6 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_draftContext);
  *v23 = v20;
  v23[1] = v22;
  return v6;
}

uint64_t sub_18F1194F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1);
  v11 = sub_18F119BE0(v10, a2, 1, a3, a4);
  (*(v8 + 8))(a1, a3);
  return v11;
}

uint64_t sub_18F119604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 16))
  {
    v7 = a3;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    sub_18F130880(&v7, a2, a1);
    return v7;
  }

  else
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return v3;
}

uint64_t sub_18F1196A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

void *sub_18F1196E0@<X0>(void *result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = result[2];
  v6 = (result + 4);
  if (!v5)
  {
LABEL_9:
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  while (1)
  {
    sub_18F1306CC(v6, v15);
    v7 = v15[0];
    v8 = v15[1];
    v10 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v10);
    v11 = (*(*(v9 + 8) + 16))(v10);
    if (!v12)
    {
      goto LABEL_8;
    }

    if (v7 == v11 && v12 == v8)
    {
      break;
    }

    v14 = sub_18F522D5C();

    if (v14)
    {
      return memcpy(a3, v15, 0x50uLL);
    }

LABEL_8:
    result = sub_18F130770(v15);
    v6 += 80;
    if (!--v5)
    {
      goto LABEL_9;
    }
  }

  return memcpy(a3, v15, 0x50uLL);
}

uint64_t IntentParameter.deinit()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_22_2();
  v5 = *(v4 + 104);
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_111();
  sub_18F0EF1A8(v7, v8);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_111();
  sub_18F0EF1A8(v9, v10);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_111();
  sub_18F0EF1A8(v11, v12);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_111();
  sub_18F0EF1A8(v13, v14);
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_22_2();
  sub_18F0EF1A8(v0 + *(v15 + 168), &qword_1EACD0620);
  OUTLINED_FUNCTION_22_2();
  sub_18F0EF1A8(v0 + *(v16 + 184), &qword_1EACD0D98);
  return v0;
}

uint64_t IntentParameter.__deallocating_deinit()
{
  IntentParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F119AC0()
{
  result = sub_18F520E6C();
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

void sub_18F119B88()
{
  if (!qword_1ED6FF5F8[0])
  {
    sub_18F520B3C();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED6FF5F8);
    }
  }
}

uint64_t sub_18F119BE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_18F119378(a1, a2, a3, a4, a5);
  return v10;
}

void OUTLINED_FUNCTION_37_6(__n128 a1, __n128 a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6].n128_u8[0] = 0;
}