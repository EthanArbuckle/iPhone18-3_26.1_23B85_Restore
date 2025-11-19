uint64_t sub_21664BDFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21664BE44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664BE7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664BEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
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

uint64_t sub_21664BF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
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

uint64_t sub_21664C06C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21664C0A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for _ArtworkImageReader() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  v8 = v0 + v5 + v3[11];
  v9 = type metadata accessor for ArtworkImage._Proxy();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = sub_21666D3BC();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80) + 28));

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21664C1E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21664C274(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21664C300(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
  sub_21666CF6C();
  sub_216653A3C();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_21664C368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_216654054();
  *a2 = result & 1;
  return result;
}

void *sub_21664C3D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_216654660();
  *a2 = result;
  return result;
}

uint64_t sub_21664C470()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21664C4A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21664C4F4()
{
  MEMORY[0x21CE96510](v0 + 16);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21664C528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21664C538()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664C570()
{
  v1 = sub_21666D3BC();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);

  if (*(v0 + 4))
  {
    v8 = *(v0 + 5);
  }

  v9 = (v4 + 48) & ~v4;
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(&v0[v9], v1);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v4 | 7);
}

uint64_t sub_21664C644()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21664C67C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_21664C70C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664C748()
{
  v1 = type metadata accessor for ArtworkImage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;

    v7 = *(v5 + 1);

    v8 = 16;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34D0, &qword_21666F250);
    OUTLINED_FUNCTION_2(v9);
    (*(v10 + 8))(v0 + v3);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34D8, &qword_21666F258) + 28);
  }

  v11 = *&v5[v8];

  v12 = v1[5];
  v13 = sub_21666D3BC();
  OUTLINED_FUNCTION_2(v13);
  (*(v14 + 8))(&v5[v12]);
  v15 = *&v5[v1[10] + 8];

  v16 = *&v5[v1[11] + 8];

  v17 = *&v5[v1[14]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21664C8F4@<X0>(void *a1@<X8>)
{
  result = sub_21666CF8C();
  *a1 = v3;
  return result;
}

uint64_t sub_21664C948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  v7 = OUTLINED_FUNCTION_18(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_21666D3BC();
  v12 = OUTLINED_FUNCTION_18(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 56));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21664CA40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  v9 = OUTLINED_FUNCTION_18(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_21666D3BC();
    result = OUTLINED_FUNCTION_18(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 56)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21664CB60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21666CF6C();
  sub_21665E838();
  return swift_getWitnessTable();
}

uint64_t sub_21664CC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21664CCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21664CD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666D3BC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_2(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_21664CE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21666D3BC();
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

uint64_t sub_21664CEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_2_2(*(a1 + 96));
  }

  v7 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21664CF30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21664CFC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21664D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21666D79C();
  }
}

uint64_t sub_21664D028@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSubscriptionOffer.MessageIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21664D064()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2166622E8();
}

uint64_t sub_21664D088()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_216662350();
}

uint64_t sub_21664D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3898, &qword_2166707A8);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_21664D2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3898, &qword_2166707A8);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21664D3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38D8, &qword_216670820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38D0, &qword_216670818);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB38E8, &unk_216670838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
  OUTLINED_FUNCTION_1_6();
  sub_2166620F4(v0, &qword_27CAB38E8, &unk_216670838);
  sub_21665EC00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21664D52C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21664D564()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21664D5A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t EnvironmentValues.artworkLoadingObserver.getter()
{
  sub_21664DE04();
  sub_21666CFDC();
  return v1;
}

unint64_t sub_21664DE04()
{
  result = qword_27CAB2F30;
  if (!qword_27CAB2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB2F30);
  }

  return result;
}

uint64_t sub_21664DE58@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.artworkLoadingObserver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21664DE84(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.artworkLoadingObserver.setter();
}

uint64_t (*EnvironmentValues.artworkLoadingObserver.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21664DE04();
  sub_21666CFDC();
  return sub_21664DF4C;
}

uint64_t sub_21664DF4C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_21666CFEC();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_21666CFEC();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21664DFF0(uint64_t a1, int a2)
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

uint64_t sub_21664E010(uint64_t result, int a2, int a3)
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

uint64_t sub_21664E060(uint64_t a1, id *a2)
{
  result = sub_21666D42C();
  *a2 = 0;
  return result;
}

uint64_t sub_21664E0D8(uint64_t a1, id *a2)
{
  v3 = sub_21666D43C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21664E158()
{
  sub_21666D44C();
  v0 = sub_21666D41C();

  return v0;
}

uint64_t sub_21664E1A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21664E158();
  *a1 = result;
  return result;
}

uint64_t sub_21664E1D0()
{
  v0 = sub_21666D44C();
  v1 = MEMORY[0x21CE95A00](v0);

  return v1;
}

uint64_t sub_21664E210()
{
  sub_21666D44C();
  sub_21666D47C();
}

uint64_t sub_21664E278@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21666D41C();

  *a2 = v5;
  return result;
}

uint64_t sub_21664E2C0()
{
  OUTLINED_FUNCTION_0();
  result = sub_216664E70();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21664E2E8(uint64_t a1)
{
  v2 = sub_21664E448(&qword_27CAB2FC0);
  v3 = sub_21664E448(&qword_27CAB2FC8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_21664E394(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21664E448(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Artwork._LoadingError.hashValue.getter()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t sub_21664E588()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

unint64_t sub_21664E5CC()
{
  result = qword_27CAB3030;
  if (!qword_27CAB3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3030);
  }

  return result;
}

uint64_t _s13_LoadingErrorOwet(unsigned int *a1, int a2)
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

_BYTE *_s13_LoadingErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_21664E734(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_21666CE5C();
  if (v3 <= 0x3F)
  {
    result = sub_21666D26C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21664E8A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21666CE2C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21666CE1C();
}

uint64_t sub_21664E920()
{
  v0 = sub_21666CE2C();
  __swift_allocate_value_buffer(v0, qword_27CAB5830);
  __swift_project_value_buffer(v0, qword_27CAB5830);
  return sub_21666CE1C();
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

uint64_t *sub_21664EA3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_21666CD9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  sub_21666CD8C();
  v8 = sub_21666CD7C();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  v1[3] = v8;
  v1[4] = v10;
  v1[6] = 0;
  swift_unknownObjectWeakInit();
  v11 = *v1;
  sub_21664FF08(0, &qword_27CAB3058, 0x277CF3288);
  v12 = sub_21664EEB4(0xD000000000000015, 0x8000000216670B60, 0xD00000000000001DLL, 0x8000000216670B80, 0, 0);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v12;
  sub_21664FF08(0, &qword_27CAB3060, 0x277CF3280);
  v14 = v13;
  v15 = sub_21664F008(v14, sub_21664FDB8, v1);
  v16 = v1[2];
  v1[2] = v15;

  v17 = v1[2];
  if (!v17)
  {

    return v1;
  }

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v1;
  v18[4] = v2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21664FDC0;
  *(v19 + 24) = v18;
  aBlock[4] = sub_21664FF6C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21664FF68;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  [v21 configureConnection_];

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_5:
    if (qword_27CAB2ED0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = sub_21666CE2C();
    __swift_project_value_buffer(v22, qword_27CAB5800);

    v23 = sub_21666CE0C();
    v24 = sub_21666D54C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v25 = 136446466;
      v26 = sub_21666D88C();
      v28 = sub_21666B5BC(v26, v27, aBlock);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_21666B5BC(0xD000000000000015, 0x8000000216670B60, aBlock);
      _os_log_impl(&dword_21664A000, v23, v24, "%{public}s: failed to lookup endpoint with Mach name %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }
  }

  return v1;
}

id sub_21664EEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_21666D41C();

  v8 = sub_21666D41C();

  if (a6)
  {
    v9 = sub_21666D41C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() endpointForMachName:v7 service:v8 instance:v9];

  return v10;
}

void sub_21664EF88(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = sub_21666D41C();
  v6 = sub_21666D41C();
  [a1 encodeObject:v5 forKey:v6];
}

uint64_t sub_21664F008(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v11[4] = sub_21664FE34;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21664FF68;
  v11[3] = &block_descriptor_35;
  v7 = _Block_copy(v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v9 = [ObjCClassFromMetadata connectionWithEndpoint:a1 clientContextBuilder:v7];

  _Block_release(v7);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_21664F150(id a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CAB2EF0 != -1)
  {
    swift_once();
  }

  [a1 setInterface_];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v17 = sub_21664FDE4;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_17;
  v8 = _Block_copy(&v13);

  [a1 setActivationHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a2;
  v17 = sub_21664FDEC;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_23;
  v10 = _Block_copy(&v13);

  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  v17 = sub_21664FE10;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21664F59C;
  v16 = &block_descriptor_29;
  v12 = _Block_copy(&v13);

  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_21664F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_21666CE2C();
  __swift_project_value_buffer(v4, qword_27CAB5800);

  oslog = sub_21666CE0C();
  v5 = sub_21666D56C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_21666D88C();
    v10 = sub_21666B5BC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_21666B5BC(*(a3 + 24), *(a3 + 32), &v12);
    _os_log_impl(&dword_21664A000, oslog, v5, "%{public}s: connection activated for process %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE96470](v7, -1, -1);
    MEMORY[0x21CE96470](v6, -1, -1);
  }
}

void sub_21664F59C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_21664F604(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_216650964();
    swift_unknownObjectRelease();
  }

  if (qword_27CAB2ED0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = sub_21666CE2C();
  __swift_project_value_buffer(v6, qword_27CAB5800);

  oslog = sub_21666CE0C();
  v7 = sub_21666D56C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_21666D88C();
    v11 = sub_21666B5BC(v9, v10, &v13);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_21666B5BC(*(a2 + 24), *(a2 + 32), &v13);
    _os_log_impl(&dword_21664A000, oslog, v7, a4, v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_21664F79C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_21664F7F0()
{
  sub_21664FF08(0, &qword_27CAB31B8, 0x277D46E38);
  result = sub_21664F86C();
  qword_27CAB3040 = result;
  return result;
}

id sub_21664F86C()
{
  v0 = sub_21666D41C();

  v1 = sub_21666D41C();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_21664F900()
{
  type metadata accessor for MusicAngel.Client();
  result = sub_21664F930();
  qword_27CAB3048 = result;
  return result;
}

uint64_t sub_21664F930()
{
  sub_21664FF08(0, &qword_27CAB30C8, 0x277CF3278);
  v0 = sub_21664FA3C();
  v1 = [objc_opt_self() protocolForProtocol_];
  [v0 setServer_];

  [v0 copy];
  sub_21666D5CC();

  swift_unknownObjectRelease();
  sub_21664FF08(0, &qword_27CAB30D0, 0x277CF32C0);
  swift_dynamicCast();
  return v3;
}

id sub_21664FA3C()
{
  v0 = sub_21666D41C();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier_];

  return v1;
}

void sub_21664FAA0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v16 = &unk_28290F8B8;
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31A0, &unk_21666EA50);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21666E9F0;
      v5 = qword_27CAB2EE8;
      v6 = v1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = qword_27CAB3040;
      *(v4 + 32) = qword_27CAB3040;
      sub_21664FF08(0, &qword_27CAB31A8, 0x277D46DD8);
      v8 = v7;
      v9 = sub_21666D4DC();

      v10 = [v3 remoteTargetWithLaunchingAssertionAttributes_];

      if (v10)
      {
        sub_21666D5CC();

        swift_unknownObjectRelease();
        sub_21664FEF8(v14, v15);
        sub_21664FEF8(v15, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31B0, &qword_21666EA60);
        if (swift_dynamicCast())
        {

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      v12 = v1;
    }

    sub_21664FE5C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21664FE5C();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
  }
}

uint64_t MusicAngel.Client.deinit()
{
  v1 = *(v0 + 32);

  sub_21664FD20(v0 + 40);
  return v0;
}

uint64_t MusicAngel.Client.__deallocating_deinit()
{
  MusicAngel.Client.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21664FE34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_21664FE5C()
{
  result = qword_27CAB3138;
  if (!qword_27CAB3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3138);
  }

  return result;
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

_OWORD *sub_21664FEF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21664FF08(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x21CE96470);
}

id sub_21664FFA8()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client;
  type metadata accessor for MusicAngel.Client();
  swift_allocObject();
  *&v0[v1] = sub_21664EA3C();
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController] = 0;
  *&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_presentationTimeout] = 0x4008000000000000;
  v4.receiver = v0;
  v4.super_class = _s14ViewControllerCMa();
  v2 = objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
  sub_21665023C();
  sub_2166501F8();

  return v2;
}

void sub_216650070()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client;
  type metadata accessor for MusicAngel.Client();
  swift_allocObject();
  *(v0 + v1) = sub_21664EA3C();
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_presentationTimeout) = 0x4008000000000000;
  sub_21666D69C();
  __break(1u);
}

id sub_216650150(char a1)
{
  v5.receiver = v1;
  v5.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client];
  return sub_21664FCE0();
}

id sub_2166501F8()
{
  *(*(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client) + 48) = &off_2828FFB98;
  swift_unknownObjectWeakAssign();
  return sub_21664FCD0();
}

void sub_21665023C()
{
  v1 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController;
  if (!*&v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController])
  {
    v2 = v0;
    aBlock[4] = sub_21664E710;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2166506E4;
    aBlock[3] = &block_descriptor_0;
    v3 = _Block_copy(aBlock);
    [v2 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v3);
    sub_21664FF08(0, &qword_27CAB32A8, 0x277D46F60);
    v4 = sub_216650734();
    v5 = *&v2[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client];
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v8 = objc_allocWithZone(_s18SceneSpecificationCMa());

    v9 = sub_216668290(v6, v7);
    sub_21664FF08(0, &unk_27CAB32B0, 0x277D761E0);
    v10 = v4;
    v11 = v9;
    v12 = sub_2166507C8(v10, v11);
    v13 = *&v2[v1];
    *&v2[v1] = v12;
    v14 = v12;

    if (v14)
    {
      [v14 setDelegate_];
    }

    v15 = *&v2[v1];
    if (v15 && (v16 = [v15 sceneViewController]) != 0)
    {
      v17 = v16;
      v18 = [v16 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v2 view];
        if (v20)
        {
          v21 = v20;
          [v2 addChildViewController_];
          [v21 addSubview_];
          [v19 setTranslatesAutoresizingMaskIntoConstraints_];
          v37 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB31A0, &unk_21666EA50);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_21666EA70;
          v23 = [v19 leadingAnchor];
          v24 = [v21 leadingAnchor];
          v25 = [v23 constraintEqualToAnchor_];

          *(v22 + 32) = v25;
          v26 = [v19 trailingAnchor];
          v27 = [v21 trailingAnchor];
          v28 = [v26 constraintEqualToAnchor_];

          *(v22 + 40) = v28;
          v29 = [v19 topAnchor];
          v30 = [v21 topAnchor];
          v31 = [v29 constraintEqualToAnchor_];

          *(v22 + 48) = v31;
          v32 = [v19 bottomAnchor];
          v33 = [v21 bottomAnchor];
          v34 = [v32 constraintEqualToAnchor_];

          *(v22 + 56) = v34;
          sub_21664FF08(0, &unk_27CAB32C0, 0x277CCAAD0);
          v35 = sub_21666D4DC();

          [v37 activateConstraints_];

          [v17 didMoveToParentViewController_];
          v17 = v19;
          v19 = v21;
        }

        v17 = v19;
      }

      v36 = v11;
    }

    else
    {
      v36 = v10;
      v10 = v11;
    }
  }
}

uint64_t sub_2166506E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

id sub_216650734()
{
  v0 = sub_21666D41C();

  v1 = [swift_getObjCClassFromMetadata() identityForAngelJobLabel_];

  return v1;
}

id sub_2166507C8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProcessIdentity:a1 sceneSpecification:a2];

  return v4;
}

id sub_21665084C()
{
  v2.receiver = v0;
  v2.super_class = _s14ViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_216650934()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_hostingController);
  v2 = v1;
  return v1;
}

