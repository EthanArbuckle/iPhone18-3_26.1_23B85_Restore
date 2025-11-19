void sub_2173C5EE8()
{
  OUTLINED_FUNCTION_214();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_0_41();
  v7 = *(v6 + 256);
  v8 = static CloudResourceConvertible.catalogTypes.getter();
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
    sub_217751DE8();

    v18 = v10;
    v19 = v9;
    MEMORY[0x21CEA23B0](58, 0xE100000000000000);
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v11, v12);

    type metadata accessor for PartialMusicProperty();
    type metadata accessor for AnyMusicProperty();
    v13 = sub_217752C68();

    *(v3 + 104) = 0;
    *(v3 + 112) = 1;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v18;
    *(v3 + 40) = v19;
    *(v3 + 48) = xmmword_217768550;
    *(v3 + 64) = 2;
    v14 = MEMORY[0x277D84F90];
    *(v3 + 72) = v13;
    *(v3 + 80) = v14;
    *(v3 + 88) = v14;
    *(v3 + 96) = &unk_282959AF8;

    OUTLINED_FUNCTION_213();
  }

  else
  {

    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_30_19();
    MEMORY[0x21CEA23B0](v15 + 30, v16 | 0x8000000000000000);
    v17 = sub_217753348();
    MEMORY[0x21CEA23B0](v17);

    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_19_15();
    __break(1u);
  }
}

unint64_t sub_2173C611C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_1();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v3 = *(v2 + 256);
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v6 = *(v5 + 264);
  v7 = sub_217753348();
  MEMORY[0x21CEA23B0](v7);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](v0[2], v0[3]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v8 = v0[5];
  if (v8)
  {
    v9 = v0[4];
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v9, v8);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0x3A65706F6373202CLL, 0xEA00000000002220);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t MusicItem<>.with(_:preferredSource:options:)()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v6;
  *(v1 + 80) = v4;
  *(v1 + 56) = v14;
  *(v1 + 64) = v8;
  *(v1 + 48) = v15;
  v16 = *(v8 - 8);
  *(v1 + 104) = v16;
  v17 = *(v16 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 16) = v9;
  *(v1 + 24) = v7;
  *(v1 + 32) = v5;
  *(v1 + 40) = v3;
  v18 = type metadata accessor for MusicAsyncPropertyRequest();
  *(v1 + 120) = v18;
  v19 = *(v18 - 8);
  OUTLINED_FUNCTION_66_3();
  *(v1 + 128) = v20;
  v22 = *(v21 + 64) + 15;
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 160) = *v13;
  *(v1 + 161) = *v11;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2173C6414()
{
  v17 = v0;
  v1 = *(v0 + 161);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(v4, *(v0 + 96), v8);
  v15 = v2;
  v16 = v1;
  sub_217751DE8();
  sub_21738F0D4(v4, v9, &v15, &v16, v8, v3);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_2173C653C;
  v11 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = *(v0 + 48);

  return sub_21738F380();
}

uint64_t sub_2173C653C()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 152) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2173C6640()
{
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_201_0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2173C66B8()
{
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_201_0();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 152);

  return v3();
}

uint64_t sub_2173C6730(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_2173C6748(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2173C6760@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2173C5648(a1, v2[3], a2);
}

unint64_t sub_2173C67C0()
{
  result = qword_27CB26F80;
  if (!qword_27CB26F80)
  {
    type metadata accessor for AnyMusicProperty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F80);
  }

  return result;
}

unint64_t sub_2173C6818()
{
  result = qword_27CB26F88;
  if (!qword_27CB26F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicRelationshipPropertyKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of MusicPropertyContainer.with(_:)()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18_22();
  v7 = *(v6 + 8);
  OUTLINED_FUNCTION_66_3();
  v15 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_19(v11);
  *v12 = v13;
  v12[1] = sub_2173C7278;

  return v15(v1, v0, v5, v3);
}

uint64_t dispatch thunk of MusicPropertyContainer.with(_:preferredSource:)()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_24_18();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_66_3();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_22(v6);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_24_18();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_66_3();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_22(v6);

  return v9(v8);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA8PropertyC0D4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2173C70B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173C70F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2173C7138(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_2173C7164()
{
  result = qword_27CB26F90;
  if (!qword_27CB26F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F90);
  }

  return result;
}

uint64_t sub_2173C71B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_2173C4E50(a1, v2[5], v2[6], v2[7], a2);
}

unint64_t sub_2173C71E0()
{
  result = qword_27CB26FA0;
  if (!qword_27CB26FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26FA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_15_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, int a11, char a12)
{
  *(a1 + 16) = v18;
  *(a1 + 24) = v17;
  *(a1 + 32) = v16;
  *(a1 + 40) = v15;
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  *(a1 + 64) = v12;
  *(a1 + 65) = a12;
  result = a9;
  *(a1 + 72) = a9;
  return result;
}

void OUTLINED_FUNCTION_22_20()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_48_11()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t ResourceType.supportsFilteredByEquivalencies.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_9_25();
  }

  if (qword_280BE8A90 == v1 && *algn_280BE8A98 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();
  if (sub_217753058())
  {
    return 1;
  }

  if (qword_280BE8B28 != -1)
  {
    OUTLINED_FUNCTION_8_31();
  }

  if (qword_280BE8B30 == v1 && *algn_280BE8B38 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();
  if (sub_217753058())
  {
    return 1;
  }

  if (qword_280BEA1C8 != -1)
  {
    OUTLINED_FUNCTION_7_29();
  }

  if (qword_280BEA1D0 == v1 && *algn_280BEA1D8 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();

  return sub_217753058();
}

uint64_t sub_2173C74C0()
{
  sub_217751DE8();
  sub_217751DE8();
  do
  {
    while (1)
    {
      v0 = sub_217752068();
      if (!v1)
      {

        sub_217752068();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_217752068();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_217753058();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_2173C7608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_217751DE8();
  OUTLINED_FUNCTION_1_45();
  v6 = sub_2173C74C0();

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t ResourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

void sub_2173C76A4()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.album.getter()
{
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_9_25();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8A90);

  return sub_217751DE8();
}

void sub_2173C774C()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.appleCurator.getter()
{
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4BF8);

  return sub_217751DE8();
}

void sub_2173C780C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.artist.getter()
{
  if (qword_280BE4A68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A70);

  return sub_217751DE8();
}

void sub_2173C78C8()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.audioAnalysis.getter()
{
  if (qword_27CB23B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FA8);

  return sub_217751DE8();
}

uint64_t sub_2173C7988()
{
  result = sub_2173C74C0();
  qword_280BE4A30 = 0x7265736F706D6F63;
  *algn_280BE4A38 = 0xE900000000000073;
  byte_280BE4A40 = result & 1;
  return result;
}

uint64_t static ResourceType.composer.getter()
{
  if (qword_280BE4A28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A30);

  return sub_217751DE8();
}

void sub_2173C7A60()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.creditArtist.getter()
{
  if (qword_280BE4BD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4BD8);

  return sub_217751DE8();
}

void sub_2173C7B20()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.creditsSection.getter()
{
  if (qword_27CB23B88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FC0);

  return sub_217751DE8();
}

void sub_2173C7BE0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.curator.getter()
{
  if (qword_280BE7E50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE7E58);

  return sub_217751DE8();
}

void sub_2173C7C9C()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.editorialItem.getter()
{
  if (qword_280BE4BA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4BB0);

  return sub_217751DE8();
}

void sub_2173C7D5C()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.flexAnalysis.getter()
{
  if (qword_27CB23B90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FD8);

  return sub_217751DE8();
}

void sub_2173C7E1C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.genre.getter()
{
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A90);

  return sub_217751DE8();
}

uint64_t sub_2173C7ED4()
{
  result = sub_2173C74C0();
  qword_27CB26FF0 = 0x6E6974656B72616DLL;
  *algn_27CB26FF8 = 0xEF736D6574692D67;
  byte_27CB27000 = result & 1;
  return result;
}

uint64_t static ResourceType.marketingItem.getter()
{
  if (qword_27CB23BA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FF0);

  return sub_217751DE8();
}

void sub_2173C7FB0()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.musicMovie.getter()
{
  if (qword_280BE8B48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE8B50);

  return sub_217751DE8();
}

uint64_t sub_2173C806C()
{
  result = sub_2173C74C0();
  qword_27CB27008 = 0x75732D636973756DLL;
  unk_27CB27010 = 0xEF73656972616D6DLL;
  byte_27CB27018 = result & 1;
  return result;
}

uint64_t static ResourceType.musicSummary.getter()
{
  if (qword_27CB23BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27008);

  return sub_217751DE8();
}

void sub_2173C8148()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.musicVideo.getter()
{
  if (qword_280BE8B28 != -1)
  {
    OUTLINED_FUNCTION_8_31();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B30);

  return sub_217751DE8();
}

void sub_2173C81F4()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.personalRecommendation.getter()
{
  if (qword_280BE4AB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AB8);

  return sub_217751DE8();
}

void sub_2173C82B0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.playlist.getter()
{
  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8A40);

  return sub_217751DE8();
}

void sub_2173C8374()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.playlistCollaboration.getter()
{
  if (qword_280BE4AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AD8);

  return sub_217751DE8();
}

void sub_2173C8430()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.playlistEntry.getter()
{
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8AD0);

  return sub_217751DE8();
}

uint64_t sub_2173C84EC()
{
  result = sub_2173C74C0();
  qword_27CB27020 = 0xD000000000000018;
  *algn_27CB27028 = 0x80000002177AD790;
  byte_27CB27030 = result & 1;
  return result;
}

uint64_t static ResourceType.playlistEntryReaction.getter()
{
  if (qword_27CB23BC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27020);

  return sub_217751DE8();
}

void sub_2173C85C4()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.recordLabel.getter()
{
  if (qword_280BE4C38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4C40);

  return sub_217751DE8();
}

void sub_2173C8684()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.socialProfile.getter()
{
  if (qword_280BE4B60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4B68);

  return sub_217751DE8();
}

void sub_2173C8744()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.song.getter()
{
  if (qword_280BEA1C8 != -1)
  {
    OUTLINED_FUNCTION_7_29();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BEA1D0);

  return sub_217751DE8();
}

void sub_2173C87EC()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.station.getter()
{
  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8A68);

  return sub_217751DE8();
}

void sub_2173C88A8()
{
  OUTLINED_FUNCTION_1_45();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.tvEpisode.getter()
{
  if (qword_280BE49D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE49E0);

  return sub_217751DE8();
}

uint64_t sub_2173C8964()
{
  result = sub_2173C74C0();
  qword_280BE4A08 = 0x6F736165732D7674;
  unk_280BE4A10 = 0xEA0000000000736ELL;
  byte_280BE4A18 = result & 1;
  return result;
}

uint64_t static ResourceType.tvSeason.getter()
{
  if (qword_280BE4A00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A08);

  return sub_217751DE8();
}

uint64_t sub_2173C8A3C()
{
  result = sub_2173C74C0();
  qword_280BE4A50 = 0x73776F68732D7674;
  *algn_280BE4A58 = 0xE800000000000000;
  byte_280BE4A60 = result & 1;
  return result;
}

uint64_t static ResourceType.tvShow.getter()
{
  if (qword_280BE4A48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A50);

  return sub_217751DE8();
}

void sub_2173C8B0C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_16_27();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.uploadedAudio.getter()
{
  if (qword_280BE4B40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4B48);

  return sub_217751DE8();
}

void sub_2173C8BC0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_16_27();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.uploadedVideo.getter()
{
  if (qword_280BE4B18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4B20);

  return sub_217751DE8();
}

void sub_2173C8C74()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.userProfile.getter()
{
  if (qword_280BE4C10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4C18);

  return sub_217751DE8();
}

void sub_2173C8D30()
{
  OUTLINED_FUNCTION_6_31();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.libraryAlbum.getter()
{
  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8AF0);

  return sub_217751DE8();
}

void sub_2173C8DE4()
{
  OUTLINED_FUNCTION_6_31();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.libraryArtist.getter()
{
  if (qword_280BE4B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4B88);

  return sub_217751DE8();
}

void sub_2173C8E98()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.libraryMusicVideo.getter()
{
  if (qword_280BE8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B70);

  return sub_217751DE8();
}

uint64_t sub_2173C8F54()
{
  result = sub_2173C74C0();
  strcpy(&qword_27CB27038, "library-pins");
  unk_27CB27045 = 0;
  unk_27CB27046 = -5120;
  byte_27CB27048 = result & 1;
  return result;
}

uint64_t static ResourceType.libraryPin.getter()
{
  if (qword_27CB23BD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27038);

  return sub_217751DE8();
}

void sub_2173C9020()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.libraryPlaylist.getter()
{
  if (qword_280BE8AA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8AB0);

  return sub_217751DE8();
}

void sub_2173C90DC()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v0 = OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_10_22(v0 & 1);
}

uint64_t static ResourceType.libraryPlaylistFolder.getter()
{
  if (qword_280BE4AF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AF8);

  return sub_217751DE8();
}

void sub_2173C9198()
{
  OUTLINED_FUNCTION_6_31();
  v0 = OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.librarySong.getter()
{
  if (qword_280BE8B08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B10);

  return sub_217751DE8();
}

uint64_t sub_2173C924C()
{
  result = sub_2173C74C0();
  qword_27CB27050 = 0x6E776F6E6B6E75;
  *algn_27CB27058 = 0xE700000000000000;
  byte_27CB27060 = result & 1;
  return result;
}

uint64_t static ResourceType.unknown.getter()
{
  if (qword_27CB23BE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27050);

  return sub_217751DE8();
}

uint64_t sub_2173C93E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_2175F877C();
}

uint64_t sub_2173C9400()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_2175F95E4();
}

unint64_t sub_2173C940C@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResourceType.init(stringLiteral:)(*a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2173C9454@<X0>(uint64_t *a1@<X8>)
{
  result = ResourceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ResourceType.correspondingCatalogType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16) == 1)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    OUTLINED_FUNCTION_12_21();
    sub_21733A5C8();
    OUTLINED_FUNCTION_15_25();
    v3 = OUTLINED_FUNCTION_14_0();
    result = v4;
  }

  else
  {
    result = sub_217751DE8();
  }

  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

Swift::String_optional __swiftcall ResourceType.hrefForResource(with:)(MusicKit::MusicItemID with)
{
  object = with.rawValue._object;
  countAndFlagsBits = with.rawValue._countAndFlagsBits;
  v5 = *v1;
  v4 = v1[1];
  if (*(v1 + 16) == 1)
  {
    v19[0] = *v1;
    OUTLINED_FUNCTION_12_21();
    sub_21733A5C8();
    OUTLINED_FUNCTION_15_25();
    v6 = OUTLINED_FUNCTION_14_0();
    v8 = v7;
    sub_217752AA8();

    v19[0] = 0x6C2F656D2F31762FLL;
    v19[1] = 0xEF2F797261726269;
    MEMORY[0x21CEA23B0](v6, v8);
  }

  else
  {
    sub_217752AA8();

    strcpy(v19, "/v1/catalog/");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    sub_217353968();
    if (qword_280BE8078 != -1)
    {
      swift_once();
    }

    v9 = qword_280C023D0;
    v10 = *(qword_280C023D0 + 40);
    v11 = *(v10 + 16);

    os_unfair_lock_lock(v11);
    v13 = *(v9 + 24);
    v12 = *(v9 + 32);
    v14 = *(v10 + 16);
    sub_217751DE8();
    os_unfair_lock_unlock(v14);

    if (v12)
    {
      v15 = v13;
    }

    else
    {
      v15 = 29557;
    }

    if (!v12)
    {
      v12 = 0xE200000000000000;
    }

    MEMORY[0x21CEA23B0](v15, v12);

    MEMORY[0x21CEA23B0](47, 0xE100000000000000);
    MEMORY[0x21CEA23B0](v5, v4);
  }

  MEMORY[0x21CEA23B0](47, 0xE100000000000000);
  MEMORY[0x21CEA23B0](countAndFlagsBits, object);
  v16 = v19[0];
  v17 = v19[1];
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t ResourceType.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

BOOL static Array<A>.~= infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (a1 + 40);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    if (*(v4 - 1) == v2 && *v4 == v3)
    {
      break;
    }

    v4 += 3;
    OUTLINED_FUNCTION_5_37();
  }

  while ((sub_217753058() & 1) == 0);
  return v5 != 0;
}

unint64_t sub_2173C97B4()
{
  result = qword_280BE49D0;
  if (!qword_280BE49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49D0);
  }

  return result;
}

unint64_t sub_2173C980C()
{
  result = qword_27CB27068;
  if (!qword_27CB27068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27068);
  }

  return result;
}

unint64_t sub_2173C9870()
{
  result = qword_27CB27070;
  if (!qword_27CB27070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27070);
  }

  return result;
}

unint64_t sub_2173C98EC()
{
  result = qword_280BE49C8;
  if (!qword_280BE49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49C8);
  }

  return result;
}

id sub_2173C997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_217717554(a1, a2, a3, a4);
  if (result)
  {
    return sub_2175B770C(result);
  }

  return result;
}

uint64_t ArtworkCatalog.__allocating_init(_:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = sub_2173CAF74(v11, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_2173C9A78@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_217751818();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  if (a3)
  {
    goto LABEL_2;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 24))(v20, v21);
  if (!v22)
  {
LABEL_7:
    sub_217751808();
    v18 = sub_2177517E8();
    v19 = v35;
    type metadata accessor for ArtworkLoadingProtocol();
    sub_217751DE8();
    a2 = sub_21757596C(v18, v19);
    a3 = v36;

    (*(v10 + 8))(v17, v8);
    goto LABEL_8;
  }

  v23 = v22;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = (*(v25 + 8))(v24, v25);
  if (!v27)
  {

    goto LABEL_7;
  }

  v28 = v26;
  v29 = v27;
  type metadata accessor for ArtworkLoadingProtocol();
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 16))(v30, v31);
  a2 = sub_217575358(v23, v28, v29, v32, v33);
  a3 = v34;

LABEL_2:
  v18 = 0;
  v19 = 0;
LABEL_8:
  *a4 = v18;
  a4[1] = v19;
  a4[2] = a2;
  a4[3] = a3;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *ArtworkCatalog.deinit()
{
  v1 = sub_217751C58();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_217751C88();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = v0[3];
  if (v21)
  {
    v22 = v0[2];
    v28 = v17;
    sub_2172B38C0();
    sub_217751DE8();
    v23 = sub_217752838();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    aBlock[4] = sub_2173CB0E0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2172B5448;
    aBlock[3] = &block_descriptor_5;
    v25 = _Block_copy(aBlock);

    sub_217751C78();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2171FC290(&qword_280BE99E8, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
    sub_2172B3934();
    sub_217752A08();
    MEMORY[0x21CEA2BA0](0, v20, v10, v25);
    _Block_release(v25);

    (*(v3 + 8))(v10, v1);
    (*(v12 + 8))(v20, v28);
    v26 = v0[3];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  return v0;
}

uint64_t sub_2173C9F6C()
{
  if (qword_280BE8888 != -1)
  {
    swift_once();
  }

  return sub_217577358();
}

uint64_t ArtworkCatalog.__deallocating_deinit()
{
  ArtworkCatalog.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t ArtworkCatalog.resizing(to:)(double a1, double a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_138();
  sub_2171FF30C((v2 + 4), v23);
  v6 = v24;
  v7 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(v7 + 80))(v6, v7, a1, a2);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v9 + 16))(v23 - v14, v23 - v14, v6, v17);
  OUTLINED_FUNCTION_6_32();
  v21 = sub_2173CAF74(v18, v19, v20, v7);
  (*(v9 + 8))(v23 - v14, v6);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v21;
}

uint64_t ArtworkCatalog.underlyingArtworkCatalog.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_10_23();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_2171F3F0C(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t sub_2173CA28C(double a1, double a2)
{
  OUTLINED_FUNCTION_10_23();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 32, v5);
  (*(v6 + 64))(v5, v6, a1, a2);
  return swift_endAccess();
}

uint64_t sub_2173CA32C()
{
  OUTLINED_FUNCTION_209();
  v1 = v0[10];
  OUTLINED_FUNCTION_138();
  sub_2171FF30C(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_7_30(v3);
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_2173CA45C;

  return v9(v2, v3);
}

uint64_t sub_2173CA45C()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *(*v1 + 88);
  v8 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  v6[12] = v0;

  if (v0)
  {
    v10 = sub_2173CA5EC;
  }

  else
  {
    v6[13] = v3;
    v6[14] = v5;
    v10 = sub_2173CA584;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2173CA584()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2173CA5EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t static ArtworkCatalog.== infix(_:_:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_217753058() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_16:
    v38 = 0;
    return v38 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_8:
  OUTLINED_FUNCTION_138();
  v8 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_2_48(v15);
  v17(v16);
  v18 = OUTLINED_FUNCTION_8_32();
  v20 = v19(v18);
  v22 = v21;
  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_138();
  v23 = a2[7];
  v24 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v23);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  (*(v26 + 16))(v32 - v31);
  v34 = (*(v24 + 40))(v23, v24);
  v36 = v35;
  (*(v26 + 8))(v33, v23);
  if (v22)
  {
    if (v36)
    {
      if (v20 == v34 && v22 == v36)
      {

        v38 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_6_32();
        v38 = sub_217753058();
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    if (!v36)
    {
      v38 = 1;
      return v38 & 1;
    }

    v38 = 0;
  }

  return v38 & 1;
}

uint64_t sub_2173CA8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_217753058();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t ArtworkCatalog.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v4 = a1;
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    v4 = a1;
    MEMORY[0x21CEA3550](0);
  }

  OUTLINED_FUNCTION_138();
  v5 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 32), v5);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_2_48(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_8_32();
  v16(v15);
  v18 = v17;
  (*(v7 + 8))(v4, v5);
  if (!v18)
  {
    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
}

uint64_t sub_2173CAA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x21CEA3550](0);
  }

  MEMORY[0x21CEA3550](1);

  return sub_217751FF8();
}

uint64_t sub_2173CAAE4(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  if (a2)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  return sub_217753238();
}

uint64_t sub_2173CAB7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_2173CAA74(v4, v1, v2);
  return sub_217753238();
}

uint64_t static ArtworkCatalog.Parameters.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_217753058() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t ArtworkCatalog.Parameters.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  OUTLINED_FUNCTION_6_32();

  return sub_217751FF8();
}

uint64_t ArtworkCatalog.Parameters.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  if (v2)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  OUTLINED_FUNCTION_6_32();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2173CAD8C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_2177531E8();
  ArtworkCatalog.Parameters.hash(into:)();
  return sub_217753238();
}

