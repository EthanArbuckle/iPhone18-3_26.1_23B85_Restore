uint64_t sub_21765D12C()
{
  OUTLINED_FUNCTION_25_1();
  sub_2175A9EDC();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t static AnyMusicItemCollectionIncrementalLoader.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_21765D1E8@<X0>(uint64_t a1@<X8>)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_2171FF30C(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = sub_2175A7D38(v6, v7, v8);

    if (*(v4 + 16) == 1)
    {
      sub_2172830F8(v4 + 32, v9);

      result = sub_21725EA28(&v11);
      v11 = v9[0];
      v12 = v9[1];
      v13 = v10;
    }

    else
    {
    }
  }

  if (!*(&v12 + 1))
  {
    return sub_2172830F8(v1, a1);
  }

  v5 = v12;
  *a1 = v11;
  *(a1 + 16) = v5;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_21765D304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;

  return MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)();
}

uint64_t sub_21765D3E8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 72) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21765D464()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_9_4();
  v16 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_21765D5A0;
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);

  return (v16)(v14, v12, v2 & 1, v13, v10, v11, v3, v4);
}

uint64_t sub_21765D5A0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t AnyMusicItemCollectionIncrementalLoader.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 40))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21765D6F4()
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

unint64_t sub_21765D740(char a1)
{
  if (!a1)
  {
    return 0xD000000000000024;
  }

  if (a1 == 1)
  {
    return 0xD000000000000022;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_21765D798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2172849C8;

  return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_21765D860(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_217282D8C;

  return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_21765D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21765E058();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_21765D9B0()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 40))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21765DA20(uint64_t a1)
{
  v2 = sub_21765CE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21765DA5C(uint64_t a1)
{
  v2 = sub_21765CE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21765DABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21765D6F4();
  *a2 = result;
  return result;
}

unint64_t sub_21765DAEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21765D740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnyMusicItemCollectionIncrementalLoader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B448, &qword_21778A778);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v31 = &v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26638, &unk_21778A780);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v24 - v18;
  sub_21765D1E8(v30);
  sub_2171F3F0C(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if (OUTLINED_FUNCTION_10_60())
  {
    v24 = v3;
    v25 = v5;
    v27[0] = v28[0];
    v27[1] = v28[1];
    v27[2] = v28[2];
    *&v27[3] = *&v28[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2173806D0();
    sub_2177532F8();
    v26 = v27[0];
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    sub_21725E964();
    sub_217752F88();
    (*(v13 + 8))(v19, v11);
    sub_21765E000(v27);

    if (!v1)
    {
      v3 = v24;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v29);
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21765CE4C();
      v23 = v31;
      sub_2177532F8();
      sub_217752F48();
      (*(v25 + 8))(v23, v3);
    }

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (OUTLINED_FUNCTION_10_60())
  {
    memcpy(v27, v28, sizeof(v27));
    MusicCatalogSearchIncrementalLoader.encode(to:)(a1);
    if (!v1)
    {
      v25 = v5;
      sub_2175F6FDC(v27);
      goto LABEL_13;
    }

    sub_2175F6FDC(v27);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (OUTLINED_FUNCTION_10_60())
  {
    sub_2175A8A5C(a1, *&v28[0], *(&v28[0] + 1), *&v28[1]);
    if (!v1)
    {
      v25 = v5;

      goto LABEL_13;
    }

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

unint64_t sub_21765E058()
{
  result = qword_27CB2B450;
  if (!qword_27CB2B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B450);
  }

  return result;
}

uint64_t dispatch thunk of MusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_2_113();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_9_4();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_1_122(v6);

  return v10(v8);
}

uint64_t dispatch thunk of MusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_11_69();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = *(v14 + 24);
  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_19(v17);
  *v18 = v19;
  v18[1] = sub_217282D8C;

  return (v21)(v13, v11, v9 & 1, v7, v5, v3, v1, v0);
}

_BYTE *storeEnumTagSinglePayload for AnyMusicItemCollectionIncrementalLoader.IncrementalLoaderType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnyMusicItemCollectionIncrementalLoader.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21765E538()
{
  result = qword_27CB2B458;
  if (!qword_27CB2B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B458);
  }

  return result;
}

unint64_t sub_21765E590()
{
  result = qword_27CB2B460;
  if (!qword_27CB2B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B460);
  }

  return result;
}

unint64_t sub_21765E5E8()
{
  result = qword_27CB2B468;
  if (!qword_27CB2B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B468);
  }

  return result;
}

unint64_t sub_21765E640()
{
  result = qword_27CB2B470;
  if (!qword_27CB2B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B470);
  }

  return result;
}

unint64_t sub_21765E694()
{
  result = qword_27CB2B478;
  if (!qword_27CB2B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B478);
  }

  return result;
}

uint64_t sub_21765E6E8()
{
  OUTLINED_FUNCTION_25_1();
  sub_21765E7C4();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_21765E72C()
{
  OUTLINED_FUNCTION_25_1();
  sub_21765E770();
  v0 = OUTLINED_FUNCTION_2_62();

  return MusicItemCollectionIncrementalLoader<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

unint64_t sub_21765E770()
{
  result = qword_27CB2B480;
  if (!qword_27CB2B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B480);
  }

  return result;
}

unint64_t sub_21765E7C4()
{
  result = qword_27CB2B488;
  if (!qword_27CB2B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B488);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit39CloudPersonalRecommendationsRawResponseV8MetadataVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21765E864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_21765E8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21765E918()
{
  result = qword_27CB2B490;
  if (!qword_27CB2B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B490);
  }

  return result;
}

uint64_t sub_21765E96C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4C8, &qword_21778AD08);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217660224();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2174D331C();
  OUTLINED_FUNCTION_3_104();
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4A8, &qword_21778AD00);
  sub_2176602CC(&unk_27CB2B4D0);
  sub_217752EA8();
  OUTLINED_FUNCTION_15_8();
  v29 = v11;
  v30 = OUTLINED_FUNCTION_4_105(2);
  v31 = v12;
  v32 = OUTLINED_FUNCTION_4_105(3);
  v33 = v13;
  v34 = OUTLINED_FUNCTION_4_105(4);
  v35 = v14;
  sub_2175AA274();
  OUTLINED_FUNCTION_3_104();
  v36 = v25;
  v37 = v26;
  v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2176603C4(&qword_280BE2388);
  OUTLINED_FUNCTION_6_89();
  *(v16 - 256) = v15;
  sub_217752E58();
  OUTLINED_FUNCTION_15_8();
  v39 = v17;
  v42 = 7;
  OUTLINED_FUNCTION_6_89();
  v19 = *(v18 - 256);
  sub_217752E58();
  OUTLINED_FUNCTION_15_8();
  v40 = v20;
  v42 = 8;
  sub_217660444();
  OUTLINED_FUNCTION_3_104();
  v21 = OUTLINED_FUNCTION_0_129();
  v22(v21);
  OUTLINED_FUNCTION_15_8();
  v41 = v23;
  sub_2174B961C(&v28, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2174B9AF4(&v28);
}

uint64_t sub_21765EE98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B498, &qword_21778ACF8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217660224();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v24 = *v3;
  v23 = 0;
  sub_2174D65EC();
  OUTLINED_FUNCTION_2_114();
  OUTLINED_FUNCTION_44_2();
  sub_217752F38();
  if (!v2)
  {
    *&v24 = *(v3 + 2);
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B4A8, &qword_21778AD00);
    sub_2176602CC(&unk_27CB2B4B0);
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    v15 = *(v3 + 3);
    v16 = *(v3 + 4);
    LOBYTE(v24) = 2;
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
    v17 = *(v3 + 5);
    v18 = *(v3 + 6);
    LOBYTE(v24) = 3;
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
    v19 = *(v3 + 7);
    v20 = *(v3 + 8);
    LOBYTE(v24) = 4;
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
    LOBYTE(v24) = 5;
    sub_2175AA1A8();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    *&v24 = *(v3 + 14);
    v23 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_2176603C4(&qword_280BE2390);
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    *&v24 = *(v3 + 15);
    v23 = 7;
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    *&v24 = *(v3 + 16);
    v23 = 8;
    sub_217660278();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_21765F1C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_217751DE8();
      sub_2172628A8();
      v3 = v2;

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21765F228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000002177B3810 == a2)
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

uint64_t sub_21765F2C4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B500, &unk_21778AF10);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176606E4();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_217660738(&qword_27CB28600);
  sub_217752F38();
  return (*(v6 + 8))(v12, v4);
}

void sub_21765F430(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    v31 = a2;
    sub_217753208();

    sub_2172658E8(a1, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    sub_217753208();
  }
}

void *sub_21765F4F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B510, &qword_21778AF20);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176606E4();
  OUTLINED_FUNCTION_106();
  sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    sub_217660738(&qword_27CB285F0);
    sub_217752E58();
    (*(v5 + 8))(v11, v3);
    v13 = v15[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

BOOL sub_21765F684(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 1)
    {
      return 0;
    }

    if (v4)
    {
      if (!v5)
      {
        return 0;
      }

      v13 = *a1;
      v14 = *a1 == *a2 && v4 == v5;
      if (!v14 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  sub_21726FB4C();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a1[3] == a2[3] && v9 == v10;
    if (!v11 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[6];
  v16 = a2[6];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1[5] == a2[5] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = a1[8];
  v19 = a2[8];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a1[7] == a2[7] && v18 == v19;
    if (!v20 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  sub_2172CAE8C((a1 + 9), v45);
  sub_2172CAE8C((a2 + 9), &v47);
  if (!v46)
  {
    if (!*(&v48 + 1))
    {
      sub_2171F06D8(v45, &qword_27CB24188, &dword_217758930);
      goto LABEL_49;
    }

LABEL_54:
    sub_2171F06D8(v45, &qword_27CB24928, &unk_21775E020);
    return 0;
  }

  sub_2172CAE8C(v45, v42);
  if (!*(&v48 + 1))
  {
    sub_217283154(v42);
    goto LABEL_54;
  }

  v40[0] = v47;
  v40[1] = v48;
  v41 = v49;
  v21 = v43;
  v22 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v23 = *(v22 + 32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  v25 = v23(v40, v24, v21, v22);
  sub_217283154(v40);
  sub_217283154(v42);
  sub_2171F06D8(v45, &qword_27CB24188, &dword_217758930);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v26 = a1[14];
  v27 = a2[14];
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    v28 = a2[14];
    sub_217751DE8();
    sub_217261FB0(v26, v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v31 = a1[15];
  v32 = a2[15];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    v33 = a2[15];
    sub_217751DE8();
    sub_217261FB0(v31, v32);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v36 = a1[16];
  v37 = a2[16];
  if (v36 != 1)
  {
    if (v37 != 1)
    {
      if (v36)
      {
        if (v37)
        {
          sub_217751DE8();
          sub_2172628A8();
          v39 = v38;
          sub_217221010(v37);
          if (v39)
          {
            return 1;
          }
        }
      }

      else if (!v37)
      {
        return 1;
      }
    }

    return 0;
  }

  return v37 == 1;
}

uint64_t sub_21765F9C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1717924456 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701667182 && a2 == 0xE400000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1954047342 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000002177B37F0 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6972747441776172 && a2 == 0xED00007365747562;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C6156776172 && a2 == 0xE900000000000073;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1635018093 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_217753058();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_21765FC9C(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 1954047342;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6972747441776172;
      break;
    case 7:
      result = 0x65756C6156776172;
      break;
    case 8:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21765FF30()
{
  sub_2177531E8();
  sub_21765FD90(v1);
  return sub_217753238();
}

uint64_t sub_21765FF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765F228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21765FFA0(uint64_t a1)
{
  v2 = sub_2176606E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21765FFDC(uint64_t a1)
{
  v2 = sub_2176606E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_217660018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21765F4F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2176600E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21765F9C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21766010C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21765FC94();
  *a1 = result;
  return result;
}

uint64_t sub_217660134(uint64_t a1)
{
  v2 = sub_217660224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217660170(uint64_t a1)
{
  v2 = sub_217660224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176601E8()
{
  sub_2177531E8();
  sub_21765FD90(v1);
  return sub_217753238();
}

unint64_t sub_217660224()
{
  result = qword_27CB2B4A0;
  if (!qword_27CB2B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4A0);
  }

  return result;
}

unint64_t sub_217660278()
{
  result = qword_27CB2B4C0;
  if (!qword_27CB2B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4C0);
  }

  return result;
}

unint64_t sub_2176602CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B4A8, &qword_21778AD00);
    sub_217660350(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217660350(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244A8, &unk_217758980);
    sub_2174BFC54();
    sub_2174BFCA8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2176603C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217660444()
{
  result = qword_27CB2B4D8;
  if (!qword_27CB2B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsRawResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217660588()
{
  result = qword_27CB2B4E0;
  if (!qword_27CB2B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4E0);
  }

  return result;
}

unint64_t sub_2176605E0()
{
  result = qword_27CB2B4E8;
  if (!qword_27CB2B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4E8);
  }

  return result;
}

unint64_t sub_217660638()
{
  result = qword_27CB2B4F0;
  if (!qword_27CB2B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4F0);
  }

  return result;
}

unint64_t sub_217660690()
{
  result = qword_27CB2B4F8;
  if (!qword_27CB2B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B4F8);
  }

  return result;
}

unint64_t sub_2176606E4()
{
  result = qword_27CB2B508;
  if (!qword_27CB2B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B508);
  }

  return result;
}

unint64_t sub_217660738(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB285E8, &qword_2177733C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsRawResponse.Metadata.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_217660850()
{
  result = qword_27CB2B518;
  if (!qword_27CB2B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B518);
  }

  return result;
}

unint64_t sub_2176608A8()
{
  result = qword_27CB2B520;
  if (!qword_27CB2B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B520);
  }

  return result;
}

unint64_t sub_217660900()
{
  result = qword_27CB2B528;
  if (!qword_27CB2B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B528);
  }

  return result;
}

MusicKit::MusicItemID __swiftcall MusicItemID.init(_:)(Swift::Int64 a1)
{
  v1 = sub_217752FC8();
  result.rawValue._object = v2;
  result.rawValue._countAndFlagsBits = v1;
  return result;
}

MusicKit::MusicItemID __swiftcall MusicItemID.init(_:)(Swift::UInt64 a1)
{
  v1 = sub_217752FC8();
  result.rawValue._object = v2;
  result.rawValue._countAndFlagsBits = v1;
  return result;
}

uint64_t MusicItemID.init(from:)(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_94();
  sub_2177532A8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_0_94();
    v1 = sub_217753078();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t MusicItemID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_217660B20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicItemID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_217660B4C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return MusicItemID.encode(to:)(a1);
}

uint64_t Optional<A>.musicKit_prettyDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 7104878;
  }

  sub_217751DE8();
  return v2;
}

{
  if (!a2)
  {
    return 7104878;
  }

  MEMORY[0x21CEA23B0]();
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_217660C20@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  result = MusicItemID.description.getter(*v1);
  *a1 = result;
  a1[1] = v5;
  return result;
}

Swift::String_optional __swiftcall String.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v1 = sub_217752FC8();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Int __swiftcall String.convertToLegacyModelRawValue()()
{
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_217751DE8();
    v8 = sub_2175B1ECC(v6, v2, 10);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      return v8;
    }

    return 0;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_217752B88();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v10 & v9)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_130();
              if (!v10)
              {
                goto LABEL_68;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_5();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_68;
            }

            v21 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_68;
            }

            v8 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v8 = 0;
      v13 = 1;
