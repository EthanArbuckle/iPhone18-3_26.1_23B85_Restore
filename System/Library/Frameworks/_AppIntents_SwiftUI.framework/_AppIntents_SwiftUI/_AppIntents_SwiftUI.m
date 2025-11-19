uint64_t sub_1D4135BE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1D4166AD0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D4135C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1D4166AD0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(SEL *a1, unsigned int *a2, unsigned int *a3, uint64_t (*a4)(void))
{

  return sub_1D414695C(a1, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  *(v2 - 192) = v1;
  *(v2 - 184) = v0;

  return sub_1D41656D0();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_1D41527F8();
}

uint64_t OUTLINED_FUNCTION_3_6(unint64_t *a1)
{

  return sub_1D4136424(a1);
}

uint64_t sub_1D4135EE4(uint64_t *a1)
{
  v1 = *a1;
  if (OUTLINED_FUNCTION_20())
  {
    sub_1D4165F50();
  }

  else
  {
    sub_1D4165E50();
  }

  return sub_1D4165F80();
}

uint64_t sub_1D4135F3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (OUTLINED_FUNCTION_20())
  {
    sub_1D4165F50();
    sub_1D4165F80();
    sub_1D413D268();
  }

  else
  {
    sub_1D4165E50();
    sub_1D4165F80();
    sub_1D413D92C(&qword_1EC7C4368, MEMORY[0x1E697C028]);
  }

  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_1D4166A10();
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(a1 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_12_0()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_3@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1D4166BB0();
}

uint64_t sub_1D41361D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_1D4166190();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_1D4166BB0();
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  v3 = *(v1 - 176);
  v2 = *(v1 - 168);
  result = v0;
  v5 = *(v1 - 160);
  v6 = *(v1 - 152);
  v7 = *(v1 - 144);
  v8 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1)
{

  return sub_1D4136424(a1);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1D4136424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D4165A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_1D4165910();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return sub_1D4165970();
}

void OUTLINED_FUNCTION_19_2()
{

  sub_1D413DBE4();
}

uint64_t sub_1D413653C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_28_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;

  return v3;
}

void OUTLINED_FUNCTION_13_3()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
}

void OUTLINED_FUNCTION_13_4()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0();
}

uint64_t OUTLINED_FUNCTION_21()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_9_4()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = *(v10 + 16);
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;

  return sub_1D4165910();
}

void OUTLINED_FUNCTION_10_6()
{

  JUMPOUT(0x1DA6D2650);
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_1D4136A7C()
{
  OUTLINED_FUNCTION_39();
  v75 = v2;
  v76 = v1;
  v4 = v3;
  v6 = v5;
  v73 = v7;
  v84 = v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_5(v83);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13();
  (MEMORY[0x1EEE9AC00])();
  v74 = (&v71 - v11);
  v12 = sub_1D4165A20();
  OUTLINED_FUNCTION_20_3();
  v14 = sub_1D413653C(v13, v0);
  OUTLINED_FUNCTION_4_5();
  v16 = sub_1D413653C(v15, v0);
  v81 = v6;
  v82 = v4;
  v87 = v6;
  v88 = v12;
  v77 = v14;
  v78 = v12;
  v89 = v4;
  v90 = v14;
  v71 = v16;
  v91 = v16;
  OUTLINED_FUNCTION_6_0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  v17 = sub_1D4165F80();
  v18 = OUTLINED_FUNCTION_0(v17);
  v79 = v19;
  v80 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_13();
  (MEMORY[0x1EEE9AC00])();
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  (MEMORY[0x1EEE9AC00])();
  v28 = &v71 - v27;
  v29 = sub_1D41658E0();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_8();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v71 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C58, &qword_1D4168CC0);
  v42 = OUTLINED_FUNCTION_22(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_8();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v71 - v49;
  v51 = sub_1D41655E0();
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
  sub_1D41371A4(v73, v28, &qword_1EC7C4C50, &qword_1D4168CB8);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1D4137AEC(v28, &qword_1EC7C4C50, &qword_1D4168CB8);
  }

  else
  {
    (*(v32 + 32))(v40, v28, v29);
    sub_1D41658C0();
    (*(v32 + 16))(v37, v40, v29);
    sub_1D41655C0();
    (*(v32 + 8))(v40, v29);
    sub_1D4137AEC(v50, &qword_1EC7C4C58, &qword_1D4168CC0);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    sub_1D4137E44(v47, v50, &qword_1EC7C4C58, &qword_1D4168CC0);
  }

  v55 = v50;
  v72 = v50;
  v87 = v75;
  v57 = v81;
  v56 = v82;
  v58 = v77;
  v59 = v78;
  v75 = v23;
  v60 = v71;
  sub_1D4137BA4();
  sub_1D41371A4(v55, v47, &qword_1EC7C4C58, &qword_1D4168CC0);
  v61 = v74;
  *v74 = 0;
  v62 = v83;
  sub_1D41371A4(v47, v61 + *(v83 + 28), &qword_1EC7C4C58, &qword_1D4168CC0);
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  sub_1D4137AEC(v47, &qword_1EC7C4C58, &qword_1D4168CC0);
  v87 = v57;
  v88 = v59;
  v89 = v56;
  v90 = v58;
  v91 = v60;
  OUTLINED_FUNCTION_18_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  v67 = sub_1D41361D0(v64, v65, v66);
  v85 = OpaqueTypeConformance2;
  v86 = v67;
  OUTLINED_FUNCTION_10();
  v68 = v80;
  WitnessTable = swift_getWitnessTable();
  v70 = v75;
  MEMORY[0x1DA6D1980](v61, v68, v62, WitnessTable);
  sub_1D4137AEC(v61, &qword_1EC7C4BD0, &unk_1D4168A90);
  (*(v79 + 8))(v70, v68);
  sub_1D4137AEC(v72, &qword_1EC7C4C58, &qword_1D4168CC0);
  OUTLINED_FUNCTION_28();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  v0[28] = v1;
  v0[29] = v3;
  v0[30] = v4;
  v0[31] = v2;

  return sub_1D4159C10(v5 - 144, (v0 + 37));
}

uint64_t OUTLINED_FUNCTION_31()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = v6;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v8;
  a4.n128_u64[0] = v9;

  return MEMORY[0x1EEDB4040](v4 - 152, a1, a2, a3, a4);
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E19appEntityIdentifieryQr0dE00gH0VSgF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  sub_1D4165A20();
  sub_1D41371A4(v23, v29, &qword_1EC7C4C50, &qword_1D4168CB8);
  v30 = sub_1D41659F0();
  sub_1D4136A7C();

  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41371A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_1D4137224(uint64_t a1, unint64_t *a2)
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

void sub_1D4137290(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D4137320();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4137320()
{
  if (!qword_1ED9ACC90)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1D41667B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ACC90);
    }
  }
}

uint64_t sub_1D41373DC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AppViewModifier();
  OUTLINED_FUNCTION_9_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  type metadata accessor for CGRect(255);
  type metadata accessor for AppViewAnchor();
  type metadata accessor for AppViewPreferenceKey();
  OUTLINED_FUNCTION_7_3();
  swift_getWitnessTable();
  sub_1D4166370();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_1D4166BB0();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D41375E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0700](a1, WitnessTable);
}

void View.appEntity<A>(_:state:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  (*(v11 + 16))(v0, v4, v2);
  OUTLINED_FUNCTION_13_4();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_28();
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0()
{
  OUTLINED_FUNCTION_39();
  v30[5] = v0;
  v30[2] = v1;
  v30[3] = v2;
  v4 = v3;
  v6 = v5;
  v30[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = sub_1D4166AD0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v30 - v24;
  sub_1D4165A20();
  v26 = *(v17 + 16);
  v26(v25, v6, v14);
  v27 = sub_1D4165A10();
  v26(v22, v6, v14);
  if (__swift_getEnumTagSinglePayload(v22, 1, v4) == 1)
  {
    (*(v17 + 8))(v22, v14);
    v28 = 1;
  }

  else
  {
    sub_1D4165670();
    (*(*(v4 - 8) + 8))(v22, v4);
    v28 = 0;
  }

  v29 = sub_1D41658E0();
  __swift_storeEnumTagSinglePayload(v13, v28, 1, v29);
  sub_1D4136A7C();

  sub_1D4137AEC(v13, &qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41379DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D4137A28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for AppIntentIntelligenceProviderAudit();
  OUTLINED_FUNCTION_15_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C08, &qword_1D4168C28);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_3();
  sub_1D41361D0(v4, &qword_1EC7C4C08, &qword_1D4168C28);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D4137AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D4137BA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v19[2] = v10;
  v20 = v8;
  v21 = v6;
  v22 = v4;
  v23 = v2;
  v24 = v0;
  OUTLINED_FUNCTION_6_0();
  v19[1] = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0(OpaqueTypeMetadata2);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00]();
  v18 = v19 - v17;
  sub_1D4166650();
  v20 = v9;
  v21 = v7;
  v22 = v5;
  v23 = v3;
  v24 = v1;
  swift_getOpaqueTypeConformance2();
  sub_1D4137E94();
  (*(v14 + 8))(v18, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_28();
}

void View.appEntity<A>(entityType:identifier:state:)()
{
  OUTLINED_FUNCTION_39();
  v14[0] = v0;
  v2 = v1;
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v14 - v12;
  (*(*(AssociatedTypeWitness - 8) + 16))(v14 - v12, v2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6Entity_10identifierQrqd__m_2IDQyd__Sgt0dE00dG0Rd__lF_0();
  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4137E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void sub_1D4137E94()
{
  OUTLINED_FUNCTION_39();
  v19[0] = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00]();
  v11 = v19 - v10;
  v12 = type metadata accessor for AppIntentIntelligenceProviderAudit();
  OUTLINED_FUNCTION_0(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00]();
  v18 = v19 - v17;
  (*(v7 + 16))(v11, v4, v5);
  sub_1D4138354(v11, v18);
  MEMORY[0x1DA6D1980](v18, v2, v12, v19[0]);
  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_28();
}

void _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6Entity_10identifierQrqd__m_2IDQyd__Sgt0dE00dG0Rd__lF_0()
{
  OUTLINED_FUNCTION_39();
  v47 = v0;
  v45 = v2;
  v46 = v1;
  v43[2] = v4;
  v44 = v3;
  v43[0] = v5;
  v6 = *(v4 + 24);
  v43[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_8();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v43 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C50, &qword_1D4168CB8);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_8();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v43 - v36;
  v38 = sub_1D41658E0();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  (*(v11 + 16))(v16, v44, v9);
  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v16, v9);
  }

  else
  {
    (*(v18 + 32))(v27, v16, AssociatedTypeWitness);
    (*(v18 + 16))(v24, v27, AssociatedTypeWitness);
    sub_1D41658D0();
    (*(v18 + 8))(v27, AssociatedTypeWitness);
    sub_1D4137AEC(v37, &qword_1EC7C4C50, &qword_1D4168CB8);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
    sub_1D4137E44(v34, v37, &qword_1EC7C4C50, &qword_1D4168CB8);
  }

  sub_1D4165A20();
  sub_1D41371A4(v37, v34, &qword_1EC7C4C50, &qword_1D4168CB8);
  v42 = sub_1D41659F0();
  sub_1D4136A7C();

  sub_1D4137AEC(v37, &qword_1EC7C4C50, &qword_1D4168CB8);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4138354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D4166AD0();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_getWitnessTable();
}

uint64_t sub_1D41383FC()
{
  result = sub_1D41384A0();
  qword_1ED9AD4A0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  v2 = *(v1 - 152);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  v5 = *(v4 - 184);
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  v6 = *(v3 + 32);
  return a1 + v2;
}

id OUTLINED_FUNCTION_2_7@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v5;
  v1[4] = v7;

  return v7;
}

uint64_t sub_1D41384A0()
{
  type metadata accessor for AppSwiftUIBridge();
  v0 = swift_allocObject();
  sub_1D4165720();
  sub_1D4165700();
  sub_1D4138620(&qword_1ED9ACD70, v1, type metadata accessor for AppSwiftUIBridge);

  sub_1D4165710();

  if (qword_1ED9ACCE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D4165D70();
  __swift_project_value_buffer(v2, qword_1ED9AD488);
  v3 = sub_1D4165D50();
  v4 = sub_1D4166A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4134000, v3, v4, "Instantiated AppSwiftUIBridge", v5, 2u);
    MEMORY[0x1DA6D2650](v5, -1, -1);
  }

  return v0;
}

uint64_t sub_1D4138620(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D413867C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_1D4165D70();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_1D4166970();
    result = *MEMORY[0x1E69AC200];
    if (*MEMORY[0x1E69AC200])
    {
      sub_1D4166970();
      return sub_1D4165D60();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D41387C8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v22 = v3;
  OUTLINED_FUNCTION_15_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  sub_1D4166320();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C08, &qword_1D4168C28);
  v4 = sub_1D4165F80();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v23 = *(v2 + 16);
  v24 = *(v2 + 32);
  v25 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C10, &qword_1D4168C30);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D41389D4();
  sub_1D4166840();
  sub_1D4166670();
  OUTLINED_FUNCTION_19_3();
  v18 = sub_1D41361D0(v17, &qword_1EC7C4C08, &qword_1D4168C28);
  v26 = WitnessTable;
  v27 = v18;
  OUTLINED_FUNCTION_10();
  swift_getWitnessTable();
  v19 = *(v7 + 16);
  v19(v15, v12, v4);
  v20 = *(v7 + 8);
  v20(v12, v4);
  v19(v22, v15, v4);
  v20(v15, v4);
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D41389D4()
{
  result = qword_1ED9ACCA8;
  if (!qword_1ED9ACCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C10, &qword_1D4168C30);
    sub_1D4160434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCA8);
  }

  return result;
}