uint64_t ArtworkCatalog.hashValue.getter()
{
  sub_2177531E8();
  ArtworkCatalog.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173CAE88()
{
  v1 = *v0;
  sub_2177531E8();
  ArtworkCatalog.hash(into:)(v3);
  return sub_217753238();
}

uint64_t Artwork.ColorAnalysis.init(backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id Artwork.ColorAnalysis.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Artwork.ColorAnalysis.primaryTextColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *Artwork.ColorAnalysis.secondaryTextColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *Artwork.ColorAnalysis.tertiaryTextColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_2173CAF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = v11;
  v23[4] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(v7 + 32))(boxed_opaque_existential_0, a1, a3);
  sub_2171FF30C(v23, &v17);
  sub_2173C9A78(&v17, 0, 0, &v20);
  v17 = v20;
  v18 = v21;
  v19 = v22;
  v14 = swift_allocObject();
  (*(v7 + 16))(v10, boxed_opaque_existential_0, a3);
  v15 = sub_2173CB844(v10, &v17, v14, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v15;
}

uint64_t sub_2173CB0E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2173C9F6C();
}

unint64_t sub_2173CB0F4()
{
  result = qword_27CB27078;
  if (!qword_27CB27078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27078);
  }

  return result;
}

uint64_t sub_2173CB1CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2173CB20C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173CB258(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173CB2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UnderlyingArtworkCatalog.requestImageData()()
{
  OUTLINED_FUNCTION_209();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7_30(v1);
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  v8[1] = sub_2173CB4DC;

  return v10(v4, v2);
}

uint64_t sub_2173CB4DC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(a1, a2);
}

uint64_t dispatch thunk of UnderlyingArtworkCatalog.requestColorAnalysis()()
{
  OUTLINED_FUNCTION_209();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_2172AC7B0;

  return v11(v6, v4, v2);
}

uint64_t sub_2173CB71C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173CB76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2173CB7C0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2173CB7F0()
{
  result = qword_27CB27088;
  if (!qword_27CB27088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27088);
  }

  return result;
}

uint64_t sub_2173CB844(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  v11 = *(a2 + 3);
  if (qword_280BE9F10 != -1)
  {
    v16 = *a2;
    swift_once();
    v10 = v16;
  }

  *(a3 + 16) = v10;

  sub_2171FF30C(v17, a3 + 32);
  if (*(a3 + 24))
  {
    v12 = *(a3 + 16);
    v13 = qword_280BE8888;
    v14 = *(a3 + 24);
    sub_217751DE8();
    if (v13 != -1)
    {
      swift_once();
    }

    sub_217577290(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return a3;
}

uint64_t sub_2173CB988(uint64_t a1)
{
  v2 = sub_2173CBA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173CB9C4(uint64_t a1)
{
  v2 = sub_2173CBA44();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173CBA44()
{
  result = qword_27CB27098;
  if (!qword_27CB27098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27098);
  }

  return result;
}

uint64_t sub_2173CBB10(uint64_t a1)
{
  v2 = sub_2173CBBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173CBB4C(uint64_t a1)
{
  v2 = sub_2173CBBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173CBBCC()
{
  result = qword_27CB270A8;
  if (!qword_27CB270A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270A8);
  }

  return result;
}

uint64_t sub_2173CBC40(uint64_t a1)
{
  v2 = sub_2173CBCFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173CBC7C(uint64_t a1)
{
  v2 = sub_2173CBCFC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173CBCFC()
{
  result = qword_27CB270B8;
  if (!qword_27CB270B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270B8);
  }

  return result;
}

uint64_t sub_2173CBD70(uint64_t a1)
{
  v2 = sub_2173CBF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173CBDAC(uint64_t a1)
{
  v2 = sub_2173CBF28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2173CBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &a9 - v35;
  v37 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v36, v28);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2173CBF28()
{
  result = qword_27CB270C8;
  if (!qword_27CB270C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270C8);
  }

  return result;
}

void CatalogSearchRawResponse.TopResult.id.getter()
{
  OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for CloudStation(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_81();
  v110 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudSong(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_81();
  v109 = v19;
  v20 = OUTLINED_FUNCTION_206();
  v21 = type metadata accessor for CloudRecordLabel(v20);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_1();
  v26 = OUTLINED_FUNCTION_91_8();
  v27 = type metadata accessor for CloudRadioShow(v26);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_1();
  v32 = OUTLINED_FUNCTION_69();
  v33 = type metadata accessor for CloudPlaylist(v32);
  v34 = OUTLINED_FUNCTION_45_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  v38 = OUTLINED_FUNCTION_71_0();
  v39 = type metadata accessor for CloudMusicVideo(v38);
  v40 = OUTLINED_FUNCTION_45_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_1();
  v44 = OUTLINED_FUNCTION_37_10();
  v45 = type metadata accessor for CloudGenre(v44);
  v46 = OUTLINED_FUNCTION_45_0(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_1();
  v50 = OUTLINED_FUNCTION_31_12();
  v51 = type metadata accessor for CloudCurator(v50);
  v52 = OUTLINED_FUNCTION_45_0(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_1();
  v56 = OUTLINED_FUNCTION_61_6();
  v57 = type metadata accessor for CloudArtist(v56);
  v58 = OUTLINED_FUNCTION_45_0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58, v61);
  OUTLINED_FUNCTION_1();
  v64 = (v63 - v62);
  v65 = type metadata accessor for CloudAlbum(0);
  v66 = OUTLINED_FUNCTION_45_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_1();
  v72 = (v71 - v70);
  v73 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v74 = OUTLINED_FUNCTION_43(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v77);
  OUTLINED_FUNCTION_1();
  v80 = (v79 - v78);
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v80, v64);
      v96 = *v64;
      v97 = v64[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_12_22();
      v87 = v64;
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v80, v6);
      v90 = *v6;
      v91 = v6[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_16_28();
      v87 = v6;
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v80, v5);
      v92 = *v5;
      v93 = v5[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_17_17();
      v87 = v5;
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v80, v4);
      v84 = *v4;
      v85 = v4[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_13_26();
      v87 = v4;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v80, v3);
      v98 = *v3;
      v99 = v3[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_14_23();
      v87 = v3;
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v100 = OUTLINED_FUNCTION_47_2();
      sub_2173D77EC(v100, v101);
      v102 = *v2;
      v103 = v2[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_21_20();
      v87 = v2;
      goto LABEL_15;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      sub_2173D77EC(v80, v1);
      v94 = *v1;
      v95 = v1[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_36_15();
      v87 = v1;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v72 = v109;
      sub_2173D77EC(v80, v109);
      v107 = *v109;
      v108 = v109[1];
      sub_217751DE8();
      v83 = type metadata accessor for CloudSong;
      goto LABEL_14;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v72 = v110;
      sub_2173D77EC(v80, v110);
      v88 = *v110;
      v89 = v110[1];
      sub_217751DE8();
      v83 = type metadata accessor for CloudStation;
      goto LABEL_14;
    case 0xAu:
      v104 = v80[1];
      v116 = *v80;
      *v117 = v104;
      *&v117[9] = *(v80 + 25);
      sub_21738C4B0(&v116, v114, &qword_27CB25890, &unk_21775D928);
      if (v115)
      {
        sub_2171F3F0C(v114, v111);
        v105 = v112;
        v106 = v113;
        __swift_project_boxed_opaque_existential_1(v111, v112);
        (*(*(v106 + 8) + 8))(v105);
        __swift_destroy_boxed_opaque_existential_1(v111);
      }

      sub_2171F0738(&v116, &qword_27CB25890, &unk_21775D928);
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v80, v72);
      v81 = *v72;
      v82 = v72[1];
      sub_217751DE8();
      v83 = type metadata accessor for CloudAlbum;
LABEL_14:
      v86 = v83;
      v87 = v72;
LABEL_15:
      sub_2173D7844(v87, v86);
LABEL_16:
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t type metadata accessor for CatalogSearchRawResponse.TopResult()
{
  result = qword_27CB27190;
  if (!qword_27CB27190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CatalogSearchRawResponse.TopResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v179 = v0;
  v180 = v1;
  v2 = type metadata accessor for CloudStation(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_81();
  v173 = v7;
  v8 = OUTLINED_FUNCTION_206();
  v9 = type metadata accessor for CloudSong(v8);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_81();
  v172 = v14;
  v15 = OUTLINED_FUNCTION_206();
  v16 = type metadata accessor for CloudRecordLabel(v15);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_81();
  v171 = v21;
  v22 = OUTLINED_FUNCTION_206();
  v23 = type metadata accessor for CloudRadioShow(v22);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_81();
  v170 = v28;
  v29 = OUTLINED_FUNCTION_206();
  v30 = type metadata accessor for CloudPlaylist(v29);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_81();
  v169 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v37 = type metadata accessor for CloudMusicVideo(v36);
  v38 = OUTLINED_FUNCTION_45_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_81();
  v168 = v42;
  v43 = OUTLINED_FUNCTION_206();
  v44 = type metadata accessor for CloudGenre(v43);
  v45 = OUTLINED_FUNCTION_45_0(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_81();
  v167 = v49;
  v50 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudCurator(v50);
  v52 = OUTLINED_FUNCTION_45_0(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_81();
  v57 = OUTLINED_FUNCTION_44_11(v56);
  v58 = type metadata accessor for CloudArtist(v57);
  v59 = OUTLINED_FUNCTION_45_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  OUTLINED_FUNCTION_81();
  v64 = OUTLINED_FUNCTION_44_11(v63);
  v65 = type metadata accessor for CloudAlbum(v64);
  v66 = OUTLINED_FUNCTION_45_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_44_11(v70);
  v71 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v72 = OUTLINED_FUNCTION_43(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72, v75);
  OUTLINED_FUNCTION_31();
  v178 = v76;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v77, v78);
  OUTLINED_FUNCTION_99();
  v177 = v79;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v80, v81);
  OUTLINED_FUNCTION_99();
  v176 = v82;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v83, v84);
  OUTLINED_FUNCTION_99();
  v175 = v85;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v86, v87);
  OUTLINED_FUNCTION_99();
  v174 = v88;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v89, v90);
  v92 = &v163 - v91;
  MEMORY[0x28223BE20](v93, v94);
  v96 = (&v163 - v95);
  MEMORY[0x28223BE20](v97, v98);
  v100 = &v163 - v99;
  MEMORY[0x28223BE20](v101, v102);
  v104 = &v163 - v103;
  MEMORY[0x28223BE20](v105, v106);
  v108 = &v163 - v107;
  MEMORY[0x28223BE20](v109, v110);
  v112 = &v163 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270D0, &qword_217768EF0);
  OUTLINED_FUNCTION_45_0(v113);
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v116, v117);
  v119 = &v163 - v118;
  v121 = &v163 + *(v120 + 56) - v118;
  sub_2173D789C(v179, &v163 - v118);
  v122 = v180;
  v180 = v121;
  sub_2173D789C(v122, v121);
  OUTLINED_FUNCTION_161_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_52();
      v143 = OUTLINED_FUNCTION_153();
      sub_2173D789C(v143, v144);
      if (OUTLINED_FUNCTION_72_9() == 1)
      {
        OUTLINED_FUNCTION_4_49();
        v145 = v165;
        sub_2173D77EC(v96, v165);
        static CloudArtist.== infix(_:_:)(v108, v145);
        v139 = type metadata accessor for CloudArtist;
        sub_2173D7844(v145, type metadata accessor for CloudArtist);
        v140 = v108;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_12_22();
      v126 = v108;
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_0_52();
      v134 = OUTLINED_FUNCTION_154();
      sub_2173D789C(v134, v135);
      if (OUTLINED_FUNCTION_72_9() == 2)
      {
        OUTLINED_FUNCTION_7_31();
        v132 = v166;
        sub_2173D77EC(v96, v166);
        v136 = OUTLINED_FUNCTION_240();
        static CloudCurator.== infix(_:_:)(v136, v137);
        v133 = type metadata accessor for CloudCurator;
        goto LABEL_25;
      }

      v161 = type metadata accessor for CloudCurator;
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_0_52();
      sub_2173D789C(v119, v100);
      if (OUTLINED_FUNCTION_72_9() == 3)
      {
        OUTLINED_FUNCTION_6_33();
        v138 = v167;
        sub_2173D77EC(v96, v167);
        static CloudGenre.== infix(_:_:)(v100, v138);
        v139 = type metadata accessor for CloudGenre;
        sub_2173D7844(v138, type metadata accessor for CloudGenre);
        v140 = v100;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_17_17();
      v126 = v100;
      goto LABEL_39;
    case 4u:
      OUTLINED_FUNCTION_0_52();
      sub_2173D789C(v119, v96);
      v127 = v180;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_9_26();
        v128 = v168;
        sub_2173D77EC(v127, v168);
        static CloudMusicVideo.== infix(_:_:)();
        v129 = v119;
        sub_2173D7844(v128, type metadata accessor for CloudMusicVideo);
        v130 = OUTLINED_FUNCTION_93();
        sub_2173D7844(v130, v131);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_13_26();
      v126 = v96;
      goto LABEL_39;
    case 5u:
      OUTLINED_FUNCTION_0_52();
      v146 = OUTLINED_FUNCTION_1_5();
      sub_2173D789C(v146, v147);
      if (OUTLINED_FUNCTION_72_9() == 5)
      {
        OUTLINED_FUNCTION_3_46();
        v148 = v169;
        sub_2173D77EC(v96, v169);
        static CloudPlaylist.== infix(_:_:)();
        v139 = type metadata accessor for CloudPlaylist;
        sub_2173D7844(v148, type metadata accessor for CloudPlaylist);
        v140 = v92;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_14_23();
      v126 = v92;
      goto LABEL_39;
    case 6u:
      OUTLINED_FUNCTION_0_52();
      v149 = v174;
      sub_2173D789C(v119, v174);
      if (OUTLINED_FUNCTION_72_9() == 6)
      {
        OUTLINED_FUNCTION_2_49();
        v150 = v170;
        sub_2173D77EC(v96, v170);
        static CloudRadioShow.== infix(_:_:)(v149, v150);
        v139 = type metadata accessor for CloudRadioShow;
        sub_2173D7844(v150, type metadata accessor for CloudRadioShow);
        v140 = v149;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_21_20();
      v126 = v149;
      goto LABEL_39;
    case 7u:
      OUTLINED_FUNCTION_0_52();
      v104 = v175;
      sub_2173D789C(v119, v175);
      if (OUTLINED_FUNCTION_72_9() == 7)
      {
        OUTLINED_FUNCTION_5_38();
        v132 = v171;
        sub_2173D77EC(v96, v171);
        v141 = OUTLINED_FUNCTION_240();
        static CloudRecordLabel.== infix(_:_:)(v141, v142);
        v133 = type metadata accessor for CloudRecordLabel;
        goto LABEL_25;
      }

      v161 = type metadata accessor for CloudRecordLabel;
      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_0_52();
      v104 = v176;
      sub_2173D789C(v119, v176);
      if (OUTLINED_FUNCTION_72_9() == 8)
      {
        OUTLINED_FUNCTION_1_46();
        v132 = v172;
        sub_2173D77EC(v96, v172);
        OUTLINED_FUNCTION_240();
        static CloudSong.== infix(_:_:)();
        v133 = type metadata accessor for CloudSong;
        goto LABEL_25;
      }

      v161 = type metadata accessor for CloudSong;
      goto LABEL_38;
    case 9u:
      OUTLINED_FUNCTION_0_52();
      v104 = v177;
      sub_2173D789C(v119, v177);
      if (OUTLINED_FUNCTION_72_9() == 9)
      {
        OUTLINED_FUNCTION_8_33();
        v132 = v173;
        sub_2173D77EC(v96, v173);
        OUTLINED_FUNCTION_240();
        static CloudStation.== infix(_:_:)();
        v133 = type metadata accessor for CloudStation;
LABEL_25:
        v139 = v133;
        sub_2173D7844(v132, v133);
        v140 = v104;
        goto LABEL_26;
      }

      v161 = type metadata accessor for CloudStation;
LABEL_38:
      v125 = v161;
      v126 = v104;
      goto LABEL_39;
    case 0xAu:
      OUTLINED_FUNCTION_0_52();
      v151 = v178;
      sub_2173D789C(v119, v178);
      if (OUTLINED_FUNCTION_72_9() != 10)
      {
        sub_2171F0738(v151, &qword_27CB25890, &unk_21775D928);
        goto LABEL_40;
      }

      v152 = v96[1];
      v181 = *v96;
      *v182 = v152;
      *&v182[9] = *(v96 + 25);
      sub_2173CCF8C(v151, &v181);
      v129 = v119;
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v153, v154, v155);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v156, v157, v158);
LABEL_22:
      OUTLINED_FUNCTION_15_26();
      v160 = v129;
      goto LABEL_27;
    default:
      OUTLINED_FUNCTION_0_52();
      v123 = OUTLINED_FUNCTION_150_0();
      sub_2173D789C(v123, v124);
      if (OUTLINED_FUNCTION_72_9())
      {
        OUTLINED_FUNCTION_10_24();
        v126 = v112;
LABEL_39:
        sub_2173D7844(v126, v125);
LABEL_40:
        sub_2171F0738(v119, &qword_27CB270D0, &qword_217768EF0);
      }

      else
      {
        OUTLINED_FUNCTION_11_31();
        v162 = v164;
        sub_2173D77EC(v96, v164);
        static CloudAlbum.== infix(_:_:)();
        v139 = type metadata accessor for CloudAlbum;
        sub_2173D7844(v162, type metadata accessor for CloudAlbum);
        v140 = v112;
LABEL_26:
        sub_2173D7844(v140, v139);
        OUTLINED_FUNCTION_15_26();
        v160 = v119;
LABEL_27:
        sub_2173D7844(v160, v159);
      }

      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t sub_2173CCF8C(uint64_t a1, uint64_t a2)
{
  sub_21738C4B0(a1, v16, &qword_27CB25890, &unk_21775D928);
  sub_21738C4B0(a2, v18, &qword_27CB25890, &unk_21775D928);
  if (v17)
  {
    if (v19)
    {
      sub_2171F3F0C(v16, v13);
      sub_2171F3F0C(v18, v12);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = *(v4 + 32);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27220, &qword_217786D40);
      v7 = v5(v12, v6, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v7 & 1;
    }

    sub_2171F3F0C(v16, v13);
    v12[0] = v18[0];
LABEL_7:
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v9 + 32))(v12, &type metadata for CatalogSearchRawResponse.TopResult.Placeholder, v8, v9);

    goto LABEL_8;
  }

  if (v19)
  {
    v12[0] = v16[0];
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if (*&v16[0] == *&v18[0] && *(&v16[0] + 1) == *(&v18[0] + 1))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_217753058();
  }

  return v7 & 1;
}

uint64_t sub_2173CD150(uint64_t a1, uint64_t a2)
{
  sub_21738C4B0(a1, __src, &qword_27CB256E8, &qword_21775D830);
  sub_21738C4B0(a2, v18, &qword_27CB256E8, &qword_21775D830);
  if ((v17 & 1) == 0)
  {
    if ((v19 & 1) == 0)
    {
      memcpy(v13, __src, sizeof(v13));
      memcpy(v12, v18, sizeof(v12));
      v7 = static CloudPlaylistEntry.Placeholder.== infix(_:_:)(v13, v12);
      memcpy(__dst, v12, sizeof(__dst));
      sub_21733BC90(__dst);
      memcpy(v15, v13, sizeof(v15));
      sub_21733BC90(v15);
      return v7 & 1;
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if ((v19 & 1) == 0)
  {
    sub_2171F3F0C(__src, v13);
    memcpy(__dst, v18, sizeof(__dst));
LABEL_7:
    v9 = v13[3];
    v10 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = (*(v10 + 32))(__dst, &type metadata for CloudPlaylistEntry.Placeholder, v9, v10);
    memcpy(v15, __dst, sizeof(v15));
    sub_21733BC90(v15);
    v8 = v13;
    goto LABEL_8;
  }

  sub_2171F3F0C(__src, v15);
  sub_2171F3F0C(v18, __dst);
  v3 = v15[3];
  v4 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_98();
  v5 = *&__src[32];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27220, &qword_217786D40);
  v7 = v5(__dst, v6, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v8 = v15;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v7 & 1;
}

void CatalogSearchRawResponse.TopResult.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v220 = v4;
  v215 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v215);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v214 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v217 = type metadata accessor for CloudSong(v10);
  v11 = OUTLINED_FUNCTION_43(v217);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_81();
  v218 = v15;
  v16 = OUTLINED_FUNCTION_206();
  v216 = type metadata accessor for CloudRecordLabel(v16);
  v17 = OUTLINED_FUNCTION_43(v216);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_81();
  v21 = OUTLINED_FUNCTION_206();
  v219 = type metadata accessor for CloudRadioShow(v21);
  v22 = OUTLINED_FUNCTION_43(v219);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_81();
  v27 = OUTLINED_FUNCTION_55_9(v26);
  v28 = type metadata accessor for CloudPlaylist(v27);
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  v210 = type metadata accessor for CloudMusicVideo(0);
  v36 = OUTLINED_FUNCTION_43(v210);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_1();
  v40 = OUTLINED_FUNCTION_91_8();
  v209 = type metadata accessor for CloudGenre(v40);
  v41 = OUTLINED_FUNCTION_43(v209);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  OUTLINED_FUNCTION_81();
  v212 = v45;
  v46 = OUTLINED_FUNCTION_206();
  v211 = type metadata accessor for CloudCurator(v46);
  v47 = OUTLINED_FUNCTION_43(v211);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  OUTLINED_FUNCTION_81();
  v213 = v51;
  v52 = OUTLINED_FUNCTION_206();
  v53 = type metadata accessor for CloudArtist(v52);
  v54 = OUTLINED_FUNCTION_43(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  OUTLINED_FUNCTION_1();
  v58 = OUTLINED_FUNCTION_31_12();
  v59 = type metadata accessor for CloudAlbum(v58);
  v60 = OUTLINED_FUNCTION_43(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60, v63);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v64 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v65 = OUTLINED_FUNCTION_43(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v68);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v0);
  OUTLINED_FUNCTION_153();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v94 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v94, v95);
      OUTLINED_FUNCTION_137_5();
      v96 = *v3;
      v97 = v3[1];
      sub_217751FF8();
      v98 = v3 + v53[5];
      CloudArtist.Attributes.hash(into:)();
      v99 = v3 + v53[6];
      sub_217264ADC(v1);
      sub_21738C4B0(v3 + v53[7], &v225, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v199 = OUTLINED_FUNCTION_100_8();
        memcpy(v199, v200, 0x580uLL);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_168_4();
        CloudArtist.Associations.hash(into:)();
        sub_21728463C(v223);
      }

      v201 = *(v3 + v53[8]);
      if (v201 == 1 || (OUTLINED_FUNCTION_89(), !v201))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_240();
        sub_21727DDE0();
      }

      OUTLINED_FUNCTION_12_22();
      v88 = v3;
      goto LABEL_69;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v2 = v213;
      sub_2173D77EC(v0, v213);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      v89 = v211[5];
      OUTLINED_FUNCTION_109_7();
      CloudCurator.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB24498, &unk_217758960, v211[6]);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v135 = OUTLINED_FUNCTION_100_8();
        memcpy(v135, v136, 0x80uLL);
        OUTLINED_FUNCTION_89();
        sub_21738C4B0(v223, v222, &qword_27CB242C0, &unk_21775D650);
        if (v222[2])
        {
          memcpy(v221, v222, sizeof(v221));
          OUTLINED_FUNCTION_89();
          sub_2172DE724(v1);
          sub_2171F0738(v221, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_97_6();
        }

        sub_2172831A8(v223);
      }

      OUTLINED_FUNCTION_81_9(v211[7]);
      OUTLINED_FUNCTION_136_7();
      if (v74 || (OUTLINED_FUNCTION_89(), !v211))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_240();
        sub_21727DDE0();
      }

      v147 = type metadata accessor for CloudCurator;
      goto LABEL_68;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v2 = v212;
      sub_2173D77EC(v0, v212);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      v90 = v209[5];
      OUTLINED_FUNCTION_109_7();
      CloudGenre.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB24AA0, &qword_21775D8F0, v209[6]);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v137 = OUTLINED_FUNCTION_100_8();
        memcpy(v137, v138, 0x80uLL);
        OUTLINED_FUNCTION_89();
        v139 = OUTLINED_FUNCTION_168_4();
        sub_21726473C(v139, v140, v141, v142, v143, v144, v145, v146);
        sub_217284594(v223);
      }

      OUTLINED_FUNCTION_81_9(v209[7]);
      OUTLINED_FUNCTION_136_7();
      if (v74 || (OUTLINED_FUNCTION_89(), !v209))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_240();
        sub_21727DDE0();
      }

      v147 = type metadata accessor for CloudGenre;
      goto LABEL_68;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v75 = OUTLINED_FUNCTION_154();
      sub_2173D77EC(v75, v76);
      MEMORY[0x21CEA3550](4);
      v77 = *v1;
      v78 = v1[1];
      sub_217751FF8();
      v79 = v1 + v210[5];
      CloudMusicVideo.Attributes.hash(into:)();
      v80 = v1 + v210[6];
      sub_217264574(v220);
      sub_21738C4B0(v1 + v210[7], &v225, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        sub_217753208();
      }

      else
      {
        v118 = OUTLINED_FUNCTION_100_8();
        memcpy(v118, v119, 0x100uLL);
        sub_217753208();
        sub_217264414(v220, v120, v121, v122, v123, v124, v125, v126);
        sub_217264414(v220, v127, v128, v129, v130, v131, v132, v133);
        sub_2172844EC(v223);
      }

      sub_217264490(v220, *(v1 + v210[8]), *(v1 + v210[8] + 8), *(v1 + v210[8] + 16), *(v1 + v210[8] + 24));
      v134 = type metadata accessor for CloudMusicVideo;
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v0, v35);
      OUTLINED_FUNCTION_137_5();
      v100 = *v35;
      v101 = v35[1];
      sub_217751FF8();
      v102 = v28[5];
      OUTLINED_FUNCTION_170_3();
      CloudPlaylist.Attributes.hash(into:)();
      v103 = v28[6];
      v104 = OUTLINED_FUNCTION_170_3();
      sub_217264C3C(v104);
      v105 = v28[7];
      v106 = OUTLINED_FUNCTION_170_3();
      sub_21726492C(v106);
      v107 = v28[8];
      v108 = OUTLINED_FUNCTION_170_3();
      sub_2172647B8(v108);
      OUTLINED_FUNCTION_14_23();
      v88 = v35;
      goto LABEL_69;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v109 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v109, v110);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      v111 = v219[5];
      OUTLINED_FUNCTION_109_7();
      CloudRadioShow.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB25640, &qword_217764750, v219[6]);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v202 = OUTLINED_FUNCTION_100_8();
        memcpy(v202, v203, 0x80uLL);
        OUTLINED_FUNCTION_89();
        sub_21738C4B0(v223, v222, &qword_27CB242C0, &unk_21775D650);
        if (v222[2])
        {
          memcpy(v221, v222, sizeof(v221));
          OUTLINED_FUNCTION_89();
          sub_2172DE724(v1);
          sub_2171F0738(v221, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_97_6();
        }

        sub_21733BB04(v223);
      }

      OUTLINED_FUNCTION_81_9(v219[7]);
      OUTLINED_FUNCTION_136_7();
      if (v74 || (OUTLINED_FUNCTION_89(), !v219))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_240();
        sub_21727DDE0();
      }

      v147 = type metadata accessor for CloudRadioShow;
      goto LABEL_68;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v91 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v91, v92);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      v93 = v216[5];
      OUTLINED_FUNCTION_109_7();
      CloudRecordLabel.Attributes.hash(into:)();
      OUTLINED_FUNCTION_81_9(v216[6]);
      OUTLINED_FUNCTION_158_4(&qword_27CB24A98, &unk_217759060, v216[7]);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v148 = OUTLINED_FUNCTION_100_8();
        memcpy(v148, v149, 0x100uLL);
        OUTLINED_FUNCTION_89();
        v150 = OUTLINED_FUNCTION_168_4();
        sub_2172640D4(v150, v151, v152, v153, v154, v155, v156, v157);
        sub_2172640D4(v1, v158, v159, v160, v161, v162, v163, v164);
        sub_217284540(v223);
      }

      v165 = *(v2 + v216[8]);
      if (v165 == 1 || (OUTLINED_FUNCTION_89(), !v165))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_240();
        sub_21727DDE0();
      }

      v147 = type metadata accessor for CloudRecordLabel;
      goto LABEL_68;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v1 = v218;
      sub_2173D77EC(v0, v218);
      MEMORY[0x21CEA3550](8);
      v115 = *v218;
      v116 = v218[1];
      sub_217751FF8();
      v117 = v218 + v217[5];
      CloudSong.Attributes.hash(into:)();
      sub_21738C4B0(v218 + v217[6], &v225, &qword_27CB24A78, &qword_217759040);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        sub_217753208();
      }

      else
      {
        v204 = OUTLINED_FUNCTION_100_8();
        memcpy(v204, v205, 0x600uLL);
        sub_217753208();
        CloudSong.Relationships.hash(into:)();
        sub_217284234(v223);
      }

      v206 = *(v218 + v217[7]);
      sub_217753208();
      v207 = v218 + v217[8];
      v208 = *(v207 + 1);
      v225 = *v207;
      v226[0] = v208;
      *&v226[1] = *(v207 + 4);
      sub_217263F54();
      v134 = type metadata accessor for CloudSong;
