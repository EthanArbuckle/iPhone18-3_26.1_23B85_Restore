BOOL sub_1D29A4AD4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1D29A4B00(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D29A4B3C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4B64(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4B6C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4B94(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4B9C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4BC4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4C2C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1D29A4C80(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_1D29A4CA8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D29A4D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D29AD4A0(a1);
  *a2 = result;
  return result;
}

void *sub_1D29A4D6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D29A4D88(uint64_t *a1)
{
  v1 = *a1;
  sub_1D29A4DB4();
  return OUTLINED_FUNCTION_24(v2, v3);
}

uint64_t sub_1D29A4DBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D29A4E44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 104);

  v11 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1D29A4ED4()
{
  MEMORY[0x1D38A49B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D29A4F0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  v11 = *(v0 + 120);

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1D29A4F98()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 120);

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1D29A5024()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29A5084()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  if (*(v0 + 80))
  {
    v6 = *(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D29A50F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3AD4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D29A513C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3AD4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D29A518C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
  sub_1D29ADC60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A5204()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_1D29AEFD4(&qword_1EC6FDBE0, &qword_1EC6FDBD8, &qword_1D29C5AD8);
  sub_1D29ADB4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A5324()
{
  v1 = sub_1D29C3BD4();
  OUTLINED_FUNCTION_15_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D29A53A0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D29A53E4()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C2F5C();
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x1EEDDEA00](v0, v1, v2, v3, v4);
}

uint64_t sub_1D29A5438()
{
  sub_1D29C4314();
  v0 = OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A5478()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C308C();
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x1EEDDEA00](v0, v1, v2, v3, v4);
}

uint64_t sub_1D29A54D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D29A5508()
{
  OUTLINED_FUNCTION_119();
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for PhotosPicker();
  OUTLINED_FUNCTION_83(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = v0[2];
  swift_unknownObjectRelease();
  v10 = v0 + v6;
  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v6 + 16);

  v13 = *(v0 + v6 + 24);

  v14 = *(v0 + v6 + 32);

  sub_1D29A6C84(*(v10 + 5), v10[48]);
  v15 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1D29C3C34();
    OUTLINED_FUNCTION_15_0(v16);
    (*(v17 + 8))(&v10[v15]);
  }

  else
  {
    v18 = *&v10[v15];
  }

  v19 = *(v1 + 48);
  v20 = sub_1D29C42F4();
  OUTLINED_FUNCTION_15_0(v20);
  (*(v21 + 8))(&v10[v19]);
  OUTLINED_FUNCTION_93();
  (*(v22 + 8))(&v10[v23], v3);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6BDD0](v24, v25, v26);
}

uint64_t sub_1D29A568C()
{
  OUTLINED_FUNCTION_119();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for PhotosPicker();
  OUTLINED_FUNCTION_83(v4);
  v7 = *(v6 + 64);
  v8 = v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9 = *(v8 + 8);

  v10 = *(v8 + 16);

  v11 = *(v8 + 24);

  v12 = *(v8 + 32);

  sub_1D29A6C84(*(v8 + 40), *(v8 + 48));
  v13 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D29C3C34();
    OUTLINED_FUNCTION_15_0(v14);
    (*(v15 + 8))(v8 + v13);
  }

  else
  {
    v16 = *(v8 + v13);
  }

  v17 = *(v1 + 48);
  v18 = sub_1D29C42F4();
  OUTLINED_FUNCTION_15_0(v18);
  (*(v19 + 8))(v8 + v17);
  OUTLINED_FUNCTION_93();
  (*(v20 + 8))(v8 + v21, v3);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6BDD0](v22, v23, v24);
}

uint64_t sub_1D29A5808()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA3C8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D29A58C4()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA6B0();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5924()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7A4();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5990()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7D0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A59EC()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA7FC();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5A58()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA828();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5AC4()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA8B4();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5B30()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BA9B0();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5C04()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAA30();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5D30()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAD08();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5D8C()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BADA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5DE8()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAF3C();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5E54()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BAF5C();
  *v0 = result;
  return result;
}

uint64_t sub_1D29A5EC0()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB000();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5EEC()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB10C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D29A5F18()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB284();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D29A5F88()
{
  OUTLINED_FUNCTION_29_0();
  result = sub_1D29BB3B4();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3 & 1;
  return result;
}

uint64_t sub_1D29A5FBC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = sub_1D29C42C4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D29A5FFC()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D29C42C4();
  v0 = OUTLINED_FUNCTION_57();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A6034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29C3FF4();
  v7 = OUTLINED_FUNCTION_49(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D29A60EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_30_0();
  v8 = sub_1D29C3FF4();
  result = OUTLINED_FUNCTION_49(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_57();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1D29A617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_100(*(a1 + 8));
  }

  v7 = type metadata accessor for PhotosPickerItem.Content(0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D29A61F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PhotosPickerItem.Content(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D29A6278()
{
  OUTLINED_FUNCTION_30_0();
  v2 = sub_1D29C4164();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D29A62B8()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D29C4164();
  v0 = OUTLINED_FUNCTION_57();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D29A636C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D29C3F34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  OUTLINED_FUNCTION_45();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  sub_1D29C3D14();
  sub_1D29C059C();
  OUTLINED_FUNCTION_18_0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PhotosPickerViewController(255);
  OUTLINED_FUNCTION_67();
  sub_1D29C3D04();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_10_0();
  sub_1D29B18D8(v3, v4);
  OUTLINED_FUNCTION_36_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D29A64C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  sub_1D29C3D14();
  sub_1D29C059C();
  OUTLINED_FUNCTION_18_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D29A6574(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  v5 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  OUTLINED_FUNCTION_38();
  sub_1D29C1524(v7, &unk_1EC6FDE38);
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  sub_1D29C1524(&qword_1EC6FDF50, &unk_1EC6FDF48);
  return OUTLINED_FUNCTION_114();
}

uint64_t sub_1D29A6804(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  v5 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  OUTLINED_FUNCTION_67();
  sub_1D29C3C64();
  OUTLINED_FUNCTION_38();
  sub_1D29C1524(v7, &unk_1EC6FDE48);
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  sub_1D29C1524(&qword_1EC6FDFD0, &unk_1EC6FDFC8);
  return OUTLINED_FUNCTION_114();
}

uint64_t sub_1D29A69AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE078, &qword_1D29C66A8);
  v7 = OUTLINED_FUNCTION_49(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE080, &qword_1D29C66B0);
    v12 = OUTLINED_FUNCTION_49(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[10];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE088, &qword_1D29C66B8);
      v16 = OUTLINED_FUNCTION_49(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[12];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_100(*(a1 + a3[24] + 8));
        }

        v9 = sub_1D29C42F4();
        v14 = a3[26];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1D29A6B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE078, &qword_1D29C66A8);
  v9 = OUTLINED_FUNCTION_49(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE080, &qword_1D29C66B0);
    v14 = OUTLINED_FUNCTION_49(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[10];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE088, &qword_1D29C66B8);
      result = OUTLINED_FUNCTION_49(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[12];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[24] + 8) = (a2 - 1);
          return result;
        }

        v11 = sub_1D29C42F4();
        v16 = a4[26];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1D29A6C84(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D29A6C90()
{
  v1 = sub_1D29C42F4();
  OUTLINED_FUNCTION_31(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64) + v5;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 5);

  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1D29A6D70()
{
  v1 = *(v0 + 16);
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  OUTLINED_FUNCTION_112();
  v2 = sub_1D29C4434();
  OUTLINED_FUNCTION_15_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t View._photosSharedAlbumsView(isPresented:posting:preselecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return sub_1D29A6FB8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_1D29A6E60);
}

{
  return sub_1D29A6FB8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_1D29A70C8);
}

__n128 sub_1D29A6E60@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC20, &qword_1D29C5B00);
  sub_1D29C3EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC28, &qword_1D29C5B08);
  sub_1D29C3F84();
  result = v20;
  a9->n128_u64[0] = a7;
  a9->n128_u64[1] = a8;
  a9[1].n128_u64[0] = a4;
  a9[1].n128_u64[1] = a5;
  a9[2].n128_u64[0] = a6;
  a9[2].n128_u64[1] = v19;
  a9[3] = v20;
  a9[4].n128_u64[0] = a1;
  a9[4].n128_u64[1] = a2;
  a9[5].n128_u8[0] = a3;
  a9[5].n128_u64[1] = v19;
  a9[6].n128_u64[0] = v20.n128_u64[0];
  return result;
}

uint64_t sub_1D29A6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{

  a11(__src, a1, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1D38A3C70](__src, a9, &type metadata for _PostToSharedAlbumModifer, a10);
  memcpy(__dst, __src, 0x68uLL);
  return sub_1D29A6F4C(__dst);
}

__n128 sub_1D29A70C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC20, &qword_1D29C5B00);
  sub_1D29C3EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB20, &qword_1D29C5A50);
  sub_1D29C3F84();
  result = v20;
  *a9 = a7;
  *(a9 + 8) = a8;
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a1;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = v19;
  *(a9 + 96) = v20.n128_u64[0];
  return result;
}

uint64_t sub_1D29A71B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - v6;
  v8 = sub_1D29C3F94();
  v10 = v9;
  v20 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE0, &qword_1D29C5A18);
  sub_1D29C3F14();
  v17 = v18;
  v11 = v19;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE8, &qword_1D29C5A20);
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  v13 = &v7[*(v4 + 36)];
  *v13 = v17;
  *(v13 + 2) = v11;
  *(v13 + 3) = v8;
  *(v13 + 4) = v10;
  v18 = *(v2 + 64);
  LOBYTE(v19) = *(v2 + 80);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  MEMORY[0x1D38A3CF0](&v20, v14);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v2, 0x68uLL);
  sub_1D29ADC28(v2, &v18);
  sub_1D29ADC60();
  sub_1D29C3ED4();

  return sub_1D29AEF28(v7, &qword_1EC6FDAD8, &qword_1D29C5A10);
}

uint64_t sub_1D29A73CC(uint64_t a1, _BYTE *a2, const void *a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB18, &qword_1D29C5A38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00]();
  v8 = &v14[-v7 - 8];
  if (*a2 == 1)
  {
    v9 = sub_1D29C4474();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_1D29C4454();
    sub_1D29ADC28(a3, v14);
    v10 = sub_1D29C4444();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    memcpy(v11 + 4, a3, 0x68uLL);
    sub_1D29A8F5C(0, 0, v8, &unk_1D29C5A48, v11);
  }

  return result;
}

uint64_t sub_1D29A74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a4;
  sub_1D29C4454();
  v4[34] = sub_1D29C4444();
  v6 = sub_1D29C4404();
  v4[35] = v6;
  v4[36] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D29A758C, v6, v5);
}

uint64_t sub_1D29A758C()
{
  v1 = *(v0 + 264);
  v2 = v1[2];
  *(v0 + 296) = v2;
  v3 = v1[3];
  *(v0 + 304) = v3;
  v4 = v1[4];
  *(v0 + 184) = v2;
  *(v0 + 192) = v4;
  *(v0 + 312) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_1D29ADF6C(v0 + 184, v0 + 208);

  sub_1D29AE974();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  *(v0 + 320) = v5;
  MEMORY[0x1D38A3CF0]();
  v6 = *(*(v0 + 200) + 16);

  if (v6)
  {
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    MEMORY[0x1D38A3CF0](v5);
    *(v0 + 328) = *(v0 + 224);
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_32(v7);

    return sub_1D29A7C68(v8);
  }

  else
  {
    v10 = *(v0 + 264);
    v11 = *(v10 + 56);
    *(v0 + 16) = *(v10 + 40);
    *(v0 + 32) = v11;
    v12 = *(v10 + 56);
    *(v0 + 136) = *(v10 + 40);
    *(v0 + 152) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB30, &qword_1D29C5A68);
    MEMORY[0x1D38A3CF0]();
    v14 = sub_1D29AE04C(*(v0 + 248));

    if (v14)
    {
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = *(v0 + 32);
      MEMORY[0x1D38A3CF0](v13);
      *(v0 + 344) = *(v0 + 256);
      v15 = swift_task_alloc();
      *(v0 + 352) = v15;
      *v15 = v0;
      v16 = OUTLINED_FUNCTION_32(v15);

      return sub_1D29A8AA4(v16);
    }

    else
    {
      v17 = *(v0 + 272);

      v19 = *(v0 + 312);
      v18 = *(v0 + 320);
      v21 = *(v0 + 296);
      v20 = *(v0 + 304);
      *(v0 + 88) = v21;
      *(v0 + 96) = v20;
      *(v0 + 104) = v19;
      MEMORY[0x1D38A3CF0](v18);
      v22 = *(v0 + 232);

      *(v0 + 112) = v21;
      *(v0 + 120) = v20;
      *(v0 + 128) = v19;
      *(v0 + 240) = MEMORY[0x1E69E7CC0];
      sub_1D29C3F54();
      sub_1D29ADFC8(v0 + 184);

      sub_1D29AEF28(v0 + 192, &qword_1EC6FDB20, &qword_1D29C5A50);
      OUTLINED_FUNCTION_9();

      return v23();
    }
  }
}

uint64_t sub_1D29A789C()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v1 + 288);
  v7 = *(v1 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1D29A79D4, v7, v6);
}

uint64_t sub_1D29A79D4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[34];

  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v0[11] = v5;
  v0[12] = v4;
  v0[13] = v3;
  MEMORY[0x1D38A3CF0](v2);
  v6 = v0[29];

  v0[14] = v5;
  v0[15] = v4;
  v0[16] = v3;
  v0[30] = MEMORY[0x1E69E7CC0];
  sub_1D29C3F54();
  sub_1D29ADFC8((v0 + 23));

  sub_1D29AEF28((v0 + 24), &qword_1EC6FDB20, &qword_1D29C5A50);
  OUTLINED_FUNCTION_9();

  return v7();
}

uint64_t sub_1D29A7AB4()
{
  OUTLINED_FUNCTION_21();
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 344);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v2;
  v2[45] = v0;

  if (v0)
  {
    v6 = v2[38];
    sub_1D29ADFC8((v2 + 23));

    sub_1D29AEF28((v2 + 24), &qword_1EC6FDB20, &qword_1D29C5A50);
    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1D29A7C0C;
  }

  else
  {
    v7 = v2[35];
    v8 = v2[36];
    v9 = sub_1D29AF0B8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D29A7C0C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 360);

  return v2();
}

uint64_t sub_1D29A7C68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB68, &qword_1D29C5A90);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for Photo(0);
  v2[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_1D29C3BD4();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB70, &qword_1D29C5A98);
  v2[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for Movie(0);
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = *(type metadata accessor for PhotosPickerItem(0) - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  sub_1D29C4454();
  v2[18] = sub_1D29C4444();
  v17 = sub_1D29C4404();
  v2[19] = v17;
  v2[20] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D29A7E8C, v17, v16);
}

uint64_t sub_1D29A7E8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  *(v0 + 168) = v3;
  if (v3)
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v5 + 80);
    *(v0 + 248) = v6;
    v7 = *(v5 + 72);
    *(v0 + 184) = 0;
    *(v0 + 192) = v2;
    *(v0 + 176) = v7;
    sub_1D29AE64C(v1 + ((v6 + 32) & ~v6), v4);
    v8 = OUTLINED_FUNCTION_2();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    *(v0 + 232) = v2;
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_33(v11);
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_0(v12);

    return sub_1D29A8AA4(v14);
  }
}

uint64_t sub_1D29A7F64()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1D29A802C;
  v6 = v0[12];
  v5 = v0[13];
  OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D29A802C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;

  v6 = *(v2 + 200);
  if (v0)
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29A836C;
  }

  else
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29A8164;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D29A8164()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[14]) == 1)
  {
    sub_1D29AEF28(v1, &qword_1EC6FDB70, &qword_1D29C5A98);
    v2 = sub_1D29A83F0;
LABEL_10:

    return MEMORY[0x1EEE6DFA0](v2, 0, 0);
  }

  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  sub_1D29AE718();
  sub_1D29C3AA4();
  sub_1D29C3BC4();
  sub_1D29C3B74();
  v8 = v7;
  (*(v5 + 8))(v4, v6);
  v9 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v10 = OUTLINED_FUNCTION_11();
  sub_1D29AD4F8(v10, v11, v8);
  MEMORY[0x1D38A4160]();
  OUTLINED_FUNCTION_29();
  if (v12)
  {
    sub_1D29C43E4();
  }

  v13 = v0[17];
  v14 = v0[15];
  sub_1D29C43F4();
  sub_1D29AE6C0(v14, type metadata accessor for Movie);
  v15 = v0[2];
  OUTLINED_FUNCTION_1();
  sub_1D29AE6C0(v13, v16);
  OUTLINED_FUNCTION_12();
  if (!v18)
  {
    v0[23] = v17;
    v0[24] = v15;
    OUTLINED_FUNCTION_4(v17);
    v2 = sub_1D29A7F64;
    goto LABEL_10;
  }

  v0[29] = v15;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_33(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_0(v20);

  return sub_1D29A8AA4(v22);
}

uint64_t sub_1D29A836C()
{
  OUTLINED_FUNCTION_14();
  __swift_storeEnumTagSinglePayload(*(v0 + 104), 1, 1, *(v0 + 112));
  sub_1D29AEF28(*(v0 + 104), &qword_1EC6FDB70, &qword_1D29C5A98);

  return MEMORY[0x1EEE6DFA0](sub_1D29A83F0, 0, 0);
}

uint64_t sub_1D29A83F0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1D29A84B8;
  v6 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D29A84B8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = *(v2 + 224);
  *v4 = *v1;

  v6 = *(v2 + 216);
  if (v0)
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29A87E4;
  }

  else
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29A85F0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D29A85F0()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[7]) == 1)
  {
    v2 = v0[17];
    OUTLINED_FUNCTION_1();
    sub_1D29AE6C0(v3, v4);
    sub_1D29AEF28(v1, &qword_1EC6FDB68, &qword_1D29C5A90);
    v5 = v0[24];
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v9 = v0[8];
    v8 = v0[9];
    OUTLINED_FUNCTION_26();
    sub_1D29AE718();
    v10 = sub_1D29C3AA4();
    sub_1D29C3BB4();
    v11 = sub_1D29C3B74();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    sub_1D29AD4F8(v10, v11, v13);
    MEMORY[0x1D38A4160]();
    OUTLINED_FUNCTION_29();
    if (v15)
    {
      sub_1D29C43E4();
    }

    v16 = v0[17];
    v17 = v0[8];
    sub_1D29C43F4();
    sub_1D29AE6C0(v17, type metadata accessor for Photo);
    v5 = v0[2];
    OUTLINED_FUNCTION_1();
    sub_1D29AE6C0(v16, v18);
  }

  OUTLINED_FUNCTION_12();
  if (v20)
  {
    v0[29] = v5;
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_33(v21);
    *v22 = v23;
    v24 = OUTLINED_FUNCTION_0(v22);

    return sub_1D29A8AA4(v24);
  }

  else
  {
    v0[23] = v19;
    v0[24] = v5;
    v26 = OUTLINED_FUNCTION_4(v19);
    v27 = OUTLINED_FUNCTION_2(v26);

    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }
}

