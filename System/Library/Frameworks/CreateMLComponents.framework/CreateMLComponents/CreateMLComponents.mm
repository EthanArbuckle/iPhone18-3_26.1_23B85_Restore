uint64_t sub_237C52F00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237C52F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataReference(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataReference(uint64_t result, int a2, int a3)
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

void sub_237C52FE4(uint64_t a1@<X8>)
{
  sub_237C53018();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_237C5305C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237C5FDE8();
  *a1 = result;
  return result;
}

uint64_t sub_237C530DC()
{
  OUTLINED_FUNCTION_0();
  result = sub_237C53104();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_237C53108()
{
  type metadata accessor for RandomTransformerAdaptor();

  return swift_getWitnessTable();
}

uint64_t sub_237C531B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_237C53224()
{
  type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableTemporalEstimator();
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_237C532AC()
{
  type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableTemporalEstimator();
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_237C53310()
{
  type metadata accessor for TransformerToTemporalAdaptor();
  swift_getWitnessTable();
  type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableTemporalEstimator();
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_237C53468(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237EF6820();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_237EF64B0();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237C53534(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_237EF6820();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_237EF64B0();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_237C535FC()
{
  v0 = sub_237EF9890();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237C53648(char a1)
{
  if (!a1)
  {
    return 0x73726579616CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x65536D6F646E6172;
}

uint64_t sub_237C536D0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237C53718()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237C53750()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_237C5379C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_237C538B0()
{

  OUTLINED_FUNCTION_71();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C538E4()
{

  OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C53918()
{

  OUTLINED_FUNCTION_75();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5394C()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C539D4()
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_77();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = v1 + *(v2 + 44);
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_237C53A54()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = v1 + *(v2 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_237C53AD8()
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_77();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = v1 + *(v2 + 52);
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_237C53B58()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = v1 + *(v2 + 52);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_237C53BFC()
{
  type metadata accessor for TransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableEstimator();
  return OUTLINED_FUNCTION_6_4();
}

Swift::Int sub_237C53CCC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = SlidingWindows.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C53CF8()
{
  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();

  return sub_237EF8D60();
}

uint64_t sub_237C53D6C()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  WitnessTable = swift_getWitnessTable();
  v4 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](v2, v1, v0, WitnessTable, v4);
}

uint64_t sub_237C53DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF7E90();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237C53E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF7E90();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_237C53E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C53F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C54014()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_2_8();
}

uint64_t sub_237C540A8()
{
  type metadata accessor for TabularTransformerToUpdatableEstimatorAdaptor();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_2_8();
}

uint64_t sub_237C54158()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_2_8();
}

uint64_t sub_237C541E8()
{
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_2_8();
}

uint64_t sub_237C54218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  v7 = sub_237EF62C0();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    if (*(*(v6 - 8) + 84) == a2)
    {
      v9 = a1 + *(a3 + 52);
      v10 = a2;
      v8 = v6;
      goto LABEL_7;
    }

    v8 = *(a3 + 24);
    v9 = a1 + *(a3 + 56);
  }

  v10 = a2;
LABEL_7:

  return __swift_getEnumTagSinglePayload(v9, v10, v8);
}

uint64_t sub_237C54318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  v9 = sub_237EF62C0();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    if (*(*(v8 - 8) + 84) == a3)
    {
      v11 = a1 + *(a4 + 52);
      v12 = a2;
      v13 = a2;
      v10 = v8;
      goto LABEL_7;
    }

    v10 = *(a4 + 24);
    v11 = a1 + *(a4 + 56);
  }

  v12 = a2;
  v13 = a2;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
}

_OWORD *sub_237C5463C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_237C546A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8);
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 88));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C54798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 84);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C548B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE578);
  OUTLINED_FUNCTION_3_11();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237C5493C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_10();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C54970()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237C549B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C54A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C54BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 64));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

void sub_237C54C88()
{
  OUTLINED_FUNCTION_17_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 52);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 64)) = (v0 - 1);
  }
}

uint64_t sub_237C54D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v9 = a1 + *(a3 + 40);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237C54DE0()
{
  OUTLINED_FUNCTION_17_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v7 = v1 + *(v2 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_237C54F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF7E90();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237C54FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF7E90();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_237C5503C(void *a1, void *a2)
{
  *a1 = *a2;
  sub_237EF8260();

  return sub_237EF8260();
}

uint64_t sub_237C5508C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_237C55130()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237C551B0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_237C55280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C55228();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237C552CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CABAD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237C553D8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_237C55410()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_237C55598(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C55634(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_77();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
    OUTLINED_FUNCTION_77();
    if (*(v10 + 84) == a2)
    {
      v8 = v9;
      v11 = a3[9];
    }

    else
    {
      sub_237EF62C0();
      OUTLINED_FUNCTION_77();
      if (*(v13 + 84) == a2)
      {
        v8 = v12;
        v11 = a3[10];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF430);
        v11 = a3[11];
      }
    }

    v7 = a1 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t sub_237C5576C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      sub_237EF62C0();
      OUTLINED_FUNCTION_77();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF430);
        v14 = a4[11];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C558B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);
  v3 = OUTLINED_FUNCTION_15_11();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237C55908(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

__n128 sub_237C5599C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_237C559B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF62C0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 60));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_237C55A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237EF62C0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237C55B0C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_15_13();
  sub_237EF6750();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for LSTMFCN.ConvolutionBlock(0);
    OUTLINED_FUNCTION_77();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
      OUTLINED_FUNCTION_77();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[8];
      }

      else
      {
        v8 = sub_237EF6820();
        v12 = a3[11];
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_237C55C1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_15_13();
  sub_237EF6750();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for LSTMFCN.ConvolutionBlock(0);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
      OUTLINED_FUNCTION_77();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = sub_237EF6820();
        v14 = a4[11];
      }
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_237C55D34()
{
  OUTLINED_FUNCTION_15_13();
  v2 = sub_237EF6820();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237C55D74()
{
  OUTLINED_FUNCTION_15_13();
  v2 = sub_237EF6820();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_237C55DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_13();
  sub_237EF6930();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = sub_237EF6C30();
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_237C55E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_13();
  sub_237EF6930();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = sub_237EF6C30();
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_237C56060()
{
  OUTLINED_FUNCTION_61_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return OUTLINED_FUNCTION_6_20();
}

uint64_t sub_237C56118()
{
  type metadata accessor for TransformerToUpdatableEstimatorAdaptor();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return OUTLINED_FUNCTION_6_20();
}

uint64_t sub_237C561F4()
{
  OUTLINED_FUNCTION_61_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return OUTLINED_FUNCTION_6_20();
}

uint64_t sub_237C562AC()
{
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return OUTLINED_FUNCTION_6_20();
}

uint64_t sub_237C56314()
{

  OUTLINED_FUNCTION_75();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C56354()
{

  OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C56388()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C563C8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_237C564B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237EF9D40();
  }
}

uint64_t sub_237C564DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237EF7B10();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_237C56564(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_237EF7B10();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_237C565E4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_237C5664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF60C0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_237C566F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237EF60C0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237C56860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 52));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_237C5691C()
{
  OUTLINED_FUNCTION_17_5();
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 52)) = v0 + 1;
  }
}

uint64_t sub_237C569B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_237EF7E90();
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 64);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 68));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C56AC8()
{
  OUTLINED_FUNCTION_17_5();
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_237EF7E90();
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_77();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 68)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 64);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_237C56CA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237C56CFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v10 = a1 + *(a3 + 84);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_237C56D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v8 = v5 + *(a4 + 84);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

char *sub_237C56E50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_18(a3, result, 56 * a2);
  }

  return result;
}

uint64_t sub_237C56E80()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237C56F20()
{
  type metadata accessor for TabularTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_13_2();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableTabularEstimator();
  return OUTLINED_FUNCTION_5_29();
}

