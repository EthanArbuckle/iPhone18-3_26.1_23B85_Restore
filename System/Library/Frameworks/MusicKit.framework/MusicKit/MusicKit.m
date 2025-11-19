uint64_t static MusicLibrary.shared.getter()
{
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11();
  }
}

void *sub_2171EFFE0()
{
  type metadata accessor for MusicLibrary();
  OUTLINED_FUNCTION_1212();
  swift_allocObject();
  result = sub_2171F0048(0);
  qword_280BE8C30 = result;
  return result;
}

void *sub_2171F0048(id a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = v16 - v4;
  v1[2] = 0;
  v1[3] = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB282C8, &qword_21776C3B8);
  v6 = swift_allocObject();
  *(v6 + 56) = 0;
  sub_2171F0688(v16, v6 + 16, &qword_27CB27588, &unk_21776ADE0);
  sub_2171F0790(v16, &qword_27CB27588, &unk_21776ADE0);
  v1[4] = v6;
  static MusicAuthorization.currentStatus.getter(v16);
  switch(LOBYTE(v16[0]))
  {
    case 3:

      goto LABEL_5;
    default:
      v7 = sub_217753058();

      if (v7)
      {
LABEL_5:
        v8 = a1;
        if (!a1)
        {
          v8 = [objc_opt_self() deviceLibrary];
        }

        v9 = v1[2];
        v1[2] = v8;
        a1 = a1;

        sub_2171F55D8();
      }

      v10 = sub_217752538();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v11;
      v13 = sub_2172AE5E0(0, 0, v5, &unk_21776C3C8, v12);

      sub_2171F0790(v5, &qword_27CB24D78, &qword_217759EA0);
      v14 = v1[3];
      v1[3] = v13;

      return v1;
  }
}

uint64_t sub_2171F02FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2171F0330()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_1212();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_59@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_217284868();
}

_OWORD *OUTLINED_FUNCTION_80_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_2172124CC(&a11, &a16);
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 8);
}

uint64_t OUTLINED_FUNCTION_80_4@<X0>(char a1@<W8>)
{
  *(v1 + 104) = a1;
  result = v1 + 104;
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  return result;
}

void *OUTLINED_FUNCTION_80_8@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 720), (v2 + a1), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_80_9()
{
  v2 = v0[50];
  result = v0[51];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[38];
  v11 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  return result;
}

void *OUTLINED_FUNCTION_80_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v44 = a43;

  return __swift_project_boxed_opaque_existential_1(&a40, v44);
}

void *OUTLINED_FUNCTION_80_12(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_80_14()
{
  v2 = v0[164];
  v3 = v0[163];
  v4 = v0[162];
  v5 = v0[161];
  v6 = v0[160];
  v7 = v0[159];
  v8 = v0[156];
  v9 = v0[155];
}

uint64_t OUTLINED_FUNCTION_80_15(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2080, v2, v3);
}

void OUTLINED_FUNCTION_80_16()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_80_19()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
}

uint64_t sub_2171F0688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_2171F06D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2171F0738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_43(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2171F0790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_41_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  v1 = v0[402];
  v2 = v0[399];
  v3 = *(v0[403] + 32);
  return v0[404];
}