uint64_t sub_1D29A87E4()
{
  OUTLINED_FUNCTION_14();
  __swift_storeEnumTagSinglePayload(v0[6], 1, 1, v0[7]);
  v1 = v0[17];
  v2 = v0[6];
  OUTLINED_FUNCTION_1();
  sub_1D29AE6C0(v3, v4);
  sub_1D29AEF28(v2, &qword_1EC6FDB68, &qword_1D29C5A90);
  OUTLINED_FUNCTION_12();
  if (v6)
  {
    v0[29] = v0[24];
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_33(v7);
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_0(v8);

    return sub_1D29A8AA4(v10);
  }

  else
  {
    v0[23] = v5;
    v12 = OUTLINED_FUNCTION_4(v5);
    v13 = OUTLINED_FUNCTION_2(v12);

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1D29A88C0()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = *(v2 + 240);
  *v4 = *v1;

  v6 = *(v2 + 232);
  if (v0)
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29AF03C;
  }

  else
  {

    v7 = *(v3 + 152);
    v8 = *(v3 + 160);
    v9 = sub_1D29A89F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D29A89F8()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[6];

  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t sub_1D29A8AA4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_1D29C4454();
  v2[23] = sub_1D29C4444();
  v4 = sub_1D29C4404();

  return MEMORY[0x1EEE6DFA0](sub_1D29A8B3C, v4, v3);
}

uint64_t sub_1D29A8B3C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  *(v0 + 16) = *(v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAE0, &qword_1D29C5A18);
  sub_1D29C3EF4();
  v3 = *(v0 + 120);
  if (v3)
  {
    if (sub_1D29AE04C(*(v0 + 168)))
    {
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);
      v6 = [objc_allocWithZone(MEMORY[0x1E696ABE0]) init];
      v7 = *v4;
      v8 = v4[1];
      v9 = sub_1D29A91EC();
      v10 = sub_1D29A92D4(v9);

      sub_1D29AE470(v10, v6);
      sub_1D29AE4F0(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB38, &qword_1D29C5A78);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D29C4E50;
      *(v11 + 56) = sub_1D29AEB78(0, &qword_1EC6FDB40, 0x1E696ABE0);
      *(v11 + 32) = v6;
      v12 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
      v13 = v6;
      v14 = sub_1D29AD574(v11, 0);
      v15 = v3;
      [v14 willMoveToParentViewController_];
      [v15 addChildViewController_];
      [v14 didMoveToParentViewController_];

      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_30();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      memcpy((v17 + 24), v4, 0x68uLL);
      *(v0 + 152) = sub_1D29AE56C;
      *(v0 + 160) = v17;
      v18 = MEMORY[0x1E69E9820];
      *(v0 + 120) = MEMORY[0x1E69E9820];
      *(v0 + 128) = 1107296256;
      *(v0 + 136) = sub_1D29A9630;
      *(v0 + 144) = &block_descriptor;
      v19 = _Block_copy((v0 + 120));
      v20 = *(v0 + 160);
      sub_1D29ADC28(v4, v0 + 16);

      [v14 setCompletionWithItemsHandler_];
      _Block_release(v19);
      v21 = sub_1D29C4364();
      v22 = NSSelectorFromString(v21);

      if ([v14 respondsToSelector_])
      {
        v23 = *(v0 + 176);
        OUTLINED_FUNCTION_30();
        v24 = swift_allocObject();
        *(v24 + 16) = v14;
        memcpy((v24 + 24), v23, 0x68uLL);
        v25 = swift_allocObject();
        *(v25 + 16) = sub_1D29AE590;
        *(v25 + 24) = v24;
        *(v0 + 152) = sub_1D29AE59C;
        *(v0 + 160) = v25;
        *(v0 + 120) = v18;
        *(v0 + 128) = 1107296256;
        *(v0 + 136) = sub_1D29A9764;
        *(v0 + 144) = &block_descriptor_57;
        v26 = _Block_copy((v0 + 120));
        v27 = *(v0 + 160);
        sub_1D29ADC28(v23, v0 + 16);
        v14 = v14;

        v28 = v14;
        _Block_copy(v26);
        [v14 performSelector:v22 withObject:v26];

        _Block_release(v26);

        _Block_release(v26);
      }

      else
      {
      }
    }

    else
    {
      v14 = v3;
    }
  }

  OUTLINED_FUNCTION_9();

  return v29();
}

uint64_t sub_1D29A8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB18, &qword_1D29C5A38) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1D29AE974();
  v11 = sub_1D29C4474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D29AEF28(v10, &qword_1EC6FDB18, &qword_1D29C5A38);
  }

  else
  {
    sub_1D29C4464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D29C4404();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D29C4384() + 32;

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

      sub_1D29AEF28(a3, &qword_1EC6FDB18, &qword_1D29C5A38);

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

  sub_1D29AEF28(a3, &qword_1EC6FDB18, &qword_1D29C5A38);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D29A91EC()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB60, &qword_1D29C5A88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D29C4E50;
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x80000001D29C7340;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    return sub_1D29C4334();
  }

  else
  {

    return sub_1D29C4334();
  }
}

uint64_t sub_1D29A92D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB58, &qword_1D29C5A80);
    v2 = sub_1D29C45D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v35[0] = *v12;
    *(&v35[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1D29AE5C4(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1D29AE5C4(v34, v35);
    v17 = *(v2 + 40);
    result = sub_1D29C4564();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v2 + 48) + 40 * v21;
    *v26 = v27;
    *(v26 + 16) = v28;
    *(v26 + 32) = v29;
    result = sub_1D29AE5C4(v35, (*(v2 + 56) + 32 * v21));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D29A9598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong removeFromParentViewController];
  }

  v10 = *(a6 + 64);
  v11 = *(a6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  return sub_1D29C3F54();
}

uint64_t sub_1D29A9630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_1D29C43D4();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_1D29A96EC(uint64_t result, int a2, id a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    [a3 removeFromParentViewController];
    v5 = *(a4 + 64);
    v6 = *(a4 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
    return sub_1D29C3F54();
  }

  return result;
}

void sub_1D29A9764(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1D29A9830()
{
  v0 = *(*(sub_1D29C3BD4() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1D29C3BC4();
  type metadata accessor for Movie(0);
  sub_1D29AD6D8(&qword_1EC6FDBC0, type metadata accessor for Movie);
  return sub_1D29C3B44();
}

uint64_t sub_1D29A9930(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D29C3AD4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29A99F0, 0, 0);
}

uint64_t sub_1D29A99F0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1D29C3B54();

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1D29A9A7C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC90, &qword_1D29C5E98) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_1D29C3BD4();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = sub_1D29C3B14();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_1D29C3AD4();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D29A9C7C, 0, 0);
}

uint64_t sub_1D29A9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7);
  sub_1D29C3B04();
  v67 = sub_1D29C3AF4();
  v68 = v12;
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v15 = OUTLINED_FUNCTION_26();
  v17 = v16(v15);
  MEMORY[0x1D38A3910](v17);
  sub_1D29C3A84();
  v18 = OUTLINED_FUNCTION_23();
  (v13)(v18);
  v19 = v13;
  sub_1D29C3BC4();
  v20 = OUTLINED_FUNCTION_35();
  v28 = OUTLINED_FUNCTION_37(v20, v21, v22, v23, v24, v25, v26, v27, v63, v65);
  if (v29)
  {
    v31 = v8[6];
    v30 = v8[7];
    sub_1D29C3BC4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v30);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1D29AEF28(v8[6], &qword_1EC6FDC90, &qword_1D29C5E98);
    }
  }

  else
  {
    EnumTagSinglePayload = (*(v8[8] + 32))(v28, v8[6], v8[7]);
  }

  OUTLINED_FUNCTION_19(EnumTagSinglePayload, v33, v34, v35, v36, v37, v38, v39, v64, v66, v67, v68);

  (*(v13 + 8))(v9, v10);
  v40 = OUTLINED_FUNCTION_26();
  (v13)(v40);
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  sub_1D29C3AC4();
  v43 = sub_1D29C4364();

  v44 = [v42 fileExistsAtPath_];

  if (v44)
  {
    v45 = v8[18];
    v46 = [v41 defaultManager];
    v47 = sub_1D29C3AA4();
    v8[3] = 0;
    v42 = [v46 removeItemAtURL:v47 error:v8 + 3];

    v48 = v8[3];
    if (!v42)
    {
      goto LABEL_10;
    }

    v49 = v48;
  }

  v50 = OUTLINED_FUNCTION_25();
  MEMORY[0x1D38A3910]();
  v51 = sub_1D29C3AA4();
  v19(v42, v9);
  v52 = sub_1D29C3AA4();
  v8[2] = 0;
  v53 = OUTLINED_FUNCTION_34(v52, sel_copyItemAtURL_toURL_error_);

  v48 = v8[2];
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_15();
    v55(v54);
    v56 = v48;

    OUTLINED_FUNCTION_9();
    v58 = *MEMORY[0x1E69E9840];
    goto LABEL_11;
  }

LABEL_10:
  v59 = v48;
  sub_1D29C3A74();

  swift_willThrow();
  v60 = OUTLINED_FUNCTION_18();
  (v19)(v60);

  OUTLINED_FUNCTION_9();
  v61 = *MEMORY[0x1E69E9840];
LABEL_11:

  return v57();
}

uint64_t sub_1D29AA01C()
{
  v0 = *(*(sub_1D29C3BD4() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1D29C3BB4();
  type metadata accessor for Photo(0);
  sub_1D29AD6D8(&qword_1EC6FDB80, type metadata accessor for Photo);
  return sub_1D29C3B44();
}

uint64_t sub_1D29AA11C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D29C3AD4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D29AF0C8, 0, 0);
}

uint64_t sub_1D29AA1DC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC90, &qword_1D29C5E98) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_1D29C3BD4();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = sub_1D29C3B14();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = sub_1D29C3AD4();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D29AA3DC, 0, 0);
}

uint64_t sub_1D29AA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7);
  sub_1D29C3B04();
  v67 = sub_1D29C3AF4();
  v68 = v12;
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v15 = OUTLINED_FUNCTION_26();
  v17 = v16(v15);
  MEMORY[0x1D38A3910](v17);
  sub_1D29C3A84();
  v18 = OUTLINED_FUNCTION_23();
  (v13)(v18);
  v19 = v13;
  sub_1D29C3BB4();
  v20 = OUTLINED_FUNCTION_35();
  v28 = OUTLINED_FUNCTION_37(v20, v21, v22, v23, v24, v25, v26, v27, v63, v65);
  if (v29)
  {
    v31 = v8[6];
    v30 = v8[7];
    sub_1D29C3BB4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v30);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1D29AEF28(v8[6], &qword_1EC6FDC90, &qword_1D29C5E98);
    }
  }

  else
  {
    EnumTagSinglePayload = (*(v8[8] + 32))(v28, v8[6], v8[7]);
  }

  OUTLINED_FUNCTION_19(EnumTagSinglePayload, v33, v34, v35, v36, v37, v38, v39, v64, v66, v67, v68);

  (*(v13 + 8))(v9, v10);
  v40 = OUTLINED_FUNCTION_26();
  (v13)(v40);
  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  sub_1D29C3AC4();
  v43 = sub_1D29C4364();

  v44 = [v42 fileExistsAtPath_];

  if (v44)
  {
    v45 = v8[18];
    v46 = [v41 defaultManager];
    v47 = sub_1D29C3AA4();
    v8[3] = 0;
    v42 = [v46 removeItemAtURL:v47 error:v8 + 3];

    v48 = v8[3];
    if (!v42)
    {
      goto LABEL_10;
    }

    v49 = v48;
  }

  v50 = OUTLINED_FUNCTION_25();
  MEMORY[0x1D38A3910]();
  v51 = sub_1D29C3AA4();
  v19(v42, v9);
  v52 = sub_1D29C3AA4();
  v8[2] = 0;
  v53 = OUTLINED_FUNCTION_34(v52, sel_copyItemAtURL_toURL_error_);

  v48 = v8[2];
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_15();
    v55(v54);
    v56 = v48;

    OUTLINED_FUNCTION_9();
    v58 = *MEMORY[0x1E69E9840];
    goto LABEL_11;
  }

LABEL_10:
  v59 = v48;
  sub_1D29C3A74();

  swift_willThrow();
  v60 = OUTLINED_FUNCTION_18();
  (v19)(v60);

  OUTLINED_FUNCTION_9();
  v61 = *MEMORY[0x1E69E9840];
LABEL_11:

  return v57();
}

id sub_1D29AA780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC18, &qword_1D29C5AF8);
  sub_1D29C3F64();
  v0 = objc_allocWithZone(type metadata accessor for _PresentationViewController());
  return sub_1D29AA9B4(v2, v3, v4);
}

id sub_1D29AA800()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1D29AA780();
}

uint64_t sub_1D29AA85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEF80();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29AA8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEF80();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29AA924()
{
  sub_1D29AEF80();
  sub_1D29C3D84();
  __break(1u);
}

uint64_t sub_1D29AA94C()
{
  v2 = *(v0 + OBJC_IVAR____TtC17_PhotosUI_SwiftUIP33_3BA943E6D7A29AC315168BE52F028B9927_PresentationViewController__presentationViewController);
  v3 = *(v0 + OBJC_IVAR____TtC17_PhotosUI_SwiftUIP33_3BA943E6D7A29AC315168BE52F028B9927_PresentationViewController__presentationViewController + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC18, &qword_1D29C5AF8);
  return sub_1D29C3F54();
}

id sub_1D29AA9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC17_PhotosUI_SwiftUIP33_3BA943E6D7A29AC315168BE52F028B9927_PresentationViewController__presentationViewController];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for _PresentationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D29AAA9C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D29AAB5C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  v3 = v1;
  return sub_1D29AA94C();
}

uint64_t sub_1D29AAC0C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _PresentationViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  return sub_1D29AA94C();
}

uint64_t View.postToPhotosSharedAlbumSheet(isPresented:items:photoLibrary:defaultAlbumIdentifier:completion:)()
{
  OUTLINED_FUNCTION_10();
  __src[3] = v3;
  __src[4] = v4;
  __src[5] = v5;
  __src[6] = MEMORY[0x1E69E7CC0];
  __src[7] = v6;
  __src[8] = v7;
  __src[9] = v2;

  v8 = v1;

  sub_1D29AAE6C(v0);
  OUTLINED_FUNCTION_36();
  memcpy(__dst, __src, 0x50uLL);
  return sub_1D29AAE7C(__dst);
}

{
  OUTLINED_FUNCTION_10();
  __src[3] = v3;
  __src[4] = v4;
  __src[5] = MEMORY[0x1E69E7CC0];
  __src[6] = v5;
  __src[7] = v6;
  __src[8] = v7;
  __src[9] = v2;

  v8 = v1;

  sub_1D29AAE6C(v0);
  OUTLINED_FUNCTION_36();
  memcpy(__dst, __src, 0x50uLL);
  return sub_1D29AAE7C(__dst);
}

uint64_t sub_1D29AAE6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29AAF84()
{
  v3 = *v0;
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  sub_1D29C3F64();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  sub_1D29AEA2C(v0, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD8, &qword_1D29C5AD8);
  sub_1D29AEFD4(&qword_1EC6FDBE0, &qword_1EC6FDBD8, &qword_1D29C5AD8);
  sub_1D29ADB4C();
  sub_1D29C3EB4();
}

uint64_t sub_1D29AB0F4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *a1;
  v17 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  sub_1D29C3F64();
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v9 = *(a1 + 7);
  v8 = *(a1 + 8);
  v10 = *(a1 + 9);
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;

  v11 = v9;
  return sub_1D29AAE6C(v8);
}

void *sub_1D29AB208()
{
  v1 = sub_1D29C42F4();
  v2 = OUTLINED_FUNCTION_31(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *(v0 + 56);
  sub_1D29C40B4();
  sub_1D29AB398();
  sub_1D29C4064();
  sub_1D29AEB78(0, &qword_1EC6FDBF0, 0x1E69790F8);
  (*(v4 + 16))(v9, v11, v1);
  v13 = sub_1D29C44E4();
  [v13 setModalInPresentation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBF8, &qword_1D29C5AE8);
  sub_1D29C3DB4();
  v14 = v17;
  [v13 setDelegate_];

  (*(v4 + 8))(v11, v1);
  return v13;
}

id sub_1D29AB398()
{
  v1 = sub_1D29C4054();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for PhotosPickerItem(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 40);
  v11 = *(v10 + 16);
  v40[0] = v0;
  if (!v11)
  {
    v20 = *(v0 + 48);
    v21 = *(v20 + 16);
    if (!v21)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v23 = *(v2 + 16);
    v22 = v2 + 16;
    v24 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v41 = *(v22 + 56);
    v42 = v23;
    v25 = (v22 - 8);
    v14 = MEMORY[0x1E69E7CC0];
    v40[1] = v22;
    while (1)
    {
      v42(v5, v24, v1);
      v26 = sub_1D29C4044();
      if (v26)
      {
        v27 = v26;
        v28 = [v27 itemIdentifier];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1D29C4374();
          v32 = v31;

          (*v25)(v5, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1D29AE070(0, *(v14 + 2) + 1, 1, v14);
          }

          v34 = *(v14 + 2);
          v33 = *(v14 + 3);
          if (v34 >= v33 >> 1)
          {
            v14 = sub_1D29AE070((v33 > 1), v34 + 1, 1, v14);
          }

          *(v14 + 2) = v34 + 1;
          v35 = &v14[16 * v34];
          *(v35 + 4) = v30;
          *(v35 + 5) = v32;
          goto LABEL_20;
        }
      }

      (*v25)(v5, v1);
LABEL_20:
      v24 += v41;
      if (!--v21)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D29AE64C(v12, v9);
    v16 = *v9;
    v15 = v9[1];

    sub_1D29AE6C0(v9, type metadata accessor for PhotosPickerItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1D29AE070(0, *(v14 + 2) + 1, 1, v14);
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = sub_1D29AE070((v17 > 1), v18 + 1, 1, v14);
    }

    *(v14 + 2) = v18 + 1;
    v19 = &v14[16 * v18];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
    v12 += v13;
    --v11;
  }

  while (v11);
LABEL_23:
  v36 = [objc_allocWithZone(MEMORY[0x1E6979170]) init];
  if (*(v40[0] + 32))
  {
    v37 = *(v40[0] + 24);
    v38 = sub_1D29C4364();
  }

  else
  {
    v38 = 0;
  }

  [v36 setDefaultAlbumIdentifier_];

  sub_1D29AEA9C(v14, v36);
  return v36;
}

uint64_t sub_1D29AB764()
{
  v0 = sub_1D29C4284();
  v1 = OUTLINED_FUNCTION_31(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29C4274();
  sub_1D29AB398();
  sub_1D29C4204();
  sub_1D29C44C4();
  return (*(v3 + 8))(v7, v0);
}

id sub_1D29AB83C()
{
  v1 = type metadata accessor for _PHPickerViewControllerForSharedAlbums.Coordinator();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums], v0, 0x50uLL);
  sub_1D29AEA64(v0, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void *sub_1D29AB908()
{
  v1 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums);
  v2 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 16);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
  result = MEMORY[0x1D38A3CF0](&v5);
  if (v5 == 1)
  {
    v6 = v1;
    v7 = v2;
    v8 = v3;
    v5 = 0;
    return sub_1D29C3F54();
  }

  return result;
}