LABEL_53:
      v87 = v134;
      v88 = v1;
      goto LABEL_69;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      sub_2173D77EC(v0, v214);
      OUTLINED_FUNCTION_137_5();
      v81 = *v214;
      v82 = v214[1];
      sub_217751FF8();
      v83 = v214 + v215[5];
      CloudStation.Attributes.hash(into:)();
      v84 = *(v214 + v215[6]);
      sub_217753208();
      v85 = *(v214 + v215[7]);
      sub_217753208();
      v86 = v214 + v215[8];
      sub_217263DE0(v1);
      OUTLINED_FUNCTION_37_14();
      v88 = v214;
      goto LABEL_69;
    case 0xAu:
      v112 = v0[1];
      v225 = *v0;
      v226[0] = v112;
      *(v226 + 9) = *(v0 + 25);
      MEMORY[0x21CEA3550](10);
      sub_21738C4B0(&v225, v223, &qword_27CB25890, &unk_21775D928);
      if (v224)
      {
        sub_2171F3F0C(v223, v222);
        v113 = v222[3];
        v114 = v222[4];
        __swift_project_boxed_opaque_existential_1(v222, v222[3]);
        (*(v114 + 40))(v220, v113, v114);
        sub_2171F0738(&v225, &qword_27CB25890, &unk_21775D928);
        __swift_destroy_boxed_opaque_existential_1(v222);
      }

      else
      {
        sub_217751DE8();
        sub_217751FF8();
        swift_bridgeObjectRelease_n();
        sub_2171F0738(&v225, &qword_27CB25890, &unk_21775D928);
      }

      goto LABEL_70;
    default:
      OUTLINED_FUNCTION_11_31();
      v69 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v69, v70);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      v71 = v59[5];
      OUTLINED_FUNCTION_109_7();
      CloudAlbum.Attributes.hash(into:)();
      v72 = v59[6];
      v73 = OUTLINED_FUNCTION_109_7();
      sub_21726504C(v73);
      OUTLINED_FUNCTION_158_4(&qword_27CB24AA8, &qword_217759080, v59[7]);
      OUTLINED_FUNCTION_95_9();
      if (v74)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v166 = OUTLINED_FUNCTION_100_8();
        memcpy(v166, v167, 0x200uLL);
        OUTLINED_FUNCTION_89();
        v168 = OUTLINED_FUNCTION_168_4();
        sub_21726473C(v168, v169, v170, v171, v172, v173, v174, v175);
        sub_2172640D4(v1, v176, v177, v178, v179, v180, v181, v182);
        sub_2172640D4(v1, v183, v184, v185, v186, v187, v188, v189);
        sub_217264414(v1, v190, v191, v192, v193, v194, v195, v196);
        sub_2172845E8(v223);
      }

      v197 = v59[8];
      v198 = OUTLINED_FUNCTION_109_7();
      sub_217264150(v198);
      v147 = type metadata accessor for CloudAlbum;
LABEL_68:
      v87 = v147;
      v88 = v2;
LABEL_69:
      sub_2173D7844(v88, v87);
LABEL_70:
      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t CatalogSearchRawResponse.TopResult.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2173CDF88()
{
  sub_2177531E8();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  return sub_217753238();
}

void CatalogSearchRawResponse.TopResult.decodeRawAttributes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v27;
  a20 = v28;
  a10 = v21;
  v203 = v29;
  v30 = type metadata accessor for CloudStation.Attributes(0);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_81();
  v201 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v200 = type metadata accessor for CloudStation(v36);
  v37 = OUTLINED_FUNCTION_43(v200);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  OUTLINED_FUNCTION_81();
  v202 = v41;
  v42 = OUTLINED_FUNCTION_206();
  v43 = type metadata accessor for CloudSong.Attributes(v42);
  v44 = OUTLINED_FUNCTION_45_0(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_81();
  v198 = v48;
  v49 = OUTLINED_FUNCTION_206();
  v197 = type metadata accessor for CloudSong(v49);
  v50 = OUTLINED_FUNCTION_43(v197);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  OUTLINED_FUNCTION_81();
  v199 = v54;
  v55 = OUTLINED_FUNCTION_206();
  v56 = type metadata accessor for CloudRecordLabel.Attributes(v55);
  v57 = OUTLINED_FUNCTION_45_0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  OUTLINED_FUNCTION_81();
  v195 = v61;
  v62 = OUTLINED_FUNCTION_206();
  v194 = type metadata accessor for CloudRecordLabel(v62);
  v63 = OUTLINED_FUNCTION_43(v194);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63, v66);
  OUTLINED_FUNCTION_81();
  v196 = v67;
  v68 = OUTLINED_FUNCTION_206();
  v69 = type metadata accessor for CloudRadioShow.Attributes(v68);
  v70 = OUTLINED_FUNCTION_45_0(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70, v73);
  OUTLINED_FUNCTION_81();
  v192 = v74;
  v75 = OUTLINED_FUNCTION_206();
  v191 = type metadata accessor for CloudRadioShow(v75);
  v76 = OUTLINED_FUNCTION_43(v191);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76, v79);
  OUTLINED_FUNCTION_81();
  v193 = v80;
  v81 = OUTLINED_FUNCTION_206();
  v82 = type metadata accessor for CloudPlaylist.Attributes(v81);
  v83 = OUTLINED_FUNCTION_45_0(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83, v86);
  OUTLINED_FUNCTION_81();
  v88 = OUTLINED_FUNCTION_44_11(v87);
  v89 = type metadata accessor for CloudPlaylist(v88);
  v90 = OUTLINED_FUNCTION_27_22(v89, &a16);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90, v93);
  OUTLINED_FUNCTION_81();
  v95 = OUTLINED_FUNCTION_44_11(v94);
  v96 = type metadata accessor for CloudMusicVideo.Attributes(v95);
  v97 = OUTLINED_FUNCTION_45_0(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97, v100);
  OUTLINED_FUNCTION_81();
  v102 = OUTLINED_FUNCTION_44_11(v101);
  v103 = type metadata accessor for CloudMusicVideo(v102);
  v104 = OUTLINED_FUNCTION_27_22(v103, &a13);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104, v107);
  OUTLINED_FUNCTION_81();
  v109 = OUTLINED_FUNCTION_44_11(v108);
  v110 = type metadata accessor for CloudGenre.Attributes(v109);
  v111 = OUTLINED_FUNCTION_45_0(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111, v114);
  OUTLINED_FUNCTION_81();
  v116 = OUTLINED_FUNCTION_44_11(v115);
  v117 = type metadata accessor for CloudGenre(v116);
  v118 = OUTLINED_FUNCTION_27_22(v117, &a10);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v118, v121);
  OUTLINED_FUNCTION_81();
  v123 = OUTLINED_FUNCTION_44_11(v122);
  v124 = type metadata accessor for CloudCurator.Attributes(v123);
  v125 = OUTLINED_FUNCTION_45_0(v124);
  v127 = *(v126 + 64);
  MEMORY[0x28223BE20](v125, v128);
  OUTLINED_FUNCTION_81();
  v130 = OUTLINED_FUNCTION_44_11(v129);
  v131 = type metadata accessor for CloudCurator(v130);
  v132 = OUTLINED_FUNCTION_27_22(v131, &v205);
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v132, v135);
  OUTLINED_FUNCTION_1();
  v136 = OUTLINED_FUNCTION_37_10();
  v137 = type metadata accessor for CloudArtist.Attributes(v136);
  v138 = OUTLINED_FUNCTION_45_0(v137);
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v138, v141);
  OUTLINED_FUNCTION_1();
  v142 = OUTLINED_FUNCTION_71_0();
  v143 = type metadata accessor for CloudArtist(v142);
  v144 = OUTLINED_FUNCTION_43(v143);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144, v147);
  OUTLINED_FUNCTION_1();
  v148 = OUTLINED_FUNCTION_91_8();
  v149 = type metadata accessor for CloudAlbum.Attributes(v148);
  v150 = OUTLINED_FUNCTION_45_0(v149);
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v150, v153);
  OUTLINED_FUNCTION_1();
  v154 = OUTLINED_FUNCTION_69();
  v155 = type metadata accessor for CloudAlbum(v154);
  v156 = OUTLINED_FUNCTION_43(v155);
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v156, v159);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v160 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v161 = OUTLINED_FUNCTION_43(v160);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161, v164);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v20, v20);
  OUTLINED_FUNCTION_150_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v181 = OUTLINED_FUNCTION_154();
      sub_2173D77EC(v181, v182);
      OUTLINED_FUNCTION_129_6();
      v183 = OUTLINED_FUNCTION_97_8(*(v143 + 20));
      sub_2173D789C(v183, v25);
      sub_217385F04();
      OUTLINED_FUNCTION_41_13();
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v174 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v174, v175);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6(&v205);
      OUTLINED_FUNCTION_175_4(v26 + v176, &a9);
      OUTLINED_FUNCTION_54_11();
      sub_2173859E0();
      OUTLINED_FUNCTION_16_28();
      v168 = v26;
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v22 = v188;
      sub_2173D77EC(v20, v188);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6(&a10);
      v178 = OUTLINED_FUNCTION_97_8(v177);
      OUTLINED_FUNCTION_175_4(v178, &a12);
      OUTLINED_FUNCTION_54_11();
      sub_217385A68();
      OUTLINED_FUNCTION_40_15();
LABEL_9:
      v167 = v179;
      v168 = v22;
      goto LABEL_10;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v169 = v189;
      sub_2173D77EC(v20, v189);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6(&a13);
      v171 = OUTLINED_FUNCTION_97_8(v170);
      OUTLINED_FUNCTION_175_4(v171, &a14);
      OUTLINED_FUNCTION_54_11();
      sub_21738598C();
      v172 = type metadata accessor for CloudMusicVideo;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v169 = v190;
      sub_2173D77EC(v20, v190);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6(&a16);
      v185 = OUTLINED_FUNCTION_97_8(v184);
      OUTLINED_FUNCTION_175_4(v185, &a17);
      OUTLINED_FUNCTION_54_11();
      sub_217385674();
      v172 = type metadata accessor for CloudPlaylist;
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v169 = v193;
      sub_2173D77EC(v20, v193);
      OUTLINED_FUNCTION_129_6();
      v186 = OUTLINED_FUNCTION_97_8(*(v191 + 20));
      sub_2173D789C(v186, v192);
      OUTLINED_FUNCTION_54_11();
      sub_217385A24();
      v172 = type metadata accessor for CloudRadioShow;
      goto LABEL_15;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v169 = v196;
      sub_2173D77EC(v20, v196);
      OUTLINED_FUNCTION_129_6();
      v180 = OUTLINED_FUNCTION_97_8(*(v194 + 20));
      sub_2173D789C(v180, v195);
      OUTLINED_FUNCTION_54_11();
      sub_217385F58();
      v172 = type metadata accessor for CloudRecordLabel;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v169 = v199;
      sub_2173D77EC(v20, v199);
      OUTLINED_FUNCTION_129_6();
      v187 = OUTLINED_FUNCTION_97_8(*(v197 + 20));
      sub_2173D789C(v187, v198);
      OUTLINED_FUNCTION_54_11();
      sub_217385938();
      v172 = type metadata accessor for CloudSong;
      goto LABEL_15;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v169 = v202;
      sub_2173D77EC(v20, v202);
      OUTLINED_FUNCTION_129_6();
      v173 = OUTLINED_FUNCTION_97_8(*(v200 + 20));
      sub_2173D789C(v173, v201);
      OUTLINED_FUNCTION_54_11();
      sub_2173858E4();
      v172 = type metadata accessor for CloudStation;
LABEL_15:
      sub_2173D7844(v169, v172);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_169_5();
      sub_2173CE93C(v203);
      sub_2171F0738(&v204, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v165 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v165, v166);
      OUTLINED_FUNCTION_129_6();
      sub_2173D789C(v23 + *(v155 + 20), v24);
      sub_217385620();
      OUTLINED_FUNCTION_10_24();
      v168 = v23;