void sub_216650964()
{
  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v1 = sub_21666CE2C();
  __swift_project_value_buffer(v1, qword_27CAB5800);
  v2 = v0;
  v3 = sub_21666CE0C();
  v4 = sub_21666D56C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    swift_getObjectType();
    v7 = sub_21666D88C();
    v9 = sub_21666B5BC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21664A000, v3, v4, "%{public}s: is calling handleDismissAction", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CE96470](v6, -1, -1);
    MEMORY[0x21CE96470](v5, -1, -1);
  }

  v10 = &v2[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v2, 1, 0, 0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [v2 parentViewController];
    if (v13)
    {
      v14 = v13;
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10ParametersVMa()
{
  result = qword_2811AF8A0;
  if (!qword_2811AF8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216650C80()
{
  sub_21666D3BC();
  if (v0 <= 0x3F)
  {
    sub_216650D3C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_216650D80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216650D3C()
{
  result = qword_2811AF450;
  if (!qword_2811AF450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AF450);
  }

  return result;
}

void sub_216650D80()
{
  if (!qword_2811AF460)
  {
    v0 = sub_21666D5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AF460);
    }
  }
}

uint64_t sub_216650E18(uint64_t a1, uint64_t a2)
{
  if ((sub_21666D3AC() & 1) == 0)
  {
    return 0;
  }

  v4 = _s10ParametersVMa();
  result = [*(a1 + v4[5]) isArtworkVisuallyIdenticalToCatalog_];
  if (!result)
  {
    return result;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 != *v9 || *(v7 + 8) != v9[1])
  {
    return 0;
  }

  v10 = v4[8];
  OUTLINED_FUNCTION_0_1();
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v15 = *v13 == *v14 && v11 == v12;
  if (!v15 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v16 = v4[9];
  OUTLINED_FUNCTION_0_1();
  result = (v17 | v18) == 0;
  if (v17 && v18)
  {
    if (*v19 == *v20 && v17 == v18)
    {
      return 1;
    }

    else
    {

      return sub_21666D79C();
    }
  }

  return result;
}

uint64_t sub_216650F48()
{
  sub_21666D3BC();
  sub_2166511B4(&qword_27CAB32D8, MEMORY[0x277CD8460]);
  sub_21666D3FC();
  v1 = _s10ParametersVMa();
  v2 = [*(v0 + v1[5]) visualIdenticalityIdentifier];
  if (v2)
  {
    v3 = [v2 hash];
    swift_unknownObjectRelease();
    sub_21666D81C();
    MEMORY[0x21CE95D60](v3);
  }

  else
  {
    sub_21666D81C();
  }

  v4 = *(v0 + v1[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v4);
  v5 = (v0 + v1[7]);
  v6 = *v5;
  if (*v5 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v6);
  v7 = v5[1];
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CE95D80](*&v7);
  v8 = (v0 + v1[8]);
  if (v8[1])
  {
    v9 = *v8;
    sub_21666D81C();
    sub_21666D47C();
  }

  else
  {
    sub_21666D81C();
  }

  v10 = (v0 + v1[9]);
  if (!v10[1])
  {
    return sub_21666D81C();
  }

  v11 = *v10;
  sub_21666D81C();

  return sub_21666D47C();
}

uint64_t sub_21665112C()
{
  sub_21666D7FC();
  sub_216650F48();
  return sub_21666D83C();
}

uint64_t sub_216651178()
{
  sub_21666D7FC();
  sub_216650F48();
  return sub_21666D83C();
}

uint64_t sub_2166511B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216651218(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000216670EA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21666D79C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2166512C0()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t sub_21665133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216651218(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216651384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21664E550();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166513B0(uint64_t a1)
{
  v2 = sub_2166516F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2166513EC(uint64_t a1)
{
  v2 = sub_2166516F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216651458@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216651428();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216651484(uint64_t a1)
{
  v2 = sub_21665174C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2166514C0(uint64_t a1)
{
  v2 = sub_21665174C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicAngel.Client.Parameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB32E0, &qword_21666EB30);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB32E8, &qword_21666EB38);
  OUTLINED_FUNCTION_0_2(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2166516F8();
  sub_21666D85C();
  sub_21665174C();
  sub_21666D74C();
  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v15, v9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2166516F8()
{
  result = qword_27CAB32F0;
  if (!qword_27CAB32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB32F0);
  }

  return result;
}

unint64_t sub_21665174C()
{
  result = qword_27CAB32F8;
  if (!qword_27CAB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB32F8);
  }

  return result;
}

uint64_t MusicAngel.Client.Parameters.hashValue.getter()
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](0);
  return sub_21666D83C();
}

uint64_t MusicAngel.Client.Parameters.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3300, &qword_21666EB40);
  OUTLINED_FUNCTION_0_2(v3);
  v42 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3308, &qword_21666EB48);
  OUTLINED_FUNCTION_0_2(v9);
  v43 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20]();
  v14 = &v39 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2166516F8();
  sub_21666D84C();
  if (v1)
  {
    goto LABEL_9;
  }

  v40 = v8;
  v41 = a1;
  v16 = sub_21666D73C();
  result = sub_216651C34(v16, 0);
  v21 = v14;
  if (v19 == v20 >> 1)
  {
    v42 = result;
LABEL_8:
    v32 = v9;
    v33 = v43;
    v34 = sub_21666D65C();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3310, &qword_21666EB50) + 48);
    *v36 = &type metadata for MusicAngel.Client.Parameters;
    sub_21666D6FC();
    sub_21666D64C();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v21, v32);
    a1 = v41;
LABEL_9:
    v38 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  if (v19 < (v20 >> 1))
  {
    v22 = sub_216651C7C(v19 + 1, v20 >> 1, result, v18, v19, v20);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = v24 == v26 >> 1;
    v28 = v41;
    v29 = v42;
    if (v27)
    {
      sub_21665174C();
      v30 = v40;
      sub_21666D6EC();
      v31 = v43;
      swift_unknownObjectRelease();
      (*(v29 + 8))(v30, v3);
      (*(v31 + 8))(v21, v9);
      v38 = v28;
      return __swift_destroy_boxed_opaque_existential_0(v38);
    }

    v42 = v22;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_216651C34(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_216651C7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_216651CFC()
{
  result = qword_27CAB3318;
  if (!qword_27CAB3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3318);
  }

  return result;
}

_BYTE *sub_216651D60(_BYTE *result, int a2, int a3)
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

unint64_t sub_216651E20()
{
  result = qword_27CAB3320;
  if (!qword_27CAB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3320);
  }

  return result;
}

unint64_t sub_216651E78()
{
  result = qword_27CAB3328;
  if (!qword_27CAB3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3328);
  }

  return result;
}

unint64_t sub_216651ED0()
{
  result = qword_27CAB3330;
  if (!qword_27CAB3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3330);
  }

  return result;
}

unint64_t sub_216651F28()
{
  result = qword_27CAB3338;
  if (!qword_27CAB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3338);
  }

  return result;
}

unint64_t sub_216651F80()
{
  result = qword_27CAB3340;
  if (!qword_27CAB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3340);
  }

  return result;
}

id MusicAngel.Client.Action.init(identifier:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v3 = sub_21666D41C();
  [v2 setObject:v3 forSetting:0];

  _s19AngelToClientActionCMa();
  result = sub_2166520D8(v2, 0);
  *a1 = result;
  return result;
}

id sub_2166520D8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

void MusicAngel.Client.Action.send(from:)(uint64_t a1)
{
  v2 = *v1;
  sub_216652208(a1, v5);
  if (v5[3])
  {
    sub_216652278();
    if (swift_dynamicCast())
    {
      v3 = v6;
      [v6 sendAction_];

      return;
    }
  }

  else
  {
    sub_216652DB8(v5, &unk_27CAB3350, &qword_21666EE30);
  }

  sub_21664FE5C();
  swift_allocError();
  *v4 = 0;
  swift_willThrow();
}

uint64_t sub_216652208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3350, &qword_21666EE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216652278()
{
  result = qword_27CAB3360;
  if (!qword_27CAB3360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB3360);
  }

  return result;
}

uint64_t sub_2166522BC(void *a1)
{
  v3 = [a1 delegate];
  if (!v3 || (*&v19 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3388, &qword_21666EF58), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3390, &unk_21666EF60), (swift_dynamicCast() & 1) == 0))
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_216652DB8(&v21, &qword_27CAB3378, &unk_21666EF40);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0x100000000000001ELL, 0x8000000216670FB0);
    v10 = a1;
    v11 = [v10 description];
    v12 = sub_21666D44C();
    v14 = v13;

    MEMORY[0x21CE959E0](v12, v14);

    MEMORY[0x21CE959E0](45, 0xE100000000000000);
    *&v21 = [v10 &selRef_isKindOfClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3380, &qword_21666EF50);
    v15 = sub_21666D45C();
    MEMORY[0x21CE959E0](v15);

    MEMORY[0x21CE959E0](0xD000000000000036, 0x8000000216670FD0);
    goto LABEL_17;
  }

  sub_216652E18(&v21, v24);
  v4 = [v1 info];
  if (!v4)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_16:
    sub_216652DB8(&v19, &unk_27CAB3350, &qword_21666EE30);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_21666D5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_16;
  }

  sub_21664FEF8(&v19, &v21);
  sub_216652E30(&v21, &v19);
  if (swift_dynamicCast())
  {
    v7 = sub_21666D6DC();

    if (!v7)
    {
      v8 = *__swift_project_boxed_opaque_existential_1(v24, v24[3]);
      sub_216650964();
      __swift_destroy_boxed_opaque_existential_0(&v21);
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  sub_21666D62C();
  MEMORY[0x21CE959E0](0x206E6F69746341, 0xE700000000000000);
  sub_216652E30(&v21, &v19);
  v16 = sub_21666D45C();
  MEMORY[0x21CE959E0](v16);

  MEMORY[0x21CE959E0](0xD000000000000034, 0x8000000216671030);
LABEL_17:
  result = sub_21666D69C();
  __break(1u);
  return result;
}

uint64_t MusicAngel.Client.Action.Identifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21666D6DC();

  *a1 = v2 != 0;
  return result;
}

id sub_216652778(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = _s19AngelToClientActionCMa();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id sub_216652828()
{
  v2.receiver = v0;
  v2.super_class = _s19AngelToClientActionCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_216652884(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AngelToClientActionCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id sub_216652928(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AngelToClientActionCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2166529BC(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21664F59C;
    v14[3] = &block_descriptor_1;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = _s19AngelToClientActionCMa();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v10, a5);
  sub_21664D5A4(a3);

  _Block_release(v10);
  return v12;
}

id sub_216652B84()
{
  v2.receiver = v0;
  v2.super_class = _s19AngelToClientActionCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_216652BC0()
{
  result = qword_27CAB3368;
  if (!qword_27CAB3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3368);
  }

  return result;
}

uint64_t sub_216652C20@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicAngel.Client.Action.Identifier.init(rawValue:)(a1);
}

uint64_t sub_216652C54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216652C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s6ActionV10IdentifierOwst(_BYTE *result, int a2, int a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216652DB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_216652E18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_216652E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_216652E8C()
{
  sub_21666D34C();
  if (v3)
  {
    sub_216650D3C();
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216653064(v2);
    return 0;
  }
}

uint64_t sub_216652EFC()
{
  sub_21666D33C();
  sub_21666D30C();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21666D32C();
  sub_216650D3C();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v2);
    return v1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
    v2[0] = 0;
    v2[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0xD00000000000002CLL, 0x80000002166710B0);
    sub_21666D31C();
    sub_21666D67C();
    MEMORY[0x21CE959E0](46, 0xE100000000000000);
    result = sub_21666D69C();
    __break(1u);
  }

  return result;
}

uint64_t sub_216653064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3350, &qword_21666EE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ArtworkImageReader.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for _ArtworkImageReader() + 36);
  v10 = type metadata accessor for ArtworkImage._Proxy();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  result = sub_2166531B4(v8);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_2166531B4(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_216653C6C(a1, &v5 - v3);
  sub_21666D1FC();
  return sub_216653760(a1);
}

uint64_t sub_21665325C(uint64_t a1)
{
  v1 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
  return sub_21666D20C();
}

uint64_t sub_2166532A8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = *(a2 + 36);
  sub_216653C6C(a1, &v8 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33B0, &qword_21666EF80);
  sub_21666D21C();
  return sub_216653760(a1);
}

uint64_t _ArtworkImageReader.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  v42 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v37 - v9;
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v43 = v12;
  v14 = *(v13 + 64);
  (MEMORY[0x28223BE20])();
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
  v17 = sub_21666CF6C();
  OUTLINED_FUNCTION_1_1();
  v41 = v18;
  v20 = *(v19 + 64);
  v21 = (MEMORY[0x28223BE20])();
  v38 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v40 = &v37 - v23;
  v25 = *v2;
  v24 = *(v2 + 8);
  sub_21665325C(a1);
  v25(v10);
  sub_216653760(v10);
  v26 = v39;
  (*(v5 + 16))(v39, v2, a1);
  v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  *(v28 + 16) = v11;
  *(v28 + 24) = v29;
  (*(v5 + 32))(v28 + v27, v26, a1);
  sub_21665390C();
  sub_216653960();
  v30 = v38;
  sub_21666D11C();

  (*(v43 + 8))(v16, v11);
  v31 = sub_216653A3C();
  v45 = v29;
  v46 = v31;
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  v32 = v40;
  v33 = v41;
  v34 = *(v41 + 16);
  v34(v40, v30, v17);
  v35 = *(v33 + 8);
  v35(v30, v17);
  v34(v44, v32, v17);
  return (v35)(v32, v17);
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

uint64_t sub_216653760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166537C8(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v7 - v3;
  sub_216653C6C(a1, &v7 - v3);
  v5 = type metadata accessor for _ArtworkImageReader();
  return sub_2166532A8(v4, v5);
}

uint64_t sub_216653880(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for _ArtworkImageReader() - 8) + 80);

  return sub_2166537C8(a1);
}

unint64_t sub_21665390C()
{
  result = qword_27CAB33B8;
  if (!qword_27CAB33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33B8);
  }

  return result;
}

unint64_t sub_216653960()
{
  result = qword_27CAB33C0;
  if (!qword_27CAB33C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A0, &qword_21666EF70);
    sub_2166539E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33C0);
  }

  return result;
}

unint64_t sub_2166539E4()
{
  result = qword_27CAB33C8;
  if (!qword_27CAB33C8)
  {
    type metadata accessor for ArtworkImage._Proxy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB33C8);
  }

  return result;
}

unint64_t sub_216653A3C()
{
  result = qword_27CAB33D0[0];
  if (!qword_27CAB33D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A8, &qword_21666EF78);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAB33D0);
  }

  return result;
}

void sub_216653B14()
{
  sub_216653BC0();
  if (v0 <= 0x3F)
  {
    sub_216653C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216653BC0()
{
  result = qword_27CAB3458;
  if (!qword_27CAB3458)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CAB3458);
  }

  return result;
}

void sub_216653C08()
{
  if (!qword_27CAB3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB33A0, &qword_21666EF70);
    v0 = sub_21666D23C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB3460);
    }
  }
}

uint64_t sub_216653C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArtworkLoader.__allocating_init(shouldEnforceUsageOnMainThread:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(a1);
  return v5;
}

uint64_t ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  v3 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  v4 = _s10ParametersVMa();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  v5 = (v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_cachedCloudArtworkCatalog) = 0;
  sub_21666CDEC();
  *(v1 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_shouldEnforceUsageOnMainThread) = a1;
  return v1;
}

uint64_t sub_216653DE0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_216656D48();
  }

  return result;
}

uint64_t ArtworkLoader.deinit()
{
  OUTLINED_FUNCTION_13();
  sub_21665655C(v1, v2, v3);

  sub_216657168(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters, &qword_27CAB3468, &qword_21666F9C0);
  v4 = *(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler + 8);
  sub_21664D5A4(*(v0 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler));

  v5 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  v6 = sub_21666CDFC();
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 8))(v0 + v5);
  return v0;
}

uint64_t ArtworkLoader.__deallocating_deinit()
{
  ArtworkLoader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216653FFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_216654054();
  *a2 = result & 1;
  return result;
}

uint64_t sub_216654054()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2);
  OUTLINED_FUNCTION_7(v3, v4);

  OUTLINED_FUNCTION_8();
  return *(v0 + 16);
}

uint64_t sub_2166540E0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*sub_216654154())(void *a1)
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_216653FB4();
  return sub_21665422C;
}

uint64_t sub_21665427C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2166542E4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t sub_2166542E4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2);
  OUTLINED_FUNCTION_7(v3, v4);

  OUTLINED_FUNCTION_8();
  result = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  return result;
}

uint64_t sub_216654374(uint64_t a1, uint64_t a2, int a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 40);
  if ((v8 & 1) == 0 && (a3 & 1) == 0)
  {
    if (*(v3 + 24) != *&a1 || *(v3 + 32) != *&a2)
    {
      goto LABEL_10;
    }

LABEL_8:
    *(v3 + 24) = *&a1;
    *(v3 + 32) = *&a2;
    *(v3 + 40) = a3 & 1;
    return result;
  }

  if (v8 & a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_216656D48();
}

uint64_t sub_216654470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4 & 1;
  return result;
}

void (*sub_2166544DC())(void *a1)
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_216654238();
  return sub_2166545B4;
}

void *sub_216654604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_216654660();
  *a2 = result;
  return result;
}

void sub_216654630(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2166546F4(v2);
}

void *sub_216654660()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  v3 = sub_216657D5C(v1, v2);
  OUTLINED_FUNCTION_7(v3, v4);

  OUTLINED_FUNCTION_8();
  v5 = *(v0 + 48);
  v6 = v5;
  return v5;
}

void sub_2166546F4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3;
  LOBYTE(v3) = sub_216656E14(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_216656D48();
  }

  else
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