void sub_1D29AB9A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 64);
  if (v4)
  {
    v6 = *(v3 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUI38_PHPickerViewControllerForSharedAlbums11Coordinator_pickerViewControllerForSharedAlbums + 72);
    if (!a3 || a2)
    {
      v10 = OUTLINED_FUNCTION_11();
      sub_1D29AAE6C(v10);
      v4(0, 0);
      v11 = OUTLINED_FUNCTION_11();

      sub_1D29AEB68(v11);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_11();
      sub_1D29AAE6C(v7);
      v8 = a3;
      v4(a3, 1);
      v9 = OUTLINED_FUNCTION_11();
      sub_1D29AEB68(v9);
    }
  }
}

id sub_1D29ABB78(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D29ABC68()
{
  result = qword_1EC6FDA40;
  if (!qword_1EC6FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDA40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07_Photosb1_aB025_PostToSharedAlbumModifer33_3BA943E6D7A29AC315168BE52F028B99LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_1D29C3C64();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1D29ABD2C()
{
  result = qword_1EC6FDA48;
  if (!qword_1EC6FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDA48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOyyts5Error_pGIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D29ABDC0(uint64_t a1, int a2)
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

uint64_t sub_1D29ABDE0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29ABEA8(uint64_t a1, int a2)
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

uint64_t sub_1D29ABEE8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D29ABF54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D29ABF94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D29AC084@<X0>(void *a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  result = sub_1D29AB83C();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AC0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEB0C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29AC12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29AEB0C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29AC190()
{
  sub_1D29AEB0C();
  sub_1D29C3D84();
  __break(1u);
}

id sub_1D29AC1B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D29C3FA4();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D29C3FC4();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Photo(0);
  sub_1D29AD6D8(&qword_1EC6FDB80, type metadata accessor for Photo);
  v13 = sub_1D29C3B24();
  v28 = v2;
  v14 = sub_1D29B0E54(sub_1D29AE798, v27, v13);

  if (v14)
  {
    v15 = PhotosPickerItem.itemProvider.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;

    v17 = sub_1D29C4494();

    return v17;
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v19 = sub_1D29C44A4();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    aBlock[4] = sub_1D29AE7B8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29B144C;
    aBlock[3] = &block_descriptor_69;
    v21 = _Block_copy(aBlock);

    sub_1D29C3FB4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D29AD6D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29AEFD4(&qword_1EC6FDBA0, &qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29C4554();
    MEMORY[0x1D38A4260](0, v12, v8, v21);
    _Block_release(v21);

    (*(v26 + 8))(v8, v5);
    (*(v24 + 8))(v12, v25);
    v22 = [objc_opt_self() discreteProgressWithTotalUnitCount_];

    return v22;
  }
}

id sub_1D29AC600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D29C3FA4();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D29C3FC4();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Movie(0);
  sub_1D29AD6D8(&qword_1EC6FDBC0, type metadata accessor for Movie);
  v13 = sub_1D29C3B24();
  v28 = v2;
  v14 = sub_1D29B0E54(sub_1D29AF044, v27, v13);

  if (v14)
  {
    v15 = PhotosPickerItem.itemProvider.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;

    v17 = sub_1D29C4494();

    return v17;
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v19 = sub_1D29C44A4();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    aBlock[4] = sub_1D29AE92C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D29B144C;
    aBlock[3] = &block_descriptor_82;
    v21 = _Block_copy(aBlock);

    sub_1D29C3FB4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D29AD6D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29AEFD4(&qword_1EC6FDBA0, &qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29C4554();
    MEMORY[0x1D38A4260](0, v12, v8, v21);
    _Block_release(v21);

    (*(v26 + 8))(v8, v5);
    (*(v24 + 8))(v12, v25);
    v22 = [objc_opt_self() discreteProgressWithTotalUnitCount_];

    return v22;
  }
}

uint64_t sub_1D29ACA48(uint64_t a1, void (*a2)(void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBA8, &qword_1D29C5AB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB0, &qword_1D29C5AB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v6;
  }

  else
  {
    sub_1D29AE718();
    v11 = type metadata accessor for Photo(0);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_1D29AEF28(v10, &qword_1EC6FDBB0, &qword_1D29C5AB8);
}

uint64_t sub_1D29ACBEC(uint64_t a1, void (*a2)(void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBC8, &qword_1D29C5AC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD0, &qword_1D29C5AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v6;
  }

  else
  {
    sub_1D29AE718();
    v11 = type metadata accessor for Movie(0);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_1D29AEF28(v10, &qword_1EC6FDBD0, &qword_1D29C5AD0);
}

uint64_t sub_1D29ACD90(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = a5(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_1D29AEF28(v14, a3, a4);
}

void sub_1D29ACE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = sub_1D29AC1B8(sub_1D29AE770, v8);
}

void sub_1D29ACFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = sub_1D29AC600(sub_1D29AE87C, v8);
}

uint64_t sub_1D29AD10C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB68, &qword_1D29C5A90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB0, &qword_1D29C5AB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v7 - v4);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
    return sub_1D29C4414();
  }

  else
  {
    sub_1D29AE9CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB78, &qword_1D29C5AA0);
    return sub_1D29C4424();
  }
}

uint64_t sub_1D29AD288()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB70, &qword_1D29C5A98);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBD0, &qword_1D29C5AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v7 - v4);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
    return sub_1D29C4414();
  }

  else
  {
    sub_1D29AE9CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBB8, &qword_1D29C5AC0);
    return sub_1D29C4424();
  }
}

uint64_t sub_1D29AD404()
{
  v1 = *v0;
  sub_1D29C3E14();
  v2 = sub_1D29C3E14();
  v3 = sub_1D29C3E14();
  v4 = 0;
  if (v2 != v3)
  {
    sub_1D29C3E14();
    sub_1D29C3E14();
    *v0 = sub_1D29C3E14();
    v4 = v2;
  }

  return v4 | ((v2 == v3) << 8);
}

uint64_t sub_1D29AD4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1D29AD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1D29C4364();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithItem:a1 typeIdentifier:v5];
  swift_unknownObjectRelease();

  return v6;
}

id sub_1D29AD574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C43C4();

  if (a2)
  {
    sub_1D29AEB78(0, &unk_1EC6FDB48, 0x1E69CD9E8);
    v5 = sub_1D29C43C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

uint64_t sub_1D29AD620@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_22();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AD6D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D29ADB10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = nullsub_1(*v5, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_1D29ADB4C()
{
  result = qword_1EC6FDAD0;
  if (!qword_1EC6FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDAD0);
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

unint64_t sub_1D29ADC60()
{
  result = qword_1EC6FDAF8;
  if (!qword_1EC6FDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDAD8, &qword_1D29C5A10);
    sub_1D29AEFD4(&qword_1EC6FDB00, &qword_1EC6FDAE8, &qword_1D29C5A20);
    sub_1D29AEFD4(&qword_1EC6FDB08, &qword_1EC6FDB10, &qword_1D29C5A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDAF8);
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

uint64_t sub_1D29ADDB4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D29ADE60;

  return sub_1D29A74F4(v3, v4, v5, v0 + 32);
}

uint64_t sub_1D29ADE60()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1D29AE01C@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_22();
  *a1 = result;
  return result;
}

uint64_t sub_1D29AE04C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

char *sub_1D29AE070(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBE8, &qword_1D29C5AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D29AE190(void *__src, uint64_t a2, void *__dst)
{
  if (__dst != __src || __src + 16 * a2 <= __dst)
  {
    return OUTLINED_FUNCTION_8(__src, a2, __dst);
  }

  return __src;
}

uint64_t sub_1D29AE1A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_27();
  if (v7 < v6 || (v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0), result = OUTLINED_FUNCTION_3(v8), v4 + *(v10 + 72) * v3 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0);
    v12 = OUTLINED_FUNCTION_6();

    return MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v4)
  {
    v11 = OUTLINED_FUNCTION_6();

    return MEMORY[0x1EEE6BCF8](v11);
  }

  return result;
}

uint64_t sub_1D29AE288(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_27();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_3(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_6();

    return MEMORY[0x1EEE6BD00](v14);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_6();

    return MEMORY[0x1EEE6BCF8](v13);
  }

  return result;
}

unint64_t sub_1D29AE344(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D29C4614();
  sub_1D29C4394();
  v6 = sub_1D29C4644();

  return sub_1D29AE3BC(a1, a2, v6);
}

unint64_t sub_1D29AE3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D29C45E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_1D29AE470(uint64_t a1, void *a2)
{
  v3 = sub_1D29C4324();

  [a2 setUserInfo_];
}

void sub_1D29AE4F0(uint64_t a1, void *a2)
{
  sub_1D29AEB78(0, &qword_1EE087930, 0x1E696ACA0);
  v3 = sub_1D29C43C4();
  [a2 setAttachments_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29AE59C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

_OWORD *sub_1D29AE5C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D29AE614(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D29AE64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPickerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29AE6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D29AE718()
{
  OUTLINED_FUNCTION_27();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v0;
}

uint64_t objectdestroy_62Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D29AE8A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1D29AE974()
{
  OUTLINED_FUNCTION_27();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_11();
  v7(v6);
  return v0;
}

uint64_t sub_1D29AE9CC()
{
  OUTLINED_FUNCTION_27();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_11();
  v7(v6);
  return v0;
}

void sub_1D29AEA9C(uint64_t a1, void *a2)
{
  v3 = sub_1D29C43C4();

  [a2 setItemIdentifiers_];
}

unint64_t sub_1D29AEB0C()
{
  result = qword_1EC6FDC00;
  if (!qword_1EC6FDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC00);
  }

  return result;
}

uint64_t sub_1D29AEB68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29AEB78(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1D29AEBCC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D29AEC68()
{
  result = sub_1D29C3AD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D29AECE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D29AED28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D29AED7C()
{
  result = qword_1EC6FDC68;
  if (!qword_1EC6FDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC68);
  }

  return result;
}

uint64_t sub_1D29AEF28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1D29AEF80()
{
  result = qword_1EC6FDC98;
  if (!qword_1EC6FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDC98);
  }

  return result;
}

uint64_t sub_1D29AEFD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{
  *(a1 + 8) = sub_1D29A88C0;
  v3 = *(v2 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 24) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 176) * a1;

  return sub_1D29AE64C(v4, v3);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
}

uint64_t OUTLINED_FUNCTION_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1D29AEFD4(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_15()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];
  result = v0[4];
  v10 = *(v0[15] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7[16];
  v9 = v7[17];
  v11 = v7[14];
  v12 = v7[15];
  v13 = v7[12];
  v14 = v7[13];
  v15 = v7[11];
  v16 = v7[9];
  v17 = v7[6];
  v20 = v7[7];
  v18 = v7[5];

  return MEMORY[0x1EEDC4190](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_18()
{
  v1 = v0[17];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[17];
  v15 = v12[18];
  v16 = v12[14];
  v18 = v12[7];
  v17 = v12[8];
  v19 = v12[10];

  return MEMORY[0x1EEE6D278](a11, a12, v19);
}

uint64_t OUTLINED_FUNCTION_24(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_25()
{
  v4 = v1[18];
  v5 = v1[16];
  v6 = v1[14];
  v7 = v1[5];

  return [v0 (v2 + 1595)];
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 264);
  return v2;
}

id OUTLINED_FUNCTION_34(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_35()
{

  return MEMORY[0x1EEE6D338](v0, v1, v2);
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x1D38A3C70);
}

uint64_t PhotosPickerItem.loadTransferable<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D29AF4B4, 0, 0);
}

uint64_t sub_1D29AF4B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_1D29C4534();
  *v5 = v0;
  v5[1] = sub_1D29AF5D0;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000017, 0x80000001D29C7370, sub_1D29B162C, v3, v6);
}

uint64_t sub_1D29AF5D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D29AF708, 0, 0);
  }

  else
  {
    v4 = *(v2 + 56);

    OUTLINED_FUNCTION_9();

    return v5();
  }
}

uint64_t sub_1D29AF708()
{
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 72);

  return v2();
}

void static PHLivePhoto.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v23[1] = v2;
  v3 = sub_1D29C3BD4();
  v4 = OUTLINED_FUNCTION_31(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v10 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_52();
  v13 = PFCurrentPlatformLivePhotoBundleType();
  if (v13)
  {
    v14 = v13;
    sub_1D29C3BA4();

    v15 = *(v6 + 32);
    v15(v0, v1, v3);
    v16 = *(v6 + 16);
    v17 = OUTLINED_FUNCTION_86();
    v16(v17);
    (v16)(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    v15(v19 + v18, v10, v3);
    sub_1D29AEB78(0, &qword_1EC6FDDE0, 0x1E69788C8);
    sub_1D29B1818();
    sub_1D29C3B34();
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_108();
    v22(v21);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D29AF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D29AF9FC, 0, 0);
}

uint64_t sub_1D29AF9FC()
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = objc_opt_self();
  v5 = sub_1D29C3AE4();
  sub_1D29C3B74();
  v6 = sub_1D29C4364();

  *(v0 + 16) = 0;
  v7 = [v4 objectWithItemProviderData:v5 typeIdentifier:v6 error:v0 + 16];

  v8 = *(v0 + 16);
  if (v7)
  {
    **(v0 + 24) = v7;
    OUTLINED_FUNCTION_9();
    v16 = v9;
    v10 = v8;
    v11 = *MEMORY[0x1E69E9840];
    v12 = v16;
  }

  else
  {
    v13 = v8;
    sub_1D29C3A74();

    swift_willThrow();
    OUTLINED_FUNCTION_9();
    v14 = *MEMORY[0x1E69E9840];
  }

  return v12();
}

uint64_t static PhotosPickerSelectionBehavior.default.getter()
{
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v0 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v0, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t sub_1D29AFC54(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4, uint64_t (*a5)(void))
{
  v8 = a2(0);
  __swift_allocate_value_buffer(v8, a3);
  v9 = OUTLINED_FUNCTION_60();
  v11 = __swift_project_value_buffer(v9, v10);
  v12 = *a4;
  v13 = a5(0);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 104);

  return v16(v11, v12, v14);
}