unint64_t sub_1D4138A58()
{
  result = qword_1ED9ACCB8;
  if (!qword_1ED9ACCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C20, &qword_1D4168C40);
    sub_1D4138B10();
    sub_1D41361D0(&qword_1ED9ACCD8, &qword_1EC7C4A88, &qword_1D4168690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCB8);
  }

  return result;
}

unint64_t sub_1D4138B10()
{
  result = qword_1ED9ACCC0;
  if (!qword_1ED9ACCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C28, &qword_1D4168C48);
    sub_1D41604C0();
    sub_1D41361D0(&qword_1ED9ACC98, &qword_1EC7C4C48, &unk_1D4168C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCC0);
  }

  return result;
}

unint64_t sub_1D4138BC8()
{
  result = qword_1ED9ACCD0;
  if (!qword_1ED9ACCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C38, &qword_1D4168C58);
    sub_1D41361D0(&qword_1ED9ACF28, &unk_1EC7C4820, &qword_1D4168C60);
    sub_1D41361D0(qword_1ED9ACF30, &qword_1EC7C4C40, &qword_1D4168C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCD0);
  }

  return result;
}

uint64_t sub_1D4138CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C18, &qword_1D4168C38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = sub_1D4166AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = [objc_opt_self() isInternalInstall];
  if (qword_1ED9ACD80 != -1)
  {
    swift_once();
  }

  v16 = byte_1ED9ACBF8;
  (*(v11 + 16))(v14, a1, v10);
  v17 = 1;
  v18 = __swift_getEnumTagSinglePayload(v14, 1, a2) != 1;
  (*(v11 + 8))(v14, v10);
  if ((v18 & v15) == 1 && v16 != 0)
  {
    sub_1D4166280();
    sub_1D4166710();
    v20 = sub_1D41664E0();
    KeyPath = swift_getKeyPath();
    v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C38, &qword_1D4168C58) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    LOBYTE(v20) = sub_1D41663B0();
    v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C30, &qword_1D4168C50) + 36)];
    *v23 = v20;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    v23[40] = 1;
    v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C28, &qword_1D4168C48) + 36)];
    sub_1D4166830();
    v25 = sub_1D41663B0();
    v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C48, &unk_1D4168C70) + 36)] = v25;
    v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C20, &qword_1D4168C40) + 36)];
    v27 = *(sub_1D4165FF0() + 20);
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1D4166290();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #8.0 }

    *v26 = _Q0;
    *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A88, &qword_1D4168690) + 36)] = 256;
    v34 = &v9[*(v6 + 36)];
    *v34 = 0;
    *(v34 + 4) = 257;
    sub_1D4137E44(v9, a3, &qword_1EC7C4C18, &qword_1D4168C38);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v17, 1, v6);
}

uint64_t sub_1D4139058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166130();
  *a1 = result;
  return result;
}

uint64_t sub_1D4139088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1D4138CAC(v1[5], v1[2], a1);
}

uint64_t sub_1D4139094()
{
  result = sub_1D41390B8();
  byte_1ED9ACBF8 = result & 1;
  return result;
}

uint64_t sub_1D41390B8()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = *MEMORY[0x1E696A400];
  v3 = sub_1D4166910();
  v5 = sub_1D4139228(0xD00000000000002ELL, 0x80000001D416CC60, v3, v4, v1);

  if (v5)
  {
    sub_1D4166AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1D4137AEC(v14, &qword_1EC7C4B18, &qword_1D4168CB0);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = v11;
LABEL_9:
  v7 = [v0 standardUserDefaults];
  v8 = sub_1D41668E0();
  v9 = [v7 BOOLForKey_];

  return (v6 | v9) & 1;
}

id sub_1D4139228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D41668E0();
  v7 = sub_1D41668E0();

  v8 = [a5 objectForKey:v6 inDomain:v7];

  return v8;
}

uint64_t sub_1D41392A8(uint64_t a1, int a2)
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

uint64_t sub_1D41392C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D4139398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D41658F0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D4139420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D41658F0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D41394C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166060();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D41394FC()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D413957C()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1D4166360();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1D4139684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1D4166360();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D4139724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  OUTLINED_FUNCTION_0_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4139788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D41397F4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2(a1, *(v1 + 24));
  v3 = *(v2 + 64);
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 64) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1D4139874(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[5];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D41398D8()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1D41399DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for SuggestedIntent();
  sub_1D4165F80();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D4139AB0()
{
  v1 = sub_1D4165A60();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139B6C()
{
  v3 = *(v0 + 4);
  v2 = *(v0 + 5);
  OUTLINED_FUNCTION_10_3();
  v4 = type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_9_3(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14(v3);
  (*(v11 + 8))(&v0[v7], v3);
  v12 = &v0[v7 + *(v1 + 44)];
  v13 = sub_1D4165A60();
  if (!OUTLINED_FUNCTION_11_3(v13))
  {
    OUTLINED_FUNCTION_14(v1);
    (*(v14 + 8))(v12, v1);
  }

  v15 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300) + 28)];

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1D4139CA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  sub_1D4166320();
  sub_1D4165F80();
  sub_1D4165F80();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D4139D98()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D4139E2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139E64()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4139F28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139F60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4139F9C()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.attributeSet.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4139FD0()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.searchString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D413A004()
{
  sub_1D41599DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D413A050(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AE8, &qword_1D4168810);
  sub_1D4165F80();
  sub_1D41361D0(&qword_1EC7C4AF0, &qword_1EC7C4AE8, &qword_1D4168810);
  return swift_getWitnessTable();
}

uint64_t sub_1D413A148(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_1D4165A20();
  OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  sub_1D41361D0(v3, &qword_1EC7C4BB8, &unk_1D4168A80);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  sub_1D41361D0(v4, &qword_1EC7C4BD0, &unk_1D4168A90);
  return swift_getWitnessTable();
}

uint64_t sub_1D413A2E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_1D4165A20();
  OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  sub_1D4165F80();
  sub_1D4165F80();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  sub_1D41361D0(v3, &qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_10_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  sub_1D41361D0(v4, &qword_1EC7C4BC0, &unk_1D4168CD0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D413A50C()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_10_3();
  v2 = type metadata accessor for AppViewModifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = v0 + *(v2 + 28);
  if (!__swift_getEnumTagSinglePayload(v7 + v5, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v7 + v5, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D413A600(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  sub_1D4165A20();
  OUTLINED_FUNCTION_21_3();
  sub_1D413653C(v4, v1);
  OUTLINED_FUNCTION_4_5();
  sub_1D413653C(v5, v1);
  OUTLINED_FUNCTION_10_9();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v6, &qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_13_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_4();
  sub_1D41361D0(v7, &qword_1EC7C4BD0, &unk_1D4168A90);
  return OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1D413A758(uint64_t *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  sub_1D4165AF0();
  OUTLINED_FUNCTION_22_2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D413A7C4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  sub_1D4165AB0();
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v4, v1);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v5, v1);
  OUTLINED_FUNCTION_11_7();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v6, &qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D413A8D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  sub_1D4165A20();
  OUTLINED_FUNCTION_21_3();
  sub_1D413653C(v4, v1);
  OUTLINED_FUNCTION_4_5();
  sub_1D413653C(v5, v1);
  OUTLINED_FUNCTION_10_9();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v6, &qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_13_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_4();
  sub_1D41361D0(v7, &qword_1EC7C4BD0, &unk_1D4168A90);
  return OUTLINED_FUNCTION_34_2();
}

uint64_t sub_1D413AA2C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  sub_1D4165AB0();
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v4, v1);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v5, v1);
  OUTLINED_FUNCTION_11_7();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_12_5();
  sub_1D4165F80();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_0_8();
  sub_1D41361D0(v6, &qword_1EC7C4BF8, &unk_1D4168B90);
  OUTLINED_FUNCTION_10();
  return swift_getWitnessTable();
}

uint64_t sub_1D413AB7C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D413ABFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1D4164188(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  if (*(v0 + 88))
  {
    v2 = *(v0 + 80);

    v3 = *(v0 + 88);
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  if (*(v0 + 128))
  {
    v6 = *(v0 + 136);
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1D413AC84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D00, &qword_1D4168F38);
  sub_1D4165F80();
  sub_1D41361D0(&qword_1EC7C4D08, &qword_1EC7C4D00, &qword_1D4168F38);
  return swift_getWitnessTable();
}

uint64_t sub_1D413AD30()
{
  sub_1D4164188(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  if (*(v0 + 112))
  {
    v5 = *(v0 + 120);
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D413ADAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166090();
  *a1 = result;
  return result;
}

uint64_t IntentParameter.requestConfirmation<A>(for:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v8 = *(v7 - 8);
  *(v0 + 72) = v8;
  v9 = *(v8 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v10);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_19();
  v9 = sub_1D41659A0();
  v0[9] = v9;
  OUTLINED_FUNCTION_24(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v16 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1D413AE84()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  (*(v0 + 32))();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_13_0();

  return IntentParameter.requestConfirmation<A>(for:dialog:view:)();
}

uint64_t sub_1D413AF1C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = v2[11];
  *v4 = *v1;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_30();
  (*(v2[9] + 8))(*(v6 + 80), v2[6]);
  if (!v0)
  {

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D413B09C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_23();
  v3 = *(v0 + 96);

  return v2(0);
}

uint64_t sub_1D413B20C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v8 = OUTLINED_FUNCTION_12(v0[12]);
  v9(v8);
  v0[14] = OUTLINED_FUNCTION_26();
  sub_1D413B5AC();
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  v15 = *(MEMORY[0x1E695A180] + 4);
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_1D413B324;
  v18 = v0[7];
  v17 = v0[8];
  v19 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEDB3400](v19);
}

uint64_t sub_1D413B324()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v3 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_30();
  v7 = *(v6 + 64);
  if (!v0)
  {
    *(v3 + 136) = v1 & 1;
  }

  sub_1D413B600(v7);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D413B44C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);

  OUTLINED_FUNCTION_23();
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_25();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D413B4D8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);

  OUTLINED_FUNCTION_23();
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_25();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
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

unint64_t sub_1D413B5AC()
{
  result = qword_1EC7C4448;
  if (!qword_1EC7C4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4448);
  }

  return result;
}

uint64_t sub_1D413B600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentParameter.requestValue<A>(_:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v8 = *(v7 - 8);
  *(v0 + 72) = v8;
  v9 = *(v8 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v10);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_19();
  v9 = sub_1D41659A0();
  v0[9] = v9;
  OUTLINED_FUNCTION_24(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v16 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1D413B708()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  (*(v0 + 32))();
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  *(v0 + 88) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_31();

  return IntentParameter.requestValue<A>(_:view:)();
}

uint64_t sub_1D413B7A0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[6];
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  *(v3 + 96) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v18 = *(v3 + 80);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D413B920()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1D413BA8C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  v8 = OUTLINED_FUNCTION_12(v0[12]);
  v9(v8);
  v0[14] = OUTLINED_FUNCTION_26();
  sub_1D413B5AC();
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  v15 = *(MEMORY[0x1E695A160] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  v0[15] = v16;
  *v16 = v17;
  v16[1] = sub_1D413BBA4;
  v19 = v0[7];
  v18 = v0[8];
  v20 = OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEDB3398](v20);
}

uint64_t sub_1D413BBA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 128) = v0;

  sub_1D413B600(v6);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D413BCBC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_3();
  v1(v0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_25();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D413BD44()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_25();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t IntentParameter.needsValueError<A>(_:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13();
  IntentParameter.needsValueError<A>(_:view:)();
  return (*(v6 + 8))(v12, a4);
}

void IntentParameter.needsValueError<A>(_:view:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_2();
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  (*(v24 + 16))(v23 - v22, v3, v1);
  v25 = sub_1D4166800();
  v26[4] = MEMORY[0x1E6981910];
  v26[5] = sub_1D413B5AC();
  v26[1] = v25;

  sub_1D4165990();
  (*(v12 + 16))(v9, v18, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_1D4165890();

  sub_1D413B600(v9);
  (*(v12 + 8))(v18, v10);
  OUTLINED_FUNCTION_28();
}

uint64_t IntentParameterContext.requestConfirmation<A>(for:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(v1, v2, v3, v4, v5, v6, v7);
  *(v0 + 80) = v8;
  v10 = *(v9 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_19();
  v10 = sub_1D41659A0();
  v0[10] = v10;
  OUTLINED_FUNCTION_24(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[13] = v14;
  v16 = *(v15 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  v17 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1D413C170()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 32))();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_33_0(v3);
  OUTLINED_FUNCTION_13_0();

  return IntentParameterContext.requestConfirmation<A>(for:dialog:view:)();
}

uint64_t sub_1D413C208()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = v2[12];
  *v4 = *v1;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_30();
  (*(v2[10] + 8))(*(v6 + 88), v2[7]);
  if (!v0)
  {

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D413C388()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_23();
  v3 = *(v0 + 104);

  return v2(0);
}

uint64_t sub_1D413C4FC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  v8 = OUTLINED_FUNCTION_12(v0[13]);
  v9(v8);
  v0[15] = OUTLINED_FUNCTION_26();
  sub_1D413B5AC();
  OUTLINED_FUNCTION_27();
  sub_1D4165990();
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  v15 = *(MEMORY[0x1E695A480] + 4);
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_1D413C618;
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[5];
  v20 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEDB3BB0](v20);
}

uint64_t sub_1D413C618()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v3 + 128);
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_30();
  v7 = *(v6 + 72);
  if (!v0)
  {
    *(v3 + 144) = v1 & 1;
  }

  sub_1D413B600(v7);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D413C740()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  v7 = OUTLINED_FUNCTION_3();
  v8(v7);

  OUTLINED_FUNCTION_23();
  v9 = *(v0 + 144);
  OUTLINED_FUNCTION_25();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D413C7D8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = OUTLINED_FUNCTION_3();
  v8(v7);

  OUTLINED_FUNCTION_23();
  v9 = v0[17];
  OUTLINED_FUNCTION_25();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t IntentParameterContext.requestValue<A>(dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(v1, v2, v3, v4, v5, v6, v7);
  *(v0 + 80) = v8;
  v10 = *(v9 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5_0(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_0();
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_19();
  v13 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

uint64_t sub_1D413C904()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 32))();
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_33_0(v3);
  OUTLINED_FUNCTION_31();

  return IntentParameterContext.requestValue<A>(dialog:view:)();
}