LABEL_69:
      if ((v13 & 1) == 0)
      {
        return v8;
      }

      return 0;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v10 & v9)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_130();
            if (!v10)
            {
              goto LABEL_68;
            }

            v8 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_5();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v13 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_0_130();
          if (!v10)
          {
            break;
          }

          v8 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_105();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v10 & v9)
          {
            break;
          }

          OUTLINED_FUNCTION_0_130();
          if (!v10)
          {
            break;
          }

          v8 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v10)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_76;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_105();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v10 & v9)
        {
          break;
        }

        OUTLINED_FUNCTION_0_130();
        if (!v10)
        {
          break;
        }

        v8 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        OUTLINED_FUNCTION_2_5();
        if (v10)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_217660EF8@<X0>(Swift::Int *a1@<X0>, Swift::String_optional *a2@<X8>)
{
  v4 = String.init(legacyModelRawValue:)(*a1);
  result = v4.value._countAndFlagsBits;
  *a2 = v4;
  return result;
}

Swift::Int sub_217660F24@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = String.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_217660F54()
{
  result = qword_27CB2B530;
  if (!qword_27CB2B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B530);
  }

  return result;
}

unint64_t sub_217660FAC()
{
  result = qword_27CB2B538;
  if (!qword_27CB2B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B538);
  }

  return result;
}

uint64_t MusicLibrary.Error.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_131(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(&v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21766105C@<X0>(uint64_t *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (qword_27CB23BE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217751588();
      v5 = v8;
      v6 = sub_217751588();
      v7 = v9;
      result = sub_217751588();
      goto LABEL_21;
    case 2:
      if (qword_27CB23BE8 != -1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 3:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 4:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 5:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 6:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 7:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

LABEL_22:
      swift_once();
LABEL_19:
      v3 = sub_217751588();
      v5 = v12;
      v6 = sub_217751588();
      v7 = v13;
      break;
    default:
      if (qword_27CB23BE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217751588();
      v5 = v4;
      v6 = 0;
      v7 = 0;
      break;
  }

  result = 0;
  v11 = 0;
LABEL_21:
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v11;
  a1[6] = 0;
  a1[7] = 0;
  return result;
}

uint64_t MusicLibrary.Error.failureReason.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_131(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.recoverySuggestion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_131(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.helpAnchor.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_131(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      v2 = 0xD000000000000010;
      v3 = "permissionDenied";
      goto LABEL_5;
    case 2:
      v1 = 0xEF6D657449646441;
      v2 = 0x6F54656C62616E75;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v3 = "itemAlreadyAdded";
LABEL_5:
      v1 = (v3 - 32) | 0x8000000000000000;
      break;
    case 4:
    case 6:
      OUTLINED_FUNCTION_42();
      v2 = v6 | 4;
      break;
    case 5:
      OUTLINED_FUNCTION_42();
      v2 = v5 | 3;
      break;
    case 7:
      OUTLINED_FUNCTION_42();
      v2 = v4 | 2;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v2, v1);

  return 46;
}

unint64_t MusicLibrary.Error.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F54656C62616E75;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 6:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MusicLibrary.Error.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_217661A8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2177081C4();
}

unint64_t sub_217661A9C()
{
  result = qword_27CB2B540;
  if (!qword_27CB2B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B540);
  }

  return result;
}

uint64_t sub_217661B08@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicLibrary.Error.init(rawValue:)(a1);
}

unint64_t sub_217661B14@<X0>(unint64_t *a1@<X8>)
{
  result = MusicLibrary.Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicTokenRequestError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_106(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(&v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.failureReason.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_106(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.recoverySuggestion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_106(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.helpAnchor.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_106(a1, a2);
  sub_217751DE8();
  sub_21756DDE4(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_217661D6C@<X0>(char **a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v1 = "f error: .unableToAddItem.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132();
      }

      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_4_106();
      goto LABEL_28;
    case 2:
      v1 = "ple Account in the Music app.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132();
      }

      v3 = qword_27CB8A298;
      v4 = 0xD000000000000036;
      OUTLINED_FUNCTION_9_74();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_9_74();
      OUTLINED_FUNCTION_7_70();
      goto LABEL_10;
    case 3:
      if (qword_27CB23EC0 != -1)
      {
        swift_once();
      }

      v8 = qword_27CB2D388;
      v9 = unk_27CB2D390;
      v3 = byte_27CB2D398;
      v4 = qword_27CB2D3A0;
      v10 = unk_27CB2D3A8;
      v11 = byte_27CB2D3B0;
      v13[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
      v13[4] = sub_2171FEF88();
      v12 = swift_allocObject();
      v13[0] = v12;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      *(v12 + 32) = v3;
      *(v12 + 40) = v4;
      *(v12 + 48) = v10;
      *(v12 + 56) = v11;
      LOBYTE(v8) = sub_217751978();
      __swift_destroy_boxed_opaque_existential_1(v13);
      v2 = 0x27CB23000uLL;
      if (v8)
      {
        if (qword_27CB23BE8 == -1)
        {
          goto LABEL_25;
        }
      }

      else if (qword_27CB23BE8 == -1)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_0_132();
LABEL_25:
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      v1 = "f error: .userNotSignedIn.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
LABEL_28:
      OUTLINED_FUNCTION_1_123();
LABEL_29:
      result = sub_217751588();
LABEL_30:
      *a1 = v1;
      a1[1] = v2;
      a1[2] = v3;
      a1[3] = v4;
      a1[4] = result;
      a1[5] = v7;
      a1[6] = 0;
      a1[7] = 0;
      return result;
    case 4:
      v1 = "eveloperTokenRequestFailed.";
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    case 5:
      v1 = "serTokenRequestFailed.";
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_6;
      }

LABEL_31:
      OUTLINED_FUNCTION_0_132();
LABEL_6:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_2_115();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_2_115();
      goto LABEL_28;
    case 6:
      v1 = "Description of error: .unknown.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132();
      }

      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_2_115();
      OUTLINED_FUNCTION_1_123();
      goto LABEL_29;
    default:
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132();
      }

      OUTLINED_FUNCTION_2_4();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      v3 = 0;
      v4 = 0;
LABEL_10:
      result = 0;
      v7 = 0;
      goto LABEL_30;
  }
}

uint64_t MusicTokenRequestError.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_72_0();
      break;
    case 3:
      v1 = 0xEF6E4964656E6769;
      v2 = 0x53746F4E72657375;
      break;
    case 4:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD00000000000001ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD00000000000001BLL;
      break;
    case 6:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v2, v1);

  return 46;
}

unint64_t MusicTokenRequestError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x53746F4E72657375;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

MusicKit::MusicTokenRequestError_optional __swiftcall MusicTokenRequestError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21766263C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_217708CE0();
}

unint64_t sub_21766264C()
{
  result = qword_27CB2B548;
  if (!qword_27CB2B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B548);
  }

  return result;
}

unint64_t sub_2176626C4@<X0>(unint64_t *a1@<X8>)
{
  result = MusicTokenRequestError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicTokenRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21766280C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62)
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

uint64_t sub_2176628AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21766280C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176628D8(uint64_t a1)
{
  v2 = sub_217662A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217662914(uint64_t a1)
{
  v2 = sub_217662A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeSharingAsset.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B550, &qword_21778B5C0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v16 - v11;
  v13 = *v1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217662A78();
  sub_2177532F8();
  sub_217752F58();
  return (*(v7 + 8))(v12, v2);
}

unint64_t sub_217662A78()
{
  result = qword_27CB2B558;
  if (!qword_27CB2B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B558);
  }

  return result;
}

uint64_t HomeSharingAsset.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

uint64_t HomeSharingAsset.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B560, &qword_21778B5C8);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217662A78();
  sub_2177532C8();
  if (!v2)
  {
    v16 = sub_217752E78();
    (*(v9 + 8))(v14, v3);
    *a2 = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217662CD4()
{
  result = qword_27CB2B568;
  if (!qword_27CB2B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeSharingAsset(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HomeSharingAsset.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_217662EC0()
{
  result = qword_27CB2B570;
  if (!qword_27CB2B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B570);
  }

  return result;
}

unint64_t sub_217662F18()
{
  result = qword_27CB2B578;
  if (!qword_27CB2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B578);
  }

  return result;
}

unint64_t sub_217662F70()
{
  result = qword_27CB2B580;
  if (!qword_27CB2B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B580);
  }

  return result;
}

void *CloudAudioAnalysis.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  result = memcpy((a7 + 16), __src, 0x318uLL);
  *(a7 + 808) = v8;
  *(a7 + 809) = v9;
  *(a7 + 810) = v10;
  return result;
}

__n128 CloudAudioAnalysis.Attributes.init(loudness:energy:beats:key:bpm:valence:melodicness:danceability:fades:acousticness:loudnessCurve:phrases:vocalActivity:)@<Q0>(void *__src@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, const void *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, __n128 *a12, uint64_t a13, uint64_t a14)
{
  v34 = a12[1].n128_u64[0];
  memcpy(a9, __src, 0xBBuLL);
  v22 = a2[1];
  *(a9 + 192) = *a2;
  *(a9 + 208) = v22;
  *(a9 + 224) = a2[2];
  *(a9 + 234) = *(a2 + 42);
  *(a9 + 256) = *a3;
  memcpy((a9 + 272), a4, 0x59uLL);
  v23 = a5[1];
  *(a9 + 368) = *a5;
  *(a9 + 384) = v23;
  *(a9 + 400) = a5[2];
  *(a9 + 410) = *(a5 + 42);
  v24 = a6[1];
  *(a9 + 432) = *a6;
  *(a9 + 448) = v24;
  *(a9 + 464) = a6[2];
  *(a9 + 474) = *(a6 + 42);
  v25 = *a7;
  v26 = a7[1];
  v27 = a7[2];
  *(a9 + 538) = *(a7 + 42);
  *(a9 + 512) = v26;
  *(a9 + 528) = v27;
  *(a9 + 496) = v25;
  *(a9 + 602) = *(a8 + 42);
  v28 = a8[2];
  *(a9 + 576) = a8[1];
  *(a9 + 592) = v28;
  *(a9 + 560) = *a8;
  *(a9 + 667) = *(a10 + 43);
  v29 = a10[2];
  *(a9 + 640) = a10[1];
  *(a9 + 656) = v29;
  *(a9 + 624) = *a10;
  v30 = *a11;
  v31 = a11[1];
  v32 = a11[2];
  *(a9 + 730) = *(a11 + 42);
  *(a9 + 704) = v31;
  *(a9 + 720) = v32;
  *(a9 + 688) = v30;
  result = *a12;
  *(a9 + 752) = *a12;
  *(a9 + 768) = v34;
  *(a9 + 776) = a13;
  *(a9 + 784) = a14;
  return result;
}

__n128 CloudAudioAnalysis.Attributes.energy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 192);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 224);
  result = *(v1 + 234);
  *(a1 + 42) = result;
  return result;
}

uint64_t CloudAudioAnalysis.Attributes.beats.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  *a1 = v2;
  a1[1] = v3;
  return sub_2176631DC(v2);
}

uint64_t sub_2176631DC(uint64_t result)
{
  if (result != 1)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t CloudAudioAnalysis.Attributes.key.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 272), 0x59uLL);
  memcpy(a1, (v1 + 272), 0x59uLL);
  return sub_21738C4B0(__dst, &v4, &qword_27CB2B5A0, &qword_21778B7F0);
}

double CloudAudioAnalysis.Attributes.bpm.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 368);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 400)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.valence.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 448);
  *a1 = *(v1 + 432);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 464)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.melodicness.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 512);
  *a1 = *(v1 + 496);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 528)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.danceability.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 576);
  *a1 = *(v1 + 560);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 592)).n128_u64[0];
  return result;
}

__n128 CloudAudioAnalysis.Attributes.fades.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 656);
  result = *(v1 + 667);
  *(a1 + 43) = result;
  return result;
}

double CloudAudioAnalysis.Attributes.acousticness.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 704);
  *a1 = *(v1 + 688);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 720)).n128_u64[0];
  return result;
}