void sub_2166547D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*sub_216654838())(void *a1)
{
  v3 = OUTLINED_FUNCTION_12();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_11(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_4();
  v7 = sub_216657D5C(v5, v6);
  OUTLINED_FUNCTION_4(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_6(KeyPath);

  v2[7] = sub_2166545C0();
  return sub_216654910;
}

void sub_21665491C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21666CDCC();

  free(v1);
}

uint64_t sub_2166549B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7, void (*a8)(void *), double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v176 = a8;
  v175 = a7;
  v191 = a5;
  v187 = a4;
  v192 = a3;
  v186 = a2;
  v194 = a1;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3470, &qword_21666F090);
  OUTLINED_FUNCTION_2(v188);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9(&v172 - v27);
  v28 = sub_21666D3BC();
  v29 = OUTLINED_FUNCTION_0_2(v28);
  v189 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v177 = v34 - v33;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3478, &qword_21666F098);
  OUTLINED_FUNCTION_2(v178);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9(&v172 - v38);
  v39 = _s10ParametersVMa();
  v40 = OUTLINED_FUNCTION_2(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v182 = &v172 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  v49 = OUTLINED_FUNCTION_17(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5();
  v55 = MEMORY[0x28223BE20](v54);
  v190 = &v172 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v172 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3480, &qword_21666F0A0);
  v60 = OUTLINED_FUNCTION_17(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v172 - v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_9(&v172 - v67);
  v68 = sub_21666CD6C();
  v69 = OUTLINED_FUNCTION_0_2(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_3();
  v76 = v75 - v74;
  v180 = *a6;
  v77 = COERCE_DOUBLE(sub_2166542E4());
  if ((v79 & 1) != 0 || (v77 == a12 ? (v80 = v78 == a13) : (v80 = 0), !v80))
  {
    sub_216654374(*&a12, *&a13, 0);
  }

  sub_21666CD5C();
  sub_21666CD4C();
  v82 = v81;
  (*(v71 + 8))(v76, v68);
  v83 = sub_216652E8C();
  v84 = v83;
  v193 = v17;
  v179 = v28;
  if (v83)
  {
    v85 = *(v189 + 16);
    v86 = (v189 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v87 = v83;
    v88 = v28;
    v89 = v191;
    v90 = v192;
    goto LABEL_26;
  }

  v91 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  OUTLINED_FUNCTION_8();
  sub_2166570A4(v17 + v91, v58, &qword_27CAB3468, &qword_21666F9C0);
  v92 = OUTLINED_FUNCTION_16(v58);
  v93 = (v189 + 16);
  v86 = (v189 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v173 = 0;
  if (v92)
  {
    sub_216657168(v58, &qword_27CAB3468, &qword_21666F9C0);
    v94 = v183;
    __swift_storeEnumTagSinglePayload(v183, 1, 1, v28);
    v95 = *v93;
  }

  else
  {
    v96 = v182;
    sub_216657104(v58, v182);
    sub_216657168(v58, &qword_27CAB3468, &qword_21666F9C0);
    v97 = *v93;
    v94 = v183;
    (*v93)(v183, v96, v28);
    sub_216657230(v96);
    OUTLINED_FUNCTION_13();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v28);
    v95 = v97;
  }

  v184 = v95;
  v95(v66, v194, v28);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v28);
  v104 = *(v178 + 48);
  OUTLINED_FUNCTION_20(&v198);
  sub_2166570A4(v105, v106, &qword_27CAB3480, &qword_21666F0A0);
  sub_2166570A4(v66, v93 + v104, &qword_27CAB3480, &qword_21666F0A0);
  OUTLINED_FUNCTION_21(v93);
  if (v80)
  {
    sub_216657168(v66, &qword_27CAB3480, &qword_21666F0A0);
    v107 = v185;
    sub_216657168(v94, &qword_27CAB3480, &qword_21666F0A0);
    OUTLINED_FUNCTION_21(v107 + v104);
    v88 = v28;
    v84 = v173;
    if (v80)
    {
      sub_216657168(v107, &qword_27CAB3480, &qword_21666F0A0);
      v89 = v191;
      v90 = v192;
      v108 = v193;
      v109 = 0x2811AF000;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v110 = v174;
  sub_2166570A4(v93, v174, &qword_27CAB3480, &qword_21666F0A0);
  OUTLINED_FUNCTION_21(v93 + v104);
  if (v111)
  {
    sub_216657168(v66, &qword_27CAB3480, &qword_21666F0A0);
    v112 = v110;
    v107 = v185;
    sub_216657168(v183, &qword_27CAB3480, &qword_21666F0A0);
    (*(v189 + 8))(v112, v28);
    v88 = v28;
    v84 = v173;
LABEL_20:
    sub_216657168(v107, &qword_27CAB3478, &qword_21666F098);
    v89 = v191;
    v90 = v192;
    v108 = v193;
    v109 = 0x2811AF000uLL;
LABEL_21:
    v113 = *(v109 + 2224);
    v114 = *(v108 + v113);
    *(v108 + v113) = 0;

    goto LABEL_22;
  }

  v168 = v189;
  v169 = v93 + v104;
  v170 = v177;
  (*(v189 + 32))(v177, v169, v28);
  sub_216657D5C(&qword_2811AF468, MEMORY[0x277CD8460]);
  LODWORD(v178) = sub_21666D40C();
  v171 = *(v168 + 8);
  v171(v170, v28);
  sub_216657168(v66, &qword_27CAB3480, &qword_21666F0A0);
  sub_216657168(v183, &qword_27CAB3480, &qword_21666F0A0);
  v171(v110, v28);
  sub_216657168(v93, &qword_27CAB3480, &qword_21666F0A0);
  v88 = v28;
  v90 = v192;
  v108 = v193;
  v89 = v191;
  v84 = v173;
  v109 = 0x2811AF000;
  if ((v178 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v115 = *(v109 + 2224);
  v116 = *(v108 + v115);
  if (v116)
  {
    v87 = v116;
  }

  else
  {
    v117 = sub_216652EFC();
    v118 = *(v108 + v115);
    *(v108 + v115) = v117;
    v87 = v117;

    v88 = v179;
  }

  v85 = v184;
LABEL_26:
  v183 = v86;
  v184 = v85;
  v85(v45, v194, v88);
  v119 = v84;
  v120 = sub_216667AC0();
  v185 = v87;

  *(v45 + v39[5]) = v120;
  *(v45 + v39[6]) = a9;
  v121 = (v45 + v39[7]);
  *v121 = a10;
  v121[1] = a11;
  v122 = (v45 + v39[8]);
  *v122 = v186;
  v122[1] = v90;
  v123 = (v45 + v39[9]);
  *v123 = v187;
  v123[1] = v89;
  v124 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  v125 = v193;
  OUTLINED_FUNCTION_8();
  v126 = v190;
  sub_216657104(v45, v190);
  OUTLINED_FUNCTION_13();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v39);
  v130 = *(v188 + 48);
  OUTLINED_FUNCTION_20(&v199);
  sub_2166570A4(v131, v132, &qword_27CAB3468, &qword_21666F9C0);
  sub_2166570A4(v126, v125 + v130, &qword_27CAB3468, &qword_21666F9C0);
  if (OUTLINED_FUNCTION_16(v125) != 1)
  {
    v135 = v181;
    sub_2166570A4(v125, v181, &qword_27CAB3468, &qword_21666F9C0);
    if (OUTLINED_FUNCTION_16(v125 + v130) != 1)
    {
      v143 = v182;
      sub_21665728C(v125 + v130, v182);

      v144 = v125;
      v125 = sub_216650E18(v135, v143);
      sub_216657230(v143);
      sub_216657168(v190, &qword_27CAB3468, &qword_21666F9C0);
      sub_216657230(v135);
      sub_216657168(v144, &qword_27CAB3468, &qword_21666F9C0);
      v136 = v193;
      v134 = v185;
      if (v125)
      {
LABEL_52:

        return sub_216657230(v45);
      }

LABEL_32:
      v192 = a16;
      OUTLINED_FUNCTION_20(&v196);
      sub_2166570A4(v137, v138, v139, v140);
      if (OUTLINED_FUNCTION_16(v125))
      {
        sub_216657168(v125, &qword_27CAB3468, &qword_21666F9C0);
        v141 = 0;
        v142 = 0;
      }

      else
      {
        v145 = v182;
        sub_216657104(v125, v182);
        sub_216657168(v125, &qword_27CAB3468, &qword_21666F9C0);
        v146 = v177;
        v147 = v179;
        v184(v177, v145, v179);
        sub_216657230(v145);
        v148 = sub_21666D39C();
        v149 = v147;
        v141 = v148;
        v142 = v150;
        (*(v189 + 8))(v146, v149);
      }

      v151 = sub_21666D39C();
      v153 = v152;
      if (v142)
      {
        if (v152)
        {
          if (v141 == v151 && v142 == v152)
          {

            goto LABEL_49;
          }

          v155 = sub_21666D79C();

          if ((v155 | v180))
          {
LABEL_49:
            OUTLINED_FUNCTION_20(&v197);
            sub_216657104(v156, v157);
            OUTLINED_FUNCTION_13();
            __swift_storeEnumTagSinglePayload(v158, v159, v160, v39);
            swift_beginAccess();
            sub_2166571C0(v153, v136 + v124);
            swift_endAccess();
            sub_2166568C0(v194, a15, v192, a10, a11, v82);
            v195 = 0;
            OUTLINED_FUNCTION_19();
            sub_21665655C(v161, v162, v163);
            if (sub_21666D36C())
            {
              v195 = 2;
              OUTLINED_FUNCTION_19();
              sub_21665655C(v164, v165, v166);
            }

            else
            {
              sub_216655710(v45, v175 & 1, v176);
            }

            goto LABEL_52;
          }

LABEL_47:
          v153 = v136;
          sub_2166546F4(0);
          goto LABEL_49;
        }
      }

      else if (!v152)
      {
        goto LABEL_49;
      }

      if (v180)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    sub_216657168(v190, &qword_27CAB3468, &qword_21666F9C0);
    sub_216657230(v135);
    v134 = v185;
LABEL_31:
    sub_216657168(v125, &qword_27CAB3470, &qword_21666F090);
    v136 = v193;
    goto LABEL_32;
  }

  sub_216657168(v126, &qword_27CAB3468, &qword_21666F9C0);
  v133 = OUTLINED_FUNCTION_16(v125 + v130);
  v134 = v185;
  if (v133 != 1)
  {
    goto LABEL_31;
  }

  sub_216657168(v125, &qword_27CAB3468, &qword_21666F9C0);
  return sub_216657230(v45);
}

uint64_t sub_216655710(uint64_t a1, char a2, void (*a3)(void *))
{
  v7 = _s10ParametersVMa();
  v8 = (a1 + v7[7]);
  v9 = *(a1 + v7[6]);
  v10 = *v8;
  v11 = v8[1];
  v12 = *(a1 + v7[5]);
  v13 = [v12 token];
  sub_21666D5CC();
  swift_unknownObjectRelease();
  sub_21664FF08(0, &qword_2811AF440, 0x277CD6080);
  if (swift_dynamicCast())
  {
    v14 = (a1 + v7[8]);
    if (v14[1])
    {
      v15 = *v14;
      v16 = (a1 + v7[9]);
      if (v16[1])
      {
        v17 = *v16;
        v18 = v16[1];
      }

      else
      {
        v19 = *MEMORY[0x277D7F970];
        v17 = sub_21666D44C();
        v18 = v20;
      }

      v21 = sub_21666D41C();
      [v25 setCropStyle_];

      sub_216657BEC(v17, v18, v25);
    }
  }

  if (a3)
  {
    v26[3] = sub_21664FF08(0, &qword_2811AF450, 0x277CD5D50);
    v26[0] = v12;
    sub_21664C528(a3);
    v22 = v12;
    a3(v26);
    sub_21664D5A4(a3);
    sub_2166579D0(v26);
  }

  if (a2)
  {
    [v12 setRenderHint_];
  }

  [v12 setFittingSize_];
  OUTLINED_FUNCTION_14();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_216655B58(v3, 1, sub_2166579C8, v23);
}

void sub_216655968(uint64_t *a1, void *a2)
{
  v4 = _s10ParametersVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  swift_beginAccess();
  sub_2166570A4(v12 + v13, v11, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4))
  {
    sub_216657168(v11, &qword_27CAB3468, &qword_21666F9C0);
    v14 = 0;
  }

  else
  {
    sub_216657104(v11, v7);
    sub_216657168(v11, &qword_27CAB3468, &qword_21666F9C0);
    v14 = *&v7[*(v4 + 20)];
    sub_216657230(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = sub_216667C84(Strong, v14);

  if (v16)
  {
    v17 = [a2 imageRepresentation];
    sub_216655C64(v17);
  }
}

uint64_t sub_216655B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v13[4] = sub_216657C50;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_216657B64;
  v13[3] = &block_descriptor_2;
  v11 = _Block_copy(v13);

  [v5 setMainThreadBoundDestination:a1 forRepresentationKinds:a2 configurationBlock:v11];
  _Block_release(v11);
}

void sub_216655C64(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = _s10ParametersVMa();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  OUTLINED_FUNCTION_17(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  OUTLINED_FUNCTION_8();
  sub_2166570A4(v2 + v23, v22, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10))
  {
    sub_216657168(v22, &qword_27CAB3468, &qword_21666F9C0);
    v24 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_216656500(0);
    goto LABEL_8;
  }

  sub_216657104(v22, v16);
  sub_216657168(v22, &qword_27CAB3468, &qword_21666F9C0);
  v24 = *(v16 + *(v10 + 20));
  sub_216657230(v16);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = a1;
  v26 = sub_216667CD8();
  if (v26)
  {
    v27 = v26;
    v28 = v26;
    sub_216656500(v27);
  }

  else
  {
    v29 = sub_21666D53C();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v29);
    OUTLINED_FUNCTION_14();
    v30 = swift_allocObject();
    swift_weakInit();
    sub_21666D51C();
    v31 = v24;

    v32 = v25;
    v33 = sub_21666D50C();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v24;
    v34[5] = v30;
    v34[6] = v32;

    sub_216657FB0(0, 0, v9, &unk_21666F1F0, v34);

    v24 = v31;
  }

LABEL_8:
}

uint64_t sub_216655F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = _s10ParametersVMa();
  v6[20] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_21666D51C();
  v6[24] = sub_21666D50C();
  v11 = sub_21666D4FC();
  v6[25] = v11;
  v6[26] = v10;

  return MEMORY[0x2822009F8](sub_216656044, v11, v10);
}

uint64_t sub_216656044()
{
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_8();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
    OUTLINED_FUNCTION_8();
    sub_2166570A4(Strong + v5, v3, &qword_27CAB3468, &qword_21666F9C0);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    v7 = *(v0 + 184);
    if (EnumTagSinglePayload)
    {
      sub_216657168(*(v0 + 184), &qword_27CAB3468, &qword_21666F9C0);
      Strong = 0;
    }

    else
    {
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      sub_216657104(*(v0 + 184), v8);
      sub_216657168(v7, &qword_27CAB3468, &qword_21666F9C0);
      Strong = *(v8 + *(v9 + 20));
      sub_216657230(v8);
    }
  }

  v10 = sub_216667C84(Strong, *(v0 + 136));

  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    *v11 = v0;
    v11[1] = sub_216656224;
    v12 = *(v0 + 152);

    return sub_216667D20();
  }

  else
  {
    v14 = *(v0 + 192);

    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_216656224(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = a1;

  v4 = *(v2 + 208);
  v5 = *(v2 + 200);

  return MEMORY[0x2822009F8](sub_21665634C, v5, v4);
}

uint64_t sub_21665634C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_8();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
    OUTLINED_FUNCTION_8();
    sub_2166570A4(Strong + v6, v4, &qword_27CAB3468, &qword_21666F9C0);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    v8 = *(v0 + 176);
    if (EnumTagSinglePayload)
    {
      sub_216657168(*(v0 + 176), &qword_27CAB3468, &qword_21666F9C0);
      Strong = 0;
    }

    else
    {
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      sub_216657104(*(v0 + 176), v9);
      sub_216657168(v8, &qword_27CAB3468, &qword_21666F9C0);
      Strong = *(v9 + *(v10 + 20));
      sub_216657230(v9);
    }
  }

  v11 = sub_216667C84(Strong, *(v0 + 136));

  if (v11)
  {
    v12 = *(v0 + 144);
    OUTLINED_FUNCTION_8();
    v13 = swift_weakLoadStrong();
    v14 = *(v0 + 224);
    if (v13)
    {
      sub_216656500(*(v0 + 224));
    }
  }

  else
  {
    v14 = *(v0 + 224);
  }

  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);

  v18 = *(v0 + 8);

  return v18();
}

void sub_216656500(void *a1)
{
  v2 = a1;
  sub_2166546F4(a1);
  OUTLINED_FUNCTION_19();
  sub_21665655C(v3, v4, v5);
}

void sub_21665655C(unsigned __int8 *a1, unsigned __int8 a2, char a3)
{
  v7 = a2;
  v8 = sub_21666D28C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_21666D2AC();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v32 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = *a1;
  if (v7 == 2)
  {
    if ((*(v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_shouldEnforceUsageOnMainThread) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    return;
  }

LABEL_6:
  v25 = (v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v26 = *(v3 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  if (v26)
  {
    v27 = v25[1];
    if ((v24 - 1) >= 2)
    {
      v28 = v25[1];

      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v25 = 0;
      v25[1] = 0;
      if ((a3 & 1) == 0)
      {
LABEL_9:
        LOBYTE(aBlock[0]) = v24;
        v26(aBlock);
        sub_21664D5A4(v26);
        return;
      }
    }

    sub_21664FF08(0, &qword_2811AF448, 0x277D85C78);
    v29 = sub_21666D57C();
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = v27;
    *(v30 + 32) = v24;
    aBlock[4] = sub_216657D1C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21666CC70;
    aBlock[3] = &block_descriptor_58;
    v31 = _Block_copy(aBlock);

    sub_21666D29C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_216657D5C(&qword_2811AF470, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3498, &qword_21666F1F8);
    sub_216657DA4();
    sub_21666D5DC();
    MEMORY[0x21CE95AE0](0, v23, v15, v31);
    _Block_release(v31);

    sub_21664D5A4(v26);
    (*(v33 + 8))(v15, v8);
    (*(v32 + 8))(v23, v16);
  }
}

uint64_t sub_2166568C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = sub_21666D3BC();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v30[15] = 3;
  OUTLINED_FUNCTION_19();
  sub_21665655C(v19, v20, v21);
  OUTLINED_FUNCTION_14();
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(&v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v13);
  v23 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = a6;
  *(v24 + 32) = a2;
  *(v24 + 40) = a3;
  (*(v16 + 32))(v24 + v23, &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  v25 = (v24 + ((v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a4;
  v25[1] = a5;
  v26 = (v6 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v27 = *(v6 + OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastLoadingStatusHandler);
  v28 = v26[1];
  *v26 = sub_216657C70;
  v26[1] = v24;

  sub_21664C528(a2);
  sub_21664D5A4(v27);
}

uint64_t sub_216656A98(unsigned __int8 *a1, double a2, double a3, double a4, uint64_t a5, uint64_t (*a6)(uint64_t, double *, double, double), uint64_t a7, uint64_t a8)
{
  v14 = sub_21666CD6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v25) = LOBYTE(v19);
    sub_216656C60(&v25);
  }

  sub_21666CD5C();
  sub_21666CD4C();
  v21 = v20;
  result = (*(v15 + 8))(v18, v14);
  v23 = 3;
  switch(LODWORD(v19))
  {
    case 1:
      v23 = 0;
      v19 = v21 - a2;
      if (a6)
      {
        goto LABEL_8;
      }

      return result;
    case 2:
      v19 = v21 - a2;
      v23 = 1;
      goto LABEL_7;
    case 3:
      v19 = v21 - a2;
      v23 = 2;
      if (!a6)
      {
        return result;
      }

      goto LABEL_8;
    default:
LABEL_7:
      if (a6)
      {
LABEL_8:
        v25 = v19;
        v26 = v23;
        return a6(a8, &v25, a3, a4);
      }

      return result;
  }
}

uint64_t sub_216656C60(unsigned __int8 *a1)
{
  v1 = *a1;
  result = sub_216654054();
  if ((result & 1) != (v1 == 2))
  {

    return sub_216653DE0(v1 == 2);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkLoader()
{
  result = qword_2811AF7D8;
  if (!qword_2811AF7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_216656D48()
{
  OUTLINED_FUNCTION_0_4();
  sub_216657D5C(v0, v1);
  return sub_21666CDAC();
}

BOOL sub_216656E14(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_21664FF08(0, &qword_2811AF428, 0x277D755B8);
    v5 = a1;
    v6 = a2;
    v2 = sub_21666D5AC();
  }

  return (v2 & 1) == 0;
}

BOOL sub_216656EBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      return v2 == 1;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 3;
    default:
      return !*a2;
  }
}

uint64_t sub_216656F18()
{
  v1 = *v0;
  switch(*v0)
  {
    case 1:
      v1 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v1 = 0;
      break;
    case 3:
      v1 = 3;
      break;
    default:
      return MEMORY[0x21CE95D60](v1);
  }

  return MEMORY[0x21CE95D60](v1);
}

uint64_t sub_216656F84()
{
  v1 = *v0;
  sub_21666D7FC();
  switch(v1)
  {
    case 1:
      v1 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v1 = 0;
      break;
    case 3:
      v1 = 3;
      break;
    default:
      break;
  }

  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

uint64_t sub_21665701C()
{
  v1 = *v0;
  sub_21666D7FC();
  switch(v1)
  {
    case 1:
      v1 = 1;
      break;
    case 2:
      MEMORY[0x21CE95D60](2);
      v1 = 0;
      break;
    case 3:
      v1 = 3;
      break;
    default:
      break;
  }

  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

uint64_t sub_2166570A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216657104(uint64_t a1, uint64_t a2)
{
  v4 = _s10ParametersVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216657168(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2166571C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216657230(uint64_t a1)
{
  v2 = _s10ParametersVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21665728C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ParametersVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2166572F8()
{
  sub_2166575DC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21666CDFC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166575DC()
{
  if (!qword_2811AF860)
  {
    _s10ParametersVMa();
    v0 = sub_21666D5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AF860);
    }
  }
}

uint64_t getEnumTagSinglePayload for ArtworkLoader.SimplifiedLoadingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArtworkLoader.SimplifiedLoadingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2166577B8()
{
  result = qword_27CAB3488;
  if (!qword_27CAB3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3488);
  }

  return result;
}

uint64_t sub_21665780C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2166578D4;

  return sub_216655F34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2166578D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_216657A24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  sub_216652E30(a1, v7);
  type metadata accessor for ArtworkLoader();
  if (swift_dynamicCast() && v6)
  {
    v8 = v6;
    a3(&v8, a2);
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0xD000000000000054, 0x8000000216671240);
    sub_21666D67C();
    MEMORY[0x21CE959E0](46, 0xE100000000000000);
    result = sub_21666D69C();
    __break(1u);
  }

  return result;
}

uint64_t sub_216657B64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v9, v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_216657BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21666D41C();

  [a3 setFormat_];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216657C70(unsigned __int8 *a1)
{
  v3 = *(sub_21666D3BC() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + 2);
  v6 = v1[3];
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_216656A98(a1, v6, v10, v11, v5, v7, v8, v1 + v4);
}

uint64_t sub_216657D1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t sub_216657D5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216657DA4()
{
  result = qword_2811AF458;
  if (!qword_2811AF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3498, &qword_21666F1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF458);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return MEMORY[0x2821FF6F8](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return MEMORY[0x2821FF708](v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x2821FF6F8](va, v2, a1);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_216657FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_21665890C(a3, v26 - v11);
  v13 = sub_21666D53C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_21665897C(v12);
  }

  else
  {
    sub_21666D52C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21666D4FC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21666D46C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_21665897C(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21665897C(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_216658254(const void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-v9];
  memcpy(v18, a1, sizeof(v18));
  v11 = sub_21666D53C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_21666D51C();
  v12 = v3;
  sub_216658704(v18, v17);

  v13 = sub_21666D50C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  memcpy(v14 + 5, v18, 0x90uLL);
  v14[23] = a2;
  v14[24] = a3;
  sub_216657FB0(0, 0, v10, &unk_21666F208, v14);
}

uint64_t sub_2166583B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  sub_21666D51C();
  v7[24] = sub_21666D50C();
  v9 = sub_21666D4FC();
  v7[25] = v9;
  v7[26] = v8;

  return MEMORY[0x2822009F8](sub_216658450, v9, v8);
}

uint64_t sub_216658450()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(*(v0 + 160) + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_client);
  memcpy((v0 + 16), *(v0 + 168), 0x90uLL);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_216658500;

  return sub_216658D58(v0 + 16);
}

uint64_t sub_216658500()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v3 = v2;
  v4 = v2[27];
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[28] = v0;

  v7 = v3[25];
  v8 = v3[26];
  if (v0)
  {
    v9 = sub_216658670;
  }

  else
  {
    v9 = sub_216658604;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216658604()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v3(1, 0);
  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_216658670()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  v5 = sub_21666CCFC();
  v4(0, v5);

  OUTLINED_FUNCTION_4_0();

  return v6();
}

uint64_t sub_216658760(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[23];
  v7 = v1[24];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  *v9 = v10;
  v9[1] = sub_21665882C;

  return sub_2166583B4(a1, v3, v4, v5, (v1 + 5), v6, v7);
}

uint64_t sub_21665882C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_21665890C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665897C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3490, &qword_21666F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166589E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216658ADC;

  return v7(a1);
}

uint64_t sub_216658ADC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_216658BC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_2(v4);

  return v7(v6);
}

uint64_t sub_216658C58()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_2(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_216658D58(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_216658D78, 0, 0);
}

uint64_t sub_216658D78()
{
  v16 = v0;
  v1 = *(v0 + 152);
  sub_21664FAA0();
  *(v0 + 160) = v2;
  v3 = v2;
  v4 = *(v0 + 152);
  memcpy(__dst, *(v0 + 144), 0x90uLL);
  *(v0 + 168) = sub_216659378(__dst);
  *(v0 + 176) = v5;
  if (v5 >> 60 == 15)
  {
    sub_21664FE5C();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 152);
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    v12 = sub_21666D41C();
    *(v0 + 184) = v12;
    v13 = sub_21666CD3C();
    *(v0 + 192) = v13;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_216658F84;
    v14 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34A0, &qword_21666F230);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_216659424;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v14;
    [v3 subscriptionOffer:v12 updateOptionsWithClientID:v13 encodedOptions:v0 + 80 completionHandler:?];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_216658F84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_216659118;
  }

  else
  {
    v3 = sub_216659094;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_216659094()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  sub_2166594AC(v0[21], v0[22]);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_216659118()
{
  v29 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  if (qword_27CAB2ED0 != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v5 = v0[19];
  v6 = sub_21666CE2C();
  __swift_project_value_buffer(v6, qword_27CAB5800);

  v7 = v4;
  v8 = sub_21666CE0C();
  v9 = sub_21666D54C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[25];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136446466;
    v15 = *v11;
    v16 = sub_21666D88C();
    v18 = sub_21666B5BC(v16, v17, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2114;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_21664A000, v8, v9, "%{public}s: failed to load subscription offer with error: %{public}@", v12, 0x16u);
    sub_216659588(v13);
    MEMORY[0x21CE96470](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x21CE96470](v14, -1, -1);
    MEMORY[0x21CE96470](v12, -1, -1);
  }

  v21 = v0[25];
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[20];
  swift_willThrow();
  sub_2166594AC(v22, v23);
  swift_unknownObjectRelease();
  v25 = v0[25];
  v26 = v0[1];

  return v26();
}

uint64_t sub_216659378(const void *a1)
{
  v2 = sub_21666CCEC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_21666CCDC();
  memcpy(__dst, a1, sizeof(__dst));
  sub_2166595F0();
  v5 = sub_21666CCCC();

  return v5;
}

uint64_t sub_216659424(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_216659518(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_2166594AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2166594C0(a1, a2);
  }

  return a1;
}

uint64_t sub_2166594C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_216659518(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34B0, &qword_21666F238);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_216659588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34A8, &qword_21666F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2166595F0()
{
  result = qword_27CAB34B8;
  if (!qword_27CAB34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB34B8);
  }

  return result;
}

uint64_t sub_216659644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34F8, &qword_21666F4A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v15 - v8);
  sub_21665BF3C(v1, v15 - v8, &qword_27CAB34C0, &qword_21666F240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3500, &qword_21666F4B0);
    MEMORY[0x21CE957A0](&v16, v13);
  }

  else
  {
    sub_21665BF98(v9, v5);
    sub_21666CE4C();
    sub_216657168(v5, &qword_27CAB34F8, &qword_21666F4A8);
  }

  return v16;
}

uint64_t ArtworkImage.init(artwork:width:height:idealAspectRatio:contentMode:backgroundColor:rawCropStyle:rawImageFormat:reusePolicy:overrideFrameSize:externalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v43 = *a15;
  v24 = type metadata accessor for ArtworkImage(0);
  v25 = v24[5];
  v26 = sub_21666D3BC();
  OUTLINED_FUNCTION_18(v26);
  v28 = v27;
  v48 = v29;
  (*(v27 + 16))(a9 + v25, a1);
  v30 = a9 + v24[6];
  *v30 = a2;
  v30[8] = a3 & 1;
  v31 = a9 + v24[7];
  *v31 = a4;
  v31[8] = a5 & 1;
  v32 = a9 + v24[8];
  *v32 = a6;
  v32[8] = a7 & 1;
  *(a9 + v24[9]) = a8;
  v33 = (a9 + v24[10]);
  *v33 = a11;
  v33[1] = a12;
  v34 = (a9 + v24[11]);
  *v34 = a13;
  v34[1] = a14;
  *(a9 + v24[12]) = v43;
  *(a9 + v24[13]) = a16;
  v35 = sub_21666D38C();
  if (!v35)
  {
    v35 = OUTLINED_FUNCTION_6_0();
  }

  v36 = v35;
  if (a10)
  {
    v37 = a10;
  }

  else
  {
    v38 = v35;
    v37 = sub_21666D1BC();
  }

  *(a9 + v24[14]) = v37;
  if (a18)
  {

    sub_21665B750(a17, a18);
    (*(v28 + 8))(a1, v48);

    sub_21665B79C(a17, a18);

    *a9 = a17;
    a9[1] = a18;
    a9[2] = a19;
  }

  else
  {
    v39 = type metadata accessor for ArtworkLoader();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();

    ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
    OUTLINED_FUNCTION_13_0();
    sub_21666CE3C();

    (*(v28 + 8))(a1, v48);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:width:height:)(double a1)
{
  OUTLINED_FUNCTION_11_0();
  v7 = sub_21666D3BC();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = OUTLINED_FUNCTION_3_1(v11, v23);
  v5(v12);
  v13 = type metadata accessor for ArtworkImage(0);
  v14 = OUTLINED_FUNCTION_7_0(v13);
  v5(v14);
  v15 = v1 + v4[6];
  *v15 = a1;
  *(v15 + 8) = 0;
  OUTLINED_FUNCTION_17_0(v4[7]);
  OUTLINED_FUNCTION_10_0(v4[8]);
  v17 = OUTLINED_FUNCTION_2_1(v16);
  if (!v17)
  {
    v17 = OUTLINED_FUNCTION_6_0();
  }

  v18 = v17;
  v19 = sub_21666D1BC();
  v20 = OUTLINED_FUNCTION_20_0(v19);
  OUTLINED_FUNCTION_19_0(v20);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v21 = OUTLINED_FUNCTION_15_0();
  v2(v21);
  (v2)(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:width:)()
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_21666D3BC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_3_1(v8, v19);
  v3(v9);
  v10 = type metadata accessor for ArtworkImage(0);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v3(v11);
  OUTLINED_FUNCTION_17_0(v2[6]);
  OUTLINED_FUNCTION_5_1(v2[7]);
  OUTLINED_FUNCTION_10_0(v2[8]);
  v13 = OUTLINED_FUNCTION_2_1(v12);
  if (!v13)
  {
    v13 = OUTLINED_FUNCTION_6_0();
  }

  v14 = v13;
  v15 = sub_21666D1BC();
  v16 = OUTLINED_FUNCTION_20_0(v15);
  OUTLINED_FUNCTION_19_0(v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v17 = OUTLINED_FUNCTION_15_0();
  v0(v17);
  (v0)(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(_:height:)()
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_21666D3BC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = OUTLINED_FUNCTION_3_1(v8, v19);
  v3(v9);
  v10 = type metadata accessor for ArtworkImage(0);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v3(v11);
  OUTLINED_FUNCTION_5_1(v2[6]);
  OUTLINED_FUNCTION_17_0(v2[7]);
  OUTLINED_FUNCTION_10_0(v2[8]);
  v13 = OUTLINED_FUNCTION_2_1(v12);
  if (!v13)
  {
    v13 = OUTLINED_FUNCTION_6_0();
  }

  v14 = v13;
  v15 = sub_21666D1BC();
  v16 = OUTLINED_FUNCTION_20_0(v15);
  OUTLINED_FUNCTION_19_0(v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  v17 = OUTLINED_FUNCTION_15_0();
  v0(v17);
  (v0)(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ArtworkImage.automaticallySized(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  v3 = sub_21666D3BC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v6 + 16);
  v12(v10 - v9, a1, v3);
  v13 = type metadata accessor for ArtworkImage(0);
  v12(v1 + v13[5], v11, v3);
  OUTLINED_FUNCTION_5_1(v13[6]);
  OUTLINED_FUNCTION_10_0(v13[7]);
  *(v14 + 8) = v15;
  OUTLINED_FUNCTION_10_0(v13[8]);
  *(v16 + 8) = v17;
  *(v1 + v13[9]) = 2;
  v18 = (v1 + v13[10]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + v13[11]);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + v13[12]) = 0;
  *(v1 + v13[13]) = 0;
  v20 = sub_21666D38C();
  if (!v20)
  {
    v20 = OUTLINED_FUNCTION_6_0();
  }

  v21 = v20;
  *(v1 + v13[14]) = sub_21666D1BC();
  v22 = type metadata accessor for ArtworkLoader();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_0();
  sub_21666CE3C();

  (*(v6 + 8))(v11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.init(base:idealAspectRatio:contentMode:backgroundColor:rawCropStyle:rawImageFormat:reusePolicy:overrideFrameSize:externalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = sub_21666D3BC();
  v21 = OUTLINED_FUNCTION_0_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v59 = *a11;
  v29 = type metadata accessor for ArtworkImage(0);
  v57 = v20;
  v53 = *(v23 + 16);
  v53(v28, a1 + v29[5], v20);
  if (a3)
  {
    v30 = (a1 + v29[8]);
    a2 = *v30;
    v52 = *(v30 + 8);
  }

  else
  {
    v52 = 0;
  }

  v31 = (a1 + v29[6]);
  v32 = (a1 + v29[7]);
  if (a4 == 2)
  {
    a4 = *(a1 + v29[9]);
  }

  v49 = *v31;
  v48 = *(v31 + 8);
  v51 = *v32;
  v50 = *(v32 + 8);
  if (a5)
  {
    v54 = a5;
  }

  else
  {
    v54 = *(a1 + v29[14]);
  }

  v33 = a10;
  if (a7)
  {
    if (a10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v42 = (a1 + v29[10]);
    a6 = *v42;
    a7 = v42[1];

    if (a10)
    {
      goto LABEL_11;
    }
  }

  v43 = (a1 + v29[11]);
  a8 = *v43;
  v33 = v43[1];

LABEL_11:
  v34 = a12;
  if (v59 == 2)
  {
    LOBYTE(v59) = *(a1 + v29[12]);
  }

  if (a12 == 2)
  {
    v34 = *(a1 + v29[13]);
  }

  v53(a9 + v29[5], v28, v57);
  v35 = a9 + v29[6];
  *v35 = v49;
  v35[8] = v48;
  v36 = a9 + v29[7];
  *v36 = v51;
  v36[8] = v50;
  v37 = a9 + v29[8];
  *v37 = a2;
  v37[8] = v52;
  *(a9 + v29[9]) = a4;
  v38 = (a9 + v29[10]);
  *v38 = a6;
  v38[1] = a7;
  v39 = (a9 + v29[11]);
  *v39 = a8;
  v39[1] = v33;
  *(a9 + v29[12]) = v59 & 1;
  *(a9 + v29[13]) = v34 & 1;

  v40 = sub_21666D38C();
  if (!v40)
  {
    v40 = OUTLINED_FUNCTION_6_0();
  }

  v41 = v40;
  *(a9 + v29[14]) = v54;
  if (a14)
  {

    OUTLINED_FUNCTION_9_0();
    (*(v23 + 8))(v28, v57);
    *a9 = a13;
    a9[1] = a14;
    a9[2] = a15;
  }

  else
  {
    v44 = type metadata accessor for ArtworkLoader();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();

    ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
    OUTLINED_FUNCTION_13_0();
    sub_21666CE3C();

    OUTLINED_FUNCTION_9_0();
    (*(v23 + 8))(v28, v57);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C0, &qword_21666F240);
  OUTLINED_FUNCTION_14_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ArtworkImage.artwork.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = *(type metadata accessor for ArtworkImage(v2) + 20);
  v4 = sub_21666D3BC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ArtworkImage.rawCropStyle.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtworkImage(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_21_0();
}

uint64_t ArtworkImage.rawImageFormat.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtworkImage(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_21_0();
}

uint64_t ArtworkImage.reusePolicy.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  result = type metadata accessor for ArtworkImage(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t ArtworkImage.backgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkImage(0) + 56));
}

uint64_t ArtworkImage.containerSize.getter()
{
  sub_21665A70C(v1);
  if (v1[57] << 8 == 768)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_21665A70C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArtworkImage(0);
  v5 = v4[5];
  v6 = sub_21666D35C();
  v7 = sub_21666D37C();
  v8 = v7;
  v9 = v2 + v4[6];
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v2 + v4[7];
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = v2 + v4[8];
  v16 = 1.0;
  if (v6 >= 1 && v7 >= 1)
  {
    v16 = v6 / v7;
  }

  v18 = *(v2 + v4[9]);
  v19 = *v15;
  v20 = *(v15 + 8);
  if (v11)
  {
    if (v14)
    {
      v6 = 0;
      v8 = 0;
      v10 = 0.0;
      v21 = 0;
      v13 = 0.0;
      v22 = 0;
      v23 = 0uLL;
      v19 = 0.0;
      v24 = 0.0;
      v25 = 768;
      v26 = 0.0;
      goto LABEL_21;
    }

    *&v23 = v13;
    v24 = v16 * v13;
  }

  else if (v14)
  {
    v24 = v10;
    *&v23 = v10 / v16;
  }

  else
  {
    *&v23 = v13;
    v24 = v10;
  }

  v27 = v24;
  v26 = *&v23;
  if ((*(v15 + 8) & 1) == 0)
  {
    v31 = *&v23;
    sub_2166687A8(*&v10, v11, *&v13, v14, *v15);
    if (v30)
    {
      v27 = v24;
    }

    else
    {
      v27 = v28;
    }

    v26 = v31;
    if ((v30 & 1) == 0)
    {
      v26 = v29;
    }

    *&v23 = v31;
  }

  v21 = v11;
  v22 = v14;
  *(&v23 + 1) = v27;
  v25 = v20 | (v18 << 8);
LABEL_21:
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v21;
  *(a1 + 32) = v13;
  *(a1 + 40) = v22;
  *(a1 + 48) = v19;
  *(a1 + 56) = v25;
  *(a1 + 64) = v24;
  *(a1 + 72) = v23;
  *(a1 + 88) = v26;
}

uint64_t ArtworkImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for ArtworkImage(0);
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v75 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34C8, &qword_21666F248);
  v7 = OUTLINED_FUNCTION_2(v76);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v67 - v10);
  v12 = sub_21666D3BC();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v78 = _s9BaseImageVMa(0);
  v21 = OUTLINED_FUNCTION_2(v78);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  sub_21665A70C(v79);
  v27 = v81;
  if ((v81 & 0xFF00) == 0x300)
  {
    sub_21665B9D4(v1, &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage);
    v28 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v29 = swift_allocObject();
    sub_21665B7EC(&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    *v11 = sub_21665B850;
    v11[1] = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34E0, &qword_21666F260);
    OUTLINED_FUNCTION_8_0();
    sub_21665B98C(v30, v31);
    sub_21665B8D0();
    OUTLINED_FUNCTION_12_0();
    return sub_21666D00C();
  }

  else
  {
    v87 = v79[1];
    v88 = v79[2];
    v89 = v80;
    v85 = v83;
    v86 = v79[0];
    v84 = v82;
    v33 = v2[5];
    v74 = v15;
    v34 = *(v15 + 16);
    v34(v20, v1 + v33, v12);
    v67 = sub_216659644();
    v35 = v2[14];
    v73 = v12;
    v75 = v11;
    v36 = *(v1 + v35);
    v37 = v2[11];
    v38 = (v1 + v2[10]);
    v40 = *v38;
    v39 = v38[1];
    v72 = v40;
    v71 = v39;
    v41 = (v1 + v37);
    v42 = v2[13];
    v70 = *(v1 + v2[12]);
    v43 = *(v1 + v42);
    v44 = v78;
    v45 = v26 + *(v78 + 32);
    v47 = *v41;
    v46 = v41[1];
    v69 = v47;
    v68 = v46;
    *v45 = swift_getKeyPath();
    *(v45 + 8) = 0;
    v48 = v89;
    v49 = v88;
    *(v26 + 16) = v87;
    *(v26 + 32) = v49;
    v50 = v85;
    *v26 = v86;
    *(v26 + 48) = v48;
    *(v26 + 56) = v27;
    *(v26 + 64) = v84;
    *(v26 + 80) = v50;
    *(v26 + 96) = v36;
    *(v26 + 104) = v43;
    v51 = v26 + *(v44 + 28);
    v34(v51, v20, v12);
    v52 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
    *(v51 + v52[5]) = v67;
    v53 = v51 + v52[6];
    v54 = v87;
    *v53 = v86;
    *(v53 + 16) = v54;
    *(v53 + 32) = v88;
    *(v53 + 48) = v89;
    *(v53 + 56) = v27;
    v55 = v85;
    *(v53 + 64) = v84;
    *(v53 + 80) = v55;
    v56 = (v51 + v52[7]);
    v57 = v71;
    *v56 = v72;
    v56[1] = v57;
    v58 = (v51 + v52[8]);
    v59 = v68;
    *v58 = v69;
    v58[1] = v59;
    *(v51 + v52[9]) = v70;
    v60 = v51 + v52[10];
    *v60 = swift_getKeyPath();
    *(v60 + 8) = 0;
    v61 = v51 + v52[11];
    *v61 = swift_getKeyPath();
    *(v61 + 40) = 0;
    v62 = v51 + v52[12];
    type metadata accessor for ArtworkLoadingObserver(0);
    sub_21665B98C(&qword_2811AF5B0, type metadata accessor for ArtworkLoadingObserver);

    v63 = sub_21666CE8C();
    LOBYTE(v45) = v64;
    (*(v74 + 8))(v20, v73);
    *v62 = v63;
    *(v62 + 8) = v45 & 1;
    sub_21665B9D4(v26, v75, _s9BaseImageVMa);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34E0, &qword_21666F260);
    OUTLINED_FUNCTION_8_0();
    sub_21665B98C(v65, v66);
    sub_21665B8D0();
    OUTLINED_FUNCTION_12_0();
    sub_21666D00C();
    return sub_21665BA30(v26, _s9BaseImageVMa);
  }
}

uint64_t sub_21665AE90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v56 = sub_21666D3BC();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage(0);
  v9 = v8[5];
  v55 = sub_21666D35C();
  v54 = sub_21666D37C();
  sub_21666CEDC();
  v11 = v10;
  v13 = v12;
  v14 = a1 + v8[8];
  if (*(v14 + 8))
  {
    sub_21666CEDC();
    v16 = v15;
    sub_21666CEDC();
    v18 = v16 / v17;
  }

  else
  {
    v18 = *v14;
  }

  HIDWORD(v47) = *(a1 + v8[9]);
  LOBYTE(v62[0]) = 0;
  LOBYTE(v61[0]) = 0;
  LOBYTE(v59) = 0;
  v57 = v4;
  v19 = *(v4 + 16);
  v20 = a1 + v9;
  v21 = v56;
  v19(v7, v20, v56);
  v48 = sub_216659644();
  v58 = *(a1 + v8[14]);
  v22 = v8[11];
  v23 = (a1 + v8[10]);
  v24 = *v23;
  v50 = v23[1];
  v51 = v24;
  v25 = a1 + v22;
  v26 = *(a1 + v22);
  v52 = *(v25 + 8);
  v53 = v26;
  v27 = v8[13];
  v49 = *(a1 + v8[12]);
  v28 = *(a1 + v27);
  v29 = _s9BaseImageVMa(0);
  v30 = a2 + *(v29 + 32);
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  v32 = v54;
  v31 = v55;
  *a2 = v55;
  *(a2 + 8) = v32;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 28) = *(v62 + 3);
  *(a2 + 25) = v62[0];
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  *(a2 + 44) = *(v61 + 3);
  *(a2 + 41) = v61[0];
  *(a2 + 48) = v18;
  *(a2 + 56) = 0;
  v33 = BYTE4(v47);
  *(a2 + 57) = BYTE4(v47);
  *(a2 + 62) = v60;
  *(a2 + 58) = v59;
  *(a2 + 64) = v11;
  *(a2 + 72) = v13;
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v58;
  *(a2 + 104) = v28;
  v34 = (a2 + *(v29 + 28));
  v19(v34, v7, v21);
  v35 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  *&v34[v35[5]] = v48;
  v36 = &v34[v35[6]];
  *v36 = v31;
  *(v36 + 1) = v32;
  *(v36 + 2) = v11;
  v36[24] = 0;
  *(v36 + 25) = v62[0];
  *(v36 + 7) = *(v62 + 3);
  *(v36 + 4) = v13;
  v36[40] = 0;
  *(v36 + 41) = v61[0];
  *(v36 + 11) = *(v61 + 3);
  *(v36 + 6) = v18;
  v36[56] = 0;
  v36[57] = v33;
  *(v36 + 31) = v60;
  *(v36 + 58) = v59;
  *(v36 + 8) = v11;
  *(v36 + 9) = v13;
  *(v36 + 10) = v11;
  *(v36 + 11) = v13;
  v37 = &v34[v35[7]];
  v38 = v50;
  *v37 = v51;
  *(v37 + 1) = v38;
  v39 = &v34[v35[8]];
  v40 = v52;
  *v39 = v53;
  *(v39 + 1) = v40;
  v34[v35[9]] = v49;
  v41 = &v34[v35[10]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = &v34[v35[11]];
  *v42 = swift_getKeyPath();
  v42[40] = 0;
  v43 = &v34[v35[12]];
  type metadata accessor for ArtworkLoadingObserver(0);
  sub_21665B98C(&qword_2811AF5B0, type metadata accessor for ArtworkLoadingObserver);

  v44 = sub_21666CE8C();
  LOBYTE(v34) = v45;
  result = (*(v57 + 8))(v7, v21);
  *v43 = v44;
  v43[8] = v34 & 1;
  return result;
}

double sub_21665B288()
{
  qword_2811AFA40 = 0;
  result = 0.0;
  xmmword_2811AFA20 = 0u;
  *algn_2811AFA30 = 0u;
  return result;
}

uint64_t sub_21665B2A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811AFA18 != -1)
  {
    swift_once();
  }

  return sub_21665BF3C(&xmmword_2811AFA20, a1, &qword_27CAB34E8, &qword_21666F2C0);
}

uint64_t EnvironmentValues.artworkCatalogConfigurationHandler.getter()
{
  sub_21665BA88();

  return sub_21666CFDC();
}

uint64_t EnvironmentValues.artworkCatalogConfigurationHandler.setter(uint64_t a1)
{
  sub_21665BF3C(a1, v3, &qword_27CAB34E8, &qword_21666F2C0);
  sub_21665BA88();
  sub_21666CFEC();
  return sub_216657168(a1, &qword_27CAB34E8, &qword_21666F2C0);
}

void (*EnvironmentValues.artworkCatalogConfigurationHandler.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_21665BA88();
  sub_21666CFDC();
  return sub_21665B4C0;
}

void sub_21665B4C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    OUTLINED_FUNCTION_22();
    sub_21665BF3C(v2 + 40, v2 + 80, &qword_27CAB34E8, &qword_21666F2C0);
    sub_21666CFEC();
    sub_216657168(v2 + 40, &qword_27CAB34E8, &qword_21666F2C0);
  }

  else
  {
    OUTLINED_FUNCTION_22();
    sub_21666CFEC();
  }

  sub_216657168(v2, &qword_27CAB34E8, &qword_21666F2C0);

  free(v2);
}

uint64_t ArtworkLoadingObserver.__allocating_init(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_21666CDEC();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t ArtworkLoadingObserver.init(handler:)(uint64_t a1, uint64_t a2)
{
  sub_21666CDEC();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ArtworkLoadingObserver.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC17_MusicKit_SwiftUI22ArtworkLoadingObserver___observationRegistrar;
  v3 = sub_21666CDFC();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t ArtworkLoadingObserver.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC17_MusicKit_SwiftUI22ArtworkLoadingObserver___observationRegistrar;
  v3 = sub_21666CDFC();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_21665B750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21665B79C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21665B7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665B850@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArtworkImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21665AE90(v4, a1);
}

unint64_t sub_21665B8D0()
{
  result = qword_2811AF4C8;
  if (!qword_2811AF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB34E0, &qword_21666F260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4C8);
  }

  return result;
}

uint64_t sub_21665B954(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21665B98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21665B9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_21_0();
  v8(v7);
  return a2;
}

uint64_t sub_21665BA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21665BA88()
{
  result = qword_2811AFA08;
  if (!qword_2811AFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AFA08);
  }

  return result;
}