uint64_t sub_1D413C99C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[7];
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  *(v3 + 104) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v18 = *(v3 + 88);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_25();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D413CB1C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1D413CC40()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OUTLINED_FUNCTION_12(v0[10]);
  v6(v5);
  v0[12] = sub_1D4166800();
  sub_1D413B5AC();

  sub_1D4165990();
  v7 = sub_1D41659A0();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  v8 = *(MEMORY[0x1E695A478] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_32();
  v0[13] = v9;
  *v9 = v10;
  v9[1] = sub_1D413CD68;
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[5];
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEDB3BA0](v14);
}

uint64_t sub_1D413CD68()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 112) = v0;

  sub_1D413B600(v6);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D413CE80()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_1D413CEF0()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_17();
  v5 = v0[14];

  return v4();
}

void IntentParameterContext.needsValueError<A>(_:view:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10();
  IntentParameterContext.needsValueError<A>(_:view:)();
  (*(v3 + 8))(v9, v1);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v30[1] = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_2();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  (*(v25 + 16))(v24 - v23, v4, v2);
  v26 = sub_1D4166800();
  v30[6] = MEMORY[0x1E6981910];
  v30[7] = sub_1D413B5AC();
  v30[3] = v26;

  sub_1D4165990();
  (*(v13 + 16))(v10, v19, v11);
  v27 = OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  sub_1D41659D0();

  sub_1D413B600(v10);
  (*(v13 + 8))(v19, v11);
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D413D268()
{
  result = qword_1EC7C4450;
  if (!qword_1EC7C4450)
  {
    sub_1D4165F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4450);
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

uint64_t sub_1D413D2D8(uint64_t a1, int a2)
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

uint64_t sub_1D413D2F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D413D324()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D4165CD0();
}

uint64_t sub_1D413D370()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D4165CC0();
}

uint64_t sub_1D413D3C8()
{
  sub_1D4166CD0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D4165CC0();
  return sub_1D4166CF0();
}

uint64_t sub_1D413D440(uint64_t a1, id *a2)
{
  result = sub_1D41668F0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D413D4BC(uint64_t a1, id *a2)
{
  v3 = sub_1D4166900();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D413D53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D413D564();
  *a1 = result;
  return result;
}

uint64_t sub_1D413D564()
{
  sub_1D4166910();
  v0 = sub_1D41668E0();

  return v0;
}

uint64_t sub_1D413D5A4()
{
  v0 = sub_1D4166910();
  v1 = MEMORY[0x1DA6D1C90](v0);

  return v1;
}

uint64_t sub_1D413D5E4()
{
  sub_1D4166910();
  sub_1D4166950();
}

uint64_t sub_1D413D640()
{
  sub_1D4166910();
  sub_1D4166CD0();
  sub_1D4166950();
  v0 = sub_1D4166CF0();

  return v0;
}

uint64_t sub_1D413D6B4()
{
  v0 = sub_1D4166910();
  v2 = v1;
  if (v0 == sub_1D4166910() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D4166C20();
  }

  return v5 & 1;
}

uint64_t sub_1D413D738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D4165CB0();
}

uint64_t sub_1D413D7A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D413D6B4();
}

uint64_t sub_1D413D7B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D41668E0();

  *a2 = v5;
  return result;
}

uint64_t sub_1D413D7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D413D824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D413D828(uint64_t a1)
{
  v2 = sub_1D413D92C(&qword_1EC7C4490, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1D413D92C(&qword_1EC7C4498, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D413D92C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  v9 = *(a6 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return sub_1D4166800();
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[11];
  v4 = v2[8];
  v5 = v2[9];
  v6 = v2[6];
  v7 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[10];
  v4 = v2[7];
  v5 = v2[8];
  v6 = v2[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_37(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

void sub_1D413DBE4()
{
  OUTLINED_FUNCTION_39();
  v29 = v2;
  v30 = v1;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v8 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = *(v15 + 16);
  v22(&v29 - v23, v6, v4);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v30, v8);
    (*(v15 + 8))(v6, v4);
    v24 = 1;
    v25 = v31;
  }

  else
  {
    v22(v21, v6, v4);
    v26 = sub_1D4166800();
    v33 = MEMORY[0x1E6981910];
    v34 = sub_1D413B5AC();
    v32 = v26;
    v27 = v30;
    (*(v10 + 16))(v0, v30, v8);
    v25 = v31;
    sub_1D4165980();
    (*(v10 + 8))(v27, v8);
    (*(v15 + 8))(v6, v4);
    v24 = 0;
  }

  v28 = sub_1D41659A0();
  __swift_storeEnumTagSinglePayload(v25, v24, 1, v28);
  OUTLINED_FUNCTION_28();
}

uint64_t IntentView.init(options:view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D4165910();
  OUTLINED_FUNCTION_5(v8);
  (*(v9 + 32))(a4, a1);
  OUTLINED_FUNCTION_31_0();
  v10 = type metadata accessor for IntentView();
  v11 = *(*(a3 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t IntentView.init(options:view:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v12 = v7;
  (*(v8 + 16))(a3, a1, v6);
  OUTLINED_FUNCTION_31_0();
  v9 = a3 + *(type metadata accessor for IntentView() + 36);
  a2();
  v10 = *(v12 + 8);

  return v10(a1, v6);
}

void sub_1D413E030(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_44();
  v5 = sub_1D4165910();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *(a1 + 16);
  OUTLINED_FUNCTION_2();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  (*(v18 + 16))(v2, v3 + *(a1 + 36), v14);
  (*(v7 + 16))(v13, v3, v5);
  v19 = *(a1 + 24);
  sub_1D413DBE4();
}

void static IntentResult.result<A>(view:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D41659B0();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_1();
  v13 = sub_1D4165910();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_0_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_33_1();
  (*(v18 + 16))(v0, v4, v2);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_37_0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_29_0();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

unint64_t sub_1D413E3E4()
{
  result = qword_1EC7C44C0;
  if (!qword_1EC7C44C0)
  {
    sub_1D41659B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44C0);
  }

  return result;
}

unint64_t sub_1D413E43C()
{
  result = qword_1EC7C44D0;
  if (!qword_1EC7C44D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C44C8, &qword_1D4167940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44D0);
  }

  return result;
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

unint64_t sub_1D413E4E8()
{
  result = qword_1EC7C44D8;
  if (!qword_1EC7C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44D8);
  }

  return result;
}

unint64_t sub_1D413E53C()
{
  result = qword_1EC7C44E0;
  if (!qword_1EC7C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C44E0);
  }

  return result;
}

uint64_t static IntentResult.result<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12();
  static IntentResult.result<A>(view:)();
  return (*(v5 + 8))(v11, a3);
}

void static IntentResult.result<A, B>(value:view:)()
{
  OUTLINED_FUNCTION_39();
  v46[1] = v2;
  v46[2] = v1;
  v4 = v3;
  v6 = v5;
  v46[0] = v7;
  v9 = v8;
  v46[3] = v10;
  v11 = sub_1D41659B0();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_1();
  v19 = sub_1D4165910();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_11_0();
  v32 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v46 - v36;
  OUTLINED_FUNCTION_8_1();
  (*(v38 + 16))(v37, v9, v6);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v6);
  v47 = 1;
  (*(v24 + 16))(v0, v46[0], v4);
  sub_1D4165900();
  OUTLINED_FUNCTION_47();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41(v42, v43, v44, v45);
  sub_1D413E53C();
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v86 = v24;
  v87 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v83 = v32;
  v84 = v33;
  v88 = v34;
  v81 = v35;
  v82 = a21;
  v36 = sub_1D41659B0();
  v37 = OUTLINED_FUNCTION_22(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v85 = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v45);
  v46 = sub_1D4165910();
  v47 = OUTLINED_FUNCTION_22(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2();
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_0_1();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  v80[1] = v80 - v59;
  OUTLINED_FUNCTION_31_0();
  v60 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_7_1();
  v64 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_1();
  (*(v68 + 16))(v22, v81, v31);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v31);
  OUTLINED_FUNCTION_14(v29);
  (*(v72 + 16))(v21, v83, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v29);
  (*(v51 + 16))(v23, v84, v27);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41(v76, v77, v78, v79);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v74 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v73 = v30;
  v31 = sub_1D41659B0();
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6_1();
  v39 = sub_1D4165910();
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_16_1();
  v56 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_8_1();
  (*(v60 + 16))(v21, v73, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v29);
  v75[3] = v25;
  v75[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_14(v25);
  (*(v64 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  (*(v44 + 16))(v22, v74, v27);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41(v69, v70, v71, v72);
  sub_1D413E53C();
  OUTLINED_FUNCTION_36();
  sub_1D413F020();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D413F020()
{
  OUTLINED_FUNCTION_44();
  sub_1D41659B0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  return sub_1D4166B00();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = v10;
  v59 = v11;
  v56 = v12;
  v57 = v13;
  v14 = sub_1D41659B0();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30_0();
  v22 = sub_1D4165910();
  v23 = OUTLINED_FUNCTION_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31_0();
  v35 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10_0();
  v39 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_1();
  (*(v43 + 16))(v1, v56, v9);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v9);
  OUTLINED_FUNCTION_14(v7);
  (*(v47 + 16))(v3, v58, v7);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v7);
  (*(v27 + 16))(v0, v59, v5);
  sub_1D4165900();
  sub_1D413DBE4();
  v51 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v51);
  (*(v52 + 16))(v2, v57, v51);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v53, v54, v55, v51);
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v78 = v31;
  v79 = v32;
  v77 = v33;
  v34 = sub_1D41659B0();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_1();
  v42 = sub_1D4165910();
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1_0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_11_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_10_0();
  v59 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_8_1();
  (*(v63 + 16))(v22, v77, v30);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v30);
  v80[3] = v26;
  v80[4] = a22;
  __swift_allocate_boxed_opaque_existential_1(v80);
  OUTLINED_FUNCTION_14(v26);
  (*(v67 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  (*(v47 + 16))(v24, v79, v28);
  sub_1D4165900();
  sub_1D413DBE4();
  v72 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v72);
  (*(v73 + 16))(v23, v78, v72);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v74, v75, v76, v72);
  sub_1D413E53C();
  sub_1D413F020();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B, C>(value:opensIntent:dialog:content:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_1();
  v8();
  OUTLINED_FUNCTION_17_0();
  static IntentResult.result<A, B, C>(value:opensIntent:dialog:view:)();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(value:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_32_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  v17 = sub_1D4165910();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_0();
  v28 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_1();
  (*(v32 + 16))(v3, v1, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v0);
  v36 = OUTLINED_FUNCTION_46();
  v37(v36);
  sub_1D4165900();
  OUTLINED_FUNCTION_40();
  v38 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v38);
  (*(v39 + 16))(v2, v43, v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v40, v41, v42, v38);
  sub_1D413E53C();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void sub_1D413FE14()
{
  OUTLINED_FUNCTION_39();
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v46 = v8;
  v10 = v9;
  v11 = sub_1D41659B0();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_1();
  v19 = sub_1D4165910();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_0_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_0();
  v32 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14(v7);
  (*(v36 + 16))(v1, v10, v7);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v7);
  (*(v24 + 16))(v2, v45, v5);
  sub_1D4165900();
  sub_1D413DBE4();
  v40 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v40);
  (*(v41 + 16))(v0, v46, v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v42, v43, v44, v40);
  sub_1D413E53C();
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();

  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:view:)()
{
  OUTLINED_FUNCTION_39();
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v8 = sub_1D41659B0();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_1();
  v16 = sub_1D4165910();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31_0();
  v29 = sub_1D4166AD0();
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_14(v6);
  (*(v33 + 16))(v0, v41, v6);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v6);
  (*(v21 + 16))(v1, v42, v4);
  sub_1D4165900();
  OUTLINED_FUNCTION_47();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_41(v37, v38, v39, v40);
  sub_1D413E4E8();
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v41 = v1;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D41659B0();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_1();
  v15 = sub_1D4165910();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_0_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_33_1();
  v43[3] = v4;
  v43[4] = v41;
  __swift_allocate_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_14(v4);
  (*(v32 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  (*(v20 + 16))(v0, v42, v6);
  sub_1D4165900();
  sub_1D413DBE4();
  sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_29_0();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:content:)()
{
  sub_1D41406EC();
}

{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v8();
  static IntentResult.result<A, B>(opensIntent:view:)();
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_28();
}

void sub_1D41406EC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v9();
  OUTLINED_FUNCTION_38_0();
  v3();
  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_32_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  v17 = sub_1D4165910();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_2();
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_0();
  v28 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_8_1();
  (*(v32 + 16))(v3, v1, v0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v0);
  v36 = OUTLINED_FUNCTION_46();
  v37(v36);
  sub_1D4165900();
  OUTLINED_FUNCTION_40();
  v38 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v38);
  (*(v39 + 16))(v2, v43, v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_41(v40, v41, v42, v38);
  sub_1D413E4E8();
  OUTLINED_FUNCTION_12_0();
  sub_1D413F020();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v48 = v7;
  v8 = sub_1D41659B0();
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_1();
  v16 = sub_1D4165910();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_10_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7C44E8, &qword_1D4167948);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_0();
  v50 = 1;
  v49[3] = v4;
  v49[4] = v46;
  __swift_allocate_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_8_1();
  (*(v36 + 16))();
  sub_1D41658B0();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  (*(v21 + 16))(v27, v47, v6);
  sub_1D4165900();
  sub_1D413DBE4();
  v41 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v41);
  (*(v42 + 16))(v0, v48, v41);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_29_0();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165960();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

void sub_1D4140EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_0();
  v28();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_38_0();
  a21();
  (*(v24 + 8))(v22, v21);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A, B>(opensIntent:dialog:content:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  v7();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_38_0();
  static IntentResult.result<A, B>(opensIntent:dialog:view:)();
  (*(v3 + 8))(v1, v0);
  OUTLINED_FUNCTION_28();
}

void static IntentResult.result<A>(dialog:view:)()
{
  OUTLINED_FUNCTION_39();
  v31 = v1;
  v2 = sub_1D41659B0();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_1();
  v10 = sub_1D4165910();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_42();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_33_1();
  v23 = *(v15 + 16);
  v24 = OUTLINED_FUNCTION_36();
  v25(v24);
  sub_1D4165900();
  sub_1D413DBE4();
  v26 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v26);
  (*(v27 + 16))(v0, v31, v26);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
  OUTLINED_FUNCTION_37_0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  sub_1D4166B00();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  v3 = sub_1D41659B0();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33_1();
  v15 = type metadata accessor for IntentView();
  sub_1D413E030(v15);
  v16 = sub_1D4165760();
  OUTLINED_FUNCTION_5(v16);
  (*(v17 + 16))(v0, v2, v16);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_37_0();
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_45();
  sub_1D4166B00();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_0();
  sub_1D4165970();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_28();
}