uint64_t static PhotosPickerSelectionBehavior.ordered.getter()
{
  if (qword_1EC6FD8B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v0, qword_1EC6FDD20);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerSelectionBehavior.continuous.getter()
{
  if (qword_1EC6FD8C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v0, qword_1EC6FDD38);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerSelectionBehavior.continuousAndOrdered.getter()
{
  if (qword_1EC6FD8C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  __swift_project_value_buffer(v0, qword_1EC6FDD50);
  OUTLINED_FUNCTION_1_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerStyle.presentation.getter()
{
  if (qword_1EC6FD8D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD68);
  return OUTLINED_FUNCTION_22_0();
}

void sub_1D29B0050()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D29C3FF4();
  v8 = OUTLINED_FUNCTION_31(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_0();
  v13 = type metadata accessor for PhotosPickerStyle(0);
  __swift_allocate_value_buffer(v13, v6);
  v14 = __swift_project_value_buffer(v13, v6);
  v4();
  (*(v10 + 32))(v14, v0, v7);
  *(v14 + *(v13 + 20)) = v2;
  OUTLINED_FUNCTION_118();
}

uint64_t static PhotosPickerStyle.inline.getter()
{
  if (qword_1EC6FD8D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD80);
  return OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPickerStyle.compact.getter()
{
  if (qword_1EC6FD8E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerStyle(0);
  __swift_project_value_buffer(v0, &unk_1EC6FDD98);
  return OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPickerStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_27();
  if (sub_1D29C3FD4())
  {
    OUTLINED_FUNCTION_117();
    v3 = *(v1 + v2) ^ *(v0 + v2) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t PhotosPickerStyle.hash(into:)()
{
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_44();
  sub_1D29B18D8(v1, v2);
  sub_1D29C4344();
  OUTLINED_FUNCTION_117();
  v4 = *(v0 + v3);
  return sub_1D29C4634();
}

uint64_t PhotosPickerStyle.hashValue.getter()
{
  sub_1D29C4614();
  sub_1D29C3FF4();
  OUTLINED_FUNCTION_44();
  sub_1D29B18D8(v1, v2);
  sub_1D29C4344();
  OUTLINED_FUNCTION_117();
  v4 = *(v0 + v3);
  sub_1D29C4634();
  return sub_1D29C4644();
}

uint64_t sub_1D29B0384(uint64_t a1, uint64_t a2)
{
  sub_1D29C4614();
  sub_1D29C3FF4();
  sub_1D29B18D8(&qword_1EC6FDDF8, MEMORY[0x1E6979000]);
  sub_1D29C4344();
  v4 = *(v2 + *(a2 + 20));
  sub_1D29C4634();
  return sub_1D29C4644();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter()
{
  if (qword_1EE087928 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v0, qword_1EE0875A8);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.current.getter()
{
  if (qword_1EC6FD8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v0, qword_1EC6FDDB0);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t static PhotosPickerItem.EncodingDisambiguationPolicy.compatible.getter()
{
  if (qword_1EC6FD8F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  __swift_project_value_buffer(v0, qword_1EC6FDDC8);
  OUTLINED_FUNCTION_0_0();
  return sub_1D29B1940();
}

uint64_t sub_1D29B0674(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v2, v3);
  OUTLINED_FUNCTION_84();

  return sub_1D29C4344();
}

uint64_t sub_1D29B0728()
{
  OUTLINED_FUNCTION_23_0();
  sub_1D29C4614();
  v0(0);
  v1 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v1, v2);
  sub_1D29C4344();
  return sub_1D29C4644();
}

uint64_t sub_1D29B07F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1D29C4614();
  a4(0);
  v5 = OUTLINED_FUNCTION_56();
  sub_1D29B18D8(v5, v6);
  sub_1D29C4344();
  return sub_1D29C4644();
}

uint64_t PhotosPickerItem.itemIdentifier.getter()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *v0;
    v2 = v0[1];
  }

  return OUTLINED_FUNCTION_11();
}

void PhotosPickerItem.loadTransferable<A>(type:completionHandler:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = v9;
  v10 = sub_1D29C3FA4();
  v11 = OUTLINED_FUNCTION_31(v10);
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_0();
  v15 = sub_1D29C3FC4();
  v16 = OUTLINED_FUNCTION_31(v15);
  v30 = v17;
  v31 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_87();
  v20 = sub_1D29C3B24();
  v35 = v0;
  v21 = sub_1D29B0E54(sub_1D29AE798, &v34, v20);

  if (v21)
  {
    v22 = PhotosPickerItem.itemProvider.getter();
    v23 = swift_allocObject();
    v23[2] = v6;
    v23[3] = v4;
    v23[4] = v33;
    v23[5] = v8;

    sub_1D29C4494();

    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D29AEB78(0, &qword_1EC6FDB88, 0x1E69E9610);
    v24 = sub_1D29C44A4();
    v25 = swift_allocObject();
    v25[2] = v6;
    v25[3] = v4;
    v25[4] = v33;
    v25[5] = v8;
    v36[4] = sub_1D29B19B8;
    v36[5] = v25;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_1D29B144C;
    v36[3] = &block_descriptor_0;
    v26 = _Block_copy(v36);

    sub_1D29C3FB4();
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1D29B18D8(&qword_1EC6FDB90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB98, &qword_1D29C5AA8);
    sub_1D29C1524(&qword_1EC6FDBA0, &qword_1EC6FDB98);
    sub_1D29C4554();
    OUTLINED_FUNCTION_98();
    MEMORY[0x1D38A4260]();
    _Block_release(v26);

    (*(v32 + 8))(v1, v10);
    (*(v30 + 8))(v2, v31);
    [objc_opt_self() discreteProgressWithTotalUnitCount_];
    OUTLINED_FUNCTION_46();

    v29 = v27;
  }
}

BOOL sub_1D29B0C84()
{
  v0 = PhotosPickerItem.itemProvider.getter();
  v1 = sub_1D29C3B94();
  v2 = [v0 registeredContentTypesConformingToContentType_];

  sub_1D29C3BD4();
  v3 = sub_1D29C43D4();

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t PhotosPickerItem.itemProvider.getter()
{
  v1 = sub_1D29C4054();
  v2 = OUTLINED_FUNCTION_31(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v7 = OUTLINED_FUNCTION_50();
  v8 = type metadata accessor for PhotosPickerItem.Content(v7);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v12 = type metadata accessor for PhotosPickerItem(0);
  OUTLINED_FUNCTION_32_0(v12);
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v0;
  }

  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_56();
  v16(v15);
  v13 = sub_1D29C4004();
  v17 = *(v4 + 8);
  v18 = OUTLINED_FUNCTION_108();
  v19(v18);
  return v13;
}

BOOL sub_1D29B0E54(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1D29C3BD4();
    OUTLINED_FUNCTION_75(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1D29B0F20(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v7 = sub_1D29C4654();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v16 = a4;
  v17 = a5;
  v12 = sub_1D29C4654();
  sub_1D29B110C(sub_1D29C2C04, v12, v11);
  v15(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D29B1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

uint64_t sub_1D29B110C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_1D29C4654();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D29B1320(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v5 = sub_1D29C4654();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_storeEnumTagSinglePayload(&v11 - v8, 1, 1, a3);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D29B144C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D29B1490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v8 = sub_1D29C4434();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  (*(v9 + 16))(&v17 - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v9 + 32))(v14 + v13, v12, v8);
  PhotosPickerItem.loadTransferable<A>(type:completionHandler:)();
  v16 = v15;
}

uint64_t sub_1D29B1638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1D29C3BD4();
  OUTLINED_FUNCTION_25_0(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D29B1728;

  return sub_1D29AF968(a1, a2, a3, v3 + v10);
}

uint64_t sub_1D29B1728()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_9();

  return v2();
}

unint64_t sub_1D29B1818()
{
  result = qword_1EC6FDDE8;
  if (!qword_1EC6FDDE8)
  {
    sub_1D29AEB78(255, &qword_1EC6FDDE0, 0x1E69788C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6FDDE8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D29B18D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D29B1940()
{
  OUTLINED_FUNCTION_27();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v0;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D29B1A28(uint64_t a1)
{
  sub_1D29C4534();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FE140, &qword_1D29C6910);
  v2 = sub_1D29C4434();
  return sub_1D29B1A9C(a1, v2);
}

uint64_t sub_1D29B1A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1D29C4654();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_1D29C4414();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_1D29C4424();
  }
}

uint64_t PhotosPickerItem.init(itemIdentifier:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *(type metadata accessor for PhotosPickerItem(0) + 28);
  *(v3 + v4) = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  type metadata accessor for PhotosPickerItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 1;
  *(v3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

void PhotosPickerItem._filePromiseURL(contentType:)()
{
  OUTLINED_FUNCTION_119();
  v1 = sub_1D29C4054();
  v2 = OUTLINED_FUNCTION_31(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v7 = OUTLINED_FUNCTION_50();
  v8 = type metadata accessor for PhotosPickerItem.Content(v7);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_0();
  v12 = type metadata accessor for PhotosPickerItem(0);
  OUTLINED_FUNCTION_32_0(v12);
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29C0528(v0, type metadata accessor for PhotosPickerItem.Content);
    sub_1D29C3AD4();
    v13 = OUTLINED_FUNCTION_109();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    v17 = *(v4 + 32);
    v18 = OUTLINED_FUNCTION_71();
    v19(v18);
    sub_1D29C4024();
    v20 = *(v4 + 8);
    v21 = OUTLINED_FUNCTION_60();
    v22(v21);
  }

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29B1EC4()
{
  v24 = sub_1D29C4054();
  v0 = *(v24 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosPickerItem.Content(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0D0, &qword_1D29C68B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23 - v14;
  v16 = *(v13 + 56);
  sub_1D29B1940();
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D29B1940();
    v17 = *v8;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *&v15[v16];
      sub_1D29AEB78(0, &qword_1EC6FE0E0, 0x1E69E58C0);
      v19 = sub_1D29C4514();

LABEL_9:
      sub_1D29C0528(v15, type metadata accessor for PhotosPickerItem.Content);
      return v19 & 1;
    }
  }

  else
  {
    sub_1D29B1940();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v24;
      (*(v0 + 32))(v3, &v15[v16], v24);
      v19 = sub_1D29C4034();
      v21 = *(v0 + 8);
      v21(v3, v20);
      v21(v10, v20);
      goto LABEL_9;
    }

    (*(v0 + 8))(v10, v24);
  }

  sub_1D29C2974(v15, &qword_1EC6FE0D0);
  v19 = 0;
  return v19 & 1;
}

void sub_1D29B21F4()
{
  v0 = sub_1D29C4054();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosPickerItem.Content(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D29B1940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x1D38A43D0](1);
    sub_1D29C4524();
  }

  else
  {
    (*(v1 + 32))(v4, v8, v0);
    MEMORY[0x1D38A43D0](0);
    sub_1D29B18D8(&qword_1EC6FE1F0, MEMORY[0x1E6979020]);
    sub_1D29C4344();
    (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_1D29B23D4()
{
  sub_1D29C4614();
  sub_1D29B21F4();
  return sub_1D29C4644();
}

uint64_t sub_1D29B2420()
{
  sub_1D29C4614();
  sub_1D29B21F4();
  return sub_1D29C4644();
}

uint64_t static PhotosPickerItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_27();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1D29C45E4() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || (sub_1D29B24F4(*(v1 + 24), *(v0 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for PhotosPickerItem(0) + 28);

  return sub_1D29B1EC4();
}

uint64_t sub_1D29B24F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1D29B18D8(&qword_1EC6FE0D8, MEMORY[0x1E69E8450]);
    v22 = sub_1D29C4354();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D29B2708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C4054();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PhotosPickerItem.Content(0);
  v8 = *(*(v74 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v74);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0D0, &qword_1D29C68B0);
  v14 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v60 - v15;
  v17 = sub_1D29C3BD4();
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v60 - v21;
  v22 = type metadata accessor for PhotosPickerItem(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v79 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v60 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v67 = v26;
  v68 = v16;
  v64 = v13;
  v65 = v11;
  v61 = v7;
  v63 = v4;
  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v71 = a1 + v32;
  v69 = a2 + v32;
  v76 = (v81 + 8);
  v77 = v81 + 16;
  v60 = (v78 + 32);
  v62 = (v78 + 8);
  v70 = *(v27 + 72);
  v33 = v82;
  v75 = &v60 - v28;
  v66 = v30;
  while (1)
  {
    result = sub_1D29B1940();
    if (v31 == v30)
    {
      goto LABEL_37;
    }

    v72 = v31;
    v35 = v79;
    sub_1D29B1940();
    result = *v29;
    if (*v29 != *v35 || v29[1] != v35[1])
    {
      result = sub_1D29C45E4();
      if ((result & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (*(v75 + 16) != *(v79 + 16))
    {
      goto LABEL_32;
    }

    v37 = *(v75 + 24);
    v38 = *(v79 + 24);
    v39 = *(v37 + 16);
    if (v39 != *(v38 + 16))
    {
      goto LABEL_32;
    }

    if (v39 && v37 != v38)
    {
      break;
    }

LABEL_20:
    v49 = v68;
    v50 = *(v67 + 28);
    v51 = *(v73 + 48);
    sub_1D29B1940();
    sub_1D29B1940();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = v65;
      sub_1D29B1940();
      v53 = *v52;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_31:
        sub_1D29C2974(v49, &qword_1EC6FE0D0);
LABEL_32:
        sub_1D29C0528(v79, type metadata accessor for PhotosPickerItem);
        sub_1D29C0528(v75, type metadata accessor for PhotosPickerItem);
        return 0;
      }

      v54 = *(v49 + v51);
      sub_1D29AEB78(0, &qword_1EC6FE0E0, 0x1E69E58C0);
      v55 = sub_1D29C4514();
    }

    else
    {
      v56 = v64;
      sub_1D29B1940();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v62)(v56, v63);
        goto LABEL_31;
      }

      v57 = v61;
      v58 = v63;
      (*v60)(v61, v49 + v51, v63);
      v55 = sub_1D29C4034();
      v59 = *v62;
      (*v62)(v57, v58);
      v59(v56, v58);
    }

    sub_1D29C0528(v49, type metadata accessor for PhotosPickerItem.Content);
    if ((v55 & 1) == 0)
    {
      goto LABEL_32;
    }

    v31 = v72 + 1;
    sub_1D29C0528(v79, type metadata accessor for PhotosPickerItem);
    v29 = v75;
    sub_1D29C0528(v75, type metadata accessor for PhotosPickerItem);
    result = 1;
    v30 = v66;
    if (v31 == v66)
    {
      return result;
    }
  }

  v40 = 0;
  v41 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v78 = v37 + v41;
  v42 = v38 + v41;
  while (v40 < *(v37 + 16))
  {
    v43 = *(v81 + 72) * v40;
    v44 = *(v81 + 16);
    result = v44(v33, v78 + v43, v17);
    if (v40 >= *(v38 + 16))
    {
      goto LABEL_36;
    }

    v45 = v80;
    v44(v80, v42 + v43, v17);
    sub_1D29B18D8(&qword_1EC6FE0D8, MEMORY[0x1E69E8450]);
    v46 = sub_1D29C4354();
    v47 = *v76;
    v48 = v45;
    v33 = v82;
    (*v76)(v48, v17);
    result = (v47)(v33, v17);
    if ((v46 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v39 == ++v40)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D29B2E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D29C45E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void PhotosPickerItem.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D29C4394();
  v5 = *(v1 + 16);
  sub_1D29C4634();
  sub_1D29C042C(a1, v1[3]);
  v6 = v1 + *(type metadata accessor for PhotosPickerItem(0) + 28);
  sub_1D29B21F4();
}

uint64_t PhotosPickerItem.hashValue.getter()
{
  sub_1D29C4614();
  v1 = *v0;
  v2 = v0[1];
  sub_1D29C4394();
  v3 = *(v0 + 16);
  sub_1D29C4634();
  sub_1D29C042C(v6, v0[3]);
  v4 = v0 + *(type metadata accessor for PhotosPickerItem(0) + 28);
  sub_1D29B21F4();
  return sub_1D29C4644();
}

uint64_t sub_1D29B300C(uint64_t a1, uint64_t a2)
{
  sub_1D29C4614();
  v4 = *v2;
  v5 = v2[1];
  sub_1D29C4394();
  v6 = *(v2 + 16);
  sub_1D29C4634();
  sub_1D29C042C(v9, v2[3]);
  v7 = v2 + *(a2 + 28);
  sub_1D29B21F4();
  return sub_1D29C4644();
}

uint64_t sub_1D29B3084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v72 = a7;
  v73 = a5;
  v70 = a6;
  v69 = a4;
  v74 = a3;
  v75 = a2;
  v67 = a8;
  v9 = sub_1D29C4164();
  v64 = *(v9 - 1);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D29C42C4();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D29C42F4();
  v66 = *(v68 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v32 = sub_1D29B40C4();
  v61 = v33;
  v62 = v32;
  v60 = v34;
  v35 = objc_opt_self();
  v36 = [v35 isMultiLibraryModeEnabled];
  v37 = &selRef_imagePickerPhotoLibrary;
  if (!v36)
  {
    v37 = &selRef_sharedPhotoLibrary;
  }

  v38 = [v35 *v37];
  if (qword_1EE0877A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_1EE087670);
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v39 = v38;
  sub_1D29C40B4();
  sub_1D29C40D4();
  (*(v12 + 16))(v15, v28, v63);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v64 + 16))(v59, v19, v65);
  sub_1D29C41D4();

  v65 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy;
  sub_1D29C0528(v19, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v24, &qword_1EC6FDE08);
  sub_1D29C0528(v28, type metadata accessor for PhotosPickerSelectionBehavior);
  v76 = 0;
  sub_1D29C3EE4();
  v40 = v78;
  v41 = v31;
  v58 = v31;
  v42 = v67;
  *v67 = v77;
  *(v42 + 1) = v40;
  *(v42 + 5) = swift_getKeyPath();
  v42[48] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v44 = v43[11];
  *&v42[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v45 = v61;
  *(v42 + 2) = v62;
  *(v42 + 3) = v45;
  *(v42 + 4) = v60;
  v46 = v66;
  v47 = v41;
  v48 = v68;
  (*(v66 + 16))(&v42[v43[12]], v47, v68);
  v42[v43[13]] = 1;

  v49 = sub_1D29C3E34();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1D29C0528(v74, v65);
  sub_1D29C2974(v75, &qword_1EC6FDE08);
  sub_1D29C2974(v71, &qword_1EC6FDE10);
  (*(v46 + 8))(v58, v48);

  v57 = &v42[v43[14]];
  *v57 = v49;
  *(v57 + 1) = v51;
  v57[16] = v53 & 1;
  *(v57 + 3) = v55;
  return result;
}

double sub_1D29B36E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a4;
  v64 = a3;
  v65 = a2;
  v8 = sub_1D29C4164();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D29C42C4();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v23 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D29C42F4();
  v59 = *(v27 - 8);
  v60 = v27;
  v28 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v31 = sub_1D29B40C4();
  v54 = v32;
  v55 = v31;
  v53 = v33;
  v34 = objc_opt_self();
  v35 = [v34 isMultiLibraryModeEnabled];
  v36 = &selRef_imagePickerPhotoLibrary;
  if (!v35)
  {
    v36 = &selRef_sharedPhotoLibrary;
  }

  v37 = [v34 *v36];
  if (qword_1EE0877A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_1EE087670);
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v38 = v37;
  sub_1D29C40B4();
  sub_1D29C40D4();
  (*(v51 + 16))(v50, v26, v52);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v57 + 16))(v56, v17, v58);
  sub_1D29C41D4();

  sub_1D29C0528(v17, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v22, &qword_1EC6FDE08);
  sub_1D29C0528(v26, type metadata accessor for PhotosPickerSelectionBehavior);
  v69 = 0;
  sub_1D29C3EE4();
  v39 = *(&v66 + 1);
  *a6 = v66;
  *(a6 + 8) = v39;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v41 = v40[11];
  *(a6 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v42 = v54;
  *(a6 + 16) = v55;
  *(a6 + 24) = v42;
  *(a6 + 32) = v53;
  v44 = v59;
  v43 = v60;
  (*(v59 + 16))(a6 + v40[12], v30, v60);
  *(a6 + v40[13]) = 1;

  v62(&v66, v45);

  sub_1D29C0528(v64, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v65, &qword_1EC6FDE08);
  sub_1D29C2974(v63, &qword_1EC6FDE10);
  (*(v44 + 8))(v30, v43);
  v46 = a6 + v40[14];
  v47 = v67;
  v48 = v68;
  result = *&v66;
  *v46 = v66;
  *(v46 + 16) = v47;
  *(v46 + 24) = v48;
  return result;
}

void PhotosPicker.init(selection:matching:preferredItemEncoding:label:)()
{
  OUTLINED_FUNCTION_48();
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v9 = v8;
  v11 = v10;
  v13 = OUTLINED_FUNCTION_115(v12);
  v53 = OUTLINED_FUNCTION_31(v13);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v16 = sub_1D29C42C4();
  v52 = OUTLINED_FUNCTION_31(v16);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v19 = OUTLINED_FUNCTION_14_0();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v23 = OUTLINED_FUNCTION_25_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_65();
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v31 = sub_1D29C42F4();
  v32 = OUTLINED_FUNCTION_25_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v59 = v11;
  v35 = sub_1D29B40C4();
  v50 = v36;
  v51 = v35;
  v49 = v37;
  v38 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v38 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v40 = [v38 v39];
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v27, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  OUTLINED_FUNCTION_99();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v48 = v9;
  v41 = v40;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v42 = OUTLINED_FUNCTION_62();
  v43(v42, v0, v52);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v44 = OUTLINED_FUNCTION_62();
  v45(v44, v2, v53);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_42();
  sub_1D29C0528(v2, v46);
  sub_1D29C2974(v3, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v0, v47);
  sub_1D29B4274(v51, v50, v49, v1, 1, v55, v56, v57, v54);
  sub_1D29C0528(v58, v1);
  sub_1D29C2974(v48, &qword_1EC6FDE08);
  sub_1D29C2974(v59, &qword_1EC6FDE10);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B40C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D29AE974();
  v3 = *(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D29AE9CC();
  sub_1D29AE974();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1D29AE9CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB20, &qword_1D29C5A50);
  sub_1D29C3F74();
  return v7;
}

uint64_t sub_1D29B4274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a7;
  v29 = a6;
  v27 = a5;
  v26 = a8;
  v30 = *(a8 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = sub_1D29B6738() & 1;
  *(a9 + 8) = v17;
  *(a9 + 40) = swift_getKeyPath();
  *(a9 + 48) = 0;
  v18 = type metadata accessor for PhotosPicker();
  v19 = v18[11];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  v20 = v18[12];
  v21 = sub_1D29C42F4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9 + v20, a4, v21);
  *(a9 + v18[13]) = v27;

  v29(v23);

  (*(v22 + 8))(a4, v21);
  return (*(v30 + 32))(a9 + v18[14], v16, v26);
}

void PhotosPicker.init(selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  v83 = v28;
  v84 = v27;
  v80 = v29;
  v81 = v30;
  v79 = v31;
  v82 = v32;
  v33 = sub_1D29C4164();
  v34 = OUTLINED_FUNCTION_31(v33);
  v78 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v38 = sub_1D29C42C4();
  v39 = OUTLINED_FUNCTION_31(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v42 = OUTLINED_FUNCTION_14_0();
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v46 = OUTLINED_FUNCTION_25_0(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_28_0();
  v50 = OUTLINED_FUNCTION_24_0();
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v53 = sub_1D29C42F4();
  v54 = OUTLINED_FUNCTION_31(v53);
  v76 = v55;
  v77 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_69();
  v75 = v59;
  v60 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v60 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v62 = [v60 v61];
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_71();
  sub_1D29B1940();
  v63 = v62;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v64 = OUTLINED_FUNCTION_101();
  v65(v64, v26);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v66 = *(v78 + 16);
  v67 = OUTLINED_FUNCTION_110();
  v68(v67);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_41();
  sub_1D29C0528(v25, v69);
  v70 = OUTLINED_FUNCTION_85();
  sub_1D29C2974(v70, v71);
  OUTLINED_FUNCTION_40();
  sub_1D29C0528(v26, v72);
  (*(v76 + 32))(v75, v23, v77);
  sub_1D29B4274(v80, v81, v82, v75, 1, a21, a22, a23, v79);
  v73 = OUTLINED_FUNCTION_108();
  sub_1D29C0528(v73, v74);
  sub_1D29C2974(v83, &qword_1EC6FDE08);
  sub_1D29C0528(v84, v24);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.init(selection:matching:preferredItemEncoding:photoLibrary:label:)()
{
  OUTLINED_FUNCTION_48();
  v56 = v3;
  v57 = v4;
  v58 = v5;
  v7 = v6;
  v59 = v8;
  v61 = v9;
  v11 = v10;
  v55 = v12;
  v13 = sub_1D29C4164();
  v54 = OUTLINED_FUNCTION_31(v13);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v16 = sub_1D29C42C4();
  v17 = OUTLINED_FUNCTION_31(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v50 = v20;
  v21 = OUTLINED_FUNCTION_14_0();
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v25 = OUTLINED_FUNCTION_25_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_65();
  v30 = OUTLINED_FUNCTION_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v33 = sub_1D29C42F4();
  v34 = OUTLINED_FUNCTION_25_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v60 = v11;
  v37 = sub_1D29B40C4();
  v52 = v38;
  v53 = v37;
  v51 = v39;
  v40 = qword_1EE0877A0;
  v41 = v7;
  if (v40 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v29, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v42 = v41;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_94();
  v43(v50, v0);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v44 = OUTLINED_FUNCTION_62();
  v45(v44, v2, v54);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_42();
  sub_1D29C0528(v2, v46);
  v47 = OUTLINED_FUNCTION_87();
  sub_1D29C2974(v47, v48);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v0, v49);
  sub_1D29B4274(v53, v52, v51, v1, 0, v56, v57, v58, v55);

  sub_1D29C0528(v59, v1);
  sub_1D29C2974(v61, &qword_1EC6FDE08);
  sub_1D29C2974(v60, &qword_1EC6FDE10);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.init(selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void (*a22)(uint64_t), uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  v82 = v29;
  v72 = v30;
  v79 = v31;
  v80 = v32;
  v78 = v33;
  v81 = v34;
  v35 = sub_1D29C4164();
  v36 = OUTLINED_FUNCTION_31(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v77 = v39;
  OUTLINED_FUNCTION_26_0();
  v40 = sub_1D29C42C4();
  v41 = OUTLINED_FUNCTION_31(v40);
  v74 = v42;
  v75 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v73 = v45;
  v46 = OUTLINED_FUNCTION_14_0();
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8_0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v50 = OUTLINED_FUNCTION_25_0(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_28_0();
  v54 = OUTLINED_FUNCTION_24_0();
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63();
  v71 = sub_1D29C42F4();
  v57 = OUTLINED_FUNCTION_31(v71);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v76 = a21;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  (*(v74 + 16))(v73, v27, v75);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_85();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v63 = OUTLINED_FUNCTION_110();
  v64(v63);
  sub_1D29C41D4();
  OUTLINED_FUNCTION_41();
  sub_1D29C0528(v26, v65);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v66, v67);
  OUTLINED_FUNCTION_40();
  sub_1D29C0528(v27, v68);
  (*(v59 + 32))(v28, v24, v71);
  sub_1D29B4274(v79, v80, v81, v28, 0, a22, a23, a24, v78);

  sub_1D29C0528(v82, v77);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v69, v70);
  sub_1D29C0528(v72, v25);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker.body.getter()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v134 = v3;
  v121 = sub_1D29C42F4();
  v4 = OUTLINED_FUNCTION_31(v121);
  v119 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  v10 = type metadata accessor for PhotosPickerViewController(v9);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v16 = (v15 - v14);
  v17 = *(v2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v122 = v20;
  v123 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + 16);
  v125 = *(v2 + 24);
  v126 = v21;
  v22 = sub_1D29C3F34();
  OUTLINED_FUNCTION_31(v22);
  v118 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v118 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  OUTLINED_FUNCTION_45();
  WitnessTable = swift_getWitnessTable();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  v31 = sub_1D29C3D14();
  v32 = sub_1D29C059C();
  v139 = v30;
  v140 = v31;
  v141 = v32;
  v142 = MEMORY[0x1E697C8E8];
  OUTLINED_FUNCTION_18_0();
  v131 = OUTLINED_FUNCTION_116();
  v132 = v22;
  v139 = v22;
  v140 = v28;
  v135 = WitnessTable;
  v136 = v28;
  v141 = WitnessTable;
  v142 = v131;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = OUTLINED_FUNCTION_31(OpaqueTypeMetadata2);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53();
  v127 = v40;
  v133 = v10;
  v128 = sub_1D29C3D04();
  OUTLINED_FUNCTION_31(v128);
  v130 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v44);
  v129 = &v118 - v45;
  v46 = v0;
  if (sub_1D29B582C())
  {
    v47 = *(v17 + 16);
    v121 = WitnessTable;
    v48 = v123;
    v47(v123, v0, v2);
    v49 = *(v17 + 80);
    v120 = v36;
    v50 = (v49 + 32) & ~v49;
    v51 = swift_allocObject();
    v52 = v126;
    v122 = v22;
    v53 = v125;
    *(v51 + 16) = v126;
    *(v51 + 24) = v53;
    v54 = (*(v17 + 32))(v51 + v50, v48, v2);
    MEMORY[0x1EEE9AC00](v54);
    *(&v118 - 4) = v52;
    *(&v118 - 3) = v53;
    v117 = v0;
    sub_1D29C3F24();
    v55 = sub_1D29B5BC8();
    v57 = v56;
    v59 = v58;
    v60 = sub_1D29B5C24();
    v61 = *(v2 + 48);
    v62 = *(v0 + *(v2 + 52));
    v63 = v135;
    v64 = v132;
    v65 = v124;
    sub_1D29B5C80(v55, v57, v59 & 1, v60, v66, v67, v46 + v61, v62, v122, v132, v135);

    v68 = v64;

    (*(v118 + 8))(v65, v64);
    v139 = v64;
    v140 = v136;
    v69 = v131;
    v141 = v63;
    v142 = v131;
    OUTLINED_FUNCTION_11_0();
    v126 = OUTLINED_FUNCTION_116();
    v70 = v120;
    v71 = *(v120 + 16);
    v72 = v121;
    v73 = v122;
    v74 = v127;
    v71(v121, v122, v127);
    v75 = *(v70 + 8);
    v76 = OUTLINED_FUNCTION_105();
    v75(v76);
    v71(v73, v72, v74);
    OUTLINED_FUNCTION_10_0();
    sub_1D29B18D8(v77, v78);
    v79 = v129;
    v80 = OUTLINED_FUNCTION_105();
    sub_1D29B5ED8(v80, v81);
    v82 = v135;
    (v75)(v73, v74);
    (v75)(v72, v74);
    v83 = v136;
  }

  else
  {
    sub_1D29C4454();
    v84 = sub_1D29C4444();
    v85 = swift_allocObject();
    v86 = MEMORY[0x1E69E85E0];
    *(v85 + 16) = v84;
    *(v85 + 24) = v86;
    v87 = *(v17 + 16);
    v88 = v123;
    v124 = v16;
    v89 = v0;
    v87(v123, v0, v2);
    v90 = sub_1D29C4444();
    v91 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v92 = swift_allocObject();
    *(v92 + 2) = v90;
    *(v92 + 3) = v86;
    v93 = v125;
    *(v92 + 4) = v126;
    *(v92 + 5) = v93;
    (*(v17 + 32))(&v92[v91], v88, v2);
    sub_1D29C3F74();
    LOBYTE(v86) = v141;
    v94 = sub_1D29B5C24();
    v96 = v95;
    v98 = v97;
    v99 = v120;
    (*(v119 + 16))(v120, v89 + *(v2 + 48), v121);
    v100 = *(v89 + *(v2 + 52));
    v101 = v124;
    v102 = OUTLINED_FUNCTION_86();
    sub_1D29B62D4(v102, v103, v86, v94, v96, v98, v99, v104, v105);
    v69 = v131;
    v68 = v132;
    v82 = v135;
    v83 = v136;
    v139 = v132;
    v140 = v136;
    v141 = v135;
    v142 = v131;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_10_0();
    sub_1D29B18D8(v106, v107);
    v79 = v129;
    sub_1D29B6640(v101, v127, v133);
    sub_1D29C0528(v101, type metadata accessor for PhotosPickerViewController);
  }

  v139 = v68;
  v140 = v83;
  v141 = v82;
  v142 = v69;
  OUTLINED_FUNCTION_11_0();
  v108 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_0();
  v111 = sub_1D29B18D8(v109, v110);
  v137 = v108;
  v138 = v111;
  OUTLINED_FUNCTION_36_0();
  v112 = v128;
  swift_getWitnessTable();
  v113 = v130;
  (*(v130 + 16))(v134, v79, v112);
  v114 = *(v113 + 8);
  v115 = OUTLINED_FUNCTION_82();
  v116(v115);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B582C()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {
    v7 = *(v0 + 40);

    sub_1D29C4484();
    v8 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1D29B59A8()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE1E8, &unk_1D29C6920);
  return sub_1D29C3F04();
}

uint64_t sub_1D29B5A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for UncheckedSendable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotosPicker();
  (*(v7 + 16))(v11, a1 + *(v16 + 56), v6);
  v17 = v12[2];
  v17(v15, v11, a2);
  v18 = v12[1];
  v18(v11, a2);
  v17(a3, v15, a2);
  return (v18)(v15, a2);
}

uint64_t sub_1D29B5BC8()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE1E8, &unk_1D29C6920);
  sub_1D29C3F14();
  return v2;
}

uint64_t sub_1D29B5C24()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  sub_1D29C3F64();
  return v2;
}

uint64_t sub_1D29B5C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a8;
  v30 = a3;
  v28 = a6;
  v14 = a3;
  v32 = a9;
  v33 = a10;
  v31 = a11;
  v27 = sub_1D29C42F4();
  v17 = *(v27 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v27);
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  v19 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v14;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  v21 = v27;
  *(v20 + 56) = v28;
  (*(v17 + 32))(v20 + v19, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v20 + v19 + v18) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE18, &qword_1D29C5F10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  v23 = sub_1D29C3D14();
  v24 = sub_1D29C059C();
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = MEMORY[0x1E697C8E8];
  swift_getOpaqueTypeConformance2();
  sub_1D29C3EB4();
}

uint64_t sub_1D29B5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D29C3CE4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D29C3CF4();
}

uint64_t sub_1D29B5FD0(_BYTE *a1)
{
  v2 = sub_1D29C3C34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v8 = type metadata accessor for PhotosPicker();
    sub_1D29B60D0(v8, v7);
    sub_1D29C3C24();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_1D29B60D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D29C3CA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v18 - v11);
  v13 = *(a1 + 44);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D29C3C34();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_1D29C4484();
    v17 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D29B62D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE110, &unk_1D29C68D0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for PhotosPickerViewController(0);
  v17 = a9 + v16[5];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a9 + v16[6];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a9 + v16[7];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a9 + v16[8];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = a9 + v16[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v16[10];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE108, &qword_1D29C68C8);
  swift_storeEnumTagMultiPayload();
  v23 = v16[11];
  *(a9 + v23) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v24 = v16[12];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE100, &qword_1D29C68C0);
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v16[13];
  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = a9 + v16[14];
  *v26 = swift_getKeyPath();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = a9 + v16[15];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = a9 + v16[16];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = a9 + v16[17];
  *v29 = swift_getKeyPath();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = a9 + v16[18];
  *v30 = swift_getKeyPath();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = a9 + v16[19];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = a9 + v16[20];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = a9 + v16[21];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = a9 + v16[22];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  *(v34 + 8) = 0;
  v35 = a9 + v16[23];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = a9 + v16[24];
  *v36 = a1;
  *(v36 + 1) = a2;
  v36[16] = a3;
  v37 = (a9 + v16[25]);
  *v37 = a4;
  v37[1] = a5;
  v37[2] = a6;
  v38 = v16[26];
  v39 = sub_1D29C42F4();
  result = (*(*(v39 - 8) + 32))(a9 + v38, a7, v39);
  *(a9 + v16[27]) = a8;
  return result;
}

uint64_t sub_1D29B6640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D29C3CE4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D29C3CF4();
}

uint64_t sub_1D29B6774@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D29C3CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE110, &unk_1D29C68D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - v9);
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D29C3FF4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_1D29C4484();
    v14 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1D29B6974()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D29C3CA4();
  v7 = OUTLINED_FUNCTION_31(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_63();
  sub_1D29AE974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_98();
    sub_1D29AE9CC();
  }

  else
  {
    v16 = *v1;
    sub_1D29C4484();
    v17 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    OUTLINED_FUNCTION_86();
    swift_getAtKeyPath();

    (*(v9 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:matching:preferredItemEncoding:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v34 = v4;
  v33 = v5;
  v31 = v6;
  v32 = v7;
  v30 = v8;
  v9 = OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  OUTLINED_FUNCTION_25_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59();
  v16 = OUTLINED_FUNCTION_84();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_25_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v29 - v22;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_86();
  sub_1D29B1940();
  sub_1D29B3084(v23, v1, v0, v31, v32, v33, v34, v30);
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v3, v24);
  OUTLINED_FUNCTION_99();
  sub_1D29C2974(v25, v26);
  v27 = OUTLINED_FUNCTION_110();
  sub_1D29C2974(v27, v28);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:matching:preferredItemEncoding:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_14_0();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  OUTLINED_FUNCTION_25_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_85();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_25_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v24 = OUTLINED_FUNCTION_87();
  sub_1D29B36E0(v24, v25, v13, v26, v27, v28);
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v3, v29);
  sub_1D29C2974(v5, &qword_1EC6FDE08);
  v30 = OUTLINED_FUNCTION_82();
  sub_1D29C2974(v30, v31);
  (*(*(v1 - 8) + 8))(v7, v1);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a19 = v27;
  a20 = v28;
  v116 = v29;
  v122 = v30;
  v123 = v31;
  v120 = v33;
  v121 = v32;
  v127 = v34;
  LODWORD(v126) = v35;
  v124 = v36;
  v125 = v37;
  v113 = a21;
  v129 = a23;
  v130 = a24;
  v114 = a22;
  v38 = sub_1D29C4164();
  v39 = OUTLINED_FUNCTION_31(v38);
  v118 = v40;
  v119 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v115 = v43;
  OUTLINED_FUNCTION_26_0();
  v44 = sub_1D29C42C4();
  v45 = OUTLINED_FUNCTION_102(v44);
  v46 = OUTLINED_FUNCTION_31(v45);
  v109 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v50);
  v117 = sub_1D29C42F4();
  v51 = OUTLINED_FUNCTION_31(v117);
  v128 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_69();
  v112 = v56;
  v57 = OUTLINED_FUNCTION_14_0();
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_52();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v62 = OUTLINED_FUNCTION_25_0(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v105 - v67;
  v69 = OUTLINED_FUNCTION_24_0();
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_0();
  v74 = v72 - v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_33_0();
  v110 = v76;
  sub_1D29B1940();
  v108 = v68;
  sub_1D29AE974();
  v106 = v25;
  sub_1D29B1940();
  v77 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v77 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v79 = [v77 v78];
  sub_1D29B1940();
  sub_1D29AE974();
  v80 = v105[1];
  sub_1D29B1940();
  v81 = v79;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104(&a15);
  v82(v107, v74, v111);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_106();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v118 + 16))(v115, v80, v119);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v83 = v80;
  v85 = v84;
  sub_1D29C0528(v83, v86);
  sub_1D29C2974(v26, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v119 = v87;
  sub_1D29C0528(v74, v88);
  v89 = v128;
  v90 = v112;
  v91 = v117;
  (*(v128 + 32))(v112, v24, v117);
  v131 = 0;
  sub_1D29C3EE4();
  v92 = v133;
  v93 = v120;
  *v120 = v132;
  *(v93 + 1) = v92;
  *(v93 + 5) = swift_getKeyPath();
  v93[48] = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v95 = v94[11];
  *&v93[v95] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_91();
  (*(v89 + 16))(&v93[v96], v90, v91);
  v93[v94[13]] = 1;
  OUTLINED_FUNCTION_55();
  v126 = OUTLINED_FUNCTION_66();
  v127 = v97;
  v99 = v98;
  sub_1D29C0528(v130, v85);
  sub_1D29C2974(v129, &qword_1EC6FDE08);
  v100 = v119;
  sub_1D29C0528(v114, v119);
  v101 = *(v128 + 8);
  v102 = OUTLINED_FUNCTION_105();
  v103(v102);
  sub_1D29C0528(v106, v85);
  sub_1D29C2974(v108, &qword_1EC6FDE08);
  sub_1D29C0528(v110, v100);
  v104 = &v93[v94[14]];
  *v104 = v126;
  v104[1] = v99;
  OUTLINED_FUNCTION_54(v104);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_48();
  a19 = v23;
  a20 = v24;
  v109 = v25;
  v110 = v26;
  v98 = v27;
  v106 = v28;
  v107 = v29;
  v105 = v30;
  v32 = v31;
  v108 = a22;
  v33 = OUTLINED_FUNCTION_115(a21);
  v34 = OUTLINED_FUNCTION_31(v33);
  v102 = v35;
  v103 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v99 = v38;
  OUTLINED_FUNCTION_26_0();
  v39 = sub_1D29C42C4();
  v40 = OUTLINED_FUNCTION_102(v39);
  v41 = OUTLINED_FUNCTION_31(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v44);
  v45 = sub_1D29C42F4();
  v46 = OUTLINED_FUNCTION_31(v45);
  v100 = v47;
  v101 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_69();
  v97 = v51;
  v52 = OUTLINED_FUNCTION_14_0();
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_69();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v59 = OUTLINED_FUNCTION_25_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_53();
  v64 = OUTLINED_FUNCTION_24_0();
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_0();
  v69 = v67 - v68;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_33_0();
  v96 = v71;
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_43();
  sub_1D29B1940();
  v72 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v72 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v74 = [v72 v73];
  sub_1D29B1940();
  sub_1D29AE974();
  sub_1D29B1940();
  v75 = v74;
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104(&a16);
  v76(v95, v69);
  sub_1D29C42E4();
  OUTLINED_FUNCTION_106();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v102 + 16))(v99, v94, v103);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v78 = v77;
  sub_1D29C0528(v94, v79);
  sub_1D29C2974(v93, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v104 = v80;
  sub_1D29C0528(v69, v81);
  (*(v100 + 32))(v97, v22, v101);
  v114 = 0;
  sub_1D29C3EE4();
  v82 = v113;
  *v32 = v112;
  *(v32 + 8) = v82;
  *(v32 + 40) = swift_getKeyPath();
  *(v32 + 48) = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v84 = v83[11];
  *(v32 + v84) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  *(v32 + 16) = v105;
  *(v32 + 24) = v106;
  *(v32 + 32) = v107;
  (*(v100 + 16))(v32 + v83[12], v97, v101);
  *(v32 + v83[13]) = 1;
  sub_1D29B9290(v109, v108, &v112);
  sub_1D29C0528(v111, v78);
  sub_1D29C2974(v110, &qword_1EC6FDE08);
  sub_1D29C0528(v98, v104);
  v85 = *(v100 + 8);
  v86 = OUTLINED_FUNCTION_97();
  v87(v86);
  sub_1D29C0528(v57, v78);
  v88 = OUTLINED_FUNCTION_103();
  sub_1D29C2974(v88, &qword_1EC6FDE08);
  sub_1D29C0528(v96, v104);
  OUTLINED_FUNCTION_20_0((v32 + v83[14]));
  v90 = *(v89 + 8);
  v91 = OUTLINED_FUNCTION_84();
  v92(v91);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:matching:preferredItemEncoding:photoLibrary:)()
{
  OUTLINED_FUNCTION_48();
  v83 = v3;
  v99 = v4;
  v100 = v5;
  v101 = v6;
  v97 = v7;
  v98 = v8;
  LODWORD(v96) = v9;
  v95 = v10;
  v93 = v11;
  v91 = sub_1D29C4164();
  v12 = OUTLINED_FUNCTION_31(v91);
  v89 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v88 = v16;
  OUTLINED_FUNCTION_26_0();
  v17 = sub_1D29C42C4();
  v18 = OUTLINED_FUNCTION_31(v17);
  v85 = v19;
  v86 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v84 = v22;
  v23 = OUTLINED_FUNCTION_26_0();
  v81[0] = type metadata accessor for PhotosPickerSelectionBehavior(v23);
  v24 = OUTLINED_FUNCTION_3(v81[0]);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8_0();
  v94 = sub_1D29C42F4();
  v27 = OUTLINED_FUNCTION_31(v94);
  v92 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v90 = v31;
  v32 = OUTLINED_FUNCTION_14_0();
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_31_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v37 = OUTLINED_FUNCTION_25_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v81 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v81 - v48;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v87 = v49;
  v50 = sub_1D29B40C4();
  OUTLINED_FUNCTION_70(v50, v51, v52);
  v53 = qword_1EE0877A0;
  v54 = v83;
  if (v53 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v55 = OUTLINED_FUNCTION_103();
  __swift_project_value_buffer(v55, v56);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  v82 = v43;
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_97();
  sub_1D29B1940();
  v57 = v54;
  v83 = v2;
  v58 = v57;
  v59 = v90;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v60 = OUTLINED_FUNCTION_62();
  v61(v60, v0, v86);
  OUTLINED_FUNCTION_96();
  sub_1D29C42E4();
  OUTLINED_FUNCTION_85();
  sub_1D29AE974();
  sub_1D29C4294();
  v62 = OUTLINED_FUNCTION_62();
  v63(v62, v1, v91);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();

  sub_1D29C0528(v1, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  v64 = OUTLINED_FUNCTION_86();
  sub_1D29C2974(v64, v65);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v0, v66);
  v102 = 0;
  sub_1D29C3EE4();
  v67 = v104;
  v68 = v93;
  *v93 = v103;
  *(v68 + 1) = v67;
  *(v68 + 5) = swift_getKeyPath();
  v68[48] = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v70 = v69[11];
  *&v68[v70] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_107();
  *(v68 + 2) = v72;
  *(v68 + 3) = v71;
  *(v68 + 4) = v81[1];
  v73 = v92;
  v74 = v94;
  (*(v92 + 16))(&v68[v69[12]], v59, v94);
  v68[v69[13]] = 0;
  OUTLINED_FUNCTION_55();
  v75 = OUTLINED_FUNCTION_66();
  v96 = v76;
  v97 = v75;
  LODWORD(v95) = v77;
  v98 = v78;

  sub_1D29C0528(v100, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v99, &qword_1EC6FDE08);
  sub_1D29C2974(v101, &qword_1EC6FDE10);
  (*(v73 + 8))(v59, v74);
  sub_1D29C0528(v83, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v82, &qword_1EC6FDE08);
  sub_1D29C2974(v87, &qword_1EC6FDE10);
  v79 = &v68[v69[14]];
  v80 = v96;
  *v79 = v97;
  v79[1] = v80;
  OUTLINED_FUNCTION_54(v79);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:matching:preferredItemEncoding:photoLibrary:)()
{
  OUTLINED_FUNCTION_48();
  v100 = v4;
  v102 = v5;
  v89 = v6;
  v103 = v8;
  v104 = v7;
  v105 = v9;
  v101 = v10;
  v97 = v11;
  v96 = sub_1D29C4164();
  v12 = OUTLINED_FUNCTION_31(v96);
  v94 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v93 = v16;
  OUTLINED_FUNCTION_26_0();
  v17 = sub_1D29C42C4();
  v18 = OUTLINED_FUNCTION_31(v17);
  v90 = v19;
  v91 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v23 = OUTLINED_FUNCTION_19_0(v22);
  v87 = type metadata accessor for PhotosPickerSelectionBehavior(v23);
  v24 = OUTLINED_FUNCTION_3(v87);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v27 = sub_1D29C42F4();
  v28 = OUTLINED_FUNCTION_31(v27);
  v98 = v29;
  v99 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v95 = v32;
  v33 = OUTLINED_FUNCTION_14_0();
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_53();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v38 = OUTLINED_FUNCTION_25_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_51();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  OUTLINED_FUNCTION_25_0(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v85 - v47;
  sub_1D29AE974();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v92 = v48;
  v49 = sub_1D29B40C4();
  OUTLINED_FUNCTION_70(v49, v50, v51);
  v52 = qword_1EE0877A0;
  OUTLINED_FUNCTION_68();
  v54 = v53;
  if (v52 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v55 = OUTLINED_FUNCTION_103();
  __swift_project_value_buffer(v55, v56);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  v86 = v3;
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v57 = v54;
  v58 = v95;
  v59 = v57;
  v89 = v57;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v60 = *(v90 + 16);
  v61 = OUTLINED_FUNCTION_108();
  v62(v61);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v63 = *(v94 + 16);
  v64 = OUTLINED_FUNCTION_60();
  v65(v64);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  v96 = v66;
  sub_1D29C0528(v1, v67);
  v68 = OUTLINED_FUNCTION_84();
  sub_1D29C2974(v68, v69);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v0, v70);
  v108 = 0;
  sub_1D29C3EE4();
  v71 = v107;
  v72 = v97;
  *v97 = v106;
  *(v72 + 1) = v71;
  *(v72 + 5) = swift_getKeyPath();
  v72[48] = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v74 = v73[11];
  *&v72[v74] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_107();
  *(v72 + 2) = v76;
  *(v72 + 3) = v75;
  *(v72 + 4) = v88;
  v78 = v98;
  v77 = v99;
  (*(v98 + 16))(&v72[v73[12]], v58, v99);
  v72[v73[13]] = 0;
  v80 = v101;
  v79 = v102;
  sub_1D29B9290(v101, v102, &v106);
  OUTLINED_FUNCTION_68();

  v82 = v96;
  sub_1D29C0528(v103, v96);
  sub_1D29C2974(v104, &qword_1EC6FDE08);
  sub_1D29C2974(v105, &qword_1EC6FDE10);
  (*(v78 + 8))(v58, v77);
  sub_1D29C0528(v2, v82);
  sub_1D29C2974(v86, &qword_1EC6FDE08);
  sub_1D29C2974(v92, &qword_1EC6FDE10);
  v83 = OUTLINED_FUNCTION_20_0(&v72[v73[14]]);
  (*(v84 + 8))(v80, v79, v83);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_48();
  a19 = v29;
  a20 = v30;
  v105 = v31;
  v110 = v32;
  v111 = v33;
  v109 = v34;
  v115 = v35;
  LODWORD(v114) = v36;
  v112 = v37;
  v113 = v38;
  v95[0] = v39;
  v101 = a21;
  v99 = a25;
  v117 = a24;
  v118 = a23;
  v40 = OUTLINED_FUNCTION_115(a22);
  v41 = OUTLINED_FUNCTION_31(v40);
  v107 = v42;
  v108 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v104 = v45;
  OUTLINED_FUNCTION_26_0();
  v96 = sub_1D29C42C4();
  v46 = OUTLINED_FUNCTION_31(v96);
  v95[4] = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v50);
  v106 = sub_1D29C42F4();
  v51 = OUTLINED_FUNCTION_31(v106);
  v102 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_69();
  v98 = v56;
  v57 = OUTLINED_FUNCTION_14_0();
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_52();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v62 = OUTLINED_FUNCTION_25_0(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = v95 - v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_28_0();
  v69 = OUTLINED_FUNCTION_24_0();
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_31_0();
  v103 = v28;
  sub_1D29B1940();
  v100 = v25;
  sub_1D29AE974();
  OUTLINED_FUNCTION_43();
  v97 = v26;
  sub_1D29B1940();
  sub_1D29B1940();
  sub_1D29AE974();
  v73 = v95[1];
  sub_1D29B1940();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_102(v74);
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104(&a13);
  v75 = OUTLINED_FUNCTION_85();
  v76(v75);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v107 + 16))(v104, v73, v108);
  sub_1D29C41D4();
  sub_1D29C0528(v73, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v68, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v108 = v77;
  sub_1D29C0528(v27, v78);
  v79 = v102;
  v80 = OUTLINED_FUNCTION_72();
  v81 = v106;
  v82(v80);
  v119 = 0;
  sub_1D29C3EE4();
  v83 = v121;
  v84 = v95[0];
  *v95[0] = v120;
  *(v84 + 8) = v83;
  *(v84 + 40) = swift_getKeyPath();
  *(v84 + 48) = 0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v86 = v85[11];
  *(v84 + v86) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_91();
  (*(v79 + 16))(v84 + v87, v68, v81);
  *(v84 + v85[13]) = 0;
  OUTLINED_FUNCTION_55();
  v114 = OUTLINED_FUNCTION_66();
  v115 = v88;
  v90 = v89;
  LODWORD(v113) = v91;
  OUTLINED_FUNCTION_68();

  sub_1D29C0528(v117, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v118, &qword_1EC6FDE08);
  v93 = v108;
  sub_1D29C0528(v116, v108);
  (*(v79 + 8))(v68, v81);
  sub_1D29C0528(v97, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v100, &qword_1EC6FDE08);
  sub_1D29C0528(v103, v93);
  v94 = (v84 + v85[14]);
  *v94 = v114;
  v94[1] = v90;
  OUTLINED_FUNCTION_54(v94);
  OUTLINED_FUNCTION_46();
}

void PhotosPicker<>.init<A>(_:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a19 = v27;
  a20 = v28;
  v123 = v29;
  v120 = v30;
  v121 = v31;
  v110 = v32;
  v111 = v33;
  v116 = v34;
  v117 = v35;
  v115 = v36;
  v99 = v37;
  v118 = a23;
  v119 = a24;
  v106 = a22;
  v122 = a21;
  v38 = sub_1D29C4164();
  v39 = OUTLINED_FUNCTION_31(v38);
  v113 = v40;
  v114 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v109 = v43;
  OUTLINED_FUNCTION_26_0();
  v103 = sub_1D29C42C4();
  v44 = OUTLINED_FUNCTION_31(v103);
  v101 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19_0(v48);
  v112 = sub_1D29C42F4();
  v49 = OUTLINED_FUNCTION_31(v112);
  v108 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_69();
  v105 = v54;
  v55 = OUTLINED_FUNCTION_14_0();
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_28_0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v60 = OUTLINED_FUNCTION_25_0(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_21_0();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v98 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v98 - v67;
  v69 = OUTLINED_FUNCTION_24_0();
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_77();
  v107 = v26;
  sub_1D29B1940();
  v104 = v68;
  sub_1D29AE974();
  v102 = v24;
  sub_1D29B1940();
  sub_1D29B1940();
  sub_1D29AE974();
  v73 = v100;
  sub_1D29B1940();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_102(v74);
  sub_1D29C40B4();
  sub_1D29C40D4();
  OUTLINED_FUNCTION_104(&a12);
  v75 = OUTLINED_FUNCTION_110();
  v76(v75);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  (*(v113 + 16))(v109, v73, v114);
  sub_1D29C41D4();
  sub_1D29C0528(v73, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v66, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  v114 = v77;
  sub_1D29C0528(v25, v78);
  v79 = v108;
  v80 = OUTLINED_FUNCTION_72();
  v81 = v112;
  v82(v80);
  v126 = 0;
  sub_1D29C3EE4();
  v83 = v125;
  v84 = v99;
  *v99 = v124;
  *(v84 + 1) = v83;
  *(v84 + 5) = swift_getKeyPath();
  v84[48] = 0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE30, &qword_1D29C5F50);
  v86 = v85[11];
  *&v84[v86] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE28, &qword_1D29C5F20);
  swift_storeEnumTagMultiPayload();
  v87 = v116;
  *(v84 + 2) = v115;
  *(v84 + 3) = v87;
  *(v84 + 4) = v117;
  (*(v79 + 16))(&v84[v85[12]], type metadata accessor for PhotosPickerSelectionBehavior, v81);
  v84[v85[13]] = 0;
  sub_1D29B9290(v120, v118, &v124);
  OUTLINED_FUNCTION_68();

  sub_1D29C0528(v122, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v123, &qword_1EC6FDE08);
  v89 = v114;
  sub_1D29C0528(v121, v114);
  v90 = *(v79 + 8);
  v91 = OUTLINED_FUNCTION_87();
  v92(v91);
  v93 = OUTLINED_FUNCTION_103();
  sub_1D29C0528(v93, type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy);
  sub_1D29C2974(v104, &qword_1EC6FDE08);
  sub_1D29C0528(v107, v89);
  OUTLINED_FUNCTION_20_0(&v84[v85[14]]);
  v95 = *(v94 + 8);
  v96 = OUTLINED_FUNCTION_84();
  v97(v96);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29B9290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  (*(v6 + 16))(v3);
  result = sub_1D29C3E44();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

void View.photosPicker(isPresented:selection:matching:preferredItemEncoding:)()
{
  OUTLINED_FUNCTION_48();
  v58 = v3;
  v54 = v5;
  v55 = v4;
  v56 = v6;
  v57 = v7;
  v9 = OUTLINED_FUNCTION_115(v8);
  v52 = OUTLINED_FUNCTION_31(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v51 = sub_1D29C42C4();
  v12 = OUTLINED_FUNCTION_31(v51);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v15 = OUTLINED_FUNCTION_14_0();
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v19 = OUTLINED_FUNCTION_25_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_77();
  v23 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_50();
  v50 = sub_1D29C42F4();
  v27 = OUTLINED_FUNCTION_31(v50);
  v49 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v31 = sub_1D29B40C4();
  v47 = v32;
  v48 = v31;
  v46 = v33;
  v34 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v34 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v36 = [v34 v35];
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v23, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  OUTLINED_FUNCTION_97();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v37 = v36;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v38 = OUTLINED_FUNCTION_101();
  v39(v38, v2, v51);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v40 = OUTLINED_FUNCTION_62();
  v41(v40, v1, v52);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v1, v42);
  v43 = OUTLINED_FUNCTION_105();
  sub_1D29C2974(v43, v44);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v2, v45);
  sub_1D29B5C80(v57, v58, v56 & 1, v48, v47, v46, v0, 1, v53, v55, v54);

  (*(v49 + 8))(v0, v50);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_64(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = sub_1D29C4164();
  v15 = OUTLINED_FUNCTION_31(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v63 = v18;
  OUTLINED_FUNCTION_26_0();
  v19 = sub_1D29C42C4();
  v62 = OUTLINED_FUNCTION_31(v19);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  v22 = OUTLINED_FUNCTION_14_0();
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v26 = OUTLINED_FUNCTION_25_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_0();
  v60 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_28_0();
  v32 = OUTLINED_FUNCTION_24_0();
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8_0();
  v61 = sub_1D29C42F4();
  v35 = OUTLINED_FUNCTION_31(v61);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_52();
  v41 = objc_opt_self();
  OUTLINED_FUNCTION_27_0([v41 isMultiLibraryModeEnabled], &selRef_imagePickerPhotoLibrary);
  v43 = [v41 v42];
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v44 = v43;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  v45 = OUTLINED_FUNCTION_101();
  v46(v45, v3, v62);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v47(v63, v4);
  sub_1D29C41D4();

  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v4, v48);
  sub_1D29C2974(v1, &qword_1EC6FDE08);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v3, v49);
  (*(v37 + 32))(v2, v0, v61);
  v50 = OUTLINED_FUNCTION_47();
  sub_1D29B5C80(v50, v51, v52, v53, v54, v55, v2, 1, v56, v60, v61);
  v57 = *(v37 + 8);
  v58 = OUTLINED_FUNCTION_60();
  v59(v58);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_48();
  v76 = v24;
  v72 = v26;
  v73 = v25;
  v70 = v27;
  v74 = v28;
  v75 = v29;
  v30 = sub_1D29C4164();
  v71 = OUTLINED_FUNCTION_31(v30);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_0();
  v33 = sub_1D29C42C4();
  v34 = OUTLINED_FUNCTION_31(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v37 = OUTLINED_FUNCTION_14_0();
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v41 = OUTLINED_FUNCTION_25_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_31_0();
  v45 = type metadata accessor for PhotosPickerSelectionBehavior(0);
  v46 = OUTLINED_FUNCTION_3(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_81();
  v69 = sub_1D29C42F4();
  v49 = OUTLINED_FUNCTION_31(v69);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_88();
  v54 = sub_1D29B40C4();
  v67 = v55;
  v68 = v54;
  v66 = v56;
  if (qword_1EE0877A0 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v45, qword_1EE087670);
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v57 = v70;
  sub_1D29C40B4();
  sub_1D29C40D4();
  v58 = OUTLINED_FUNCTION_101();
  v59(v58, v22);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  v60 = OUTLINED_FUNCTION_62();
  v61(v60, v23, v71);
  OUTLINED_FUNCTION_96();
  sub_1D29C41D4();
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v23, v62);
  v63 = OUTLINED_FUNCTION_97();
  sub_1D29C2974(v63, v64);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v22, v65);
  sub_1D29B5C80(v75, v76, v74 & 1, v68, v67, v66, v21, 0, v72, v73, a21);

  (*(v51 + 8))(v21, v69);
  OUTLINED_FUNCTION_46();
}

void View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_64(v28, v29, v30, v31, v32, v33, v34, v35, v36);
  v37 = sub_1D29C4164();
  v38 = OUTLINED_FUNCTION_31(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v84 = v41;
  OUTLINED_FUNCTION_26_0();
  v42 = sub_1D29C42C4();
  v43 = OUTLINED_FUNCTION_31(v42);
  v83 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_61();
  v47 = OUTLINED_FUNCTION_14_0();
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_59();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE08, &qword_1D29C5F00);
  v51 = OUTLINED_FUNCTION_25_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v54);
  v55 = OUTLINED_FUNCTION_24_0();
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_8_0();
  v82 = sub_1D29C42F4();
  v58 = OUTLINED_FUNCTION_31(v82);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_1_0();
  sub_1D29B1940();
  sub_1D29AE974();
  OUTLINED_FUNCTION_0_0();
  sub_1D29B1940();
  v64 = a24;
  sub_1D29C40B4();
  OUTLINED_FUNCTION_80();
  sub_1D29C40D4();
  v65 = *(v83 + 16);
  v66 = OUTLINED_FUNCTION_71();
  v67(v66);
  sub_1D29C42E4();
  sub_1D29AE974();
  sub_1D29C4294();
  OUTLINED_FUNCTION_94();
  v68(v84, v26);
  sub_1D29C41D4();
  OUTLINED_FUNCTION_3_0();
  sub_1D29C0528(v26, v69);
  v70 = OUTLINED_FUNCTION_87();
  sub_1D29C2974(v70, v71);
  OUTLINED_FUNCTION_2_0();
  sub_1D29C0528(v25, v72);
  v73 = v82;
  (*(v60 + 32))(v27, v24, v82);
  v74 = OUTLINED_FUNCTION_47();
  sub_1D29B5C80(v74, v75, v76, v77, v78, v79, v27, 0, v80, v81, v82);
  (*(v60 + 8))(v27, v73);
  OUTLINED_FUNCTION_46();
}

void View.photosPickerStyle(_:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE38, &qword_1D29C5F88);
  v3 = sub_1D29C3C64();
  OUTLINED_FUNCTION_31(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63();
  swift_getKeyPath();
  OUTLINED_FUNCTION_117();
  v11 = (*(v2 + v9) & 1) == 0;
  sub_1D29C3E74();

  swift_getKeyPath();
  OUTLINED_FUNCTION_39();
  sub_1D29C1524(v10, &qword_1EC6FDE38);
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  sub_1D29C3E74();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29BA3E8()
{
  sub_1D29C2834();

  return sub_1D29C3CB4();
}

uint64_t sub_1D29BA430(uint64_t a1)
{
  v2 = sub_1D29C3FF4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return sub_1D29BA4F8(v5);
}

uint64_t sub_1D29BA4F8(uint64_t a1)
{
  v2 = sub_1D29C3FF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D29C2834();
  sub_1D29C3CC4();
  return (*(v3 + 8))(a1, v2);
}

uint64_t View.photosPickerAccessoryVisibility(_:edges:)()
{
  OUTLINED_FUNCTION_119();
  v1 = v0;
  v3 = v2;
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 17) = v1;
  sub_1D29C3EA4();

  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BA6B0()
{
  sub_1D29C27E0();
  sub_1D29C3CB4();
  return v1;
}

uint64_t sub_1D29BA728(_BYTE *a1, char a2, unsigned __int8 a3)
{
  if (a2 != 2)
  {
    return sub_1D29AD404();
  }

  v5 = *a1;
  sub_1D29C3E14();
  result = sub_1D29C3E14();
  if (result != a3)
  {
    result = sub_1D29C3E14();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D29BA854()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BA8D4(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_113();
  return v2;
}

uint64_t View._photosPickerSourceType(_:)()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BA9DC()
{
  sub_1D29C2594();

  return sub_1D29C3CB4();
}

uint64_t sub_1D29BAA50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37_0();
  return sub_1D29BB1D4(v3, v4, v5);
}

uint64_t sub_1D29BAAAC()
{
  sub_1D29C24EC();

  return sub_1D29C3CB4();
}

void sub_1D29BAAF4()
{
  OUTLINED_FUNCTION_119();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_95(v4, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_25_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_98();
  v11 = sub_1D29AE974();
  v1(v11);
  OUTLINED_FUNCTION_92();
  sub_1D29C2974(v5, v3);
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BABAC()
{
  OUTLINED_FUNCTION_58();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BAC0C()
{
  sub_1D29C2498();

  return sub_1D29C3CB4();
}

void sub_1D29BAC54()
{
  OUTLINED_FUNCTION_119();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_98();
  sub_1D29AE974();
  sub_1D29BAAF4();
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1D29BAD34()
{
  OUTLINED_FUNCTION_23_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

void View._photosPickerButtonType(primary:secondary:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6FDE48, &qword_1D29C61C0);
  v6 = sub_1D29C3C64();
  OUTLINED_FUNCTION_31(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  swift_getKeyPath();
  v17 = v5;
  sub_1D29C3E74();

  swift_getKeyPath();
  v17 = v3;
  OUTLINED_FUNCTION_39();
  v15 = sub_1D29C1524(v14, &qword_1EC6FDE48);
  v16[1] = v1;
  v16[2] = v15;
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  sub_1D29C3E74();

  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D29BAF7C(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_113();
  return v2;
}

uint64_t sub_1D29BB020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D29AAE6C(*a1);
  return sub_1D29BB1D4(v1, v2, sub_1D29C22F4);
}

uint64_t sub_1D29BB08C()
{
  OUTLINED_FUNCTION_23_0();
  swift_getKeyPath();

  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB12C(void (*a1)(void))
{
  a1();
  sub_1D29C3CB4();
  return v2;
}

uint64_t sub_1D29BB174(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D29AAE6C(*a1);
  return sub_1D29BB1D4(v1, v2, sub_1D29C22A0);
}

uint64_t View._photosPickerAutomaticDismissDisabled(_:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB2A4(void (*a1)(void))
{
  a1();
  sub_1D29C3CB4();
  return v2;
}

uint64_t View._photosPickerSheetSizeOverride(_:)()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_0();
  sub_1D29C3E74();
}

uint64_t sub_1D29BB3B4()
{
  sub_1D29C21F8();
  sub_1D29C3CB4();
  return v1;
}

uint64_t sub_1D29BB3F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  return sub_1D29BB424();
}

uint64_t sub_1D29BB468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v35 = a8;
  v34 = a6;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v37 = a9;
  v36 = sub_1D29C3D14();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D29C42F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE20, &qword_1D29C5F18);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v30 - v23);
  (*(v17 + 16))(v20, a7, v16);
  sub_1D29B62D4(v31, v32, v33, a4, a5, v34, v20, v35, v24);

  v25 = sub_1D29C3C74();
  v26 = sub_1D29C3DD4();
  v27 = v24 + *(v21 + 36);
  *v27 = v25;
  v27[8] = v26;
  sub_1D29C3CD4();
  sub_1D29C059C();
  v28 = v36;
  sub_1D29C3E94();
  (*(v12 + 8))(v15, v28);
  return sub_1D29C2974(v24, &qword_1EC6FDE20);
}

uint64_t sub_1D29BB704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BB6FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D29BB738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&unk_1EC6FE230, MEMORY[0x1E6979000]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB7D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BB7CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D29BB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C3140();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDA50, type metadata accessor for PHPickerCapabilities);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29BB8F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D29BB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EE087600, type metadata accessor for _PHPickerCollectionType);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDA90, type metadata accessor for _PHPickerCollectionSuggestionType);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FDAB0, type metadata accessor for _PHPickerPrivateCapabilities);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EE087580, type metadata accessor for _PHPickerSourceType);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBB78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D29C4304();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1D29BBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C2FD8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FE218, type metadata accessor for _PHPickerPrimaryButtonType);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29B18D8(&qword_1EC6FE210, type metadata accessor for _PHPickerSecondaryButtonType);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBD58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D29BBD50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D29BBD94@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D29BBD84();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1D29BBDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D29C2EA8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D29BBE28()
{
  v0 = sub_1D29C3DE4();
  v1 = sub_1D29C3DF4();
  v2 = sub_1D29C3E04();
  v3 = sub_1D29C3E24();
  sub_1D29C3E14();
  v4 = sub_1D29C3E14();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 == v0)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5A8(0, 1, 1);
    v5 = v23;
    v7 = *(v23 + 16);
    v6 = *(v23 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1D29BF5A8((v6 > 1), v7 + 1, 1);
      v5 = v23;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = v0;
    *(v8 + 40) = 1;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v5 + 16) + 1, 1);
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D29BF5A8((v9 > 1), v10 + 1, 1);
    }

    *(v5 + 16) = v10 + 1;
    v11 = v5 + 16 * v10;
    *(v11 + 32) = v1;
    *(v11 + 40) = 4;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v5 + 16) + 1, 1);
    }

    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D29BF5A8((v12 > 1), v13 + 1, 1);
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v2;
    *(v14 + 40) = 2;
  }

  sub_1D29C3E14();
  if (sub_1D29C3E14() == v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D29BF5A8(0, *(v5 + 16) + 1, 1);
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      sub_1D29BF5A8((v15 > 1), v16 + 1, 1);
    }

    *(v5 + 16) = v17;
    v18 = v5 + 16 * v16;
    *(v18 + 32) = v3;
    *(v18 + 40) = 8;
  }

  else
  {
    v17 = *(v5 + 16);
    if (!v17)
    {
      v19 = 0;
      goto LABEL_28;
    }
  }

  v19 = 0;
  v20 = 40;
  do
  {
    v21 = *(v5 + v20);
    if ((v21 & ~v19) == 0)
    {
      v21 = 0;
    }

    v19 |= v21;
    v20 += 16;
    --v17;
  }

  while (v17);