void sub_21665BB20()
{
  sub_21665BC48();
  if (v0 <= 0x3F)
  {
    sub_21666D3BC();
    if (v1 <= 0x3F)
    {
      sub_21665BCA0(319, &qword_2811AFC48);
      if (v2 <= 0x3F)
      {
        sub_21665BCA0(319, qword_2811AF4F0);
        if (v3 <= 0x3F)
        {
          sub_21665BCA0(319, &qword_2811AF460);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21665BC48()
{
  if (!qword_2811AFBC0[0])
  {
    type metadata accessor for ArtworkLoader();
    v0 = type metadata accessor for MusicLazyStateOrBinding();
    if (!v1)
    {
      atomic_store(v0, qword_2811AFBC0);
    }
  }
}

void sub_21665BCA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21666D5BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21665BD0C(uint64_t a1, int a2)
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

uint64_t sub_21665BD4C(uint64_t result, int a2, int a3)
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

uint64_t sub_21665BDA4()
{
  result = sub_21666CDFC();
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

unint64_t sub_21665BE70()
{
  result = qword_2811AF498;
  if (!qword_2811AF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB34F0, &qword_21666F448);
    sub_21665B98C(qword_2811AFAE8, _s9BaseImageVMa);
    sub_21665B8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF498);
  }

  return result;
}

uint64_t sub_21665BF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_21_0();
  v9(v8);
  return a2;
}

uint64_t sub_21665BF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB34F8, &qword_21666F4A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(v2 + v3[9]) = 2;
  v5 = (v2 + v3[10]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + v3[11]);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + v3[12]) = 0;
  *(v2 + v3[13]) = 0;

  return sub_21666D38C();
}

void OUTLINED_FUNCTION_5_1(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

CGColorRef OUTLINED_FUNCTION_6_0()
{

  return CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_21665BA30(v0, type metadata accessor for ArtworkImage);
}

uint64_t OUTLINED_FUNCTION_12_0()
{
  v2 = *(v1 - 288);
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_17_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{
  *(v1 + *(v2 + 56)) = a1;

  return type metadata accessor for ArtworkLoader();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_21665BF3C(v0, v0 + 40, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return ArtworkLoader.init(shouldEnforceUsageOnMainThread:)(1);
}

uint64_t sub_21665C214@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3518, &qword_21666F690);
  v2 = *(*(v58 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v58);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v46 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3520, &qword_21666F698);
  v49 = *(v47 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3528, &qword_21666F6A0);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3530, &qword_21666F6A8);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v59 = &v46 - v16;
  memcpy(v64, v1, sizeof(v64));
  v62[0] = *v1;
  LOBYTE(v62[1]) = v1[16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
  MEMORY[0x21CE957A0](__src, v17);
  memcpy(v65, &v64[1] + 8, sizeof(v65));
  memcpy(&v63[7], &v64[1] + 8, 0x90uLL);
  memcpy(__src + 1, v63, 0x97uLL);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v64, 0x180uLL);
  sub_216658704(v65, v62);
  sub_21665EAD8(v64, v62);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3540, &qword_21666F6B8);
  v20 = sub_21665EB10();
  v21 = sub_21665EB74();
  sub_21666D15C();

  memcpy(v67, __src, sizeof(v67));
  sub_21665EBC8(v67);
  v66 = v64[23];
  v62[0] = v64[23];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3558, &qword_21666F6C0);
  sub_21666D20C();
  v22 = swift_allocObject();
  memcpy((v22 + 16), v64, 0x180uLL);
  sub_21665EAD8(v64, v62);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3508, &unk_21666F4C0);
  *&v62[0] = v19;
  *(&v62[0] + 1) = &type metadata for MusicSubscriptionOffer.SheetPresentationModifier.PresentationContext;
  *&v62[1] = v20;
  *(&v62[1] + 1) = v21;
  v46 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_21665EC00();
  v26 = v47;
  v27 = v48;
  sub_21666D15C();

  (*(v49 + 8))(v8, v26);
  memcpy(v62, &v64[12] + 8, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v60, v61, sizeof(v60));
  v28 = swift_allocObject();
  memcpy((v28 + 16), v64, 0x180uLL);
  sub_21665EAD8(v64, v62);
  *&v62[0] = v26;
  *(&v62[0] + 1) = v23;
  *&v62[1] = OpaqueTypeConformance2;
  *(&v62[1] + 1) = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_21665ECE0();
  v31 = v51;
  sub_21666D15C();

  memcpy(__src, v60, 0x9AuLL);
  sub_21665ED34(__src);
  (*(v52 + 8))(v27, v31);
  v61[0] = *(&v64[11] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
  sub_21666D22C();
  v32 = swift_allocObject();
  memcpy((v32 + 16), v64, 0x180uLL);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v64, 0x180uLL);
  sub_21665EAD8(v64, v62);
  sub_21665EAD8(v64, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3588, &qword_21666F6D8);
  *&v62[0] = v31;
  *(&v62[0] + 1) = &_s17PresentationStateON;
  *&v62[1] = v29;
  *(&v62[1] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_21665EE4C();
  v34 = v55;
  v35 = v53;
  v36 = v59;
  sub_21666D13C();

  (*(v54 + 8))(v36, v35);
  v61[0] = v66;
  sub_21666D22C();
  v37 = v62[0];
  LOBYTE(v31) = v62[1];
  v38 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A0, &qword_21666F6E0) + 36);
  *v38 = v37;
  *(v38 + 16) = v31;
  LOBYTE(v61[0]) = 0;

  sub_21666D1FC();
  v39 = *(&v62[0] + 1);
  *(v38 + 24) = v62[0];
  *(v38 + 32) = v39;
  v40 = _s20FailureAlertModifierVMa();
  v41 = *(v40 + 24);
  v42 = sub_21666D1AC();
  v43 = v56;
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v42);
  sub_21665EFF4(v43, v57, &qword_27CAB3518, &qword_21666F690);
  sub_21666D1FC();

  sub_216652DB8(v43, &qword_27CAB3518, &qword_21666F690);
  v44 = *(v40 + 28);
  *(v38 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A8, &qword_216670830);
  return swift_storeEnumTagMultiPayload();
}