uint64_t static IntentResult.result<A>(view:)()
{
  OUTLINED_FUNCTION_44();
  v0 = sub_1D41659B0();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_1();
  v12 = type metadata accessor for IntentView();
  sub_1D413E030(v12);
  v13 = sub_1D4165760();
  OUTLINED_FUNCTION_23_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  sub_1D413E3E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44C8, &qword_1D4167940);
  sub_1D413E43C();
  OUTLINED_FUNCTION_45();
  sub_1D4166B00();
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_20_0();
  return sub_1D4165970();
}

uint64_t static IntentResult.result<A>(dialog:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_0();
  v11();
  static IntentResult.result<A>(dialog:view:)();
  return (*(v7 + 8))(v4, a4);
}

uint64_t sub_1D41417A4(uint64_t a1)
{
  result = sub_1D4165910();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D414182C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D4165910();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = (a1 + v15) & ~v12;
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1D4141A44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D4165910();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_1D4166B00();
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  *(v5 - 168) = a2;
  *(v5 - 160) = a4;
  *(v5 - 152) = a1;
  *(v5 - 144) = a3;
  *(v5 - 136) = a5;

  return sub_1D41659B0();
}

double OUTLINED_FUNCTION_37_0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return sub_1D4166AD0();
}

void OUTLINED_FUNCTION_40()
{
  v2 = *(v0 - 160);

  sub_1D413DBE4();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return sub_1D41659A0();
}

uint64_t OUTLINED_FUNCTION_46()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 168);
  return result;
}

id sub_1D4141EB8()
{
  result = [objc_allocWithZone(MEMORY[0x1E6964E90]) init];
  qword_1EC7C4398 = result;
  return result;
}

id static CSSearchableItemAttributeSetKey.defaultValue.getter()
{
  if (qword_1EC7C4390 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7C4398;

  return v1;
}

id sub_1D4141F48@<X0>(void *a1@<X8>)
{
  result = static CSSearchableItemAttributeSetKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D4141F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D41439C8(&qword_1EC7C4598, sub_1D4143A10);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t DisplayLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](v1);
  return sub_1D4166CF0();
}

uint64_t sub_1D4142098()
{
  v1 = *v0;
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](v1);
  return sub_1D4166CF0();
}

uint64_t sub_1D4142110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4142780();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.attributeSet.getter()
{
  sub_1D41421B0();
  sub_1D4166180();
  return v1;
}

unint64_t sub_1D41421B0()
{
  result = qword_1EC7C4388;
  if (!qword_1EC7C4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4388);
  }

  return result;
}

void (*EnvironmentValues.attributeSet.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D41421B0();
  sub_1D4166180();
  return sub_1D41422A0;
}

void sub_1D41422A0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    OUTLINED_FUNCTION_1_1();
    v7 = *a1;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t EnvironmentValues.displayLocation.getter()
{
  sub_1D4142398();

  return sub_1D4166180();
}

unint64_t sub_1D4142398()
{
  result = qword_1EC7C43A0;
  if (!qword_1EC7C43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43A0);
  }

  return result;
}

uint64_t EnvironmentValues.displayLocation.setter(char *a1)
{
  v2 = *a1;
  sub_1D4142398();
  return sub_1D4166190();
}

uint64_t (*EnvironmentValues.displayLocation.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_1D4142398();
  sub_1D4166180();
  return sub_1D414248C;
}

uint64_t sub_1D414248C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1D4166190();
}

uint64_t EnvironmentValues.searchString.getter()
{
  sub_1D4142500();
  sub_1D4166180();
  return v1;
}

unint64_t sub_1D4142500()
{
  result = qword_1EC7C43B0;
  if (!qword_1EC7C43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43B0);
  }

  return result;
}

void (*EnvironmentValues.searchString.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1D4142500();
  sub_1D4166180();
  v4 = v3[3];
  *v3 = v3[2];
  v3[1] = v4;
  return sub_1D4142614;
}

void sub_1D4142614(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v6 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    OUTLINED_FUNCTION_1_1();
    v7 = v2[1];
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
  }

  free(v2);
}

uint64_t ViewCodableError.hashValue.getter()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

uint64_t sub_1D414273C()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

unint64_t sub_1D4142780()
{
  result = qword_1EC7C4570;
  if (!qword_1EC7C4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4570);
  }

  return result;
}

unint64_t sub_1D41427D8()
{
  result = qword_1EC7C4578;
  if (!qword_1EC7C4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4578);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayLocation(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DisplayLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D41429F4(unsigned int *a1, int a2)
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

_BYTE *sub_1D4142A44(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for SharedIndexedViewFormatDecodable()
{
  result = qword_1EC7C4370;
  if (!qword_1EC7C4370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4142B6C()
{
  result = sub_1D41658F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_1D4142C04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D4142C44(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D4142CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  result = sub_1D4166B90();
  if (v7)
  {
    v10[3] = a2;
    v11 = *(a3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    v9 = *(a2 - 8);
    (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
    sub_1D4165810();
    return (*(v9 + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4142D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1D4165850();
  v4 = OUTLINED_FUNCTION_0(v3);
  v46 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4588, &qword_1D4167CB8);
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = 0;
  v54 = 0;
  v19 = a1[3];
  v20 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D41439C8(&qword_1EC7C43C8, MEMORY[0x1E695A0C0]);
  v21 = v47;
  sub_1D4166D00();
  if (!v21)
  {
    v44 = v10;
    v47 = v16;
    v22 = v46;
    v23 = *(v46 + 104);
    v23(v12, *MEMORY[0x1E695A0B8], v3);
    sub_1D4166BD0();
    v24 = v12;
    v25 = *(v22 + 8);
    v25(v24, v3);
    v26 = v44;
    v23(v44, *MEMORY[0x1E695A0B0], v3);
    v27 = v26;
    sub_1D4166BE0();
    v29 = v28;
    v25(v27, v3);
    v30 = v47;
    if (v29)
    {
      v31 = sub_1D4166B40();

      if (v31)
      {
        v32 = dynamic_cast_existential_1_conditional(v31);
        if (v32)
        {
          v34 = v32;
          v35 = v33;
          __swift_mutable_project_boxed_opaque_existential_1(v51, v51[3]);
          v49 = v34;
          v50 = v35;
          __swift_allocate_boxed_opaque_existential_1(&v48);
          v36 = *(v35 + 8);
          sub_1D4166C10();
          v37 = *(v30 + 8);
          v38 = OUTLINED_FUNCTION_3_0();
          v39(v38);
          sub_1D4143978(&v48, v52);
          __swift_destroy_boxed_opaque_existential_1(v51);
          sub_1D4143990(v52, v45);
          __swift_destroy_boxed_opaque_existential_1(v55);
          return sub_1D4143750(v52);
        }
      }
    }

    sub_1D4143840();
    swift_allocError();
    swift_willThrow();
    v40 = *(v30 + 8);
    v41 = OUTLINED_FUNCTION_3_0();
    v42(v41);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D41431CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_1D41658F0();
  v3 = OUTLINED_FUNCTION_0(v45);
  v42 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4165B00();
  v9 = OUTLINED_FUNCTION_0(v8);
  v55 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4580, &qword_1D4167CB0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v48 = v19;
  v49 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v40 - v22;
  v24 = type metadata accessor for SharedIndexedViewFormatDecodable();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D41439C8(&qword_1EC7C43B8, MEMORY[0x1E695A6E8]);
  v47 = v23;
  v29 = v50;
  sub_1D4166D00();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v24;
  v41 = v27;
  v50 = a1;
  v30 = *(v55 + 104);
  v31 = v46;
  v30(v46, *MEMORY[0x1E695A6D8], v8);
  sub_1D41436FC();
  sub_1D4166BF0();
  v32 = *(v55 + 8);
  v55 += 8;
  v32(v31, v8);
  v33 = v52;
  v34 = v41;
  *v41 = v51;
  *(v34 + 16) = v33;
  *(v34 + 32) = v53;
  *(v34 + 48) = v54;
  v30(v15, *MEMORY[0x1E695A6E0], v8);
  sub_1D41439C8(&qword_1EC7C43C0, MEMORY[0x1E695A1F0]);
  v36 = v44;
  v35 = v45;
  sub_1D4166BF0();
  v32(v15, v8);
  v37 = OUTLINED_FUNCTION_2_4();
  v38(v37);
  (*(v42 + 32))(v34 + *(v40 + 20), v36, v35);
  sub_1D4143780(v34, v43);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1D41437E4(v34);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1D41436FC()
{
  result = qword_1EC7C43A8;
  if (!qword_1EC7C43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C43A8);
  }

  return result;
}

uint64_t sub_1D4143780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedIndexedViewFormatDecodable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D41437E4(uint64_t a1)
{
  v2 = type metadata accessor for SharedIndexedViewFormatDecodable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4143840()
{
  result = qword_1EC7C4590;
  if (!qword_1EC7C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4590);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1DA6D2650);
  }

  return result;
}

uint64_t sub_1D4143978(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D41439C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4143A10()
{
  result = qword_1EC7C45A0;
  if (!qword_1EC7C45A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7C45A0);
  }

  return result;
}

void sub_1D4143A5C()
{
  if (qword_1ED9ACCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D4165D70();
  __swift_project_value_buffer(v0, qword_1ED9AD488);
  oslog = sub_1D4165D50();
  v1 = sub_1D4166A90();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D4134000, oslog, v1, "Failed to encode Snippet View archive", v2, 2u);
    MEMORY[0x1DA6D2650](v2, -1, -1);
  }
}

uint64_t sub_1D4143B44()
{
  v1 = v0[2];

  sub_1D4137AEC(v0 + OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType, &qword_1EC7C45A8, &qword_1D4167CF8);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1D4143BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4618, &qword_1D4167E80);
  v1 = sub_1D4165D30();
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D4167CC0;
  sub_1D4165D20();
  sub_1D4165CF0();
  sub_1D4165D10();
  sub_1D4165D00();
  *(v0 + 16) = sub_1D4146AD4(v4);
  v5 = OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType;
  sub_1D4165CF0();
  __swift_storeEnumTagSinglePayload(v0 + v5, 0, 1, v1);
  return v0;
}

uint64_t sub_1D4143D68()
{
  sub_1D4166CD0();
  MEMORY[0x1DA6D1FE0](0);
  return sub_1D4166CF0();
}

uint64_t AnyView.archiveDataWithSnippetEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_1D4166020();
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_1D4166170();
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45A8, &qword_1D4167CF8);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  sub_1D4166A20();
  v3[14] = sub_1D4166A10();
  v14 = sub_1D4166A00();
  v3[15] = v14;
  v3[16] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D4143ED4, v14, v13);
}

uint64_t sub_1D4143ED4()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = type metadata accessor for AppViewArchivingDelegate();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_1D4143BC0();
  v0[17] = v6;
  v0[6] = sub_1D4166800();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45B0, &unk_1D4167D00);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v0[18] = sub_1D4166260();
  sub_1D4166230();
  sub_1D4166240();
  v10 = *(v6 + 16);

  sub_1D4166220();
  sub_1D4147124(v6 + OBJC_IVAR____TtC19_AppIntents_SwiftUIP33_8EF1C795494728D1541BB13B3B95327124AppViewArchivingDelegate_defaultImageType, v1, &qword_1EC7C45A8, &qword_1D4167CF8);
  sub_1D4166210();
  v15 = (v2 + *v2);
  v11 = v2[1];
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1D41440AC;
  v13 = v0[9];

  return v15();
}

uint64_t sub_1D41440AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D41441D4, v5, v4);
}

uint64_t sub_1D41441D4()
{
  v1 = v0[20];
  v2 = v0[14];

  if (v1)
  {
    v3 = v0[20];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = v0[18];
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[10];
      [v4 size];
      v11 = v10;
      v13 = v12;
      sub_1D4166250();
      swift_unknownObjectRetain();
      sub_1D4144514(v5);
      sub_1D41661E0();
      sub_1D4166010();
      v14 = sub_1D41661D0();
      sub_1D41660E0();
      v14(v0 + 2, 0);
      v15 = swift_task_alloc();
      v15[2] = v6;
      v15[3] = v9;
      v15[4] = v11;
      v15[5] = v13;
      v16 = sub_1D4166200();
      v18 = v0[17];
      v17 = v0[18];
      v27 = v26;
      swift_unknownObjectRelease();

      v29 = v0[12];
      v28 = v0[13];
      v30 = v0[11];

      v31 = v0[1];

      return v31(v16, v27);
    }

    swift_unknownObjectRelease();
  }

  v19 = v0[17];
  v20 = v0[18];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  sub_1D41444C0();
  swift_allocError();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t type metadata accessor for AppViewArchivingDelegate()
{
  result = qword_1EC7C45C8;
  if (!qword_1EC7C45C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D41444C0()
{
  result = qword_1EC7C45C0;
  if (!qword_1EC7C45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45C0);
  }

  return result;
}

void sub_1D4144514(void *a1)
{
  v3 = sub_1D4165DF0();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_2();
  v77 = v7;
  OUTLINED_FUNCTION_8_2();
  v8 = sub_1D41662A0();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_2();
  v76 = v12;
  OUTLINED_FUNCTION_8_2();
  v13 = sub_1D4165DD0();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_0_2();
  v75 = v17;
  OUTLINED_FUNCTION_8_2();
  v18 = sub_1D4165F70();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_2();
  v74 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4608, &qword_1D4167E70);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v29 = sub_1D4165F60();
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4610, &qword_1D4167E78);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v74 - v37;
  v39 = sub_1D4165CA0();
  v40 = OUTLINED_FUNCTION_0(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v40);
  v47 = &v74 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v74 - v48;
  sub_1D4166160();
  v50 = [a1 locale];
  if (v50)
  {
    v51 = v50;
    sub_1D4165C80();

    v52 = *(v42 + 32);
    v52(v38, v47, v39);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    v52(v49, v38, v39);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
    sub_1D4165C90();
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      sub_1D4137AEC(v38, &qword_1EC7C4610, &qword_1D4167E78);
    }
  }

  OUTLINED_FUNCTION_15_1();
  sub_1D4166150();
  sub_1D41468C8(v1);
  sub_1D4166080();
  OUTLINED_FUNCTION_11_1();
  sub_1D414695C(v53, v54, v55, v56, v28);
  v57 = sub_1D4165F90();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v57);
  sub_1D41660C0();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_17_1(v58, v59, v60, v61);
  OUTLINED_FUNCTION_15_1();
  sub_1D41660B0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_17_1(v62, v63, v64, v65);
  OUTLINED_FUNCTION_15_1();
  sub_1D4166030();
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_17_1(v66, v67, v68, v69);
  OUTLINED_FUNCTION_15_1();
  sub_1D41660D0();
  [a1 displayScale];
  sub_1D4166050();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_17_1(v70, v71, v72, v73);
  OUTLINED_FUNCTION_15_1();
  sub_1D4166040();
  [a1 accessibilityDifferentiateWithoutColor];
  sub_1D4166120();
  [a1 accessibilityInvertColors];
  sub_1D41660F0();
  [a1 accessibilityReduceMotion];
  sub_1D4166100();
  [a1 accessibilityReduceTransparency];
  sub_1D4166110();
}