uint64_t CloudAudioAnalysis.Attributes.loudnessCurve.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[94];
  v3 = v1[95];
  v4 = v1[96];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21739AF10(v2, v3, v4);
}

void static CloudAudioAnalysis.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = *(v2 + 192);
  v5 = *(v2 + 208);
  v6 = *(v2 + 224);
  *(v164 + 9) = *(v2 + 233);
  v164[0] = v6;
  v163 = v5;
  v162 = v4;
  v7 = *(v2 + 249);
  v8 = *(v2 + 256);
  v134 = *(v2 + 264);
  memcpy(__dst, (v2 + 272), 0x59uLL);
  v9 = *(v3 + 384);
  v166 = *(v3 + 368);
  v167 = v9;
  v168[0] = *(v3 + 400);
  *(v168 + 9) = *(v3 + 409);
  v133 = *(v3 + 425);
  v10 = *(v3 + 448);
  v169 = *(v3 + 432);
  v170 = v10;
  v171[0] = *(v3 + 464);
  *(v171 + 9) = *(v3 + 473);
  v131 = *(v3 + 489);
  *(v174 + 9) = *(v3 + 537);
  v11 = *(v3 + 512);
  v174[0] = *(v3 + 528);
  v12 = *(v3 + 496);
  v173 = v11;
  v172 = v12;
  v13 = *(v3 + 553);
  *(v177 + 9) = *(v3 + 601);
  v14 = *(v3 + 576);
  v177[0] = *(v3 + 592);
  v15 = *(v3 + 560);
  v176 = v14;
  v175 = v15;
  v127 = *(v3 + 617);
  v128 = v13;
  v16 = *(v3 + 624);
  v17 = *(v3 + 640);
  v18 = *(v3 + 656);
  *(v180 + 10) = *(v3 + 666);
  v180[0] = v18;
  v179 = v17;
  v178 = v16;
  v125 = *(v3 + 682);
  v19 = *(v3 + 688);
  v20 = *(v3 + 704);
  v21 = *(v3 + 720);
  *(v183 + 9) = *(v3 + 729);
  v183[0] = v21;
  v182 = v20;
  v181 = v19;
  v122 = *(v3 + 745);
  v120 = *(v3 + 752);
  v121 = *(v3 + 760);
  v123 = *(v3 + 768);
  v115 = *(v3 + 784);
  v116 = *(v3 + 776);
  v22 = *(v1 + 249);
  v23 = *(v1 + 256);
  v24 = *(v1 + 264);
  memcpy(v184, (v1 + 272), 0x59uLL);
  v25 = *(v1 + 384);
  v185 = *(v1 + 368);
  v186 = v25;
  v187[0] = *(v1 + 400);
  *(v187 + 9) = *(v1 + 409);
  v132 = *(v1 + 425);
  v26 = *(v1 + 448);
  v188 = *(v1 + 432);
  v189 = v26;
  v190[0] = *(v1 + 464);
  *(v190 + 9) = *(v1 + 473);
  v27 = *(v1 + 489);
  *(v193 + 9) = *(v1 + 537);
  v28 = *(v1 + 512);
  v193[0] = *(v1 + 528);
  v29 = *(v1 + 496);
  v192 = v28;
  v191 = v29;
  v129 = *(v1 + 553);
  v130 = v27;
  *(v196 + 9) = *(v1 + 601);
  v30 = *(v1 + 576);
  v196[0] = *(v1 + 592);
  v31 = *(v1 + 560);
  v195 = v30;
  v194 = v31;
  v126 = *(v1 + 617);
  v32 = *(v1 + 624);
  v33 = *(v1 + 640);
  v34 = *(v1 + 656);
  *(v198 + 10) = *(v1 + 666);
  v198[0] = v34;
  v197[1] = v33;
  v197[0] = v32;
  v124 = *(v1 + 682);
  v35 = *(v1 + 688);
  v36 = *(v1 + 704);
  v37 = *(v1 + 720);
  *(v201 + 9) = *(v1 + 729);
  v201[0] = v37;
  v200 = v36;
  v199 = v35;
  v38 = *(v1 + 745);
  v117 = *(v1 + 752);
  v118 = *(v1 + 760);
  v119 = *(v1 + 768);
  v39 = *(v1 + 776);
  v114 = *(v1 + 784);
  memcpy(v202, v3, 0xBBuLL);
  if (sub_217668FD4(v202) == 1)
  {
    memcpy(v139, v1, 0xBBuLL);
    if (sub_217668FD4(v139) != 1)
    {
      goto LABEL_42;
    }
  }

  else
  {
    memcpy(v139, v1, 0xBBuLL);
    if (sub_217668FD4(v139) == 1)
    {
      goto LABEL_42;
    }

    memcpy(v161, v1, 0xBAuLL);
    memcpy(v160, v3, 0xBAuLL);
    if ((sub_21766B3C0(v160, v161) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v7)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_42;
    }

    v40 = *(v1 + 208);
    v158[0] = *(v1 + 192);
    v158[1] = v40;
    v159[0] = *(v1 + 224);
    *(v159 + 9) = *(v1 + 233);
    v156[0] = v162;
    v156[1] = v163;
    v157[0] = v164[0];
    *(v157 + 9) = *(v164 + 9);
    if ((sub_21766B5D8(v156, v158) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v8 == 1)
  {
    sub_2176631DC(1);
    if (v23 == 1)
    {
      v41 = v38;
      sub_2176631DC(1);
      goto LABEL_14;
    }

    v59 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v59);
    goto LABEL_20;
  }

  if (v23 == 1)
  {
    v57 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v57);
    sub_2176631DC(1);
    v58 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v58);

LABEL_20:
    v60 = OUTLINED_FUNCTION_30_1();
    sub_217668FF0(v60);
    v61 = OUTLINED_FUNCTION_179();
LABEL_41:
    sub_217668FF0(v61);
    goto LABEL_42;
  }

  if (v8)
  {
    if (!v23)
    {
      sub_2176631DC(v8);
      sub_2176631DC(0);
      v95 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v95);
      v74 = 0;
      goto LABEL_39;
    }

    if ((sub_2172717F0(v8, v23) & 1) == 0)
    {
      v62 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v62);
      v63 = OUTLINED_FUNCTION_179();
      sub_2176631DC(v63);
      v64 = v8;
LABEL_29:
      sub_2176631DC(v64);
      v74 = v23;
LABEL_39:
      sub_217668FF0(v74);
      goto LABEL_40;
    }
  }

  else if (v23)
  {
    sub_2176631DC(0);
    v73 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v73);
    v64 = 0;
    goto LABEL_29;
  }

  if (v134)
  {
    if (!v24)
    {
      v96 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v96);
      sub_2176631DC(v23);
      v97 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v97);
      v74 = v23;
      goto LABEL_39;
    }

    v75 = sub_2172717F0(v134, v24);
    v76 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v76);
    v77 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v77);
    v78 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v78);
    v79 = OUTLINED_FUNCTION_179();
    sub_217668FF0(v79);
    if ((v75 & 1) == 0)
    {
LABEL_40:

      v61 = OUTLINED_FUNCTION_30_1();
      goto LABEL_41;
    }
  }

  else
  {
    sub_2176631DC(v8);
    if (v24)
    {
      sub_2176631DC(v23);
      v64 = v8;
      goto LABEL_29;
    }

    sub_2176631DC(v23);
    sub_2176631DC(v8);
    sub_217668FF0(v23);
  }

  v41 = v38;

LABEL_14:
  v42 = OUTLINED_FUNCTION_30_1();
  sub_217668FF0(v42);
  v43 = __dst[0];
  v44 = __dst[1];
  OUTLINED_FUNCTION_93_14(v138);
  v45 = v184[0];
  if (v44 == 2)
  {
    if (*(&v184[0] + 1) == 2)
    {
      *&v139[0] = v43;
      *(&v139[0] + 1) = 2;
      OUTLINED_FUNCTION_93_14(&v139[1]);
      OUTLINED_FUNCTION_5_37();
      sub_21738C4B0(v46, v47, v48, v49);
      OUTLINED_FUNCTION_5_37();
      sub_21738C4B0(v50, v51, v52, v53);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v54, v55, v56);
      goto LABEL_35;
    }