void sub_21665CAB0(uint64_t a1, const void *a2, const void *a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v5, a3, sizeof(v5));
  sub_21665CB08(__dst);
}

void sub_21665CB08(const void *a1)
{
  v3 = sub_21666D2DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v66, a1, sizeof(v66));
  memcpy(__dst, (v1 + 200), 0xA8uLL);
  if (v66[0] != 1)
  {
    v12 = *(v1 + 368);
    v13 = *(v1 + 376);
    memcpy(v62, (v1 + 200), sizeof(v62));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
    sub_21666D20C();
    memcpy(v64, v63, 0x9AuLL);
    memcpy(v65, v63, 0x9AuLL);
    v14 = sub_21665F05C(v65);
    if (v14)
    {
      if (v14 != 1)
      {
        return;
      }

      nullsub_1(v65);
      sub_21665ED34(v64);
    }

    else
    {
      v39 = nullsub_1(v65);
      v40 = *v39;
      sub_21665F084(v39 + 8);

      v41 = *(v39 + 152);
      if (v41 != 3 && v41 != 2)
      {
        sub_21665E72C(v61);
        memcpy(v60, __dst, sizeof(v60));
        memcpy(v59, v61, 0x9AuLL);
        sub_21665EFF4(__dst, v62, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v62, v60, sizeof(v62));
        sub_216652DB8(v62, &qword_27CAB3570, &qword_21666F6C8);
        LOBYTE(v60[0]) = v12;
        v60[1] = v13;
        LOBYTE(v59[0]) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3558, &qword_21666F6C0);
        sub_21666D21C();
        return;
      }
    }

    sub_21665E72C(v61);
    memcpy(v60, __dst, sizeof(v60));
    memcpy(v59, v61, 0x9AuLL);
    sub_21665EFF4(__dst, v62, &qword_27CAB3570, &qword_21666F6C8);
    goto LABEL_20;
  }

  memcpy(v62, (v1 + 200), sizeof(v62));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v64, v60, 0x9AuLL);
  memcpy(v65, v60, 0x9AuLL);
  v8 = sub_21665F05C(v65);
  if (v8)
  {
    if (v8 == 1)
    {
      nullsub_1(v65);
      sub_21665ED34(v64);
    }

    sub_21666D2BC();
    v9 = sub_21666D2CC();
    (*(v4 + 8))(v7, v3);
    if (v9)
    {
      v10 = objc_allocWithZone(_s14ViewControllerCMa());
      v11 = sub_21664FFA8();
    }

    else
    {
      v11 = [objc_allocWithZone(MusicKit_SPI_SKCloudServiceSetupViewController) init];
    }

    v42 = v11;
    memcpy(&v63[1], &v66[8], 0x90uLL);
    v63[0] = v42;
    LOBYTE(v63[19]) = 2;
    sub_21665F204(v63);
    memcpy(v60, __dst, sizeof(v60));
    memcpy(v61, v63, 0x9AuLL);
    sub_21665F25C(v66, v62);
    sub_21665EFF4(__dst, v62, &qword_27CAB3570, &qword_21666F6C8);
LABEL_20:
    sub_21666D21C();
    memcpy(v62, v60, sizeof(v62));
    sub_216652DB8(v62, &qword_27CAB3570, &qword_21666F6C8);
    return;
  }

  v15 = nullsub_1(v65);
  v16 = *v15;
  v17 = *(v15 + 152);
  memcpy(v61, &v66[8], 0x90uLL);
  memcpy(v59, (v15 + 8), 0x90uLL);
  v18 = static MusicSubscriptionOffer.Options.== infix(_:_:)(v61, v59);
  memcpy(v63, v61, 0x90uLL);
  sub_21665F25C(v66, v62);
  sub_21665F25C(v66, v62);
  sub_21665F084(v63);
  if (v18)
  {
    if (qword_27CAB2EE0 != -1)
    {
      swift_once();
    }

    v19 = sub_21666CE2C();
    __swift_project_value_buffer(v19, qword_27CAB5830);
    sub_21665F25C(v66, v62);
    sub_216658704(v15 + 8, v62);
    v20 = v16;
    v21 = sub_21666CE0C();
    v22 = sub_21666D55C();
    sub_21665EBC8(v66);

    sub_21665F084(v15 + 8);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v57 = v17;
      v24 = v23;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v58 = v26;
      *v24 = 136446978;
      memcpy(v62, &v66[8], 0x90uLL);
      v27 = MusicSubscriptionOffer.Options.description.getter();
      v29 = v28;
      memcpy(v61, v62, 0x90uLL);
      sub_21665F084(v61);
      v30 = sub_21666B5BC(v27, v29, &v58);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v20;
      *v25 = v20;
      *(v24 + 22) = 2082;
      memcpy(v59, (v15 + 8), 0x90uLL);
      v31 = v20;
      v32 = MusicSubscriptionOffer.Options.description.getter();
      v34 = v33;
      memcpy(v62, v59, 0x90uLL);
      sub_21665F084(v62);
      v35 = sub_21666B5BC(v32, v34, &v58);

      *(v24 + 24) = v35;
      *(v24 + 32) = 2082;
      LOBYTE(v59[0]) = v57;
      v36 = sub_21666D45C();
      v38 = sub_21666B5BC(v36, v37, &v58);

      *(v24 + 34) = v38;
      _os_log_impl(&dword_21664A000, v21, v22, "Unexpectedly changed presentation context for subscription offer to isPresented: true, options: %{public}s while internal presentation state is .active(%{public}@, %{public}s, %{public}s.", v24, 0x2Au);
      sub_216652DB8(v25, &qword_27CAB34A8, &qword_21666F720);
      MEMORY[0x21CE96470](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE96470](v26, -1, -1);
      MEMORY[0x21CE96470](v24, -1, -1);

      return;
    }

    sub_21665EBC8(v66);
  }

  else
  {
    if (qword_27CAB2EE0 != -1)
    {
      swift_once();
    }

    v43 = sub_21666CE2C();
    __swift_project_value_buffer(v43, qword_27CAB5830);
    sub_21665F25C(v66, v62);
    sub_216658704(v15 + 8, v62);
    v44 = sub_21666CE0C();
    v45 = sub_21666D54C();
    sub_21665F084(v15 + 8);
    sub_21665EBC8(v66);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = v47;
      *v46 = 136446466;
      memcpy(v62, (v15 + 8), 0x90uLL);
      v48 = MusicSubscriptionOffer.Options.description.getter();
      v50 = v49;
      memcpy(v61, v62, 0x90uLL);
      sub_21665F084(v61);
      v51 = sub_21666B5BC(v48, v50, &v58);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      memcpy(v59, &v66[8], 0x90uLL);
      v52 = MusicSubscriptionOffer.Options.description.getter();
      v54 = v53;
      memcpy(v62, v59, 0x90uLL);
      sub_21665F084(v62);
      v55 = sub_21666B5BC(v52, v54, &v58);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_21664A000, v44, v45, "Updating subscription offer options while the subscription offer is presented is not supported. Attempting to update options from %{public}s to %{public}s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE96470](v47, -1, -1);
      MEMORY[0x21CE96470](v46, -1, -1);

      return;
    }

    sub_21665EBC8(v66);
  }

  sub_21665F084(v15 + 8);
}