uint64_t sub_1D41449CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45E8, &qword_1D4167E60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C45F0, &qword_1D4167E68);
  sub_1D41469F4();
  sub_1D4166610();
  swift_getOpaqueTypeConformance2();
  sub_1D4166800();
  sub_1D4166270();
  sub_1D41661F0();
  return sub_1D4166250();
}

uint64_t sub_1D4144B0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1D41449CC();
}

uint64_t sub_1D4144B18(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4144BC4;

  return AnyView.archiveDataWithSnippetEnvironment(_:)(a1, a2, v6);
}

uint64_t sub_1D4144BC4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

void sub_1D4144CDC()
{
  sub_1D4144D7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D4144D7C()
{
  if (!qword_1EC7C45D8)
  {
    sub_1D4165D30();
    v0 = sub_1D4166AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7C45D8);
    }
  }
}

_BYTE *sub_1D4144DD4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D4144E80()
{
  result = qword_1EC7C45E0;
  if (!qword_1EC7C45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45E0);
  }

  return result;
}

uint64_t sub_1D4144ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4638, &qword_1D4167EF8);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v57 - v8;
  v10 = sub_1D4165FF0();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4640, &qword_1D4167F00);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4648, &qword_1D4167F08);
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v57 - v26;
  if (qword_1EC7C43D0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    KeyPath = swift_getKeyPath();
    v57[1] = v4;
    v29 = KeyPath;
    v30 = sub_1D4146F24();
    v57[0] = v20;
    v31 = v30;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4650, &qword_1D4167F10);
    OUTLINED_FUNCTION_5(v58);
    (*(v32 + 16))(v19, v59);
    v33 = &v19[*(v14 + 36)];
    *v33 = v29;
    *(v33 + 1) = &unk_1F4F854D8;
    *(v33 + 2) = v31;
    v59 = a2;
    v34 = *(v10 + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1D4166290();
    OUTLINED_FUNCTION_5(v36);
    (*(v37 + 104))(&v2[v34], v35);
    __asm { FMOV            V0.2D, #27.0 }

    *v2 = _Q0;
    v43 = sub_1D4146E40();
    OUTLINED_FUNCTION_5_1();
    v46 = sub_1D4147238(v44, v45);
    sub_1D41665F0();
    sub_1D4146F78(v2);
    sub_1D4137AEC(v19, &qword_1EC7C4640, &qword_1D4167F00);
    v47 = v57[0];
    (*(v22 + 16))(v9, v27, v57[0]);
    swift_storeEnumTagMultiPayload();
    v60 = v14;
    v61 = v10;
    v62 = v43;
    v63 = v46;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_4_0();
    sub_1D41361D0(v48, &qword_1EC7C4650, &qword_1D4167F10);
    sub_1D4166310();
    return (*(v22 + 8))(v27, v47);
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4650, &qword_1D4167F10);
    OUTLINED_FUNCTION_5(v50);
    (*(v51 + 16))(v9, v59, v50);
    swift_storeEnumTagMultiPayload();
    v52 = sub_1D4146E40();
    OUTLINED_FUNCTION_5_1();
    v55 = sub_1D4147238(v53, v54);
    v60 = v14;
    v61 = v10;
    v62 = v52;
    v63 = v55;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_4_0();
    sub_1D41361D0(v56, &qword_1EC7C4650, &qword_1D4167F10);
    return sub_1D4166310();
  }
}

uint64_t sub_1D4145338(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_1D4166070();
}

uint64_t sub_1D414536C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v122 = a5;
  v116 = a4;
  v115 = a3;
  v112 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4608, &qword_1D4167E70);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v107 - v10;
  OUTLINED_FUNCTION_8_2();
  v118 = sub_1D4165F90();
  v11 = OUTLINED_FUNCTION_0(v118);
  v108 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_2();
  v107 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4698, &qword_1D4167FE0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v107 - v20;
  OUTLINED_FUNCTION_8_2();
  v21 = sub_1D4166410();
  v22 = OUTLINED_FUNCTION_0(v21);
  v113 = v23;
  v114 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_0_2();
  v111 = v26;
  OUTLINED_FUNCTION_8_2();
  v120 = sub_1D41662B0();
  v27 = OUTLINED_FUNCTION_0(v120);
  v123 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_0_2();
  v119 = v31;
  OUTLINED_FUNCTION_8_2();
  v32 = sub_1D4166500();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v33);
  v40 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v107 - v41;
  v43 = *(v35 + 16);
  v121 = a1;
  v43(&v107 - v41, a1, v32);
  v44 = *(v35 + 88);
  v45 = v44(v42, v32);
  v46 = *MEMORY[0x1E6980EE8];
  if (v45 == *MEMORY[0x1E6980EE8])
  {
    v47 = 40.0;
  }

  else
  {
    v47 = 24.0;
    v48 = v45 == *MEMORY[0x1E6980F00] || v45 == *MEMORY[0x1E6980F08];
    if (!v48 && v45 != *MEMORY[0x1E6980F10] && v45 != *MEMORY[0x1E6980F38])
    {
      v47 = 22.0;
      if (v45 != *MEMORY[0x1E6980EF0])
      {
        v47 = 20.0;
        if (v45 != *MEMORY[0x1E6980EF8])
        {
          v47 = 17.0;
          v51 = v45 == *MEMORY[0x1E6980F18] || v45 == *MEMORY[0x1E6980F30];
          v52 = v51 || v45 == *MEMORY[0x1E6980F20];
          if (!v52 && v45 != *MEMORY[0x1E6980F28])
          {
            (*(v35 + 8))(v42, v32);
            v47 = 20.0;
          }
        }
      }
    }
  }

  v43(v40, v121, v32);
  v54 = v44(v40, v32);
  v48 = v54 == v46;
  v55 = v123;
  v56 = v114;
  v57 = v110;
  if (v48)
  {
    goto LABEL_28;
  }

  if (v54 == *MEMORY[0x1E6980F00] || v54 == *MEMORY[0x1E6980F08] || v54 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_37;
  }

  if (v54 == *MEMORY[0x1E6980F38])
  {
LABEL_28:
    sub_1D41664B0();
    goto LABEL_38;
  }

  if (v54 == *MEMORY[0x1E6980EF0] || v54 == *MEMORY[0x1E6980EF8] || v54 == *MEMORY[0x1E6980F18] || v54 == *MEMORY[0x1E6980F30] || v54 == *MEMORY[0x1E6980F20] || v54 == *MEMORY[0x1E6980F28])
  {
LABEL_37:
    sub_1D41664A0();
    goto LABEL_38;
  }

  sub_1D41664A0();
  (*(v35 + 8))(v40, v32);
LABEL_38:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46A0, &qword_1D4167FE8);
  inited = swift_initStackObject();
  v61 = MEMORY[0x1E6965788];
  *(inited + 16) = xmmword_1D4167CD0;
  v62 = *v61;
  v63 = MEMORY[0x1E69E6810];
  *(inited + 32) = v62;
  *(inited + 40) = 3;
  v64 = *MEMORY[0x1E6965848];
  *(inited + 64) = v63;
  *(inited + 72) = v64;
  v65 = v62;
  v66 = v64;
  v67 = v119;
  sub_1D41664C0();
  v68 = sub_1D4145CD0(v67);
  v69 = *(v55 + 8);
  v123 = v55 + 8;
  v109 = v69;
  v69(v67, v120);
  v70 = MEMORY[0x1E69E7DE0];
  *(inited + 80) = v47 + v68;
  v71 = *MEMORY[0x1E6965898];
  *(inited + 104) = v70;
  *(inited + 112) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46A8, &qword_1D4167FF0);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1D4167CE0;
  v73 = *MEMORY[0x1E69658E0];
  *(v72 + 32) = *MEMORY[0x1E69658E0];
  sub_1D4147124(v112, v57, &qword_1EC7C4698, &qword_1D4167FE0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v56) == 1)
  {
    v74 = v113;
    v75 = v111;
    (*(v113 + 104))(v111, *MEMORY[0x1E6980E20], v56);
    v76 = v57;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v56);
    v78 = v73;
    v79 = v71;
    if (EnumTagSinglePayload != 1)
    {
      sub_1D4137AEC(v76, &qword_1EC7C4698, &qword_1D4167FE0);
    }
  }

  else
  {
    v74 = v113;
    v75 = v111;
    (*(v113 + 32))(v111, v57, v56);
    v80 = v73;
    v81 = v71;
  }

  v82 = v75;
  v83 = sub_1D4145EEC();
  (*(v74 + 8))(v82, v56);
  type metadata accessor for CFString(0);
  *(v72 + 40) = v83;
  v84 = *MEMORY[0x1E6965970];
  *(v72 + 64) = v85;
  *(v72 + 72) = v84;
  v86 = v84;
  v87 = sub_1D41460D4();
  *(v72 + 104) = MEMORY[0x1E69E7DE0];
  *(v72 + 80) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46B0, &qword_1D4167FF8);
  sub_1D4147184();
  v88 = sub_1D41668B0();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46C0, &qword_1D4168000);
  *(inited + 120) = v88;
  sub_1D4147238(&qword_1EC7C44A8, type metadata accessor for CFString);
  v89 = sub_1D41668B0();
  v90 = v117;
  sub_1D41664D0();
  v91 = v118;
  if (__swift_getEnumTagSinglePayload(v90, 1, v118) == 1)
  {
    sub_1D4137AEC(v90, &qword_1EC7C4608, &qword_1D4167E70);
  }

  else
  {
    v92 = v107;
    v93 = v108;
    (*(v108 + 32))(v107, v90, v91);
    v94 = *MEMORY[0x1E69657F0];
    v95 = sub_1D41461F8();
    v127 = MEMORY[0x1E69E6530];
    *&v126 = v95;
    sub_1D4147280(&v126, v125);
    swift_isUniquelyReferenced_nonNull_native();
    v124 = v89;
    sub_1D4147290(v125, v94);

    (*(v93 + 8))(v92, v91);
  }

  v96 = sub_1D414632C();
  v97 = v119;
  sub_1D41664C0();
  v98 = sub_1D41465CC();
  v109(v97, v120);
  v99 = sub_1D4166890();

  v100 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v100;
}