uint64_t sub_237C5716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF8060();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_237EF8040();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C57208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237EF8060();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_237EF8040();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C57300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D24880(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237C57558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF6820();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_237EF6BA0();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C575F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237EF6820();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_237EF6BA0();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C57698()
{
  v0 = sub_237EF9890();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237C576E4(char a1)
{
  if (!a1)
  {
    return 0x79614C65736E6564;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x65536D6F646E6172;
}

uint64_t sub_237C577A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v8 = a1 + *(a3 + 44);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C57858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v10 = a1 + *(a4 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C57A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  if (*(*(v6 - 8) + 84) == a2)
  {
LABEL_4:

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  v7 = sub_237EF62C0();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v6 = v7;
    a1 = v5 + *(a3 + 44);
    goto LABEL_4;
  }

  v9 = *(v5 + *(a3 + 48) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_237C57B20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  if (*(*(*(a4 + 16) - 8) + 84) == a3)
  {
    v6 = a2;
    v7 = *(a4 + 16);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_31_2();
    result = sub_237EF62C0();
    if (*(*(result - 8) + 84) != a3)
    {
      *(v5 + *(a4 + 48) + 8) = (v4 - 1);
      return result;
    }

    v7 = result;
    a1 = v5 + *(a4 + 44);
    a2 = v4;
    v6 = v4;
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, v6, v7);
}

void sub_237C57C6C()
{
  OUTLINED_FUNCTION_76_2();
  type metadata accessor for EstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_64_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

uint64_t sub_237C57D20()
{
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_46();
}

uint64_t sub_237C57E20()
{
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_64_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_46();
}

uint64_t sub_237C57EEC()
{
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_46();
}

void sub_237C57F48()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_63_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

void sub_237C58004()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_63_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

void sub_237C5809C()
{
  OUTLINED_FUNCTION_76_2();
  type metadata accessor for TransformerToTemporalAdaptor();
  swift_getWitnessTable();
  type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_64_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

uint64_t sub_237C581AC()
{
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_46();
}

void sub_237C58234()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_63_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

uint64_t sub_237C58360()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237C583C0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_237C58430(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v10 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_237C584D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237C58584()
{
  type metadata accessor for AnnotatedPredictionTransformerAdaptor();

  return swift_getWitnessTable();
}

uint64_t sub_237C58730()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_237C58784()
{

  OUTLINED_FUNCTION_20_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C587C0()
{

  OUTLINED_FUNCTION_20_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5899C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_237EF6C30();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  sub_237EF6940();
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C58A88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_237EF6C30();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_237EF6940();
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_237C58BA0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for SpatialConvolution();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    type metadata accessor for TemporalConvolution();
    OUTLINED_FUNCTION_77();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
      v9 = a3[7];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

uint64_t sub_237C58C84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for SpatialConvolution();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    type metadata accessor for TemporalConvolution();
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
      v11 = a4[7];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_237C58DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF5EF0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237C58E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF5EF0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_237C58EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v8 = a1 + *(a3 + 44);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C58F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v10 = a1 + *(a4 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_237C590A8()
{
  type metadata accessor for EstimatorToTemporalAdaptor();
  type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_30_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_37();
  swift_getWitnessTable();
  type metadata accessor for ComposedTemporalEstimator();
  return OUTLINED_FUNCTION_0_55();
}

uint64_t sub_237C59130()
{
  type metadata accessor for EstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_30_16();
  swift_getWitnessTable();
  type metadata accessor for ComposedTemporalEstimator();
  return OUTLINED_FUNCTION_0_55();
}

uint64_t sub_237C59194()
{
  type metadata accessor for TransformerToTemporalAdaptor();
  swift_getWitnessTable();
  type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_5_37();
  swift_getWitnessTable();
  type metadata accessor for ComposedTemporalEstimator();
  return OUTLINED_FUNCTION_0_55();
}

uint64_t sub_237C5931C()
{
  type metadata accessor for RandomTransformerAdaptor();
  OUTLINED_FUNCTION_0_56();

  return swift_getWitnessTable();
}

uint64_t sub_237C5938C()
{
  type metadata accessor for RandomTransformerAdaptor();
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  type metadata accessor for ComposedRandomTransformer();
  return OUTLINED_FUNCTION_1_68();
}

uint64_t sub_237C593F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237C59410(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_237C59474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_27();
  v6 = type metadata accessor for Moment(0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_237C59518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_27();
  v8 = type metadata accessor for Moment(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_237C595C4()
{
  OUTLINED_FUNCTION_20_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237C59614()
{
  OUTLINED_FUNCTION_20_27();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_237C59694()
{
  v2 = OUTLINED_FUNCTION_2_63();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237C596D0()
{
  OUTLINED_FUNCTION_2_63();
  v0 = OUTLINED_FUNCTION_4_58();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_237C59704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF5EF0();
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

uint64_t sub_237C597BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_2_63();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_4_58();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4;
  }

  return result;
}

__n128 sub_237C59860(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_237C598EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237C59940(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_237C599A8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_14();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C599DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_237C59A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3010);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_237C59AE0()
{
  OUTLINED_FUNCTION_4_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_237C59B14()
{
  OUTLINED_FUNCTION_31_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_237C59B50()
{
  MEMORY[0x2383E2ED0](v0 + 16);
  OUTLINED_FUNCTION_4_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_237C59B84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_237C59BCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRunning];
  *a2 = result;
  return result;
}

uint64_t sub_237C59C3C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_237C59C74()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237C59DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 52));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_237C59E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 52)) = a2 + 1;
  }
}

uint64_t sub_237C59F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_78();
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_1_78();
    v8 = type metadata accessor for AnnotatedBatch();
    v9 = a1 + *(a3 + 76);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 72));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_237C5A008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_78();
  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 72)) = (a2 - 1);
      return;
    }

    OUTLINED_FUNCTION_1_78();
    v10 = type metadata accessor for AnnotatedBatch();
    v11 = a1 + *(a4 + 76);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C5A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultivariateLinearRegressor.Model();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237C5A134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultivariateLinearRegressor.Model();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_237C5A188(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v10 = a1 + *(a3 + 84);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_237C5A228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    v8 = v5 + *(a4 + 84);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_237C5A370(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C5A42C()
{
  type metadata accessor for TransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  type metadata accessor for ComposedEstimator();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t sub_237C5A548(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_24_25();
  type metadata accessor for TimeSeriesClassifier.Model();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[26];
LABEL_9:
    v9 = a1 + v12;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_77();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[27];
    goto LABEL_9;
  }

  sub_237EF6720();
  OUTLINED_FUNCTION_77();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[28];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[29] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_237C5A6E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_24_25();
  type metadata accessor for TimeSeriesClassifier.Model();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
    return;
  }

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_77();
  if (*(v13 + 84) == a3)
  {
    v10 = v12;
    v14 = a4[26];
LABEL_9:
    v11 = a1 + v14;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_77();
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v14 = a4[27];
    goto LABEL_9;
  }

  sub_237EF6720();
  OUTLINED_FUNCTION_77();
  if (*(v18 + 84) == a3)
  {
    v10 = v17;
    v14 = a4[28];
    goto LABEL_9;
  }

  *(a1 + a4[29] + 8) = (a2 - 1);
}

uint64_t sub_237C5A874()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TemporalAdaptor();
  OUTLINED_FUNCTION_6_1(v2);
  v4 = *(v3 + 80);
  v6 = (v4 + 48) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v1 - 8) + 8))(v0 + v6, v1);
  if (*(v0 + v7))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

__n128 sub_237C5A9E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237C5AAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 88));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C5AB9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 84);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C5ACB8()
{
  type metadata accessor for AnnotatedFeatureTransformerAdaptor();

  return swift_getWitnessTable();
}

uint64_t sub_237C5AD3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_237C5ADA4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_237C5ADB8()
{

  OUTLINED_FUNCTION_75();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5AE20()
{

  OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

__n128 sub_237C5AE7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_237C5AE90()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5AEF8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_237C5AF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = *(a3 + 24);
    v9 = a1 + *(a3 + 60);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237C5B034()
{
  OUTLINED_FUNCTION_17_5();
  type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = v1 + *(v2 + 60);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_237C5B0C8(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[15];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[16];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[17] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_237C5B238()
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_23_8();
  type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_77();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_77();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[15];
    }

    else
    {
      OUTLINED_FUNCTION_23_8();
      sub_237EF7E90();
      OUTLINED_FUNCTION_77();
      if (*(v12 + 84) != v3)
      {
        *(v1 + v2[17] + 8) = (v0 - 1);
        return;
      }

      v6 = v11;
      v10 = v2[16];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_237C5B390()
{
  OUTLINED_FUNCTION_69_6();
  type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_3_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

void sub_237C5B438()
{
  OUTLINED_FUNCTION_69_6();
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_97_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_32();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

void sub_237C5B524()
{
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_52_3();
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_32();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

uint64_t sub_237C5B5E0()
{
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_77();
}

void sub_237C5B63C()
{
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_20_32();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_52_3();
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

void sub_237C5B6E4()
{
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

void sub_237C5B784()
{
  OUTLINED_FUNCTION_69_6();
  type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_42_13();
  swift_getWitnessTable();
  type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

uint64_t sub_237C5B878()
{
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_2_77();
}

void sub_237C5B900()
{
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_32();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

uint64_t sub_237C5BA40()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_237C5BBA4()
{
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedSupervisedEstimator();
  return OUTLINED_FUNCTION_3_77();
}

uint64_t sub_237C5BC4C()
{
  type metadata accessor for TransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedSupervisedEstimator();
  return OUTLINED_FUNCTION_3_77();
}

uint64_t sub_237C5BD10()
{
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedSupervisedEstimator();
  return OUTLINED_FUNCTION_3_77();
}

uint64_t sub_237C5BDB8()
{
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for ComposedSupervisedEstimator();
  return OUTLINED_FUNCTION_3_77();
}

uint64_t sub_237C5BE20()
{

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5BE60()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_237C5BE98()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_237C5BEDC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_237C5BFE8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ColumnSelector() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_237D52128(*(v0 + v4), *(v0 + v4 + 8));
  OUTLINED_FUNCTION_18_33();
  (*(v6 + 8))(v0 + v4 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_237C5C2A8()
{

  OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5C320()
{

  OUTLINED_FUNCTION_71();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

__n128 sub_237C5C368(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C5C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 88));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C5C4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 84);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C5C5EC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_237C5C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EF7730();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_237EF7820();
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 80);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_237C5C788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_237EF7730();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_237EF7820();
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 80) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_237C5C8D0()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_237C5C95C()
{

  OUTLINED_FUNCTION_70();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

__n128 sub_237C5C9A0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_237C5C9AC()
{

  OUTLINED_FUNCTION_22_34();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5CA74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237C5CB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278);
  OUTLINED_FUNCTION_77();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 48));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237C5CC2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278);
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 44);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

__n128 sub_237C5CE44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C5CE50()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_237C5CF74()
{
  type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  type metadata accessor for ComposedTabularEstimator();
  return OUTLINED_FUNCTION_1_103();
}

uint64_t sub_237C5CFD8()
{
  type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  type metadata accessor for ComposedTabularEstimator();
  return OUTLINED_FUNCTION_1_103();
}

uint64_t sub_237C5D0E4()
{

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_237C5D15C()
{

  return MEMORY[0x2821FE8E8](v0, 305, 7);
}

uint64_t sub_237C5D1FC()
{

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_237C5D284()
{

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_237C5D2FC()
{

  return MEMORY[0x2821FE8E8](v0, 313, 7);
}

uint64_t sub_237C5D39C()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_237C5D530(uint64_t a1, uint64_t a2, int *a3)
{
  sub_237EF6C30();
  OUTLINED_FUNCTION_77();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    sub_237EF6940();
    OUTLINED_FUNCTION_77();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v9 = a3[7];
    }

    else
    {
      v8 = sub_237EF6BA0();
      v9 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

uint64_t sub_237C5D608(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_237EF6C30();
  OUTLINED_FUNCTION_77();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_237EF6940();
    OUTLINED_FUNCTION_77();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      v10 = sub_237EF6BA0();
      v11 = a4[8];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

__n128 sub_237C5D784(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_237C5D7C8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237C5D810()
{

  OUTLINED_FUNCTION_20_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5D8A0()
{
  type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_37_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_17();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  type metadata accessor for ComposedSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_1_109();
}

uint64_t sub_237C5D944()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  type metadata accessor for ComposedSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_1_109();
}

uint64_t sub_237C5D9D4()
{
  type metadata accessor for TabularTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_37_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_17();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  type metadata accessor for ComposedSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_1_109();
}

uint64_t sub_237C5DA78()
{
  OUTLINED_FUNCTION_38_17();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_22();
  type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_89();
  swift_getWitnessTable();
  type metadata accessor for ComposedSupervisedTabularEstimator();
  return OUTLINED_FUNCTION_1_109();
}

uint64_t sub_237C5DB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  v7 = sub_237EF62C0();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    if (*(*(v6 - 8) + 84) == a2)
    {
      v9 = a1 + *(a3 + 52);
      v10 = a2;
      v8 = v6;
      goto LABEL_7;
    }

    v8 = *(a3 + 24);
    v9 = a1 + *(a3 + 56);
  }

  v10 = a2;
LABEL_7:

  return __swift_getEnumTagSinglePayload(v9, v10, v8);
}

uint64_t sub_237C5DC34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  v9 = sub_237EF62C0();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    if (*(*(v8 - 8) + 84) == a3)
    {
      v11 = a1 + *(a4 + 52);
      v12 = a2;
      v13 = a2;
      v10 = v8;
      goto LABEL_7;
    }

    v10 = *(a4 + 24);
    v11 = a1 + *(a4 + 56);
  }

  v12 = a2;
  v13 = a2;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
}

uint64_t sub_237C5DE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF6940();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_237EF6C30();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237C5DEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237EF6940();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_237EF6C30();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

__n128 sub_237C5E07C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C5E110()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_237C5E324(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_237C5E338()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_237C5E3B4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_237C5E46C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237C5E478()
{

  OUTLINED_FUNCTION_43_22();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_237C5E610()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_237C5E6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF62C0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_237C5E798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237EF62C0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237C5E844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF6940();
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_237C5E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_237EF6940();
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

__n128 sub_237C5E94C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_237C5E9F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_59();
  v4 = _s5StateOMa();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237C5EA40(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

Swift::Int sub_237C5EA94@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = UnsafeVectorPointer.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_237C5EAC0@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = UnsafeVectorPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

Swift::Int sub_237C5EB3C@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = DenseVector.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_237C5EB68@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = DenseVector.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

Swift::Int sub_237C5EBC8@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = UnsafeMutableVectorPointer.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_237C5EBF4@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = UnsafeMutableVectorPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

__n128 sub_237C5ECB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

char *sub_237C5EDE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_237C5EE08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_237C5EE40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_237C5EE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_237C5EEEC(uint64_t a1, int a2)
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

uint64_t sub_237C5EF0C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_237C5EF90(uint64_t a1, int a2)
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

uint64_t sub_237C5EFB0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_237C5F074(uint64_t a1, int a2)
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

uint64_t sub_237C5F094(uint64_t result, int a2, int a3)
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

uint64_t sub_237C5F0D4(uint64_t a1, id *a2)
{
  result = sub_237EF8570();
  *a2 = 0;
  return result;
}

uint64_t sub_237C5F14C(uint64_t a1, id *a2)
{
  v3 = sub_237EF8580();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_237C5F1CC()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_237C5F1F4()
{
  v0 = sub_237EF8590();
  v1 = MEMORY[0x2383E0790](v0);

  return v1;
}

uint64_t sub_237C5F22C()
{
  sub_237EF8590();
  sub_237EF8610();
}

uint64_t sub_237C5F280()
{
  sub_237EF8590();
  sub_237EFA120();
  sub_237EF8610();
  v0 = sub_237EFA170();

  return v0;
}

uint64_t sub_237C5F3A4()
{
  sub_237EFA120();
  swift_getWitnessTable();
  sub_237EF63E0();
  return sub_237EFA170();
}

uint64_t sub_237C5F418(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_237C5F484()
{
  OUTLINED_FUNCTION_0();
  result = sub_237D27148();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_237C5F4AC(uint64_t a1)
{
  v2 = sub_237C5F6B4(&qword_27DEAD158, type metadata accessor for VNRecognizedPointKey);
  v3 = sub_237C5F6B4(&qword_27DEAD160, type metadata accessor for VNRecognizedPointKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_237C5F568(uint64_t a1)
{
  v2 = sub_237C5F6B4(&qword_27DEAD168, type metadata accessor for VNImageOption);
  v3 = sub_237C5F6B4(&qword_27DEAD170, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_237C5F6B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237C5F81C(uint64_t a1)
{
  v2 = sub_237C5F6B4(&qword_27DEAD1F8, type metadata accessor for URLResourceKey);
  v3 = sub_237C5F6B4(&qword_27DEAD200, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_237C5F928(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237C5F948(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s5PointVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5PointVwst(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

void sub_237C5FA58(uint64_t a1, unint64_t *a2)
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

uint64_t sub_237C5FAA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_237EF8560();

  *a1 = v2;
  return result;
}

uint64_t sub_237C5FAEC(uint64_t a1)
{
  v2 = sub_237C5F6B4(&qword_27DEAD208, type metadata accessor for DeviceType);
  v3 = sub_237C5F6B4(qword_27DEAD210, type metadata accessor for DeviceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_237C5FDE8()
{
  sub_237EF8590();
  v0 = sub_237EF8560();

  return v0;
}

uint64_t sub_237C5FE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  v11 = *(a6 + 24);
  v15 = (*(v11 + 24) + **(v11 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C5FFA4;

  return v15(a1, a2, a4, a5, v12, v11);
}

uint64_t sub_237C5FFA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237C600D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_237C606BC;

  return sub_237C5FE5C(a1, a2, v14, a4, a5, a8);
}

uint64_t Transformer.adaptedAsRandomTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_237C6028C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237C602FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237C60460(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t FullyConnectedNetworkClassifier.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v47 = *v2;
  v10 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 8);
  WitnessTable = swift_getWitnessTable();
  result = v13(v10, v10, WitnessTable, v11, v12);
  if (!v52)
  {
    v53 = v5;
    v45 = a2;
    v46 = v10;
    sub_237C6BDB8();
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v51 = MEMORY[0x277D84F90];
      sub_237C62DB0();
      v19 = v51;
      OUTLINED_FUNCTION_28();
      v22 = v17 + v21;
      v49 = *(v20 + 56);
      v50 = v23;
      v48 = (v20 - 8);
      v24 = v5;
      do
      {
        v25 = v20;
        v50(v9, v22, v24);
        v24 = v53;
        v26 = sub_237EF6810();
        (*v48)(v9, v53);
        v27 = *(v51 + 16);
        if (v27 >= *(v51 + 24) >> 1)
        {
          sub_237C62DB0();
          v24 = v53;
        }

        *(v51 + 16) = v27 + 1;
        *(v51 + 8 * v27 + 32) = v26;
        v22 += v49;
        --v18;
        v20 = v25;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v28 = sub_237C60BD4(1, v19, sub_237C70228, sub_237D6A768);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    if (v33)
    {
      sub_237EF9DE0();
      swift_unknownObjectRetain_n();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        swift_unknownObjectRelease();
        v39 = MEMORY[0x277D84F90];
      }

      v40 = *(v39 + 16);

      if (__OFSUB__(v34 >> 1, v32))
      {
        __break(1u);
      }

      else if (v40 == (v34 >> 1) - v32)
      {
        v36 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v37 = v45;
        v38 = v47;
        if (v36)
        {
          goto LABEL_18;
        }

        v36 = MEMORY[0x277D84F90];
LABEL_17:
        swift_unknownObjectRelease();
LABEL_18:
        v41 = sub_237C60C7C(v36, v38);

        if ((v41 & 1) == 0)
        {
          v42 = sub_237EF93E0();
          swift_allocError();
          v44 = v43;
          sub_237EF93D0();
          (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84168], v42);
          swift_willThrow();
          return (*(*(v46 - 8) + 8))(v37, v46);
        }

        return result;
      }

      swift_unknownObjectRelease();
    }

    sub_237C62A88(v28, v30, v32, v34);
    v36 = v35;
    v37 = v45;
    v38 = v47;
    goto LABEL_17;
  }

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

uint64_t sub_237C60BD4(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C60C7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_33();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_31();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C60CD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_33();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_31();
  }

  v3 = (a2 + 40);
  v4 = (result + 40);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    v8 = v7;
    v10 = *(v4 - 1) == v6 && *(v4 - 2) == v5;
    result = v10 & (*v4 == v8);
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C60D44(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_28();
    v15 = a1 + v14;
    v16 = a2 + v14;
    sub_237EF5EF0();
    v17 = *(v5 + 72);
    while (1)
    {
      sub_237C653E0(v15, v12, &qword_27DEAD440);
      sub_237C653E0(v16, v9, &qword_27DEAD440);
      sub_237C6543C(&qword_27DEAD448, MEMORY[0x277CC9260]);
      if ((sub_237EF8520() & 1) == 0)
      {
        break;
      }

      v18 = *(v29 + 36);
      v19 = &v12[v18];
      v20 = (v9 + v18);
      if (*v19 == *v20 && *(v19 + 1) == v20[1])
      {
        sub_237C65484(v9, &qword_27DEAD440);
        v25 = OUTLINED_FUNCTION_38();
        sub_237C65484(v25, v26);
      }

      else
      {
        v22 = sub_237EF9D40();
        sub_237C65484(v9, &qword_27DEAD440);
        v23 = OUTLINED_FUNCTION_38();
        sub_237C65484(v23, v24);
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      v16 += v17;
      v15 += v17;
      if (!--v13)
      {
        return 1;
      }
    }

    sub_237C65484(v9, &qword_27DEAD440);
    sub_237C65484(v12, &qword_27DEAD440);
  }

  return 0;
}

uint64_t sub_237C60FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_237EF9710())
  {
    if (a2 >> 62)
    {
      result = sub_237EF9710();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_237C6539C();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383E1490](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x2383E1490](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_237EF9050();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C61164(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_33();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return OUTLINED_FUNCTION_33();
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return OUTLINED_FUNCTION_33();
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_31();
}

uint64_t FullyConnectedNetworkClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v46 = a1;
  v5 = type metadata accessor for FullyConnectedNetwork();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v42 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v43 = v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v40 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v21 = a3[2];
  v45[0] = a3[1];
  v45[1] = v21;
  v22 = a3[4];
  v45[2] = a3[3];
  v45[3] = v22;
  v23 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  WitnessTable = swift_getWitnessTable();
  v25 = v44;
  result = v20(v46, v23, WitnessTable, v18, v19);
  if (!v25)
  {
    v27 = v40;
    v28 = v42;
    v29 = v43;
    sub_237C653E0(v46 + *(v23 + 84), v43, &qword_27DEAD298);
    if (__swift_getEnumTagSinglePayload(v29, 1, v41) == 1)
    {
      return sub_237C65484(v29, &qword_27DEAD298);
    }

    else
    {
      v30 = v17;
      sub_237C62E2C(v29, v17);
      sub_237C653E0(v17, v27, &qword_27DEAD2A0);
      v31 = OUTLINED_FUNCTION_36();
      sub_237C62F44(v31, v32, v33);
      *&v45[0] = sub_237D977AC(v27, v28);
      *(&v45[0] + 1) = v34;
      v35 = *(a2 + 24);
      v36 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v35);
      v37 = *(v36 + 16);
      v38 = sub_237C62E9C();
      v37(v45, &type metadata for AdamStorage, v38, v35, v36);
      sub_237C65484(v30, &qword_27DEAD2A0);
    }
  }

  return result;
}

void FullyConnectedNetworkClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v204 = type metadata accessor for Moment(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v13 - v12);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v200 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v19);
  v197 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v201 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v23 - v22);
  v187 = type metadata accessor for AdamDenseLayer(0);
  OUTLINED_FUNCTION_1();
  v193 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v207 = v27 - v26;
  v198 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v192 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v205 = (v30 - v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17(&v165 - v33);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v36);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  v199 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v39);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = &v165 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v165 - v45;
  v47 = a2[2];
  v209[0] = a2[1];
  v209[1] = v47;
  v48 = a2[4];
  v209[2] = a2[3];
  v209[3] = v48;
  v49 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  OUTLINED_FUNCTION_1();
  v51 = v50;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  v54 = (&v165 - v53);
  v55 = v208;
  FullyConnectedNetworkClassifier.decode(from:)(a1, &v165 - v53);
  if (v55)
  {
    return;
  }

  v182 = v43;
  v195 = v54;
  v202 = v46;
  v166 = v51;
  v186 = v49;
  v56 = *(a1 + 24);
  v57 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v56);
  v58 = *(v57 + 16);
  v59 = sub_237C62EF0();
  v58(v209, &type metadata for AdamStorage, &type metadata for AdamStorage, v59, v56, v57);
  v203 = 0;
  v179 = *(&v209[0] + 1);
  v60 = sub_237EF6580();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v60);
  v61 = sub_237EF6530();
  __swift_storeEnumTagSinglePayload(v199, 1, 1, v61);
  v62 = type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_2();
  v65 = sub_237C6543C(v63, v64);
  v66 = v195;
  v185 = v62;
  v184 = v65;
  sub_237EF6680();
  sub_237C6BDB8();
  v176 = *(v67 + 16);
  v175 = v192 + 16;
  v169 = (v192 + 32);
  v183 = (v201 + 1);
  v201 = (v200 + 2);
  ++v200;
  v173 = v192 + 8;
  v68 = v197;
  v69 = v198;
  v70 = v207;
  OUTLINED_FUNCTION_15();
  v73 = v186;
  v74 = v191;
  for (i = v71; ; v71 = i)
  {
    if (v176 == v72)
    {

LABEL_20:
      v156 = *(v73 + 84);
      v157 = v195;
      sub_237C65484(v195 + v156, &qword_27DEAD298);
      sub_237C62E2C(v202, v157 + v156);
      OUTLINED_FUNCTION_29();
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v182);
      v161 = v166;
      (*(v166 + 16))(v168, v157, v73);
      (*(v161 + 8))(v157, v73);
      return;
    }

    if (v72 >= *(v71 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_28();
    v79 = v75 + v76 + *(v77 + 72) * v78;
    v80 = *(v77 + 16);
    v206 = v78;
    v80(v74, v79, v69);
    v81 = *(v179 + 16);
    if (v206 == v81)
    {

      OUTLINED_FUNCTION_8();
      v155(v74, v69);
      goto LABEL_20;
    }

    if (v206 >= v81)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_28();
    v85 = v82 + v83 + v66[9] * v84;
    v86 = v74;
    v87 = *(v190 + 48);
    v88 = *v169;
    v89 = v189;
    (*v169)(v189, v86, v69);
    sub_237C62F44(v85, v89 + v87, type metadata accessor for AdamDenseLayer);
    v88(v205, v89, v69);
    sub_237C6524C(v89 + v87, v70, type metadata accessor for AdamDenseLayer);
    sub_237EF67F0();
    v90 = v46;
    LODWORD(v88) = sub_237EF6C40();
    v91 = *v183;
    (*v183)(v46, v68);
    v92 = OUTLINED_FUNCTION_24();
    MEMORY[0x28223BE20](v92);
    OUTLINED_FUNCTION_27();
    *(v93 - 16) = v90;
    *(v93 - 8) = v88;
    v94 = v203;
    sub_237C62804(sub_237C654DC, v95, v92);
    v97 = v96;
    v98 = v70;
    v100 = v99;

    if (!v97)
    {

      sub_237C6514C();
      swift_allocError();
      *v162 = 0xD000000000000025;
      v162[1] = 0x8000000237EFB480;
      swift_willThrow();
      OUTLINED_FUNCTION_0_0();
      sub_237C652A8(v98, v163);
      OUTLINED_FUNCTION_8();
      v164(v205, v69);
      sub_237C65484(v202, &qword_27DEAD2A0);
      (*(v166 + 8))(v90, v186);
      return;
    }

    v180 = v91;

    v101 = *v201;
    v102 = v194;
    (*v201)(v194, v98, v210);
    v199 = sub_237C651A0();
    v103 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v203 = v104;
    sub_237EF7F00();
    v196 = v94;
    v208 = v100;
    v105 = *v200;
    (*v200)(v102, v210);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v103);
    v109 = v182;
    v110 = *(v182 + 64);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300);
    v171 = v110;
    sub_237EF6650();
    v112 = v207 + *(v204 + 20);
    v181 = v101;
    v101(v102, v112, v210);

    v113 = v196;
    v114 = v210;
    v115 = v188;
    sub_237EF7F00();
    v203 = v113;
    v116 = v102;
    v117 = v115;
    v172 = v105;
    v105(v116, v114);
    OUTLINED_FUNCTION_29();
    v196 = v103;
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v103);
    v121 = *(v109 + 68);
    v170 = v111;
    sub_237EF6650();
    v122 = v207;
    v66 = &qword_27DEAD2B8;
    v46 = &unk_237F13410;
    sub_237C653E0(v207 + *(v187 + 20), v115, &qword_27DEAD2B8);
    if (__swift_getEnumTagSinglePayload(v115, 1, v204) == 1)
    {

      OUTLINED_FUNCTION_0_0();
      v70 = v122;
      sub_237C652A8(v122, v123);
      OUTLINED_FUNCTION_8();
      v69 = v198;
      v124(v205, v198);
      sub_237C65484(v117, &qword_27DEAD2B8);
LABEL_14:
      v68 = v197;
      OUTLINED_FUNCTION_15();
      goto LABEL_17;
    }

    v167 = v121;
    sub_237C6524C(v115, v177, type metadata accessor for Moment);
    v125 = v178;
    v126 = v205;
    v66 = v205;
    sub_237EF67C0();
    v68 = v197;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v125, 1, v197);
    v69 = v198;
    if (EnumTagSinglePayload == 1)
    {

      sub_237C65484(v125, &qword_27DEAD2B0);
    }

    else
    {
      v128 = v125;
      v129 = sub_237EF6C40();
      v180(v125, v68);
      v130 = OUTLINED_FUNCTION_24();
      MEMORY[0x28223BE20](v130);
      OUTLINED_FUNCTION_27();
      *(v131 - 16) = v128;
      *(v131 - 8) = v129;
      v132 = v203;
      sub_237C62804(sub_237C65300, v133, v130);
      v66 = v134;
      v136 = v135;
      v46 = v132;

      if (v66)
      {

        OUTLINED_FUNCTION_37();
        v137();

        OUTLINED_FUNCTION_10();
        v203 = v138;
        v180 = v136;
        v139 = v196;
        sub_237EF7F00();
        v165 = v132;
        v140 = OUTLINED_FUNCTION_38();
        v141 = v172;
        (v172)(v140);
        OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v142, v143, v144, v139);
        v46 = v202;
        sub_237EF6650();
        OUTLINED_FUNCTION_37();
        v145();
        v146 = v165;
        sub_237EF7F00();
        v203 = v146;
        v147 = OUTLINED_FUNCTION_38();
        (v141)(v147);
        OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v148, v149, v150, v139);
        v66 = &v46[v167];
        sub_237EF6650();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0_0();
        v70 = v207;
        sub_237C652A8(v207, v151);
        OUTLINED_FUNCTION_8();
        v69 = v198;
        v152(v205, v198);
        goto LABEL_14;
      }

      v203 = v132;

      v68 = v197;
      v69 = v198;
    }

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0_0();
    v70 = v207;
    sub_237C652A8(v207, v153);
    OUTLINED_FUNCTION_8();
    v154(v126, v69);
LABEL_17:
    v72 = v206 + 1;
    v73 = v186;
    v74 = v191;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_237C624D0()
{
  v1 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_237EF67F0();
  v8 = sub_237EF6C40();
  (*(v3 + 8))(v7, v1);
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_2();
  sub_237C6543C(v9, v10);
  v11 = OUTLINED_FUNCTION_39();
  v18 = v0;
  v19 = v8;
  sub_237C62804(sub_237C654DC, v17, v11);
  v13 = v12;
  v15 = v14;

  if (!v13)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_237C62628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  sub_237EF67C0();
  v5 = sub_237EF6C60();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_237C65484(v4, &qword_27DEAD2B0);
    return 0;
  }

  v6 = sub_237EF6C40();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_2();
  sub_237C6543C(v7, v8);
  v9 = OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  *(v10 - 16) = v0;
  *(v10 - 8) = v6;
  sub_237C62804(sub_237C654DC, v11, v9);
  v13 = v12;
  v15 = v14;

  if (!v13)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_237C62804(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 2);
    v7 = *(v6 - 1);
    v9 = *v6;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = v9;
    sub_237EF8260();

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v8;
    }

    v6 += 3;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

BOOL sub_237C628E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  swift_getAtKeyPath();
  v13 = sub_237EF6C40();
  (*(v8 + 8))(v12, v6);
  return v13 == a5;
}

void sub_237C629E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_16();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD338);
      v9 = swift_allocObject();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_3();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != v4)
    {
      OUTLINED_FUNCTION_32();
      return;
    }

    goto LABEL_9;
  }
}

void sub_237C62A88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_16();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v9 = swift_allocObject();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_3();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != v4)
    {
      OUTLINED_FUNCTION_32();
      return;
    }

    goto LABEL_9;
  }
}

void sub_237C62B2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_16();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
      v9 = swift_allocObject();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_3();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != v4)
    {
      OUTLINED_FUNCTION_32();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_237C62BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_237E98394();
  MEMORY[0x28223BE20](v3);
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = v4;
  v8[5] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C8);
  v6 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237C65328, v8, a1, MEMORY[0x277D839F8], v5, v6);

  if (v8[9] != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_237C62CCC(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = a1;
    if (a1 < 1)
    {
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
      v4 = OUTLINED_FUNCTION_30();
      _swift_stdlib_malloc_size(v4);
      OUTLINED_FUNCTION_3();
      v4[2] = v3;
      v4[3] = v5;
    }

    v6 = v3 & ~(v3 >> 63);
    v7 = 4;
    while (v6)
    {
      *&v4[v7++] = a2;
      --v6;
      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_237C62D70(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C6393C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C62D90(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C63A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_237C62DB0()
{
  OUTLINED_FUNCTION_22();
  sub_237C64B08();
  *v0 = v1;
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

uint64_t sub_237C62E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237C62E9C()
{
  result = qword_27DEAD2A8;
  if (!qword_27DEAD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD2A8);
  }

  return result;
}

unint64_t sub_237C62EF0()
{
  result = qword_27DEAD2E0;
  if (!qword_27DEAD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD2E0);
  }

  return result;
}

uint64_t sub_237C62F44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  return a2;
}

void sub_237C62FA0()
{
  OUTLINED_FUNCTION_22();
  sub_237C64B08();
  *v0 = v1;
}

void sub_237C62FD4()
{
  OUTLINED_FUNCTION_21();
  sub_237C64E08();
  *v0 = v1;
}

uint64_t sub_237C6304C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C63BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C6311C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C63CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63194(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C63DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C631B4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C63ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63414(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C64094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_237C635D8(size_t a1, int64_t a2, char a3)
{
  result = sub_237C6428C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_237C63650(size_t a1, int64_t a2, char a3)
{
  result = sub_237C64458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_237C63670()
{
  OUTLINED_FUNCTION_20();
  sub_237C63FD8();
  *v0 = v1;
}

uint64_t sub_237C636E8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C646D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63708(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C647D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63728(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C648E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63748(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C649F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63804(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C64BB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63824(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C64CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C63844(uint64_t a1, int64_t a2, char a3)
{
  result = sub_237C64EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_237C6393C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD438);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_237D0CC1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C63A44(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_237C5EE08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C63BBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD320);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_237D0CC58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C63CBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 152);
      if (v5)
      {
LABEL_13:
        sub_237D0CCD0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C63DC4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_237C5EE08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C63ED4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_237D0D04C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 56 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_237C63FD8()
{
  OUTLINED_FUNCTION_14();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v4)
    {
      OUTLINED_FUNCTION_34(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_30();
      v8 = _swift_stdlib_malloc_size(v13);
      v13[2] = v3;
      v13[3] = 2 * ((v8 - 32) / 4);
      if (v2)
      {
LABEL_8:
        v14 = OUTLINED_FUNCTION_12();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40(v8, v9, 4 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25();
  if (!v6)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237C64094(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD348);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_237C5EDE8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_237C641A4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD488);
      v11 = OUTLINED_FUNCTION_30();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_35();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_237C5EE08((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_25();
  if (!v7)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_237C6428C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_237D0CE00(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_237C64458(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_237D0CE14(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_237C64624()
{
  OUTLINED_FUNCTION_14();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v4)
    {
      OUTLINED_FUNCTION_34(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_30();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_3();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_12();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40(v8, v9, 8 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25();
  if (!v6)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237C646D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 12);
      if (v5)
      {
LABEL_13:
        sub_237D0CE28((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 12 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C647D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD478);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_237C5EE08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD480);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C648E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD460);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_237D0CE50((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C649F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD468);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_237D0D04C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD470);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_237C64B08()
{
  OUTLINED_FUNCTION_14();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v4)
    {
      OUTLINED_FUNCTION_34(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_30();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_3();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_12();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40(v8, v9, 8 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25();
  if (!v6)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237C64BB8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD328);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_237D0CE50((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD330);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237C64CD0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD420);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_237C5EDE8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_237C64E08()
{
  OUTLINED_FUNCTION_14();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v4)
    {
      OUTLINED_FUNCTION_34(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_30();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_35();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_12();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_40(v8, v9, 16 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25();
  if (!v6)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237C64EB8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_237D0CF58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_237C64FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
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
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_34(a1, a2, a3, a4, a5);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
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
  a7(0);
  OUTLINED_FUNCTION_28();
  if (v11)
  {
    a8(a4 + v23, v15, v20 + v23);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_237C6514C()
{
  result = qword_27DEAD2F0;
  if (!qword_27DEAD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD2F0);
  }

  return result;
}

unint64_t sub_237C651A0()
{
  result = qword_27DEAD2F8;
  if (!qword_27DEAD2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD2F8);
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

uint64_t sub_237C6524C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  return a2;
}

uint64_t sub_237C652A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_237C65348()
{
  result = qword_280C8E3E0[0];
  if (!qword_280C8E3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8E3E0);
  }

  return result;
}

unint64_t sub_237C6539C()
{
  result = qword_280C8CCF8;
  if (!qword_280C8CCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C8CCF8);
  }

  return result;
}

uint64_t sub_237C653E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_36();
  v5(v4);
  return a2;
}

uint64_t sub_237C6543C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237C65484(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_237C652A8(v0, type metadata accessor for Moment);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_237EF6870();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_32()
{

  return memcpy((v3 + 32), (v1 + 8 * v0), v2);
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_237EF6870();
}

void *OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, size_t a3)
{

  return memcpy((v4 + 32), (v3 + 32), a3);
}

uint64_t ApplyEachRandomly.init<A>(probability:_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13[0] = a2;
  v13[1] = a2;
  OUTLINED_FUNCTION_1_0();
  swift_getExtendedExistentialTypeMetadata();
  *(a5 + 8) = sub_237EF89A0();
  *a5 = a6;
  v13[3] = a3;
  v13[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v13);
  a1();
  v11 = type metadata accessor for ApplyEachRandomly();
  sub_237C658D4(v13, v11);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_237C658D4(uint64_t a1, uint64_t a2)
{
  sub_237C66728(a1, v12);
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    sub_237C531B8(&v11, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v5 + 64);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v6(v4, v5);
    sub_237C658D4(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v8 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v9(v7, v8);
    sub_237C658D4(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_237C66728(a1, v15);
    sub_237EF8A60();
    return sub_237EF8A20();
  }
}

uint64_t ApplyEachRandomly.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[23] = v2;
  v1[24] = v3;
  v1[21] = v4;
  v1[22] = v5;
  v1[19] = v6;
  v1[20] = v7;
  v1[18] = v8;
  v10 = *(v9 + 16);
  v1[25] = v10;
  v1[26] = *(v10 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = *v0;
  v1[29] = v0[1];

  return MEMORY[0x2822009F8](sub_237C65BD0, 0, 0);
}

uint64_t sub_237C65BD0()
{
  v1 = *(v0 + 200);
  (*(*(v0 + 208) + 16))(*(v0 + 144), *(v0 + 152), v1);
  sub_237EF8260();
  *(v0 + 96) = v1;
  *(v0 + 104) = v1;
  OUTLINED_FUNCTION_1_0();
  *(v0 + 240) = swift_getExtendedExistentialTypeMetadata();
  v2 = sub_237EF8920();
  *(v0 + 128) = v2;
  if (v2 == sub_237EF8A00())
  {
LABEL_5:

    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {
    while (1)
    {
      v3 = sub_237EF89D0();
      sub_237EF8960();
      if ((v3 & 1) == 0)
      {
        break;
      }

      v4 = *(v0 + 224);
      sub_237C66728(*(v0 + 232) + 40 * v2 + 32, v0 + 16);
      sub_237EF8A40();
      sub_237C531B8((v0 + 16), v0 + 56);
      *(v0 + 112) = xmmword_237F031B0;
      sub_237C65348();
      sub_237C665D8();
      sub_237EF81B0();
      if (*(v0 + 136) < v4)
      {
        v8 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v10 = *(v8 + 24) + **(v8 + 24);
        v9 = swift_task_alloc();
        *(v0 + 248) = v9;
        *v9 = v0;
        OUTLINED_FUNCTION_0_1(v9);

        __asm { BRAA            X8, X16 }
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      v5 = sub_237EF8A00();
      v2 = *(v0 + 128);
      if (v2 == v5)
      {
        goto LABEL_5;
      }
    }

    result = sub_237EF93A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_237C65EDC()
{
  OUTLINED_FUNCTION_2_0();
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_237C662B4;
  }

  else
  {
    v2 = sub_237C65FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237C65FF4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  while (1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v5 = sub_237EF8A00();
    v6 = *(v0 + 128);
    if (v6 == v5)
    {
      break;
    }

    v7 = sub_237EF89D0();
    sub_237EF8960();
    if ((v7 & 1) == 0)
    {
      result = sub_237EF93A0();
      __break(1u);
      return result;
    }

    v8 = *(v0 + 224);
    sub_237C66728(*(v0 + 232) + 40 * v6 + 32, v0 + 16);
    sub_237EF8A40();
    sub_237C531B8((v0 + 16), v0 + 56);
    *(v0 + 112) = xmmword_237F031B0;
    sub_237C65348();
    sub_237C665D8();
    sub_237EF81B0();
    if (*(v0 + 136) < v8)
    {
      v9 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v13 = *(v9 + 24) + **(v9 + 24);
      v10 = swift_task_alloc();
      *(v0 + 248) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_0_1();

      __asm { BRAA            X8, X16 }
    }
  }

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237C662B4()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[26] + 8))(v0[18], v0[25]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C66334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return ApplyEachRandomly.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237C66428()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
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

unint64_t sub_237C665D8()
{
  result = qword_27DEAD4B8[0];
  if (!qword_27DEAD4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAD4B8);
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

uint64_t sub_237C66670()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237C666AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237C666EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237C66728(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237C667F4()
{
  result = sub_237EF90F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237C66864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_237C669DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237C66C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  v5 = sub_237EF90F0();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t sub_237C66CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  v32 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = sub_237EF90F0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v17 = *(v16 + 56);
  v18 = *(v14 - 8);
  v19 = *(v18 + 16);
  v19(v3, a1, v14);
  v19(v3 + v17, a2, v14);
  OUTLINED_FUNCTION_2_1(v3);
  if (v21)
  {
    (*(v18 + 8))(v3 + v17, v14);
    v20 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3 + v17);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_5_0();
      v23(v22);
      v20 = 1;
    }

    else
    {
      v24 = v32;
      v25 = *(v32 + 32);
      v25(v13, v3, a3);
      v25(v30, v3 + v17, a3);
      v20 = sub_237EF8410();
      v26 = *(v24 + 8);
      v27 = OUTLINED_FUNCTION_5_0();
      v26(v27);
      (v26)(v13, a3);
    }
  }

  return v20 & 1;
}

BOOL sub_237C66F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  OUTLINED_FUNCTION_1_1();
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v20 = *(v17 + 48);
  v21 = *(v11 + 16);
  v21(&v32 - v18, v36, v9);
  v21(&v19[v20], v37, v9);
  OUTLINED_FUNCTION_2_1(v19);
  if (!v22)
  {
    v21(v3, v19, v9);
    OUTLINED_FUNCTION_2_1(&v19[v20]);
    if (!v22)
    {
      v26 = v35;
      v27 = &v19[v20];
      v28 = v33;
      (*(v35 + 32))(v33, v27, a3);
      v29 = sub_237EF8520();
      v30 = *(v26 + 8);
      v30(v28, a3);
      v31 = OUTLINED_FUNCTION_5_0();
      (v30)(v31);
      (*(v11 + 8))(v19, v9);
      return (v29 & 1) != 0;
    }

    v23 = OUTLINED_FUNCTION_5_0();
    v24(v23);
LABEL_9:
    (*(v15 + 8))(v19, TupleTypeMetadata2);
    return 0;
  }

  OUTLINED_FUNCTION_2_1(&v19[v20]);
  if (!v22)
  {
    goto LABEL_9;
  }

  (*(v11 + 8))(v19, v9);
  return 1;
}

uint64_t sub_237C671F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF90F0();
  v5 = *(a2 + 32);

  return MEMORY[0x2821FCA60](a1, v4, v5);
}

uint64_t sub_237C67244(uint64_t a1)
{
  sub_237EFA120();
  sub_237C671F0(v3, a1);
  return sub_237EFA170();
}

uint64_t sub_237C67294(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  sub_237C671F0(v4, a2);
  return sub_237EFA170();
}

uint64_t sub_237C672FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v20[1] = a3;
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v21 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v27 = type metadata accessor for ComparableOptional();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v23;
  sub_237EFA180();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v13 + 8))(v4, v27);
  }

  else
  {
    v23 = v7;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    if (sub_237EF9D70())
    {
      (*(v21 + 8))(v4, v23);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v20[0] = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_237EF9D60();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, a2);
      (*(v21 + 40))(v4, v11, v23);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(v13 + 16))(v22, v4, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = OUTLINED_FUNCTION_5_0();
    return v19(v17, v18);
  }
}

uint64_t sub_237C675AC(void *a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = *(a2 + 16);
  v5 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1A0();
  (*(v7 + 16))(v10, v17[2], v5);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    (*(v7 + 8))(v10, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    sub_237EF9DB0();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    sub_237EF9DA0();
    (*(v12 + 8))(v15, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_237C67800(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v2, v4);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    (*(v6 + 8))(v9, v4);
    return 0;
  }

  else
  {
    v10 = sub_237EF9AB0();
    (*(*(v3 - 8) + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_237C67954()
{
  v0 = sub_237EF90F0();

  return MEMORY[0x2821FCA40](v0);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_237C679F8()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5);
  v6 = type metadata accessor for ComposedUpdatableTemporalEstimator();
  return (*(*(v0 - 8) + 32))(v3 + *(v6 + 52), v1, v0);
}

void sub_237C67AB4()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  TemporalTransformerToUpdatableEstimatorAdaptor.init(_:)(v1, v0, v3);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  sub_237C679F8();
  OUTLINED_FUNCTION_38_0();
}

void sub_237C67B78()
{
  OUTLINED_FUNCTION_41();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[5] = v7;
  v1[6] = v8;
  v1[4] = v9;
  v1[13] = *(*(v6 + 40) + 8);
  v1[14] = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[16] = v11;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v1[19] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v1[20] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[21] = v13;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v1[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v1[25] = v14;
  v1[26] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v1[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[28] = v15;
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  v16 = swift_getAssociatedTypeWitness();
  v1[30] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[31] = v17;
  v1[32] = OUTLINED_FUNCTION_27_0();
  v18 = swift_checkMetadataState();
  v1[33] = v18;
  OUTLINED_FUNCTION_6_1(v18);
  v1[34] = v19;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v23 = v20 + *v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[37] = v21;
  *v21 = v22;
  v21[1] = sub_237C67FAC;
  OUTLINED_FUNCTION_25_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C67FAC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 304) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237C680AC()
{
  v1 = v0[38];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[34] + 8))(v0[36], v0[33]);
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_26_0();

    __asm { BRAA            X1, X16 }
  }

  v0[2] = sub_237EF8110();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  OUTLINED_FUNCTION_48();
  v6 = v0[27];
  v7 = v0[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_237EF8B90();
    v14 = v0[2];
    v0[3] = v14;
    v0[41] = v14;
    OUTLINED_FUNCTION_15_0();
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v15);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_43();
    MEMORY[0] = v16;
    OUTLINED_FUNCTION_9_0();

    __asm { BRAA            X8, X16 }
  }

  v8 = OUTLINED_FUNCTION_32_0();
  v9(v8);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[39] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_10_0(v10);
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C6843C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237C6853C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[20];
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = v0[40];
  v10 = v0[27];
  v11 = v0[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_237EF8B90();
    if (v9)
    {

      v12 = OUTLINED_FUNCTION_31_0();
      v13(v12);
      OUTLINED_FUNCTION_22_0();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_26_0();

      __asm { BRAA            X1, X16 }
    }

    v22 = v0[2];
    v0[3] = v22;
    v0[41] = v22;
    OUTLINED_FUNCTION_15_0();
    v23 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v23);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_43();
    MEMORY[0] = v24;
    OUTLINED_FUNCTION_9_0();

    __asm { BRAA            X8, X16 }
  }

  v16 = OUTLINED_FUNCTION_32_0();
  v17(v16);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[39] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C688E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 344) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C689E8()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[17];
  v4 = v0[15];
  v9 = v0[4];
  (*(v0[34] + 32))(v1, v0[36], v2);
  v5 = OUTLINED_FUNCTION_31_0();
  v6(v5);
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v3, v2, v4, v9);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237C68B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_237C68C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v14 = v12[31];
  v13 = v12[32];
  v15 = v12[30];
  (*(v12[25] + 8))(v12[26], v12[24]);
  (*(v14 + 8))(v13, v15);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237C68D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  (*(v12[34] + 8))(v12[36], v12[33]);
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void sub_237C68DD4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = *(v0 + 40);
  v16 = *(v2 + 8);
  v17 = v3;
  v15 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v14 - v12;
  (*(v8 + 16))(v9, v8);
  (*(v2 + 16))(v15, v2);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, v17);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C68F7C()
{
  OUTLINED_FUNCTION_41();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  v1[8] = v9;
  v1[17] = swift_getAssociatedTypeWitness();
  v1[18] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[20] = v11;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v1[23] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  sub_237EF90F0();
  v1[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[27] = v13;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  v14 = swift_getAssociatedTypeWitness();
  v1[29] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[30] = v15;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_15_0();
  v18 = v16 + *v16;
  v17 = swift_task_alloc();
  v1[32] = v17;
  *v17 = v1;
  v17[1] = sub_237C692C8;
  OUTLINED_FUNCTION_25_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C692C8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_3_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_237C69430()
{
  v2 = v0[33];
  sub_237EF8B90();
  if (v2)
  {
    OUTLINED_FUNCTION_51();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_28_0();

    __asm { BRAA            X1, X16 }
  }

  v0[6] = sub_237EF8110();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  OUTLINED_FUNCTION_48();
  v7 = v0[26];
  v8 = v0[23];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_237EF8B90();
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_49();
    v15 = OUTLINED_FUNCTION_47();
    v29 = *(OUTLINED_FUNCTION_36_0(v15) + 52);
    OUTLINED_FUNCTION_15_0();
    v30 = v16 + *v16;
    v17 = swift_task_alloc();
    v0[37] = v17;
    OUTLINED_FUNCTION_34_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_43();
    *v17 = v18;
    OUTLINED_FUNCTION_8_0(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v1 + 24, v30, v31);

    __asm { BRAA            X8, X16 }
  }

  v9 = OUTLINED_FUNCTION_33_0();
  v10(v9);
  OUTLINED_FUNCTION_34_0();
  swift_checkMetadataState();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[34] = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_11_0(v11);
  OUTLINED_FUNCTION_28_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C6979C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237C6989C()
{
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[19];
  v8 = OUTLINED_FUNCTION_35_0();
  v9(v8);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v10 = v0[35];
  v11 = v0[26];
  v12 = v0[23];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_237EF8B90();
    if (v10)
    {

      OUTLINED_FUNCTION_51();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_28_0();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_49();
    v21 = OUTLINED_FUNCTION_47();
    v35 = *(OUTLINED_FUNCTION_36_0(v21) + 52);
    OUTLINED_FUNCTION_15_0();
    v36 = v22 + *v22;
    v23 = swift_task_alloc();
    v0[37] = v23;
    OUTLINED_FUNCTION_34_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_43();
    *v23 = v24;
    OUTLINED_FUNCTION_8_0(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v1 + 24, v36, v37);

    __asm { BRAA            X8, X16 }
  }

  v15 = OUTLINED_FUNCTION_33_0();
  v16(v15);
  OUTLINED_FUNCTION_34_0();
  swift_checkMetadataState();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[34] = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C69C34()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C69D3C()
{
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C69DDC()
{
  OUTLINED_FUNCTION_39_0();
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237C69EA0()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C69F30(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a3[4] + 8) + 32))(a1, a2, a3[2], *(a3[4] + 8));
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = *(a3[5] + 8);
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v8 + 32))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237C6A0A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = a2[3];
  v37 = *(a2[5] + 8);
  v39 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v32 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v38 = &v30 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v35 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = *(v13 + 40);
  v36 = a1;
  v25 = v40;
  result = v24(a1, v14, v13);
  if (!v25)
  {
    v30 = v14;
    v31 = v20;
    v40 = v15;
    v27 = AssociatedTypeWitness;
    (*(v37 + 40))(v36, v39, v37);
    v28 = v31;
    v29 = v40;
    (*(v35 + 32))(v31, v23, v40);
    (*(v32 + 32))(v10, v38, v27);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v28, v10, v29, v27, v33);
  }

  return result;
}

uint64_t sub_237C6A390(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v10 = a3[5];
    v8 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v10 + 32))(a1 + *(v9 + 52), a2, v8);
  }

  return result;
}

uint64_t sub_237C6A504@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  v46 = a2[5];
  v7 = a2[3];
  v38 = *(v46 + 8);
  v47 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v41 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - v13;
  v14 = *(a2[4] + 8);
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v40 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v45 = a1;
  v43 = v4;
  v25 = v48;
  OUTLINED_FUNCTION_42();
  result = v26();
  if (!v25)
  {
    v35 = v21;
    v36 = v15;
    v34 = v14;
    v48 = v16;
    v28 = v40;
    v29 = v41;
    v30 = AssociatedTypeWitness;
    v31 = v44;
    (*(v46 + 40))(v45, v47);
    v32 = v35;
    v33 = v48;
    (*(v28 + 32))(v35, v24, v48);
    (*(v37 + 32))(v29, v31, v30);
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v32, v29, v33, v30, v39);
  }

  return result;
}

void sub_237C6A814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  sub_237C68F7C();
}

uint64_t sub_237C6A904()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

void sub_237C6AA14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  sub_237C67B78();
}

void UpdatableEstimator.appending<A>(_:)()
{
  sub_237C6AB68();
}

{
  sub_237C6AB68();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, v21, v7);
  (*(v11 + 16))(v15, v9, v5);
  sub_237CE560C(v19, v15, v5, v7, v1, v3);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v20 = v4;
  v21 = v5;
  OUTLINED_FUNCTION_1_1();
  v19 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v18 = v9 - v8;
  v10 = type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_83_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56_11();
  v17 = OUTLINED_FUNCTION_101_2();
  UpdatableEstimator.adaptedAsTemporal()(v17);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v10, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  (*(v12 + 8))(v1, v10);
  (*(v19 + 16))(v18, v20, v3);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  sub_237DF2A08(v0, v18, v15, v3, v21);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C6AB68()
{
  OUTLINED_FUNCTION_37_0();
  v28 = v1;
  v29 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v27[0] = v8;
  v27[1] = v9;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = v27 - v24;
  (*(v17 + 16))(v21, v3, v7);
  OUTLINED_FUNCTION_42();
  UpdatableEstimatorToTemporalAdaptor.init(_:)();
  (*(v11 + 16))(v15, v27[0], v5);
  OUTLINED_FUNCTION_3_1();
  WitnessTable = swift_getWitnessTable();
  v29(v25, v15, v22, v5, WitnessTable, v28);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C6AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_37_0();
  v55 = v23;
  v56 = v22;
  v53 = v24;
  v54 = v25;
  v26 = v21;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_1_1();
  v52 = a21;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v40 = v39(0, v37, v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  v43 = &v51 - v42;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;
  (*(v48 + 16))(v46 - v45, v26, v32);
  OUTLINED_FUNCTION_42();
  v49();
  v53(v36, v30, v28);
  WitnessTable = swift_getWitnessTable();
  v52(v47, v43, v32, v40, v56, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void UpdatableTemporalEstimator.appending<A>(_:)()
{
  sub_237C6B010();
}

{
  sub_237C6B010();
}

{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_37_15();
  v10 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_56_11();
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v9, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v7, v3);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v1, v0, v13, v10, v15);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v14 + 16))(v0, v15, v4);
  (*(v8 + 16))(v12, v6, v2);
  v16 = OUTLINED_FUNCTION_58_7();
  sub_237DF2AD0(v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C6B010()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t get_witness_table_18CreateMLComponents26UpdatableTemporalEstimatorRzAA0cE0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcdE0VyxAA0ce2ToD7AdaptorVyqd__GGAaBHPyHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableTemporalEstimator();
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_237C6B1F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237C6B27C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}