void *sub_21665D430(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  if (*a2 == 2)
  {
    v10 = v3;
    v11 = v4;
    v8 = *a3;
    v9 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
    result = MEMORY[0x21CE957A0](&v7);
    if (v7)
    {
      v8 = *a3;
      v9 = *(a3 + 16);
      v7 = 0;
      return sub_21666D25C();
    }
  }

  return result;
}

void sub_21665D4D0(uint64_t a1, const void *a2, const void *a3)
{
  memcpy(v4, a2, 0x9AuLL);
  memcpy(__dst, a3, sizeof(__dst));
  sub_21665D528(v4);
}

void sub_21665D528(void *__src)
{
  memcpy(__dst, __src, 0x9AuLL);
  memcpy(v23, v1, sizeof(v23));
  v2 = sub_21665F05C(__dst);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *nullsub_1(__dst);
      (*(&v23[10] + 1))(v3);
    }

    else
    {
      aBlock[0] = *(&v23[11] + 8);
      v20[0] = *(&v23[11] + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
      sub_21666D20C();
      if (LOBYTE(__srca[0]) == 1)
      {
        v20[0] = aBlock[0];
        LOBYTE(__srca[0]) = 0;
        sub_21666D21C();
      }

      v20[0] = v23[0];
      LOBYTE(v20[1]) = v23[1];
      __srca[0] = v23[0];
      LOBYTE(__srca[1]) = v23[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3538, &qword_21666F6B0);
      MEMORY[0x21CE957A0](&v22);
      if (v22 == 1)
      {
        __srca[0] = v20[0];
        LOBYTE(__srca[1]) = v20[1];
        v22 = 0;
        sub_21666D25C();
      }
    }
  }

  else
  {
    v4 = nullsub_1(__dst);
    v5 = *(v4 + 152);
    if (v5 == 2)
    {
      v8 = v4 + 8;
      v9 = *v4;
      memcpy(__srca, (v4 + 8), sizeof(__srca));
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        memcpy(v20, __srca, 0x90uLL);
        sub_216658704(v8, aBlock);
        v12 = v9;
        sub_2166623D4();
        type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(0);
        sub_21665F568(&qword_27CAB2FC0, type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey);
        v13 = sub_21666D3CC();

        v14 = swift_allocObject();
        memcpy(v14 + 2, v23, 0x180uLL);
        v14[50] = v12;
        memcpy(v14 + 51, __srca, 0x90uLL);
        *&aBlock[2] = sub_21665F1DC;
        *(&aBlock[2] + 1) = v14;
        *&aBlock[0] = MEMORY[0x277D85DD0];
        *(&aBlock[0] + 1) = 1107296256;
        *&aBlock[1] = sub_21665DF90;
        *(&aBlock[1] + 1) = &block_descriptor_4;
        v15 = _Block_copy(aBlock);
        v16 = v12;
        sub_21665EAD8(v23, v20);

        [v11 musicKit:v13 loadWithOptions:v15 completionHandler:?];
        _Block_release(v15);
      }

      else
      {
        _s14ViewControllerCMa();
        if (swift_dynamicCastClass())
        {
          memcpy(aBlock, __srca, sizeof(aBlock));
          v17 = swift_allocObject();
          memcpy(v17 + 2, v23, 0x180uLL);
          v17[50] = v9;
          memcpy(v17 + 51, __srca, 0x90uLL);
          sub_216658704(v8, v20);
          v18 = v9;
          sub_216658704(v8, v20);
          v19 = v18;
          sub_21665EAD8(v23, v20);
          sub_216658254(aBlock, sub_21665F074, v17);

          sub_21665F084(v8);
        }
      }
    }

    else
    {
      if (v5 == 3)
      {
        v20[0] = *(&v23[11] + 8);
        LOBYTE(__srca[0]) = 1;
        v6 = &qword_27CAB3580;
        v7 = &qword_21666F6D0;
      }

      else
      {
        v20[0] = v23[23];
        LOBYTE(__srca[0]) = v5 & 1;
        v6 = &qword_27CAB3558;
        v7 = &qword_21666F6C0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      sub_21666D21C();
      (*(&v23[10] + 1))(0);
    }
  }
}