double sub_1D4145CD0(uint64_t a1)
{
  v2 = sub_1D41662B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = -3.0;
  if (v7 != *MEMORY[0x1E697F658])
  {
    result = -2.0;
    if (v7 != *MEMORY[0x1E697F690])
    {
      result = -1.0;
      if (v7 != *MEMORY[0x1E697F698])
      {
        result = 0.0;
        if (v7 != *MEMORY[0x1E697F680])
        {
          result = 2.0;
          if (v7 != *MEMORY[0x1E697F650])
          {
            result = 4.0;
            if (v7 != *MEMORY[0x1E697F660])
            {
              result = 6.0;
              if (v7 != *MEMORY[0x1E697F630])
              {
                result = 10.0;
                if (v7 != *MEMORY[0x1E697F670])
                {
                  result = 14.0;
                  if (v7 != *MEMORY[0x1E697F668])
                  {
                    result = 18.0;
                    if (v7 != *MEMORY[0x1E697F678])
                    {
                      result = 22.0;
                      if (v7 != *MEMORY[0x1E697F640])
                      {
                        result = 26.0;
                        if (v7 != *MEMORY[0x1E697F648])
                        {
                          (*(v3 + 8))(v6, v2, 26.0);
                          return 0.0;
                        }
                      }
                    }
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

id sub_1D4145EEC()
{
  v1 = v0;
  v2 = sub_1D4166410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E6980E20])
  {
    result = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E6980E10])
  {
    result = *MEMORY[0x1E69658D0];
    if (*MEMORY[0x1E69658D0])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E6980E28])
  {
    goto LABEL_10;
  }

  result = *MEMORY[0x1E69658C8];
  if (!*MEMORY[0x1E69658C8])
  {
    __break(1u);
LABEL_10:
    if (result == *MEMORY[0x1E6980E08])
    {
      result = *MEMORY[0x1E69658C0];
      if (*MEMORY[0x1E69658C0])
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (*MEMORY[0x1E69658B8])
    {
      v8 = *(v3 + 8);
      v9 = *MEMORY[0x1E69658B8];
      v8(v6, v2);
      return v9;
    }

    __break(1u);
    return result;
  }

LABEL_12:

  return result;
}

double sub_1D41460D4()
{
  sub_1D4166460();
  if (sub_1D4166430())
  {
    v0 = MEMORY[0x1E6965930];
  }

  else
  {
    sub_1D4166470();
    if (sub_1D4166430())
    {
      v0 = MEMORY[0x1E6965940];
    }

    else
    {
      sub_1D4166440();
      if (sub_1D4166430())
      {
        v0 = MEMORY[0x1E6965938];
      }

      else
      {
        sub_1D41664B0();
        if (sub_1D4166430())
        {
          v0 = MEMORY[0x1E6965960];
        }

        else
        {
          sub_1D4166490();
          if (sub_1D4166430())
          {
            v0 = MEMORY[0x1E6965950];
          }

          else
          {
            sub_1D41664A0();
            v1 = sub_1D4166430();
            v0 = MEMORY[0x1E6965958];
            if ((v1 & 1) == 0)
            {
              sub_1D4166480();
              if (sub_1D4166430())
              {
                v0 = MEMORY[0x1E6965948];
              }

              else
              {
                sub_1D4166450();
                if (sub_1D4166430())
                {
                  v0 = MEMORY[0x1E6965968];
                }

                else
                {
                  sub_1D4166420();
                  if (sub_1D4166430())
                  {
                    v0 = MEMORY[0x1E6965978];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v0;
}

uint64_t sub_1D41461F8()
{
  v1 = v0;
  v2 = sub_1D4165F90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != *MEMORY[0x1E697E9F8])
  {
    if (v7 == *MEMORY[0x1E697E9F0])
    {
      return 1;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return result;
}

id sub_1D414632C()
{
  v1 = v0;
  v2 = sub_1D4166500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8])
  {
    v8 = MEMORY[0x1E6965B20];
  }

  else if (v7 == *MEMORY[0x1E6980F00])
  {
    v8 = MEMORY[0x1E6965B28];
  }

  else if (v7 == *MEMORY[0x1E6980F08])
  {
    v8 = MEMORY[0x1E6965B30];
  }

  else if (v7 == *MEMORY[0x1E6980F10])
  {
    v8 = MEMORY[0x1E6965B38];
  }

  else if (v7 == *MEMORY[0x1E6980F38])
  {
    v8 = MEMORY[0x1E6965AE0];
  }

  else if (v7 == *MEMORY[0x1E6980EF0])
  {
    v8 = MEMORY[0x1E6965B18];
  }

  else if (v7 == *MEMORY[0x1E6980EF8])
  {
    v8 = MEMORY[0x1E6965AB0];
  }

  else if (v7 == *MEMORY[0x1E6980F18])
  {
    v8 = MEMORY[0x1E6965AB8];
  }

  else if (v7 == *MEMORY[0x1E6980F30])
  {
    v8 = MEMORY[0x1E6965AD0];
  }

  else if (v7 == *MEMORY[0x1E6980F20])
  {
    v8 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E6980F28])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E6965AB0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E6965AC8];
  }

  v9 = *v8;

  return v9;
}

id sub_1D41465CC()
{
  v1 = v0;
  v2 = sub_1D41662B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697F658])
  {
    v8 = MEMORY[0x1E69656D0];
  }

  else if (v7 == *MEMORY[0x1E697F690])
  {
    v8 = MEMORY[0x1E69656C0];
  }

  else if (v7 == *MEMORY[0x1E697F698])
  {
    v8 = MEMORY[0x1E69656B8];
  }

  else if (v7 == *MEMORY[0x1E697F680])
  {
    v8 = MEMORY[0x1E69656B0];
  }

  else if (v7 == *MEMORY[0x1E697F650])
  {
    v8 = MEMORY[0x1E69656C8];
  }

  else if (v7 == *MEMORY[0x1E697F660])
  {
    v8 = MEMORY[0x1E69656D8];
  }

  else if (v7 == *MEMORY[0x1E697F630])
  {
    v8 = MEMORY[0x1E69656E0];
  }

  else if (v7 == *MEMORY[0x1E697F670])
  {
    v8 = MEMORY[0x1E6965690];
  }

  else if (v7 == *MEMORY[0x1E697F668])
  {
    v8 = MEMORY[0x1E6965688];
  }

  else if (v7 == *MEMORY[0x1E697F678])
  {
    v8 = MEMORY[0x1E6965698];
  }

  else if (v7 == *MEMORY[0x1E697F640])
  {
    v8 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E697F648])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E69656B0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E69656A8];
  }

  v9 = *v8;

  return v9;
}

uint64_t sub_1D41468C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 dynamicTypeSize];
  if (v3 > 0xB)
  {
    v4 = MEMORY[0x1E697E6E8];
  }

  else
  {
    v4 = qword_1E8465AB8[v3];
  }

  v5 = *v4;
  v6 = sub_1D4165F60();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = *(v8 + 104);

  return v9(a1, v5, v7);
}

uint64_t sub_1D414695C@<X0>(SEL *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if ([v5 *a1] == 1)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  v11 = *v10;
  v12 = a4(0);
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 104);

  return v15(a5, v11, v13);
}

unint64_t sub_1D41469F4()
{
  result = qword_1EC7C45F8;
  if (!qword_1EC7C45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C45F0, &qword_1D4167E68);
    sub_1D4146A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C45F8);
  }

  return result;
}

unint64_t sub_1D4146A80()
{
  result = qword_1EC7C4600;
  if (!qword_1EC7C4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4600);
  }

  return result;
}

uint64_t sub_1D4146AD4(uint64_t a1)
{
  v2 = sub_1D4165D30();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4620, &qword_1D4167E88);
  result = sub_1D4166B10();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1D4147238(&qword_1EC7C4628, MEMORY[0x1E69E8450]);
    v16 = sub_1D41668C0();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1D4147238(&qword_1EC7C4630, MEMORY[0x1E69E8450]);
      v23 = sub_1D41668D0();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1D4146E40()
{
  result = qword_1EC7C4658;
  if (!qword_1EC7C4658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4640, &qword_1D4167F00);
    sub_1D41361D0(&qword_1EC7C4660, &qword_1EC7C4650, &qword_1D4167F10);
    sub_1D41361D0(&qword_1EC7C4668, &qword_1EC7C4670, &qword_1D4167F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4658);
  }

  return result;
}

unint64_t sub_1D4146F24()
{
  result = qword_1EC7C4680;
  if (!qword_1EC7C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4680);
  }

  return result;
}

uint64_t sub_1D4146F78(uint64_t a1)
{
  v2 = sub_1D4165FF0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4146FE0()
{
  result = qword_1EC7C4688;
  if (!qword_1EC7C4688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4690, &qword_1D4167F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4640, &qword_1D4167F00);
    sub_1D4165FF0();
    sub_1D4146E40();
    sub_1D4147238(&qword_1EC7C4678, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1EC7C4660, &qword_1EC7C4650, &qword_1D4167F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4688);
  }

  return result;
}

uint64_t sub_1D4147124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1D4147184()
{
  result = qword_1EC7C46B8;
  if (!qword_1EC7C46B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C46B0, &qword_1D4167FF8);
    sub_1D4147238(&qword_1EC7C44A8, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C46B8);
  }

  return result;
}

uint64_t sub_1D4147238(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1D4147280(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_1D4147290(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D415A698(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46C8, &qword_1D4168008);
  if ((sub_1D4166BA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_1D415A698(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CFString(0);
    result = sub_1D4166C30();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = (v13[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1D4147280(a1, v14);
  }

  else
  {
    sub_1D41473C8(v8, a2, a1, v13);

    return a2;
  }
}

_OWORD *sub_1D41473C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D4147280(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t Toggle.init<A>(isOn:intent:label:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24[3] = a1;
  v25 = a9;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1D41656D0();
  sub_1D414766C();
  if (swift_dynamicCast())
  {
    v19 = v28;
    (*(v15 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a6);
    v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = a5;
    *(v21 + 3) = a6;
    *(v21 + 4) = a7;
    *(v21 + 5) = a8;
    (*(v15 + 32))(&v21[v20], v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
    v22 = v19;
    sub_1D41667F0();

    return (*(v15 + 8))(a2, a6);
  }

  else
  {
    result = sub_1D4166BB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D414766C()
{
  result = qword_1ED9ACC00[0];
  if (!qword_1ED9ACC00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED9ACC00);
  }

  return result;
}

uint64_t sub_1D41476B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  sub_1D4166A20();
  v17 = sub_1D4166A10();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  (*(v10 + 32))(&v19[v18], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1D415326C();
}

uint64_t sub_1D41478CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v10, v9);
}

uint64_t sub_1D4147968()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D41530BC(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t Toggle<>.init<A>(_:isOn:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a8;
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v23, v24, v25);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  Toggle.init<A>(isOn:intent:label:)(a5, v23, sub_1D4147BD8, v29, MEMORY[0x1E6981148], a7, MEMORY[0x1E6981138], v28, a9);

  return (*(v18 + 8))(a6, a7);
}

uint64_t sub_1D4147B40@<X0>(uint64_t a1@<X8>)
{

  result = sub_1D4166540();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D4147BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1D4147B40(a1);
}

uint64_t Toggle<>.init<A, B>(_:isOn:intent:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_2();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v22, v23, v24);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a1;
  Toggle.init<A>(isOn:intent:label:)(a2, v22, sub_1D4147E40, v26, MEMORY[0x1E6981148], a5, MEMORY[0x1E6981138], a7, a8);
  (*(v17 + 8))(a3, a5);
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_1D4147D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D4166560();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1D4147E40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1D4147D64(v1[6], v1[2], a1);
}

uint64_t sub_1D4147E50(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D4147F60;

  return sub_1D41478CC(a1, v9, v10, v1 + v8, v4, v5, v6, v7);
}

uint64_t sub_1D4147F60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WrappedLabelStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WrappedLabelStyle(uint64_t result, int a2, int a3)
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

uint64_t sub_1D41480E0@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = *(type metadata accessor for WrappedLabelStyleView() + 28);
  v11 = sub_1D4166360();
  OUTLINED_FUNCTION_0_3(v11);
  result = (*(v12 + 16))(a2 + v10, a1);
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  return result;
}

uint64_t type metadata accessor for WrappedLabelStyleView()
{
  result = qword_1ED9ACA78;
  if (!qword_1ED9ACA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D41481EC()
{
  result = sub_1D4166360();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D414828C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D41661B0();
  v4 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D8, &qword_1D4168118);
  return sub_1D41482E0(v1, a1 + *(v5 + 44));
}

uint64_t sub_1D41482E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1D4166340();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E0, &qword_1D4168120);
  v6 = *(*(v53 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46E8, &qword_1D4168128);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v50 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  v16 = *(*(v51 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v51);
  v52 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v50 - v22;
  v50[1] = *(type metadata accessor for WrappedLabelStyleView() + 28);
  sub_1D4166330();
  v24 = *a1;
  sub_1D4166840();
  sub_1D4165E30();
  v25 = &v15[*(v12 + 44)];
  v26 = v60;
  *v25 = v59;
  *(v25 + 1) = v26;
  *(v25 + 2) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F8, &qword_1D4168138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4167CD0;
  v28 = sub_1D41663E0();
  *(inited + 32) = v28;
  v29 = sub_1D41663C0();
  *(inited + 33) = v29;
  v30 = sub_1D41663D0();
  *(inited + 34) = v30;
  v31 = sub_1D41663F0();
  sub_1D41663F0();
  if (sub_1D41663F0() != v28)
  {
    v31 = sub_1D41663F0();
  }

  sub_1D41663F0();
  if (sub_1D41663F0() != v29)
  {
    v31 = sub_1D41663F0();
  }

  sub_1D41663F0();
  if (sub_1D41663F0() != v30)
  {
    v31 = sub_1D41663F0();
  }

  v32 = *(a1 + 8);
  sub_1D4165DC0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1D4148828(v15, v21, &qword_1EC7C46E8, &qword_1D4168128);
  v41 = &v21[*(v51 + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_1D4148828(v21, v23, &qword_1EC7C46F0, &qword_1D4168130);
  v42 = v54;
  sub_1D4166350();
  v43 = v24 + *(a1 + 16);
  sub_1D4148884(&qword_1ED9ACA58, MEMORY[0x1E697C8A8]);
  v44 = v56;
  sub_1D4166600();
  (*(v55 + 8))(v42, v44);
  *&v10[*(v53 + 36)] = 256;
  v45 = v52;
  sub_1D41488CC(v23, v52);
  v46 = v57;
  sub_1D4139724(v10, v57);
  v47 = v58;
  sub_1D41488CC(v45, v58);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4700, &qword_1D4168140);
  sub_1D4139724(v46, v47 + *(v48 + 48));
  sub_1D4139788(v10);
  sub_1D414893C(v23);
  sub_1D4139788(v46);
  return sub_1D414893C(v45);
}

uint64_t sub_1D4148828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_3(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4148884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D41488CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D414893C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46F0, &qword_1D4168130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D41489A4()
{
  result = qword_1ED9ACA48;
  if (!qword_1ED9ACA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC7C4708, &qword_1D4168148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA48);
  }

  return result;
}

double sub_1D4148A08()
{
  result = 1.47881614e-270;
  qword_1EC7C5F40 = 0x7E90000FFFFFFFFLL;
  return result;
}

void View.accessibilityAction<A, B>(intent:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v42 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_2();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_2();
  v41 = v33;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v34 = OUTLINED_FUNCTION_22_1(v29);
    v35(v34);
    v36 = (*(v29 + 80) + 64) & ~*(v29 + 80);
    v37 = swift_allocObject();
    v37[2] = v27;
    v37[3] = v25;
    v37[4] = v23;
    v37[5] = v42;
    v37[6] = v41;
    v37[7] = a21;
    v38 = *(v29 + 32);
    v39 = OUTLINED_FUNCTION_39_1(v37);
    v40(v39);
    sub_1D4166620();

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_1D4166BB0();
    __break(1u);
  }
}

uint64_t sub_1D4148C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  sub_1D4166A20();
  v19 = sub_1D4166A10();
  v20 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  *(v21 + 6) = a4;
  *(v21 + 7) = a5;
  v23 = v26;
  *(v21 + 8) = v25;
  *(v21 + 9) = v23;
  (*(v12 + 32))(&v21[v20], &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1D415326C();
}

uint64_t sub_1D4148E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = v11;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v8, v7);
}

uint64_t sub_1D4148F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v10, v9);
}

void sub_1D4149054()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(*(v0[3] - 8) + 80);
  sub_1D4149CEC();
}

uint64_t sub_1D414911C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D41491A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v12;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

void ModifiedContent<>.accessibilityAction<A>(_:intent:)()
{
  sub_1D414A504();
}

{
  sub_1D414A504();
}

uint64_t sub_1D41492BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

void sub_1D41493BC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(*(v0[3] - 8) + 80);
  sub_1D414AB24();
}

uint64_t sub_1D414947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v9, v8);
}