LABEL_26:
    *&v139[0] = v43;
    *(&v139[0] + 1) = v44;
    OUTLINED_FUNCTION_93_14(&v139[1]);
    v139[6] = v45;
    memcpy(&v139[7], &v184[1], 0x49uLL);
    OUTLINED_FUNCTION_5_37();
    sub_21738C4B0(v65, v66, v67, v68);
    OUTLINED_FUNCTION_5_37();
    sub_21738C4B0(v69, v70, v71, v72);
    sub_2171F0738(v139, &qword_27CB2B5A8, &qword_21778B7F8);
    goto LABEL_42;
  }

  if (*(&v184[0] + 1) == 2)
  {
    goto LABEL_26;
  }

  __src[0] = v184[0];
  memcpy(&__src[1], &v184[1], 0x49uLL);
  memcpy(v139, __src, 0x59uLL);
  OUTLINED_FUNCTION_93_14(&v155);
  *&v154 = v43;
  *(&v154 + 1) = v44;
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v80, v81, v82, v83);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v84, v85, v86, v87);
  v88 = sub_21766B684(&v154, v139);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v89, v90, v91);
  *&v136 = v43;
  *(&v136 + 1) = v44;
  memcpy(v137, v138, 0x49uLL);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v92, v93, v94);
  if (!v88)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v133)
  {
    if ((v132 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v132)
    {
      goto LABEL_42;
    }

    __src[0] = v185;
    __src[1] = v186;
    __src[2] = v187[0];
    *(&__src[2] + 9) = *(v187 + 9);
    v138[0] = v166;
    v138[1] = v167;
    v138[2] = v168[0];
    *(&v138[2] + 9) = *(v168 + 9);
    if ((sub_21766B5D8(v138, __src) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v131)
  {
    if ((v130 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v130)
    {
      goto LABEL_42;
    }

    v152[0] = v188;
    v152[1] = v189;
    v153[0] = v190[0];
    *(v153 + 9) = *(v190 + 9);
    v150[0] = v169;
    v150[1] = v170;
    v151[0] = v171[0];
    *(v151 + 9) = *(v171 + 9);
    if ((sub_21766B5D8(v150, v152) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v128)
  {
    if ((v129 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v129)
    {
      goto LABEL_42;
    }

    v148[0] = v191;
    v148[1] = v192;
    v149[0] = v193[0];
    *(v149 + 9) = *(v193 + 9);
    v146[0] = v172;
    v146[1] = v173;
    v147[0] = v174[0];
    *(v147 + 9) = *(v174 + 9);
    if ((sub_21766B5D8(v146, v148) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v127)
  {
    if ((v126 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v126)
    {
      goto LABEL_42;
    }

    v144[0] = v194;
    v144[1] = v195;
    v145[0] = v196[0];
    *(v145 + 9) = *(v196 + 9);
    v142[0] = v175;
    v142[1] = v176;
    v143[0] = v177[0];
    *(v143 + 9) = *(v177 + 9);
    if ((sub_21766B5D8(v142, v144) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v125)
  {
    if ((v124 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v136 = v178;
    v137[0] = v179;
    v137[1] = v180[0];
    *(&v137[1] + 10) = *(v180 + 10);
    BYTE10(v137[2]) = v125;
    if ((v124 & 1) != 0 || !static CloudAudioAnalysis.CloudFades.== infix(_:_:)(&v136, v197))
    {
      goto LABEL_42;
    }
  }

  if (v122)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v41)
    {
      goto LABEL_42;
    }

    v136 = v199;
    v137[0] = v200;
    v137[1] = v201[0];
    *(&v137[1] + 9) = *(v201 + 9);
    v140[0] = v181;
    v140[1] = v182;
    v141[0] = v183[0];
    *(v141 + 9) = *(v183 + 9);
    if ((sub_21766B5D8(v140, &v136) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v123 != 1)
  {
    if (v119 == 1)
    {
      sub_21739AF10(v120, v121, v123);
      sub_21739AF10(v117, v118, 1);
      OUTLINED_FUNCTION_58_3();
      sub_21739AF10(v98, v99, v100);

LABEL_85:
      sub_21733B290(v120, v121, v123);
      v101 = v117;
      v102 = v118;
      v103 = v119;
LABEL_107:
      sub_21733B290(v101, v102, v103);
      goto LABEL_42;
    }

    if (v121)
    {
      if ((v118 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else if ((v118 & 1) != 0 || *&v120 != *&v117)
    {
      goto LABEL_104;
    }

    if (v123)
    {
      if (!v119)
      {
        v119 = 0;
LABEL_104:
        v109 = v123;
        sub_21739AF10(v120, v121, v123);
        goto LABEL_105;
      }

      v104 = sub_217271798(v123, v119);
      v105 = OUTLINED_FUNCTION_173();
      sub_21739AF10(v105, v106, v123);
      sub_21739AF10(v117, v118, v119);
      v107 = OUTLINED_FUNCTION_173();
      sub_21739AF10(v107, v108, v123);
      sub_21733B290(v117, v118, v119);
      if ((v104 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      sub_21739AF10(v120, v121, 0);
      v109 = 0;
      if (v119)
      {
LABEL_105:
        sub_21739AF10(v117, v118, v119);
        sub_21739AF10(v120, v121, v109);
        sub_21733B290(v117, v118, v119);
LABEL_106:

        v101 = v120;
        v102 = v121;
        v103 = v123;
        goto LABEL_107;
      }

      v110 = OUTLINED_FUNCTION_56_0();
      sub_21739AF10(v110, v111, 0);
      sub_21739AF10(v120, v121, 0);
      v112 = OUTLINED_FUNCTION_56_0();
      sub_21733B290(v112, v113, 0);
    }

    goto LABEL_78;
  }

  sub_21739AF10(v120, v121, 1);
  if (v119 != 1)
  {
    sub_21739AF10(v117, v118, v119);
    goto LABEL_85;
  }

  v123 = 1;
  sub_21739AF10(v117, v118, 1);
LABEL_78:
  sub_21733B290(v120, v121, v123);
  if (v116)
  {
    if (!v39 || (sub_217271600(v116, v39) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v39)
  {
    goto LABEL_42;
  }

  if (v115 && v114)
  {
    sub_217751DE8();
    sub_217271698(v115, v114);
  }

LABEL_42:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217663F64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374616562 && a2 == 0xE500000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7955819 && a2 == 0xE300000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7172194 && a2 == 0xE300000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365646166 && a2 == 0xE500000000000000;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006576727543;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7463416C61636F76 && a2 == 0xED00007974697669)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_217753058();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

unint64_t sub_217664354(char a1)
{
  result = 0x7373656E64756F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x796772656E65;
      break;
    case 2:
      v3 = 1952540002;
      goto LABEL_13;
    case 3:
      result = 7955819;
      break;
    case 4:
      result = 7172194;
      break;
    case 5:
      result = 0x65636E656C6176;
      break;
    case 6:
      result = 0x6E6369646F6C656DLL;
      break;
    case 7:
      result = 0x69626165636E6164;
      break;
    case 8:
      v3 = 1701077350;
LABEL_13:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 9:
      result = 0x63697473756F6361;
      break;
    case 11:
      result = 0x73657361726870;
      break;
    case 12:
      result = 0x7463416C61636F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176644D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217663F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176644F8(uint64_t a1)
{
  v2 = sub_21766BD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217664534(uint64_t a1)
{
  v2 = sub_21766BD60();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5B0, &qword_21778B800);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v34 - v12;
  v14 = *(v2 + 256);
  v40 = *(v2 + 264);
  v41 = v14;
  memcpy(v48, (v2 + 272), 0x59uLL);
  v15 = *(v2 + 752);
  v38 = *(v2 + 760);
  v39 = v15;
  v16 = *(v2 + 768);
  v36 = *(v2 + 776);
  v37 = v16;
  v35 = *(v2 + 784);
  v17 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_21766BD60();
  sub_2177532F8();
  memcpy(v47, v2, 0xBBuLL);
  v46[0] = 0;
  v18 = OUTLINED_FUNCTION_154();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_4_107();
  sub_21737CD60(v20);
  v42 = v13;
  sub_217752F38();
  if (v1)
  {
    (*(v7 + 8))(v42, v5);
  }

  else
  {
    v22 = v40;
    v21 = v41;
    v34[0] = v7;
    v34[1] = v5;
    v23 = *(v2 + 208);
    v47[0] = *(v2 + 192);
    v47[1] = v23;
    v47[2] = *(v2 + 224);
    *(&v47[2] + 10) = *(v2 + 234);
    v46[0] = 1;
    v24 = OUTLINED_FUNCTION_154();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_4_107();
    sub_21737CD60(v27);
    sub_217752F38();
    *&v47[0] = v21;
    *(&v47[0] + 1) = v22;
    v46[0] = 2;
    sub_2176631DC(v21);
    sub_21766BDB4();
    sub_217752F38();
    v41 = v26;
    sub_217668FF0(*&v47[0]);
    memcpy(v47, v48, 0x59uLL);
    sub_21738C4B0(v48, v46, &qword_27CB2B5A0, &qword_21778B7F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5E8, &qword_21778B818);
    OUTLINED_FUNCTION_4_107();
    sub_21737CD60(v28);
    sub_217752F38();
    memcpy(v46, v47, 0x59uLL);
    sub_2171F0738(v46, &qword_27CB2B5A0, &qword_21778B7F0);
    v32 = *(v2 + 384);
    v43 = *(v2 + 368);
    v44 = v32;
    v45[0] = *(v2 + 400);
    *(v45 + 10) = *(v2 + 410);
    sub_217752F38();
    OUTLINED_FUNCTION_7_71(v2 + 432);
    OUTLINED_FUNCTION_8_75(5);
    OUTLINED_FUNCTION_7_71(v2 + 496);
    OUTLINED_FUNCTION_8_75(6);
    OUTLINED_FUNCTION_7_71(v2 + 560);
    OUTLINED_FUNCTION_8_75(7);
    v33 = *(v2 + 640);
    v43 = *(v2 + 624);
    v44 = v33;
    v45[0] = *(v2 + 656);
    *(v45 + 11) = *(v2 + 667);
    sub_21766BE08();
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    OUTLINED_FUNCTION_7_71(v2 + 688);
    OUTLINED_FUNCTION_8_75(9);
    *&v43 = v39;
    *(&v43 + 1) = v38;
    *&v44 = v37;
    sub_21739AF10(v39, v38, v37);
    sub_21766BE5C();
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    sub_21733B290(v43, *(&v43 + 1), v44);
    *&v43 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B608, &qword_21778B820);
    sub_21766CDA8(&unk_27CB2B610);
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    *&v43 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B620, &qword_21778B828);
    sub_21766BF04(&unk_27CB2B628);
    sub_217752F38();
    v29 = *(v34[0] + 8);
    v30 = OUTLINED_FUNCTION_154();
    v31(v30);
  }

  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = v0[1];
  v35 = *v0;
  v51 = v0[3];
  v52 = v0[2];
  v50 = v0[4];
  v48 = *(v0 + 41);
  v49 = *(v0 + 40);
  v4 = *(v0 + 42);
  v113 = *(v0 + 23);
  v112 = v4;
  v54 = v3;
  v55 = v0[6];
  v61 = v0[7];
  v59 = v0[9];
  v60 = v0[8];
  v58 = v0[10];
  v57 = *(v0 + 88);
  v56 = *(v0 + 89);
  v5 = *(v0 + 90);
  v122 = *(v0 + 47);
  v121 = v5;
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[16];
  v34 = *(v0 + 136);
  v62 = *(v0 + 137);
  v11 = *(v0 + 138);
  v131 = *(v0 + 71);
  v130 = v11;
  v12 = v0[18];
  v32 = v0[20];
  v33 = v0[19];
  v30 = v0[22];
  v31 = v0[21];
  v29 = *(v0 + 184);
  v13 = *(v0 + 12);
  v14 = *(v0 + 13);
  v15 = *(v0 + 14);
  *(v100 + 9) = *(v0 + 233);
  v100[0] = v15;
  v99 = v14;
  v98 = v13;
  v53 = *(v0 + 185);
  v46 = *(v0 + 186);
  v38 = *(v0 + 249);
  v39 = v0[32];
  v40 = v0[33];
  v27 = v0[34];
  v41 = v0[35];
  memcpy(__dst, v0 + 36, sizeof(__dst));
  v16 = *(v0 + 24);
  v102 = *(v0 + 23);
  v103 = v16;
  v104[0] = *(v0 + 25);
  *(v104 + 9) = *(v0 + 409);
  v17 = *(v0 + 425);
  v18 = *(v0 + 28);
  v104[2] = *(v0 + 27);
  v104[3] = v18;
  v105[0] = *(v0 + 29);
  *(v105 + 9) = *(v0 + 473);
  v42 = v17;
  v43 = *(v0 + 489);
  v19 = *(v0 + 32);
  v105[2] = *(v0 + 31);
  v105[3] = v19;
  v106[0] = *(v0 + 33);
  *(v106 + 9) = *(v0 + 537);
  v20 = *(v0 + 553);
  v21 = *(v0 + 36);
  v106[2] = *(v0 + 35);
  v106[3] = v21;
  v107[0] = *(v0 + 37);
  *(v107 + 9) = *(v0 + 601);
  v44 = v20;
  v45 = *(v0 + 617);
  *&v65[11] = *(v0 + 667);
  v64 = *(v0 + 40);
  *v65 = *(v0 + 41);
  v63 = *(v0 + 39);
  *(v108 + 9) = *(v0 + 729);
  v22 = *(v0 + 44);
  v108[0] = *(v0 + 45);
  v23 = *(v0 + 43);
  v107[3] = v22;
  v107[2] = v23;
  v37 = *(v0 + 745);
  v26 = v0[94];
  v28 = v0[95];
  v24 = v0[96];
  v139 = v46;
  v47 = v0[97];
  v36 = v0[98];
  v109[0] = v35;
  v109[1] = v54;
  v109[2] = v52;
  v109[3] = v51;
  v109[4] = v50;
  v110 = v49;
  v111 = v48;
  v114 = v55;
  v115 = v61;
  v116 = v60;
  v117 = v59;
  v118 = v58;
  v119 = v57;
  v120 = v56;
  v123 = v6;
  v124 = v7;
  v125 = v8;
  v126 = v9;
  v127 = v10;
  v128 = v34;
  v129 = v62;
  v132 = v12;
  v133 = v33;
  v134 = v32;
  v135 = v31;
  v136 = v30;
  v137 = v29;
  v138 = v53;
  if (sub_217668FD4(v109) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    v91 = v35;
    v92 = v54;
    v93 = v52;
    v94 = v51;
    v95 = v50;
    v96 = v49;
    v97 = v48 & 1;
    sub_217265760();
    v84 = v55;
    v85 = v61;
    v86 = v60;
    v87 = v59;
    v88 = v58;
    v89 = v57;
    v90 = v56 & 1;
    sub_217265760();
    v77 = v6;
    v78 = v7;
    v79 = v8;
    v80 = v9;
    v81 = v10;
    v82 = v34;
    v83 = v62 & 1;
    sub_217265760();
    v70 = v12;
    v71 = v33;
    v72 = v32;
    v73 = v31;
    v74 = v30;
    v75 = v29;
    v76 = v53 & 1;
    sub_217265760();
  }

  if (v38)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v67 = v98;
    v68 = v99;
    v69[0] = v100[0];
    *(v69 + 9) = *(v100 + 9);
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v39 != 1)
  {
    OUTLINED_FUNCTION_24();
    if (v39)
    {
      OUTLINED_FUNCTION_24();
      sub_2172822A0(v2, v39);
      if (v40)
      {
LABEL_10:
        OUTLINED_FUNCTION_24();
        sub_2172822A0(v2, v40);
        goto LABEL_13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v40)
      {
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_13:
  if (v41 == 2)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v66, __dst, sizeof(v66));
    OUTLINED_FUNCTION_24();
    sub_21766C74C();
  }

  if (v42)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v43)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v44)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v45)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  sub_217265660();
  if (v37)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v24 != 1)
  {
    OUTLINED_FUNCTION_24();
    if (v28)
    {
      OUTLINED_FUNCTION_25();
      if (v24)
      {
LABEL_34:
        OUTLINED_FUNCTION_24();
        sub_217282254(v2, v24);
        goto LABEL_40;
      }
    }

    else
    {
      OUTLINED_FUNCTION_24();
      if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v26;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x21CEA3580](v25);
      if (v24)
      {
        goto LABEL_34;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_40:
  if (!v47)
  {
    OUTLINED_FUNCTION_25();
    if (v36)
    {
      goto LABEL_42;
    }

LABEL_44:
    OUTLINED_FUNCTION_25();
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_24();
  sub_2172821BC(v2, v47);
  if (!v36)
  {
    goto LABEL_44;
  }

LABEL_42:
  OUTLINED_FUNCTION_24();
  sub_2172820A8();
LABEL_45:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudAudioAnalysis.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B638, &qword_21778B830);
  OUTLINED_FUNCTION_0_0(v80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v9 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21766BD60();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5C0, &qword_21778B808);
    v66 = 0;
    OUTLINED_FUNCTION_5_91();
    sub_21737CD60(v10);
    OUTLINED_FUNCTION_57_22();
    memcpy(v79, v67, 0xBBuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5D0, &qword_21778B810);
    v62[95] = 1;
    OUTLINED_FUNCTION_5_91();
    sub_21737CD60(v11);
    OUTLINED_FUNCTION_3_107();
    v79[12] = v63;
    v79[13] = v64;
    v79[14] = *v65;
    *(&v79[14] + 10) = *&v65[10];
    sub_21766CCAC();
    OUTLINED_FUNCTION_57_22();
    v20 = v25[0];
    v21 = v25[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5E8, &qword_21778B818);
    v61 = 3;
    OUTLINED_FUNCTION_5_91();
    sub_21737CD60(v12);
    OUTLINED_FUNCTION_57_22();
    memcpy(v78, v62, sizeof(v78));
    v57 = 4;
    OUTLINED_FUNCTION_3_107();
    *&v77[7] = v58;
    *&v77[23] = v59;
    *&v77[39] = *v60;
    *&v77[49] = *&v60[10];
    v53 = 5;
    OUTLINED_FUNCTION_3_107();
    v75[2] = v54;
    v75[3] = v55;
    *v76 = *v56;
    *&v76[10] = *&v56[10];
    v49 = 6;
    OUTLINED_FUNCTION_3_107();
    v74[2] = v50;
    v74[3] = v51;
    v75[0] = *v52;
    *(v75 + 10) = *&v52[10];
    v45 = 7;
    OUTLINED_FUNCTION_3_107();
    *&v73[17] = v46;
    *&v73[25] = v47;
    v74[0] = *v48;
    *(v74 + 10) = *&v48[10];
    v41 = 8;
    sub_21766CD00();
    OUTLINED_FUNCTION_57_22();
    *&v72[39] = v42;
    *&v72[55] = v43;
    *v73 = *v44;
    *(&v73[5] + 1) = *&v44[11];
    v37 = 9;
    OUTLINED_FUNCTION_3_107();
    v70 = v38;
    v71 = v39;
    *v72 = *v40;
    *&v72[10] = *&v40[10];
    sub_21766CD54();
    OUTLINED_FUNCTION_57_22();
    v13 = v25[0];
    v22 = v25[2];
    v23 = v25[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B608, &qword_21778B820);
    LOBYTE(v24[0]) = 11;
    sub_21766CDA8(&unk_27CB2B670);
    OUTLINED_FUNCTION_57_22();
    v14 = v25[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B620, &qword_21778B828);
    v35 = 12;
    sub_21766BF04(&unk_27CB2B680);
    OUTLINED_FUNCTION_57_22();
    v15 = OUTLINED_FUNCTION_19_41();
    v16(v15);
    v17 = v36;
    memcpy(v24, v79, 0x100uLL);
    v24[32] = v20;
    v24[33] = v21;
    memcpy(&v24[34], v78, 0x59uLL);
    memcpy(&v24[45] + 1, v77, 0x41uLL);
    OUTLINED_FUNCTION_76_16(&v24[53] + 2);
    OUTLINED_FUNCTION_27_45(v18);
    OUTLINED_FUNCTION_31_41();
    v24[94] = v13;
    v24[95] = v23;
    v24[96] = v22;
    v24[97] = v14;
    v24[98] = v17;
    memcpy(v4, v24, 0x318uLL);
    sub_21766CEBC(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v25, v79, 0x100uLL);
    v25[32] = v20;
    v25[33] = v21;
    memcpy(v26, v78, sizeof(v26));
    memcpy(v27, v77, sizeof(v27));
    OUTLINED_FUNCTION_76_16(v28);
    OUTLINED_FUNCTION_27_45(v19);
    OUTLINED_FUNCTION_31_41();
    v28[80] = v68;
    v29 = v69;
    v30 = v13;
    v31 = v23;
    v32 = v22;
    v33 = v14;
    v34 = v17;
    sub_21766CEF4(v25);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217665AE4()
{
  sub_2177531E8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  return sub_217753238();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.init(main:beginning:ending:percentDeviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2177528F8();
  OUTLINED_FUNCTION_43(v10);
  v15 = *(v11 + 32);
  v15(a5, a1, v10);
  v12 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute();
  v15(a5 + v12[11], a2, v10);
  v15(a5 + v12[12], a3, v10);
  v13 = a5 + v12[13];

  return (v15)(v13, a4, v10);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.main.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_93();

  return v5(v4);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.beginning.getter(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_68_22();

  return v6(v5);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.ending.getter(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_68_22();

  return v6(v5);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.percentDeviation.getter(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_68_22();

  return v6(v5);
}

uint64_t sub_217665DC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000002177B4660 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_217665F28(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x6E696E6E69676562;
      break;
    case 2:
      result = 0x676E69646E65;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_217665FA8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_217230430(*a1, *a2);
}

uint64_t sub_217665FC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2172A6C2C(*v1);
}

uint64_t sub_217665FD0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_217230440(a1, *v2);
}

uint64_t sub_217665FE0(uint64_t a1, void *a2)
{
  sub_2177531E8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_217230440(v8, *v2);
  return sub_217753238();
}

unint64_t sub_21766602C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_217665F28(*v1);
}

uint64_t sub_21766603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_217665DC4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_217666070(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *v1;
  return OUTLINED_FUNCTION_98_0();
}

uint64_t sub_217666098@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_2172D6288();
  *a2 = result;
  return result;
}

uint64_t sub_2176660CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217666120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void CloudAudioAnalysis.CloudCompositeAttribute.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v6 = v4[2];
  v5 = v4[3];
  v23[0] = v4;
  v23[1] = v6;
  v7 = v4[4];
  type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute.CodingKeys();
  OUTLINED_FUNCTION_35_35();
  v8 = sub_217752F98();
  OUTLINED_FUNCTION_0_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v23 - v15;
  v17 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2177532F8();
  OUTLINED_FUNCTION_18_51();
  v18 = v25;
  sub_217752F38();
  if (!v18)
  {
    v19 = v23[0];
    v20 = *(v23[0] + 44);
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
    v21 = *(v19 + 48);
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
    v22 = *(v19 + 52);
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
  }

  (*(v10 + 8))(v16, v8);
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudCompositeAttribute.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v52 = v7;
  v61 = sub_2177528F8();
  v8 = OUTLINED_FUNCTION_0_0(v61);
  v55 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  OUTLINED_FUNCTION_31();
  v53 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_99();
  v54 = v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_99();
  v56 = v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20, v21);
  v60 = v50 - v22;
  type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute.CodingKeys();
  OUTLINED_FUNCTION_35_35();
  v59 = sub_217752ED8();
  OUTLINED_FUNCTION_0_0(v59);
  v57 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26, v27);
  v29 = v50 - v28;
  v58 = v4;
  v62 = v2;
  v30 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute();
  OUTLINED_FUNCTION_0_0(v30);
  v51 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34, v35);
  v37 = v50 - v36;
  v38 = v6[4];
  OUTLINED_FUNCTION_160(v6, v6[3]);
  v63 = v29;
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v39 = v56;
    v64 = v37;
    v40 = v6;
    v41 = v61;
    OUTLINED_FUNCTION_39_29();
    sub_217752E58();
    v42 = v60;
    v60 = *(v55 + 32);
    (v60)(v64, v42, v41);
    OUTLINED_FUNCTION_50_27();
    v43 = v39;
    OUTLINED_FUNCTION_39_29();
    sub_217752E58();
    v44 = v64;
    (v60)(&v64[v30[11]], v43, v61);
    v45 = v54;
    OUTLINED_FUNCTION_39_29();
    v50[1] = 0;
    sub_217752E58();
    v56 = v40;
    (v60)(&v44[v30[12]], v45, v61);
    v46 = v53;
    sub_217752E58();
    v47 = OUTLINED_FUNCTION_25_53();
    v48(v47, v59);
    (v60)(&v44[v30[13]], v46, v61);
    v49 = v51;
    (*(v51 + 16))(v52, v44, v30);
    __swift_destroy_boxed_opaque_existential_1(v56);
    (*(v49 + 8))(v44, v30);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

void sub_2176667E0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  CloudAudioAnalysis.CloudCompositeAttribute.init(from:)();
}

uint64_t CloudAudioAnalysis.CloudStatistics.peak.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2176668D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1801545072 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2176669E8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 1801545072;
}

uint64_t sub_217666A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176668D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217666A60(uint64_t a1)
{
  v2 = sub_21766CF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217666A9C(uint64_t a1)
{
  v2 = sub_21766CF54();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudStatistics.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B690, &qword_21778B838);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_74_16();
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v12 = v4[3];
  v13 = v4[4];
  OUTLINED_FUNCTION_13_61(v4);
  sub_21766CF54();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  OUTLINED_FUNCTION_84_14();
  sub_217752F18();
  if (!v1)
  {
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudStatistics.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_217753208();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *v0;
    sub_217753208();
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CEA3580](v10);
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x21CEA3580](v6);
      if (!v4)
      {
        goto LABEL_7;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (v4)
  {
    return sub_217753208();
  }

LABEL_7:
  sub_217753208();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x21CEA3580](v7);
}

uint64_t CloudAudioAnalysis.CloudStatistics.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_238();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CEA3580](v7);
  }

  if (v4)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEA3580](v8);
  }

  if (v6)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudStatistics.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6A0, &qword_21778B840);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766CF54();
  OUTLINED_FUNCTION_23_49();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_54();
    v10 = sub_217752E38();
    v12 = v11;
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_17_54();
    v13 = sub_217752E38();
    v18 = v14;
    v17 = v13;
    OUTLINED_FUNCTION_17_54();
    sub_217752E38();
    v15 = OUTLINED_FUNCTION_71_18();
    v16(v15);
    *v3 = v10;
    *(v3 + 8) = v12 & 1;
    *(v3 + 16) = v17;
    *(v3 + 24) = v18 & 1;
    *(v3 + 32) = v1;
    *(v3 + 40) = v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217666F84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_2177531E8();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CEA3580](v7);
  }

  if (v4)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEA3580](v8);
  }

  if (v6)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
  }

  return sub_217753238();
}

__n128 CloudAudioAnalysis.CloudCompositeAttributeTonality.init(tonic:mode:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (v4 == 3)
    {
      if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6 == 3 || (sub_217706E6C(v4, v6) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v5)
  {

    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_217667134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696E6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2176671F8(char a1)
{
  if (a1)
  {
    return 1701080941;
  }

  else
  {
    return 0x63696E6F74;
  }
}

uint64_t sub_217667244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217667134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21766726C(uint64_t a1)
{
  v2 = sub_21766CFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176672A8(uint64_t a1)
{
  v2 = sub_21766CFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudCompositeAttributeTonality.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6A8, &qword_21778B848);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  v12 = *v0;
  v13 = v0[1];
  v16 = *(v0 + 16);
  v14 = v4[3];
  v15 = v4[4];
  OUTLINED_FUNCTION_13_61(v4);
  sub_21766CFA8();
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  sub_21766CFFC();
  OUTLINED_FUNCTION_82_13();
  sub_217752F38();

  if (!v1)
  {
    sub_21766D050();
    OUTLINED_FUNCTION_82_13();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  if (v1 == 3)
  {
    return sub_217753208();
  }

  sub_217753208();
  OUTLINED_FUNCTION_83_18();
  sub_217751FF8();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v3 != 3)
  {
    OUTLINED_FUNCTION_83_18();
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudCompositeAttributeTonality.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6C8, &qword_21778B850);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766CFA8();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_21766D0A4();
    OUTLINED_FUNCTION_38_33();
    sub_217752E58();
    sub_21766D0F8();
    OUTLINED_FUNCTION_38_33();
    sub_217752E58();
    v10 = OUTLINED_FUNCTION_1_37();
    v11(v10);
    *v4 = v12;
    *(v4 + 8) = v13;
    *(v4 + 16) = v12;
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176677F4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2177531E8();
  CloudAudioAnalysis.CloudCompositeAttributeTonality.hash(into:)();
  return sub_217753238();
}

uint64_t CloudAudioAnalysis.CloudEventTimes.init(beatsInMilliseconds:barsInMilliseconds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudEventTimes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (!v6 || (sub_2172717F0(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_56_0();
      if (sub_2172717F0(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2176678CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B4680 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002177B46A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_2176679A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2176679E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176678CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217667A08(uint64_t a1)
{
  v2 = sub_21766D14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217667A44(uint64_t a1)
{
  v2 = sub_21766D14C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudEventTimes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6E0, &qword_21778B858);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_87_2();
  v11 = *v0;
  v16 = v0[1];
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_13_61(v3);
  v14 = sub_21766D14C();
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
  OUTLINED_FUNCTION_33_41();
  sub_21766D1A0(v15);
  OUTLINED_FUNCTION_44_2();
  sub_217752F38();

  if (!v14)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudEventTimes.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (!*v1)
  {
    sub_217753208();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_217753208();
    return;
  }

  sub_217753208();
  sub_2172822A0(a1, v4);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_217753208();

  sub_2172822A0(a1, v3);
}

uint64_t CloudAudioAnalysis.CloudEventTimes.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_2172822A0(v4, v2);
  }

  sub_217753208();
  if (v1)
  {
    sub_2172822A0(v4, v1);
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudEventTimes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B700, &qword_21778B868);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766D14C();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_32();
    sub_21766D1A0(v23);
    OUTLINED_FUNCTION_54_21();
    OUTLINED_FUNCTION_54_21();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
    v15[1] = a10;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217667F28()
{
  v3 = *v0;
  sub_2177531E8();
  CloudAudioAnalysis.CloudEventTimes.hash(into:)(v2);
  return sub_217753238();
}

void __swiftcall CloudAudioAnalysis.CloudFades.init(fadeIn:fadeOut:)(MusicKit::CloudAudioAnalysis::CloudFades *__return_ptr retstr, MusicKit::CloudAudioAnalysis::CloudTimeRange_optional *fadeIn, MusicKit::CloudAudioAnalysis::CloudTimeRange_optional *fadeOut)
{
  v3 = *(&fadeIn->value.endInMilliseconds.value + 7);
  v4 = BYTE5(fadeIn[1].value.startInMilliseconds.value);
  v6 = *(&fadeOut->value.endInMilliseconds.value + 7);
  v7 = BYTE5(fadeOut[1].value.startInMilliseconds.value);
  v5 = BYTE6(fadeIn[1].value.startInMilliseconds.value);
  v8 = BYTE6(fadeOut[1].value.startInMilliseconds.value);
  *&retstr->fadeIn.value.startInMilliseconds.value = *&fadeIn->value.startInMilliseconds.value;
  *(&retstr->fadeIn.value.endInMilliseconds.value + 7) = v3;
  BYTE5(retstr->fadeOut.value.startInMilliseconds.value) = v4;
  BYTE6(retstr->fadeOut.value.startInMilliseconds.value) = v5;
  *(&retstr->fadeOut.value.endInMilliseconds.value + 4) = *&fadeOut->value.startInMilliseconds.value;
  *(&retstr[1].fadeIn.value.endInMilliseconds.value + 1) = v6;
  retstr[1].fadeIn.is_nil = v7;
  LOBYTE(retstr[1].fadeOut.value.startInMilliseconds.value) = v8;
}

void CloudAudioAnalysis.CloudFades.fadeIn.getter(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[1].n128_u8[9];
  OUTLINED_FUNCTION_49_28(a1, *v1);
}

void CloudAudioAnalysis.CloudFades.fadeOut.getter(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  v4 = v1[3].n128_u8[9];
  OUTLINED_FUNCTION_49_28(a1, v1[2]);
}

BOOL static CloudAudioAnalysis.CloudFades.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a2 + 40);
  if (*(a1 + 25))
  {
    if ((*(a2 + 25) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (*(a2 + 25))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10 & 1 | (*a1 != *a2))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v6)
    {
      return (*(a2 + 57) & 1) != 0;
    }

    if ((*(a2 + 57) & 1) == 0)
    {
      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          return 0;
        }

LABEL_22:
        if (v5)
        {
          if (*(a2 + 56))
          {
            return 1;
          }
        }

        else if ((*(a2 + 56) & 1) == 0 && v4 == *(a2 + 48))
        {
          return 1;
        }

        return 0;
      }

      if (!(v7 & 1 | (v2 != *(a2 + 32))))
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0 && v9 == *(a2 + 16))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2176680C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21766818C(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_2176681C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176680C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176681F0(uint64_t a1)
{
  v2 = sub_21766D1F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21766822C(uint64_t a1)
{
  v2 = sub_21766D1F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudFades.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B710, &qword_21778B870);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_87_2();
  v22 = *v0;
  v9 = *(v0 + 2);
  v10 = *(v0 + 24);
  v11 = *(v0 + 25);
  v20 = *(v0 + 5);
  v21 = *(v0 + 4);
  v19 = *(v0 + 6);
  v23 = *(v0 + 56);
  v18 = *(v0 + 57);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160(v14, v15);
  sub_21766D1F4();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  sub_21766BEB0();
  OUTLINED_FUNCTION_82_13();
  sub_217752F38();
  if (!v1)
  {
    OUTLINED_FUNCTION_82_13();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  v16 = OUTLINED_FUNCTION_58_20();
  v17(v16, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudFades.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v0 + 56);
  v5 = *(v0 + 57);
  if (*(v0 + 25) != 1)
  {
    v6 = *v0;
    v7 = v0[2];
    v8 = *(v0 + 24);
    v9 = *(v0 + 2);
    sub_217753208();
    if (v9)
    {
      sub_217753208();
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        sub_217753208();
        MEMORY[0x21CEA3550](v7);
        if (v5)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_217753208();
  if ((v2 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v1);
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    goto LABEL_13;
  }

  sub_217753208();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_217753208();
  MEMORY[0x21CEA3550](v3);
LABEL_13:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudAudioAnalysis.CloudFades.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = v0[5];
  v11 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  OUTLINED_FUNCTION_238();
  if (v5 != 1)
  {
    OUTLINED_FUNCTION_1_35();
    if (v2)
    {
      sub_217753208();
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if ((v4 & 1) == 0)
      {
LABEL_4:
        OUTLINED_FUNCTION_1_35();
        MEMORY[0x21CEA3550](v3);
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_8:
  OUTLINED_FUNCTION_1_35();
  if ((v7 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    return sub_217753238();
  }

  sub_217753208();
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_1_35();
  MEMORY[0x21CEA3550](v11);
  return sub_217753238();
}

void CloudAudioAnalysis.CloudFades.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B720, &qword_21778B878);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766D1F4();
  OUTLINED_FUNCTION_23_49();
  if (!v1)
  {
    sub_21766CE14();
    OUTLINED_FUNCTION_63_22();
    OUTLINED_FUNCTION_63_22();
    v8 = OUTLINED_FUNCTION_1_3();
    v9(v8);
    *v2 = v10;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;
    *(v2 + 25) = v13;
    *(v2 + 32) = v10;
    *(v2 + 48) = v11;
    *(v2 + 56) = v12;
    *(v2 + 57) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176687F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = v0[5];
  v11 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  sub_2177531E8();
  if (v5 != 1)
  {
    sub_217753208();
    if (v2)
    {
      sub_217753208();
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if ((v4 & 1) == 0)
      {
LABEL_4:
        sub_217753208();
        MEMORY[0x21CEA3550](v3);
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_217753208();
  if ((v7 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    return sub_217753238();
  }

  sub_217753208();
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_217753208();
  MEMORY[0x21CEA3550](v11);
  return sub_217753238();
}

uint64_t static CloudAudioAnalysis.CloudTimeRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2176689B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B46C0 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002177B46E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_217668A8C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_217668ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176689B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217668AF4(uint64_t a1)
{
  v2 = sub_21766D248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217668B30(uint64_t a1)
{
  v2 = sub_21766D248();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudTimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B728, &qword_21778B880);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_87_2();
  v9 = *v0;
  v10 = *(v0 + 8);
  v14 = v0[2];
  v15 = *(v0 + 24);
  v11 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21766D248();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F28();
  if (!v1)
  {
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_44_2();
    sub_217752F28();
  }

  v12 = OUTLINED_FUNCTION_58_20();
  v13(v12, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudTimeRange.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v3 == 1)
  {
    sub_217753208();
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      return MEMORY[0x21CEA3550](v1);
    }
  }

  else
  {
    v5 = *v0;
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_217753208();
}

uint64_t CloudAudioAnalysis.CloudTimeRange.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2 != 1)
  {
    MEMORY[0x21CEA3550](v1);
  }

  sub_217753208();
  if (!v4)
  {
    MEMORY[0x21CEA3550](v3);
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudTimeRange.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B738, &qword_21778B888);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766D248();
  OUTLINED_FUNCTION_23_49();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_54();
    v10 = sub_217752E48();
    v12 = v11;
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_17_54();
    sub_217752E48();
    v13 = OUTLINED_FUNCTION_71_18();
    v14(v13);
    *v3 = v10;
    *(v3 + 8) = v12 & 1;
    *(v3 + 16) = v1;
    *(v3 + 24) = v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

BOOL static CloudAudioAnalysis.CloudLoudnessCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && (sub_217271798(v5, v7) & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217668FD4(uint64_t a1)
{
  if (*(a1 + 186))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217668FF0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_217669034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002177B4700 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_217669100(char a1)
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](a1 & 1);
  return sub_217753238();
}

uint64_t sub_217669140(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217669178(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176691CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217669034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176691F4(uint64_t a1)
{
  v2 = sub_21766D29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217669230(uint64_t a1)
{
  v2 = sub_21766D29C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudLoudnessCurve.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B740, &unk_21778B890);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_87_2();
  v9 = *v0;
  v10 = *(v0 + 8);
  v15 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21766D29C();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F18();
  if (!v1)
  {
    OUTLINED_FUNCTION_50_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_21766D2F0(v12);
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  v13 = OUTLINED_FUNCTION_58_20();
  v14(v13, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  if (v2 != 1)
  {
    v5 = *v0;
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEA3580](v6);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_217753208();
    return;
  }

  sub_217753208();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_217753208();
  v3 = OUTLINED_FUNCTION_56_0();

  sub_217282254(v3, v4);
}

uint64_t CloudAudioAnalysis.CloudLoudnessCurve.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  sub_2177531E8();
  CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.CloudLoudnessCurve.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B760, &qword_21778B8A0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766D29C();
  OUTLINED_FUNCTION_23_49();
  if (!v1)
  {
    OUTLINED_FUNCTION_17_54();
    v8 = sub_217752E38();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_32();
    sub_21766D2F0(v11);
    sub_217752E58();
    v12 = OUTLINED_FUNCTION_1_3();
    v13(v12);
    *v2 = v8;
    *(v2 + 8) = v10 & 1;
    *(v2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766968C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  sub_2177531E8();
  CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)();
  return sub_217753238();
}

uint64_t CloudAudioAnalysis.CloudVocalStrength.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21766978C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_15();
  sub_2177532A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_160(v10, v10[3]);
    OUTLINED_FUNCTION_15();
    v6 = sub_217753078();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21766985C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_15();
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_217669974@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

__n128 CloudAudioAnalysis.CloudVocalActivity.init(startInMilliseconds:endInMilliseconds:strength:kind:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_90_16(a1, a2, a3, a4, a5);
  result = *v5;
  v8 = *v7;
  *(v9 + 32) = *v5;
  *(v9 + 48) = v8;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudVocalActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v15 = *(a2 + 24);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = v7 == *(a2 + 32) && v8 == v11;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      return 0;
    }
  }

  if (!v10)
  {
    if (!v12)
    {

      return 1;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v9 != v13 || v10 != v12)
  {
    OUTLINED_FUNCTION_93();
    if ((sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217669AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B46C0 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002177B46E0 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_217669C64(char a1)
{
  result = 0x6874676E65727473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 1684957547;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_217669CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217669AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217669D1C(uint64_t a1)
{
  v2 = sub_21766D344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217669D58(uint64_t a1)
{
  v2 = sub_21766D344();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.CloudVocalActivity.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B770, &qword_21778B8A8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_74_16();
  v18 = v0[4];
  v16 = v0[6];
  v17 = v0[5];
  v15 = v0[7];
  v12 = v4[3];
  v13 = v4[4];
  OUTLINED_FUNCTION_13_61(v4);
  sub_21766D344();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  OUTLINED_FUNCTION_84_14();
  sub_217752F28();
  if (!v1)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752F28();
    v14 = sub_21766D398();
    sub_217751DE8();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();

    if (!v14)
    {
      sub_21766D3EC();
      sub_217751DE8();
      OUTLINED_FUNCTION_44_2();
      sub_217752F38();
    }
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudVocalActivity.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  if (v7 == 1)
  {
    sub_217753208();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *v0;
    sub_217753208();
    MEMORY[0x21CEA3550](v9);
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_217753208();
      if (v6)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_217753208();
  OUTLINED_FUNCTION_154();
  sub_217751FF8();
  if (!v6)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();
  OUTLINED_FUNCTION_56_0();

  return sub_217751FF8();
}

uint64_t CloudAudioAnalysis.CloudVocalActivity.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.CloudVocalActivity.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.CloudVocalActivity.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B790, &qword_21778B8B0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_6_91();
  sub_21766D344();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_91_15();
    v32 = v11 & 1;
    LOBYTE(v25) = 1;
    v12 = OUTLINED_FUNCTION_91_15();
    v31 = v13 & 1;
    sub_21766D440();
    sub_217752E58();
    v20 = v25;
    sub_21766D494();
    OUTLINED_FUNCTION_38_33();
    sub_217752E58();
    v14 = OUTLINED_FUNCTION_1_37();
    v15(v14);
    v16 = v30;
    *&v21 = v10;
    BYTE8(v21) = v32;
    *&v22 = v12;
    v17 = v31;
    BYTE8(v22) = v31;
    v23 = v25;
    v24 = v30;
    v18 = v22;
    *v4 = v21;
    v4[1] = v18;
    v19 = v24;
    v4[2] = v23;
    v4[3] = v19;
    sub_217283A4C(&v21, &v25);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *&v25 = v10;
    BYTE8(v25) = v32;
    v26 = v12;
    v27 = v17;
    v28 = v20;
    v29 = v16;
    sub_217283AA8(&v25);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766A344()
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudVocalActivity.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21766A388(uint64_t a1)
{
  v2 = sub_21766D4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21766A3C4(uint64_t a1)
{
  v2 = sub_21766D4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21766A468(uint64_t a1)
{
  v2 = sub_21766D53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21766A4A4(uint64_t a1)
{
  v2 = sub_21766D53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21766A5A0(uint64_t a1)
{
  v2 = sub_21766D590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21766A5DC(uint64_t a1)
{
  v2 = sub_21766D590();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21766A65C()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_128();
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  v12 = OUTLINED_FUNCTION_1_37();
  v13(v12);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudAudioAnalysis.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudAudioAnalysis.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_85_15();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x318uLL);
  return sub_21766CEBC(v8, v7);
}

uint64_t sub_21766A8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_27CB23B80 != -1)
  {
    swift_once();
  }

  v1 = unk_27CB26FB0;
  v2 = byte_27CB26FB8;
  *(v0 + 32) = qword_27CB26FA8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2B598 = v0;

  return sub_217751DE8();
}

void static CloudAudioAnalysis.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = *(v2 + 1);
  memcpy(__dst, v2 + 16, sizeof(__dst));
  v6 = v3[808];
  v19 = v3[810];
  v20 = v3[809];
  v7 = *v1;
  v8 = v1[1];
  OUTLINED_FUNCTION_85_15();
  memcpy(v9, v10, v11);
  v12 = *(v1 + 808);
  v13 = *(v1 + 809);
  v14 = *(v1 + 810);
  v15 = v4 == v7 && v5 == v8;
  if (v15 || (sub_217753058() & 1) != 0)
  {
    sub_21766CEBC(__dst, v21);
    sub_21766CEBC(v25, v21);
    static CloudAudioAnalysis.Attributes.== infix(_:_:)();
    OUTLINED_FUNCTION_85_15();
    memcpy(v16, v17, v18);
    sub_21766CEF4(v22);
    memcpy(v23, v3 + 16, sizeof(v23));
    sub_21766CEF4(v23);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21766AAB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21766AB4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21766ABA0(uint64_t a1)
{
  v2 = sub_21766D5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21766ABDC(uint64_t a1)
{
  v2 = sub_21766D5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAudioAnalysis.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B7D8, &qword_21778B8D0);
  OUTLINED_FUNCTION_0_0(v4);
  v27 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_85_15();
  memcpy(v14, v15, v16);
  v17 = *(v0 + 808);
  v25 = *(v0 + 809);
  v26 = v17;
  v24 = *(v0 + 810);
  v18 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21766D5E4();
  sub_217751DE8();
  v19 = v11;
  sub_2177532F8();
  v32[0] = v12;
  v32[1] = v13;
  LOBYTE(v30[0]) = 0;
  sub_2172E1B18();
  sub_217752F88();
  if (v1)
  {

    (*(v27 + 8))(v11, v4);
  }

  else
  {
    v21 = v25;
    v20 = v26;
    v22 = v27;

    memcpy(v32, v33, sizeof(v32));
    v31 = 1;
    sub_21766CEBC(v33, v30);
    sub_21766D638();
    OUTLINED_FUNCTION_44_28();
    sub_217752F88();
    memcpy(v30, v32, sizeof(v30));
    sub_21766CEF4(v30);
    v29 = v20;
    v28 = 2;
    sub_21766D68C();
    OUTLINED_FUNCTION_44_28();
    sub_217752F38();
    v29 = v21;
    v28 = 3;
    sub_21766D6E0();
    OUTLINED_FUNCTION_44_28();
    sub_217752F38();
    v29 = v24;
    v28 = 4;
    sub_21766D734();
    OUTLINED_FUNCTION_44_28();
    sub_217752F38();
    (*(v22 + 8))(v19, v4);
  }

  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 808);
  v4 = *(v0 + 809);
  v5 = *(v0 + 810);
  sub_217751FF8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CloudAudioAnalysis.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 808);
  v4 = *(v0 + 809);
  v5 = *(v0 + 810);
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CloudAudioAnalysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B808, &qword_21778B8D8);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  v21 = v13[3];
  v22 = v13[4];
  OUTLINED_FUNCTION_13_61(v13);
  sub_21766D5E4();
  sub_2177532C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_2172E1C68();
    OUTLINED_FUNCTION_40_33();
    sub_217752EA8();
    v23 = v28;
    v26 = v29;
    sub_21766D788();
    OUTLINED_FUNCTION_40_33();
    sub_217752EA8();
    memcpy(v32, v31, sizeof(v32));
    sub_21766D7DC();
    sub_217752E58();
    v33 = v28;
    LOBYTE(v27[0]) = 3;
    sub_21766D830();
    OUTLINED_FUNCTION_40_33();
    sub_217752E58();
    v34 = v28;
    sub_21766D884();
    OUTLINED_FUNCTION_40_33();
    sub_217752E58();
    v24 = OUTLINED_FUNCTION_69_19();
    v25(v24);
    v27[0] = v23;
    v27[1] = v26;
    memcpy(&v27[2], v32, 0x318uLL);
    LOBYTE(v27[101]) = v33;
    BYTE1(v27[101]) = v34;
    BYTE2(v27[101]) = a11;
    memcpy(v15, v27, 0x32BuLL);
    sub_21766D8D8(v27, &v28);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v28 = v23;
    v29 = v26;
    memcpy(v30, v32, 0x318uLL);
    v30[792] = v33;
    v30[793] = v34;
    v30[794] = a11;
    sub_21766D910(&v28);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766B384()
{
  sub_2177531E8();
  CloudAudioAnalysis.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21766B3C0(__int128 *a1, uint64_t *a2)
{
  v4 = *(a2 + 41);
  if ((*(a1 + 41) & 1) == 0)
  {
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v9 = a2[4];
    v10 = *(a2 + 40);
    v11 = *(a1 + 40);
    v12 = *(a1 + 4);
    v13 = a1[1];
    v51 = *a1;
    v52 = v13;
    v53 = v12;
    v54 = v11;
    v55 = 0;
    if (v4)
    {
      return 0;
    }

    v45 = v6;
    v46 = v5 & 1;
    v47 = v8;
    v48 = v7 & 1;
    v49 = v9;
    v50 = v10 & 1;
    if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v14 = *(a2 + 89);
    if (*(a1 + 89))
    {
      if ((*(a2 + 89) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v16 = a2[6];
      v15 = a2[7];
      v18 = a2[8];
      v17 = a2[9];
      v19 = a2[10];
      v20 = *(a2 + 88);
      v21 = *(a1 + 88);
      v22 = *(a1 + 10);
      v23 = a1[4];
      v51 = a1[3];
      v52 = v23;
      v53 = v22;
      v54 = v21;
      v55 = 0;
      if (v14)
      {
        return 0;
      }

      v45 = v16;
      v46 = v15 & 1;
      v47 = v18;
      v48 = v17 & 1;
      v49 = v19;
      v50 = v20 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    v24 = *(a2 + 137);
    if (*(a1 + 137))
    {
      if ((*(a2 + 137) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v26 = a2[12];
      v25 = a2[13];
      v28 = a2[14];
      v27 = a2[15];
      v29 = a2[16];
      v30 = *(a2 + 136);
      v31 = *(a1 + 136);
      v32 = *(a1 + 16);
      v33 = a1[7];
      v51 = a1[6];
      v52 = v33;
      v53 = v32;
      v54 = v31;
      v55 = 0;
      if (v24)
      {
        return 0;
      }

      v45 = v26;
      v46 = v25 & 1;
      v47 = v28;
      v48 = v27 & 1;
      v49 = v29;
      v50 = v30 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    v34 = *(a2 + 185);
    if (*(a1 + 185))
    {
      if ((*(a2 + 185) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v36 = a2[18];
      v35 = a2[19];
      v38 = a2[20];
      v37 = a2[21];
      v39 = a2[22];
      v40 = *(a2 + 184);
      v41 = *(a1 + 184);
      v42 = *(a1 + 22);
      v43 = a1[10];
      v51 = a1[9];
      v52 = v43;
      v53 = v42;
      v54 = v41;
      v55 = 0;
      if (v34)
      {
        return 0;
      }

      v45 = v36;
      v46 = v35 & 1;
      v47 = v38;
      v48 = v37 & 1;
      v49 = v39;
      v50 = v40 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 41))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_21766B5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_21766B684(__int128 *a1, __int128 *a2)
{
  v49 = *a1;
  v4 = *(a1 + 16);
  v50 = v4;
  v6 = *(&v49 + 1);
  v5 = v49;
  v47 = *a2;
  v7 = *(a2 + 16);
  v48 = v7;
  v8 = *(&v47 + 1);
  v9 = v47;
  if (*(&v49 + 1) == 1)
  {
    if (*(&v47 + 1) != 1)
    {
      sub_21738C4B0(&v49, &v45, &qword_27CB2BAA8, &unk_21778D680);
      v12 = &v47;
      v13 = &v45;
      goto LABEL_22;
    }

    sub_21738C4B0(&v49, &v45, &qword_27CB2BAA8, &unk_21778D680);
    sub_21738C4B0(&v47, &v45, &qword_27CB2BAA8, &unk_21778D680);
    sub_217283988(v5, 1);
  }

  else
  {
    v45 = v49;
    v46 = v4;
    if (*(&v47 + 1) == 1)
    {
      sub_21738C4B0(&v49, &v43, &qword_27CB2BAA8, &unk_21778D680);
      v10 = &v47;
      v11 = &v43;
      goto LABEL_20;
    }

    v43 = v47;
    v44 = v7;
    sub_21738C4B0(&v49, &v41, &qword_27CB2BAA8, &unk_21778D680);
    sub_21738C4B0(&v47, &v41, &qword_27CB2BAA8, &unk_21778D680);
    sub_2171FB568(v5, v6);
    v14 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v45, &v43);

    sub_217283988(v5, v6);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v45 = *(a1 + 24);
  v15 = *(a1 + 40);
  v46 = v15;
  v6 = *(&v45 + 1);
  v5 = v45;
  v43 = *(a2 + 24);
  v16 = *(a2 + 40);
  v44 = v16;
  v8 = *(&v43 + 1);
  v9 = v43;
  if (*(&v45 + 1) == 1)
  {
    if (*(&v43 + 1) == 1)
    {
      sub_21738C4B0(&v45, &v41, &qword_27CB2BAA8, &unk_21778D680);
      sub_21738C4B0(&v43, &v41, &qword_27CB2BAA8, &unk_21778D680);
      sub_217283988(v5, 1);
LABEL_15:
      v41 = a1[3];
      v18 = *(a1 + 64);
      v42 = v18;
      v6 = *(&v41 + 1);
      v5 = v41;
      v39 = a2[3];
      v19 = *(a2 + 64);
      v40 = v19;
      v8 = *(&v39 + 1);
      v9 = v39;
      if (*(&v41 + 1) == 1)
      {
        if (*(&v39 + 1) == 1)
        {
          sub_21738C4B0(&v41, &v37, &qword_27CB2BAA8, &unk_21778D680);
          sub_21738C4B0(&v39, &v37, &qword_27CB2BAA8, &unk_21778D680);
          sub_217283988(v5, 1);
LABEL_28:
          v37 = *(a1 + 72);
          v25 = *(a1 + 88);
          v38 = v25;
          v26 = v37;
          v35 = *(a2 + 72);
          v27 = *(a2 + 88);
          v36 = v27;
          v28 = v35;
          if (*(&v37 + 1) == 1)
          {
            if (*(&v35 + 1) == 1)
            {
              sub_21738C4B0(&v37, &v33, &qword_27CB2BAA8, &unk_21778D680);
              sub_21738C4B0(&v35, &v33, &qword_27CB2BAA8, &unk_21778D680);
              v22 = 1;
              sub_217283988(v26, 1);
              return v22;
            }

            sub_21738C4B0(&v37, &v33, &qword_27CB2BAA8, &unk_21778D680);
            sub_21738C4B0(&v35, &v33, &qword_27CB2BAA8, &unk_21778D680);
          }

          else
          {
            v33 = v37;
            v34 = v25;
            if (*(&v35 + 1) != 1)
            {
              v31 = v35;
              v32 = v27;
              sub_21738C4B0(&v37, v30, &qword_27CB2BAA8, &unk_21778D680);
              sub_21738C4B0(&v35, v30, &qword_27CB2BAA8, &unk_21778D680);
              sub_2171FB568(v26, *(&v26 + 1));
              v29 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v33, &v31);

              sub_217283988(v26, *(&v26 + 1));
              return (v29 & 1) != 0;
            }

            sub_21738C4B0(&v37, &v31, &qword_27CB2BAA8, &unk_21778D680);
            sub_21738C4B0(&v35, &v31, &qword_27CB2BAA8, &unk_21778D680);
            sub_2171FB568(v26, *(&v26 + 1));
          }

          sub_217283988(v26, *(&v26 + 1));
          v21 = *(&v28 + 1);
          v20 = v28;
          goto LABEL_24;
        }

        sub_21738C4B0(&v41, &v37, &qword_27CB2BAA8, &unk_21778D680);
        v12 = &v39;
        v13 = &v37;
        goto LABEL_22;
      }

      v37 = v41;
      v38 = v18;
      if (*(&v39 + 1) != 1)
      {
        v35 = v39;
        v36 = v19;
        sub_21738C4B0(&v41, &v33, &qword_27CB2BAA8, &unk_21778D680);
        sub_21738C4B0(&v39, &v33, &qword_27CB2BAA8, &unk_21778D680);
        sub_2171FB568(v5, v6);
        v24 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v37, &v35);

        sub_217283988(v5, v6);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      sub_21738C4B0(&v41, &v35, &qword_27CB2BAA8, &unk_21778D680);
      v10 = &v39;
      v11 = &v35;
LABEL_20:
      sub_21738C4B0(v10, v11, &qword_27CB2BAA8, &unk_21778D680);
      sub_2171FB568(v5, v6);

LABEL_23:
      sub_217283988(v5, v6);
      v20 = v9;
      v21 = v8;
LABEL_24:
      sub_217283988(v20, v21);
      return 0;
    }

    sub_21738C4B0(&v45, &v41, &qword_27CB2BAA8, &unk_21778D680);
    v12 = &v43;
    v13 = &v41;
LABEL_22:
    sub_21738C4B0(v12, v13, &qword_27CB2BAA8, &unk_21778D680);
    goto LABEL_23;
  }

  v41 = v45;
  v42 = v15;
  if (*(&v43 + 1) == 1)
  {
    sub_21738C4B0(&v45, &v39, &qword_27CB2BAA8, &unk_21778D680);
    v10 = &v43;
    v11 = &v39;
    goto LABEL_20;
  }

  v39 = v43;
  v40 = v16;
  sub_21738C4B0(&v45, &v37, &qword_27CB2BAA8, &unk_21778D680);
  sub_21738C4B0(&v43, &v37, &qword_27CB2BAA8, &unk_21778D680);
  sub_2171FB568(v5, v6);
  v17 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v41, &v39);

  sub_217283988(v5, v6);
  if (v17)
  {
    goto LABEL_15;
  }

  return 0;
}

unint64_t sub_21766BD60()
{
  result = qword_27CB2B5B8;
  if (!qword_27CB2B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5B8);
  }

  return result;
}

unint64_t sub_21766BDB4()
{
  result = qword_27CB2B5E0;
  if (!qword_27CB2B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5E0);
  }

  return result;
}

unint64_t sub_21766BE08()
{
  result = qword_27CB2B5F8;
  if (!qword_27CB2B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5F8);
  }

  return result;
}

unint64_t sub_21766BE5C()
{
  result = qword_27CB2B600;
  if (!qword_27CB2B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B600);
  }

  return result;
}

unint64_t sub_21766BEB0()
{
  result = qword_27CB2B618;
  if (!qword_27CB2B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B618);
  }

  return result;
}

unint64_t sub_21766BF04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B620, &qword_21778B828);
    v2();
    OUTLINED_FUNCTION_154();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766BF70()
{
  result = qword_27CB2B630;
  if (!qword_27CB2B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B630);
  }

  return result;
}

void static CloudAudioAnalysis.CloudCompositeAttribute<>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v116 = v0;
  v111 = v1;
  v112 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v118 = *(v3 - 8);
  v9 = v118[8];
  MEMORY[0x28223BE20](v7, v5);
  v113 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2177528F8();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  OUTLINED_FUNCTION_31();
  v106 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_99();
  v108 = v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_99();
  v110 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v104 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = OUTLINED_FUNCTION_0_0(TupleTypeMetadata2);
  v119 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30, v34);
  OUTLINED_FUNCTION_31();
  v107 = v35;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_99();
  v109 = v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v104 - v41;
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v104 - v46;
  v120 = v14;
  v121 = v48;
  v49 = *(v48 + 48);
  v50 = *(v14 + 16);
  v117 = v8;
  v50(&v104 - v46, v8, v11, v45);
  v115 = v6;
  (v50)(&v47[v49], v6, v11);
  OUTLINED_FUNCTION_73(v47);
  v114 = v50;
  if (v52)
  {
    OUTLINED_FUNCTION_73(&v47[v49]);
    if (v52)
    {
      v51 = OUTLINED_FUNCTION_89_18();
      (v50)(v51);
      goto LABEL_11;
    }

LABEL_9:
    (*(v119 + 8))(v47, v121);
    goto LABEL_31;
  }

  (v50)(v28, v47, v11);
  OUTLINED_FUNCTION_73(&v47[v49]);
  if (v52)
  {
    v53 = v118[1];
    v54 = OUTLINED_FUNCTION_173();
    v55(v54);
    goto LABEL_9;
  }

  v56 = v118;
  v57 = v118[4];
  v58 = OUTLINED_FUNCTION_67_18();
  v59(v58);
  v49 = sub_217751F08();
  v60 = v56[1];
  v60(v50, v4);
  v61 = OUTLINED_FUNCTION_173();
  (v60)(v61);
  v62 = OUTLINED_FUNCTION_89_18();
  (v50)(v62);
  if ((v49 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v63 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute();
  v64 = v63[11];
  OUTLINED_FUNCTION_41_34();
  v65 = v114;
  (v114)(v42);
  v66 = v115;
  v65(&v42[v49], v115 + v64, v11);
  OUTLINED_FUNCTION_73(v42);
  if (v52)
  {
    OUTLINED_FUNCTION_73(&v42[v49]);
    if (!v52)
    {
      goto LABEL_20;
    }

    v67 = OUTLINED_FUNCTION_20_46();
    (v50)(v67);
  }

  else
  {
    v68 = v110;
    v65(v110, v42, v11);
    OUTLINED_FUNCTION_73(&v42[v49]);
    if (v69)
    {
      v70 = v118[1];
      v71 = v68;
LABEL_19:
      v70(v71, v4);
LABEL_20:
      (*(v119 + 8))(v42, v121);
      goto LABEL_31;
    }

    v112 = v63;
    v72 = v68;
    v73 = v118;
    v74 = v118[4];
    v49 = v50;
    v75 = OUTLINED_FUNCTION_67_18();
    v76(v75);
    LODWORD(v111) = sub_217751F08();
    v77 = v73[1];
    v77(v50, v4);
    v78 = v72;
    v63 = v112;
    v77(v78, v4);
    v66 = v115;
    v79 = OUTLINED_FUNCTION_20_46();
    (v50)(v79);
    if ((v111 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v105 = v50;
  v80 = v63[12];
  OUTLINED_FUNCTION_41_34();
  v81 = v109;
  (v65)(v109);
  v65((v81 + v49), v66 + v80, v11);
  OUTLINED_FUNCTION_73(v81);
  if (v52)
  {
    OUTLINED_FUNCTION_73(v81 + v49);
    if (v52)
    {
      v82 = v81;
      v83 = v105;
      (v105)(v82, v11);
LABEL_33:
      v95 = v63[13];
      OUTLINED_FUNCTION_41_34();
      v42 = v107;
      (v65)(v107);
      v65(&v42[v49], v66 + v95, v11);
      OUTLINED_FUNCTION_73(v42);
      if (v52)
      {
        OUTLINED_FUNCTION_73(&v42[v49]);
        if (v52)
        {
          v96 = OUTLINED_FUNCTION_20_46();
          v83(v96);
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v65(v106, v42, v11);
      OUTLINED_FUNCTION_73(&v42[v49]);
      if (!v97)
      {
        v98 = v83;
        v99 = v118;
        v100 = v113;
        (v118[4])(v113, &v42[v49], v4);
        sub_217751F08();
        v101 = v99[1];
        v101(v100, v4);
        v102 = OUTLINED_FUNCTION_173();
        (v101)(v102);
        v103 = OUTLINED_FUNCTION_20_46();
        v98(v103);
        goto LABEL_31;
      }

      v71 = OUTLINED_FUNCTION_58_20();
      goto LABEL_19;
    }

LABEL_30:
    (*(v119 + 8))(v81, v121);
    goto LABEL_31;
  }

  v65(v108, v81, v11);
  OUTLINED_FUNCTION_73(v81 + v49);
  if (v84)
  {
    v85 = v118[1];
    v86 = OUTLINED_FUNCTION_173();
    v87(v86);
    goto LABEL_30;
  }

  v88 = v118;
  v89 = v118[4];
  v49 = v81;
  v90 = OUTLINED_FUNCTION_67_18();
  v91(v90);
  LODWORD(v115) = sub_217751F08();
  v92 = v88[1];
  v92(v81, v4);
  v93 = OUTLINED_FUNCTION_173();
  (v92)(v93);
  v94 = v81;
  v83 = v105;
  (v105)(v94, v11);
  v65 = v114;
  if (v115)
  {
    goto LABEL_33;
  }

LABEL_31:
  OUTLINED_FUNCTION_13();
}

void sub_21766C738(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  static CloudAudioAnalysis.CloudCompositeAttribute<>.== infix(_:_:)();
}

uint64_t sub_21766C74C()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    goto LABEL_5;
  }

  v2 = *v0;
  v3 = *(v0 + 16);
  sub_217753208();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  if (v3 == 3)
  {
LABEL_5:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v4 = v0[4];
  if (v4 == 1)
  {
    goto LABEL_11;
  }

  v5 = v0[3];
  v6 = *(v0 + 40);
  sub_217753208();
  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  if (v6 == 3)
  {
LABEL_11:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v7 = v0[7];
  if (v7 == 1)
  {
    goto LABEL_17;
  }

  v8 = v0[6];
  v9 = *(v0 + 64);
  sub_217753208();
  sub_217753208();
  if (v7)
  {
    sub_217751FF8();
  }

  if (v9 == 3)
  {
LABEL_17:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v10 = v0[10];
  if (v10 == 1)
  {
    return sub_217753208();
  }

  v11 = v0[9];
  v12 = *(v0 + 88);
  sub_217753208();
  sub_217753208();
  if (v10)
  {
    sub_217751FF8();
  }

  if (v12 == 3)
  {
    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
}

uint64_t sub_21766CA98()
{
  if (*(v0 + 8) == 1)
  {
    sub_217753208();
  }

  else
  {
    v1 = *v0;
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x21CEA3580](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = v0[2];
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CEA3580](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = v0[4];
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEA3580](v6);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_217753208();
  }

  v8 = v0[6];
  sub_217753208();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x21CEA3580](v9);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  sub_2177528F8();
  OUTLINED_FUNCTION_59_21();
  v6 = v2 + *(a2 + 44);
  OUTLINED_FUNCTION_59_21();
  v7 = v3 + *(a2 + 48);
  OUTLINED_FUNCTION_59_21();
  v8 = v3 + *(a2 + 52);
  return OUTLINED_FUNCTION_59_21();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute<>.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_21766CC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(v6, a2);
  return sub_217753238();
}

unint64_t sub_21766CCAC()
{
  result = qword_27CB2B650;
  if (!qword_27CB2B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B650);
  }

  return result;
}

unint64_t sub_21766CD00()
{
  result = qword_27CB2B660;
  if (!qword_27CB2B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B660);
  }

  return result;
}

unint64_t sub_21766CD54()
{
  result = qword_27CB2B668;
  if (!qword_27CB2B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B668);
  }

  return result;
}

unint64_t sub_21766CDA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B608, &qword_21778B820);
    v2();
    OUTLINED_FUNCTION_154();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766CE14()
{
  result = qword_27CB2B678;
  if (!qword_27CB2B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B678);
  }

  return result;
}

unint64_t sub_21766CE68()
{
  result = qword_27CB2B688;
  if (!qword_27CB2B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B688);
  }

  return result;
}

unint64_t sub_21766CF54()
{
  result = qword_27CB2B698;
  if (!qword_27CB2B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B698);
  }

  return result;
}

unint64_t sub_21766CFA8()
{
  result = qword_27CB2B6B0;
  if (!qword_27CB2B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6B0);
  }

  return result;
}

unint64_t sub_21766CFFC()
{
  result = qword_27CB2B6B8;
  if (!qword_27CB2B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6B8);
  }

  return result;
}

unint64_t sub_21766D050()
{
  result = qword_27CB2B6C0;
  if (!qword_27CB2B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6C0);
  }

  return result;
}

unint64_t sub_21766D0A4()
{
  result = qword_27CB2B6D0;
  if (!qword_27CB2B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6D0);
  }

  return result;
}

unint64_t sub_21766D0F8()
{
  result = qword_27CB2B6D8;
  if (!qword_27CB2B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6D8);
  }

  return result;
}

unint64_t sub_21766D14C()
{
  result = qword_27CB2B6E8;
  if (!qword_27CB2B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6E8);
  }

  return result;
}

unint64_t sub_21766D1A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B6F0, &qword_21778B860);
    result = OUTLINED_FUNCTION_92_16();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766D1F4()
{
  result = qword_27CB2B718;
  if (!qword_27CB2B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B718);
  }

  return result;
}

unint64_t sub_21766D248()
{
  result = qword_27CB2B730;
  if (!qword_27CB2B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B730);
  }

  return result;
}

unint64_t sub_21766D29C()
{
  result = qword_27CB2B748;
  if (!qword_27CB2B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B748);
  }

  return result;
}

unint64_t sub_21766D2F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B750, &unk_21778E180);
    result = OUTLINED_FUNCTION_92_16();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766D344()
{
  result = qword_27CB2B778;
  if (!qword_27CB2B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B778);
  }

  return result;
}

unint64_t sub_21766D398()
{
  result = qword_27CB2B780;
  if (!qword_27CB2B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B780);
  }

  return result;
}

unint64_t sub_21766D3EC()
{
  result = qword_27CB2B788;
  if (!qword_27CB2B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B788);
  }

  return result;
}

unint64_t sub_21766D440()
{
  result = qword_27CB2B798;
  if (!qword_27CB2B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B798);
  }

  return result;
}

unint64_t sub_21766D494()
{
  result = qword_27CB2B7A0;
  if (!qword_27CB2B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7A0);
  }

  return result;
}

unint64_t sub_21766D4E8()
{
  result = qword_27CB2B7B0;
  if (!qword_27CB2B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7B0);
  }

  return result;
}

unint64_t sub_21766D53C()
{
  result = qword_27CB2B7C0;
  if (!qword_27CB2B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7C0);
  }

  return result;
}

unint64_t sub_21766D590()
{
  result = qword_27CB2B7D0;
  if (!qword_27CB2B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7D0);
  }

  return result;
}

unint64_t sub_21766D5E4()
{
  result = qword_27CB2B7E0;
  if (!qword_27CB2B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7E0);
  }

  return result;
}

unint64_t sub_21766D638()
{
  result = qword_27CB2B7E8;
  if (!qword_27CB2B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7E8);
  }

  return result;
}

unint64_t sub_21766D68C()
{
  result = qword_27CB2B7F0;
  if (!qword_27CB2B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7F0);
  }

  return result;
}

unint64_t sub_21766D6E0()
{
  result = qword_27CB2B7F8;
  if (!qword_27CB2B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7F8);
  }

  return result;
}

unint64_t sub_21766D734()
{
  result = qword_27CB2B800;
  if (!qword_27CB2B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B800);
  }

  return result;
}

unint64_t sub_21766D788()
{
  result = qword_27CB2B810;
  if (!qword_27CB2B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B810);
  }

  return result;
}

unint64_t sub_21766D7DC()
{
  result = qword_27CB2B818;
  if (!qword_27CB2B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B818);
  }

  return result;
}