LABEL_28:

  return v19;
}

uint64_t sub_1D29BC0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosPickerItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  MEMORY[0x1D38A3CF0](v14);
  sub_1D29AE974();
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D29C2194(v11, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE128, &unk_1D29C68F0);
    v16 = *(v3 + 72);
    v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D29C4E50;
    sub_1D29C2194(v6, v15 + v17);
  }

  result = sub_1D29C2974(v13, &qword_1EC6FE118);
  *a1 = v15;
  return result;
}

uint64_t sub_1D29BC2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(*a1 + 16);
  v7 = type metadata accessor for PhotosPickerItem(0);
  v8 = v7;
  if (v6)
  {
    v9 = *(*(v7 - 8) + 80);
    sub_1D29B1940();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v10, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDE10, &qword_1D29C5F08);
  return sub_1D29C3F54();
}

uint64_t sub_1D29BC41C()
{
  v0 = type metadata accessor for PhotosPickerViewController(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29B1940();
  v4 = type metadata accessor for PhotosPickerViewController.Coordinator(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1D29BDD20(v3);
}

void *sub_1D29BC4C4(uint64_t a1)
{
  v2 = v1;
  v117 = a1;
  v3 = type metadata accessor for PhotosPickerItem(0);
  v111[0] = *(v3 - 8);
  v4 = *(v111[0] + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0A0, &qword_1D29C66F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111[1] = v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE098, &qword_1D29C66E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1D29C3CA4();
  v122 = *(v12 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D29C3FF4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D29C42F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v114 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v111 - v25;
  v27 = type metadata accessor for PhotosPickerViewController(0);
  v28 = *(v27 + 104);
  v115 = v21;
  v116 = v20;
  v112 = *(v21 + 16);
  v113 = v21 + 16;
  v112(v26, v2 + v28, v20);
  sub_1D29B6774(v19);
  sub_1D29C41E4();
  v119 = v27;
  v29 = v2 + *(v27 + 20);
  v30 = *v29;
  LODWORD(v29) = *(v29 + 8);
  v121 = v15;
  if (v29 != 1)
  {

    sub_1D29C4484();
    v31 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v30, 0);
    (*(v122 + 8))(v15, v12);
  }

  sub_1D29BBE28();
  sub_1D29C4184();
  v32 = v119;
  v33 = v2 + v119[6];
  v34 = *v33;
  if ((*(v33 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v35 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v36 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v34, 0);
    (*(v122 + 8))(v36, v12);
    v34 = *&v125;
  }

  MEMORY[0x1D38A3EF0](v34);
  v37 = v2 + v32[13];
  v38 = *v37;
  v39 = *(v37 + 8);
  LODWORD(v37) = *(v37 + 16);
  v120 = v26;
  v123 = v2;
  if (v37 == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v40 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v123;
    v41 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v38, v39, 0);
    v32 = v119;
    (*(v122 + 8))(v41, v12);
  }

  sub_1D29C42A4();
  v42 = v2 + v32[14];
  v43 = *v42;
  v44 = *(v42 + 8);
  if (*(v42 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v45 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v123;
    v46 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v43, v44, 0);
    v32 = v119;
    (*(v122 + 8))(v46, v12);
  }

  sub_1D29C41F4();
  v47 = v2 + v32[15];
  v48 = *v47;
  if ((*(v47 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v49 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v50 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v48, 0);
    (*(v122 + 8))(v50, v12);
  }

  sub_1D29C40F4();
  v51 = v2 + v32[16];
  v52 = *v51;
  if ((*(v51 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v53 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v54 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v52, 0);
    (*(v122 + 8))(v54, v12);
  }

  sub_1D29C4124();
  v55 = v2 + v32[7];
  v56 = *v55;
  if ((*(v55 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v57 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v58 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v56, 0);
    (*(v122 + 8))(v58, v12);
  }

  sub_1D29C41B4();
  v59 = v2 + v32[8];
  v60 = *v59;
  v61 = *(v59 + 8);
  if (*(v59 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v62 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v2 = v123;
    v63 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v60, v61, 0);
    v32 = v119;
    (*(v122 + 8))(v63, v12);
  }

  v118 = v12;
  sub_1D29C4104();
  v64 = v2 + v32[9];
  v65 = *v64;
  if ((*(v64 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v66 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v67 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v65, 0);
    (*(v122 + 8))(v67, v118);
  }

  sub_1D29C40A4();
  v68 = v123;
  v69 = v123 + v32[10];
  sub_1D29B6974();
  sub_1D29C4084();
  v70 = v68 + v32[11];
  v71 = v120;
  sub_1D29B6974();
  sub_1D29C4074();
  v72 = v68 + v32[12];
  sub_1D29B6974();
  sub_1D29C40E4();
  v73 = v68 + v32[19];
  v74 = *v73;
  v75 = *(v73 + 8);
  if (*(v73 + 16) == 1)
  {

    v77 = v121;
    v76 = v122;
  }

  else
  {

    sub_1D29C4484();
    v78 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v77 = v121;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v74, v75, 0);
    v76 = v122;
    (*(v122 + 8))(v77, v118);
  }

  sub_1D29C4094();
  v79 = v119;
  v80 = v123 + v119[20];
  v81 = *v80;
  if (*(v80 + 8))
  {
    v82 = v118;
  }

  else
  {

    sub_1D29C4484();
    v83 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v81, 0);
    v82 = v118;
    (*(v76 + 8))(v77, v118);
  }

  sub_1D29C4114();
  v84 = v123 + v79[21];
  v85 = *v84;
  if ((*(v84 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v86 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v85, 0);
    (*(v76 + 8))(v77, v82);
  }

  sub_1D29C41C4();
  v87 = v123 + v79[25];
  v125 = *v87;
  v126 = *(v87 + 8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v124, v88);
  v89 = v124;
  v90 = *(v124 + 16);
  if (v90)
  {
    v125 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v90, 0);
    v91 = v125;
    v92 = v89 + ((*(v111[0] + 80) + 32) & ~*(v111[0] + 80));
    v93 = *(v111[0] + 72);
    do
    {
      sub_1D29B1940();
      v94 = *v6;
      v95 = v6[1];

      sub_1D29C0528(v6, type metadata accessor for PhotosPickerItem);
      v125 = v91;
      v97 = *(*&v91 + 16);
      v96 = *(*&v91 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1D29BF5C8((v96 > 1), v97 + 1, 1);
        v91 = v125;
      }

      *(*&v91 + 16) = v97 + 1;
      v98 = *&v91 + 16 * v97;
      *(v98 + 32) = v94;
      *(v98 + 40) = v95;
      v92 += v93;
      --v90;
    }

    while (v90);

    v99 = v116;
    v79 = v119;
    v71 = v120;
    v82 = v118;
  }

  else
  {

    v99 = v116;
  }

  sub_1D29C41A4();
  sub_1D29AEB78(0, &qword_1EC6FDBF0, 0x1E69790F8);
  v112(v114, v71, v99);
  v100 = sub_1D29C44E4();
  v101 = v123 + v79[22];
  v103 = *v101;
  v102 = *(v101 + 8);
  v104 = *(v101 + 16);
  v105 = v121;
  if (*(v101 + 17) == 1)
  {
    if ((v104 & 1) == 0)
    {
      v106 = *v101;
      v107 = *(v101 + 8);
LABEL_42:
      [v100 setPreferredContentSize_];
    }
  }

  else
  {

    sub_1D29C4484();
    v108 = v99;
    v109 = sub_1D29C3DC4();
    v71 = v120;
    sub_1D29C3BE4();

    v99 = v108;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2188(v103, v102, v104, 0);
    (*(v122 + 8))(v105, v82);
    if ((BYTE8(v126) & 1) == 0)
    {
      v106 = v125;
      v107 = *&v126;
      goto LABEL_42;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0C8, &unk_1D29C68A0);
  sub_1D29C3DB4();
  sub_1D29B18D8(&qword_1EC6FE0F0, type metadata accessor for PhotosPickerViewController.Coordinator);
  sub_1D29C4504();
  sub_1D29C3DB4();
  sub_1D29B18D8(&qword_1EC6FE0F8, type metadata accessor for PhotosPickerViewController.Coordinator);
  sub_1D29C44F4();
  (*(v115 + 8))(v71, v99);
  return v100;
}

uint64_t sub_1D29BD4E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a1;
  v73 = a2;
  v4 = type metadata accessor for PhotosPickerItem(0);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D29C3CA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D29C4284();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29C4274();
  v17 = type metadata accessor for PhotosPickerViewController(0);
  v18 = v2 + v17[26];
  sub_1D29C40C4();
  v74 = v16;
  sub_1D29C4214();
  v19 = v3 + v17[5];
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_1D29C4484();
    v21 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v20, 0);
    (*(v9 + 8))(v12, v8);
  }

  sub_1D29BBE28();
  sub_1D29C4244();
  v22 = v3 + v17[13];
  v23 = *v22;
  v24 = *(v22 + 8);
  LODWORD(v22) = *(v22 + 16);
  v69 = v12;
  if (v22 == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v25 = v9;
    v26 = v8;
    v27 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v8 = v26;
    v9 = v25;
    v12 = v69;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v23, v24, 0);
    (*(v25 + 8))(v12, v8);
  }

  sub_1D29C4264();
  v28 = v3 + v17[14];
  v29 = *v28;
  v30 = *(v28 + 8);
  if (*(v28 + 16) == 1)
  {
  }

  else
  {

    sub_1D29C4484();
    v31 = v9;
    v32 = v8;
    v33 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v8 = v32;
    v9 = v31;
    v12 = v69;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C2168(v29, v30, 0);
    (*(v31 + 8))(v12, v8);
  }

  sub_1D29C4254();
  v34 = v3 + v17[15];
  v35 = *v34;
  if ((*(v34 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v36 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v35, 0);
    (*(v9 + 8))(v12, v8);
  }

  sub_1D29C4224();
  v37 = v3 + v17[16];
  v38 = *v37;
  if ((*(v37 + 8) & 1) == 0)
  {

    sub_1D29C4484();
    v39 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v38, 0);
    (*(v9 + 8))(v12, v8);
  }

  sub_1D29C4234();
  sub_1D29C44C4();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0C8, &unk_1D29C68A0);
  sub_1D29C3DB4();
  v41 = 0x1EC6FD000uLL;
  v42 = *(v79 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_selection);

  v43 = (v3 + v17[25]);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v76 = *v43;
  v77 = v45;
  v78 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v75);
  v48 = sub_1D29B2708(v42, v75);

  if (v48)
  {
    return (*(v70 + 8))(v74, v71);
  }

  v76 = v44;
  v77 = v45;
  v69 = v46;
  v78 = v46;
  MEMORY[0x1D38A3CF0](&v79, v47);
  v50 = v79;
  v51 = *(v79 + 16);
  if (v51)
  {
    v64 = v47;
    v65 = v45;
    v66 = v44;
    v67 = v40;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v51, 0);
    v52 = v76;
    v53 = v50 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v54 = *(v68 + 72);
    do
    {
      sub_1D29B1940();
      v56 = *v7;
      v55 = v7[1];

      sub_1D29C0528(v7, type metadata accessor for PhotosPickerItem);
      v76 = v52;
      v58 = *(v52 + 16);
      v57 = *(v52 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1D29BF5C8((v57 > 1), v58 + 1, 1);
        v52 = v76;
      }

      *(v52 + 16) = v58 + 1;
      v59 = v52 + 16 * v58;
      *(v59 + 32) = v56;
      *(v59 + 40) = v55;
      v53 += v54;
      --v51;
    }

    while (v51);

    v41 = 0x1EC6FD000;
    v44 = v66;
    v47 = v64;
    v45 = v65;
  }

  else
  {
  }

  v60 = sub_1D29C43C4();

  [v72 _overrideSelectedItemsWithIdentifiers_];

  sub_1D29C3DB4();
  v61 = v79;
  v76 = v44;
  v77 = v45;
  v78 = v69;
  MEMORY[0x1D38A3CF0](&v75, v47);
  (*(v70 + 8))(v74, v71);
  v62 = *(v41 + 3872);
  v63 = *(v61 + v62);
  *(v61 + v62) = v75;
}