void *OUTLINED_FUNCTION_35_5(uint64_t a1)
{
  v3 = *(a1 + 44);

  return memcpy(&STACK[0x598], (v1 + v3), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_133_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_189()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1)
{
  v6 = *(v2 + 24);

  return sub_21763F724(a1, v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return sub_2171F0738(v0 + 5520, v1, v2);
}

void OUTLINED_FUNCTION_1_0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[4] = a2;
  a1[5] = a2;
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return sub_2171FF30C(v1, v0 + 672);
}

uint64_t OUTLINED_FUNCTION_35_15()
{
  *(v0 + 16) = 0u;
  *(v0 + 72) = 0u;
  v1 = *(v0 + 472);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v2 = *(v1 + 64);
  *(v0 + 480) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1413()
{
  *(v1 + 32) = v0;

  return type metadata accessor for AnyMusicProperty();
}

void OUTLINED_FUNCTION_35_17(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 160) = a4;
  v6 = *a2;
  v7 = *(v4 + 64);
  *(v5 - 136) = *(v4 + 56);
}

uint64_t OUTLINED_FUNCTION_35_18()
{
  result = *(v0 + 240);
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_19()
{
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0;
}

uint64_t OUTLINED_FUNCTION_35_22(uint64_t a1)
{
  *(v1 + 288) = a1;
}

uint64_t OUTLINED_FUNCTION_35_24()
{

  return swift_once();
}

void OUTLINED_FUNCTION_35_29()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_35_30()
{
  v2 = *(v1 + 480);
  *(v0 + 2464) = *(v1 + 464);
  *(v0 + 2480) = v2;
  result = *(v1 + 496);
  v4 = *(v1 + 512);
  *(v0 + 2496) = result;
  *(v0 + 2512) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_31()
{

  return sub_2173DC9A4(v0, v1 - 256);
}

uint64_t OUTLINED_FUNCTION_35_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_36()
{
  result = sub_21725CF00(v1, v2);
  *(v0 + 544) = 0;
  v4 = *(v0 + 440);
  return result;
}

double OUTLINED_FUNCTION_35_37()
{
  *(v0 + 960) = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_41()
{
  v2 = *(v0 + 352);
}

void *OUTLINED_FUNCTION_35_42()
{

  return memcpy((v0 + 632), (v0 + 504), 0x68uLL);
}

id static MusicAuthorization.currentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280BE9F10 != -1)
  {
    OUTLINED_FUNCTION_1_42();
    swift_once();
  }

  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  result = [qword_280C029A0 authorizationStatusForScopes_];
  if (result >= 4)
  {
    sub_217752AA8();
    v3 = OUTLINED_FUNCTION_7_26();
    MEMORY[0x21CEA23B0](v3);
    type metadata accessor for ICCloudServiceAuthorizationStatus(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_6_28();
    OUTLINED_FUNCTION_3_42();
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

void sub_2171F0F4C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2171F0F98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1_7()
{
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

size_t OUTLINED_FUNCTION_1_14(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  *(v0 + 8) = sub_2172B5158;
  v2 = *(v1 + 88);
  return v1 + 32;
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_87_0()
{
  *(v0 + 16) = v1;
  v4 = *(v3 + 32);
  return v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_196()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_1_18(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>, __n128 a9@<Q7>)
{
  *v12 = v21;
  *(v12 + 8) = v18;
  *(v12 + 16) = a1;
  *(v12 + 24) = v19;
  *(v12 + 32) = v13;
  *(v12 + 33) = *v32;
  *(v12 + 36) = *&v32[3];
  *(v12 + 40) = v20;
  *(v12 + 48) = v14;
  *(v12 + 56) = a3;
  *(v12 + 72) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a7;
  *(v12 + 120) = a8;
  *(v12 + 136) = a9;
  *(v12 + 152) = v22;
  *(v12 + 168) = v23;
  *(v12 + 184) = v24;
  *(v12 + 200) = v25;
  *(v12 + 216) = v26;
  *(v12 + 232) = v27;
  *(v12 + 248) = v28;
  *(v12 + 264) = v16;
  *(v12 + 272) = v10;
  *(v12 + 276) = *&v31[3];
  *(v12 + 273) = *v31;
  *(v12 + 280) = v15;
  *(v12 + 288) = v17;
  *(v12 + 296) = v30;
  *(v12 + 304) = v29;
  *(v12 + 312) = v9;
  *(v12 + 320) = a2;
  *(v12 + 336) = a4;
  *(v12 + 352) = v11;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{

  return sub_2173C381C(a1, a2, 0, 0, 0, 0, 2, 0, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_1_23()
{
  v0[2] = 0;
  *(v1 - 72) = 0;
  v0[4] = 0;
  v0[6] = 0;
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1_32()
{
  v1 = v0[399];
  v2 = v0[398];
  v3 = v0[397];
  v4 = v0[396];
  v5 = v0[395];
  v6 = v0[392];
  v12 = v0[394];
  v13 = v0[391];
  v14 = v0[390];
  v15 = v0[389];
  v16 = v0[388];
  v17 = v0[387];
  v7 = v0[386];
  v18 = v0[385];
  v8 = v0[384];
  v9 = v0[383];
  v10 = v0[382];
  return v0[377];
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_39()
{
  result = v0;
  v3 = *(v1 - 240);
  v4 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_53()
{
  v2 = *(v0 + 16);
  *(v1 + 2456) = *v0;
  *(v1 + 2472) = v2;
  *(v1 + 2488) = *(v0 + 32);
  *(v1 + 2504) = *(v0 + 48);
  v3 = *(v1 + 2640);
  result = __swift_project_boxed_opaque_existential_1((v1 + 2608), *(v1 + 2632));
  v5 = *(v3 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_272()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1047(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_56()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_15_1(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_65()
{
  v2 = *(*(v0 + 32) + 16);
}

uint64_t (*OUTLINED_FUNCTION_0_5())()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 80);
  v4 = *(v0 - 64);
  v5 = *(v0 - 48);
  return sub_21729C9BC;
}

void OUTLINED_FUNCTION_1_67()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1_68(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_1_71()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_73()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(v17 + 80);
  v18 = *(v17 + 96);
  v22 = *(v17 + 112);
  result = a17;
  v20 = *(v17 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_1_81()
{
  *(v0 + 16) = v2;
  v5 = v0 + v3 * v1;
  result = *(v4 - 288);
  v7 = *(v4 - 272);
  v8 = *(v4 - 256);
  *(v5 + 80) = *(v4 - 240);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_85()
{
  v2 = *(v0 - 112);

  return sub_217752EE8();
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return sub_217752DE8();
}

void OUTLINED_FUNCTION_1_88()
{
  v1[12] = sub_217588E64;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_1_90()
{

  return sub_217752EA8();
}

__n128 OUTLINED_FUNCTION_1_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, __int128 a46, __n128 a47)
{
  result = a47;
  *(v47 + 16) = a46;
  *(v47 + 32) = a47;
  return result;
}

__n128 OUTLINED_FUNCTION_3_0()
{
  v1 = *(v0 - 128);
  *(v0 - 208) = *(v0 - 144);
  *(v0 - 192) = v1;
  result = *(v0 - 112);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_98(uint64_t a1, uint64_t a2)
{

  return sub_217202078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_101(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 2082;
  v3 = *(v1 + 272);
  return result;
}

void OUTLINED_FUNCTION_1_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(v21 - 240);
  v23 = *(v21 - 232);
  v25 = *(v21 - 244);

  sub_217486228(a1, a2, 0, 0, 0, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_1_105()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_1_108()
{
  v2 = v0[1].n128_u64[0];
  v3 = v0[1].n128_u64[1];
  result = *v0;
  *(v1 - 272) = *v0;
  *(v1 - 256) = v2;
  *(v1 - 248) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_109()
{
  result = *(v0 + 1456);
  if (*(v0 + 1464) != 1)
  {
    v2 = *(v0 + 1456);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_110()
{

  return sub_217751FF8();
}

__n128 OUTLINED_FUNCTION_1_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, __int128 a63)
{
  *v66 = a63;
  *(v66 + 16) = a64;
  result = a65;
  *(v66 + 32) = a65;
  *(v66 + 48) = a66;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_113(uint64_t a1, uint64_t a2)
{

  return sub_217202078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_115()
{

  return sub_217646070();
}

uint64_t OUTLINED_FUNCTION_1_118()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_1_120()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_1_121()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1F24(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_124()
{
  v2 = *(v0 - 296);

  return sub_217752DE8();
}

void OUTLINED_FUNCTION_1_126()
{
  v0[14] = 0;
  v0[16] = 0;
  v0[18] = 0;
  v0[20] = 0;
  v0[22] = 0;
}

uint64_t OUTLINED_FUNCTION_1_128()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_1_129(char a1)
{
  *(v1 + 856) = v2;
  *(v1 + 832) = a1 & 1;
  return v1 + 832;
}

void OUTLINED_FUNCTION_1_135(uint64_t a1@<X8>)
{
  *(a1 + 24) = v2;
  *(a1 + 32) = 10;
  *(a1 + 40) = v1;
}

void OUTLINED_FUNCTION_1_136(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

void OUTLINED_FUNCTION_1_137()
{
  v2 = *(v0 + 16) + 1;

  sub_2172AFF2C();
}

uint64_t OUTLINED_FUNCTION_1_139()
{
  v1 = *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_217204C78(v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_140()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_1_141()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  result = v0[13];
  v7 = *(v0[23] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_142()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_143()
{

  sub_217275C44();
}

uint64_t OUTLINED_FUNCTION_1_145()
{

  return sub_217752EA8();
}

void OUTLINED_FUNCTION_1_147()
{
  *(v5 - 176) = v2;
  *(v5 - 168) = v3;
  *(v5 - 160) = v4;
  *(v5 - 152) = v1;
  *(v5 - 144) = v0 & 1;
}

uint64_t OUTLINED_FUNCTION_1_148()
{

  return sub_217752F88();
}

void OUTLINED_FUNCTION_1_152()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1_153()
{

  return swift_getWitnessTable();
}

id sub_2171F2554()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7FA60]) init];
  [v0 setPrivacyAcknowledgementPolicy_];
  return v0;
}

id sub_2171F25A0()
{
  sub_2171F25D4();
  result = sub_2171F2554();
  qword_280C029A0 = result;
  return result;
}

unint64_t sub_2171F25D4()
{
  result = qword_280BEAE58;
  if (!qword_280BEAE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BEAE58);
  }

  return result;
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPMediaLibraryClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPMediaLibraryClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaLibraryClass_block_invoke_cold_1();
    return __getMPMediaLibraryClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPMediaLibraryClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPMediaLibraryClass_block_invoke_cold_1();
    return sub_2171F2764();
  }

  return result;
}

uint64_t sub_2171F2764()
{
  type metadata accessor for ArtworkLoadingProtocol.RegistrationCoordinator();
  swift_allocObject();
  result = sub_2171F27C8();
  qword_280BE9F18 = result;
  return result;
}

uint64_t sub_2171F27C8()
{
  v1 = objc_opt_self();
  type metadata accessor for ArtworkLoadingProtocol();
  [v1 registerClass_];
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_0_9(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void *OUTLINED_FUNCTION_180(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __src)
{

  return memcpy(&__dst, &__src, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_0_12()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_0_15()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1)
{
  *(a1 + 8) = sub_2172AAE98;
  result = v1[36];
  v3 = v1[37];
  v4 = v1[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_0_18()
{
  *(v0 - 304) = 0;
  *(v0 - 320) = 0;
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  *(v0 - 352) = 0;
}

__n128 OUTLINED_FUNCTION_0_20()
{
  v1 = STACK[0x420];
  v2 = STACK[0x428];
  v27 = STACK[0x430];
  v3 = STACK[0x438];
  v4 = LOBYTE(STACK[0x440]);
  LODWORD(STACK[0x590]) = STACK[0x441];
  LODWORD(STACK[0x593]) = STACK[0x444];
  v5 = STACK[0x448];
  v6 = STACK[0x450];
  v7 = *&STACK[0x458];
  v8 = *&STACK[0x468];
  v9 = *&STACK[0x478];
  v10 = *&STACK[0x488];
  v11 = *&STACK[0x498];
  v12 = *&STACK[0x4A8];
  v13 = *&STACK[0x4B8];
  v14 = *&STACK[0x4C8];
  v15 = *&STACK[0x4D8];
  v16 = *&STACK[0x4E8];
  v17 = *&STACK[0x4F8];
  v18 = *&STACK[0x508];
  v19 = *&STACK[0x518];
  v20 = STACK[0x528];
  v21 = LOBYTE(STACK[0x530]);
  LODWORD(STACK[0x588]) = *(v0 + 273);
  LODWORD(STACK[0x58B]) = STACK[0x534];
  v22 = STACK[0x538];
  v29 = STACK[0x550];
  v30 = STACK[0x548];
  v28 = STACK[0x558];
  result = *&STACK[0x560];
  v24 = LOBYTE(STACK[0x580]);
  v26 = *&STACK[0x570];
  v25 = STACK[0x540];
  return result;
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_172()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_217753208();
}

void OUTLINED_FUNCTION_2_3(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

void OUTLINED_FUNCTION_0_29()
{
  *(v0 + 20) = 1;
  *(v1 - 72) = 1;
  *(v0 + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return sub_217753058();
}

double OUTLINED_FUNCTION_0_34(uint64_t a1)
{
  *(a1 + 16) = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_0_51@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_55(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[6].n128_u64[0] = 0;
  a1[4] = a2;
  a1[5] = a2;
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

unint64_t OUTLINED_FUNCTION_0_57()
{
  v6 = v1[50];
  v5 = v1[51];
  v7 = v1[49];
  v8 = v1[47];
  v16 = v1[46];
  v17 = v1[43];
  v18 = v1[42];
  v19 = v1[41];
  v20 = v1[40];
  v21 = v1[39];
  v22 = v1[38];
  v23 = v1[37];
  v10 = v1[34];
  v9 = v1[35];
  *(v4 - 88) = v1[36];
  *(v4 - 80) = v9;
  v11 = v1[32];
  v12 = v1[33];
  v13 = v1[28];
  *(v2 + 16) = v0;
  v14 = *(v12 + 32);
  return v2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_473()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_58(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_64()
{
  v2 = *v0;
  v3 = *(v0 + 8);

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return sub_2174F83E4();
}

void *OUTLINED_FUNCTION_0_68(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2174FB8A8(v2, va);
}

__n128 OUTLINED_FUNCTION_0_70()
{
  *(v0 + 16) = v2;
  v4 = v0 + 56 * v3;
  result = *(v1 + 184);
  v6 = *(v1 + 200);
  v7 = *(v1 + 216);
  *(v4 + 80) = *(v1 + 232);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_72(uint64_t a1)
{
  *(a1 + 8) = sub_217206300;
  v2 = v1[11];
  result = v1[8];
  v4 = v1[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_75(uint64_t a1)
{
  *(v2 + 40) = a1;

  return MEMORY[0x28210EA10](v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_0_77()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[2];
  v8 = *(v0[11] + 24);
  return v0[4] + *(v0[3] + 44);
}

void OUTLINED_FUNCTION_0_80()
{
  v2 = *(v0 + 16);

  os_unfair_lock_lock(v2);
}

double OUTLINED_FUNCTION_0_81()
{
  result = 0.0;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_85()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_0_86()
{
  v2 = *(*(v0 + 32) + 16);
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_0_88()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_0_93(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = 0x40100u >> (8 * *v2);

  return sub_217661D6C(va);
}

uint64_t OUTLINED_FUNCTION_0_96()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_97()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_99()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_0_100()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_0_105()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_0_106(uint64_t a1)
{
  *(a1 + 8) = sub_2175A84A4;
  v2 = *(v1 + 560);
  v3 = *(v1 + 544);
  return v1 + 16;
}

void *OUTLINED_FUNCTION_0_108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, &STACK[0x2E0], 0x2D9uLL);
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_113()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_114()
{

  return sub_217753058();
}

__n128 OUTLINED_FUNCTION_0_117()
{
  v4 = *v0;
  v5 = v0[1];
  result = v0[2];
  v3 = v0[3];
  *(v1 - 48) = 0x6169726F74696445;
  *(v1 - 40) = 0xEF287365746F4E6CLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_119()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  v2 = *(v0 + 496);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  result = v0 + 8;
  v7 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{

  return sub_217202078(a1, &a63, v63, v64);
}

uint64_t OUTLINED_FUNCTION_0_122()
{
}

uint64_t OUTLINED_FUNCTION_0_123()
{

  return sub_217751DC8();
}

void OUTLINED_FUNCTION_0_127(unint64_t a1@<X8>)
{

  sub_2172B1F24(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_131(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v2;

  return sub_21766105C(va);
}

uint64_t OUTLINED_FUNCTION_0_132()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_134()
{
  v0[16] = 0;
  v0[18] = 0;
  v0[20] = 0;
  v0[22] = 0;
}

uint64_t OUTLINED_FUNCTION_0_138@<X0>(unint64_t a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2].n128_u64[0] = a1;
  return sub_217751DE8();
}

void OUTLINED_FUNCTION_0_140()
{
  v0[14] = 1;
  v0[16] = 1;
  v0[18] = 1;
}

uint64_t OUTLINED_FUNCTION_0_141()
{
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[100];
  v9 = v0[97];
}

uint64_t OUTLINED_FUNCTION_0_142(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v12 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_2173C381C(v12, a2, 0, 0, 0, 0, 2, 0, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_0_143()
{
  v2 = *(v0 + 16);

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_0_144@<Q0>(unint64_t a1@<X8>)
{
  result = *v1;
  v4 = *(v1 + 16);
  *&STACK[0x2A8] = *v1;
  *&STACK[0x2B8] = v4;
  STACK[0x2C8] = *(v2 - 96);
  STACK[0x2E8] = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_149()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_150@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_151@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v4 + 128);
  v7 = *(v4 + 136);
  *(v5 + 16) = v3;
  result = v5 + ((a1 + 32) & ~a1) + v1 * v2;
  v9 = *(v7 + 32);
  return result;
}

void OUTLINED_FUNCTION_0_152()
{

  sub_2172AFF2C();
}

uint64_t OUTLINED_FUNCTION_0_153()
{
  sub_2171F3F0C((v0 - 224), v0 - 176);
  v1 = *(v0 - 152);
  __swift_project_boxed_opaque_existential_1((v0 - 176), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_154@<X0>(unint64_t a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, __n128 a4@<Q1>)
{
  *a2 = a4;
  a2[1].n128_f64[0] = a3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = a1;
  return sub_217751DE8();
}

void OUTLINED_FUNCTION_0_155(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 + 72) = *a1;
  *(v1 + 64) = *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_0_156()
{
  *(v1 + 8) = sub_21770EF74;
  v2 = v0[26];
  result = v0[24];
  v4 = v0[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_158(uint64_t a1, unint64_t a2)
{
  sub_21726B8A0(a1, a2);

  return sub_21726B8A0(0, 2uLL);
}

uint64_t OUTLINED_FUNCTION_0_160()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_162(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_166()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_0_167()
{

  return sub_217752EA8();
}

uint64_t OUTLINED_FUNCTION_0_173(uint64_t a1, unint64_t a2)
{
  sub_21726B87C(a1, a2);
  sub_21726B87C(v2, v3);

  return sub_21726B8A0(v2, v3);
}

uint64_t sub_2171F3F0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MediaPlayerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229630;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary)
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

void MediaPlayerLibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278229668;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void MediaPlayerLibrary_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_5;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782299F0;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_5)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t MediaPlayerLibrary_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_8)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_8;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229B80;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_8 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_8;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_8)
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

uint64_t MediaPlayerLibrary_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_10)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_10;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229C98;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_10 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_10;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_10)
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

void MediaPlayerLibrary_4()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_11)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_11;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278229D28;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_11 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_11)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void MediaPlayerLibrary_5()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_12)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_12;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278229D88;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_12 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_12)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t MediaPlayerLibrary_6()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_13)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_13;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229DC8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_13 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_13;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_13)
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

uint64_t MediaPlayerLibrary_7()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_14)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_14;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229E30;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_14 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_14;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_14)
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

uint64_t MediaPlayerLibrary_8()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_16;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229F50;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_16 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_16;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_16)
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

uint64_t MediaPlayerLibrary_9()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_18;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229FE8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_18 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_18;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_18)
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

uint64_t MediaPlayerLibrary_10()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_20;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A058;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_20 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_20;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_20)
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

uint64_t MediaPlayerLibrary_11()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_22)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_22;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A0D8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_22 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_22;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_22)
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

void MediaPlayerLibrary_12()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlayerLibraryCore_block_invoke_24;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27822A188;
    v4 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_24 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_24)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t MediaPlayerLibrary_13()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_25;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A1A0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_25 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_25;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_25)
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

id getMPMediaLibraryStatusDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaLibraryStatusDidChangeNotification");
    getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_ptr = v6[3];
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

uint64_t sub_2171F4F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2171F0790(a1, &qword_27CB27588, &unk_21776ADE0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    result = dynamic_cast_existential_1_conditional(a3);
    if (result)
    {
      v8 = result;
      v9 = v7;
      sub_2171F0790(a1, &qword_27CB27588, &unk_21776ADE0);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      v13 = *(v11 + 8);
      v15[3] = v10;
      v15[4] = v11;
      __swift_allocate_boxed_opaque_existential_0(v15);

      v13(v14, v10, v12);
      sub_2171F9380(v10, v12, a1);
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return result;
}

uint64_t sub_2171F50C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2171F5110(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2171F5170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass_1;
  v7 = getMPMediaLibraryClass_softClass_1;
  if (!getMPMediaLibraryClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke_1;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2171F52B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaLibraryDidChangeNotification");
    getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = v6[3];
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

id getMPMediaLibraryDynamicPropertiesDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaLibraryDynamicPropertiesDidChangeNotification");
    getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_ptr = v6[3];
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

id getMPMediaLibraryConnectionProgressDidChange()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_ptr;
  v8 = getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_ptr;
  if (!getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaLibraryConnectionProgressDidChange");
    getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_ptr = v6[3];
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

void sub_2171F55D8()
{
  v1 = v0[4];
  v2 = *v0;
  os_unfair_lock_lock(v1 + 14);
  sub_2171F5650(&v1[4]);
  os_unfair_lock_unlock(v1 + 14);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2171F5758()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t WeakValuesDictionary.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_2171F5808();
  swift_getTupleTypeMetadata2();
  sub_217752338();
  result = sub_217751DC8();
  *a1 = result;
  return result;
}

unint64_t sub_2171F5808()
{
  result = qword_280BE7440;
  if (!qword_280BE7440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE7440);
  }

  return result;
}

uint64_t sub_2171F5884(SEL *a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = [objc_opt_self() *a1];
  v5 = *(v1 + 16);
  OUTLINED_FUNCTION_93();
  v6 = sub_217752898();

  return v6;
}

uint64_t BatchNotificationCoalescer.init(notifications:batchSize:debounceInterval:)(unint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v46 = &v42 - v14;
  v15 = MEMORY[0x277D84F90];
  v44 = v3;
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = v15;
  v16 = (v3 + 32);
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_37_3();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v16 + 2) = v17;
  v16[3] = 0.0;
  *(v16 - 2) = a2;
  *(v16 - 1) = a1;
  v16[4] = a3;
  v45 = a1;
  result = sub_2171F63F0(a1);
  if (!result)
  {
    return v44;
  }

  v20 = result;
  if (result >= 1)
  {
    v42 = v45 & 0xC000000000000001;
    sub_217751DE8();
    v21 = 0;
    v22 = &qword_27CB24D78;
    v43 = v20;
    do
    {
      if (v42)
      {
        v23 = MEMORY[0x21CEA2E30](v21, v45);
      }

      else
      {
        v23 = *(v45 + 8 * v21 + 32);
      }

      v24 = sub_217752538();
      v25 = v46;
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v24);
      OUTLINED_FUNCTION_37_3();
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v23;
      v27[5] = v26;
      sub_2171F5110(v25, v11, v22, &qword_217759EA0);
      LODWORD(v26) = __swift_getEnumTagSinglePayload(v11, 1, v24);

      if (v26 == 1)
      {
        sub_2171F0738(v11, v22, &qword_217759EA0);
      }

      else
      {
        sub_217752528();
        (*(*(v24 - 8) + 8))(v11, v24);
      }

      v28 = v22;
      v29 = v27[2];
      v30 = v27[3];
      swift_unknownObjectRetain();

      if (v29)
      {
        swift_getObjectType();
        v31 = sub_217752498();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      OUTLINED_FUNCTION_28_6();
      v34 = swift_allocObject();
      *(v34 + 16) = &unk_217759EB8;
      *(v34 + 24) = v27;
      if (v33 | v31)
      {
        v47 = 0;
        v48 = 0;
        v49 = v31;
        v50 = v33;
      }

      v35 = swift_task_create();
      v22 = v28;
      sub_2171F0738(v46, v28, &qword_217759EA0);
      swift_beginAccess();
      v36 = *v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v36 + 16);
        sub_2172020E0();
        v36 = v40;
        *v16 = v40;
      }

      v38 = *(v36 + 16);
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_2172020E0();
        v36 = v41;
      }

      ++v21;
      *(v36 + 16) = v38 + 1;
      *(v36 + 8 * v38 + 32) = v35;
      *v16 = v36;
      swift_endAccess();
    }

    while (v43 != v21);

    return v44;
  }

  __break(1u);
  return result;
}

uint64_t sub_2171F5D5C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2171F5D90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2171F5DD8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_38()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_38_1(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_38_3()
{
  v1 = v0[75];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
}

uint64_t OUTLINED_FUNCTION_38_4()
{
  v1 = *(v0[4] + 8);
  v3 = v0[6];
  return v0[7];
}

void *OUTLINED_FUNCTION_146()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 96);
  return result;
}

void OUTLINED_FUNCTION_217_0()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  v3 = v1 + *(v0 + 344);

  return sub_2172E3D54();
}

void OUTLINED_FUNCTION_38_8()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_136@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

void OUTLINED_FUNCTION_38_11()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_46()
{

  return sub_2171F0738(v0 + 72, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_12()
{
  sub_2171F3F0C((v0 + 384), v0 + 344);
  v1 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1((v0 + 344), *(v0 + 368));
  *(v0 + 648) = *(v0 + 504);
  result = v1 + 32;
  v3 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_647()
{

  return sub_217751268();
}

double OUTLINED_FUNCTION_38_15()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_17()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudArtist.Attributes);
}

uint64_t OUTLINED_FUNCTION_8_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_38_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_24(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 6104, v2, v3);
}

uint64_t OUTLINED_FUNCTION_38_26()
{
  sub_217283C5C(v0, 0);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_38_27()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{
  v2 = *(v0 - 240);

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_38_29(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(a1, &a9, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_38_31()
{

  return swift_once();
}

double OUTLINED_FUNCTION_38_32()
{
  *(v0 + 1616) = 0;
  result = 0.0;
  *(v0 + 1600) = 0u;
  *(v0 + 1584) = 0u;
  return result;
}

void OUTLINED_FUNCTION_47()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_38_35()
{

  return sub_217752F38();
}

uint64_t sub_2171F63F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_217752D38();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2171F643C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{
  sub_217283C5C(v0, 0);

  return sub_217283C5C(v1, 0);
}

uint64_t OUTLINED_FUNCTION_187()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_2171F50C0(v6 - 96, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_2177532F8();
}

uint64_t OUTLINED_FUNCTION_161()
{
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  *(v0 + 88) = v2;
  v4 = *(v3 + 8);
  result = v1;
  v6 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_2171F0738(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_16()
{
  result = v0 + 32;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_453()
{

  return sub_2177512B8();
}

double OUTLINED_FUNCTION_31_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 48) = 0;
  result = 0.0;
  *(a11 + 16) = 0u;
  *(a11 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_19()
{
  v2 = v0[404];
  v3 = v0[405];
  __swift_project_boxed_opaque_existential_1(v0 + 401, v2);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  v1 = v0[6];
  v2 = *(v0[5] + 8);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *(v13 + 72) = a11;
  v24 = *(v16 + 112);
  v23 = *(v16 + 120);
  *v13 = a10;
  *(v13 + 8) = a9;
  *(v13 + 16) = v19;
  *(v13 + 24) = v21;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  *(v13 + 48) = v14;
  *(v13 + 56) = v18;
  *(v13 + 64) = v20;
  *(v13 + 88) = a12;
  *(v13 + 104) = a13;
  *(v13 + 112) = v24;
  *(v13 + 120) = v23;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_31_22()
{

  return type metadata accessor for PlaylistEntryPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_31_23()
{

  return sub_2177528F8();
}

void *OUTLINED_FUNCTION_31_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x300], 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_31_26(uint64_t a1)
{
  *(v1 + 272) = a1;
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_31_28()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[153];
  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
}

uint64_t OUTLINED_FUNCTION_31_29()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_31_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_31()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_31_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_33()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 113);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_31_36()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_31_38()
{
  v2 = *(v0 + 536);
  v3 = *(v0 + 352);
  *(v0 + 208) = *(v0 + 336);
  *(v0 + 224) = v3;
  *(v0 + 240) = *(v0 + 368);
  *(v0 + 256) = *(v0 + 384);
  v4 = *(v0 + 200);
}

uint64_t OUTLINED_FUNCTION_31_39()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_31_40(void *a1)
{

  return memcpy(a1, v1, 0x132uLL);
}

__n128 OUTLINED_FUNCTION_31_41()
{
  v3 = *(v0 + 2424);
  *(v2 + 683) = *(v0 + 2408);
  *(v2 + 699) = v3;
  *(v2 + 715) = *(v0 + 2440);
  result = *(v1 + 53);
  *(v2 + 730) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_44()
{

  return sub_217751FF8();
}

void OUTLINED_FUNCTION_31_45()
{
  v1[4] = v0;
  v1[5] = v4;
  v5 = *(v2 + 16);
  v1[15] = v2;
  v1[16] = v5;
  v1[6] = v3;
}

uint64_t OUTLINED_FUNCTION_31_47()
{

  return sub_2172A5428(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *OUTLINED_FUNCTION_10_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src)
{

  return memcpy(&a9, &__src, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = *((*(v0 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_217204C70(v2);
}

__n128 OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14)
{
  *v14 = a11;
  *(v14 + 16) = a12;
  result = a13;
  *(v14 + 32) = a13;
  *(v14 + 48) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = __clz(__rbit64(v5)) | (a1 << 6);
  v8 = (*(a4 + 48) + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a4 + 56) + 32 * v7;

  return sub_21721E0AC(v11, va);
}

void OUTLINED_FUNCTION_5_13(unint64_t a1@<X8>)
{
  STACK[0x2E8] = v1;
  STACK[0x2F0] = v2;
  STACK[0x2F8] = a1;
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  *(v0 + 8) = sub_2172B4DA8;
  v2 = *(v1 + 88);
  return v1 + 16;
}

void OUTLINED_FUNCTION_5_16()
{
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_5_22()
{
  result = 0.0;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = 0u;
  *(v0 + 1360) = 0u;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_23()
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  result = v1;
  v3 = *(v0 + 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  result = v0[396];
  v2 = v0[391];
  v3 = v0[388];
  v4 = v0[387];
  v5 = v0[383];
  v6 = v0[382];
  v7 = *(v0[393] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_35(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_5_39()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[97];
}

unint64_t OUTLINED_FUNCTION_5_41()
{
  v4 = v1[32];
  v5 = v1[33];
  v6 = v1[28];
  *(v2 + 16) = v0;
  v7 = *(v5 + 32);
  return v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
}

__n128 OUTLINED_FUNCTION_1449@<Q0>(void *a1@<X8>)
{
  v2 = a1[2];
  v1 = a1[3];
  return *a1;
}

void OUTLINED_FUNCTION_5_42(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

void OUTLINED_FUNCTION_12_0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

__n128 OUTLINED_FUNCTION_5_45()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 128) = *v0;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_46()
{
  v1 = *(*(v0 - 432) + 8);
  result = *(v0 - 328);
  v3 = *(v0 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_54()
{
  v2 = *(v0 + 48);
}

__n128 OUTLINED_FUNCTION_5_58()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
  result = *(v0 - 80);
  v4 = *(v0 - 64);
  return result;
}

__n128 OUTLINED_FUNCTION_4_2()
{
  v1 = *&STACK[0x298];
  v2 = *&STACK[0x2A8];
  result = *&STACK[0x2B8];
  v3 = STACK[0x2C8];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_217752998();
}

__n128 OUTLINED_FUNCTION_5_61()
{
  v1 = *(v0 - 272);
  *(v0 - 224) = *(v0 - 288);
  *(v0 - 208) = v1;
  result = *(v0 - 256);
  *(v0 - 192) = result;
  *(v0 - 176) = *(v0 - 240);
  return result;
}

id OUTLINED_FUNCTION_5_64(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return sub_2177520C8();
}

uint64_t OUTLINED_FUNCTION_5_69()
{

  return sub_2172846D8(v0 + 16, &STACK[0x2E0]);
}

void OUTLINED_FUNCTION_5_70()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_5_73()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_5_74()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 320);
  v3 = *(v0 - 256);
}

__n128 OUTLINED_FUNCTION_5_78()
{
  *(v1 + 16) = v2;
  result = *(v3 - 320);
  *(v1 + 32 * v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_79()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_217751E68();
}

void OUTLINED_FUNCTION_5_81()
{

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_5_82(uint64_t a1, uint64_t a2)
{
  sub_2171F3F0C(v2, a2);
  v4 = *(v3 - 56);
  result = __swift_project_boxed_opaque_existential_1((v3 - 88), *(v3 - 64));
  v6 = *(v4 + 8);
  return result;
}

void OUTLINED_FUNCTION_5_84(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = STACK[0x308];
  v4 = LOBYTE(STACK[0x350]);
}

void *OUTLINED_FUNCTION_5_85(void *a1)
{

  return memcpy(a1, &STACK[0x7B8], 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_5_86()
{

  return swift_once();
}

double OUTLINED_FUNCTION_5_89@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 1624) = a1;
  *(v2 + 1616) = a2;
  *(v2 + 1632) = 0;
  result = 0.0;
  *(v2 + 1640) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_92@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_217672788(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_5_93@<X0>(char a1@<W8>)
{
  *(v1 + 48) = a1;
  result = v1 + 48;
  v3 = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_5_94()
{
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
  v0[18] = 0;
  v0[20] = 0;
  v0[22] = 0;
}

uint64_t OUTLINED_FUNCTION_5_95()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_96()
{

  return sub_217752E78();
}

void *OUTLINED_FUNCTION_5_104()
{
  v7 = *(v4 + v3[12]);
  v8 = *(v4 + v3[13]);
  v9 = v3[15];
  *(v0 + 104) = *(v4 + v3[14]);
  *(v0 + 56) = *(v4 + v9);
  v10 = v5 + v1[9];
  v11 = *(v0 + 64);
  *v10 = *(v0 + 80);
  *(v10 + 8) = v11;
  *(v10 + 16) = *(v0 + 76);
  v12 = (v5 + v1[10]);
  *v12 = *(v0 + 96);
  v12[1] = v2;
  v13 = (v5 + v1[11]);
  v14 = (v4 + *(v0 + 88));

  return memcpy(v13, v14, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_5_107()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_108()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_5_109()
{

  return sub_2171F50C0(v0 + 2832, v0 + 2272, v1, v2);
}

void OUTLINED_FUNCTION_5_113()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_5_115()
{
  v0[74] = 0;
  v0[76] = 0;
  v0[84] = 0;
  v0[86] = 0;
  v0[88] = 0;
}

__n128 OUTLINED_FUNCTION_5_117()
{
  *(v0 + 16) = v2;
  v4 = v0 + (v3 << 6);
  result = *(v1 + 136);
  v6 = *(v1 + 152);
  v7 = *(v1 + 168);
  *(v4 + 73) = *(v1 + 177);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

uint64_t NotificationCoalescer.init(_:notificationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v44 = v39 - v14;
  v43 = v3;
  v3[4] = MEMORY[0x277D84F90];
  v3[5] = 0;
  v15 = v3 + 4;
  v3[2] = a2;
  v3[3] = a3;
  result = sub_217204DD0(a1);
  if (!result)
  {

LABEL_22:

    return v43;
  }

  v17 = result;
  if (result >= 1)
  {
    v39[1] = a3;
    v40 = a1 & 0xC000000000000001;

    v18 = 0;
    v19 = &qword_27CB24D78;
    v41 = v17;
    v42 = a1;
    do
    {
      if (v40)
      {
        v20 = MEMORY[0x21CEA2E30](v18, a1);
      }

      else
      {
        v20 = *(a1 + 8 * v18 + 32);
      }

      v21 = sub_217752538();
      v22 = v44;
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v21);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v20;
      v24[5] = v23;
      sub_217202078(v22, v11, v19, &qword_217759EA0);
      LODWORD(v23) = __swift_getEnumTagSinglePayload(v11, 1, v21);

      if (v23 == 1)
      {
        sub_2171F06D8(v11, v19, &qword_217759EA0);
      }

      else
      {
        sub_217752528();
        (*(*(v21 - 8) + 8))(v11, v21);
      }

      v25 = v19;
      v26 = v24[2];
      v27 = v24[3];
      swift_unknownObjectRetain();

      if (v26)
      {
        swift_getObjectType();
        v28 = sub_217752498();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = &unk_217771FC0;
      *(v31 + 24) = v24;
      if (v30 | v28)
      {
        v45 = 0;
        v46 = 0;
        v47 = v28;
        v48 = v30;
      }

      v32 = swift_task_create();
      v19 = v25;
      sub_2171F06D8(v44, v25, &qword_217759EA0);
      swift_beginAccess();
      v33 = *v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v15 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v33 + 16);
        sub_2172020E0();
        v33 = v37;
        *v15 = v37;
      }

      v35 = *(v33 + 16);
      if (v35 >= *(v33 + 24) >> 1)
      {
        sub_2172020E0();
        v33 = v38;
      }

      ++v18;
      *(v33 + 16) = v35 + 1;
      *(v33 + 8 * v35 + 32) = v32;
      *v15 = v33;
      swift_endAccess();

      a1 = v42;
    }

    while (v41 != v18);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_2171F7E50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2171F7E88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_3_63();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2171F7EC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2171F7F00()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result isHomeSharingLibrary];
  }

  return result;
}

uint64_t sub_2171F7F28()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14(v4);

  return v7(v6);
}

uint64_t sub_2171F7FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB282D0, &qword_21776C3D0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_217752888();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2171F8174, 0, 0);
}

uint64_t sub_2171F80B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2173BA694;

  return sub_2171F7FBC(a1, v4, v5, v7, v6);
}

uint64_t sub_2171F8174()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];

  sub_217752868();
  swift_beginAccess();
  sub_2171F8214();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_3(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_72(v6);

  return MEMORY[0x282200308](v8);
}

unint64_t sub_2171F8214()
{
  result = qword_280BE74C0;
  if (!qword_280BE74C0)
  {
    sub_217752888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE74C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;
  v5 = (v1 + *(v3 + 268));
  v6 = *v5;
  v7 = v5[1];

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_37_6()
{
  result = 0.0;
  v0[70] = 0u;
  v0[71] = 0u;
  v0[72] = 0u;
  v0[73] = 0u;
  v0[74] = 0u;
  v0[75] = 0u;
  v0[76] = 0u;
  v0[77] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_7()
{
  result = *(v0 + 112);
  v2 = *(v0 + 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return sub_217752F38();
}

void OUTLINED_FUNCTION_37_9(int a1@<W8>)
{
  v1[10] = a1;
  v1[12] = a1;
  v1[14] = a1;
  v1[16] = a1;
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 + 16);
  *a21 = *v21;
  *(a21 + 16) = v23;
  *(a21 + 32) = *(v21 + 32);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_37_18@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  v13 = *(v7 + 88);
  v14 = *(v7 + 96);
  *v4 = v2;
  *(v4 + 8) = a1;
  *(v4 + 16) = v6;
  *(v4 + 24) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v3;
  v15 = *(v11 - 144);
  *(v4 + 48) = v8;
  *(v4 + 56) = v15;
  *(v4 + 64) = v10;
  *(v4 + 88) = a2;
  *(v4 + 104) = *(v11 - 96);
  *(v4 + 112) = v13;
  *(v4 + 120) = v14;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_37_21()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_37_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return sub_21755F734(&a37, &a23);
}

uint64_t OUTLINED_FUNCTION_37_29()
{

  return sub_21729366C(v0);
}

unint64_t OUTLINED_FUNCTION_37_30()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2114;

  return sub_217354318();
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2)
{

  return sub_21738C4B0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_37_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_39()
{
  v2 = *(v1 + 8);
  result = *(v0 + 72);
  v4 = *(v0 + 80);
  return result;
}

double OUTLINED_FUNCTION_37_40()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

void OUTLINED_FUNCTION_37_41()
{
  *(v2 - 112) = 0;
  *(v0 + 48) = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

BOOL sub_2171F8728()
{
  OUTLINED_FUNCTION_1_51();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v17 = *(v3 - 1);
    v18 = *v3;
    v5 = sub_217751DE8();
    v13 = OUTLINED_FUNCTION_3_48(v5, v6, v7, v8, v9, v10, v11, v12, v17);
    v14 = v1(v13);
    if (v0)
    {

      return v4 != 0;
    }

    v15 = v14;
    v3 += 2;
  }

  while ((v15 & 1) == 0);
  return v4 != 0;
}

void OUTLINED_FUNCTION_66()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v4 = *(v2 + *(v0 + 48));

  return sub_217265A08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_66_1()
{
  v3 = (v1 + *(v0 + 268));
  v4 = *v3;
  v5 = v3[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_66_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_66_9()
{
}

uint64_t OUTLINED_FUNCTION_66_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

void *OUTLINED_FUNCTION_361(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + a2;
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_66_13()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_66_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_2171F0738(&a51, v51, v52);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_217202078(v1, v0 + 336, v2, v3);
}

void *OUTLINED_FUNCTION_66_18(void *a1)
{

  return memcpy(a1, (v1 + 224), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

uint64_t OUTLINED_FUNCTION_120()
{

  return sub_217753208();
}

BOOL OUTLINED_FUNCTION_39_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t *a1)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v3 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_39_4()
{
  v0 = STACK[0x420];
  v1 = STACK[0x428];
  v2 = LOBYTE(STACK[0x430]);
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_160_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v5 = *v3;
  result = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *v1 = v5;
  *(v1 + 8) = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_9()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return sub_2171F5110(a1, v1 + 72, v2, v3);
}

uint64_t OUTLINED_FUNCTION_39_11()
{
  *(v0 + 16) = *(v4 - 80);
  result = v0 + v1 + v3 * v2;
  v6 = *(v4 - 88);
  return result;
}

void *OUTLINED_FUNCTION_39_12(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return memcpy(va, (v3 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_39_13()
{
  v1 = *(v0 - 128);
  v2 = *(*(v0 - 136) + 8);
  result = *(v0 - 160);
  v4 = *(*(v0 - 152) + 208);
  v5 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_14()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudRecordLabel.Attributes);
}

uint64_t OUTLINED_FUNCTION_39_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_17()
{

  return sub_2171F0738(v0 + 816, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_20()
{

  return sub_2171F0738(v0 + 4448, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_22()
{
}

uint64_t OUTLINED_FUNCTION_39_23()
{
  v2 = *(v0 + 104);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_25()
{

  return sub_21726A630(v2 + v4, v0 + 5552, v1, v3);
}

void *OUTLINED_FUNCTION_39_26(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy(a1, &__src, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_39_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_29()
{
  result = v0;
  v3 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

void *OUTLINED_FUNCTION_36_0()
{

  return memcpy((v0 + 568), (v0 + 440), 0x68uLL);
}

void OUTLINED_FUNCTION_39_31()
{
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);

  JUMPOUT(0x21CEA23B0);
}

uint64_t sub_2171F8EF0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  a2(v2, a1);
  os_unfair_lock_unlock(*(v5 + 16));
}

void sub_2171F8F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_2171F916C(*(a1 + 40));
  if (!v4)
  {
    goto LABEL_4;
  }

  v15 = v4;
  if (sub_217204DD0(v4) == *(a1 + 16))
  {

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217759C00;
    *(v5 + 32) = a2;
    swift_beginAccess();

    sub_2171F91A0();
    v6 = *(*(a1 + 40) + 16);
    sub_2171F9320(v6);
    v7 = *(a1 + 40);
    *(v7 + 16) = v6 + 1;
    *(v7 + 8 * v6 + 32) = v5;
    *(a1 + 40) = v7;
    swift_endAccess();
    return;
  }

  MEMORY[0x21CEA25D0](v8);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2177522F8();
  }

  sub_217752378();
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_217503624(v9);
  v9 = v14;
  *(a1 + 40) = v14;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v10 <= *(v9 + 16))
  {
    v12 = v9 + 8 * v10;
    v13 = *(v12 + 24);
    *(v12 + 24) = v15;
    *(a1 + 40) = v9;
    swift_endAccess();

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_2171F916C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  return sub_217751DE8();
}

uint64_t sub_2171F91B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_2171F9214()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AC8, &qword_21775A320);
      v8 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_7_9(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t type metadata accessor for BatchNotificationCoalescer.Observer()
{
  result = qword_280BE3488;
  if (!qword_280BE3488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2171F9338(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2171F9380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return MusicSortDescriptor.__allocating_init(_:ascending:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  v5 = (v3 + *(v2 + 268));
  v6 = *v5;
  v7 = v5[1];

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_33_7(int a1@<W8>)
{
  v1[3] = a1;
  *(v2 - 72) = a1;
  v1[4] = a1;
  v1[6] = a1;
}

uint64_t OUTLINED_FUNCTION_33_9()
{
  v6 = *(v0 + 72) + v4;

  return sub_21726A630(v6, v3 + 104, v1, v2);
}

uint64_t OUTLINED_FUNCTION_157(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_33_12()
{

  sub_21738A7C0();
}

double OUTLINED_FUNCTION_33_14()
{
  result = 0.0;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_33_19@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, arg25_2171F9668 a25)
{
  *a1 = a24;
  a1[1] = *a25.arr;
  return *&a25.arr[15];
}

uint64_t OUTLINED_FUNCTION_33_24()
{

  return sub_2171F0738(v0 + 4608, v1, v2);
}

__n128 OUTLINED_FUNCTION_33_26()
{
  result = *(v1 - 112);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v1 - 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_28()
{
  v2 = v0[166];
  v3 = v0[161];
  v4 = v0[160];
  *(v1 - 104) = v0[159];
  *(v1 - 96) = v2;
  v5 = v0[157];
  v6 = *(v3 + 8);
  *(v1 - 112) = *v3;
  v7 = *(v3 + 24);
  v15 = *(v3 + 16);
  v8 = *(v3 + 32);
  v14 = *(v3 + 40);
  v9 = *(v3 + 64);
  v13 = *(v3 + 48);
  v11 = *(v3 + 72);
  v12 = *(v3 + 56);
  return v3 + *(v5 + 40);
}

uint64_t OUTLINED_FUNCTION_33_30()
{
  v6 = *(v0 + 16) + v4;

  return sub_21726A630(v6, v3 + 104, v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_31()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_33()
{

  return sub_217275710(v0, v1 - 144);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_33_36()
{

  sub_2172B1AF0();
}

uint64_t OUTLINED_FUNCTION_33_38()
{
  sub_2172202A4(v0);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_40()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_58_0()
{
}

uint64_t OUTLINED_FUNCTION_33_43()
{
  *(v0 + 64) = v3;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_33_44()
{

  return sub_2171F0738(v0 + 4160, v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_45()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_33_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_48()
{

  return sub_2172838F8(v0, 1);
}

void OUTLINED_FUNCTION_33_50()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[28];
}

uint64_t OUTLINED_FUNCTION_33_51()
{
  v4 = *(v2 - 224);
  *(v0 + 48) = *(v2 - 240);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v2 - 208);
  *(v0 + 89) = *(v1 + 105);
  v5 = *(v0 + 32);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_217752C78();
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(uint64_t a1@<X8>)
{
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  a9 = v11;
  a10 = v12;
  a11 = 2;

  return MusicPredicate.__allocating_init(_:_:)(v13, &a9);
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return type metadata accessor for MusicPredicate();
}

void OUTLINED_FUNCTION_28_4()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_50()
{
  *(v0 + 304) = *(v0 + 208);
  *(v1 + 137) = *(v1 + 41);
  return v2;
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1)
{

  return sub_2171F06D8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_238()
{

  return sub_2177531E8();
}

void *OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 128), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_217751EB8();
}

double OUTLINED_FUNCTION_205()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

double OUTLINED_FUNCTION_28_9()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_67(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_28_13()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_217753318();
}

uint64_t OUTLINED_FUNCTION_28_14()
{
  result = v0[394];
  v2 = v0[385];
  v3 = v0[382];
  v4 = *(v0[393] + 32);
  return result;
}

void OUTLINED_FUNCTION_28_15(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_28_17()
{

  return sub_2173B82E0(v0, type metadata accessor for CatalogSearchRawResponse.TopResult);
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_28_21()
{
  *(v1 + 16) = v0;
  v4 = *(v2 + 32);
  return v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_28_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_28_24()
{

  return sub_217752F88();
}

void OUTLINED_FUNCTION_28_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 216) = a8;
  *(v8 - 184) = a6;
  *(v8 - 176) = a3;
  *(v8 - 128) = a4;
  *(v8 - 192) = a2;
}

uint64_t OUTLINED_FUNCTION_28_26()
{
  result = *(v1 - 72);
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_27()
{

  return sub_2174EF4C4(v0, v1, 1);
}

uint64_t OUTLINED_FUNCTION_28_28()
{

  return swift_once();
}

void OUTLINED_FUNCTION_28_31(_BYTE *a1@<X8>)
{

  sub_217230490(a1);
}

uint64_t OUTLINED_FUNCTION_28_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_125()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_33()
{

  return sub_21754240C(v1, &STACK[0x208], v0, v2);
}

uint64_t OUTLINED_FUNCTION_28_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return sub_217283E1C(va1, va);
}

uint64_t OUTLINED_FUNCTION_28_36()
{
  v1 = v0[62];
  v2 = v0[59];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

void *OUTLINED_FUNCTION_25_2(void *a1)
{

  return memcpy(a1, (v1 + 440), 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_28_37@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_28_41()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_28_45()
{

  return type metadata accessor for CloudPlaylist(0);
}

uint64_t OUTLINED_FUNCTION_28_47()
{

  return sub_217752EA8();
}

uint64_t OUTLINED_FUNCTION_28_48()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[14];

  return sub_217752E58();
}

unint64_t OUTLINED_FUNCTION_28_49()
{
  v0[18] = 10;
  v0[19] = 0xE100000000000000;
  v0[26] = 2105354;
  v0[27] = 0xE300000000000000;

  return sub_21733A5C8();
}

uint64_t *OUTLINED_FUNCTION_28_50()
{
  *(v0 + 856) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 832));
}

uint64_t OUTLINED_FUNCTION_28_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_52()
{

  return sub_217284868();
}

uint64_t OUTLINED_FUNCTION_28_53()
{
  v4 = *(v3 - 72);
  v0[13] = v1;
  result = v2;
  v6 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_55()
{
  v2 = *(v0 - 240);

  return sub_217752968();
}

uint64_t OUTLINED_FUNCTION_28_57()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_2171FA2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB282D0, &qword_21776C3D0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_217752888();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2171FB5A0, 0, 0);
}

uint64_t sub_2171FA3A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_217282D8C;
  v8 = OUTLINED_FUNCTION_35_3();

  return sub_2171FA2AC(v8, v9, v10, v4, v3);
}

uint64_t sub_2171FA450()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_2172AFE20;

  return v8(v1);
}

void OUTLINED_FUNCTION_17_1()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_17_8()
{
  v4 = v2[19];
  v5 = v1 + 16 * v0;
  v2[28] = *(v5 + 32);
  v2[29] = *(v5 + 40);

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_17_9()
{
  v0[6] = 0;
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

__n128 OUTLINED_FUNCTION_8_2()
{
  v1 = *(v0 - 136);
  *(v0 - 208) = *(v0 - 152);
  *(v0 - 192) = v1;
  result = *(v0 - 120);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 104);
  return result;
}

__n128 OUTLINED_FUNCTION_204_0@<Q0>(__n128 *a1@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u64[1];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return sub_217753098();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_17_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_18_0()
{
  *(v0 + v1[12]) = *(v2 - 216);
  *(v0 + v1[13]) = *(v2 - 232);
  v3 = v1[14];
}

__n128 OUTLINED_FUNCTION_17_19()
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 464);
  v4 = *(v0 + 16);
  *(v1 + 240) = *v0;
  *(v1 + 256) = v4;
  result = *(v0 + 32);
  *(v1 + 272) = result;
  *(v1 + 288) = *(v0 + 48);
  return result;
}

double OUTLINED_FUNCTION_17_21(uint64_t a1)
{
  *(v1 + 8) = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = v2;
  *(v1 + 96) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_22()
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_17_23()
{

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_17_26(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_28()
{
  *(v0 + 1392) = v1;
  v3 = *(v0 + 112);
  v4 = *(v0 + 136);

  return sub_217752EC8();
}

void *OUTLINED_FUNCTION_17_29()
{
  *(v0 + 16) = v3;

  return memcpy((v0 + 112 * v2 + 32), v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_17_32@<X0>(uint64_t a1@<X8>)
{

  return sub_2171F5110(v3 + a1, v2 + v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_17_33()
{
  *(v0 + 32) = v3;
  v4 = *(v1 + 8);
  return v2;
}

__n128 OUTLINED_FUNCTION_17_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17, uint64_t a18)
{
  *v18 = a15;
  *(v18 + 16) = a16;
  result = a17;
  *(v18 + 32) = a17;
  *(v18 + 48) = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

void OUTLINED_FUNCTION_17_36()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_17_37()
{

  return sub_217751DC8();
}

void OUTLINED_FUNCTION_17_38()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void *OUTLINED_FUNCTION_17_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __src)
{

  return memcpy(v22, &__src, 0x68uLL);
}

uint64_t *OUTLINED_FUNCTION_17_42@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 72) = a2;
  v3 = *result;
  return result;
}

BOOL OUTLINED_FUNCTION_17_44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 240);
  return result;
}

__n128 OUTLINED_FUNCTION_17_48()
{
  result = *v0;
  *(v1 - 320) = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_50()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_17_51()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  v2 = *(v0 + 512);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 41) = *(v0 + 57);
  v2[1] = v4;
  v2[2] = v5;
  *v2 = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  result = v0 + 8;
  v7 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_52()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_17_55()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_17_58()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_17_60()
{

  return swift_once();
}

void OUTLINED_FUNCTION_17_61()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[48];
  v0[6] = v0[47];
  v0[7] = v1;
  v5 = v0[49];
  v4 = v0[50];
}

uint64_t OUTLINED_FUNCTION_17_64()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_17_66()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(a1 + 16) = a21;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_17_69()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t sub_2171FADD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v13 = (*(a10 + 56) + 32 * v11);

  return sub_2172124CC(v13, &a11);
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];

  return sub_2177513F8();
}

double OUTLINED_FUNCTION_25_11()
{
  *(v0 + 1328) = 0;
  result = 0.0;
  *(v0 + 1312) = 0u;
  *(v0 + 1296) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16)
{
  v20 = v18[3];
  v21 = v18[4];
  v23 = v18[14];
  v22 = v18[15];
  *v17 = v19;
  *(v17 + 8) = 0;
  *(v17 + 16) = a14;
  *(v17 + 32) = a15;
  *(v17 + 48) = a16;
  *(v17 + 56) = a3;
  *(v17 + 64) = v16;
  *(v17 + 72) = v20;
  *(v17 + 80) = v21;
  *(v17 + 88) = v23;
  *(v17 + 96) = v22;
  sub_2171FB568(a1, a2);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v4 = v1;
  v5 = *(v0 + 328);
  v6 = v2;
  v7 = *(v0 + 368);

  return sub_2171F0738(v0 + 1872, v4, v6);
}

double OUTLINED_FUNCTION_25_16()
{
  *(v0 + 1296) = 0;
  result = 0.0;
  *(v0 + 1280) = 0u;
  *(v0 + 1264) = 0u;
  return result;
}

void OUTLINED_FUNCTION_25_17()
{

  sub_2172AFF2C();
}

uint64_t OUTLINED_FUNCTION_25_18()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[8];
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_25_19()
{

  return sub_21726A630(v2 + v4, v0 + 7176, v1, v3);
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_21@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_24()
{
  v2 = *(v0 + 8);
  result = *(v1 - 288);
  v4 = *(v1 - 280);
  return result;
}

void *OUTLINED_FUNCTION_25_25(void *a1)
{

  return memcpy(a1, &STACK[0xF18], 0x221uLL);
}

double OUTLINED_FUNCTION_25_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, __int128 *a13)
{
  *(v14 + 16) = v13;
  v18 = a13[1];
  v17 = a13[2];
  v19 = v14 + 56 * v15;
  v20 = *a13;
  *(v19 + 80) = *(a13 + 6);
  *(v19 + 48) = v18;
  *(v19 + 64) = v17;
  *(v19 + 32) = v20;
  *(v16 + 624) = a11;
  result = 0.0;
  *a12 = 0u;
  *(a12 + 16) = 0u;
  *(a12 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_29()
{

  return type metadata accessor for RadioShowPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_25_30()
{

  return sub_2177528F8();
}

uint64_t OUTLINED_FUNCTION_25_31()
{

  return sub_217751348();
}

uint64_t OUTLINED_FUNCTION_25_34()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_25_35(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 4352, v2, v3);
}

uint64_t OUTLINED_FUNCTION_25_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_38()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_25_40()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_25_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_217275710(v8, va);
}

uint64_t OUTLINED_FUNCTION_25_47(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2240, v2, v3);
}

uint64_t OUTLINED_FUNCTION_25_49()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_5()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_25_55(uint64_t result)
{
  *(v1 + 856) = v2;
  *(v1 + 832) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_56()
{

  return swift_once();
}

void OUTLINED_FUNCTION_25_57()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_25_61@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = a1;
  result = sub_2171F3F0C((v3 - 200), v2 + 40 * v1 + 32);
  *(v3 - 200) = 0;
  *(v3 - 192) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_63()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_25_64()
{

  return sub_2172A5428(v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_65()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[36];
  v7 = v0[34];
}

uint64_t OUTLINED_FUNCTION_25_66()
{
  *(v0 + 89) = *(v0 + 153);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;

  return sub_217283ECC(v0 + 48, v0 + 112);
}

uint64_t sub_2171FB568(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_2171FB5A0()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];

  sub_217752868();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_10();
  sub_2171FC248(v4, v5);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_8_14(v8);

  return MEMORY[0x282200308](v10);
}

void *sub_2171FB660()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void OUTLINED_FUNCTION_10_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_10_7()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_2172A9DC0();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_191()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(v9 + 320);
  v15 = v10;
  v16 = *(v9 + 352);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v12, v14, v9 + 2864, v15, a5, v11, a7, a8, v9 + 1312, a9);
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t a1, __n128 a2)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
}

uint64_t OUTLINED_FUNCTION_10_18()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];
  v6 = v0[7];
  result = v0[5];
  v8 = *(v0[9] + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_21729C0E8(v0, v1, (v2 - 88));
}

void OUTLINED_FUNCTION_10_19(uint64_t a1@<X8>)
{
  v4 = *(v3 + a1);
  v5 = *(v2 + a1);
  *(v1 + 7176) = v4;
  *(v1 + 7177) = v5;
}

uint64_t OUTLINED_FUNCTION_10_21()
{
  v3 = v0[57];
  v2 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[50];
  v11 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[42];
  v16 = v0[39];
}

void OUTLINED_FUNCTION_10_22(char a1@<W8>)
{
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  v2 = v0[96];
  v3 = v0[95];
  v5 = v0[94];
  v6 = v0[92];
  v7 = v0[89];
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2)
{

  return sub_2171F5110(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_32()
{
  result = v0[553];
  v2 = v0[550];
  v3 = v0[549];
  v4 = v0[548];
  v5 = v0[546];
  v6 = v0[545];
  v7 = v0[544];
  v11 = v0[547];
  v8 = v0[543];
  v9 = v0[542];
  v10 = v0[541];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_34()
{

  return sub_217751378();
}

void *OUTLINED_FUNCTION_10_35()
{

  return memcpy((v0 + 928), (v1 + 16), 0x161uLL);
}

void OUTLINED_FUNCTION_10_37(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = v4[8];
  v6 = v4[9];
  v7 = v4[10];
  v8 = *(a2 + 8);
}

uint64_t OUTLINED_FUNCTION_10_38@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 264) = a1;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *v3 = v2;
  *(v3 + 8) = v1;

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_9_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 16), a15);
  v17 = *(a16 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return PropertyProvider.eraseToAnyPropertyProvider()(v7, v8, va);
}

uint64_t OUTLINED_FUNCTION_74@<X0>(__int128 *a1@<X8>)
{
  v3 = *a1;

  return objc_opt_self();
}

__n128 OUTLINED_FUNCTION_3_8()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);
  result = *(v0 - 80);
  v4 = *(v0 - 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t a1)
{

  return sub_217202078(a1, v3 + 128, v1, v2);
}

unint64_t OUTLINED_FUNCTION_21_1()
{

  return sub_21733A5C8();
}

uint64_t OUTLINED_FUNCTION_10_52()
{

  return sub_217752F28();
}

uint64_t OUTLINED_FUNCTION_10_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_55(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v4 + 3656, v4 + 2336, a3, a4);
}

unint64_t OUTLINED_FUNCTION_10_56()
{

  return sub_217285A70();
}

void OUTLINED_FUNCTION_10_57()
{
  v2[12] = sub_2172AB494;
  v2[13] = v0;
  v2[14] = v1;
}

void *OUTLINED_FUNCTION_10_58()
{

  return memcpy(&STACK[0x420], (v0 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_10_59()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_10_60()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_61()
{
  result = v0 + 80;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_63()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_10_64()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_67()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_10_68()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_10_69()
{
  v4 = v1[10];
  v5 = (v2 + v1[9]);
  v6 = *v5;
  *(v0 + 64) = v5[1];
  *(v0 + 76) = *(v5 + 16);
  v7 = *(v2 + v4 + 8);
  *(v0 + 96) = *(v2 + v4);
  v8 = v1[11];
  *(v0 + 80) = v6;
  *(v0 + 88) = v8;

  return memcpy((v0 + 520), (v2 + v8), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_10_71()
{

  return sub_217751DC8();
}

void OUTLINED_FUNCTION_10_72()
{
  *(v0 - 176) = 2105354;
  *(v0 - 168) = 0xE300000000000000;
  v2 = *(v0 - 304);
  v3 = *(v0 - 296);

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_10_73(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __dst)
{

  return memcpy(&__dst, &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_10_77()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
}

void OUTLINED_FUNCTION_10_80(int a1@<W8>)
{
  v1[72] = a1;
  v1[74] = a1;
  v1[76] = a1;
  v1[84] = a1;
  v1[86] = a1;
}

uint64_t OUTLINED_FUNCTION_10_81()
{

  return swift_getWitnessTable();
}

uint64_t sub_2171FC248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2171FC290(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2171FC2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_189_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  *(v3 - 72) = v0;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *(v1 + 264) = a1;
  *(v1 + 272) = type metadata accessor for Batch();

  return sub_2177524D8();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{
  *(a1 + 8) = sub_2172BB788;
  v2 = v1[398];
  v3 = v1[397];
  return v1[396];
}

uint64_t OUTLINED_FUNCTION_133_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_7_19()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_217752EE8();
}

void OUTLINED_FUNCTION_7_20(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return sub_217752F38();
}

void OUTLINED_FUNCTION_4_8()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1A50(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1526()
{

  return sub_21754383C(v0);
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return swift_once();
}

double OUTLINED_FUNCTION_7_37()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_38()
{
  v1 = *(*(v0 - 376) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 400);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_46()
{

  return sub_217752F38();
}

double OUTLINED_FUNCTION_7_47()
{
  *(v0 + 1296) = 0;
  result = 0.0;
  *(v0 + 1264) = 0u;
  *(v0 + 1280) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_7_51()
{

  return sub_21733A5C8();
}

uint64_t OUTLINED_FUNCTION_7_54(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return sub_217752AA8();
}

id OUTLINED_FUNCTION_7_56(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_29_2()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_7_58()
{
  result = sub_21725CF00(v0, v1);
  *(v2 - 136) = 0;
  v4 = *(v2 - 240) + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_63()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_7_65()
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0);
  result = v1 + 8;
  v7 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_66()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_67()
{
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  sub_217657B4C(v1, v2, v3, v4, v8, v6);
}

uint64_t OUTLINED_FUNCTION_7_68@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2172B6210(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_7_69()
{

  return sub_217751FF8();
}

__n128 OUTLINED_FUNCTION_7_71@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v2;
  *(v1 + 112) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 122) = result;
  return result;
}

void OUTLINED_FUNCTION_7_78()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
}

double OUTLINED_FUNCTION_7_80()
{
  result = 0.0;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_81()
{
}

uint64_t OUTLINED_FUNCTION_7_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_85()
{
  v9 = v0[56];
  v10 = v0[57];
  v0[120] = v3;
  v0[121] = v4;
  v0[122] = v1;
  v11 = v0[6];
  v0[123] = v0[7];
  v0[124] = v2;
  v0[125] = v11;
  v0[126] = v5;
  v0[127] = v7;
  v12 = v0[17];
  v13 = v0[18];
  v0[128] = v6;
  v0[134] = v9;
  v0[135] = v10;
  v14 = v0[16];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_7_87(uint64_t a1)
{
  *(a1 + 8) = sub_2176F5854;
  v2 = *(v1 + 2840);
  return v1 + 2736;
}

uint64_t OUTLINED_FUNCTION_7_88()
{

  return sub_217752998();
}

void OUTLINED_FUNCTION_7_89(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_7_95()
{

  return sub_217752D08();
}

BOOL OUTLINED_FUNCTION_7_97@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;

  return sub_2171F8728();
}

__n128 OUTLINED_FUNCTION_7_98()
{
  v1 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v1;
  result = *(v0 + 144);
  *(v0 + 80) = result;
  return result;
}

BOOL NSBundle.isMusicApp.getter()
{
  v1 = sub_217204AF4(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217758490;
    *(inited + 32) = 0x6C7070612E6D6F63;
    *(inited + 40) = 0xEF636973754D2E65;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000002177AD9A0;
    *(inited + 64) = 0xD000000000000026;
    *(inited + 72) = 0x80000002177AD9C0;
    *(inited + 80) = 0xD000000000000020;
    *(inited + 88) = 0x80000002177AD9F0;
    v9[0] = v3;
    v9[1] = v4;
    MEMORY[0x28223BE20]();
    OUTLINED_FUNCTION_11_4();
    *(v6 - 16) = v9;
    v7 = sub_2171F8728();
    swift_setDeallocating();
    sub_2171FD064();
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_2171FD064()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

double static MusicFeatureFlag.alchemy.getter()
{
  if (qword_280BE65E0 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_280BE65E8).n128_u64[0];
  return result;
}

void sub_2171FD0FC()
{
  qword_280BE65E8 = "MusicKit";
  unk_280BE65F0 = 8;
  byte_280BE65F8 = 2;
  qword_280BE6600 = "alchemy";
  unk_280BE6608 = 7;
  byte_280BE6610 = 2;
}

uint64_t static MusicDataRequestConfiguration<>.globalDefault.getter()
{
  OUTLINED_FUNCTION_109();
  v0 = off_280BEBCD0;

  (v0)(v2);

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_19_12();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_119_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1)
{

  return static AnyMusicProperty.== infix(_:_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_119_7()
{

  return sub_2171FF30C(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_119_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21738C4B0(v4 + a3, v3 + 144, a1, a2);
}

uint64_t OUTLINED_FUNCTION_119_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_119_11()
{
  v2 = *(v1 + 1336);
  *(v1 + 1328) = v0;
  v3 = *(v1 + 234);
  v4 = *(v1 + 1320);
}

uint64_t OUTLINED_FUNCTION_119_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_119_13(uint64_t result)
{
  *(v2 + 528) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t storeEnumTagSinglePayload for MusicSubscription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_1();
  v11 = *(v8 + 16);
  v11((v13 - v12), v3, a1);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v18;
    *a3 = v17;
    *(a3 + 16) = v15;
    *(a3 + 32) = v19;
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_2171F06D8(&v17, &qword_27CB26DF8, &unk_217767540);
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return v11(boxed_opaque_existential_0, v3, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return static AnyMusicProperty.== infix(_:_:)(a1, v1);
}

void OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return sub_217751EB8();
}

uint64_t OUTLINED_FUNCTION_19_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_2177528F8();
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return sub_217752D08();
}

__n128 OUTLINED_FUNCTION_34_1()
{
  v1 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v1;
  *(v0 + 144) = *(v0 + 80);
  result = *(v0 + 89);
  *(v0 + 153) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_231()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_217752D08();
}

void OUTLINED_FUNCTION_19_17(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

__n128 OUTLINED_FUNCTION_19_18@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 248);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(a1 + 48);
  result = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = result;
  *(v3 + 48) = v9;
  *(v3 + 64) = v7;
  *(v3 + 72) = v1 & 0x7FFFFFFFFFFFFFFFLL;
  *(v3 + 80) = v10;
  *(v3 + 96) = v6;
  *(v3 + 104) = v5;
  return result;
}

void OUTLINED_FUNCTION_860(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_19_19(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_19_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_21729C644(va);
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = v2;
  *(result + 72) = a2;
  *(result + 80) = v2;
  *(result + 88) = v3;
  *(result + 96) = 15;
  *(result + 104) = v4;
  return result;
}

void *OUTLINED_FUNCTION_19_26(void *a1)
{

  return memcpy(a1, (v1 + 440), 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_19_27()
{
  v2 = *(v0 - 256);

  return sub_217752EA8();
}

void OUTLINED_FUNCTION_16_5()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_19_29()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_31()
{

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_19_32(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, char __src)
{
  *a2 = a11;
  *(a2 + 16) = a12;
  *(a2 + 24) = v14;

  return memcpy((a2 + 32), &__src, 0x48uLL);
}

void OUTLINED_FUNCTION_19_34()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);

  sub_2175E7628();
}

__n128 OUTLINED_FUNCTION_19_35@<Q0>(void *a1@<X8>)
{
  v1 = a1[2];
  v2 = a1[3];
  return *a1;
}

void *OUTLINED_FUNCTION_19_37()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  result = v0 + 1;
  v2 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_38@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(*(v1 + 16) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_40()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_19_41()
{
  v3 = *(*(v0 + 48) + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_42()
{
  sub_217283C5C(*(v0 + 336), *(v0 + 344));

  return sub_2171F06D8(v0 + 336, v1, v2);
}

void *OUTLINED_FUNCTION_19_43()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_44()
{
  v1 = *(v0[8] + 8);
  result = v0[10];
  v3 = v0[11];
  return result;
}

void OUTLINED_FUNCTION_19_45()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_19_48()
{
  v1 = *(v0 + 32);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_19_50()
{
  *(v2 - 312) = v0;
  *(v2 - 104) = 0;
  *(v2 - 96) = 0xE000000000000000;
  v3 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_19_54()
{
  v6 = v0[16];
  *(v4 - 240) = v0[15];
  *(v4 - 224) = v6;
  *(v4 - 208) = v0[17];
  *(v2 + 105) = *(v2 + 41);

  return sub_2171F0790(v4 - 168, v1, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id OUTLINED_FUNCTION_2_11()
{
  *(v0 + 640) = 8;

  return sub_2173AAEE8(v0 + 640, v1, v2);
}

void OUTLINED_FUNCTION_2_12(uint64_t a1@<X8>)
{
  v2[9] = a1;
  v2[10] = v1;
  v7 = v6[10];
  v2[1] = v3 + v6[9];
  v2[2] = v3 + v7;
  v8 = v6[11];
  v2[7] = v6[12];
  v2[8] = v8;
  v9 = v6[13];
  v2[5] = v6[14];
  v2[6] = v9;
  v10 = v6[15];
  v11 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v2[3] = *(v5 + 72);
  v2[4] = v10;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_2_17()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_16_6@<X0>(uint64_t a1@<X8>)
{

  return sub_21729C0E8(0xD000000000000016, (a1 - 32) | 0x8000000000000000, (v1 + 448));
}

uint64_t OUTLINED_FUNCTION_2_20()
{
  v2 = v0[49];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
}

void OUTLINED_FUNCTION_2_21()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_2_22()
{
  *(v0 - 368) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[58];
  v4 = v2[59];
  return v2[57];
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_195()
{
  v2 = *(v0 - 152);

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_217752EE8();
}

void OUTLINED_FUNCTION_13_6(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

__n128 OUTLINED_FUNCTION_2_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61, __int128 a62, __n128 a63)
{
  *v64 = a61;
  *(v64 + 16) = a62;
  result = a63;
  *(v64 + 32) = a63;
  *(v64 + 48) = a64;
  return result;
}

double OUTLINED_FUNCTION_2_34(uint64_t a1)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_40()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_2_42(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 56);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_2_45()
{
  *(v3 + 16) = v0;
  v4 = *(v1 + 32);
  return v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_2173C74C0();
}

uint64_t OUTLINED_FUNCTION_2_48@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_50(uint64_t a1)
{
  *(a1 + 8) = sub_2173D93F4;
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_52()
{

  return sub_217752E58();
}

__n128 OUTLINED_FUNCTION_2_54()
{
  v2 = *(v1 + 144);
  *(v1 + 240) = *(v1 + 128);
  *(v1 + 256) = v2;
  result = *(v1 + 160);
  *(v1 + 272) = result;
  *(v0 + 896) = *(v0 + 784);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_57()
{
  result = 0;
  *(v0 + 656) = 0;
  *(v0 + 648) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_63@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 16) = a1;
  *(v2 + 40) = a2;
  return v2 + 16;
}

void OUTLINED_FUNCTION_2_66()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 168);
  v6 = *(v0 + 184);
  v7 = *(v0 + 136);
  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = *(v0 + 40);
  v15 = v0[1];
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_69()
{
  __swift_destroy_boxed_opaque_existential_1((v2 - 128));
  v3 = *(*(v0 + 104) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_73()
{
  v2 = *(*(v0 + 32) + 16);
}

__n128 OUTLINED_FUNCTION_2_74()
{
  result = *v0;
  v1[18] = *v0;
  v1[19].n128_u64[0] = v2;
  v1[19].n128_u64[1] = v3;
  v1[17].n128_u64[1] = v4;
  v1[22].n128_u8[0] = 4;
  return result;
}

__n128 OUTLINED_FUNCTION_2_76()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 80);
  result = *(v0 - 64);
  v4 = *(v0 - 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return sub_217752EA8();
}

void OUTLINED_FUNCTION_2_78()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_81@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

__n128 OUTLINED_FUNCTION_2_83()
{
  *(v1 + 16) = v2;
  v5 = v1 + 56 * v4;
  v7 = v0[1];
  result = v0[2];
  v8 = *v0;
  *(v5 + 80) = *(v0 + 6);
  *(v5 + 48) = v7;
  *(v5 + 64) = result;
  *(v5 + 32) = v8;
  v9 = v3[39];
  ++v3[40];
  v3[41] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_86()
{

  return sub_217752DE8();
}

uint64_t OUTLINED_FUNCTION_2_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_91()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_92()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_93()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_2_94()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_2_97()
{
}

uint64_t OUTLINED_FUNCTION_2_99()
{

  return sub_21736C3E8(0x722D74736574616CLL, 0xEF73657361656C65, 1);
}

void OUTLINED_FUNCTION_2_102()
{
  v1 = v0[185];
  v2 = v0[186];
  v3 = v0[196];
  v4 = v0[197];
}

uint64_t OUTLINED_FUNCTION_2_103()
{

  return sub_217751FF8();
}

void OUTLINED_FUNCTION_2_104()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_2_105()
{

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_2_107(void *a1)
{

  return memcpy(a1, (v1 + 8), 0x91uLL);
}

__n128 OUTLINED_FUNCTION_2_108()
{
  *v6 = *(v1 + 96);
  *&v6[9] = *(v1 + 105);
  result = *(v1 + 80);
  v5 = *(v1 + 64);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_112()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_2_116@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 32) = a2;
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_117()
{
  v2 = *(v0 - 104);

  return sub_217752EE8();
}

uint64_t OUTLINED_FUNCTION_2_123()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_2_126(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_130()
{

  return sub_2171F9380(v1, v0, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_2_133()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_136@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 640) = a1;
  *(v2 + 664) = a2;
  return v2 + 640;
}

void *OUTLINED_FUNCTION_2_139(void *a1)
{

  return memcpy(a1, v1, 0x161uLL);
}

void OUTLINED_FUNCTION_2_143()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_2_144()
{
  v0[70] = 1;
  v0[72] = 1;
  v0[74] = 1;
}

uint64_t OUTLINED_FUNCTION_2_145()
{

  return sub_217752EF8();
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

uint64_t static MusicFeatureFlag.isEnabled(_:configuration:)(__int128 *a1, void *a2)
{
  v3 = a1[1];
  v20 = *a1;
  *v21 = v3;
  *&v21[9] = *(a1 + 25);
  v4 = v3;
  v5 = *&v21[8];
  v6 = *&v21[16];
  v7 = v21[24];
  v19[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  v19[4] = sub_2171FEF88();
  v8 = swift_allocObject();
  v19[0] = v8;
  *(v8 + 16) = v20;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  v9 = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = (*(v12 + 72))(v11, v12);
    if (v13)
    {
      v10 = sub_2176966D0(&v20, v13);
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 80))(v14, v15);
  if (v16)
  {
    v17 = sub_2176966D0(&v20, v16);

    v10 &= !v17;
  }

  return v10 & 1;
}

unint64_t sub_2171FEF88()
{
  result = qword_280BE9100[0];
  if (!qword_280BE9100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE9100);
  }

  return result;
}

uint64_t sub_2171FEFDC()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_2171FEFE8()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_2171FEFF4(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_2171FF024()
{
  result = sub_217751818();
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

uint64_t sub_2171FF0E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_2172202A4(v5);
}

uint64_t sub_2171FF178()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_217282D8C;
  OUTLINED_FUNCTION_88_3();

  return sub_217202354(v7, v8, v9, v3);
}

uint64_t OUTLINED_FUNCTION_946()
{

  return sub_2172CA838(v1 + 128, v0 + 184);
}

uint64_t sub_2171FF238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2171FF280(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_1302();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2171FF2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2171FF30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

void WeakValuesDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v42 = v2;
  v4 = v3;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v40 = v13 - v12;
  v15 = *(v14 + 24);
  v16 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v40 - v23;
  OUTLINED_FUNCTION_0();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = *(v18 + 16);
  v41 = v4;
  v34(v24, v4, v16);
  if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
  {
    v35 = *(v18 + 8);
    v35(v24, v16);
    sub_2171F5808();
    v36 = *(v1 + 32);
    OUTLINED_FUNCTION_9_6();
    sub_217751E38();
    v37 = v42;
    sub_217751DB8();
    (*(v7 + 8))(v37, v5);
    v35(v41, v16);
  }

  else
  {
    (*(v26 + 32))(v33, v24, v15);
    (*(v7 + 16))(v40, v42, v5);
    sub_2171F5808();
    v43[3] = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(v26 + 16))(boxed_opaque_existential_0, v33, v15);
    v43[0] = sub_2171FFFB4(v43);
    v39 = *(v1 + 32);
    OUTLINED_FUNCTION_9_6();
    sub_217751E38();
    sub_217751E78();
    (*(v7 + 8))(v42, v5);
    (*(v18 + 8))(v41, v16);
    (*(v26 + 8))(v33, v15);
  }

  OUTLINED_FUNCTION_13();
}

__n128 OUTLINED_FUNCTION_27_2()
{
  v2 = *(v1 + 184);
  *(v0 + 48) = *(v1 + 168);
  *(v0 + 64) = v2;
  result = *(v1 + 200);
  *(v0 + 80) = result;
  *(v0 + 96) = *(v0 + 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_12_11()
{
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

__n128 OUTLINED_FUNCTION_12_12()
{
  result = *(v1 - 128);
  v3 = *(v1 - 112);
  *(v0 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  v1 = v0[401];
  v2 = v0[400];
  result = v0[394];
  v4 = v0[385];
  v5 = v0[382];
  v6 = v0[381];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_655()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_896()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_26()
{
  v1 = *(*(v0 - 416) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_29()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_12_31()
{

  return sub_2174A87A0(v1, v0 + 120, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_9()
{
}

__n128 OUTLINED_FUNCTION_12_37()
{
  *(v0 + 16) = v1;
  v4 = v0 + (v2 << 6);
  result = *(v3 - 304);
  v6 = *(v3 - 288);
  v7 = *(v3 - 272);
  *(v4 + 73) = *(v3 - 263);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_12_41()
{
  v2 = v0[35];
  v3 = v0[34];

  return __swift_project_boxed_opaque_existential_1(v0 + 31, v3);
}

void OUTLINED_FUNCTION_12_42()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_27_3@<X0>(__int128 *a1@<X8>)
{
  v3 = *a1;

  return type metadata accessor for MusicRelationshipProperty();
}

uint64_t OUTLINED_FUNCTION_12_44@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_46()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_12_48()
{

  return memcpy((v0 + 2336), (v0 + 240), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_12_49()
{

  return sub_2175F9030();
}

id OUTLINED_FUNCTION_12_52(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *OUTLINED_FUNCTION_12_53(void *a1)
{

  return memcpy(a1, (v1 + 3920), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_12_56()
{

  return sub_2172E3D54();
}

void OUTLINED_FUNCTION_12_57(int a1@<W8>)
{
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7] = a1;
  v1[8] = a1;
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
  v1[12] = a1;
  v1[14] = a1;
}

uint64_t OUTLINED_FUNCTION_12_60()
{
  result = 0;
  *(v0 + 848) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_62()
{

  return sub_217751518();
}

uint64_t OUTLINED_FUNCTION_12_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_65()
{
  v3 = *(v1 + 824);
  v4 = *(v1 + 800);

  return sub_2176C9AD8(v0, v1 + 696);
}

uint64_t OUTLINED_FUNCTION_12_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_21729C5E8(v5 + 16, va);
}

uint64_t OUTLINED_FUNCTION_12_67()
{

  return sub_217275694(v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_70()
{
  result = 0;
  *(v0 + 656) = 0;
  *(v0 + 648) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_72()
{
  result = v0 - 128;
  v2 = *(v0 - 136);
  return result;
}

unint64_t OUTLINED_FUNCTION_12_73()
{
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 328);
  v7 = *(v0 + 312);
  v8 = *(v0 + 224);

  return sub_2177334DC(v1, v4);
}

__n128 OUTLINED_FUNCTION_12_75()
{
  *(v2 + 16) = v1;
  v4 = v2 + (v3 << 6);
  result = *(v0 + 240);
  v6 = *(v0 + 256);
  v7 = *(v0 + 272);
  *(v4 + 74) = *(v0 + 282);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  return result;
}

id sub_2171FFFB4(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_0();
    v4 = v3;
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v7, v8);
    OUTLINED_FUNCTION_1();
    v11 = v10 - v9;
    (*(v4 + 16))(v10 - v9);
    v12 = sub_217753048();
    (*(v4 + 8))(v11, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [swift_getObjCClassFromMetadata() valueWithWeakObject_];
  swift_unknownObjectRelease();
  return v13;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_8(uint64_t result)
{
  *(v1 + 248) = result;
  *(v1 + 192) = MEMORY[0x277D85DD0];
  return result;
}

__n128 OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a13)
{
  *v13 = a11;
  v13[1] = a12;
  result = a13;
  v13[2] = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_9_10()
{
  *(v0 + 16) = v2;
  v5 = v0 + 48 * v1;
  result = *(v4 - 152);
  v7 = *(v3 + 32);
  *(v5 + 48) = *(v3 + 16);
  *(v5 + 64) = v7;
  *(v5 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 264);
  return result;
}

void OUTLINED_FUNCTION_9_12(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v4);
  v11 = *(v1 + v4 + 8);
}

uint64_t OUTLINED_FUNCTION_9_14@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_once();
}

void OUTLINED_FUNCTION_190()
{
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_9_17()
{
  v0[12] = 0;
  v0[14] = 0;
  v0[16] = 0;
}

void *OUTLINED_FUNCTION_176(void *a1)
{

  return memcpy(a1, (v1 + 440), 0x1B8uLL);
}

void *OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2)
{

  return sub_2173834E0(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  result = v0[397];
  v2 = v0[394];
  v3 = v0[382];
  v4 = *(v0[393] + 32);
  return result;
}

void OUTLINED_FUNCTION_9_23(unint64_t a1@<X8>)
{

  sub_2172B1A50(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_27()
{
}

unint64_t OUTLINED_FUNCTION_9_29()
{
  v4 = v3[37];
  v5 = v3[32];
  v6 = v3[33];
  *(v0 + 16) = v1;
  v7 = *(v6 + 32);
  return v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_9_30@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_32@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v9, v10, va);
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return sub_217751358();
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  sub_2171F3F0C((v0 + 480), v0 + 528);
  v1 = *(v0 + 552);
  v2 = *(v0 + 560);
  __swift_project_boxed_opaque_existential_1((v0 + 528), v1);
  v3 = *(v2 + 8);
  v4 = *(v0 + 88);
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return PropertyProvider.eraseToAnyPropertyProvider()(v9, v10, va);
}

uint64_t OUTLINED_FUNCTION_9_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v2 = *(v0 - 344);

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_9_49()
{
  v0[14] = sub_21758A3AC;
  v0[15] = v2;
  v0[10] = v1;
  v0[11] = v3;
}

uint64_t OUTLINED_FUNCTION_9_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2171F06D8(&a9, v9, v10);
}

uint64_t OUTLINED_FUNCTION_9_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_57()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_9_58()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_9_60()
{

  return sub_217752E48();
}

uint64_t OUTLINED_FUNCTION_9_61()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{

  return sub_2175EDB88(v5, v6, a1, a2, a3, a4, v7, a5);
}

uint64_t OUTLINED_FUNCTION_9_66()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_9_68()
{
  v2 = v0[8];
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v2);
  v3 = *(*(v1 + 8) + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_282()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_70(uint64_t a1)
{

  return sub_2171F5110(a1, v1 + 608, v3, v2);
}

void *OUTLINED_FUNCTION_9_72()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_74()
{

  return sub_217751588();
}

uint64_t OUTLINED_FUNCTION_9_78()
{

  return sub_2172E3D54();
}

void OUTLINED_FUNCTION_9_80(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
}

uint64_t OUTLINED_FUNCTION_9_83()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_86(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(*(v2 + 8) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_88(uint64_t a1)
{

  return sub_2176F2B38(v1, a1, type metadata accessor for PlaylistEntryPropertyProvider);
}

uint64_t OUTLINED_FUNCTION_9_89()
{
  result = v0[360];
  v2 = v0[357];
  v3 = v0[356];
  v4 = v0[355];
  v5 = v0[354];
  v6 = v0[353];
  v7 = v0[352];
  v8 = v0[351];
  v9 = v0[350];
  v10 = v0[349];
  v11 = v0[348];
  v12 = v0[347];
  return result;
}

unint64_t OUTLINED_FUNCTION_9_90()
{
  *(v2 - 224) = v1;
  *(v2 - 216) = v0;
  *(v2 - 120) = 10;
  *(v2 - 112) = 0xE100000000000000;
  *(v2 - 136) = 0x202020200ALL;
  *(v2 - 128) = 0xE500000000000000;

  return sub_21733A5C8();
}

uint64_t OUTLINED_FUNCTION_9_92@<X0>(char a1@<W8>)
{
  *(v1 - 200) = a1;

  return sub_217752E68();
}

uint64_t OUTLINED_FUNCTION_9_94()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_95()
{
  result = v0[16];
  v2 = v0[14];
  v3 = *(v0[18] + 56);
  return result;
}

id OUTLINED_FUNCTION_9_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  a49 = v50;

  return sub_2172B7F78(v49, &a49);
}

uint64_t OUTLINED_FUNCTION_9_99()
{

  return sub_217752F38();
}

void OUTLINED_FUNCTION_9_100()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[40] + 16;
  v5 = v0[35] + 32;
  v4 = v0[26] & 0xC000000000000001;
}

double OUTLINED_FUNCTION_9_101()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_1()
{
  result = *(v0 - 224);
  v2 = *(v0 - 216);
  return result;
}

double OUTLINED_FUNCTION_95_2@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = -1;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = a1;
  LOBYTE(a9) = v15;
  *(v12 + 16) = v13;

  return sub_2171F3F0C(&a9, v12 + v16 * v14 + 32);
}

double OUTLINED_FUNCTION_83_2()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_95_10(__n128 a1)
{
  v1[11] = a1;
  v1[12].n128_u64[0] = v2;
  v1[12].n128_u64[1] = v5;
  v1[13].n128_u64[0] = v4;
  v1[13].n128_u64[1] = v6;
  v1[14].n128_u64[0] = v7;
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
}

void OUTLINED_FUNCTION_95_11()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_95_12()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_95_13()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_95_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_95_15()
{

  JUMPOUT(0x21CEA23B0);
}

id OUTLINED_FUNCTION_95_16(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return [v11 (v10 + 3008)];
}

uint64_t OUTLINED_FUNCTION_95_17@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 1160, a1, a2);
}

void *OUTLINED_FUNCTION_95_18(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_143_1@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_169_1(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_143_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1)
{

  return static AnyMusicProperty.== infix(_:_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_143_4(uint64_t a1)
{

  return sub_2174D37FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_143_5()
{

  return sub_217751EB8();
}

id OUTLINED_FUNCTION_143_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  return [a10 (v11 + 3818)];
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_217752AA8();
}

BOOL OUTLINED_FUNCTION_13_11()
{
  v2 = *(v0 - 336);

  return sub_2173DD938();
}

void OUTLINED_FUNCTION_13_13()
{
  v0[3] = 0;
  *(v1 - 72) = 0;
  v0[4] = 0;
  v0[6] = 0;
  v0[8] = 0;
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v1 = v0[391];
  v2 = v0[383];
  v3 = v0[382];
  v4 = *(v0[384] + 32);
  return v0[385];
}

void OUTLINED_FUNCTION_13_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_21(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_13_22()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_13_23()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 624);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_2173C74C0();
}

void OUTLINED_FUNCTION_13_28()
{
  *(v3 + 107) = v5;
  *(v3 + 456) = v2;
  *(v3 + 464) = v4;
  *(v3 + 440) = v1;
  *(v3 + 448) = v0;
  *(v3 + 106) = v8;
  *(v3 + 432) = v7;
  *(v3 + 105) = v6 & 1;
  v9 = *(v3 + 408);
  v10 = *(v3 + 384);
  v11 = *(*(v3 + 240) + 24);
  *(v3 + 472) = v11;
  *(v3 + 208) = v11;
  v12 = *(v9 + *(v10 + 24));
}

uint64_t OUTLINED_FUNCTION_542()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_31()
{

  return Encoder.dataRequestConfiguration.getter(v0, v1);
}

void *OUTLINED_FUNCTION_13_32(void *a1)
{

  return memcpy(a1, v1, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_13_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_34()
{
  v2 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_217204C70(v2);
}

uint64_t OUTLINED_FUNCTION_13_35(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void OUTLINED_FUNCTION_13_38()
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

void OUTLINED_FUNCTION_13_40()
{
  v2 = *(v0 + 16) + 1;

  sub_2172AFF2C();
}

void OUTLINED_FUNCTION_18_1()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_13_45@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13_47(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_13_49()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_13_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_53()
{

  return sub_2177531E8();
}

uint64_t OUTLINED_FUNCTION_13_54(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2171FF30C(a1, va);
}

uint64_t OUTLINED_FUNCTION_13_57()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_13_59()
{

  return type metadata accessor for CloudPlaylistFolderItem();
}

uint64_t OUTLINED_FUNCTION_13_60()
{

  return _s5QueueC7EntriesV5StateCMa();
}

uint64_t OUTLINED_FUNCTION_13_62()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_13_63()
{
  *(v0 + 160) = 0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  return v0 + 128;
}

uint64_t OUTLINED_FUNCTION_13_64()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

void OUTLINED_FUNCTION_13_65()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_13_66()
{
  v0[105] = 0;
  v0[104] = 0;
  v0[106] = 0;
}

uint64_t OUTLINED_FUNCTION_13_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_21729C5E8(v5 + 16, va);
}

uint64_t OUTLINED_FUNCTION_13_70()
{
  *(v5 + v1[12]) = v4;
  *(v5 + v1[13]) = v2;
  *(v5 + v1[14]) = v3;
  *(v5 + v1[15]) = *(v0 + 56);
  v7 = *(v0 + 40);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_13_72()
{
  v1 = *(v0 + 16);
  *&STACK[0x4D0] = *v0;
  *&STACK[0x4E0] = v1;
  result = *(v0 + 32);
  *&STACK[0x4F0] = result;
  STACK[0x500] = STACK[0x258];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_73(uint64_t result)
{
  *(v1 - 240) = result;
  *(v1 - 248) = *(v1 - 280) + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_76@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = a2;
  *(v3 - 80) = a3;
  return v3 - 104;
}

void OUTLINED_FUNCTION_13_77(int a1@<W8>)
{
  v1[76] = a1;
  v1[84] = a1;
  v1[86] = a1;
  v1[88] = a1;
}

void OUTLINED_FUNCTION_13_78()
{

  JUMPOUT(0x21CEA2E30);
}

Swift::Void __swiftcall MusicLibrarySectionedRequest.filterItems(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = *(v1 + 56);
  sub_217751DE8();

  *(v1 + 48) = countAndFlagsBits;
  *(v1 + 56) = object;
}

uint64_t MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_15(a1);
  v3 = *(v2 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicSortDescriptor();
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v4);
  sub_217204C70(*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_217752378();
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_102_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_99_2@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_157_0()
{

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_15()
{
  result = v0[7];
  v2 = *(v0[6] + 8);
  v3 = v0[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_24_16()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
  v3 = *(v1 + 8);
  return *(v2 - 72);
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  result = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[13];
  v5 = *(v0[14] + 8);
  return result;
}

void *OUTLINED_FUNCTION_24_19()
{
  v7 = v5 + v1[9];
  *v7 = *(v0 + 200);
  *(v7 + 8) = v2;
  *(v7 + 16) = *(v0 + 192);
  v8 = (v5 + v1[10]);
  *v8 = *(v0 + 208);
  v8[1] = v3;
  v9 = (v5 + v1[11]);
  v10 = (v4 + *(v0 + 184));

  return memcpy(v9, v10, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_24_20(uint64_t a1)
{

  return sub_2171F5110(a1, &STACK[0x228], v1, v2);
}

unint64_t OUTLINED_FUNCTION_24_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 16) = a15;
  result = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a16;
  v19 = *(v17 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_24()
{
  v3 = *(v0 + 4320);
  v4 = *(v0 + 4296);
}

uint64_t OUTLINED_FUNCTION_24_26()
{

  return sub_217751358();
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return type metadata accessor for CuratorPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_24_35()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return MusicRelationshipProperty.__allocating_init(_:kind:)();
}

uint64_t OUTLINED_FUNCTION_24_37@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_24_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_43()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_45@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 104) + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_46()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_24_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return sub_2172843E8(va1, va);
}

uint64_t OUTLINED_FUNCTION_24_49()
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_52()
{
  v2 = *(v1 - 344);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
}

void *OUTLINED_FUNCTION_24_54(void *a1)
{

  return memcpy(a1, v1, 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_24_56()
{

  return sub_217751A88();
}

uint64_t sub_217201FDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217202078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2172020E0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F20, &qword_21775A328);
      v8 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_7_9(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217226924(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F28, &unk_21775A330);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void *OUTLINED_FUNCTION_149_1()
{

  return memcpy((v0 + 104), (v0 + 232), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_195_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_149_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_176_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_149_5()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 464);
}

uint64_t OUTLINED_FUNCTION_149_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 128);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_149_7(uint64_t a1, uint64_t a2)
{

  return sub_21738C4B0(a1, a2, v2, v3);
}

void *OUTLINED_FUNCTION_149_8()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t sub_2172022C0()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14(v4);

  return v7(v6);
}

uint64_t sub_217202354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB282D0, &qword_21776C3D0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_217752888();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21720244C, 0, 0);
}

uint64_t sub_21720244C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277D7F8E8];
  sub_217752898();

  sub_217752868();
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_1058();
  sub_2171FF280(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[11] = v8;
  *v8 = v9;
  v8[1] = sub_21746C190;
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  OUTLINED_FUNCTION_838();

  return MEMORY[0x282200308](v13);
}

_OWORD *OUTLINED_FUNCTION_84_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_2172124CC((v15 + 16), &a15);
}

void OUTLINED_FUNCTION_84_3(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_84_5@<X0>(char a1@<W8>)
{
  *(v1 + 112) = a1;
  result = v1 + 112;
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_84_6()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 200);

  return sub_217544F40((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_84_7()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_84_8()
{
  v2 = *(v1 + 16);
  *(v0 + 288) = *v1;
  *(v0 + 304) = v2;
  result = *(v1 + 32);
  *(v0 + 320) = result;
  *(v0 + 336) = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return sub_217753058();
}

id OUTLINED_FUNCTION_84_12(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v11 appendSection_];
}