unint64_t sub_21766D830()
{
  result = qword_27CB2B820;
  if (!qword_27CB2B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B820);
  }

  return result;
}

unint64_t sub_21766D884()
{
  result = qword_27CB2B828;
  if (!qword_27CB2B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B828);
  }

  return result;
}

unint64_t sub_21766D944()
{
  result = qword_27CB2B830;
  if (!qword_27CB2B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B830);
  }

  return result;
}

unint64_t sub_21766D99C()
{
  result = qword_27CB2B838;
  if (!qword_27CB2B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B838);
  }

  return result;
}

unint64_t sub_21766D9F4()
{
  result = qword_27CB2B840;
  if (!qword_27CB2B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B840);
  }

  return result;
}

unint64_t sub_21766DA4C()
{
  result = qword_27CB2B848;
  if (!qword_27CB2B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B848);
  }

  return result;
}

unint64_t sub_21766DAA4()
{
  result = qword_27CB2B850;
  if (!qword_27CB2B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B850);
  }

  return result;
}

unint64_t sub_21766DAFC()
{
  result = qword_27CB2B858;
  if (!qword_27CB2B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B858);
  }

  return result;
}

unint64_t sub_21766DB54()
{
  result = qword_27CB2B860;
  if (!qword_27CB2B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B860);
  }

  return result;
}

unint64_t sub_21766DBAC()
{
  result = qword_27CB2B868;
  if (!qword_27CB2B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B868);
  }

  return result;
}

unint64_t sub_21766DC04()
{
  result = qword_27CB2B870;
  if (!qword_27CB2B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B870);
  }

  return result;
}

unint64_t sub_21766DC5C()
{
  result = qword_27CB2B878;
  if (!qword_27CB2B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B878);
  }

  return result;
}

unint64_t sub_21766DCB4()
{
  result = qword_27CB2B880;
  if (!qword_27CB2B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B880);
  }

  return result;
}

unint64_t sub_21766DD0C()
{
  result = qword_27CB2B888;
  if (!qword_27CB2B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B888);
  }

  return result;
}

unint64_t sub_21766DD64()
{
  result = qword_27CB2B890;
  if (!qword_27CB2B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B890);
  }

  return result;
}

unint64_t sub_21766DDDC()
{
  result = qword_27CB2B898[0];
  if (!qword_27CB2B898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB2B898);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C10EventTimesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C26CompositeAttributeTonalityVSg(uint64_t a1)
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