uint64_t sub_1D414958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v12;
  v7[2] = a4;
  sub_1D4166A20();
  v7[5] = sub_1D4166A10();
  v9 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v9, v8);
}

void sub_1D4149684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, void *, uint64_t, void *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v44 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v43 = v30;
  OUTLINED_FUNCTION_2();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v36 = OUTLINED_FUNCTION_22_1(v32);
    v37(v36);
    v38 = (*(v32 + 80) + 48) & ~*(v32 + 80);
    v39 = swift_allocObject();
    v39[2] = v29;
    v39[3] = v27;
    v39[4] = v25;
    v39[5] = v23;
    v40 = *(v32 + 32);
    v41 = OUTLINED_FUNCTION_39_1(v39);
    v42(v41);
    a21(v43, v45, v44, v39, v29, v25);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D4149880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  v53 = v25;
  v54 = v24;
  v50 = v27;
  v51 = v26;
  v29 = v28;
  v31 = v30;
  v52 = v32;
  v48 = v33;
  v49 = v34;
  v47[1] = v35;
  OUTLINED_FUNCTION_2();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41656D0();
  sub_1D414766C();
  if (swift_dynamicCast())
  {
    v47[0] = a24;
    v42 = v55;
    (*(v37 + 16))(v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v29);
    v43 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v44 = swift_allocObject();
    v45 = v53;
    *(v44 + 2) = v53;
    *(v44 + 3) = v29;
    v46 = v50;
    *(v44 + 4) = v50;
    *(v44 + 5) = a21;
    (*(v37 + 32))(&v44[v43], v41, v29);
    (v47[0])(v49, v51, v48 & 1, v52, v42, a23, v44, v45, v46);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D4149AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t, void *))
{
  OUTLINED_FUNCTION_39();
  v48 = v25;
  v47 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_2();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30_1();
  v46 = v34;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {

    OUTLINED_FUNCTION_36_0();
    v35 = OUTLINED_FUNCTION_42_0();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_29_1(v30);
    v43(v42);
    v44 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = v48;
    *(v45 + 3) = v28;
    *(v45 + 4) = v47;
    *(v45 + 5) = v46;
    (*(v30 + 32))(&v45[v44], v24, v28);
    a24(v35, v37, v39 & 1, v41, v47, a23, v45, v48, v47);
    sub_1D414911C(v35, v37, v39 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D4149CEC()
{
  OUTLINED_FUNCTION_39();
  v30[0] = v1;
  v30[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v20 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v19, v21, v22, v20);
  v23 = OUTLINED_FUNCTION_29_1(v10);
  v24(v23);
  sub_1D4166A20();
  v25 = sub_1D4166A10();
  v26 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v25;
  *(v27 + 3) = v28;
  *(v27 + 4) = v8;
  *(v27 + 5) = v6;
  v29 = v30[0];
  *(v27 + 6) = v4;
  *(v27 + 7) = v29;
  (*(v10 + 32))(&v27[v26], v0, v6);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2(a1, *(v1 + 24));
  v3 = *(v2 + 64);
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1D4149F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v71 = v24;
  v72 = v23;
  v26 = v25;
  v69 = v28;
  v70 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v67 = v35;
  OUTLINED_FUNCTION_2();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_37_1();
  v42 = v41;
  OUTLINED_FUNCTION_2();
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v63 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v50;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v65 = a22;
    v66 = a23;
    v64 = v73;
    (*(v44 + 16))(v49, v67, v32);
    v51 = sub_1D4166560();
    v67 = v52;
    v54 = v53;
    v63 = v55;
    (*(v37 + 16))(v42, v34, v30);
    v56 = (*(v37 + 80) + 64) & ~*(v37 + 80);
    v57 = swift_allocObject();
    v58 = v71;
    *(v57 + 2) = v71;
    *(v57 + 3) = v32;
    v59 = v70;
    *(v57 + 4) = v30;
    *(v57 + 5) = v59;
    v60 = v68;
    *(v57 + 6) = v26;
    *(v57 + 7) = v60;
    (*(v37 + 32))(&v57[v56], v42, v30);
    v61 = v67;
    v62 = v64;
    v66(v51, v67, v54 & 1, v63, v64, v65, v57, v58, v59);
    sub_1D414911C(v51, v61, v54 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D414A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v56 = v21;
  v57 = v22;
  v55 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 64);
  v54 = a21;
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v54 - v42;
  v44 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v43, v45, v46, v44);
  (*(v33 + 16))(v37, v31, v25);
  sub_1D4166A20();
  v47 = sub_1D4166A10();
  v48 = (*(v33 + 80) + 80) & ~*(v33 + 80);
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  *(v49 + 2) = v47;
  *(v49 + 3) = v50;
  *(v49 + 4) = v29;
  *(v49 + 5) = v27;
  v51 = v55;
  v52 = v56;
  *(v49 + 6) = v25;
  *(v49 + 7) = v51;
  v53 = v57;
  *(v49 + 8) = v52;
  *(v49 + 9) = v53;
  (*(v33 + 32))(&v49[v48], v37, v25);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2(a1, *(v1 + 32));
  v3 = *(v2 + 64);
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 64) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1D414A504()
{
  OUTLINED_FUNCTION_39();
  v23 = v0;
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v14 = OUTLINED_FUNCTION_22_1(v10);
    v15(v14);
    v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v17 = swift_allocObject();
    v17[2] = *(v8 + 16);
    v17[3] = v6;
    v17[4] = v4;
    v18 = *(v10 + 32);
    v19 = OUTLINED_FUNCTION_39_1(v17);
    v20(v19);
    v23(v21, v24, v22, v17, v8);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D414A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, void *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v48 = v23;
  v25 = v24;
  v27 = v26;
  v46 = v28;
  v47 = v29;
  v44 = v30;
  v45 = v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_11_2();
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v37 = OUTLINED_FUNCTION_22_1(v33);
    v38(v37);
    v39 = (*(v33 + 80) + 40) & ~*(v33 + 80);
    v40 = swift_allocObject();
    v40[2] = *(v48 + 16);
    v40[3] = v27;
    v40[4] = v25;
    v41 = *(v33 + 32);
    v42 = OUTLINED_FUNCTION_39_1(v40);
    v43(v42);
    a23(v45, v46, v44 & 1, v47, v49, a22, v40, v48);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D414A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v45 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_2();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_1();
  v44 = v34;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {

    OUTLINED_FUNCTION_36_0();
    v35 = OUTLINED_FUNCTION_42_0();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    (*(v30 + 16))(v23, v28, v26);
    v42 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = *(v45 + 16);
    *(v43 + 3) = v26;
    *(v43 + 4) = v44;
    (*(v30 + 32))(&v43[v42], v23, v26);
    a23(v35, v37, v39 & 1, v41, v46, a22, v43, v45);
    sub_1D414911C(v35, v37, v39 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D414AB24()
{
  OUTLINED_FUNCTION_39();
  v28[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  v21 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v20, v22, v23, v21);
  (*(v11 + 16))(v0, v9, v5);
  sub_1D4166A20();
  v24 = sub_1D4166A10();
  v25 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v24;
  *(v26 + 3) = v27;
  *(v26 + 4) = v7;
  *(v26 + 5) = v5;
  *(v26 + 6) = v3;
  (*(v11 + 32))(&v26[v25], v0, v5);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_14Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2(a1, *(v1 + 24));
  v3 = *(v2 + 64);
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1D414AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, uint64_t, void, uint64_t, void *, uint64_t, char *, uint64_t))
{
  OUTLINED_FUNCTION_39();
  v67 = v23;
  v68 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v64 = v30;
  v66 = v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_37_1();
  v38 = v37;
  OUTLINED_FUNCTION_2();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v46;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v62 = a21;
    v63 = a22;
    v61 = v69;
    (*(v40 + 16))(v45, v64, v29);
    v47 = sub_1D4166560();
    v64 = v48;
    v50 = v49;
    v60 = v51;
    v52 = OUTLINED_FUNCTION_29_1(v33);
    v53(v52);
    v54 = (*(v33 + 80) + 56) & ~*(v33 + 80);
    v55 = swift_allocObject();
    v56 = v67;
    *(v55 + 2) = *(v67 + 16);
    *(v55 + 3) = v29;
    *(v55 + 4) = v27;
    *(v55 + 5) = v25;
    *(v55 + 6) = v65;
    (*(v33 + 32))(&v55[v54], v38, v27);
    v57 = v64;
    v58 = v61;
    v63(v47, v64, v50 & 1, v60, v61, v62, v55, v56);
    sub_1D414911C(v47, v57, v50 & 1);

    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_4_1();
    __break(1u);
  }
}

void sub_1D414B020()
{
  OUTLINED_FUNCTION_39();
  v33 = v0;
  v34 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = sub_1D4166A50();
  OUTLINED_FUNCTION_43_0(v21, v23, v24, v22);
  (*(v12 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v4);
  sub_1D4166A20();
  v25 = sub_1D4166A10();
  v26 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v25;
  *(v27 + 3) = v28;
  *(v27 + 4) = v8;
  *(v27 + 5) = v6;
  v30 = v32;
  v29 = v33;
  *(v27 + 6) = v4;
  *(v27 + 7) = v30;
  *(v27 + 8) = v29;
  (*(v12 + 32))(&v27[v26], &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  OUTLINED_FUNCTION_35_1();
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroy_23Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_15_2(a1, *(v1 + 32));
  v3 = *(v2 + 64);
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 56) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1D414B260()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(*(v0[4] - 8) + 80);
  sub_1D414B020();
}

uint64_t sub_1D414B2C0()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[5];
  v19 = v0[4];
  OUTLINED_FUNCTION_23_1();
  v2 = v0[8];
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v8[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1();

  return sub_1D414958C(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D414B3B0()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D414B464()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D414B518()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D414B5CC()
{
  OUTLINED_FUNCTION_41_0();
  v19 = v0[5];
  v20 = v0[4];
  OUTLINED_FUNCTION_23_1();
  v2 = v0[8];
  v1 = v0[9];
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v8[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D41491A0(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D414B6AC()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D414B760()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D414B814()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1D414B96C()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[5];
  v19 = v0[4];
  OUTLINED_FUNCTION_23_1();
  v2 = v0[8];
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v8[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_1();

  return sub_1D414958C(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D414BA5C()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D414947C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D414BB10()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1D414BC68()
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_2(v5);
  OUTLINED_FUNCTION_32_1();

  return sub_1D41492BC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2();
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1D414BDC0()
{
  OUTLINED_FUNCTION_41_0();
  v19 = v0[5];
  v20 = v0[4];
  OUTLINED_FUNCTION_23_1();
  v2 = v0[8];
  v1 = v0[9];
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v8[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D41491A0(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D414BEA0()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D414BF54()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_12_2();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1D414C0AC()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_10_2();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_4(v6);
  OUTLINED_FUNCTION_20_1();

  return sub_1D4148F4C(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D414C160()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[6];
  v18 = v0[4];
  v3 = v0[8];
  v2 = v0[9];
  v4 = (*(*(v0[5] - 8) + 80) + 80) & ~*(*(v0[5] - 8) + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v8[1] = sub_1D414C24C;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_34_1();

  return sub_1D4148E34(v10, v11, v12, v13, v14, v15);
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_1D4166540();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t View.suggestedIntent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v23 - v20;
  (*(v8 + 16))(v13, a1, a3);
  sub_1D414C558(v13, a3, v21);
  MEMORY[0x1DA6D1980](v21, a2, v14, v23);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_1D414C558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_10_3();
  v12 = *(type metadata accessor for SuggestedIntent() + 36);
  v13 = sub_1D4165A60();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1D414CD0C(v11);
  OUTLINED_FUNCTION_14(a2);
  return (*(v14 + 32))(a3, a1, a2);
}

void sub_1D414C644(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D414CC64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D414C6CC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D4165A60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(v8 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v6 + 64) + v16;
  v18 = v14 + 7;
  if (v13 >= a2)
  {
LABEL_33:
    if (v7 >= v12)
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }

    else
    {
      v28 = (a1 + v17) & ~v16;
      if (v11 < 0x7FFFFFFE)
      {
        v30 = *((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
        if (v30 >= 0xFFFFFFFF)
        {
          LODWORD(v30) = -1;
        }

        if ((v30 + 1) >= 2)
        {
          return v30;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v10, v15);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    result = 4;
    if (v21 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v21 < 0x100)
    {
      v23 = 1;
    }

    if (v21 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    switch(v24)
    {
      case 1:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 2:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v25 = *(a1 + v19);
        if (!v25)
        {
          goto LABEL_33;
        }

LABEL_30:
        v26 = v25 - 1;
        if (v20)
        {
          v26 = 0;
          v27 = *a1;
        }

        else
        {
          v27 = 0;
        }

        result = v13 + (v27 | v26) + 1;
        break;
      default:
        goto LABEL_33;
    }
  }

  return result;
}

void sub_1D414C918(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D4165A60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = *(v8 + 64) + v16;
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8;
  if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) == -8)
  {
    v20 = a3 - v15 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v15 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= v15)
  {
    v26 = v10;
    switch(v23)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 3:
LABEL_70:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 >= v14)
        {
          v30 = a1;
          v31 = a2;
          v12 = v9;
          v26 = v7;
        }

        else
        {
          v27 = ((a1 + v17) & ~v16);
          if (v14 < a2)
          {
            v28 = (v18 + 7) & 0xFFFFFFF8;
            if (v28 != -8)
            {
              v29 = ~v14 + a2;
              bzero(v27, (v28 + 8));
LABEL_45:
              *v27 = v29;
            }

            return;
          }

          if (v13 < 0x7FFFFFFE)
          {
            v34 = (&v27[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v34 = 0;
              *v34 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v34 = a2;
            }

            return;
          }

          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v32 = ~(-1 << (8 * v18));
            }

            else
            {
              v32 = -1;
            }

            if (v18)
            {
              v29 = v32 & (~v13 + a2);
              if (v18 <= 3)
              {
                v33 = v18;
              }

              else
              {
                v33 = 4;
              }

              bzero(v27, v18);
              switch(v33)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  goto LABEL_45;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v31 = (a2 + 1);
          v30 = v27;
        }

        __swift_storeEnumTagSinglePayload(v30, v31, v12, v26);
        break;
    }
  }

  else
  {
    if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) == -8)
    {
      v24 = a2 - v15;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + 7) & 0xFFFFFFF8) + (v17 & ~(*(v11 + 80) & 0xF8 | 7)) != -8)
    {
      v25 = ~v15 + a2;
      bzero(a1, ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v19) = v24;
        break;
      case 2:
        *(a1 + v19) = v24;
        break;
      case 3:
        goto LABEL_70;
      case 4:
        *(a1 + v19) = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1D414CC64()
{
  if (!qword_1EC7C4790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4798, qword_1D4168298);
    v0 = sub_1D4166790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7C4790);
    }
  }
}

uint64_t sub_1D414CD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  sub_1D414E718(a1, &v8 - v6, &qword_1EC7C4798, qword_1D4168298);
  sub_1D4166760();
  return sub_1D414E5B4(a1, &qword_1EC7C4798, qword_1D4168298);
}

uint64_t sub_1D414CDCC(uint64_t a1)
{
  v1 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300);
  return sub_1D4166770();
}

uint64_t sub_1D414CE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a2 + 36);
  sub_1D414E718(a1, &v11 - v9, &qword_1EC7C4798, qword_1D4168298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300);
  sub_1D4166780();
  return sub_1D414E5B4(a1, &qword_1EC7C4798, qword_1D4168298);
}

uint64_t sub_1D414CEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v54 = a3;
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = v10;
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  v44 = sub_1D4166320();
  v48 = sub_1D4165F80();
  OUTLINED_FUNCTION_2();
  v52 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v41 - v16;
  v51 = sub_1D4165F80();
  OUTLINED_FUNCTION_2();
  v53 = v17;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v47 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v41 - v23;
  v45 = *(v6 + 16);
  v41 = v11;
  v45(v11, v3, a2);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v27 = *(a2 + 16);
  v26 = *(a2 + 24);
  *(v25 + 16) = v27;
  *(v25 + 24) = v26;
  v42 = *(v6 + 32);
  v42(v25 + v24, v11, a2);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D4166690();

  v29 = v41;
  v45(v41, v46, a2);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v26;
  v42(v30 + v24, v29, a2);
  v31 = MEMORY[0x1E69805D0];
  v58 = WitnessTable;
  v59 = MEMORY[0x1E69805D0];
  v32 = v48;
  v33 = swift_getWitnessTable();
  v34 = v47;
  v35 = v55;
  sub_1D41665D0();

  (*(v52 + 8))(v35, v32);
  v56 = v33;
  v57 = v31;
  v36 = v51;
  v37 = swift_getWitnessTable();
  v38 = v49;
  sub_1D41605A4(v34, v36, v37);
  v39 = *(v53 + 8);
  v39(v34, v36);
  sub_1D41605A4(v38, v36, v37);
  return (v39)(v38, v36);
}

uint64_t sub_1D414D300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SuggestedIntent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D4168270;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 32) = 0xD000000000000028;
  *(v15 + 40) = 0x80000001D416C8F0;
  sub_1D4166CC0();

  v16 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  (*(v7 + 16))(v10, a1, v6);
  sub_1D4166A20();
  v17 = sub_1D4166A10();
  v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v7 + 32))(&v19[v18], v10, v6);
  sub_1D414D904(0, 0, v14, &unk_1D4168330, v19);
}

uint64_t sub_1D414D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  sub_1D4166A20();
  v6[6] = sub_1D4166A10();
  v9 = sub_1D4166A00();
  v6[7] = v9;
  v6[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D414D624, v9, v8);
}

uint64_t sub_1D414D624()
{
  OUTLINED_FUNCTION_6();
  sub_1D4165A90();
  v0[9] = sub_1D4165A80();
  v1 = OUTLINED_FUNCTION_12_3(MEMORY[0x1E695A698]);
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1D414D6D4;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return v7(v2, v4, v5, v3);
}

uint64_t sub_1D414D6D4()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 80);
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v2;
  v2[11] = v0;

  if (v0)
  {
    v5 = v2[7];
    v6 = v2[8];
    v7 = sub_1D414D894;
  }

  else
  {
    v8 = v2[9];

    v5 = v2[7];
    v6 = v2[8];
    v7 = sub_1D414D7E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D414D7E4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = sub_1D4165A60();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = type metadata accessor for SuggestedIntent();
  sub_1D414CE18(v2, v7);

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_1D414D894()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];

  OUTLINED_FUNCTION_17();
  v5 = v0[11];

  return v4();
}