uint64_t sub_1D29BDD20(uint64_t a1)
{
  v2 = v1;
  sub_1D29B1940();
  v4 = a1 + *(type metadata accessor for PhotosPickerViewController(0) + 100);
  v8[1] = *v4;
  v9 = *(v4 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](v8, v5);
  v6 = v8[0];
  sub_1D29C0528(a1, type metadata accessor for PhotosPickerViewController);
  *(v2 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_selection) = v6;
  return v2;
}

uint64_t sub_1D29BDDE8(uint64_t a1, uint64_t a2)
{
  v101 = sub_1D29C3CA4();
  v100 = *(v101 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosPickerItem(0);
  v105 = *(v6 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v99 - v10;
  v121 = sub_1D29C42C4();
  v113 = *(v121 - 1);
  v11 = *(v113 + 8);
  v12 = MEMORY[0x1EEE9AC00](v121);
  v112 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v99 - v14;
  v125 = sub_1D29C4054();
  v15 = *(v125 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v125);
  v122 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v99 - v19;
  v21 = sub_1D29C42F4();
  v114 = *(v21 - 8);
  v115 = v21;
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v117 = type metadata accessor for PhotosPickerViewController(0);
  v118 = v25;
  v26 = (v25 + v117[25]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v109 = v27;
  v127 = v27;
  v128 = v28;
  v108 = v28;
  v107 = v29;
  v129 = v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDB28, &qword_1D29C5A58);
  MEMORY[0x1D38A3CF0](&v126);
  v116 = v126;
  sub_1D29C44D4();
  v119 = v24;
  v110 = sub_1D29C4194();
  v30 = *(a2 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v103 = a2;
  v102 = v15;
  if (v30)
  {
    v32 = *(v15 + 16);
    v33 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v123 = *(v15 + 72);
    v124 = v32;
    v34 = (v15 + 8);
    v35 = v30;
    do
    {
      v36 = v125;
      v124(v20, v33, v125);
      v37 = sub_1D29C4014();
      v39 = v38;
      (*v34)(v20, v36);
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1D29AE070(0, *(v31 + 2) + 1, 1, v31);
        }

        v41 = *(v31 + 2);
        v40 = *(v31 + 3);
        v42 = v31;
        if (v41 >= v40 >> 1)
        {
          v42 = sub_1D29AE070((v40 > 1), v41 + 1, 1, v31);
        }

        *(v42 + 2) = v41 + 1;
        v31 = v42;
        v43 = &v42[16 * v41];
        *(v43 + 4) = v37;
        *(v43 + 5) = v39;
      }

      v33 += v123;
      --v35;
    }

    while (v35);
  }

  v44 = v111;
  sub_1D29C42D4();
  v46 = v112;
  v45 = v113;
  v47 = *(v113 + 13);
  v48 = v121;
  v47(v112, *MEMORY[0x1E6979058], v121);
  v49 = _s015_PhotosUI_SwiftB00A23PickerSelectionBehaviorV2eeoiySbAC_ACtFZ_0();
  v50 = *(v45 + 1);
  v50(v46, v48);
  v50(v44, v48);
  if (v49 & 1) != 0 || (sub_1D29C42D4(), v47(v46, *MEMORY[0x1E6979060], v48), v51 = _s015_PhotosUI_SwiftB00A23PickerSelectionBehaviorV2eeoiySbAC_ACtFZ_0(), v50(v46, v48), v50(v44, v48), (v51))
  {

    v52 = 1;
    v53 = v116;
    v54 = v119;
  }

  else
  {
    if (!(*(v110 + 16) | v30))
    {

      v82 = 0;
      v54 = v119;
      goto LABEL_32;
    }

    v81 = sub_1D29B2E98(v31, v110);

    v53 = v116;
    v54 = v119;
    if (v81)
    {
LABEL_29:

      v82 = 0;
      goto LABEL_32;
    }

    v52 = 0;
  }

  v55 = *(v118 + v117[27]);

  v57 = sub_1D29BE898(v56, (v55 & 1) == 0);
  LODWORD(v123) = v58;
  if (v30)
  {
    v124 = v57;
    LODWORD(v112) = v52;
    v113 = v31;
    v127 = MEMORY[0x1E69E7CC0];
    sub_1D29BF608();
    v59 = v127;
    v60 = v102 + 16;
    v121 = *(v102 + 16);
    v61 = v103 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v62 = *(v102 + 72);
    v63 = (v102 + 8);
    v64 = v105;
    v65 = v104;
    do
    {
      v66 = v122;
      v67 = v125;
      v68 = v60;
      (v121)(v122, v61, v125);
      sub_1D29BEAC8(v66, v124, v123 & 1, v65);
      (*v63)(v66, v67);
      v127 = v59;
      v69 = *(v59 + 16);
      if (v69 >= *(v59 + 24) >> 1)
      {
        sub_1D29BF608();
        v64 = v105;
        v59 = v127;
      }

      *(v59 + 16) = v69 + 1;
      sub_1D29C2194(v65, v59 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v69);
      v61 += v62;
      --v30;
      v60 = v68;
    }

    while (v30);

    v54 = v119;
    v53 = v116;
    v31 = v113;
    LOBYTE(v52) = v112;
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v127 = v109;
  v128 = v108;
  v129 = v107;
  v126 = v59;
  sub_1D29C3F54();
  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

  v70 = *(v53 + 16);
  if (v70)
  {
    v71 = v31;
    v127 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5C8(0, v70, 0);
    v72 = v127;
    v73 = v53 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v74 = *(v105 + 72);
    do
    {
      v75 = v120;
      sub_1D29B1940();
      v77 = *v75;
      v76 = v75[1];

      sub_1D29C0528(v75, type metadata accessor for PhotosPickerItem);
      v127 = v72;
      v79 = *(v72 + 16);
      v78 = *(v72 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D29BF5C8((v78 > 1), v79 + 1, 1);
        v72 = v127;
      }

      *(v72 + 16) = v79 + 1;
      v80 = v72 + 16 * v79;
      *(v80 + 32) = v77;
      *(v80 + 40) = v76;
      v73 += v74;
      --v70;
    }

    while (v70);

    v31 = v71;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  v83 = sub_1D29B2E98(v72, v31);

  v82 = v83 ^ 1;
LABEL_32:
  v84 = sub_1D29C4134();
  v85 = sub_1D29C4174();
  v86 = [objc_opt_self() currentDevice];
  v87 = [v86 userInterfaceIdiom];

  if (v87 == 5)
  {
    v88 = -5;
  }

  else
  {
    v88 = -2;
  }

  v89 = v118 + v117[23];
  v90 = *v89;
  if (*(v89 + 8) != 1)
  {

    sub_1D29C4484();
    v91 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    v92 = v99;
    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29A6C84(v90, 0);
    (*(v100 + 8))(v92, v101);
    LOBYTE(v90) = v127;
  }

  v94 = v114;
  v93 = v115;
  if (!(v90 & 1 | (v84 >> 3) & 1 | v82 & 1) && (v88 | v85) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v95 = v118 + v117[24];
    v96 = *v95;
    v97 = *(v95 + 8);
    LOBYTE(v95) = *(v95 + 16);
    v127 = v96;
    v128 = v97;
    LOBYTE(v129) = v95;
    LOBYTE(v126) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDAF0, &qword_1D29C5A28);
    sub_1D29C3F54();
  }

  return (*(v94 + 8))(v54, v93);
}

uint64_t sub_1D29BE898(uint64_t a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDC08, &qword_1D29C5AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v22 - v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v23 = a2;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D29BF5E8(0, v9, 0);
    v10 = v24;
    v11 = *(type metadata accessor for PhotosPickerItem(0) - 8);
    v12 = *(v11 + 80);
    v22[1] = a1;
    v13 = a1 + ((v12 + 32) & ~v12);
    v14 = *(v11 + 72);
    do
    {
      v15 = (v8 + *(v4 + 48));
      sub_1D29B1940();
      v16 = v15[1];
      *v8 = *v15;
      v8[1] = v16;
      v24 = v10;
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);

      if (v17 >= v18 >> 1)
      {
        sub_1D29BF5E8(v18 > 1, v17 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v17 + 1;
      v19 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      sub_1D29AE9CC();
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  return sub_1D29BEEC4(v10);
}

void sub_1D29BEAC8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v41 = a2;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE118, &qword_1D29C68E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v41 - v7;
  v8 = sub_1D29C3BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v46 = a1;
  v15 = sub_1D29C4004();
  v16 = [v15 registeredContentTypes];

  v17 = sub_1D29C43D4();
  v18 = 0;
  v19 = *(v17 + 16);
  v50 = v9 + 16;
  v51 = v19;
  v47 = (v9 + 32);
  v49 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v51 == v18)
    {

      v30 = v46;
      v31 = sub_1D29C4014();
      if (!v32)
      {
        goto LABEL_18;
      }

      v33 = v31;
      v34 = v32;
      v35 = v49;
      v36 = v44;
      if (!*(v49 + 16))
      {
        sub_1D29BEF78(v31, v32, v41, v44);
        v37 = type metadata accessor for PhotosPickerItem(0);
        if (__swift_getEnumTagSinglePayload(v36, 1, v37) != 1)
        {

          sub_1D29C2194(v36, v45);
          return;
        }

        sub_1D29C2974(v36, &qword_1EC6FE118);
      }

      v38 = *(type metadata accessor for PhotosPickerItem(0) + 28);
      v39 = sub_1D29C4054();
      v40 = v45;
      (*(*(v39 - 8) + 16))(v45 + v38, v30, v39);
      type metadata accessor for PhotosPickerItem.Content(0);
      swift_storeEnumTagMultiPayload();
      *v40 = v33;
      *(v40 + 8) = v34;
      *(v40 + 16) = v42 & 1;
      *(v40 + 24) = v35;
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = *(v9 + 72);
    (*(v9 + 16))(v14, v17 + v20 + v21 * v18, v8);
    v22 = sub_1D29C3B94();
    v23 = PFIsLivePhotoBundleType();

    if (v23)
    {
      (*(v9 + 8))(v14, v8);
      ++v18;
    }

    else
    {
      v24 = *v47;
      (*v47)(v48, v14, v8);
      v25 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v25 + 16);
        sub_1D29BF660();
        v25 = v52;
      }

      v28 = *(v25 + 16);
      v29 = v28 + 1;
      if (v28 >= *(v25 + 24) >> 1)
      {
        v49 = v28 + 1;
        sub_1D29BF660();
        v29 = v49;
        v25 = v52;
      }

      ++v18;
      *(v25 + 16) = v29;
      v49 = v25;
      v43((v25 + v20 + v28 * v21), v48, v8);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1D29BEEC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE130, &qword_1D29C6900);
    v1 = sub_1D29C45D4();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1D29BFC24(v2, 1, &v4);

  return v4;
}

uint64_t sub_1D29BEF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1D29AE344(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56);
    v8 = type metadata accessor for PhotosPickerItem(0);
    v9 = *(*(v8 - 8) + 72);
    sub_1D29B1940();
    v10 = a4;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for PhotosPickerItem(0);
    v10 = a4;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1D29BF03C()
{
  sub_1D29C0528(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent, type metadata accessor for PhotosPickerViewController);
  v1 = *(v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_selection);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1D29BF0D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D29BC41C();
  *a1 = result;
  return result;
}

uint64_t sub_1D29BF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D29BF18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D29BF220()
{
  sub_1D29B18D8(&qword_1EC6FE0C0, type metadata accessor for PhotosPickerViewController);
  sub_1D29C3D84();
  __break(1u);
}

uint64_t sub_1D29BF278()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v7 = v6 + *(type metadata accessor for PhotosPickerViewController(0) + 68);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) != 1)
  {

    sub_1D29C4484();
    v11 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C215C(v9, v8, 0);
    result = (*(v2 + 8))(v5, v1);
    v9 = v12;
    if (!v12)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D29AAE6C(*v7);
  if (v9)
  {
LABEL_5:
    v9(result);
    return sub_1D29AEB68(v9);
  }

  return result;
}