LABEL_10:
      sub_2173D7844(v168, v167);
      break;
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173CE93C(uint64_t a1)
{
  v2 = v1;
  sub_21738C4B0(v2, v11, &qword_27CB25890, &unk_21775D928);
  if (v12)
  {
    sub_2171F3F0C(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(*(v5 + 8) + 16))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2171FF30C(a1, v8);
    sub_21733AD70();
    v6 = sub_217751E58();
    sub_2171F0738(v11, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173CEA64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21738C4B0(v2, v21, &qword_27CB256E8, &qword_21775D830);
  if (v22)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18[0], v18[1], v18[2], v19, v20, v21[0]);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_133_8();
    v13 = *(v12 + 16);
    v14 = OUTLINED_FUNCTION_87_10();
    v15(v14);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_2171FF30C(a1, v18);
    sub_21733AD70();
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v21, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v145 = OUTLINED_FUNCTION_173_6(v14);
  v15 = OUTLINED_FUNCTION_43(v145);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_81();
  v148 = v19;
  v20 = OUTLINED_FUNCTION_206();
  v142 = type metadata accessor for CloudSong(v20);
  v21 = OUTLINED_FUNCTION_43(v142);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_81();
  v26 = OUTLINED_FUNCTION_55_9(v25);
  v140 = type metadata accessor for CloudRecordLabel(v26);
  v27 = OUTLINED_FUNCTION_43(v140);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_81();
  v146 = v31;
  v32 = OUTLINED_FUNCTION_206();
  v139 = type metadata accessor for CloudRadioShow(v32);
  v33 = OUTLINED_FUNCTION_43(v139);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_81();
  v144 = v37;
  v38 = OUTLINED_FUNCTION_206();
  v137 = type metadata accessor for CloudPlaylist(v38);
  v39 = OUTLINED_FUNCTION_43(v137);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  OUTLINED_FUNCTION_81();
  v143 = v43;
  v44 = OUTLINED_FUNCTION_206();
  *(&v135 + 1) = type metadata accessor for CloudMusicVideo(v44);
  v45 = OUTLINED_FUNCTION_43(*(&v135 + 1));
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_81();
  v141 = v49;
  v50 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudGenre(v50);
  v52 = OUTLINED_FUNCTION_43(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_81();
  v138 = v56;
  v57 = OUTLINED_FUNCTION_206();
  v58 = type metadata accessor for CloudCurator(v57);
  v59 = OUTLINED_FUNCTION_43(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  OUTLINED_FUNCTION_81();
  v136 = v63;
  v64 = OUTLINED_FUNCTION_206();
  v65 = type metadata accessor for CloudArtist(v64);
  v66 = OUTLINED_FUNCTION_43(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_1();
  v70 = OUTLINED_FUNCTION_60_0();
  v71 = type metadata accessor for CloudAlbum(v70);
  v72 = OUTLINED_FUNCTION_43(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72, v75);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_69();
  v76 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v77 = OUTLINED_FUNCTION_43(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77, v80);
  OUTLINED_FUNCTION_28_19();
  v150 = sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v91 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v91, v92);
      OUTLINED_FUNCTION_119_8(&qword_27CB24328, &unk_21775D440, *(v65 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v81)
      {

        sub_2171F0738(v152, &qword_27CB24328, &unk_21775D440);
        OUTLINED_FUNCTION_114_5();
        sub_2173839CC(&unk_28295B7B0);
        v129 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v129, v130);
        OUTLINED_FUNCTION_41_13();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v12, v93);
      v83 = &qword_27CB24328;
      v84 = &unk_21775D440;
      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v12 = v136;
      sub_2173D77EC(v10, v136);
      OUTLINED_FUNCTION_119_8(&qword_27CB24498, &unk_217758960, *(v58 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v81)
      {

        sub_2171F0738(v152, &qword_27CB24498, &unk_217758960);
        OUTLINED_FUNCTION_114_5();
        sub_217383864();
        v111 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v111, v112);
        OUTLINED_FUNCTION_39_10();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v136, v87);
      v83 = &qword_27CB24498;
      v84 = &unk_217758960;
      goto LABEL_32;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v12 = v138;
      sub_2173D77EC(v10, v138);
      OUTLINED_FUNCTION_119_8(&qword_27CB24AA0, &qword_21775D8F0, *(v51 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v81)
      {

        sub_2171F0738(v152, &qword_27CB24AA0, &qword_21775D8F0);
        OUTLINED_FUNCTION_114_5();
        sub_2173838A4();
        v113 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v113, v114);
        OUTLINED_FUNCTION_40_15();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_17_17();
      sub_2173D7844(v138, v88);
      v83 = &qword_27CB24AA0;
      v84 = &qword_21775D8F0;
      goto LABEL_32;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v12 = v141;
      sub_2173D77EC(v10, v141);
      OUTLINED_FUNCTION_119_8(&qword_27CB243A8, &unk_217777720, *(*(&v135 + 1) + 24));
      OUTLINED_FUNCTION_65_11();
      if (v81)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v141, v85);
        v83 = &qword_27CB243A8;
        v84 = &unk_217777720;
        goto LABEL_32;
      }

      sub_2171F0738(v152, &qword_27CB243A8, &unk_217777720);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v100 = OUTLINED_FUNCTION_177_4();
      sub_217383844(v100);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6();
      OUTLINED_FUNCTION_75_7();
      v101 = type metadata accessor for CloudMusicVideo;
LABEL_41:
      v127 = v101;
      v128 = v12;
      goto LABEL_42;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v12 = v143;
      sub_2173D77EC(v10, v143);
      OUTLINED_FUNCTION_119_8(&qword_27CB24358, &unk_21775D510, *(v137 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v81)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v143, v94);
        v83 = &qword_27CB24358;
        v84 = &unk_21775D510;
        goto LABEL_32;
      }

      sub_2171F0738(v152, &qword_27CB24358, &unk_21775D510);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v131 = OUTLINED_FUNCTION_177_4();
      sub_217383728(v131);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6();
      if (v11)
      {
        v110 = type metadata accessor for CloudPlaylist;
      }

      else
      {
        OUTLINED_FUNCTION_47_11();
      }

      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v12 = v144;
      sub_2173D77EC(v10, v144);
      OUTLINED_FUNCTION_119_8(&qword_27CB25640, &qword_217764750, *(v139 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v81)
      {
        OUTLINED_FUNCTION_21_20();
        sub_2173D7844(v144, v95);
        v83 = &qword_27CB25640;
        v84 = &qword_217764750;
        goto LABEL_32;
      }

      sub_2171F0738(v152, &qword_27CB25640, &qword_217764750);
      OUTLINED_FUNCTION_114_5();
      sub_217383884();
      v132 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v132, v133);
      if (v151)
      {
        v110 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        OUTLINED_FUNCTION_46_16();
      }

      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v89 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v89, v90);
      if (*(v12 + *(v140 + 24)))
      {
        v86 = type metadata accessor for CloudRecordLabel;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_114_5();
      v122 = v151;
      if (qword_27CB23D88 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2B198, v115, v116, v117, v118, v119, v120, v121, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
      v123 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v123, v124);
      if (v122)
      {
        v110 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_49;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v97 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v97, v98);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A78, &qword_217759040, *(v142 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v81)
      {
        OUTLINED_FUNCTION_48_12();
        sub_2173D7844(v12, v99);
        v83 = &qword_27CB24A78;
        v84 = &qword_217759040;
        goto LABEL_32;
      }

      sub_2171F0738(v152, &qword_27CB24A78, &qword_217759040);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v134 = OUTLINED_FUNCTION_177_4();
      sub_217383824(v134);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6();
      if (v11)
      {
        v110 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_49;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v12 = v148;
      sub_2173D77EC(v10, v148);
      if (*(v148 + *(v145 + 24)))
      {
        v86 = type metadata accessor for CloudStation;
LABEL_18:
        sub_2173D7844(v12, v86);
      }

      else
      {

        OUTLINED_FUNCTION_114_5();
        if (qword_280BE4D60 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_84();
        v102 = OUTLINED_FUNCTION_177_4();
        sub_217383748(v102, v103, v104, v105, v106, v107, v108, v109, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
        OUTLINED_FUNCTION_174_4();
        OUTLINED_FUNCTION_127_6();
        if (v11)
        {
          v110 = type metadata accessor for CloudStation;
        }

        else
        {
          OUTLINED_FUNCTION_34_16();
        }

LABEL_49:
        sub_2173D7844(v12, v110);
      }

LABEL_50:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
    case 0xAu:

      v96 = OUTLINED_FUNCTION_113_8();
      sub_2173CF590(v96);
      sub_2171F0738(v152, &qword_27CB25890, &unk_21775D928);
      goto LABEL_50;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v10, v13);
      sub_21738C4B0(v13 + *(v71 + 24), v152, &qword_27CB243C8, &unk_21775D390);
      OUTLINED_FUNCTION_65_11();
      if (v81)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v13, v82);
        v83 = &qword_27CB243C8;
        v84 = &unk_21775D390;
LABEL_32:
        sub_2171F0738(v152, v83, v84);
      }

      else
      {

        sub_2171F0738(v152, &qword_27CB243C8, &unk_21775D390);
        OUTLINED_FUNCTION_114_5();
        sub_217383708(&unk_28295E588);
        v125 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v125, v126);
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v128 = v13;
LABEL_42:
        sub_2173D7844(v128, v127);
      }

      goto LABEL_50;
  }
}

uint64_t sub_2173CF590(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  sub_21738C4B0(v2, v11, &qword_27CB25890, &unk_21775D928);
  if (v12)
  {
    sub_2171F3F0C(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(*(v5 + 8) + 24))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2171FF30C(a1, v8);
    sub_21733AD70();
    v6 = sub_217751E58();
    sub_2171F0738(v11, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173CF6E0(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  v4 = sub_21738C4B0(v2, v21, &qword_27CB256E8, &qword_21775D830);
  if (v22)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18[0], v18[1], v18[2], v19, v20, v21[0]);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_133_8();
    v13 = *(v12 + 24);
    v14 = OUTLINED_FUNCTION_87_10();
    v15(v14);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_2171FF30C(a1, v18);
    sub_21733AD70();
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v21, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v174 = OUTLINED_FUNCTION_173_6(v13);
  v14 = OUTLINED_FUNCTION_43(v174);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_81();
  v177 = v18;
  v19 = OUTLINED_FUNCTION_206();
  v172 = type metadata accessor for CloudSong(v19);
  v20 = OUTLINED_FUNCTION_43(v172);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_81();
  v25 = OUTLINED_FUNCTION_55_9(v24);
  v170 = type metadata accessor for CloudRecordLabel(v25);
  v26 = OUTLINED_FUNCTION_43(v170);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  OUTLINED_FUNCTION_81();
  v175 = v30;
  v31 = OUTLINED_FUNCTION_206();
  v168 = type metadata accessor for CloudRadioShow(v31);
  v32 = OUTLINED_FUNCTION_43(v168);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_81();
  v173 = v36;
  v37 = OUTLINED_FUNCTION_206();
  v166 = type metadata accessor for CloudPlaylist(v37);
  v38 = OUTLINED_FUNCTION_43(v166);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_81();
  v171 = v42;
  v43 = OUTLINED_FUNCTION_206();
  *(&v164 + 1) = type metadata accessor for CloudMusicVideo(v43);
  v44 = OUTLINED_FUNCTION_43(*(&v164 + 1));
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_81();
  v169 = v48;
  v49 = OUTLINED_FUNCTION_206();
  v50 = type metadata accessor for CloudGenre(v49);
  v51 = OUTLINED_FUNCTION_43(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  OUTLINED_FUNCTION_81();
  v167 = v55;
  v56 = OUTLINED_FUNCTION_206();
  v57 = type metadata accessor for CloudCurator(v56);
  v58 = OUTLINED_FUNCTION_43(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58, v61);
  OUTLINED_FUNCTION_81();
  v165 = v62;
  v63 = OUTLINED_FUNCTION_206();
  v64 = type metadata accessor for CloudArtist(v63);
  v65 = OUTLINED_FUNCTION_43(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v68);
  OUTLINED_FUNCTION_1();
  v69 = OUTLINED_FUNCTION_69();
  v70 = type metadata accessor for CloudAlbum(v69);
  v71 = OUTLINED_FUNCTION_43(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71, v74);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v75 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v76 = OUTLINED_FUNCTION_43(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76, v79);
  OUTLINED_FUNCTION_28_19();
  v179 = sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v10, v11);
      sub_21738C4B0(v11 + *(v64 + 28), v181, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_65_11();
      if (!v82)
      {

        sub_2171F0738(v181, &qword_27CB24AB0, &qword_217759088);
        OUTLINED_FUNCTION_114_5();
        sub_217383A4C(&unk_28295B7D8);
        v139 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v139, v140);
        OUTLINED_FUNCTION_41_13();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v11, v94);
      v84 = &qword_27CB24AB0;
      v85 = &qword_217759088;
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v50 = v165;
      sub_2173D77EC(v10, v165);
      if (*(v165 + *(v57 + 28)))
      {
        v88 = type metadata accessor for CloudCurator;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      if (qword_27CB23D28 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2A830, v115, v116, v117, v118, v119, v120, v121, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
      v122 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v122, v123);
      OUTLINED_FUNCTION_39_10();
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v11 = v167;
      sub_2173D77EC(v10, v167);
      if (*(v167 + *(v50 + 28)))
      {
        OUTLINED_FUNCTION_17_17();
        v90 = v167;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_114_5();
      if (qword_27CB23D60 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2AA78, v124, v125, v126, v127, v128, v129, v130, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
      v131 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v131, v132);
      OUTLINED_FUNCTION_40_15();
LABEL_44:
      v137 = v141;
      v138 = v11;
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v50 = v169;
      sub_2173D77EC(v10, v169);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A90, &unk_21775D5B0, *(*(&v164 + 1) + 28));
      OUTLINED_FUNCTION_65_11();
      if (v82)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v169, v86);
        v84 = &qword_27CB24A90;
        v85 = &unk_21775D5B0;
        goto LABEL_23;
      }

      sub_2171F0738(v181, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_114_5();
      sub_217383A2C(&unk_28295F000);
      v101 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v101, v102);
      OUTLINED_FUNCTION_75_7();
      v103 = type metadata accessor for CloudMusicVideo;
LABEL_38:
      v137 = v103;
      v138 = v50;
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v50 = v171;
      sub_2173D77EC(v10, v171);
      OUTLINED_FUNCTION_119_8(&qword_27CB24350, &unk_21776A5D0, *(v166 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v82)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v171, v95);
        v84 = &qword_27CB24350;
        v85 = &unk_21776A5D0;
        goto LABEL_23;
      }

      sub_2171F0738(v181, &qword_27CB24350, &unk_21776A5D0);
      OUTLINED_FUNCTION_114_5();
      sub_217383A0C(&unk_28295F028);
      v142 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v142, v143);
      if (v180)
      {
        v114 = type metadata accessor for CloudPlaylist;
      }

      else
      {
        OUTLINED_FUNCTION_47_11();
      }

      goto LABEL_56;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v50 = v173;
      sub_2173D77EC(v10, v173);
      OUTLINED_FUNCTION_126_8(v168);
      if (v96)
      {
        v88 = type metadata accessor for CloudRadioShow;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      v151 = v180;
      if (qword_27CB23D50 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2A978, v144, v145, v146, v147, v148, v149, v150, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
      v152 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v152, v153);
      if (v151)
      {
        v114 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        OUTLINED_FUNCTION_46_16();
      }

      goto LABEL_56;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v91 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v91, v92);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A98, &unk_217759060, *(v170 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v82)
      {
        OUTLINED_FUNCTION_36_15();
        sub_2173D7844(v50, v93);
        v84 = &qword_27CB24A98;
        v85 = &unk_217759060;
        goto LABEL_23;
      }

      sub_2171F0738(v181, &qword_27CB24A98, &unk_217759060);
      OUTLINED_FUNCTION_114_5();
      sub_217383A6C(&unk_28295F050);
      v133 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v133, v134);
      if (v180)
      {
        v114 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_56;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v98 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v98, v99);
      OUTLINED_FUNCTION_126_8(v172);
      if (v100)
      {
        v88 = type metadata accessor for CloudSong;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      v161 = v180;
      if (qword_27CB23E08 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2C158, v154, v155, v156, v157, v158, v159, v160, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
      v162 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v162, v163);
      if (v161)
      {
        v114 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_56;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v50 = v177;
      sub_2173D77EC(v10, v177);
      OUTLINED_FUNCTION_126_8(v174);
      if (v87)
      {
        v88 = type metadata accessor for CloudStation;
LABEL_29:
        v89 = v88;
        v90 = v50;
LABEL_30:
        sub_2173D7844(v90, v89);
      }

      else
      {

        OUTLINED_FUNCTION_114_5();
        v111 = v180;
        if (qword_27CB23E58 != -1)
        {
          swift_once();
        }

        sub_217383748(qword_27CB2C988, v104, v105, v106, v107, v108, v109, v110, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        v112 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v112, v113);
        if (v111)
        {
          v114 = type metadata accessor for CloudStation;
        }

        else
        {
          OUTLINED_FUNCTION_34_16();
        }

LABEL_56:
        sub_2173D7844(v50, v114);
      }

LABEL_57:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
    case 0xAu:

      v97 = OUTLINED_FUNCTION_113_8();
      sub_2173D0218(v97);
      sub_2171F0738(v181, &qword_27CB25890, &unk_21775D928);
      goto LABEL_57;
    default:
      OUTLINED_FUNCTION_11_31();
      v80 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v80, v81);
      sub_21738C4B0(v12 + *(v70 + 28), v181, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_65_11();
      if (v82)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v12, v83);
        v84 = &qword_27CB24AA8;
        v85 = &qword_217759080;
LABEL_23:
        sub_2171F0738(v181, v84, v85);
      }

      else
      {

        sub_2171F0738(v181, &qword_27CB24AA8, &qword_217759080);
        OUTLINED_FUNCTION_114_5();
        sub_2173839EC(&unk_28295E650);
        v135 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v135, v136);
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v138 = v12;
LABEL_45:
        sub_2173D7844(v138, v137);
      }

      goto LABEL_57;
  }
}

uint64_t sub_2173D0218(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  sub_21738C4B0(v2, v11, &qword_27CB25890, &unk_21775D928);
  if (v12)
  {
    sub_2171F3F0C(v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(*(v5 + 8) + 32))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2171FF30C(a1, v8);
    sub_21733AD70();
    v6 = sub_217751E58();
    sub_2171F0738(v11, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D0368(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  v4 = sub_21738C4B0(v2, v21, &qword_27CB256E8, &qword_21775D830);
  if (v22)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18[0], v18[1], v18[2], v19, v20, v21[0]);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_133_8();
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_87_10();
    v15(v14);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_2171FF30C(a1, v18);
    sub_21733AD70();
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v21, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v138 = v0;
  v130 = v5;
  v131 = v6;
  v126 = type metadata accessor for CloudStation(0);
  v7 = OUTLINED_FUNCTION_43(v126);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_81();
  v129 = v11;
  v12 = OUTLINED_FUNCTION_206();
  v123 = type metadata accessor for CloudSong(v12);
  v13 = OUTLINED_FUNCTION_43(v123);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_81();
  v18 = OUTLINED_FUNCTION_55_9(v17);
  v122 = type metadata accessor for CloudRecordLabel(v18);
  v19 = OUTLINED_FUNCTION_43(v122);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_81();
  v127 = v23;
  v24 = OUTLINED_FUNCTION_206();
  v120 = type metadata accessor for CloudRadioShow(v24);
  v25 = OUTLINED_FUNCTION_43(v120);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_81();
  v125 = v29;
  v30 = OUTLINED_FUNCTION_206();
  v119 = type metadata accessor for CloudPlaylist(v30);
  v31 = OUTLINED_FUNCTION_43(v119);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_81();
  v124 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v117 = type metadata accessor for CloudMusicVideo(v36);
  v37 = OUTLINED_FUNCTION_43(v117);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  OUTLINED_FUNCTION_81();
  v121 = v41;
  v42 = OUTLINED_FUNCTION_206();
  v116 = type metadata accessor for CloudGenre(v42);
  v43 = OUTLINED_FUNCTION_43(v116);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  OUTLINED_FUNCTION_81();
  v118 = v47;
  v48 = OUTLINED_FUNCTION_206();
  v49 = type metadata accessor for CloudCurator(v48);
  v50 = OUTLINED_FUNCTION_43(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  OUTLINED_FUNCTION_1();
  v54 = OUTLINED_FUNCTION_71_0();
  v55 = type metadata accessor for CloudArtist(v54);
  v56 = OUTLINED_FUNCTION_43(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56, v59);
  OUTLINED_FUNCTION_1();
  v60 = OUTLINED_FUNCTION_60_0();
  v61 = type metadata accessor for CloudAlbum(v60);
  v62 = OUTLINED_FUNCTION_43(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62, v65);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_61_6();
  v66 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v67 = OUTLINED_FUNCTION_43(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67, v70);
  OUTLINED_FUNCTION_1();
  v73 = (v72 - v71);
  sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v138, v73);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v73, v2);
      v87 = *(v55 + 32);
      if (*(v2 + v87) == 1)
      {
        v86 = type metadata accessor for CloudArtist;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v87);
      OUTLINED_FUNCTION_51_12();
      sub_2173880FC();
      OUTLINED_FUNCTION_41_13();
      goto LABEL_37;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v73, v3);
      v84 = *(v49 + 32);
      if (*(v3 + v84) == 1)
      {
        OUTLINED_FUNCTION_16_28();
        v80 = v3;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_148_4();
      v104 = *(v3 + v84);
      sub_217751DE8();
      sub_217221020(v104);
      OUTLINED_FUNCTION_51_12();
      sub_217387B08();
      OUTLINED_FUNCTION_75_7();
      OUTLINED_FUNCTION_16_28();
      v99 = v3;
      goto LABEL_53;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v2 = v118;
      sub_2173D77EC(v73, v118);
      OUTLINED_FUNCTION_135_5(v116);
      if (v85)
      {
        v86 = type metadata accessor for CloudGenre;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v55);
      OUTLINED_FUNCTION_51_12();
      sub_217387D1C();
      OUTLINED_FUNCTION_40_15();
LABEL_37:
      v98 = v105;
      v99 = v2;
      goto LABEL_53;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v73, v121);
      v78 = (v121 + *(v117 + 32));
      if (v78[3] == 1)
      {
        OUTLINED_FUNCTION_13_26();
        v80 = v121;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_148_4();
      v92 = *v78;
      v93 = v78[1];
      v94 = v78[2];
      v95 = v78[3];
      sub_217751DE8();
      v96 = OUTLINED_FUNCTION_154();
      sub_21733C3CC(v96, v97, v94, v95);
      OUTLINED_FUNCTION_51_12();
      sub_2173878F0();
      OUTLINED_FUNCTION_13_26();
      v99 = v121;
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v81 = v124;
      sub_2173D77EC(v73, v124);
      v88 = *(v119 + 32);
      sub_21738C4B0(v124 + v88, &v133, &qword_27CB24348, &unk_21775D520);
      if (v135 == 1)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v124, v89);
        v76 = &qword_27CB24348;
        v77 = &unk_21775D520;
        goto LABEL_20;
      }

      v110 = OUTLINED_FUNCTION_51_12();
      sub_2171F0738(v110, v111, v112);
      sub_2171FF30C(v130, v132);
      OUTLINED_FUNCTION_153_5(v124 + v88);
      sub_217751DE8();
      OUTLINED_FUNCTION_90_9();
      sub_217387380();
      if (v131)
      {
        v103 = type metadata accessor for CloudPlaylist;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_47_11();
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v2 = v125;
      sub_2173D77EC(v73, v125);
      OUTLINED_FUNCTION_135_5(v120);
      if (v85)
      {
        v86 = type metadata accessor for CloudRadioShow;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v55);
      OUTLINED_FUNCTION_51_12();
      sub_217387B30();
      if (v1)
      {
        v106 = type metadata accessor for CloudRadioShow;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_46_16();
      goto LABEL_52;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v2 = v127;
      sub_2173D77EC(v73, v127);
      OUTLINED_FUNCTION_135_5(v122);
      if (v85)
      {
        v86 = type metadata accessor for CloudRecordLabel;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v55);
      OUTLINED_FUNCTION_51_12();
      sub_217388124();
      if (v1)
      {
        v106 = type metadata accessor for CloudRecordLabel;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_16();
      goto LABEL_52;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v2 = v128;
      sub_2173D77EC(v73, v128);
      v91 = v128 + *(v123 + 32);
      if (*(v91 + 24) == 1)
      {
        v86 = type metadata accessor for CloudSong;
LABEL_27:
        v79 = v86;
        v80 = v2;
LABEL_28:
        sub_2173D7844(v80, v79);
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_148_4();
      v113 = *(v91 + 16);
      v136[0] = *v91;
      v136[1] = v113;
      v137 = *(v91 + 32);
      sub_217751DE8();
      sub_21738C4B0(v136, v132, &qword_27CB25748, &qword_21775D870);
      sub_217387700();
      if (v1)
      {
        v106 = type metadata accessor for CloudSong;
LABEL_45:
        v98 = v106;
        v99 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
LABEL_52:
        v98 = v115;
        v99 = v2;
      }

      goto LABEL_53;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v81 = v129;
      sub_2173D77EC(v73, v129);
      v82 = *(v126 + 32);
      sub_21738C4B0(v129 + v82, &v133, &qword_27CB24340, &unk_2177650B0);
      if (v135 == 1)
      {
        OUTLINED_FUNCTION_37_14();
        sub_2173D7844(v129, v83);
        v76 = &qword_27CB24340;
        v77 = &unk_2177650B0;
        goto LABEL_20;
      }

      v100 = OUTLINED_FUNCTION_51_12();
      sub_2171F0738(v100, v101, v102);
      sub_2171FF30C(v130, v132);
      OUTLINED_FUNCTION_153_5(v129 + v82);
      sub_217751DE8();
      OUTLINED_FUNCTION_90_9();
      sub_2173876D0();
      if (v131)
      {
        v103 = type metadata accessor for CloudStation;
LABEL_40:
        v98 = v103;
        v99 = v81;
      }

      else
      {
        OUTLINED_FUNCTION_34_16();
LABEL_49:
        v98 = v114;
        v99 = v81;
      }

      goto LABEL_53;
    case 0xAu:

      v90 = v73[1];
      v133 = *v73;
      v134[0] = v90;
      *(v134 + 9) = *(v73 + 25);
      sub_2173D0E38(v130, v131);
      sub_2171F0738(&v133, &qword_27CB25890, &unk_21775D928);
      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v73, v4);
      v74 = *(v61 + 32);
      sub_21738C4B0(v4 + v74, &v133, &qword_27CB243C0, &unk_21775D3A0);
      if (v135 == 1)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v4, v75);
        v76 = &qword_27CB243C0;
        v77 = &unk_21775D3A0;
LABEL_20:
        sub_2171F0738(&v133, v76, v77);
      }

      else
      {

        v107 = OUTLINED_FUNCTION_51_12();
        sub_2171F0738(v107, v108, v109);
        sub_2171FF30C(v130, v132);
        OUTLINED_FUNCTION_153_5(v4 + v74);
        sub_217751DE8();
        OUTLINED_FUNCTION_90_9();
        sub_217387350();
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v99 = v4;
LABEL_53:
        sub_2173D7844(v99, v98);
      }

LABEL_54:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t sub_2173D0E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_217751DC8();

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {
    sub_2171F3F0C(v13, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = (*(*(v7 + 8) + 40))(a1, a2, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171FF30C(a1, v10);
    sub_217751DE8();
    v8 = Dictionary<>.init(from:skippingValuesFor:)(v10, a2);
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v8;
}

uint64_t sub_2173D0F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_217751DC8();

  v6 = sub_21738C4B0(v3, v21, &qword_27CB256E8, &qword_21775D830);
  if (v22)
  {
    OUTLINED_FUNCTION_147_4(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18[0], v18[1], v18[2], v19, v20, v21[0]);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v15 + 8) + 40))(a1, a2, v14);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_2171FF30C(a1, v18);
    sub_217751DE8();
    Dictionary<>.init(from:skippingValuesFor:)(v18, a2);
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v21, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v26;
  a20 = v27;
  a10 = v21;
  v142 = v28;
  v143 = v29;
  v30 = type metadata accessor for CloudStation(0);
  v31 = OUTLINED_FUNCTION_27_22(v30, &a17);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_81();
  v36 = OUTLINED_FUNCTION_44_11(v35);
  v37 = type metadata accessor for CloudSong(v36);
  v38 = OUTLINED_FUNCTION_27_22(v37, &a15);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_81();
  v43 = OUTLINED_FUNCTION_44_11(v42);
  v44 = type metadata accessor for CloudRecordLabel(v43);
  v45 = OUTLINED_FUNCTION_27_22(v44, &a13);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_81();
  v50 = OUTLINED_FUNCTION_44_11(v49);
  v51 = type metadata accessor for CloudRadioShow(v50);
  v52 = OUTLINED_FUNCTION_27_22(v51, &a11);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_81();
  v57 = OUTLINED_FUNCTION_44_11(v56);
  v58 = type metadata accessor for CloudPlaylist(v57);
  v59 = OUTLINED_FUNCTION_27_22(v58, &a9);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  OUTLINED_FUNCTION_81();
  v64 = OUTLINED_FUNCTION_44_11(v63);
  v65 = type metadata accessor for CloudMusicVideo(v64);
  v66 = OUTLINED_FUNCTION_27_22(v65, &v151);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_81();
  v71 = OUTLINED_FUNCTION_44_11(v70);
  v72 = type metadata accessor for CloudGenre(v71);
  v73 = OUTLINED_FUNCTION_27_22(v72, &v150);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  OUTLINED_FUNCTION_1();
  v77 = OUTLINED_FUNCTION_71_0();
  v78 = type metadata accessor for CloudCurator(v77);
  v79 = OUTLINED_FUNCTION_43(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v82);
  OUTLINED_FUNCTION_1();
  v83 = OUTLINED_FUNCTION_61_6();
  v84 = type metadata accessor for CloudArtist(v83);
  v85 = OUTLINED_FUNCTION_43(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85, v88);
  OUTLINED_FUNCTION_1();
  v89 = OUTLINED_FUNCTION_37_10();
  v90 = type metadata accessor for CloudAlbum(v89);
  v91 = OUTLINED_FUNCTION_43(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91, v94);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v95 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v96 = OUTLINED_FUNCTION_43(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96, v99);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v20, v20);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v122 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v122, v123);
      v124 = *(v84 + 20);
      OUTLINED_FUNCTION_50_10();
      sub_2173887C0(v125, v126, v127);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_12_22();
      v107 = v23;
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v116 = OUTLINED_FUNCTION_161_5();
      sub_2173D77EC(v116, v117);
      v118 = *(v78 + 20);
      OUTLINED_FUNCTION_50_10();
      sub_2173886F4();
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_16_28();
      v107 = v25;
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v20, v22);
      OUTLINED_FUNCTION_78_6(&v150);
      OUTLINED_FUNCTION_50_10();
      sub_21738877C();
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_17_17();
      v107 = v22;
      goto LABEL_14;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_152_7(v20, &v152);
      v108 = OUTLINED_FUNCTION_32_18(&v151);
      sub_2173886A0(v108, v109, v110);
      OUTLINED_FUNCTION_45_1();
      v111 = type metadata accessor for CloudMusicVideo;
      goto LABEL_13;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_152_7(v20, &a10);
      v128 = OUTLINED_FUNCTION_32_18(&a9);
      sub_2173884CC(v128, v129, v130);
      OUTLINED_FUNCTION_45_1();
      v111 = type metadata accessor for CloudPlaylist;
      goto LABEL_13;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_152_7(v20, &a12);
      OUTLINED_FUNCTION_32_18(&a11);
      sub_217388738();
      OUTLINED_FUNCTION_45_1();
      v111 = type metadata accessor for CloudRadioShow;