uint64_t sub_1D414D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1D414E718(a3, v23 - v10, &qword_1EC7C46D0, &qword_1D4168010);
  v12 = sub_1D4166A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D414E5B4(v11, &qword_1EC7C46D0, &qword_1D4168010);
  }

  else
  {
    sub_1D4166A40();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D4166A00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D4166940() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D414E5B4(a3, &qword_1EC7C46D0, &qword_1D4168010);

      return v21;
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

  sub_1D414E5B4(a3, &qword_1EC7C46D0, &qword_1D4168010);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D414DB94(uint64_t a1)
{
  v25[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4798, qword_1D4168298);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v25 - v7;
  v9 = sub_1D4165A60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D4168270;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 32) = 0xD00000000000002ALL;
  *(v16 + 40) = 0x80000001D416C8C0;
  sub_1D4166CC0();

  v17 = type metadata accessor for SuggestedIntent();
  sub_1D414CDCC(v17);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1D414E5B4(v8, &qword_1EC7C4798, qword_1D4168298);
  }

  v19 = *(v10 + 32);
  v19(v15, v8, v9);
  v20 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
  (*(v10 + 16))(v13, v15, v9);
  sub_1D4166A20();
  v21 = sub_1D4166A10();
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  v19((v23 + v22), v13, v9);
  sub_1D414D904(0, 0, v4, &unk_1D4168320, v23);

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1D414DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D4166A20();
  v4[3] = sub_1D4166A10();
  v6 = sub_1D4166A00();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D414DF6C, v6, v5);
}

uint64_t sub_1D414DF6C()
{
  OUTLINED_FUNCTION_6();
  sub_1D4165A90();
  v0[6] = sub_1D4165A80();
  v1 = OUTLINED_FUNCTION_12_3(MEMORY[0x1E695A6A0]);
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1D414E018;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1D414E018()
{
  OUTLINED_FUNCTION_6();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v2;
  v2[8] = v0;

  if (v0)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = sub_1D414E184;
  }

  else
  {
    v8 = v2[6];

    v5 = v2[4];
    v6 = v2[5];
    v7 = sub_1D414E128;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D414E128()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1D414E184()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  v2 = v0[3];

  OUTLINED_FUNCTION_17();
  v4 = v0[8];

  return v3();
}

uint64_t objectdestroyTm()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_10_3();
  v4 = type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_9_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 32) & ~v6;
  OUTLINED_FUNCTION_14(v3);
  (*(v10 + 8))(v0 + v9, v3);
  v11 = v0 + v9 + *(v1 + 44);
  v12 = sub_1D4165A60();
  if (!OUTLINED_FUNCTION_11_3(v12))
  {
    OUTLINED_FUNCTION_14(v1);
    (*(v13 + 8))(v11, v1);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A0, &unk_1D4168300) + 28));

  return MEMORY[0x1EEE6BDD0](v0, v9 + v8, v6 | 7);
}

uint64_t sub_1D414E354(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_10_3();
  v4 = type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_22(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

uint64_t sub_1D414E3E4(uint64_t a1)
{
  v4 = sub_1D4165A60();
  OUTLINED_FUNCTION_22(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D414E4D0;

  return sub_1D414DED4(a1, v7, v8, v1 + v6);
}

uint64_t sub_1D414E4D0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_1D414E5B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D414E610(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for SuggestedIntent();
  OUTLINED_FUNCTION_22(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D414E77C;

  return sub_1D414D550(a1, v9, v10, v1 + v8, v4, v5);
}

uint64_t sub_1D414E718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t AppIntent.requestConfirmation<A>(conditions:actionName:dialog:showDialogAsPrompt:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_6();
  *(v11 + 80) = a10;
  *(v11 + 88) = v10;
  *(v11 + 64) = v12;
  *(v11 + 72) = a9;
  *(v11 + 48) = v13;
  *(v11 + 56) = v14;
  *(v11 + 208) = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  *(v11 + 16) = v18;
  *(v11 + 24) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47B0, &qword_1D4168358);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_24(v20);
  *(v11 + 104) = v21;
  v23 = *(v22 + 64);
  *(v11 + 112) = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47B8, &qword_1D4168360);
  *(v11 + 120) = v24;
  OUTLINED_FUNCTION_24(v24);
  *(v11 + 128) = v25;
  v27 = *(v26 + 64);
  *(v11 + 136) = OUTLINED_FUNCTION_19();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  *(v11 + 144) = OUTLINED_FUNCTION_19();
  v31 = sub_1D4165760();
  *(v11 + 152) = v31;
  OUTLINED_FUNCTION_24(v31);
  *(v11 + 160) = v32;
  v34 = *(v33 + 64);
  *(v11 + 168) = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414E924()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1D414F00C(*(v0 + 32), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 16);
    sub_1D414F5DC(*(v0 + 144), &qword_1EC7C44B8, &unk_1D4167930);
    v9 = OUTLINED_FUNCTION_21_2();
    sub_1D414F168(v9, v10, v6, v5);
    v11 = *(MEMORY[0x1E6959E98] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    v13 = sub_1D414F24C(&qword_1EC7C47C0, &qword_1EC7C47B0, &qword_1D4168358);
    *v12 = v0;
    v12[1] = sub_1D414ED40;
    v14 = *(v0 + 112);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    v21 = 0;
  }

  else
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 136);
    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    v27 = *(v0 + 40);
    v26 = *(v0 + 48);
    v28 = *(v0 + 16);
    (*(*(v0 + 160) + 32))(v22, *(v0 + 144), *(v0 + 152));
    sub_1D414F07C(v28, v22, v27, v26, v25);
    v29 = *(MEMORY[0x1E6959E98] + 4);
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    v13 = sub_1D414F24C(&qword_1EC7C47C8, &qword_1EC7C47B8, &qword_1D4168360);
    *v30 = v0;
    v30[1] = sub_1D414EB50;
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    v31 = *(v0 + 88);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    v21 = *(v0 + 208);
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
  }

  return MEMORY[0x1EEDB2D68](v14, v19, v21, v20, v18, v15, v17, v13);
}