uint64_t sub_21665D98C(uint64_t a1)
{
  sub_21665E72C(__src);
  memcpy(__dst, (a1 + 200), sizeof(__dst));
  memcpy(v4, (a1 + 200), sizeof(v4));
  memcpy(v3, __src, sizeof(v3));
  sub_21665EFF4(__dst, v7, &qword_27CAB3570, &qword_21666F6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D21C();
  memcpy(v7, v4, sizeof(v7));
  return sub_216652DB8(v7, &qword_27CAB3570, &qword_21666F6C8);
}

void *sub_21665DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, (a1 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D22C();
  memcpy(__dst, v6, 0xAAuLL);
  v3 = sub_21666D0CC();
  v4 = sub_21666CF7C();
  result = memcpy(a2, __dst, 0xB0uLL);
  *(a2 + 176) = v4;
  *(a2 + 184) = v3;
  return result;
}

void sub_21665DAF0(char a1, void *a2, uint64_t a3, void *a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v18, (a3 + 200), sizeof(v18));
  memcpy(v14, (a3 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v20, __srca, 0x9AuLL);
  memcpy(v21, __srca, 0x9AuLL);
  if (sub_21665F05C(v21))
  {
    sub_21665ED34(v20);
  }

  else
  {
    v10 = nullsub_1(v21);
    v11 = *v10;
    sub_21665F084(v10 + 8);

    if (*(v10 + 152) == 2)
    {
      if (a2)
      {
        memcpy(v14, a3, sizeof(v14));
        v12 = a2;
        sub_21665DD2C(a4, a2);
      }

      else if (a1)
      {
        memcpy(&v17[1], __dst, 0x90uLL);
        v17[0] = a4;
        LOBYTE(v17[19]) = 3;
        sub_21665F204(v17);
        memcpy(__srca, v18, sizeof(__srca));
        memcpy(v15, v17, sizeof(v15));
        v13 = a4;
        sub_216658704(__src, v14);
        sub_21665EFF4(v18, v14, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v14, __srca, 0xA8uLL);
        sub_216652DB8(v14, &qword_27CAB3570, &qword_21666F6C8);
      }

      else
      {
        sub_21666D69C();
        __break(1u);
      }
    }
  }
}

uint64_t sub_21665DD2C(void *a1, void *a2)
{
  memcpy(__dst, (v2 + 24), sizeof(__dst));
  memcpy(__src, (v2 + 200), sizeof(__src));
  v5 = sub_21666CCFC();
  v6 = [v5 domain];
  v7 = sub_21666D44C();
  v9 = v8;

  v10 = *MEMORY[0x277CDD438];
  if (v7 == sub_21666D44C() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_21666D79C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![v5 code])
  {
    sub_21665F218();
    v15 = sub_21665E240(0xD000000000000022, 0x8000000216671390);
    if (!v15)
    {
      memcpy(&v20[1], __dst, 0x90uLL);
      v20[0] = a1;
      LOBYTE(v20[19]) = 0;
      sub_21665F204(v20);
      memcpy(v19, __src, sizeof(v19));
      memcpy(v18, v20, sizeof(v18));
      v16 = a1;
      sub_216658704(__dst, v21);
      sub_21665EFF4(__src, v21, &qword_27CAB3570, &qword_21666F6C8);
      goto LABEL_12;
    }
  }

LABEL_9:
  v20[0] = a2;
  sub_21665F20C(v20);
  memcpy(v19, __src, sizeof(v19));
  memcpy(v18, v20, sizeof(v18));
  sub_21665EFF4(__src, v21, &qword_27CAB3570, &qword_21666F6C8);
  v14 = a2;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D21C();

  memcpy(v21, v19, sizeof(v21));
  return sub_216652DB8(v21, &qword_27CAB3570, &qword_21666F6C8);
}

void sub_21665DF90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_21665E008(char a1, void *a2, uint64_t a3, void *a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v18, (a3 + 200), sizeof(v18));
  memcpy(v14, (a3 + 200), 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3570, &qword_21666F6C8);
  sub_21666D20C();
  memcpy(v20, __srca, 0x9AuLL);
  memcpy(v21, __srca, 0x9AuLL);
  if (sub_21665F05C(v21))
  {
    sub_21665ED34(v20);
  }

  else
  {
    v10 = nullsub_1(v21);
    v11 = *v10;
    sub_21665F084(v10 + 8);

    if (*(v10 + 152) == 2)
    {
      if (a2)
      {
        memcpy(v14, a3, sizeof(v14));
        v12 = a2;
        sub_21665DD2C(a4, v12);
      }

      else if (a1)
      {
        memcpy(&v17[1], __dst, 0x90uLL);
        v17[0] = a4;
        LOBYTE(v17[19]) = 3;
        sub_21665F204(v17);
        memcpy(__srca, v18, sizeof(__srca));
        memcpy(v15, v17, sizeof(v15));
        v13 = a4;
        sub_216658704(__src, v14);
        sub_21665EFF4(v18, v14, &qword_27CAB3570, &qword_21666F6C8);
        sub_21666D21C();
        memcpy(v14, __srca, 0xA8uLL);
        sub_216652DB8(v14, &qword_27CAB3570, &qword_21666F6C8);
      }

      else
      {
        sub_21666D69C();
        __break(1u);
      }
    }
  }
}

id sub_21665E240(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = sub_21666D41C();
  }

  else
  {
    v2 = 0;
  }

  v8[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_21666CD0C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_21665E324(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  memcpy(__dst, a1 + 8, sizeof(__dst));
  v5 = *a2;
  memcpy(v13, a2 + 8, sizeof(v13));
  if (v4 == v5)
  {
    memcpy(__src, a1 + 8, sizeof(__src));
    memcpy(v8, a2 + 8, sizeof(v8));
    v6 = static MusicSubscriptionOffer.Options.== infix(_:_:)(__src, v8);
    memcpy(v10, v8, sizeof(v10));
    sub_216658704(__dst, v11);
    sub_216658704(v13, v11);
    sub_21665F084(v10);
    memcpy(v11, __src, sizeof(v11));
    sub_21665F084(v11);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21665E414()
{
  v1 = *v0;
  memcpy(v3, v0 + 8, sizeof(v3));
  sub_21666D81C();
  return MusicSubscriptionOffer.Options.hash(into:)();
}

uint64_t sub_21665E470()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_21666D7FC();
  sub_21666D81C();
  MusicSubscriptionOffer.Options.hash(into:)();
  return sub_21666D83C();
}

uint64_t sub_21665E4E8()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_21666D7FC();
  sub_21666D81C();
  MusicSubscriptionOffer.Options.hash(into:)();
  return sub_21666D83C();
}

uint64_t View.musicSubscriptionOffer(isPresented:options:onLoadCompletion:)(uint64_t a1, uint64_t a2, char a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(&v19[7], v10, 0x90uLL);
  sub_216658704(__dst, v24);

  sub_21666D1FC();
  LOBYTE(v10) = v24[0];
  v14 = v24[1];
  sub_21665E72C(__srca);
  memcpy(v24, __srca, 0x9AuLL);
  sub_21666D1FC();
  memcpy(v23, v22, sizeof(v23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3508, &unk_21666F4C0);
  sub_21666D1FC();
  v18[0] = a1;
  v18[1] = a2;
  LOBYTE(v18[2]) = a3;
  memcpy(&v18[2] + 1, v19, 0x97uLL);
  v18[21] = a5;
  v18[22] = a6;
  LOBYTE(v18[23]) = v10;
  v18[24] = v14;
  memcpy(&v18[25], v23, 0xA8uLL);
  LOBYTE(v18[46]) = v24[0];
  v18[47] = v24[1];
  MEMORY[0x21CE956A0](v18, a7, &type metadata for MusicSubscriptionOffer.SheetPresentationModifier, a8);
  memcpy(v24, v18, 0x180uLL);
  return sub_21665E75C(v24);
}

_BYTE *storeEnumTagSinglePayload for MusicSubscriptionOffer(_BYTE *result, int a2, int a3)
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

unint64_t sub_21665E838()
{
  result = qword_27CAB3510;
  if (!qword_27CAB3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3510);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17_MusicKit_SwiftUI21CloudServiceSetupViewV17PresentationStateO(uint64_t a1)
{
  if ((*(a1 + 153) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 153) & 3;
  }
}

uint64_t sub_21665E8B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_21665E8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21665E9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21)
{
  if (a21 == 1)
  {
  }

  else if (!a21)
  {
  }
}

unint64_t sub_21665EB10()
{
  result = qword_27CAB3548;
  if (!qword_27CAB3548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3540, &qword_21666F6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3548);
  }

  return result;
}

unint64_t sub_21665EB74()
{
  result = qword_27CAB3550;
  if (!qword_27CAB3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3550);
  }

  return result;
}

unint64_t sub_21665EC00()
{
  result = qword_27CAB3560;
  if (!qword_27CAB3560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
    sub_21665EC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3560);
  }

  return result;
}

unint64_t sub_21665EC84()
{
  result = qword_27CAB3568;
  if (!qword_27CAB3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3568);
  }

  return result;
}

unint64_t sub_21665ECE0()
{
  result = qword_27CAB3578;
  if (!qword_27CAB3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3578);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[26];

  OUTLINED_FUNCTION_0_6();
  v14 = v0[47];

  v15 = v0[49];

  return MEMORY[0x2821FE8E8](v0, 400, 7);
}

unint64_t sub_21665EE4C()
{
  result = qword_27CAB3590;
  if (!qword_27CAB3590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3588, &qword_21666F6D8);
    sub_21665EED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3590);
  }

  return result;
}

unint64_t sub_21665EED8()
{
  result = qword_27CAB3598;
  if (!qword_27CAB3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3598);
  }

  return result;
}

uint64_t sub_21665EF2C(uint64_t a1)
{
  v2 = sub_21666CEFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21666CFAC();
}

uint64_t sub_21665EFF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21665F05C(uint64_t a1)
{
  if (*(a1 + 153) <= 1u)
  {
    return *(a1 + 153);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  v11 = *(v0 + 176);

  v12 = *(v0 + 192);

  v13 = *(v0 + 208);

  OUTLINED_FUNCTION_0_6();
  v14 = *(v0 + 376);

  v15 = *(v0 + 392);

  v16 = *(v0 + 416);

  v17 = *(v0 + 432);

  v18 = *(v0 + 448);

  v19 = *(v0 + 464);

  v20 = *(v0 + 480);

  v21 = *(v0 + 496);

  v22 = *(v0 + 512);

  v23 = *(v0 + 528);

  v24 = *(v0 + 544);

  return MEMORY[0x2821FE8E8](v0, 552, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21665F218()
{
  result = qword_27CAB35B0;
  if (!qword_27CAB35B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB35B0);
  }

  return result;
}

uint64_t sub_21665F29C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_21665F2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21665F350()
{
  result = qword_27CAB35B8;
  if (!qword_27CAB35B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35A0, &qword_21666F6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3530, &qword_21666F6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3588, &qword_21666F6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3528, &qword_21666F6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3520, &qword_21666F698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3508, &unk_21666F4C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3540, &qword_21666F6B8);
    sub_21665EB10();
    sub_21665EB74();
    swift_getOpaqueTypeConformance2();
    sub_21665EC00();
    swift_getOpaqueTypeConformance2();
    sub_21665ECE0();
    swift_getOpaqueTypeConformance2();
    sub_21665EE4C();
    swift_getOpaqueTypeConformance2();
    sub_21665F568(&qword_27CAB35C0, _s20FailureAlertModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35B8);
  }

  return result;
}

uint64_t sub_21665F568(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_0_6()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v16 = *(v0 + 368);
  v15 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 344);
  v11 = *(v0 + 296);
  v12 = *(v0 + 312);
  v10 = *(v0 + 280);

  sub_21665E9C0(v2, v3, v4, v5, v6, v7, v8, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16, SHIBYTE(v16));
}

uint64_t ArtworkImage._Proxy.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21666D3BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double ArtworkImage._Proxy.size.getter()
{
  v1 = v0 + *(type metadata accessor for ArtworkImage._Proxy() + 20);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for ArtworkImage._Proxy()
{
  result = qword_2811AF9F8;
  if (!qword_2811AF9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ArtworkImage._Proxy.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkImage._Proxy() + 24));
  v2 = v1;
  return v1;
}

BOOL static ArtworkImage._Proxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21666D3AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkImage._Proxy();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_21665F7E0();
      v14 = v13;
      v15 = v12;
      v16 = sub_21666D5AC();

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v13;
}

unint64_t sub_21665F7E0()
{
  result = qword_2811AF428;
  if (!qword_2811AF428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AF428);
  }

  return result;
}

void sub_21665F850()
{
  sub_21666D3BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_21665F8EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21665F8EC()
{
  if (!qword_2811AF420)
  {
    sub_21665F7E0();
    v0 = sub_21666D5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811AF420);
    }
  }
}

uint64_t sub_21665F954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  __swift_allocate_value_buffer(v0, qword_27CAB5850);
  v1 = __swift_project_value_buffer(v0, qword_27CAB5850);
  v2 = type metadata accessor for ArtworkImage._Proxy();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_21665F9D0(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_21665FB98(a1, v8);
  v11 = type metadata accessor for ArtworkImage._Proxy();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    a2();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
    {
      sub_216653760(v8);
    }
  }

  else
  {
    sub_21665FC08(v8, v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return sub_21665FB98(v10, a1);
}

uint64_t sub_21665FB08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB2F00 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  v3 = __swift_project_value_buffer(v2, qword_27CAB5850);

  return sub_216653C6C(v3, a1);
}

uint64_t sub_21665FB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21665FC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage._Proxy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21665FC6C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client21WrapperViewController_childViewController] = a1;
  v3.receiver = v1;
  v3.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_21665FD20()
{
  v3.receiver = v0;
  v3.super_class = _s21WrapperViewControllerCMa();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_21665FDD0(v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_21665FDD0(void *a1)
{
  v3 = [objc_opt_self() systemBackgroundColor];
  [a1 setBackgroundColor_];

  v4 = *&v1[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client21WrapperViewController_childViewController];
  [v1 addChildViewController_];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  [a1 bounds];
  [v6 setFrame_];

  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result setAutoresizingMask_];

  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [a1 addSubview_];

  return [v4 didMoveToParentViewController_];
}

id sub_21665FF88()
{
  v2.receiver = v0;
  v2.super_class = _s21WrapperViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_216660038()
{
  sub_21666D3BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkLoader();
    if (v1 <= 0x3F)
    {
      sub_2166601AC(319, &qword_2811AF460, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2166601AC(319, &qword_2811AF4D8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2166601FC(319, &qword_2811AF4E0, &qword_27CAB34E8, &qword_21666F2C0);
          if (v4 <= 0x3F)
          {
            sub_2166601FC(319, &qword_2811AF4E8, &qword_27CAB35D0, "B3");
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2166601AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2166601FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21666CE7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_216660298()
{
  _s9BaseImageV18ArtworkLoaderImageVMa(319);
  if (v0 <= 0x3F)
  {
    sub_2166601AC(319, &qword_2811AF4D8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216660368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666D1DC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 48);
  HIDWORD(v38) = *(v1 + 56);
  v13 = *(v1 + 57);
  v14 = *(v1 + 80);
  v15 = *(v1 + 88);
  v16 = _s9BaseImageVMa(0);
  v17 = sub_2166612A4(*(v2 + *(v16 + 32)), *(v2 + *(v16 + 32) + 8));
  v18 = v2 + *(v16 + 28);
  v19 = *(v18 + *(_s9BaseImageV18ArtworkLoaderImageVMa(0) + 20));
  if (!sub_216654660())
  {
    if (qword_2811AFBA8 != -1)
    {
      OUTLINED_FUNCTION_1_3();
    }

    v20 = qword_2811AFBB0;
  }

  sub_21666D1CC();
  (*(v7 + 104))(v11, *MEMORY[0x277CE0FE0], v4);
  v39 = sub_21666D1EC();

  (*(v7 + 8))(v11, v4);
  v21 = sub_216654660();
  if (!v21)
  {
    if (qword_2811AFBA8 != -1)
    {
      OUTLINED_FUNCTION_1_3();
    }

    v21 = qword_2811AFBB0;
  }

  v22 = v21;
  [v21 size];
  v24 = v23;
  v26 = v25;

  if (v13 == 2)
  {
    LOBYTE(v13) = (v38 & 0x100000000) == 0 && (v27 = fabs((v24 / v26 - v12) / v12), v27 > 2.22044605e-16) && v27 < 0.1;
  }

  v28 = v17 * round(v15 / v17);
  v29 = v17 * round(v14 / v17);
  v30 = v13 & 1;
  v31 = *(v2 + 104);
  if (v31)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  if (*(v2 + 104))
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v28;
  }

  v41 = 1;
  v40 = v31;
  v34 = *(v2 + 96);
  v35 = sub_21666D0BC();
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35D8, &unk_21666F9B0) + 36);

  result = sub_216660668(a1 + v36);
  *a1 = v39;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v30;
  *(a1 + 18) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 40) = v31;
  *(a1 + 48) = v34;
  *(a1 + 56) = v35;
  return result;
}

uint64_t sub_216660668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21666D3BC();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB33A0, &qword_21666EF70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3468, &qword_21666F9C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = _s10ParametersVMa();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArtworkImage._Proxy();
  v40 = a1;
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  v20 = v1 + *(_s9BaseImageVMa(0) + 28);
  v21 = *(v20 + *(_s9BaseImageV18ArtworkLoaderImageVMa(0) + 20));
  v22 = OBJC_IVAR____TtC17_MusicKit_SwiftUI13ArtworkLoader_lastParameters;
  swift_beginAccess();
  sub_2166570A4(v21 + v22, v14, &qword_27CAB3468, &qword_21666F9C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return sub_216657168(v14, &qword_27CAB3468, &qword_21666F9C0);
  }

  sub_21665728C(v14, v18);
  v24 = v39;
  (*(v39 + 16))(v6, v18, v3);
  v25 = &v18[*(v15 + 28)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = sub_216654660();
  v29 = v6;
  if (v28)
  {
    v30 = v28;
    if (qword_2811AFBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_2811AFBA8 != -1)
    {
      swift_once();
    }

    v30 = qword_2811AFBB0;
  }

  v31 = qword_2811AFBB0;
  sub_21665F7E0();
  v32 = v31;
  v33 = sub_21666D5AC();

  v34 = 0;
  if ((v33 & 1) == 0)
  {
    v34 = sub_216654660();
    if (!v34)
    {
      v35 = v32;
      v34 = v32;
    }
  }

  sub_216657230(v18);
  v36 = v40;
  sub_216657168(v40, &qword_27CAB33A0, &qword_21666EF70);
  (*(v24 + 32))(v10, v29, v3);
  v37 = &v10[*(v19 + 20)];
  *v37 = v26;
  *(v37 + 1) = v27;
  *&v10[*(v19 + 24)] = v34;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
  return sub_21665FB98(v10, v36);
}

uint64_t sub_216660A50()
{
  v1 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  memcpy(v3, (v0 + *(v1 + 24)), sizeof(v3));
  return sub_216660A94(v0, v3);
}

uint64_t sub_216660A94(uint64_t a1, double *a2)
{
  v3 = v2;
  v5 = _s9BaseImageV18ArtworkLoaderImageVMa(0);
  v6 = v2 + v5[10];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = sub_2166612A4(*v6, v8);
  v10 = a2[8];
  v11 = a2[9];
  v12 = sub_2166612A4(v7, v8);
  v13 = a2[10];
  v14 = a2[11];
  v15 = *(v3 + v5[5]);
  v16 = sub_2166612A4(v7, v8);
  v17 = (v3 + v5[7]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (v3 + v5[8]);
  v21 = *v20;
  v22 = v20[1];
  v33[0] = *(v3 + v5[9]);
  v23 = v3 + v5[11];
  sub_21666149C(v32);
  if (v32[3])
  {
    sub_216661AD4(v32, v31);
    v24 = swift_allocObject();
    sub_216652E18(v31, v24 + 16);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v25 = sub_216661B38;
  }

  else
  {
    sub_216657168(v32, &qword_27CAB34E8, &qword_21666F2C0);
    v25 = 0;
    v24 = 0;
  }

  v26 = sub_216661698(*(v3 + v5[12]), *(v3 + v5[12] + 8));
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  sub_2166549B0(a1, v18, v19, v21, v22, v33, 0, v25, v16, v9 * round(v10 / v9), v9 * round(v11 / v9), v12 * round(v13 / v12), v12 * round(v14 / v12), v24, v27, v28);
  sub_21664D5A4(v27);
  return sub_21664D5A4(v25);
}

uint64_t sub_216660CC0(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_216660D1C()
{
  result = sub_216660D3C();
  qword_2811AFBB0 = result;
  return result;
}

uint64_t sub_216660D3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v1 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 16) = _Q0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_216661470;
  *(v7 + 24) = v1;
  v11[4] = sub_21664FE34;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_216660F54;
  v11[3] = &block_descriptor_5;
  v8 = _Block_copy(v11);

  v9 = [v0 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

id sub_216660EC4(void *a1, double a2, double a3)
{
  v6 = [objc_opt_self() clearColor];
  [v6 setFill];

  return [a1 fillRect_];
}

void sub_216660F54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_216660FC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3638, &qword_21666FA90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3640, &qword_21666FA98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  if (a4)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3648, &unk_21666FAA0);
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0);
    return sub_21666D00C();
  }

  else
  {
    sub_21666D27C();
    sub_21666CECC();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3648, &unk_21666FAA0);
    (*(*(v16 - 8) + 16))(v13, a1, v16);
    v17 = &v13[*(v10 + 36)];
    v18 = v19[1];
    *v17 = v19[0];
    *(v17 + 1) = v18;
    *(v17 + 2) = v19[2];
    sub_2166570A4(v13, v9, &qword_27CAB3640, &qword_21666FA98);
    swift_storeEnumTagMultiPayload();
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0);
    sub_21666D00C();
    return sub_216657168(v13, &qword_27CAB3640, &qword_21666FA98);
  }
}