LABEL_13:
      v106 = v111;
      v107 = v20;
      goto LABEL_14;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_152_7(v20, &a14);
      v119 = OUTLINED_FUNCTION_32_18(&a13);
      sub_217388814(v119, v120, v121);
      if (v21)
      {
        v115 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_19;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      OUTLINED_FUNCTION_152_7(v20, &a16);
      v133 = OUTLINED_FUNCTION_32_18(&a15);
      sub_21738864C(v133, v134, v135);
      if (v21)
      {
        v115 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_19;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_152_7(v20, &a18);
      v112 = OUTLINED_FUNCTION_32_18(&a17);
      sub_2173885F8(v112, v113, v114);
      if (v21)
      {
        v115 = type metadata accessor for CloudStation;
      }

      else
      {
        OUTLINED_FUNCTION_34_16();
      }

LABEL_19:
      sub_2173D7844(v20, v115);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_169_5();
      sub_21738C4B0(v149, v147, &qword_27CB25890, &unk_21775D928);
      if (v148)
      {
        sub_2171F3F0C(v147, v144);
        v131 = v145;
        v132 = v146;
        __swift_project_boxed_opaque_existential_1(v144, v145);
        (*(*(v132 + 8) + 48))(v143, v142, v131);
        sub_2171F0738(v149, &qword_27CB25890, &unk_21775D928);
        __swift_destroy_boxed_opaque_existential_1(v144);
      }

      else
      {
        OUTLINED_FUNCTION_58_3();
        sub_2171F0738(v136, v137, v138);
        sub_217751DE8();
        OUTLINED_FUNCTION_58_3();
        sub_2171F0738(v139, v140, v141);
      }

      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v100 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v100, v101);
      v102 = *(v90 + 20);
      OUTLINED_FUNCTION_50_10();
      sub_217388478(v103, v104, v105);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_10_24();
      v107 = v24;
LABEL_14:
      sub_2173D7844(v107, v106);
      break;
  }

  OUTLINED_FUNCTION_170();
}

void CatalogSearchRawResponse.TopResult.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v13, v14);
  v16 = v15;
  v139 = type metadata accessor for CloudStation(0);
  v17 = OUTLINED_FUNCTION_43(v139);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_81();
  v22 = OUTLINED_FUNCTION_55_9(v21);
  v137 = type metadata accessor for CloudSong(v22);
  v23 = OUTLINED_FUNCTION_43(v137);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_81();
  v142 = v27;
  v28 = OUTLINED_FUNCTION_206();
  v135 = type metadata accessor for CloudRecordLabel(v28);
  v29 = OUTLINED_FUNCTION_43(v135);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_81();
  v141 = v33;
  v34 = OUTLINED_FUNCTION_206();
  v133 = type metadata accessor for CloudRadioShow(v34);
  v35 = OUTLINED_FUNCTION_43(v133);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_81();
  v140 = v39;
  v40 = OUTLINED_FUNCTION_206();
  v132 = type metadata accessor for CloudPlaylist(v40);
  v41 = OUTLINED_FUNCTION_43(v132);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  OUTLINED_FUNCTION_81();
  v138 = v45;
  v46 = OUTLINED_FUNCTION_206();
  v130 = type metadata accessor for CloudMusicVideo(v46);
  v47 = OUTLINED_FUNCTION_43(v130);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  OUTLINED_FUNCTION_81();
  v136 = v51;
  v52 = OUTLINED_FUNCTION_206();
  v53 = type metadata accessor for CloudGenre(v52);
  v54 = OUTLINED_FUNCTION_43(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  OUTLINED_FUNCTION_81();
  v134 = v58;
  v59 = OUTLINED_FUNCTION_206();
  v60 = type metadata accessor for CloudCurator(v59);
  v61 = OUTLINED_FUNCTION_43(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61, v64);
  OUTLINED_FUNCTION_81();
  v131 = v65;
  v66 = OUTLINED_FUNCTION_206();
  v67 = type metadata accessor for CloudArtist(v66);
  v68 = OUTLINED_FUNCTION_43(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68, v71);
  OUTLINED_FUNCTION_1();
  v72 = OUTLINED_FUNCTION_37_10();
  v73 = type metadata accessor for CloudAlbum(v72);
  v74 = OUTLINED_FUNCTION_43(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v77);
  OUTLINED_FUNCTION_28_19();
  v78 = v16;
  v79 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v80 = OUTLINED_FUNCTION_43(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80, v83);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v78 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v11, v12);
      sub_21738C4B0(v12 + *(v67 + 24), v146, &qword_27CB24328, &unk_21775D440);
      OUTLINED_FUNCTION_65_11();
      if (!v84)
      {

        v111 = OUTLINED_FUNCTION_94_6();
        memcpy(v111, v112, 0x380uLL);
        OUTLINED_FUNCTION_53_12();
        sub_217388B68();
        OUTLINED_FUNCTION_77_7();
        sub_21726A204(&v147);
        OUTLINED_FUNCTION_12_22();
        v114 = v12;
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v12, v95);
      v86 = &qword_27CB24328;
      v87 = &unk_21775D440;
      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v10 = v131;
      sub_2173D77EC(v11, v131);
      OUTLINED_FUNCTION_128_8(&qword_27CB24498, &unk_217758960, *(v60 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v84)
      {

        v104 = OUTLINED_FUNCTION_94_6();
        memcpy(v104, v105, 0x80uLL);
        OUTLINED_FUNCTION_53_12();
        sub_2173889F8();
        OUTLINED_FUNCTION_77_7();
        sub_2172831A8(&v147);
        v110 = type metadata accessor for CloudCurator;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v131, v92);
      v86 = &qword_27CB24498;
      v87 = &unk_217758960;
      goto LABEL_33;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v88 = v134;
      sub_2173D77EC(v11, v134);
      OUTLINED_FUNCTION_128_8(&qword_27CB24AA0, &qword_21775D8F0, *(v53 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_17_17();
        sub_2173D7844(v134, v93);
        v86 = &qword_27CB24AA0;
        v87 = &qword_21775D8F0;
        goto LABEL_33;
      }

      v106 = OUTLINED_FUNCTION_94_6();
      memcpy(v106, v107, 0x80uLL);
      OUTLINED_FUNCTION_53_12();
      sub_217388AB8();
      if (v78)
      {
        sub_217284594(&v147);
        v102 = type metadata accessor for CloudGenre;
        goto LABEL_50;
      }

      v125 = OUTLINED_FUNCTION_143_6();
      sub_217284594(v125);
      v122 = type metadata accessor for CloudGenre;
      goto LABEL_61;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v88 = v136;
      sub_2173D77EC(v11, v136);
      OUTLINED_FUNCTION_128_8(&qword_27CB243A8, &unk_217777720, *(v130 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v136, v89);
        v86 = &qword_27CB243A8;
        v87 = &unk_217777720;
        goto LABEL_33;
      }

      v100 = OUTLINED_FUNCTION_94_6();
      memcpy(v100, v101, 0x300uLL);
      OUTLINED_FUNCTION_53_12();
      sub_217388950();
      if (v78)
      {
        sub_21726A3FC(&v147);
        v102 = type metadata accessor for CloudMusicVideo;
        goto LABEL_50;
      }

      v121 = OUTLINED_FUNCTION_143_6();
      sub_21726A3FC(v121);
      v122 = type metadata accessor for CloudMusicVideo;
      goto LABEL_61;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v88 = v138;
      sub_2173D77EC(v11, v138);
      OUTLINED_FUNCTION_128_8(&qword_27CB24358, &unk_21775D510, *(v132 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v138, v96);
        v86 = &qword_27CB24358;
        v87 = &unk_21775D510;
        goto LABEL_33;
      }

      v115 = OUTLINED_FUNCTION_94_6();
      memcpy(v115, v116, 0x380uLL);
      OUTLINED_FUNCTION_53_12();
      sub_2173888A8();
      if (v78)
      {
        sub_21726A354(&v147);
        v102 = type metadata accessor for CloudPlaylist;
        goto LABEL_50;
      }

      v127 = OUTLINED_FUNCTION_143_6();
      sub_21726A354(v127);
      v122 = type metadata accessor for CloudPlaylist;
      goto LABEL_61;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v88 = v140;
      sub_2173D77EC(v11, v140);
      OUTLINED_FUNCTION_128_8(&qword_27CB25640, &qword_217764750, *(v133 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_21_20();
        sub_2173D7844(v140, v97);
        v86 = &qword_27CB25640;
        v87 = &qword_217764750;
        goto LABEL_33;
      }

      v117 = OUTLINED_FUNCTION_94_6();
      memcpy(v117, v118, 0x80uLL);
      OUTLINED_FUNCTION_53_12();
      sub_217388A28();
      if (v78)
      {
        sub_21733BB04(&v147);
        v102 = type metadata accessor for CloudRadioShow;
        goto LABEL_50;
      }

      v128 = OUTLINED_FUNCTION_143_6();
      sub_21733BB04(v128);
      v122 = type metadata accessor for CloudRadioShow;
      goto LABEL_61;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v94 = v11;
      v91 = v141;
      sub_2173D77EC(v94, v141);
      if (*(v141 + *(v135 + 24)))
      {
        goto LABEL_56;
      }

      sub_2171FF30C(v144, &v147);
      sub_2174D5248(&v147);
      if (v145)
      {
        v103 = type metadata accessor for CloudRecordLabel;
        goto LABEL_42;
      }

      v126 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v126);
      OUTLINED_FUNCTION_77_7();
LABEL_56:
      v124 = type metadata accessor for CloudRecordLabel;
      goto LABEL_57;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v88 = v142;
      sub_2173D77EC(v11, v142);
      OUTLINED_FUNCTION_128_8(&qword_27CB24A78, &qword_217759040, *(v137 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_48_12();
        sub_2173D7844(v142, v99);
        v86 = &qword_27CB24A78;
        v87 = &qword_217759040;
        goto LABEL_33;
      }

      v119 = OUTLINED_FUNCTION_94_6();
      memcpy(v119, v120, 0x600uLL);
      OUTLINED_FUNCTION_53_12();
      sub_2173888E8();
      if (v78)
      {
        sub_217284234(&v147);
        v102 = type metadata accessor for CloudSong;
LABEL_50:
        v113 = v102;
        v114 = v88;
      }

      else
      {
        v129 = OUTLINED_FUNCTION_143_6();
        sub_217284234(v129);
        v122 = type metadata accessor for CloudSong;
LABEL_61:
        v113 = v122;
        v114 = v88;
      }

      goto LABEL_62;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v90 = v11;
      v91 = v143;
      sub_2173D77EC(v90, v143);
      if (*(v143 + *(v139 + 24)))
      {
        goto LABEL_53;
      }

      sub_2171FF30C(v144, &v147);
      sub_2174D4AA8(&v147);
      if (v145)
      {
        v103 = type metadata accessor for CloudStation;
LABEL_42:
        v113 = v103;
        v114 = v91;
      }

      else
      {
        v123 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v123);
        OUTLINED_FUNCTION_77_7();
LABEL_53:
        v124 = type metadata accessor for CloudStation;
LABEL_57:
        v113 = v124;
        v114 = v91;
      }

      goto LABEL_62;
    case 0xAu:

      v98 = v11[1];
      v147 = *v11;
      v148[0] = v98;
      *(v148 + 9) = *(v11 + 25);
      sub_2173D20A8(v78, v144);
      sub_2171F0738(&v147, &qword_27CB25890, &unk_21775D928);
      goto LABEL_63;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v11, v10);
      OUTLINED_FUNCTION_128_8(&qword_27CB243C8, &unk_21775D390, *(v73 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v84)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v85);
        v86 = &qword_27CB243C8;
        v87 = &unk_21775D390;
LABEL_33:
        sub_2171F0738(v146, v86, v87);
      }

      else
      {

        v108 = OUTLINED_FUNCTION_94_6();
        memcpy(v108, v109, 0x300uLL);
        OUTLINED_FUNCTION_53_12();
        sub_217388868();
        OUTLINED_FUNCTION_77_7();
        sub_21726A4EC(&v147);
        v110 = type metadata accessor for CloudAlbum;
LABEL_43:
        v113 = v110;
        v114 = v10;
LABEL_62:
        sub_2173D7844(v114, v113);
      }

