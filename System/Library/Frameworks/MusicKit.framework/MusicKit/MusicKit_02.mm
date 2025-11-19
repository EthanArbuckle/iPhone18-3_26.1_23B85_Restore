uint64_t OUTLINED_FUNCTION_8_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = __clz(__rbit64(v3)) | (a1 << 6);
  v6 = (*(a2 + 48) + 16 * v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(a2 + 56) + 32 * v5;

  return sub_21721E0AC(v9, va);
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1)
{
  *(a1 + 8) = sub_217206040;
  v2 = v1[11];
  result = v1[8];
  v4 = v1[9];
  return result;
}

__n128 OUTLINED_FUNCTION_8_15(uint64_t a1)
{
  *(v3 + 88) = a1;
  v6 = *(v3 + 72);
  result = *(v3 + 40);
  *(a1 + 16) = v1;
  *(a1 + 24) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = result;
  *(a1 + 72) = v2;
  return result;
}

double OUTLINED_FUNCTION_8_18()
{
  result = 0.0;
  *(v0 + 1344) = 0u;
  *(v0 + 1360) = 0u;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = 0u;
  *(v0 + 1440) = 0;
  return result;
}

void OUTLINED_FUNCTION_8_24()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_8_26()
{
  result = *v0;
  v3 = v1[392];
  v4 = v1[386];
  v5 = v1[383];
  v6 = v1[382];
  v7 = *(v1[384] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_34(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

void OUTLINED_FUNCTION_8_35()
{
  v2 = -1;
  v3 = -1 << *(v0 + 32);
  v4 = *(v1 + 376);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v5 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_8_37()
{
  v3 = *(v2 - 96);
  v4 = *(v2 - 88);
  v5 = *(v1 + 16);
  return v0;
}

__n128 OUTLINED_FUNCTION_8_38()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_39()
{
  result = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_8_42()
{
  result = v0 + 80;
  v2 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_8_50(uint64_t result)
{
  *(result + 8) = sub_217566D08;
  v2 = *(v1 + 384);
  v3 = *(v1 + 368);
  return result;
}

void OUTLINED_FUNCTION_8_53()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
}

void OUTLINED_FUNCTION_8_55()
{
  v0[14] = sub_21758A640;
  v0[15] = v2;
  v0[10] = v1;
  v0[11] = v3;
}

uint64_t OUTLINED_FUNCTION_8_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_2171F06D8(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_8_59()
{
  v1 = v0[68];
  v2 = *(v0[69] + 8);
  return v0[70];
}

void OUTLINED_FUNCTION_8_61()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_8_68()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_69()
{

  return sub_2177531E8();
}

uint64_t OUTLINED_FUNCTION_8_70@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[1] = a3;
  a1[2] = a4;
  *a1 = a2;
  __swift_destroy_boxed_opaque_existential_1(v4 + 5);
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = v5 + 8;
  v7 = *(v5 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_71(uint64_t a1)
{

  return sub_2171F5110(a1, v1 + 608, v2, v3);
}

double OUTLINED_FUNCTION_8_74@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 1616) = a1;
  *(v1 + 1632) = 0;
  result = 0.0;
  *(v1 + 1640) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_75@<X0>(char a1@<W8>)
{
  *(v2 - 66) = a1;
  v4 = *(v1 + 8);

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_8_78()
{
  sub_2171F3F0C((v0 + 176), v0 + 216);
  v1 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v1);
  return v1;
}

void *OUTLINED_FUNCTION_8_81(void *a1)
{

  return memcpy(a1, (v1 + 32), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_8_83@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_88@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_89(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 - 288) = a4;
  *(v4 - 228) = a3;
  *(v4 - 296) = a2;
  *(v4 - 304) = result;
  return result;
}

void OUTLINED_FUNCTION_8_92()
{

  sub_217275C90();
}

__n128 OUTLINED_FUNCTION_8_95()
{
  v1 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v1;
  result = *(v0 + 80);
  *(v0 + 144) = result;
  return result;
}

uint64_t sub_21721E0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  return sub_21721E0AC(a2 + 32, a1 + 32);
}

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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_21721E0AC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21721E278()
{
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  sub_21721E2E8();

  return MEMORY[0x2822009F8](sub_21721E7BC, 0, 0);
}

void sub_21721E2E8()
{
  if (!*(v0 + 56))
  {
    swift_weakInit();
    swift_weakAssign();
    v1 = objc_opt_self();
    v2 = *(v0 + 64);
    sub_2171F5110(v9, v8, &qword_27CB24DB0, &qword_217759FE0);
    OUTLINED_FUNCTION_37_3();
    v3 = swift_allocObject();
    sub_21721E6D0(v8, v3 + 16);
    v7[4] = sub_2172B3998;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_217656CF4;
    v7[3] = &block_descriptor_35_0;
    v4 = _Block_copy(v7);

    v5 = [v1 scheduledTimerWithTimeInterval:0 repeats:v4 block:v2];
    _Block_release(v4);
    sub_2171F0738(v9, &qword_27CB24DB0, &qword_217759FE0);
    v6 = *(v0 + 56);
    *(v0 + 56) = v5;
  }
}

uint64_t sub_21721E458()
{
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  sub_21721E504();

  return MEMORY[0x2822009F8](sub_21721E868, 0, 0);
}

void sub_21721E504()
{
  if (!*(v0 + 40))
  {
    swift_weakInit();
    swift_weakAssign();
    v1 = objc_opt_self();
    sub_217202078(v8, v7, &qword_27CB28C88, &qword_217772018);
    v2 = swift_allocObject();
    sub_21721E74C(v7, v2 + 16);
    v6[4] = sub_21750D914;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_217656CF4;
    v6[3] = &block_descriptor_9;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:0.01];
    _Block_release(v3);
    sub_2171F06D8(v8, &qword_27CB28C88, &qword_217772018);
    v5 = *(v0 + 40);
    *(v0 + 40) = v4;
  }
}

uint64_t sub_21721E694()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21721E6D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DB0, &qword_217759FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21721E74C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C88, &qword_217772018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21721E7BC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(*(v0 + 64), &unk_27CB282D0, &qword_21776C3D0);
  OUTLINED_FUNCTION_10_10();
  sub_2171FC248(v1, v2);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_14();

  return MEMORY[0x282200308](v7);
}

uint64_t sub_21721E868()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(*(v0 + 64), &unk_27CB282D0, &qword_21776C3D0);
  sub_2171F8214();
  v1 = *(MEMORY[0x277D856D0] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_72();

  return MEMORY[0x282200308](v5);
}

uint64_t MusicLibraryRequest.response()()
{
  OUTLINED_FUNCTION_10();
  v1[65] = v2;
  v1[64] = v3;
  memcpy(v1 + 48, v0, 0x49uLL);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21721E964()
{
  v28 = v0;
  static MusicAuthorization.currentStatus.getter(__dst);
  switch(LOBYTE(__dst[0]))
  {
    case 2:
      OUTLINED_FUNCTION_8_21();
      goto LABEL_3;
    case 3:

      goto LABEL_6;
    default:
LABEL_3:
      OUTLINED_FUNCTION_7_17();
      v1 = sub_217753058();

      if ((v1 & 1) == 0)
      {
        sub_21728FC9C();
LABEL_14:
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_20_0();

        return v15();
      }

LABEL_6:
      *(v0 + 528) = *(*(v0 + 520) + 16);
      if (!OUTLINED_FUNCTION_23_9())
      {
        sub_2173546F8();
        goto LABEL_14;
      }

      v2 = OUTLINED_FUNCTION_23_9();
      if (!v2)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v16 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v16);
        v17 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v17);

        OUTLINED_FUNCTION_21_53();
        MEMORY[0x21CEA23B0](v18 + 17, v19 | 0x8000000000000000);
        return OUTLINED_FUNCTION_0_88();
      }

      v4 = v2;
      v5 = v3;
      v6 = OUTLINED_FUNCTION_23_9();
      *(v0 + 536) = v6;
      *(v0 + 544) = v7;
      if (!v6)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v20 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v20);
        v21 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v21);

        OUTLINED_FUNCTION_21_53();
        MEMORY[0x21CEA23B0](v22 + 15, v23 | 0x8000000000000000);
        return OUTLINED_FUNCTION_0_88();
      }

      v8 = OUTLINED_FUNCTION_23_9();
      *(v0 + 552) = v8;
      *(v0 + 560) = v9;
      if (!v8)
      {
        OUTLINED_FUNCTION_1_9();
        sub_217752AA8();
        v24 = OUTLINED_FUNCTION_8();
        MEMORY[0x21CEA23B0](v24);
        v25 = OUTLINED_FUNCTION_27_8();
        MEMORY[0x21CEA23B0](v25);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
        return OUTLINED_FUNCTION_0_88();
      }

      v10 = *(v0 + 520);
      (*(v5 + 8))(__dst, v4, v5);
      *(v0 + 377) = __dst[0];
      memcpy(__dst, (v0 + 384), 0x49uLL);
      v11 = sub_21721EDBC(v10);
      *(v0 + 568) = v11;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_21770568C;
      v12 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_246();
      *(v0 + 104) = v13;
      *(v0 + 112) = v12;
      [v11 performWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21721EDBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  v7 = *(v1 + 27);
  v8 = *(v1 + 28);
  v9 = *(v1 + 29);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  LOBYTE(v20[0]) = *(v1 + 24);
  BYTE1(v20[0]) = v5;
  BYTE2(v20[0]) = v6;
  BYTE3(v20[0]) = v7;
  WORD2(v20[0]) = 0;
  BYTE6(v20[0]) = v8;
  *(v20 + 7) = v9;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  result = sub_21720E9D8(v13, v12, v10, v11, __src);
  if (v3 && (v17 = __OFADD__(v3, 1), ++v3, v17))
  {
    __break(1u);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    memcpy(v19, __src, sizeof(v19));
    v18 = sub_2172147FC(v20, v19, v3, v4, v2);
    sub_21721D674(__src);
    return v18;
  }

  return result;
}

uint64_t sub_21721EEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v79 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v68 - v17;
  v77 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v68 - v25;
  v27 = sub_217204DD0(a2);
  v76 = v12;
  v71 = v18;
  if (v27 || (v28 = a5[12], v29 = OUTLINED_FUNCTION_29_32(), (v31 = v30(v29)) == 0))
  {
    sub_217751DE8();
  }

  else
  {
    a2 = v31;
  }

  v75 = a2;
  v32 = v77;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v81 = v32;
  v82 = v34;
  v72 = v35;
  v73 = AssociatedConformanceWitness;
  v83 = AssociatedConformanceWitness;
  v84 = v35;
  type metadata accessor for LibraryRequestConfigurationParameters();
  v81 = *a3;
  LOBYTE(v82) = *(a3 + 8);
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = v5;
  v37 = sub_217696EF4(&v81, sub_2175673CC, v36);
  v38 = a5[10];
  v39 = OUTLINED_FUNCTION_29_32();
  v40(v39);
  v41 = *(*v37 + 368);
  OUTLINED_FUNCTION_43_20();
  (*(v20 + 40))(v37 + v41, v26, v32);
  swift_endAccess();
  v42 = a5[11];
  v43 = v71;
  v44 = OUTLINED_FUNCTION_29_32();
  v45(v44);
  v46 = *(*v37 + 376);
  OUTLINED_FUNCTION_43_20();
  v47 = *(v76 + 40);
  v76 = v37;
  v47(v37 + v46, v43, v34);
  swift_endAccess();
  result = sub_217204DD0(v79);
  v80 = v6;
  v74 = a4;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    v49 = 0;
    v70 = a5[8];
    v71 = a5 + 8;
    v69 = v79 & 0xC000000000000001;
    do
    {
      v50 = result;
      if (v69)
      {
        v51 = MEMORY[0x21CEA2E30](v49, v79);
      }

      else
      {
        v51 = *(v79 + 8 * v49 + 32);
      }

      ++v49;
      v52 = v74;
      v87 = v70(v74, a5);
      MEMORY[0x28223BE20](v87, v53);
      *(&v68 - 4) = v52;
      *(&v68 - 3) = a5;
      v55 = v76;
      v54 = v77;
      *(&v68 - 2) = v51;
      *(&v68 - 1) = v55;
      v56 = a5[2];
      v81 = v52;
      v82 = v54;
      v83 = AssociatedTypeWitness;
      v84 = v56;
      v85 = v73;
      v86 = v72;
      type metadata accessor for PartialLibraryPredicateResolver();
      sub_217752418();
      OUTLINED_FUNCTION_32_0();
      swift_getWitnessTable();
      sub_2177521C8();

      result = v50;
    }

    while (v50 != v49);
  }

  v87 = MEMORY[0x277D84F90];
  v57 = v75;
  result = sub_217204DD0(v75);
  if (!result)
  {

    v65 = MEMORY[0x277D84F90];
LABEL_21:
    v66 = v76;
    swift_beginAccess();
    v67 = *(v66 + 40);
    *(v66 + 40) = v65;

    return v66;
  }

  if (result >= 1)
  {
    v58 = 0;
    v79 = a5;
    v77 = a5[9];
    AssociatedTypeWitness = (a5 + 9);
    v73 = v57 & 0xC000000000000001;
    v59 = v74;
    do
    {
      v60 = result;
      if (v73)
      {
        v61 = MEMORY[0x21CEA2E30](v58, v57);
      }

      else
      {
        v61 = *(v57 + 8 * v58 + 32);
      }

      ++v58;
      v62 = v79;
      v81 = v77(v59, v79);
      MEMORY[0x28223BE20](v81, v63);
      *(&v68 - 4) = v59;
      *(&v68 - 3) = v62;
      *(&v68 - 2) = v61;
      *(&v68 - 1) = &v87;
      v64 = v62[2];
      type metadata accessor for LibrarySortDescriptorResolver();
      sub_217752418();
      OUTLINED_FUNCTION_32_0();
      swift_getWitnessTable();
      sub_2177521C8();

      result = v60;
      v57 = v75;
    }

    while (v60 != v58);

    v65 = v87;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_21721F744(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_18_5(a1);
}

uint64_t sub_21721F764(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_21721F7C4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_21721F82C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F794(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_21721F8B4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F7F4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_21721F910(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_21721F7A4(v2, v3);
  *v1 = result;
  return result;
}

void *sub_21721F938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21721F950@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21725A450(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21721F978(uint64_t *a1)
{
  v1 = *a1;
  sub_21721F9A4();
  return OUTLINED_FUNCTION_3_13(v2, v3);
}

uint64_t sub_21721F9B0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21721FA70(char a1)
{
  if (a1)
  {
    return 1954047342;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21721FA94()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

__n128 sub_21721FB18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21721FB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217751888();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21721FBD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217751888();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217220090()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_21722016C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21726D0EC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21722019C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21726D208();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21722025C()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2172202A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2172202B4()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2172202EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217220324()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21722037C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2172204D0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_217220594()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2172205DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722063C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217220654()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_217220690()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2172206E4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_217220A00()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v7 = MEMORY[0x277D84F90];
  *&v6 = MEMORY[0x277D84F90];
  *(&v6 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v1, v2, v3, v4, 5001813, 0xE300000000000000, 0, 0, v6, v7, &unk_282959AF8);
}

uint64_t sub_217220A5C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v7 = MEMORY[0x277D84F90];
  *&v6 = MEMORY[0x277D84F90];
  *(&v6 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v1, v2, v3, v4, 2, 0, 2, 0, v6, v7, &unk_282959AF8);
}

uint64_t sub_217220B14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudAlbum.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217220B98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudAlbum.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217220C14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_217220C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217220E8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217220E6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217221010(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_217221020(uint64_t result)
{
  if (result != 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_217221030()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_217221078()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2172210B0()
{
  if (*(v0 + 72) <= 8u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v2 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2172210F4()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_217221138()
{
  if (*(v0 + 72) <= 2u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v2 = OUTLINED_FUNCTION_164_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA28LibrarySearchExtendedResultsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217221630()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_217221668()
{
  if (v0[3] != 1)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  v5 = v0[16];

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2172216EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_2172217DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_217221848()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_21722188C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2172218DC()
{
  v1 = v0[5];

  if (v0[10] != 1)
  {

    v2 = v0[15];

    v3 = v0[20];

    v4 = v0[25];
  }

  v5 = v0[30];

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_217221980(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[22];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[32];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[66]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_217221A84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[22];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[66]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[32];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_217221BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_20();
  v6 = sub_2177512F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_217221C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2177512F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217221CFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217221D34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_217221EA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217221F70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudMusicVideo.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217221FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudMusicVideo.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217222064(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2172220F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722232C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177517D8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_217222374(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177517D8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2172225C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217222648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172226C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 88));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_217222748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 88));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722289C(char a1)
{
  if (!a1)
  {
    return 0x7472616863;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x6449726564726FLL;
}

BOOL sub_217222938()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

uint64_t sub_217222980()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_217222A50(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_217222A88(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = MEMORY[0x277D84F90];
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_217222D14()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_217222D5C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  if (v0[11] != 1)
  {
  }

  if (v0[14])
  {
    v4 = v0[13];

    v5 = v0[14];
  }

  if (v0[17])
  {
    v6 = v0[16];

    v7 = v0[17];
  }

  v8 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_217222DEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_217222E28()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_217222E78()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[14];

  v4 = v0[19];

  v5 = v0[24];

  v6 = v0[29];

  v7 = v0[34];

  if (v0[39])
  {

    v8 = v0[44];
  }

  if (v0[54])
  {
    v9 = v0[49];

    v10 = v0[54];
  }

  v11 = v0[55];

  return MEMORY[0x2821FE8E8](v0, 448, 7);
}

uint64_t sub_217222F14()
{
  if (v0[5] != 1)
  {
    if (v0[2] != 1)
    {
      v1 = v0[2];

      v2 = v0[5];
    }

    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217222F74()
{
  if (*(v0 + 40) != 1)
  {
    if (*(v0 + 16) != 1)
    {
      v1 = *(v0 + 16);

      v2 = *(v0 + 40);
    }
  }

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_217223174()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_217223210()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2172232D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_21722333C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_21722342C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722347C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  if (v0[20])
  {

    v9 = v0[22];
  }

  if (v0[24])
  {

    v10 = v0[26];
  }

  v11 = v0[28];

  v12 = v0[30];

  v13 = v0[32];

  v14 = v0[34];

  v15 = v0[35];

  v16 = v0[37];

  v17 = v0[41];

  if (v0[42])
  {
    v18 = v0[45];
  }

  return MEMORY[0x2821FE8E8](v0, 369, 7);
}

uint64_t sub_217223598(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[29];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[60]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21722369C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[9];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[60]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[29];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_217223960(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_2173A9DF4();
  *v1 = result;
  return result;
}

uint64_t sub_21722398C(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_2173A9ECC();
  *v1 = result;
  return result;
}

uint64_t sub_2172239B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_21720BEDC();
  *v1 = result;
  return result;
}

uint64_t sub_2172239E4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_2173AA050();
  *v1 = result;
  return result;
}

uint64_t sub_217223A10(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_217212474();
  *v1 = result;
  return result;
}

uint64_t sub_217223A64(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_38(a1);
  result = sub_2173AA260();
  *v1 = result;
  return result;
}

uint64_t sub_217223B70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217223C58()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_217223D10()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_217223DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2173C47B8();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_217223E38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2172247C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2172C3638(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217224940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  else
  {
    return sub_217753058() & 1;
  }
}

uint64_t sub_2172249B8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2172249EC()
{
  OUTLINED_FUNCTION_1101((v0 + 16));
  OUTLINED_FUNCTION_207_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_217224A20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v3 = v0[12];

  v4 = v0[14];

  OUTLINED_FUNCTION_1438();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_217224A74()
{
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_1438();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_217224AC0()
{
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

BOOL sub_217224E8C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_217224F0C()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_217224F78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217225068()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2172250F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2172251B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217225268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_217751518();
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_217225358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2177516D8();
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_217751518();
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21722546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2172254F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2172255C4()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722560C()
{
  v0 = sub_217752DC8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_217225658(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1954047342;
  }

  return 0xD000000000000019;
}

uint64_t sub_2172256A0()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_21722570C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21722580C()
{
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_41_0(*(v0 + 32));
  v4 = *(v3 + 8);
  v5 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v6 = *(v3 + 64);
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_61_9();
  v10 = *(v9 + 64);
  v13 = v11 | v12;
  v15(v0 + v14);
  (*(v7 + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8E8](v0, v1 + v10, v13 | 7);
}

__n128 sub_2172258F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_2172259C0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_217225A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_217225AB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217225C28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217225C60()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_217225CCC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_217225D0C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217225E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 72));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217225EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217225FAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = JSONDecoder.sharedRelatedItemStore.getter();
  *a2 = result;
  return result;
}

uint64_t sub_217225FDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217226100()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_217226148()
{
  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21722618C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2172261C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2172262A8()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_217226314()
{
  if (v0[3] != 1)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  v5 = v0[16];

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_217226394()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2172263D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_217226440()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217226530()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2172265BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 72);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 104));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2172266C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 104)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 72);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

char *sub_217226864(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226884(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226924(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226944(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226968(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_21722698C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172269B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

uint64_t sub_217226BA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_217513F64();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217226BD8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138D4();
}

uint64_t sub_217226C00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_21751417C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217226C30(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138E8();
}

uint64_t sub_217226C58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_217514530();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217226C88(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138FC();
}

uint64_t sub_217226DA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217226DDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_217226EA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217226F5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217226FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_217227070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217227278(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudArtist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_2172272F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudArtist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722736C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2172273FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722756C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 184);

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_2172275AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_217227618()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217227708()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_217227758()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  if (v0[20])
  {

    v9 = v0[22];
  }

  if (v0[24])
  {

    v10 = v0[26];
  }

  v11 = v0[28];

  v12 = v0[30];

  v13 = v0[32];

  v14 = v0[34];

  v15 = v0[35];

  v16 = v0[37];

  v17 = v0[41];

  if (v0[42])
  {
    v18 = v0[45];
  }

  return MEMORY[0x2821FE8E8](v0, 369, 7);
}

uint64_t sub_217227874(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[8];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[34];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[72]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_217227978(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[8];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[72]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[34];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_217227EC0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_217227F2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_21722801C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2172280A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217228164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217228268()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v8);

  v12 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_217228404(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722847C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172284F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_217228588(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172287C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217228858(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2172289D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_217228A40()
{
  if (v0[3] != 1)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  v5 = v0[16];

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_217228AC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_217228B00()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {

    v5 = v0[15];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_217228B6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217228C5C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_217228CE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[13];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[67]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_217228DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[67]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[13];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_217228F2C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_217229124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_41();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217229198()
{
  OUTLINED_FUNCTION_22_41();
  swift_getWitnessTable();

  return sub_217752638();
}

uint64_t sub_21722920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_41();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217229284()
{
  if (*(v0 + 72) <= 8u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2172292D4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21722930C()
{
  if (*(v0 + 72) <= 2u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_217229354()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21722939C()
{
  if (*(v0 + 72) <= 4u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2172295A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

BOOL sub_217229638()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

uint64_t sub_21722991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_217229970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2172299F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_217229A44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217229A84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudCurator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217229AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudCurator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217229B78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 40));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_217229C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 40));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217229D0C()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_217229D78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_217229EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217229F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21722A080(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudRadioShow.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722A0F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudRadioShow.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A174(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 44));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722A204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 44));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A34C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudGenre.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722A3C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudGenre.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A440(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 56));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722A4D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 56));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A5D4()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21722A648()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21722A680()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21722A6D0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21722A930@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2175FDA7C();
  *a2 = result;
  return result;
}

uint64_t sub_21722AE18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722AE60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722AE98()
{
  OUTLINED_FUNCTION_188_7();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21722AEF0()
{
  if (*(v0 + 72) <= 8u)
  {
    v1 = *(v0 + 24);

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21722B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21722B16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

id sub_21722B208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21763B0A4();
  *a2 = v5;
  return result;
}

id sub_21722B234(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_21763B0B4();
}

uint64_t sub_21722B25C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722B2E4()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21722B350()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21722B390()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_21722B480()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722B50C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[9];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[13];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[17]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21722B610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[9];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[17]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[13];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_21722B81C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudRecordLabel.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722B894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudRecordLabel.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722B910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722B9A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722BACC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudStation.StreamingKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_21722BC00@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_21722BC2C@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t sub_21722BCB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21722BCF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  OUTLINED_FUNCTION_43(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);
  if (v10 >> 60 != 15)
  {
    sub_217275694(*(v0 + v7), v10);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_21722BDD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21722BE08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722BE44()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_21722BE84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2175FDA7C();
  *a2 = result;
  return result;
}

uint64_t sub_21722BEBC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21722BEF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21722BF38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_21722BF74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_21722BFB8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21722BFEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_21722C028()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21722C068()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21722C0B8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21722C3B8@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudVocalStrength.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21722C7D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722C84C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722C8C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 32));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722C958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 32));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722CC08()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21722CC50(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudSong.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722CCC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudSong.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722CD44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722CDD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

BOOL sub_21722CF24(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_21722CF54()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21722CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  v17 = MEMORY[0x277D84F90];
  *&v16 = MEMORY[0x277D84F90];
  *(&v16 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, a6);
}

uint64_t sub_21722CFF4()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21722D038()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21722D0B0()
{
  v0 = sub_217752DC8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21722D0FC(char a1)
{
  if (!a1)
  {
    return 1954047342;
  }

  if (a1 == 1)
  {
    return 0x6E6572727563636FLL;
  }

  return 0x74657366666FLL;
}

uint64_t sub_21722D150()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21722D218(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v2 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_21722D28C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_21722D304(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v5 = OUTLINED_FUNCTION_14_60();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_21722D390(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_21722D924()
{
  if (v0[3] != 1)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  v5 = v0[16];

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21722D9A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 168);

  v4 = *(v0 + 208);

  v5 = *(v0 + 248);

  v6 = *(v0 + 288);

  v7 = *(v0 + 328);

  if (*(v0 + 384))
  {

    v8 = *(v0 + 384);

    v9 = *(v0 + 424);
  }

  if (*(v0 + 512))
  {

    v10 = *(v0 + 504);

    v11 = *(v0 + 512);
  }

  v12 = *(v0 + 528);

  v13 = *(v0 + 536);

  v14 = *(v0 + 552);

  return MEMORY[0x2821FE8E8](v0, 561, 7);
}

uint64_t sub_21722DA94()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722DB20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v7 = OUTLINED_FUNCTION_79(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_79(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[22];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[45]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21722DC24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = OUTLINED_FUNCTION_79(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[6];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    result = OUTLINED_FUNCTION_79(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[45]) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[22];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_21722DDDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudStation.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722DE60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudStation.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722DEDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 40));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 76));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_21722DF60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 76));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E0F0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21722E19C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21722E1EC()
{
  v0 = sub_217752DC8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21722E238(char a1)
{
  if (!a1)
  {
    return 1836213620;
  }

  if (a1 == 1)
  {
    return 1954047342;
  }

  return 0x7079742D6D657469;
}

uint64_t sub_21722E2B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21722E2F4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_21722E344()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722E3D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21722E424()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2176DFCDC();
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C22PersonalRecommendationV7ContentOGGSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21722E5CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudSocialProfile.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722E644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudSocialProfile.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E6C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722E750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E8F8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_21722EB68()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_21722EBC0(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 1701080931;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6C6961746564;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21722EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  else
  {
    return OUTLINED_FUNCTION_25_62();
  }
}

uint64_t sub_21722F1F0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21722F228()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v8 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_21722F328()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_21722F4B8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_136(a1);
  result = sub_217710DFC(v3, v4, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_21722F8F0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v1 = *(v0 + 80);

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21722F9A0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21722F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21722FA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21722FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v6, v7, v8, v9, v11, v10, 0, 0, v13, v14, a5);
}

uint64_t sub_21722FD38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21722FE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21722FEC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_21722FFCC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = MusicItemCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_21722FFF8@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MusicItemCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

__n128 sub_217230044(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2172300B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_217230150(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_2172302CC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  v5 = *v3;
  result = LegacySectionedCollectionItemLoader.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_2172302FC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_21723035C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217230394()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_217230498(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172304B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172304D8(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, a2);
  }

  return result;
}

uint64_t sub_2172304FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21723051C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21723057C@<X0>(Swift::String *a1@<X0>, MusicKit::MusicItemID *a2@<X8>)
{
  v4 = MusicItemID.init(stringLiteral:)(*a1);
  result = v4.rawValue._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_2172305CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217366EC4(a1, a2);
  *a3 = result & 1;
  return result;
}

id getMPModelLibrarySearchScopeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibrarySearchScopeClass_softClass;
  v7 = getMPModelLibrarySearchScopeClass_softClass;
  if (!getMPModelLibrarySearchScopeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibrarySearchScopeClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibrarySearchScopeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2172308D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217230C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelRelationshipGenericSong()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  v8 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericSongSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericSong");
    getMPModelRelationshipGenericSongSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPModelLibrarySearchScopeClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPModelLibrarySearchScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibrarySearchScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibrarySearchScopeClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPModelObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass;
  v7 = getMPModelObjectClass_softClass;
  if (!getMPModelObjectClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217231628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172318A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelLibraryPinClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPinClass_softClass;
  v7 = getMPModelLibraryPinClass_softClass;
  if (!getMPModelLibraryPinClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPinClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibraryPinClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21723198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_0(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreBrowseContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1();
    return __getMPModelLibraryPinClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelLibraryPinClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelLibraryPin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPinClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPinClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelCurator *)v3 kindForRawValue:v4, v5];
  }

  return result;
}

os_log_t MusicKit_Logging_Artwork()
{
  v0 = os_log_create("com.apple.MusicKit", "Artwork");

  return v0;
}

os_log_t MusicKit_Logging_Library()
{
  v0 = os_log_create("com.apple.MusicKit", "Library");

  return v0;
}

void sub_217232224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibrarySearchRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782296D0;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
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
  result = objc_getClass("MPModelLibrarySearchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibrarySearchRequestClass_block_invoke_cold_1();
  }

  getMPModelLibrarySearchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21723282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreLibraryPersonalizationRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229710;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
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
  result = objc_getClass("MPStoreLibraryPersonalizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreLibraryPersonalizationRequestClass_block_invoke_cold_1();
  }

  getMPStoreLibraryPersonalizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_217232EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIGraphicsImageRendererFormatClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIGraphicsImageRendererFormatClass_softClass;
  v7 = getUIGraphicsImageRendererFormatClass_softClass;
  if (!getUIGraphicsImageRendererFormatClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIGraphicsImageRendererFormatClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIGraphicsImageRendererFormatClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIGraphicsImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIGraphicsImageRendererClass_softClass;
  v7 = getUIGraphicsImageRendererClass_softClass;
  if (!getUIGraphicsImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIGraphicsImageRendererClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIGraphicsImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217233E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIFontClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIFontClass_softClass;
  v7 = getUIFontClass_softClass;
  if (!getUIFontClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIFontClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIFontClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIColorClass_softClass;
  v7 = getUIColorClass_softClass;
  if (!getUIColorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIColorClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217234000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIImageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getUIImageClass_softClass;
  v16 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getUIImageClass_block_invoke;
    v12[3] = &unk_278229610;
    v12[4] = &v13;
    __getUIImageClass_block_invoke(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_217235390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPArtworkRepresentationClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229878;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_3)
    {
      if (!v5[0])
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
  result = objc_getClass("MPArtworkRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPArtworkRepresentationClass_block_invoke_cold_1();
  }

  getMPArtworkRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUIGraphicsImageRendererFormatClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIGraphicsImageRendererFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIGraphicsImageRendererFormatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIGraphicsImageRendererFormatClass_block_invoke_cold_1();
    return UIKitLibrary();
  }

  return result;
}

uint64_t UIKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229890;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getEMFStringUtilitiesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __EmojiFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782298A8;
    v7 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (EmojiFoundationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("EMFStringUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEMFStringUtilitiesClass_block_invoke_cold_1();
  }

  getEMFStringUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUIGraphicsImageRendererClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIGraphicsImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIGraphicsImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIGraphicsImageRendererClass_block_invoke_cold_1();
    return __getUIFontWeightSemiboldSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getUIFontWeightSemiboldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIFontWeightSemibold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIFontWeightSemiboldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIFontClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIFontClass_block_invoke_cold_1();
    return __getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontIgnoreLegibilityWeightAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreTextLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782298C0;
    v6 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkCTFontOpticalSizeAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontOpticalSizeAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontOpticalSizeAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNSMutableParagraphStyleClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("NSMutableParagraphStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSMutableParagraphStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNSMutableParagraphStyleClass_block_invoke_cold_1();
    return __getUIColorClass_block_invoke(v3);
  }

  return result;
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIColorClass_block_invoke_cold_1();
    return __getNSFontAttributeNameSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getNSFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSKernAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSKernAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSKernAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSParagraphStyleAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSParagraphStyleAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getJULanguageAwareStringClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!JetUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __JetUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782298D8;
    v7 = 0;
    JetUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (JetUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("JULanguageAwareString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getJULanguageAwareStringClass_block_invoke_cold_1();
  }

  getJULanguageAwareStringClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __JetUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  JetUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreImageLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782298F0;
    v7 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreImageLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIImageClass_block_invoke_cold_1();
  }

  getCIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

MusicKit_SoftLinking_CoverArtworkRecipe *__getUIImageClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColor *a9)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v11 = __getUIImageClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_CoverArtworkRecipe *)v11 initWithExpression:v12 version:v13 backgroundColor:v14 primaryColor:v15 secondaryColor:v16 tertiaryColor:v17 textColor:v18, a9];
  }

  return result;
}

void sub_217238638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229948;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_4)
    {
      if (!v5[0])
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
  result = objc_getClass("MPMusicPlayerPlayParametersQueueDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke_cold_1();
  }

  getMPMusicPlayerPlayParametersQueueDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_217239B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21723A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPNowPlayingInfoAudioFormatClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_6)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_6;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229A08;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_6)
    {
      if (!v5[0])
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
  result = objc_getClass("MPNowPlayingInfoAudioFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPNowPlayingInfoAudioFormatClass_block_invoke_cold_1();
  }

  getMPNowPlayingInfoAudioFormatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21723A3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_7;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229A20;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_7)
    {
      if (!v5[0])
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
  result = objc_getClass("MPModelLibrarySDKAddToPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibrarySDKAddToPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_7(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_7 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass;
  v7 = getMPIdentifierSetClass_softClass;
  if (!getMPIdentifierSetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21723A6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MPStoreItemMetadataInt64NormalizeStoreIDValue(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  v10 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  if (!getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_2();
    v8[3] = dlsym(v3, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
    getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(v1);

  return v4;
}

Class __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_8(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_8 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMPModelRadioStationKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelRadioStationKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRadioStationKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRadioStationKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPModelSocialPersonKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelSocialPersonKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelSocialPersonKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSocialPersonKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSocialPersonKindClass_block_invoke_cold_1();
    return __getMPModelForYouRecommendationGroupKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelForYouRecommendationGroupKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelForYouRecommendationGroupKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelForYouRecommendationGroupKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelForYouRecommendationGroupKindClass_block_invoke_cold_1();
    return __getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataNumberNormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPStoreItemMetadataNumberNormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataNumberNormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21723D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMusicPlayerPlayParametersClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_9;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278229C10;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_9 = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_9)
    {
      if (!v5[0])
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
  result = objc_getClass("MPMusicPlayerPlayParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMusicPlayerPlayParametersClass_block_invoke_cold_1();
  }

  getMPMusicPlayerPlayParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_9(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_9 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21723D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21723D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPMediaItemPropertyStoreID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreID");
    getMPMediaItemPropertyStoreIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertySubscriptionStoreItemID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertySubscriptionStoreItemID");
    getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyStoreCloudUniversalLibraryID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreCloudUniversalLibraryID");
    getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyAlbumTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumTitle");
    getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyArtist()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  if (!getMPMediaItemPropertyArtistSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyArtist");
    getMPMediaItemPropertyArtistSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyStoreGenreID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreGenreID");
    getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyGenre()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  if (!getMPMediaItemPropertyGenreSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyGenre");
    getMPMediaItemPropertyGenreSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyPlaybackDuration()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  if (!getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyPlaybackDuration");
    getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyAlbumTrackNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumTrackNumber");
    getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyDiscNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyDiscNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyDiscNumber");
    getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyReleaseDate()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  if (!getMPMediaItemPropertyReleaseDateSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyReleaseDate");
    getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyIsExplicit()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsExplicitSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyIsExplicit");
    getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyIsMusicVideo()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyIsMusicVideo");
    getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyVideoQuality()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyVideoQualitySymbolLoc_ptr;
  v8 = getMPMediaItemPropertyVideoQualitySymbolLoc_ptr;
  if (!getMPMediaItemPropertyVideoQualitySymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyVideoQuality");
    getMPMediaItemPropertyVideoQualitySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyColorCapability()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr;
  v8 = getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr;
  if (!getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyColorCapability");
    getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_10(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_10 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMPModelObjectMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPModelObjectMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectMediaItemClass_block_invoke_cold_1();
    return __getMPModelObjectClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelObjectClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyStoreIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyStoreIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertySubscriptionStoreItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreCloudUniversalLibraryID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyStoreGenreIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreGenreID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPlaybackDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyPlaybackDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyReleaseDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyReleaseDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyIsExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyIsMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyVideoQualitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyVideoQuality");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyVideoQualitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyColorCapabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyColorCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPStoreItemMetadataItemKindMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataItemKindSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPStoreItemMetadataItemKindSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataItemKindSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_217240CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelCuratorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelCuratorClass_softClass;
  v7 = getMPModelCuratorClass_softClass;
  if (!getMPModelCuratorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelCuratorClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelCuratorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217240E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPArtworkCatalogClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPArtworkCatalogClass_softClass;
  v7 = getMPArtworkCatalogClass_softClass;
  if (!getMPArtworkCatalogClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPArtworkCatalogClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPArtworkCatalogClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2172410C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217241388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_11(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_11 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMPModelCuratorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelCurator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCuratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCuratorClass_block_invoke_cold_1();
    return __getMPModelArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelArtistClass_block_invoke_cold_1();
    return __getMPModelComposerClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelComposerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelComposerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelComposerClass_block_invoke_cold_1();
    return __getMPModelCreditsArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelCreditsArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelCreditsArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCreditsArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCreditsArtistClass_block_invoke_cold_1();
    return __getMPModelFileAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelFileAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelFileAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelFileAssetClass_block_invoke_cold_1();
    return __getMPModelGenreClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelGenreClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenreClass_block_invoke_cold_1();
    return __getMPModelHomeSharingAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelHomeSharingAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelHomeSharingAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelHomeSharingAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelHomeSharingAssetClass_block_invoke_cold_1();
    return __getMPModelLyricsClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelLyricsClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLyricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLyricsClass_block_invoke_cold_1();
    return __getMPModelLibraryPinClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelLibraryPinClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLibraryPin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPinClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPinClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistAuthorClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistAuthorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylistAuthor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistAuthorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistAuthorClass_block_invoke_cold_1();
    return __getMPModelPlaylistEntryReactionClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryReactionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylistEntryReaction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryReactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryReactionClass_block_invoke_cold_1();
    return __getMPModelPlaybackPositionClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaybackPositionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaybackPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaybackPositionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaybackPositionClass_block_invoke_cold_1();
    return __getMPModelRecordLabelClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRecordLabelClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelRecordLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRecordLabelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRecordLabelClass_block_invoke_cold_1();
    return __getMPModelSocialPersonClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelSocialPersonClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelSocialPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSocialPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSocialPersonClass_block_invoke_cold_1();
    return __getMPModelRadioStationClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRadioStationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRadioStationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRadioStationClass_block_invoke_cold_1();
    return __getMPModelStoreAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelStoreAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelStoreAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreAssetClass_block_invoke_cold_1();
    return __getMPModelTVShowClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelTVShowClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelTVShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVShowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVShowClass_block_invoke_cold_1();
    return __getMPArtworkCatalogClass_block_invoke(v3);
  }

  return result;
}

Class __getMPArtworkCatalogClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPArtworkCatalog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPArtworkCatalogClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPArtworkCatalogClass_block_invoke_cold_1();
    return __getMPModelObjectClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelObjectClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelPlaylistEntry *)v3 typeForRawValue:v4, v5];
  }

  return result;
}

id getMPModelLibraryPlaylistEditChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217241E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass;
  v7 = getMPMutableSectionedCollectionClass_softClass;
  if (!getMPMutableSectionedCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217241F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPModelLibraryPlaylistEditChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_12(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_12(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

MusicKit_SoftLinking_MPModelRequest *__getMPMutableSectionedCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return +[(MusicKit_SoftLinking_MPModelRequest *)v3];
  }

  return result;
}

void sub_21724312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyAlbumCleanDownloadedTrackCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumCleanDownloadedTrackCount");
    getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_217243814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217243AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217243CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyLyricsHasLibraryLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasLibraryLyrics");
    getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyLyricsHasStoreLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasStoreLyrics");
    getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyLyricsHasTimeSyncedLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasTimeSyncedLyrics");
    getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_217244790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217244B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217245028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172453B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217245954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172483D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_13(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_13(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_13 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMPModelKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelKindClass_block_invoke_cold_1();
    return __getMPModelStoreBrowseContentItemClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreBrowseContentItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1_0();
    return __getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemPropertyItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericRadioStationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistEntrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVEpisodeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySectionTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySectionTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySectionTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCleanDownloadedTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCleanSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCleanSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumMaximumItemTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumHasCleanContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumHasCleanContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumHasExplicitContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumHasExplicitContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsCompilationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsCompilation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsClassicalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsClassical");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumClassicalExperienceAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumReleaseDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCopyrightTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCopyrightText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumPreorderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumPreorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumPreorderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumShortEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumShortEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumVolumeNormalization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsStoreRedownloadable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDownloadedTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistCleanSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistCleanSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistCleanDownloadedSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistDownloadedSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistDownloadedSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistAlbumCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistAlbumCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistAlbumCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumRepresentativeSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistClassicalExperienceAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorHandleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorHandleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorSubKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorSubKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorSubKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyComposerNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyComposerName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyComposerNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyComposerLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyComposerLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyGenreNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyGenreName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyGenreLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyGenreLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetNonPurgeableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetNonPurgeable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetProtectionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetProtectionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasLibraryLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasStoreLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasTimeSyncedLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}