double sub_2166612A4(uint64_t a1, char a2)
{
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v10 = sub_21666D55C();
  v11 = sub_21666D0AC();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = *&v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_21666B5BC(0x74616F6C464743, 0xE700000000000000, &v15);
    _os_log_impl(&dword_21664A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x21CE96470](v13, -1, -1);
    MEMORY[0x21CE96470](v12, -1, -1);
  }

  sub_21666CFBC();
  swift_getAtKeyPath();
  sub_216661490(a1, 0);
  (*(v5 + 8))(v8, v4);
  return v15;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216661490(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21666149C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2166570A4(v2, v17, &qword_27CAB35E0, &qword_21666F9C8);
  if (v19 == 1)
  {
    v10 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v18;
  }

  else
  {
    v11 = sub_21666D55C();
    v12 = sub_21666D0AC();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_21666B5BC(0xD00000000000002CLL, 0x8000000216671500, &v16);
      _os_log_impl(&dword_21664A000, v12, v11, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x21CE96470](v14, -1, -1);
      MEMORY[0x21CE96470](v13, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_216661698(uint64_t a1, char a2)
{
  v4 = sub_21666CFCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_21666D55C();
    v10 = sub_21666D0AC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21666B5BC(0xD000000000000020, 0x80000002166714D0, &v15);
      _os_log_impl(&dword_21664A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CE96470](v12, -1, -1);
      MEMORY[0x21CE96470](v11, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

uint64_t sub_216661864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21666CFCC();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A8, &qword_216670830);
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v26 - v16);
  sub_2166570A4(v2, &v26 - v16, &qword_27CAB35A8, &qword_216670830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21666CEFC();
    OUTLINED_FUNCTION_2(v18);
    return (*(v19 + 32))(a1, v17);
  }

  else
  {
    v21 = *v17;
    v22 = sub_21666D55C();
    v23 = sub_21666D0AC();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_21666B5BC(0x414C52556E65704FLL, 0xED00006E6F697463, &v27);
      _os_log_impl(&dword_21664A000, v23, v22, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x21CE96470](v25, -1, -1);
      MEMORY[0x21CE96470](v24, -1, -1);
    }

    sub_21666CFBC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t sub_216661AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkFrame(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArtworkFrame(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_216661BB4()
{
  result = qword_27CAB35E8;
  if (!qword_27CAB35E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35D8, &unk_21666F9B0);
    sub_216661C6C();
    sub_2166620F4(&qword_2811AF480, &qword_27CAB3630, &qword_21666FA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35E8);
  }

  return result;
}

unint64_t sub_216661C6C()
{
  result = qword_27CAB35F0;
  if (!qword_27CAB35F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB35F8, "r<");
    sub_216661D24();
    sub_2166620F4(&qword_27CAB2E60, &qword_27CAB3628, &qword_21666FA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB35F0);
  }

  return result;
}

unint64_t sub_216661D24()
{
  result = qword_2811AF4A0;
  if (!qword_2811AF4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3600, &qword_21666FA08);
    sub_216661DB0();
    sub_216661FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4A0);
  }

  return result;
}

unint64_t sub_216661DB0()
{
  result = qword_2811AF4A8;
  if (!qword_2811AF4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3608, &qword_21666FA10);
    sub_216661E3C();
    sub_216661F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4A8);
  }

  return result;
}

unint64_t sub_216661E3C()
{
  result = qword_2811AF4B0;
  if (!qword_2811AF4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3610, &qword_21666FA18);
    sub_216661EF4();
    sub_2166620F4(&qword_2811AF4D0, &qword_27CAB3620, &qword_21666FA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4B0);
  }

  return result;
}

unint64_t sub_216661EF4()
{
  result = qword_2811AF4B8;
  if (!qword_2811AF4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3618, &qword_21666FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4B8);
  }

  return result;
}

unint64_t sub_216661F78()
{
  result = qword_2811AF478;
  if (!qword_2811AF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF478);
  }

  return result;
}

unint64_t sub_216661FCC()
{
  result = qword_2811AFBB8;
  if (!qword_2811AFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AFBB8);
  }

  return result;
}

unint64_t sub_21666203C()
{
  result = qword_2811AF4C0;
  if (!qword_2811AF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3640, &qword_21666FA98);
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF4C0);
  }

  return result;
}

uint64_t sub_2166620F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21666213C()
{
  result = qword_2811AF490;
  if (!qword_2811AF490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3650, &unk_21666FAB0);
    sub_21666203C();
    sub_2166620F4(&qword_2811AF488, &qword_27CAB3648, &unk_21666FAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AF490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_216662228()
{
  v0 = sub_21666D44C();
  v2 = v1;
  if (v0 == sub_21666D44C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21666D79C();
  }

  return v5 & 1;
}

uint64_t sub_2166622AC()
{
  sub_21666D7FC();
  OUTLINED_FUNCTION_19_1();
  return sub_21666D83C();
}

uint64_t sub_2166622E8()
{
  sub_21666D7FC();
  sub_21666D47C();
  return sub_21666D83C();
}

uint64_t sub_216662350()
{
  sub_21666D7FC();
  sub_21666D47C();
  return sub_21666D83C();
}

uint64_t sub_21666239C()
{
  sub_21666D7FC();
  OUTLINED_FUNCTION_19_1();
  return sub_21666D83C();
}

uint64_t sub_2166623D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[7];
  v7 = v0[9];
  v143 = v0[6];
  v154 = v0[8];
  v209 = v0[2];
  v220 = v0[11];
  v165 = v0[10];
  v176 = v0[12];
  v231 = v0[13];
  v242 = v0[15];
  v187 = v0[14];
  v198 = v0[16];
  v253 = v0[17];
  type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(0);
  sub_216665710();

  v8 = sub_21666D3EC();
  v9 = MEMORY[0x277D837D0];
  v279 = MEMORY[0x277D837D0];
  v277 = v1;
  v278 = v2;
  OUTLINED_FUNCTION_17_1(v8, v10, v11, v12, v13, v14, v15, v16, v132, v143, v154, v165, v176, v187, v198, v209, v220, v231, v242, v253, v264, v276);
  v17 = @"musicKit_action";
  swift_isUniquelyReferenced_nonNull_native();
  v265 = v8;
  sub_216664FC4(&v276, v17);

  if (v5)
  {
    v279 = v9;
    v277 = v4;
    v278 = v5;
    OUTLINED_FUNCTION_17_1(v18, v19, v20, v21, v22, v23, v24, v25, v133, v144, v155, v166, v177, v188, v199, v210, v221, v232, v243, v254, v8, v276);
    v26 = @"musicKit_iTunesItemIdentifier";
    v27 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v27, v28, v29, v30, v31, v32, v33, v34, v134, v145, v156, v167, v178, v189, v200, v211, v222, v233, v244, v255, v266, v276);
  }

  v279 = v9;
  v277 = v210;
  v278 = v3;
  OUTLINED_FUNCTION_17_1(v18, v19, v20, v21, v22, v23, v24, v25, v133, v144, v155, v166, v177, v188, v199, v210, v221, v232, v243, v254, v265, v276);
  v35 = @"musicKit_messageIdentifier";

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_4(isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, v43, v135, v146, v157, v168, v179, v190, v201, v212, v223, v234, v245, v256, v267, v276);

  v52 = v268;
  v53 = v246;
  if (v6)
  {
    v279 = v9;
    v277 = v147;
    v278 = v6;
    OUTLINED_FUNCTION_17_1(v44, v45, v46, v47, v48, v49, v50, v51, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);

    v54 = @"musicKit_affiliateToken";
    v55 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v55, v56, v57, v58, v59, v60, v61, v62, v137, v148, v159, v170, v181, v192, v203, v214, v225, v236, v247, v258, v269, v276);

    v52 = v268;
  }

  v63 = v257;
  v64 = v224;
  if (v7)
  {
    v279 = v9;
    v277 = v158;
    v278 = v7;
    OUTLINED_FUNCTION_17_1(v44, v45, v46, v47, v48, v49, v50, v51, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);

    v65 = @"musicKit_campaignToken";
    v66 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v66, v67, v68, v69, v70, v71, v72, v73, v138, v149, v160, v171, v182, v193, v204, v215, v226, v237, v248, v259, v270, v276);

    v52 = v268;
  }

  v74 = v235;
  if (v64)
  {
    v75 = qword_27CAB2F18;

    if (v75 != -1)
    {
      v76 = swift_once();
    }

    v84 = qword_27CAB5868;
    v279 = v9;
    v277 = v169;
    v278 = v64;
    OUTLINED_FUNCTION_17_1(v76, v77, v78, v79, v80, v81, v82, v83, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);
    v85 = v84;
    v86 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v86, v87, v88, v89, v90, v91, v92, v93, v139, v150, v161, v172, v183, v194, v205, v216, v227, v238, v249, v260, v271, v276);

    v52 = v268;
  }

  if (v74)
  {
    v94 = qword_27CAB2F20;

    if (v94 != -1)
    {
      v95 = swift_once();
    }

    v103 = qword_27CAB5870;
    v279 = v9;
    v277 = v180;
    v278 = v74;
    OUTLINED_FUNCTION_17_1(v95, v96, v97, v98, v99, v100, v101, v102, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);
    v104 = v103;
    v105 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v105, v106, v107, v108, v109, v110, v111, v112, v140, v151, v162, v173, v184, v195, v206, v217, v228, v239, v250, v261, v272, v276);

    v52 = v268;
  }

  if (v53)
  {
    v279 = v9;
    v277 = v191;
    v278 = v53;
    OUTLINED_FUNCTION_17_1(v44, v45, v46, v47, v48, v49, v50, v51, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);

    v113 = @"musicKit__audioAccessorySerialNumber";
    v114 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v114, v115, v116, v117, v118, v119, v120, v121, v141, v152, v163, v174, v185, v196, v207, v218, v229, v240, v251, v262, v273, v276);

    v52 = v268;
  }

  if (v63)
  {
    v279 = v9;
    v277 = v202;
    v278 = v63;
    OUTLINED_FUNCTION_17_1(v44, v45, v46, v47, v48, v49, v50, v51, v136, v147, v158, v169, v180, v191, v202, v213, v224, v235, v246, v257, v268, v276);

    v122 = @"musicKit__audioAccessoryUniqueDeviceIdentifier";
    v123 = OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_1_4(v123, v124, v125, v126, v127, v128, v129, v130, v142, v153, v164, v175, v186, v197, v208, v219, v230, v241, v252, v263, v274, v276);

    return v275;
  }

  return v52;
}

uint64_t static MusicSubscriptionOffer.Options.default.getter()
{
  if (qword_27CAB2F10 != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  memcpy(__dst, &qword_27CAB3658, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_21_0();
  memcpy(v0, v1, 0x90uLL);
  return sub_216658704(__dst, &v3);
}

uint64_t MusicSubscriptionOffer.MessageIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MusicSubscriptionOffer.MessageIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_21_0();
}

void *sub_216662880@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.action.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.messageIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.itemID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options.itemID.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.affiliateToken.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options.affiliateToken.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options.campaignToken.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options.campaignToken.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignToken.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignToken.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignGroup.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options._figaroCampaignGroup.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._homePodSerialNumber.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options._homePodSerialNumber.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t MusicSubscriptionOffer.Options._homePodUniqueDeviceIdentifier.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options._homePodUniqueDeviceIdentifier.setter()
{
  OUTLINED_FUNCTION_13_1();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_216662CFC()
{
  qword_27CAB3668 = 1852403562;
  qword_27CAB3670 = 0xE400000000000000;
  xmmword_27CAB3678 = 0u;
  *&qword_27CAB3688 = 0u;
  xmmword_27CAB3698 = 0u;
  unk_27CAB36A8 = 0u;
  xmmword_27CAB36B8 = 0u;
  unk_27CAB36C8 = 0u;
  xmmword_27CAB36D8 = 0u;
  strcpy(&qword_27CAB3658, "sdkSubscribe");
  unk_27CAB3665 = 0;
  unk_27CAB3666 = -5120;

  qword_27CAB3668 = 1852403562;
  qword_27CAB3670 = 0xE400000000000000;

  xmmword_27CAB3678 = 0uLL;

  qword_27CAB3688 = 0;
  qword_27CAB3690 = 0;

  xmmword_27CAB3698 = 0uLL;
}

uint64_t MusicSubscriptionOffer.Options.init(action:messageIdentifier:itemID:affiliateToken:campaignToken:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  v18 = *a2;
  v17 = a2[1];
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;

  *a9 = v15;
  *(a9 + 8) = v16;

  *(a9 + 16) = v18;
  *(a9 + 24) = v17;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  return result;
}

uint64_t sub_216662E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_21666D79C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000216671660 == a2;
    if (v6 || (sub_21666D79C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
      if (v7 || (sub_21666D79C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461696C69666661 && a2 == 0xEE006E656B6F5465;
        if (v8 || (sub_21666D79C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E676961706D6163 && a2 == 0xED00006E656B6F54;
          if (v9 || (sub_21666D79C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000216671680 == a2;
            if (v10 || (sub_21666D79C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000002166716A0 == a2;
              if (v11 || (sub_21666D79C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000002166716C0 == a2;
                if (v12 || (sub_21666D79C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001ELL && 0x80000002166716E0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_21666D79C();

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