LABEL_63:
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t sub_2173D20A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 56))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D21B4(uint64_t a1)
{
  OUTLINED_FUNCTION_74_8(a1);
  if (v2)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v1, &v20, &qword_27CB256E8, &qword_21775D830);
  if (v21)
  {

    OUTLINED_FUNCTION_147_4(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17[0], v17[1], v17[2], v18, v19, v20);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_132_7();
    v12 = *(v11 + 56);
    v13 = OUTLINED_FUNCTION_92_8();
    v14(v13);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_2171F0738(&v20, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v13, v14);
  v15 = OUTLINED_FUNCTION_101();
  v134 = type metadata accessor for CloudStation(v15);
  v16 = OUTLINED_FUNCTION_43(v134);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v21 = OUTLINED_FUNCTION_55_9(v20);
  v131 = type metadata accessor for CloudSong(v21);
  v22 = OUTLINED_FUNCTION_43(v131);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_81();
  v26 = OUTLINED_FUNCTION_206();
  v129 = type metadata accessor for CloudRecordLabel(v26);
  v27 = OUTLINED_FUNCTION_43(v129);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_81();
  v135 = v31;
  v32 = OUTLINED_FUNCTION_206();
  v128 = type metadata accessor for CloudRadioShow(v32);
  v33 = OUTLINED_FUNCTION_43(v128);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_81();
  v133 = v37;
  v38 = OUTLINED_FUNCTION_206();
  v126 = type metadata accessor for CloudPlaylist(v38);
  v39 = OUTLINED_FUNCTION_43(v126);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  OUTLINED_FUNCTION_81();
  v132 = v43;
  v44 = OUTLINED_FUNCTION_206();
  v124 = type metadata accessor for CloudMusicVideo(v44);
  v45 = OUTLINED_FUNCTION_43(v124);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_81();
  v130 = v49;
  v50 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudGenre(v50);
  v52 = OUTLINED_FUNCTION_43(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  OUTLINED_FUNCTION_81();
  v127 = v56;
  v57 = OUTLINED_FUNCTION_206();
  v58 = type metadata accessor for CloudCurator(v57);
  v59 = OUTLINED_FUNCTION_43(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  OUTLINED_FUNCTION_81();
  v125 = v63;
  v64 = OUTLINED_FUNCTION_206();
  v65 = type metadata accessor for CloudArtist(v64);
  v66 = OUTLINED_FUNCTION_43(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_1();
  v70 = OUTLINED_FUNCTION_37_10();
  v71 = type metadata accessor for CloudAlbum(v70);
  v72 = OUTLINED_FUNCTION_43(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72, v75);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_61_6();
  v76 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v77 = OUTLINED_FUNCTION_43(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77, v80);
  OUTLINED_FUNCTION_28_19();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_1_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v92 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v92, v93);
      sub_21738C4B0(v11 + *(v65 + 28), v137, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_65_11();
      if (!v83)
      {

        v113 = OUTLINED_FUNCTION_144_5();
        memcpy(v113, v114, 0x580uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388DA0();
        OUTLINED_FUNCTION_98();
        sub_21728463C(&v138);
        OUTLINED_FUNCTION_12_22();
        v112 = v11;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v11, v94);
      v85 = &qword_27CB24AB0;
      v86 = &qword_217759088;
      goto LABEL_25;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v76 = v125;
      sub_2173D77EC(v10, v125);
      if (*(v125 + *(v58 + 28)))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_160_5();
      v105 = OUTLINED_FUNCTION_145_3();
      sub_2174D5830(v105);
      if (v10)
      {
        v103 = type metadata accessor for CloudCurator;
      }

      else
      {
        v120 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v120);
        OUTLINED_FUNCTION_98();
LABEL_45:
        v103 = type metadata accessor for CloudCurator;
      }

      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v76 = v127;
      sub_2173D77EC(v10, v127);
      if (*(v127 + *(v51 + 28)))
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_160_5();
      v106 = OUTLINED_FUNCTION_145_3();
      sub_2174D57C8(v106);
      if (v10)
      {
        v103 = type metadata accessor for CloudGenre;
      }

      else
      {
        v121 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v121);
        OUTLINED_FUNCTION_98();
LABEL_47:
        v103 = type metadata accessor for CloudGenre;
      }

      goto LABEL_52;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v76 = v130;
      sub_2173D77EC(v10, v130);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A90, &unk_21775D5B0, *(v124 + 28));
      OUTLINED_FUNCTION_65_11();
      if (!v83)
      {

        v101 = OUTLINED_FUNCTION_144_5();
        memcpy(v101, v102, 0x100uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388CF8();
        sub_2172844EC(&v138);
        v103 = type metadata accessor for CloudMusicVideo;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_13_26();
      sub_2173D7844(v130, v87);
      v85 = &qword_27CB24A90;
      v86 = &unk_21775D5B0;
      goto LABEL_25;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v76 = v132;
      sub_2173D77EC(v10, v132);
      OUTLINED_FUNCTION_119_8(&qword_27CB24350, &unk_21776A5D0, *(v126 + 28));
      OUTLINED_FUNCTION_65_11();
      if (!v83)
      {

        v115 = OUTLINED_FUNCTION_144_5();
        memcpy(v115, v116, 0x200uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388C50();
        sub_21726A300(&v138);
        v103 = type metadata accessor for CloudPlaylist;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_14_23();
      sub_2173D7844(v132, v95);
      v85 = &qword_27CB24350;
      v86 = &unk_21776A5D0;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v76 = v133;
      sub_2173D77EC(v10, v133);
      OUTLINED_FUNCTION_126_8(v128);
      if (v96)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_160_5();
      v117 = OUTLINED_FUNCTION_145_3();
      sub_2174D57FC(v117);
      if (v10)
      {
        v103 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        v122 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v122);
        OUTLINED_FUNCTION_98();
LABEL_49:
        v103 = type metadata accessor for CloudRadioShow;
      }

      goto LABEL_52;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v76 = v135;
      sub_2173D77EC(v10, v135);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A98, &unk_217759060, *(v129 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v83)
      {
        OUTLINED_FUNCTION_36_15();
        sub_2173D7844(v135, v91);
        v85 = &qword_27CB24A98;
        v86 = &unk_217759060;
        goto LABEL_25;
      }

      v107 = OUTLINED_FUNCTION_144_5();
      memcpy(v107, v108, 0x100uLL);
      OUTLINED_FUNCTION_67_10();
      sub_217388E08();
      sub_217284540(&v138);
      v103 = type metadata accessor for CloudRecordLabel;
LABEL_52:
      sub_2173D7844(v76, v103);
      break;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v98 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v98, v99);
      OUTLINED_FUNCTION_126_8(v131);
      if (v100)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_160_5();
      v118 = OUTLINED_FUNCTION_145_3();
      sub_2174D5760(v118);
      if (v10)
      {
        v103 = type metadata accessor for CloudSong;
      }

      else
      {
        v123 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v123);
        OUTLINED_FUNCTION_98();
LABEL_51:
        v103 = type metadata accessor for CloudSong;
      }

      goto LABEL_52;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v88 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v88, v89);
      OUTLINED_FUNCTION_126_8(v134);
      if (v90)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_160_5();
      v104 = OUTLINED_FUNCTION_145_3();
      sub_2174D53F4(v104);
      if (v10)
      {
        v103 = type metadata accessor for CloudStation;
      }

      else
      {
        v119 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v119);
        OUTLINED_FUNCTION_98();
LABEL_43:
        v103 = type metadata accessor for CloudStation;
      }

      goto LABEL_52;
    case 0xAu:

      v97 = *(v10 + 16);
      v138 = *v10;
      v139[0] = v97;
      *(v139 + 9) = *(v10 + 25);
      sub_2173D2BB8(v10, v136);
      sub_2171F0738(&v138, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v81 = OUTLINED_FUNCTION_161_5();
      sub_2173D77EC(v81, v82);
      sub_21738C4B0(v12 + *(v71 + 28), v137, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_65_11();
      if (v83)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v12, v84);
        v85 = &qword_27CB24AA8;
        v86 = &qword_217759080;
LABEL_25:
        sub_2171F0738(v137, v85, v86);
      }

      else
      {

        v109 = OUTLINED_FUNCTION_144_5();
        memcpy(v109, v110, 0x200uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388C10();
        OUTLINED_FUNCTION_98();
        sub_2172845E8(&v138);
        OUTLINED_FUNCTION_10_24();
        v112 = v12;
LABEL_37:
        sub_2173D7844(v112, v111);
      }

      break;
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D2BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 64))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D2CC4(uint64_t a1)
{
  OUTLINED_FUNCTION_74_8(a1);
  if (v2)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v1, &v20, &qword_27CB256E8, &qword_21775D830);
  if (v21)
  {

    OUTLINED_FUNCTION_147_4(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17[0], v17[1], v17[2], v18, v19, v20);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_132_7();
    v12 = *(v11 + 64);
    v13 = OUTLINED_FUNCTION_92_8();
    v14(v13);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_2171F0738(&v20, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v12, v13);
  v15 = v14;
  v143 = type metadata accessor for CloudStation(0);
  v16 = OUTLINED_FUNCTION_43(v143);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v146 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v140 = type metadata accessor for CloudSong(v21);
  v22 = OUTLINED_FUNCTION_43(v140);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_81();
  v27 = OUTLINED_FUNCTION_55_9(v26);
  v139 = type metadata accessor for CloudRecordLabel(v27);
  v28 = OUTLINED_FUNCTION_43(v139);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_81();
  v145 = v32;
  v33 = OUTLINED_FUNCTION_206();
  v137 = type metadata accessor for CloudRadioShow(v33);
  v34 = OUTLINED_FUNCTION_43(v137);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_81();
  v144 = v38;
  v39 = OUTLINED_FUNCTION_206();
  v135 = type metadata accessor for CloudPlaylist(v39);
  v40 = OUTLINED_FUNCTION_43(v135);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_81();
  v141 = v44;
  v45 = OUTLINED_FUNCTION_206();
  v134 = type metadata accessor for CloudMusicVideo(v45);
  v46 = OUTLINED_FUNCTION_43(v134);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_81();
  v142 = v50;
  v51 = OUTLINED_FUNCTION_206();
  v52 = type metadata accessor for CloudGenre(v51);
  v53 = OUTLINED_FUNCTION_43(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53, v56);
  OUTLINED_FUNCTION_81();
  v138 = v57;
  v58 = OUTLINED_FUNCTION_206();
  v59 = type metadata accessor for CloudCurator(v58);
  v60 = OUTLINED_FUNCTION_43(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60, v63);
  OUTLINED_FUNCTION_81();
  v136 = v64;
  v65 = OUTLINED_FUNCTION_206();
  v66 = type metadata accessor for CloudArtist(v65);
  v67 = OUTLINED_FUNCTION_43(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67, v70);
  OUTLINED_FUNCTION_1();
  v71 = OUTLINED_FUNCTION_61_6();
  v72 = type metadata accessor for CloudAlbum(v71);
  v73 = OUTLINED_FUNCTION_43(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  OUTLINED_FUNCTION_28_19();
  v77 = v15;
  v78 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v79 = OUTLINED_FUNCTION_43(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v82);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v15 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v95 = OUTLINED_FUNCTION_140_1();
      sub_2173D77EC(v95, v96);
      v97 = *(v66 + 32);
      if (*(v11 + v97) != 1)
      {
        v118 = *(v11 + v97);
        sub_217751DE8();

        OUTLINED_FUNCTION_149_5();
        v119 = OUTLINED_FUNCTION_70_8();
        sub_2174D63C0(v119, v120);
        if (!v15)
        {
          v131 = OUTLINED_FUNCTION_117_10();
          OUTLINED_FUNCTION_116_10(v131);
          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_12_22();
      v108 = v11;
      goto LABEL_67;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v90 = v15;
      v91 = v136;
      sub_2173D77EC(v90, v136);
      OUTLINED_FUNCTION_167_6(*(v59 + 32));
      if (v92)
      {
        goto LABEL_55;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v110 = OUTLINED_FUNCTION_70_8();
      sub_2174D6198(v110, v111);
      if (v77)
      {
        v112 = type metadata accessor for CloudCurator;
        goto LABEL_52;
      }

      v127 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v127);
      OUTLINED_FUNCTION_77_7();
LABEL_55:
      v128 = type metadata accessor for CloudCurator;
      goto LABEL_66;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v93 = v15;
      v91 = v138;
      sub_2173D77EC(v93, v138);
      OUTLINED_FUNCTION_167_6(*(v52 + 32));
      if (v92)
      {
        goto LABEL_57;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v113 = OUTLINED_FUNCTION_70_8();
      sub_2174D5F94(v113, v114);
      if (v77)
      {
        v112 = type metadata accessor for CloudGenre;
        goto LABEL_52;
      }

      v129 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v129);
      OUTLINED_FUNCTION_77_7();
LABEL_57:
      v128 = type metadata accessor for CloudGenre;
      goto LABEL_66;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v15, v142);
      v86 = v142 + *(v134 + 32);
      v87 = *(v86 + 24);
      if (v87 != 1)
      {
        v104 = *(v86 + 16);
        v106 = *v86;
        v105 = *(v86 + 8);
        sub_217221020(*v86);
        sub_217751DE8();

        OUTLINED_FUNCTION_149_5();
        v150[0] = v104 & 1;
        sub_2174D5C54(v106, v105, v104 & 1, v87, &v152);
        if (!v149)
        {
          v125 = OUTLINED_FUNCTION_117_10();
          OUTLINED_FUNCTION_116_10(v125);
          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_13_26();
      v108 = v142;
      goto LABEL_67;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v88 = v141;
      sub_2173D77EC(v15, v141);
      OUTLINED_FUNCTION_128_8(&qword_27CB24348, &unk_21775D520, *(v135 + 32));
      if (v151 == 1)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v141, v98);
        v84 = &qword_27CB24348;
        v85 = &unk_21775D520;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_154_5();
      OUTLINED_FUNCTION_67_10();
      sub_217388E88();
      if (v15)
      {
        sub_21726A2AC(&v152);
        v109 = type metadata accessor for CloudPlaylist;
        goto LABEL_47;
      }

      sub_21726A2AC(&v152);
      v126 = type metadata accessor for CloudPlaylist;
      goto LABEL_61;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v99 = v15;
      v91 = v144;
      sub_2173D77EC(v99, v144);
      OUTLINED_FUNCTION_167_6(*(v137 + 32));
      if (v92)
      {
        goto LABEL_63;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v121 = OUTLINED_FUNCTION_70_8();
      sub_2174D5FC8(v121, v122);
      if (v77)
      {
        v112 = type metadata accessor for CloudRadioShow;
        goto LABEL_52;
      }

      v132 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v132);
      OUTLINED_FUNCTION_77_7();
LABEL_63:
      v128 = type metadata accessor for CloudRadioShow;
      goto LABEL_66;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v94 = v15;
      v91 = v145;
      sub_2173D77EC(v94, v145);
      OUTLINED_FUNCTION_167_6(*(v139 + 32));
      if (v92)
      {
        goto LABEL_59;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v115 = OUTLINED_FUNCTION_70_8();
      sub_2174D638C(v115, v116);
      if (v77)
      {
        v112 = type metadata accessor for CloudRecordLabel;
        goto LABEL_52;
      }

      v130 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v130);
      OUTLINED_FUNCTION_77_7();
LABEL_59:
      v128 = type metadata accessor for CloudRecordLabel;
      goto LABEL_66;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v101 = v15;
      v91 = v147;
      sub_2173D77EC(v101, v147);
      v102 = v147 + *(v140 + 32);
      v103 = *(v102 + 24);
      if (v103 == 1)
      {
        goto LABEL_65;
      }

      v123 = *(v102 + 32);
      v124 = *(v102 + 16);
      v154 = *v102;
      v155 = v124 & 1;
      v156 = v103;
      v157 = v123;
      sub_217221020(v154);
      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      sub_2174D5DD4(&v154);
      if (v149)
      {
        v112 = type metadata accessor for CloudSong;
LABEL_52:
        v107 = v112;
        v108 = v91;
      }

      else
      {
        v133 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v133);
        OUTLINED_FUNCTION_77_7();
LABEL_65:
        v128 = type metadata accessor for CloudSong;
LABEL_66:
        v107 = v128;
        v108 = v91;
      }

      goto LABEL_67;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v88 = v146;
      sub_2173D77EC(v15, v146);
      OUTLINED_FUNCTION_128_8(&qword_27CB24340, &unk_2177650B0, *(v143 + 32));
      if (v151 == 1)
      {
        OUTLINED_FUNCTION_37_14();
        sub_2173D7844(v146, v89);
        v84 = &qword_27CB24340;
        v85 = &unk_2177650B0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_154_5();
      OUTLINED_FUNCTION_67_10();
      sub_217388F30();
      if (v15)
      {
        sub_21726A258(&v152);
        v109 = type metadata accessor for CloudStation;
LABEL_47:
        v107 = v109;
        v108 = v88;
      }

      else
      {
        sub_21726A258(&v152);
        v126 = type metadata accessor for CloudStation;
LABEL_61:
        v107 = v126;
        v108 = v88;
      }

LABEL_67:
      sub_2173D7844(v108, v107);
      break;
    case 0xAu:

      v100 = *(v15 + 16);
      v152 = *v15;
      v153[0] = v100;
      *(v153 + 9) = *(v15 + 25);
      sub_2173D371C(v15, v148);
      sub_2171F0738(&v152, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v15, v10);
      OUTLINED_FUNCTION_128_8(&qword_27CB243C0, &unk_21775D3A0, *(v72 + 32));
      if (v151 == 1)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v83);
        v84 = &qword_27CB243C0;
        v85 = &unk_21775D3A0;
LABEL_23:
        sub_2171F0738(v150, v84, v85);
      }

      else
      {

        OUTLINED_FUNCTION_154_5();
        OUTLINED_FUNCTION_67_10();
        sub_217388E48();
        OUTLINED_FUNCTION_77_7();
        sub_21726A498(&v152);
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v117);
      }

      break;
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D371C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 72))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D3828(uint64_t a1)
{
  OUTLINED_FUNCTION_74_8(a1);
  if (v2)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v1, &v20, &qword_27CB256E8, &qword_21775D830);
  if (v21)
  {

    OUTLINED_FUNCTION_147_4(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17[0], v17[1], v17[2], v18, v19, v20);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_132_7();
    v12 = *(v11 + 72);
    v13 = OUTLINED_FUNCTION_92_8();
    v14(v13);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_2171F0738(&v20, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

uint64_t sub_2173D3904(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173D3A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173D3904(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173D3A7C(uint64_t a1)
{
  v2 = sub_2173D7798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173D3AB8(uint64_t a1)
{
  v2 = sub_2173D7798();

  return MEMORY[0x2821FE720](a1, v2);
}

void CatalogSearchRawResponse.TopResult.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = type metadata accessor for CloudStation(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v11 = OUTLINED_FUNCTION_44_11(v10);
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_81();
  v18 = OUTLINED_FUNCTION_44_11(v17);
  v19 = type metadata accessor for CloudRecordLabel(v18);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_81();
  v134 = v24;
  v25 = OUTLINED_FUNCTION_206();
  v26 = type metadata accessor for CloudPlaylist(v25);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_81();
  v135 = v31;
  v32 = OUTLINED_FUNCTION_206();
  v33 = type metadata accessor for CloudMusicVideo(v32);
  v34 = OUTLINED_FUNCTION_45_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_81();
  v38 = OUTLINED_FUNCTION_206();
  v39 = type metadata accessor for CloudGenre(v38);
  v40 = OUTLINED_FUNCTION_45_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_206();
  v137 = type metadata accessor for CloudRawCurator();
  v44 = OUTLINED_FUNCTION_43(v137);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_31();
  v136 = v48;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_80();
  v138 = v51;
  v52 = OUTLINED_FUNCTION_206();
  v53 = type metadata accessor for CloudArtist(v52);
  v54 = OUTLINED_FUNCTION_45_0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  OUTLINED_FUNCTION_1();
  v58 = OUTLINED_FUNCTION_31_12();
  v59 = type metadata accessor for CloudAlbum(v58);
  v60 = OUTLINED_FUNCTION_45_0(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60, v63);
  OUTLINED_FUNCTION_1();
  v66 = v65 - v64;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270D8, &qword_217768EF8);
  OUTLINED_FUNCTION_0_0(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v70, v71);
  OUTLINED_FUNCTION_60_0();
  v72 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v73 = OUTLINED_FUNCTION_43(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v78 = v4[3];
  v77 = v4[4];
  v142 = v4;
  v79 = OUTLINED_FUNCTION_161_5();
  __swift_project_boxed_opaque_existential_1(v79, v80);
  sub_2173D7798();
  sub_2177532C8();
  if (!v0)
  {
    sub_21733BE84();
    sub_217752EA8();
    v4 = *(&v140 + 1);
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (OUTLINED_FUNCTION_121_8(off_280BE7F10))
    {
      goto LABEL_14;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v81 = qword_280BE5748 == v140 && unk_280BE5750 == *(&v140 + 1);
    if (v81 || (sub_217753058() & 1) != 0)
    {
LABEL_14:

      OUTLINED_FUNCTION_104_6();
      CloudAlbum.init(from:)();
      v82 = OUTLINED_FUNCTION_25_24();
      v83(v82);
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v66, v1);
      OUTLINED_FUNCTION_108_8();
    }

    else
    {
      if (qword_280BE5220 != -1)
      {
        swift_once();
      }

      if (OUTLINED_FUNCTION_121_8(off_280BE5228[0]))
      {
        goto LABEL_27;
      }

      if (qword_280BE52E8 != -1)
      {
        swift_once();
      }

      v86 = qword_280BE52F0 == v140 && *algn_280BE52F8 == *(&v140 + 1);
      if (v86 || (sub_217753058() & 1) != 0)
      {
LABEL_27:

        OUTLINED_FUNCTION_104_6();
        CloudArtist.init(from:)();
        v87 = OUTLINED_FUNCTION_25_24();
        v88(v87);
        OUTLINED_FUNCTION_4_49();
        sub_2173D77EC(v2, v1);
        OUTLINED_FUNCTION_108_8();
      }

      else
      {
        if (qword_280BE4FB0 != -1)
        {
          swift_once();
        }

        if (OUTLINED_FUNCTION_121_8(off_280BE4FB8))
        {

          OUTLINED_FUNCTION_104_6();
          CloudRawCurator.init(from:)();
          sub_2173D789C(v138, v136);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v138, v111);
              v112 = OUTLINED_FUNCTION_25_24();
              v113(v112);
              OUTLINED_FUNCTION_6_33();
              v114 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v114, v115);
              OUTLINED_FUNCTION_140_1();
              goto LABEL_15;
            case 2u:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v138, v103);
              v104 = OUTLINED_FUNCTION_25_24();
              v105(v104);
              OUTLINED_FUNCTION_2_49();
              v106 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v106, v107);
              OUTLINED_FUNCTION_140_1();
              goto LABEL_15;
            case 3u:
              sub_2171FF30C(*(&v140 + 1), v139);
              sub_2173D4760(v139, &v140);
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v138, v108);
              v109 = OUTLINED_FUNCTION_25_24();
              v110(v109);
              v117 = v141[0];
              *v1 = v140;
              v1[1] = v117;
              *(v1 + 25) = *(v141 + 9);
              OUTLINED_FUNCTION_140_1();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v136, v118);
              break;
            default:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v138, v89);
              v90 = OUTLINED_FUNCTION_25_24();
              v91(v90);
              OUTLINED_FUNCTION_7_31();
              v92 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v92, v93);
              OUTLINED_FUNCTION_140_1();
              goto LABEL_15;
          }

          goto LABEL_16;
        }

        if (qword_280BE5538 != -1)
        {
          swift_once();
        }

        if (OUTLINED_FUNCTION_121_8(off_280BE5540))
        {

          OUTLINED_FUNCTION_104_6();
          CloudGenre.init(from:)();
          v94 = OUTLINED_FUNCTION_25_24();
          v95(v94);
          OUTLINED_FUNCTION_6_33();
          v96 = OUTLINED_FUNCTION_47_2();
          sub_2173D77EC(v96, v97);
          OUTLINED_FUNCTION_162_5();
        }

        else
        {
          if (qword_280BE6EA0 != -1)
          {
            swift_once();
          }

          if (!OUTLINED_FUNCTION_103_8(off_280BE6EA8))
          {
            if (qword_280BE6EC8 != -1)
            {
              swift_once();
            }

            v98 = qword_280BE6ED0 == v140 && *algn_280BE6ED8 == *(&v140 + 1);
            if (!v98 && (OUTLINED_FUNCTION_150_5() & 1) == 0)
            {
              if (qword_280BE4610 != -1)
              {
                swift_once();
              }

              if (OUTLINED_FUNCTION_103_8(off_280BE4618[0]))
              {
                goto LABEL_62;
              }

              if (qword_280BE4788 != -1)
              {
                swift_once();
              }

              v116 = qword_280BE4790 == v140 && *algn_280BE4798 == *(&v140 + 1);
              if (v116 || (OUTLINED_FUNCTION_150_5() & 1) != 0)
              {
LABEL_62:

                OUTLINED_FUNCTION_176_6();
                CloudPlaylist.init(from:)();
                OUTLINED_FUNCTION_112_9();
                v119 = OUTLINED_FUNCTION_26_21();
                v120(v119);
                OUTLINED_FUNCTION_3_46();
                sub_2173D77EC(v135, v1);
                OUTLINED_FUNCTION_108_8();
              }

              else
              {
                if (qword_280BE3F50 != -1)
                {
                  swift_once();
                }

                if (OUTLINED_FUNCTION_103_8(off_280BE3F58))
                {

                  OUTLINED_FUNCTION_176_6();
                  CloudRecordLabel.init(from:)();
                  OUTLINED_FUNCTION_112_9();
                  v121 = OUTLINED_FUNCTION_26_21();
                  v122(v121);
                  OUTLINED_FUNCTION_5_38();
                  sub_2173D77EC(v134, v1);
                  OUTLINED_FUNCTION_108_8();
                }

                else
                {
                  if (qword_280BE7620 != -1)
                  {
                    swift_once();
                  }

                  if (OUTLINED_FUNCTION_103_8(off_280BE7628))
                  {
                    goto LABEL_78;
                  }

                  if (qword_280BE24E8 != -1)
                  {
                    swift_once();
                  }

                  v123 = qword_280BE24F0 == v140 && *algn_280BE24F8 == *(&v140 + 1);
                  if (v123 || (OUTLINED_FUNCTION_150_5() & 1) != 0)
                  {
LABEL_78:

                    OUTLINED_FUNCTION_176_6();
                    CloudSong.init(from:)();
                    OUTLINED_FUNCTION_112_9();
                    v124 = OUTLINED_FUNCTION_26_21();
                    v125(v124);
                    OUTLINED_FUNCTION_1_46();
                    sub_2173D77EC(v133, v1);
                    OUTLINED_FUNCTION_108_8();
                  }

                  else
                  {
                    if (qword_280BE4DA0 != -1)
                    {
                      swift_once();
                    }

                    v126 = OUTLINED_FUNCTION_103_8(off_280BE4DA8);

                    if (v126)
                    {
                      OUTLINED_FUNCTION_176_6();
                      CloudStation.init(from:)();
                      OUTLINED_FUNCTION_112_9();
                      v127 = OUTLINED_FUNCTION_26_21();
                      v128(v127);
                      OUTLINED_FUNCTION_8_33();
                      sub_2173D77EC(v132, v1);
                      OUTLINED_FUNCTION_108_8();
                    }

                    else
                    {
                      sub_2171FF30C(v142, v139);
                      sub_2173D4760(v139, &v140);
                      OUTLINED_FUNCTION_112_9();
                      v129 = OUTLINED_FUNCTION_26_21();
                      v130(v129);
                      v131 = v141[0];
                      *v1 = v140;
                      v1[1] = v131;
                      *(v1 + 25) = *(v141 + 9);
                      OUTLINED_FUNCTION_108_8();
                    }
                  }
                }
              }

              swift_storeEnumTagMultiPayload();
              v4 = v142;
              goto LABEL_16;
            }
          }

          OUTLINED_FUNCTION_104_6();
          CloudMusicVideo.init(from:)();
          v99 = OUTLINED_FUNCTION_25_24();
          v100(v99);
          OUTLINED_FUNCTION_9_26();
          v101 = OUTLINED_FUNCTION_47_2();
          sub_2173D77EC(v101, v102);
          OUTLINED_FUNCTION_162_5();
        }
      }
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
LABEL_16:
    v84 = OUTLINED_FUNCTION_162_5();
    sub_2173D77EC(v84, v85);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t *sub_2173D4760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270F8, &qword_217768F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  if (dynamic_cast_existential_1_conditional(&type metadata for CatalogSearchRawResponse.TopResult.Placeholder))
  {
    v12 = (*(v11 + 16))();
    v14 = v13;
    sub_2171FF30C(a1, v19);
    v21 = v12;
    v22 = v14;
    __swift_allocate_boxed_opaque_existential_0(v20);
    v15 = *(v14 + 16);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v20);
    }

    sub_2171FF30C(v20, a2);
    *(a2 + 40) = 1;
  }

  else
  {
    sub_2171FF30C(a1, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_2173D78F4();
    sub_2177532C8();
    if (!v2)
    {
      sub_2172E1C68();
      sub_217752EA8();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v6 + 8))(v10, v5);
      v17 = v19[0];
      v18 = v19[1];
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 40) = 0;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t *sub_2173D499C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for CloudPlaylistEntry.Placeholder))
  {
    v6 = (*(v5 + 16))();
    v8 = v7;
    sub_2171FF30C(a1, v11);
    v12[3] = v6;
    v12[4] = v8;
    __swift_allocate_boxed_opaque_existential_0(v12);
    v9 = *(v8 + 16);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_2171FF30C(v12, a2);
      a2[504] = 1;
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    sub_2171FF30C(a1, v12);
    CloudPlaylistEntry.Placeholder.init(from:)();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      result = memcpy(a2, __src, 0x1F8uLL);
      a2[504] = 0;
    }
  }

  return result;
}