uint64_t sub_1D29BF40C()
{
  v1 = sub_1D29C3CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtCV17_PhotosUI_SwiftUIP33_017389DAE44781501AADB4871649B48726PhotosPickerViewController11Coordinator_parent;
  v7 = v6 + *(type metadata accessor for PhotosPickerViewController(0) + 72);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) != 1)
  {

    sub_1D29C4484();
    v11 = sub_1D29C3DC4();
    sub_1D29C3BE4();

    sub_1D29C3C94();
    swift_getAtKeyPath();
    sub_1D29C215C(v9, v8, 0);
    result = (*(v2 + 8))(v5, v1);
    v9 = v12;
    if (!v12)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D29AAE6C(*v7);
  if (v9)
  {
LABEL_5:
    v9(result);
    return sub_1D29AEB68(v9);
  }

  return result;
}

void *sub_1D29BF5A8(void *a1, int64_t a2, char a3)
{
  result = sub_1D29BF6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D29BF5C8(void *a1, int64_t a2, char a3)
{
  result = sub_1D29BF7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D29BF5E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D29BF8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D29BF608()
{
  v1 = *v0;
  sub_1D29BFA7C();
  *v0 = v2;
}

void sub_1D29BF660()
{
  v1 = *v0;
  sub_1D29BFA7C();
  *v0 = v2;
}

void *sub_1D29BF6B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FE0E8, &qword_1D29C68B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D29AE190(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, a4 + 4, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D29BF7B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6FDBE8, &qword_1D29C5AE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1D29AE190(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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