void CatalogSearchRawResponse.TopResult.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v91 = v7;
  v8 = type metadata accessor for CloudStation(0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_81();
  v90 = v13;
  v14 = OUTLINED_FUNCTION_206();
  v15 = type metadata accessor for CloudSong(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v89 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudRecordLabel(v21);
  v23 = OUTLINED_FUNCTION_45_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_81();
  v88 = v27;
  v28 = OUTLINED_FUNCTION_206();
  v29 = type metadata accessor for CloudRadioShow(v28);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_1();
  v34 = OUTLINED_FUNCTION_37_10();
  v35 = type metadata accessor for CloudPlaylist(v34);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_1();
  v40 = OUTLINED_FUNCTION_31_12();
  v41 = type metadata accessor for CloudMusicVideo(v40);
  v42 = OUTLINED_FUNCTION_45_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  OUTLINED_FUNCTION_1();
  v46 = OUTLINED_FUNCTION_61_6();
  v47 = type metadata accessor for CloudGenre(v46);
  v48 = OUTLINED_FUNCTION_45_0(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48, v51);
  OUTLINED_FUNCTION_1();
  v52 = OUTLINED_FUNCTION_69();
  v53 = type metadata accessor for CloudCurator(v52);
  v54 = OUTLINED_FUNCTION_45_0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  OUTLINED_FUNCTION_1();
  v58 = OUTLINED_FUNCTION_91_8();
  v59 = type metadata accessor for CloudArtist(v58);
  v60 = OUTLINED_FUNCTION_45_0(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60, v63);
  OUTLINED_FUNCTION_1();
  v64 = OUTLINED_FUNCTION_60_0();
  v65 = type metadata accessor for CloudAlbum(v64);
  v66 = OUTLINED_FUNCTION_45_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  OUTLINED_FUNCTION_28_19();
  v70 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v71 = OUTLINED_FUNCTION_43(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71, v74);
  OUTLINED_FUNCTION_1();
  v77 = (v76 - v75);
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v77);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v77, v2);
      CloudArtist.encode(to:)(v91);
      OUTLINED_FUNCTION_12_22();
      v82 = v2;
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v77, v1);
      CloudCurator.encode(to:)(v91);
      OUTLINED_FUNCTION_16_28();
      v82 = v1;
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v77, v3);
      CloudGenre.encode(to:)(v91);
      OUTLINED_FUNCTION_17_17();
      v82 = v3;
      goto LABEL_14;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v77, v6);
      CloudMusicVideo.encode(to:)();
      OUTLINED_FUNCTION_13_26();
      v82 = v6;
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v77, v5);
      CloudPlaylist.encode(to:)();
      OUTLINED_FUNCTION_14_23();
      v82 = v5;
      goto LABEL_14;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      sub_2173D77EC(v77, v4);
      CloudRadioShow.encode(to:)(v91);
      OUTLINED_FUNCTION_21_20();
      v82 = v4;
      goto LABEL_14;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v0 = v88;
      sub_2173D77EC(v77, v88);
      v84 = OUTLINED_FUNCTION_146_5();
      CloudRecordLabel.encode(to:)(v84);
      v80 = type metadata accessor for CloudRecordLabel;
      goto LABEL_13;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v0 = v89;
      sub_2173D77EC(v77, v89);
      v87 = OUTLINED_FUNCTION_146_5();
      CloudSong.encode(to:)(v87);
      v80 = type metadata accessor for CloudSong;
      goto LABEL_13;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v0 = v90;
      sub_2173D77EC(v77, v90);
      v83 = OUTLINED_FUNCTION_146_5();
      CloudStation.encode(to:)(v83);
      v80 = type metadata accessor for CloudStation;
      goto LABEL_13;
    case 0xAu:
      v85 = v77[1];
      v92 = *v77;
      *v93 = v85;
      *&v93[9] = *(v77 + 25);
      v86 = OUTLINED_FUNCTION_146_5();
      sub_2173D5084(v86);
      sub_2171F0738(&v92, &qword_27CB25890, &unk_21775D928);
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_11_31();
      v78 = OUTLINED_FUNCTION_93();
      sub_2173D77EC(v78, v79);
      OUTLINED_FUNCTION_146_5();
      CloudAlbum.encode(to:)();
      v80 = type metadata accessor for CloudAlbum;
LABEL_13:
      v81 = v80;
      v82 = v0;
LABEL_14:
      sub_2173D7844(v82, v81);
LABEL_15:
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t sub_2173D4F98()
{
  sub_21738C4B0(v0, __src, &qword_27CB256E8, &qword_21775D830);
  if (v7)
  {
    sub_2171F3F0C(__src, __dst);
    v1 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v2 = *(v1 + 24);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    CloudPlaylistEntry.Placeholder.encode(to:)();
    memcpy(v4, __dst, sizeof(v4));
    return sub_21733BC90(v4);
  }
}

uint64_t sub_2173D5084(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270E8, &qword_217768F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  sub_21738C4B0(v2, v19, &qword_27CB25890, &unk_21775D928);
  if (v20)
  {
    sub_2171F3F0C(v19, &v16);
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    v11 = *(v10 + 24);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v13 = v19[0];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2173D78F4();
    sub_217751DE8();
    sub_2177532F8();
    v16 = v13;
    sub_2172E1B18();
    sub_217752F88();
    (*(v5 + 8))(v9, v4);
    return swift_bridgeObjectRelease_n();
  }
}

void MusicCatalogSearchResponse.TopResult.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v404 = v1;
  v405 = v2;
  v4 = v3;
  v406 = v5;
  v408 = v7;
  v409 = v6;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v8 = OUTLINED_FUNCTION_43(v389);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_31();
  v391 = v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_80();
  v392 = v15;
  v16 = OUTLINED_FUNCTION_206();
  v17 = type metadata accessor for CloudStation(v16);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_81();
  v400 = v22;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v23 = OUTLINED_FUNCTION_43(v386);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_31();
  v388 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_80();
  v390 = v30;
  v31 = OUTLINED_FUNCTION_206();
  v32 = type metadata accessor for CloudSong(v31);
  v33 = OUTLINED_FUNCTION_45_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_81();
  v399 = v37;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v38 = OUTLINED_FUNCTION_43(v383);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_31();
  v385 = v42;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_80();
  v387 = v45;
  v46 = OUTLINED_FUNCTION_206();
  v47 = type metadata accessor for CloudRecordLabel(v46);
  v48 = OUTLINED_FUNCTION_45_0(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48, v51);
  OUTLINED_FUNCTION_81();
  v398 = v52;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v53 = OUTLINED_FUNCTION_43(v380);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53, v56);
  OUTLINED_FUNCTION_31();
  v382 = v57;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v58, v59);
  OUTLINED_FUNCTION_80();
  v384 = v60;
  v61 = OUTLINED_FUNCTION_206();
  v62 = type metadata accessor for CloudRadioShow(v61);
  v63 = OUTLINED_FUNCTION_45_0(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63, v66);
  OUTLINED_FUNCTION_81();
  v397 = v67;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v68 = OUTLINED_FUNCTION_43(v377);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68, v71);
  OUTLINED_FUNCTION_31();
  v379 = v72;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v73, v74);
  OUTLINED_FUNCTION_80();
  v76 = OUTLINED_FUNCTION_55_9(v75);
  v77 = type metadata accessor for CloudPlaylist(v76);
  v78 = OUTLINED_FUNCTION_45_0(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78, v81);
  OUTLINED_FUNCTION_81();
  v396 = v82;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v83 = OUTLINED_FUNCTION_43(v375);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83, v86);
  OUTLINED_FUNCTION_31();
  v376 = v87;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v88, v89);
  OUTLINED_FUNCTION_80();
  v378 = v90;
  v91 = OUTLINED_FUNCTION_206();
  v92 = type metadata accessor for CloudMusicVideo(v91);
  v93 = OUTLINED_FUNCTION_45_0(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93, v96);
  OUTLINED_FUNCTION_81();
  v395 = v97;
  v98 = OUTLINED_FUNCTION_206();
  v369 = type metadata accessor for CloudGenre(v98);
  v99 = OUTLINED_FUNCTION_43(v369);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99, v102);
  OUTLINED_FUNCTION_81();
  v368 = v103;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v104 = OUTLINED_FUNCTION_43(v372);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104, v107);
  OUTLINED_FUNCTION_31();
  v373 = v108;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v109, v110);
  OUTLINED_FUNCTION_80();
  v374 = v111;
  v112 = OUTLINED_FUNCTION_206();
  v113 = type metadata accessor for CloudCurator(v112);
  v114 = OUTLINED_FUNCTION_45_0(v113);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114, v117);
  OUTLINED_FUNCTION_81();
  v394 = v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v120 = OUTLINED_FUNCTION_43(v119);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120, v123);
  OUTLINED_FUNCTION_31();
  v371 = v124;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v125, v126);
  v128 = &v368 - v127;
  v129 = type metadata accessor for CloudArtist(0);
  v130 = OUTLINED_FUNCTION_45_0(v129);
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v130, v133);
  OUTLINED_FUNCTION_81();
  v393 = v134;
  v407 = v4;
  v402 = *(v4 - 8);
  v135 = *(v402 + 64);
  MEMORY[0x28223BE20](v136, v137);
  OUTLINED_FUNCTION_81();
  v401 = v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v140 = OUTLINED_FUNCTION_43(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140, v143);
  OUTLINED_FUNCTION_31();
  v370 = v144;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v145, v146);
  v148 = &v368 - v147;
  v149 = type metadata accessor for CloudAlbum(0);
  v150 = OUTLINED_FUNCTION_45_0(v149);
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v150, v153);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v154 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v155 = OUTLINED_FUNCTION_43(v154);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155, v158);
  v160 = (&v368 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v161, v162);
  v164 = &v368 - v163;
  sub_2173D789C(v409, &v368 - v163);
  v403 = v164;
  sub_2173D789C(v164, v160);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v238 = v393;
      sub_2173D77EC(v160, v393);
      sub_2173D789C(v238, v128);
      v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v240 = v239[10];
      v241 = v409;
      v242 = v409 + v239[9];
      v243 = *v242;
      v398 = *(v242 + 8);
      v244 = v398;
      LODWORD(v392) = *(v242 + 16);
      v245 = *(v409 + v240 + 8);
      v396 = *(v409 + v240);
      v394 = v243;
      v395 = v245;
      v246 = v239[11];
      memcpy(v412, (v409 + v246), sizeof(v412));
      v247 = v239[13];
      v397 = *(v409 + v239[12]);
      v248 = v397;
      v249 = *(v409 + v247);
      v250 = *(v409 + v239[14]);
      v251 = *(v409 + v239[15]);
      v399 = v250;
      v400 = v251;
      v252 = &v128[v119[9]];
      *v252 = v394;
      *(v252 + 1) = v244;
      v252[16] = v392;
      v253 = &v128[v119[10]];
      v254 = v395;
      *v253 = v396;
      *(v253 + 1) = v254;
      memcpy(&v128[v119[11]], (v241 + v246), 0x180uLL);
      *&v128[v119[12]] = v248;
      *&v128[v119[13]] = v249;
      *&v128[v119[14]] = v250;
      *&v128[v119[15]] = v251;
      sub_21738C4B0(v128, v371, &qword_27CB24728, &qword_217758CB0);
      v255 = v402;
      v256 = v406;
      v257 = v407;
      (*(v402 + 16))(v401, v406, v407);
      sub_217751DE8();
      sub_217751DE8();
      v258 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v258, v259, v260, v261);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Artist.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v255 + 8))(v256, v257);
      sub_2171F0738(v241, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v128, &qword_27CB24728, &qword_217758CB0);
      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v393, v262);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v263);
      OUTLINED_FUNCTION_20_25();
      v220 = 1;
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v160, v394);
      v191 = OUTLINED_FUNCTION_57_11();
      v192 = v374;
      sub_2173D789C(v191, v374);
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v194 = v193[10];
      v195 = v409;
      v196 = v409 + v193[9];
      v197 = *(v196 + 8);
      v393 = *v196;
      v398 = v197;
      LODWORD(v392) = *(v196 + 16);
      v198 = v409 + v194;
      v199 = *(v409 + v194);
      v395 = *(v198 + 8);
      v396 = v199;
      v200 = v193[11];
      memcpy(v412, (v409 + v200), sizeof(v412));
      v201 = v193[13];
      v397 = *(v409 + v193[12]);
      v202 = v397;
      v203 = *(v409 + v201);
      v205 = *(v409 + v193[15]);
      v399 = *(v409 + v193[14]);
      v204 = v399;
      v400 = v205;
      v206 = v372;
      v207 = v192 + v372[9];
      *v207 = v393;
      *(v207 + 8) = v197;
      *(v207 + 16) = v392;
      v208 = (v192 + v206[10]);
      v209 = v395;
      *v208 = v396;
      v208[1] = v209;
      memcpy((v192 + v206[11]), (v195 + v200), 0x180uLL);
      *(v192 + v206[12]) = v202;
      *(v192 + v206[13]) = v203;
      *(v192 + v206[14]) = v204;
      *(v192 + v206[15]) = v205;
      sub_21738C4B0(v192, v373, &qword_27CB24490, &qword_21775A250);
      v210 = v402;
      v212 = v406;
      v211 = v407;
      (*(v402 + 16))(v401, v406, v407);
      sub_217751DE8();
      sub_217751DE8();
      v213 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v213, v214, v215, v216);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Curator.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v210 + 8))(v212, v211);
      sub_2171F0738(v195, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v192, &qword_27CB24490, &qword_21775A250);
      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v394, v217);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v218);
      OUTLINED_FUNCTION_20_25();
      v220 = 2;
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v160, v368);
      *&v412[0] = 0;
      *(&v412[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      OUTLINED_FUNCTION_172_5();
      MEMORY[0x21CEA23B0](0xD000000000000012);
      sub_217752C78();
      v365 = OUTLINED_FUNCTION_171_5();
      MEMORY[0x21CEA23B0](v365);
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v160, v395);
      v343 = OUTLINED_FUNCTION_57_11();
      v344 = v378;
      sub_2173D789C(v343, v378);
      v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v346 = OUTLINED_FUNCTION_42_13(v345);
      v398 = v160;
      LODWORD(v392) = *(v347 + 16);
      v349 = v154 + v348;
      v350 = *(v154 + v348);
      v351 = *(v349 + 8);
      v393 = v352;
      v394 = v350;
      v396 = v351;
      v391 = *(v346 + 44);
      OUTLINED_FUNCTION_80_8(v391);
      v353 = *(v164 + 13);
      v397 = *(v154 + *(v164 + 12));
      OUTLINED_FUNCTION_52_14();
      v399 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v400 = v119;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v344, v354, &qword_27CB24808);
      v355 = OUTLINED_FUNCTION_29_19();
      v356(v355);
      sub_217751DE8();
      sub_217751DE8();
      v357 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v357, v358, v359, v360);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
      v361 = OUTLINED_FUNCTION_64_13();
      v362(v361);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v344, &qword_27CB24808, &qword_217758D90);
      OUTLINED_FUNCTION_13_26();
      sub_2173D7844(v395, v363);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v364);
      OUTLINED_FUNCTION_20_25();
      v220 = 3;
      goto LABEL_11;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v160, v396);
      v326 = OUTLINED_FUNCTION_57_11();
      v327 = v381;
      sub_2173D789C(v326, v381);
      v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v329 = OUTLINED_FUNCTION_42_13(v328);
      v398 = v160;
      OUTLINED_FUNCTION_45_14(v329, v330);
      v331 = *(v164 + 13);
      v397 = *(v154 + *(v164 + 12));
      OUTLINED_FUNCTION_52_14();
      v399 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v400 = v119;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v327, v332, &qword_27CB24790);
      v333 = OUTLINED_FUNCTION_29_19();
      v334(v333);
      sub_217751DE8();
      sub_217751DE8();
      v335 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v335, v336, v337, v338);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Playlist.init<A>(_:configuration:sharedRelatedItemStore:)();
      v339 = OUTLINED_FUNCTION_64_13();
      v340(v339);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v327, &qword_27CB24790, &unk_21775A220);
      OUTLINED_FUNCTION_14_23();
      sub_2173D7844(v396, v341);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v342);
      OUTLINED_FUNCTION_20_25();
      v220 = 4;
      goto LABEL_11;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      sub_2173D77EC(v160, v397);
      v264 = OUTLINED_FUNCTION_57_11();
      v265 = v384;
      sub_2173D789C(v264, v384);
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v267 = OUTLINED_FUNCTION_42_13(v266);
      v398 = v160;
      OUTLINED_FUNCTION_45_14(v267, v268);
      OUTLINED_FUNCTION_49_13();
      v270 = *(v154 + v269);
      v399 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v400 = v270;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v265, v271, &qword_27CB247C0);
      v272 = OUTLINED_FUNCTION_29_19();
      v273(v272);
      sub_217751DE8();
      sub_217751DE8();
      v274 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v274, v275, v276, v277);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      RadioShow.init<A>(_:configuration:sharedRelatedItemStore:)();
      v278 = OUTLINED_FUNCTION_64_13();
      v279(v278);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v265, &qword_27CB247C0, &unk_21779AA10);
      OUTLINED_FUNCTION_21_20();
      sub_2173D7844(v397, v280);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v281);
      OUTLINED_FUNCTION_20_25();
      v220 = 5;
      goto LABEL_11;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      sub_2173D77EC(v160, v398);
      v282 = OUTLINED_FUNCTION_57_11();
      v283 = v387;
      sub_2173D789C(v282, v387);
      v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v285 = OUTLINED_FUNCTION_42_13(v284);
      v397 = v160;
      OUTLINED_FUNCTION_45_14(v285, v286);
      OUTLINED_FUNCTION_49_13();
      v288 = *(v154 + v287);
      v399 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v400 = v288;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v283, v289, &qword_27CB24778);
      v290 = OUTLINED_FUNCTION_29_19();
      v291(v290);
      sub_217751DE8();
      sub_217751DE8();
      v292 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v292, v293, v294, v295);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      RecordLabel.init<A>(_:configuration:sharedRelatedItemStore:)();
      v296 = OUTLINED_FUNCTION_64_13();
      v297(v296);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v283, &qword_27CB24778, &unk_217758D00);
      OUTLINED_FUNCTION_36_15();
      sub_2173D7844(v398, v298);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v299);
      OUTLINED_FUNCTION_20_25();
      v220 = 6;
      goto LABEL_11;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      sub_2173D77EC(v160, v399);
      v221 = OUTLINED_FUNCTION_57_11();
      v222 = v390;
      sub_2173D789C(v221, v390);
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v224 = OUTLINED_FUNCTION_42_13(v223);
      v397 = v160;
      OUTLINED_FUNCTION_45_14(v224, v225);
      OUTLINED_FUNCTION_49_13();
      v398 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v400 = *(v154 + v226);
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v222, v227, &qword_27CB24748);
      v228 = OUTLINED_FUNCTION_29_19();
      v229(v228);
      sub_217751DE8();
      sub_217751DE8();
      v230 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v230, v231, v232, v233);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Song.init<A>(_:configuration:sharedRelatedItemStore:)();
      v234 = OUTLINED_FUNCTION_64_13();
      v235(v234);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v222, &qword_27CB24748, &unk_217758CD0);
      OUTLINED_FUNCTION_48_12();
      sub_2173D7844(v399, v236);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v237);
      OUTLINED_FUNCTION_20_25();
      v220 = 7;
      goto LABEL_11;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      sub_2173D77EC(v160, v400);
      v300 = OUTLINED_FUNCTION_57_11();
      v301 = v392;
      sub_2173D789C(v300, v392);
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v303 = OUTLINED_FUNCTION_42_13(v302);
      v397 = v160;
      LODWORD(v390) = *(v304 + 16);
      v306 = v154 + v305;
      v307 = *(v154 + v305);
      v308 = *(v306 + 8);
      v393 = v309;
      v394 = v307;
      v395 = v308;
      v388 = *(v303 + 44);
      OUTLINED_FUNCTION_80_8(v388);
      OUTLINED_FUNCTION_49_13();
      v311 = *(v154 + v310);
      v398 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v399 = v311;
      v312 = v389;
      v313 = v301 + *(v389 + 36);
      *v313 = v393;
      *(v313 + 8) = v160;
      *(v313 + 16) = v390;
      v314 = (v301 + *(v312 + 40));
      *v314 = v394;
      v314[1] = v308;
      memcpy((v301 + *(v312 + 44)), (v154 + v388), 0x180uLL);
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v301, v315, &qword_27CB24738);
      v316 = OUTLINED_FUNCTION_29_19();
      v317(v316);
      sub_217751DE8();
      sub_217751DE8();
      v318 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v318, v319, v320, v321);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Station.init<A>(_:configuration:sharedRelatedItemStore:)();
      v322 = OUTLINED_FUNCTION_64_13();
      v323(v322);
      sub_2171F0738(v154, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v301, &qword_27CB24738, &qword_217758CC0);
      OUTLINED_FUNCTION_37_14();
      sub_2173D7844(v400, v324);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v325);
      OUTLINED_FUNCTION_20_25();
      v220 = 8;
LABEL_11:
      *(v219 + 56) = v220;
      goto LABEL_12;
    case 0xAu:
      v366 = *(v160 + 1);
      v412[0] = *v160;
      v412[1] = v366;
      *(&v412[1] + 9) = *(v160 + 25);
      v410 = 0;
      v411 = 0xE000000000000000;
      sub_217752AA8();
      OUTLINED_FUNCTION_172_5();
      MEMORY[0x21CEA23B0](0xD000000000000012);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25890, &unk_21775D928);
      OUTLINED_FUNCTION_83_8();
      sub_217752C78();
      v367 = OUTLINED_FUNCTION_171_5();
      MEMORY[0x21CEA23B0](v367);
LABEL_15:
      sub_217752D08();
      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v160, v0);
      sub_2173D789C(v0, v148);
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v166 = v165[10];
      v167 = v409;
      v168 = v409 + v165[9];
      v169 = *v168;
      v170 = *(v168 + 8);
      LODWORD(v393) = *(v168 + 16);
      v171 = v409 + v166;
      v172 = *(v409 + v166);
      v173 = *(v171 + 8);
      v394 = v169;
      v395 = v172;
      v396 = v173;
      v397 = v170;
      v392 = v165[11];
      OUTLINED_FUNCTION_80_8(v392);
      v174 = *(v167 + v165[12]);
      v398 = *(v167 + v165[13]);
      v175 = v398;
      v176 = v165[15];
      v177 = *(v167 + v165[14]);
      v399 = v177;
      v400 = v174;
      v178 = *(v167 + v176);
      v179 = &v148[v139[9]];
      *v179 = v394;
      *(v179 + 1) = v170;
      v179[16] = v393;
      v180 = &v148[v139[10]];
      *v180 = v395;
      *(v180 + 1) = v173;
      memcpy(&v148[v139[11]], (v167 + v392), 0x180uLL);
      *&v148[v139[12]] = v400;
      *&v148[v139[13]] = v175;
      *&v148[v139[14]] = v177;
      *&v148[v139[15]] = v178;
      sub_21738C4B0(v148, v370, &qword_27CB247F0, &qword_21775D360);
      v181 = v402;
      v183 = v406;
      v182 = v407;
      (*(v402 + 16))(v401, v406, v407);
      sub_217751DE8();
      sub_217751DE8();
      v184 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v184, v185, v186, v187);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Album.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v181 + 8))(v183, v182);
      sub_2171F0738(v167, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v148, &qword_27CB247F0, &qword_21775D360);
      OUTLINED_FUNCTION_10_24();
      sub_2173D7844(v0, v188);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v403, v189);
      OUTLINED_FUNCTION_20_25();
      *(v190 + 56) = 0;
LABEL_12:
      OUTLINED_FUNCTION_13();
      return;
  }
}

void MusicCatalogSearchResponse.TopResult.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v22;
  a20 = v23;
  v193 = v24;
  v194 = v25;
  v192 = v26;
  v195 = v27;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43(v190);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_150();
  v191 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_27_22(v33, &a17);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_150();
  v189 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_27_22(v39, &a15);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_150();
  v188 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_27_22(v45, &a13);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v48, v49);
  OUTLINED_FUNCTION_150();
  v187 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_27_22(v51, &a12);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v185 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_167();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_43(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v66, v67);
  v69 = &v185 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_43(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v185 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v185 - v82;
  sub_217283E1C(v20, v197);
  switch(v197[56])
  {
    case 1:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Artist.convertToCloudResource<A>(configuration:)();
      sub_217284498(v196);
      OUTLINED_FUNCTION_4_49();
      v152 = v195;
      sub_2173D77EC(v76, v195);
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v153 = v70[10];
      v154 = &v76[v70[9]];
      v155 = *v154;
      v156 = *(v154 + 1);
      v157 = v154[16];
      v158 = *&v76[v70[12]];
      v193 = v70[11];
      v194 = v158;
      v159 = v70[14];
      v192 = *&v76[v70[13]];
      v161 = *&v76[v153];
      v160 = *&v76[v153 + 8];
      v162 = *&v76[v159];
      v163 = *&v76[v70[15]];
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v165 = OUTLINED_FUNCTION_111_9(v164);
      *v166 = v161;
      v166[1] = v160;
      v167 = OUTLINED_FUNCTION_134_6(v165);
      memcpy(v167, &v76[v168], 0x180uLL);
      OUTLINED_FUNCTION_110_6();
      *(v152 + v169) = v162;
      *(v152 + *(v57 + 15)) = v163;
      break;
    case 2:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Curator.convertToCloudResource<A>(configuration:)();
      sub_2172842E4(v196);
      OUTLINED_FUNCTION_7_31();
      v117 = v195;
      sub_2173D77EC(v69, v195);
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v118 = v63[10];
      v119 = &v69[v63[9]];
      v120 = *v119;
      v121 = *(v119 + 1);
      v122 = v119[16];
      v123 = *&v69[v63[12]];
      v193 = v63[11];
      v194 = v123;
      v124 = v63[14];
      v192 = *&v69[v63[13]];
      v126 = *&v69[v118];
      v125 = *&v69[v118 + 8];
      v127 = *&v69[v124];
      v128 = *&v69[v63[15]];
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v130 = v117 + v129[9];
      *v130 = v120;
      *(v130 + 8) = v121;
      *(v130 + 16) = v122;
      v131 = (v117 + v129[10]);
      *v131 = v126;
      v131[1] = v125;
      memcpy((v117 + v129[11]), &v69[v193], 0x180uLL);
      OUTLINED_FUNCTION_89_8();
      *(v117 + v132) = v128;
      break;
    case 3:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      MusicVideo.convertToCloudResource<A>(configuration:)();
      sub_217283C08(v196);
      OUTLINED_FUNCTION_9_26();
      v133 = v195;
      sub_2173D77EC(v21, v195);
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v134 = v58[10];
      v135 = v21 + v58[9];
      v136 = *v135;
      v137 = *(v135 + 8);
      v138 = *(v135 + 16);
      v139 = *(v21 + v58[12]);
      v193 = v58[11];
      v194 = v139;
      v140 = v58[14];
      v192 = *(v21 + v58[13]);
      v142 = *(v21 + v134);
      v141 = *(v21 + v134 + 8);
      v143 = *(v21 + v140);
      v144 = *(v21 + v58[15]);
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v146 = OUTLINED_FUNCTION_111_9(v145);
      *v147 = v142;
      v147[1] = v141;
      v148 = OUTLINED_FUNCTION_134_6(v146);
      memcpy(v148, (v21 + v149), 0x180uLL);
      OUTLINED_FUNCTION_110_6();
      *(v133 + v150) = v143;
      *(v133 + *(v57 + 15)) = v144;
      break;
    case 4:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Playlist.convertToCloudResource<A>(configuration:)();
      sub_21726B8C4(v196);
      OUTLINED_FUNCTION_3_46();
      v100 = v195;
      sub_2173D77EC(v57, v195);
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v101 = v186[10];
      v102 = &v57[v186[9]];
      v103 = *v102;
      v104 = *(v102 + 1);
      v105 = v102[16];
      v106 = *&v57[v186[12]];
      v193 = v186[11];
      v194 = v106;
      v107 = v186[14];
      v192 = *&v57[v186[13]];
      v108 = *&v57[v101];
      v109 = *&v57[v101 + 8];
      v110 = *&v57[v107];
      v111 = *&v57[v186[15]];
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v113 = v100 + v112[9];
      *v113 = v103;
      *(v113 + 8) = v104;
      *(v113 + 16) = v105;
      v114 = (v100 + v112[10]);
      *v114 = v108;
      v114[1] = v109;
      v115 = OUTLINED_FUNCTION_134_6(v112);
      memcpy(v115, &v57[v116], 0x180uLL);
      *(v100 + v112[12]) = v194;
      *(v100 + v112[13]) = v192;
      *(v100 + v112[14]) = v110;
      *(v100 + v112[15]) = v111;
      break;
    case 5:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9(&a14);
      RadioShow.convertToCloudResource<A>(configuration:)();
      sub_217284394(v196);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v151 = &a13;
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9(&a16);
      RecordLabel.convertToCloudResource<A>(configuration:)();
      sub_217283CC4(v196);
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v151 = &a15;
      goto LABEL_10;
    case 7:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9(&a18);
      Song.convertToCloudResource<A>(configuration:)();
      sub_217283B58(v196);
      OUTLINED_FUNCTION_1_46();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v151 = &a17;
LABEL_10:
      v170 = *(v151 - 32);
      goto LABEL_12;
    case 8:
      OUTLINED_FUNCTION_8_2();
      v77 = v191;
      Station.convertToCloudResource<A>(configuration:)();
      sub_217283DC8(v196);
      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v170 = v190;
LABEL_12:
      v171 = v170[10];
      v172 = v77 + v170[9];
      v173 = *v172;
      v174 = *(v172 + 1);
      v175 = v172[16];
      v176 = *(v77 + v170[12]);
      v193 = v170[11];
      v194 = v176;
      v177 = v170[14];
      v192 = *(v77 + v170[13]);
      v178 = *(v77 + v171);
      v179 = *(v77 + v171 + 8);
      v180 = *(v77 + v177);
      v181 = *(v77 + v170[15]);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v183 = v70 + v182[9];
      *v183 = v173;
      *(v183 + 1) = v174;
      v183[16] = v175;
      v184 = (v70 + v182[10]);
      *v184 = v178;
      v184[1] = v179;
      memcpy(v70 + v182[11], v77 + v193, 0x180uLL);
      *(v70 + v182[12]) = v194;
      *(v70 + v182[13]) = v192;
      *(v70 + v182[14]) = v180;
      *(v70 + v182[15]) = v181;
      break;
    default:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Album.convertToCloudResource<A>(configuration:)();
      sub_21725CE44(v196);
      OUTLINED_FUNCTION_11_31();
      v84 = v195;
      sub_2173D77EC(v83, v195);
      type metadata accessor for CatalogSearchRawResponse.TopResult();
      swift_storeEnumTagMultiPayload();
      v85 = v77[10];
      v86 = &v83[v77[9]];
      v87 = *v86;
      v88 = *(v86 + 1);
      v89 = v86[16];
      v90 = *&v83[v77[12]];
      v193 = v77[11];
      v194 = v90;
      v91 = v77[14];
      v192 = *&v83[v77[13]];
      v93 = *&v83[v85];
      v92 = *&v83[v85 + 8];
      v94 = *&v83[v91];
      v95 = *&v83[v77[15]];
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v97 = v84 + v96[9];
      *v97 = v87;
      *(v97 + 8) = v88;
      *(v97 + 16) = v89;
      v98 = (v84 + v96[10]);
      *v98 = v93;
      v98[1] = v92;
      memcpy((v84 + v96[11]), &v83[v193], 0x180uLL);
      OUTLINED_FUNCTION_89_8();
      *(v84 + v99) = v95;
      break;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t CatalogSearchRawResponse.TopResult.Placeholder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static CatalogSearchRawResponse.TopResult.Placeholder.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_140_0();
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t sub_2173D72DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173D734C()
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

uint64_t sub_2173D7398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173D72DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173D73C4(uint64_t a1)
{
  v2 = sub_2173D78F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173D7400(uint64_t a1)
{
  v2 = sub_2173D78F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CatalogSearchRawResponse.TopResult.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270E8, &qword_217768F00);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_167();
  v10 = *v0;
  v11 = v0[1];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2173D78F4();
  sub_217751DE8();
  sub_2177532F8();
  sub_2172E1B18();
  sub_217752F88();

  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_162_5();
  v15(v14);
  OUTLINED_FUNCTION_170();
}

uint64_t CatalogSearchRawResponse.TopResult.Placeholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217751FF8();
}

uint64_t CatalogSearchRawResponse.TopResult.Placeholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_58_3();
  sub_217751FF8();
  return sub_217753238();
}

void CatalogSearchRawResponse.TopResult.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270F8, &qword_217768F08);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v16 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2173D78F4();
  sub_2177532C8();
  if (!v0)
  {
    sub_2172E1C68();
    sub_217752EA8();
    (*(v7 + 8))(v13, v5);
    v15 = v16[1];
    *v4 = v16[0];
    v4[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D774C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

unint64_t sub_2173D7798()
{
  result = qword_27CB270E0;
  if (!qword_27CB270E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270E0);
  }

  return result;
}

uint64_t sub_2173D77EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

uint64_t sub_2173D7844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2173D789C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_2173D78F4()
{
  result = qword_27CB270F0;
  if (!qword_27CB270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270F0);
  }

  return result;
}

unint64_t sub_2173D794C()
{
  result = qword_27CB27100;
  if (!qword_27CB27100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27100);
  }

  return result;
}

unint64_t sub_2173D79A4()
{
  result = qword_27CB27108;
  if (!qword_27CB27108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27108);
  }

  return result;
}

unint64_t sub_2173D79FC()
{
  result = qword_27CB27110;
  if (!qword_27CB27110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27110);
  }

  return result;
}

unint64_t sub_2173D7A54()
{
  result = qword_27CB27118;
  if (!qword_27CB27118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27118);
  }

  return result;
}

unint64_t sub_2173D7AAC()
{
  result = qword_27CB27120;
  if (!qword_27CB27120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27120);
  }

  return result;
}

unint64_t sub_2173D7B04()
{
  result = qword_27CB27128;
  if (!qword_27CB27128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27128);
  }

  return result;
}

unint64_t sub_2173D7B5C()
{
  result = qword_27CB27130;
  if (!qword_27CB27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27130);
  }

  return result;
}

unint64_t sub_2173D7BB4()
{
  result = qword_27CB27138;
  if (!qword_27CB27138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27138);
  }

  return result;
}

unint64_t sub_2173D7C0C()
{
  result = qword_27CB27140;
  if (!qword_27CB27140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27140);
  }

  return result;
}

unint64_t sub_2173D7C64()
{
  result = qword_27CB27148;
  if (!qword_27CB27148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27148);
  }

  return result;
}

unint64_t sub_2173D7CBC()
{
  result = qword_27CB27150;
  if (!qword_27CB27150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27150);
  }

  return result;
}

unint64_t sub_2173D7D14()
{
  result = qword_27CB27158;
  if (!qword_27CB27158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27158);
  }

  return result;
}

uint64_t sub_2173D7DD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogSearchRawResponse.TopResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2173D7E14(void *a1)
{
  a1[1] = sub_2173D7E4C();
  a1[2] = sub_2173D7EA0();
  result = sub_2173D7EF4();
  a1[3] = result;
  return result;
}

unint64_t sub_2173D7E4C()
{
  result = qword_27CB27170;
  if (!qword_27CB27170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27170);
  }

  return result;
}

unint64_t sub_2173D7EA0()
{
  result = qword_27CB27178;
  if (!qword_27CB27178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27178);
  }

  return result;
}

unint64_t sub_2173D7EF4()
{
  result = qword_27CB27180;
  if (!qword_27CB27180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27180);
  }

  return result;
}

unint64_t sub_2173D7F4C()
{
  result = qword_27CB27188;
  if (!qword_27CB27188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27188);
  }

  return result;
}

void sub_2173D7FA0()
{
  type metadata accessor for CloudAlbum(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CloudArtist(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CloudCurator(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CloudGenre(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CloudMusicVideo(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CloudPlaylist(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CloudRadioShow(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CloudRecordLabel(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for CloudSong(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for CloudStation(319);
                    if (v9 <= 0x3F)
                    {
                      sub_2173D80C8();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_2173D80C8()
{
  if (!qword_27CB271A0)
  {
    sub_2173D8124();
    v0 = type metadata accessor for CloudInternalPolymorphicMusicItem();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB271A0);
    }
  }
}

unint64_t sub_2173D8124()
{
  result = qword_27CB271A8;
  if (!qword_27CB271A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271A8);
  }

  return result;
}

_BYTE *sub_2173D81D8(_BYTE *result, int a2, int a3)
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

unint64_t sub_2173D82C8()
{
  result = qword_27CB271B0;
  if (!qword_27CB271B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271B0);
  }

  return result;
}

unint64_t sub_2173D8320()
{
  result = qword_27CB271B8;
  if (!qword_27CB271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271B8);
  }

  return result;
}

unint64_t sub_2173D8378()
{
  result = qword_27CB271C0;
  if (!qword_27CB271C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271C0);
  }

  return result;
}

unint64_t sub_2173D83D0()
{
  result = qword_27CB271C8;
  if (!qword_27CB271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271C8);
  }

  return result;
}

unint64_t sub_2173D8428()
{
  result = qword_27CB271D0;
  if (!qword_27CB271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271D0);
  }

  return result;
}

unint64_t sub_2173D8480()
{
  result = qword_27CB271D8;
  if (!qword_27CB271D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271D8);
  }

  return result;
}

unint64_t sub_2173D84D8()
{
  result = qword_27CB271E0;
  if (!qword_27CB271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271E0);
  }

  return result;
}

unint64_t sub_2173D8530()
{
  result = qword_27CB271E8;
  if (!qword_27CB271E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271E8);
  }

  return result;
}

unint64_t sub_2173D8588()
{
  result = qword_27CB271F0;
  if (!qword_27CB271F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271F0);
  }

  return result;
}

unint64_t sub_2173D85E0()
{
  result = qword_27CB271F8;
  if (!qword_27CB271F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271F8);
  }

  return result;
}

unint64_t sub_2173D8638()
{
  result = qword_27CB27200;
  if (!qword_27CB27200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27200);
  }

  return result;
}

unint64_t sub_2173D8690()
{
  result = qword_27CB27208;
  if (!qword_27CB27208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27208);
  }

  return result;
}

unint64_t sub_2173D86E8()
{
  result = qword_27CB27210;
  if (!qword_27CB27210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27210);
  }

  return result;
}

unint64_t sub_2173D8740()
{
  result = qword_27CB27218;
  if (!qword_27CB27218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27218);
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
    JUMPOUT(0x21CEA4360);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_20_25()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  *v2 = *(v0 + 336);
  *(v2 + 16) = v1;
  result = *(v0 + 368);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_21()
{
  result = *(v0 - 288);
  v2 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_19()
{
  v1 = *(v0[34] + 16);
  result = v0[33];
  v4 = v0[38];
  v3 = v0[39];
  return result;
}

uint64_t OUTLINED_FUNCTION_42_13(uint64_t result)
{
  v2 = *(result + 40);
  v3 = (*(v1 + 328) + *(result + 36));
  v4 = *v3;
  v5 = v3[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_7()
{
  result = v1;
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  return result;
}

void *OUTLINED_FUNCTION_45_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 192) = *(a2 + 16);
  v7 = v5 + v2;
  v8 = *(v5 + v2);
  v9 = *(v7 + 8);
  *(v4 + 200) = v3;
  *(v4 + 208) = v8;
  *(v4 + 216) = v9;
  v10 = *(a1 + 44);
  *(v4 + 184) = v10;

  return memcpy((v4 + 720), (v5 + v10), 0x180uLL);
}

void OUTLINED_FUNCTION_49_13()
{
  v3 = v1[13];
  *(v0 + 224) = *(v2 + v1[12]);
  v4 = *(v2 + v3);
  v5 = v1[15];
  v6 = *(v2 + v1[14]);
}

void OUTLINED_FUNCTION_50_10()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 240);
  v3 = *(v0 - 72);
}

void OUTLINED_FUNCTION_52_14()
{
  v3 = *(v2 + v0);
  v4 = *(v2 + *(v1 + 56));
  v5 = *(v2 + *(v1 + 60));
}

void *OUTLINED_FUNCTION_53_12()
{
  result = v0 + 210;
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_54_11()
{
  result = v0 - 144;
  v2 = *(v0 - 72);
  return result;
}

void OUTLINED_FUNCTION_67_10()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[17];
}

uint64_t OUTLINED_FUNCTION_70_8()
{
  result = v1;
  v3 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_9()
{
  v2 = *(v0 - 152);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_81_9@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + a1) & 1) == 0;

  return sub_217753208();
}

uint64_t OUTLINED_FUNCTION_85_8()
{
  result = v1;
  v3 = *(v0 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_86_6()
{
  result = v1;
  v3 = *(v0 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_9()
{
  result = v0 + 152;
  v2 = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_93_9@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  result = *(v1 - 240);
  v4 = *(v1 - 232);
  v5 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_96_8()
{
  result = *(v0 - 240);
  v2 = *(v0 - 232);
  v3 = *(v0 - 224);
  return result;
}

BOOL OUTLINED_FUNCTION_103_8(uint64_t a1)
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;

  return static Array<A>.~= infix(_:_:)(a1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_104_6()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_108_8()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

void OUTLINED_FUNCTION_110_6()
{
  *(v1 + v0[12]) = *(v2 - 224);
  *(v1 + v0[13]) = *(v2 - 240);
  v3 = v0[14];
}

uint64_t OUTLINED_FUNCTION_111_9(uint64_t result)
{
  v5 = v4 + *(result + 36);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  v6 = v4 + *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_113_8()
{
  v2 = v1[1];
  *(v0 + 144) = *v1;
  *(v0 + 160) = v2;
  *(v0 + 169) = *(v1 + 25);
  result = *(v0 + 120);
  v4 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_5()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 144);
}

uint64_t OUTLINED_FUNCTION_116_10(uint64_t a1)
{

  return sub_2174D37FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_117_10()
{
  v2 = *(v0 + 112);

  return sub_217751DE8();
}

BOOL OUTLINED_FUNCTION_121_8(uint64_t a1)
{
  *(v4 - 136) = v1;
  *(v4 - 128) = v2;
  *(v4 - 120) = v3;

  return static Array<A>.~= infix(_:_:)(a1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_122_4()
{
  v4 = *(v2 + v1);
  v5 = *(v0 + 128);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_123_8()
{
  v3 = *(v1 - 216);

  return sub_2173D77EC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_127_6()
{
  v3 = *(v0 + 136);

  return Dictionary<>.init(from:skippingValuesFor:)((v0 + 144), v1);
}

uint64_t OUTLINED_FUNCTION_128_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21738C4B0(v4 + a3, v3 + 144, a1, a2);
}

uint64_t OUTLINED_FUNCTION_129_6()
{
  v2 = *(v0 - 152);

  return sub_2171FF30C(v2, v0 - 144);
}

void OUTLINED_FUNCTION_130_7(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = v4;
  *(v5 - 72) = v3;
  *(v2 + 120) = a2;
}

uint64_t OUTLINED_FUNCTION_134_6(uint64_t a1)
{
  result = v1 + *(a1 + 44);
  v4 = *(v2 - 232);
  return result;
}

void OUTLINED_FUNCTION_137_5()
{
  v2 = *(v0 + 120);

  JUMPOUT(0x21CEA3550);
}