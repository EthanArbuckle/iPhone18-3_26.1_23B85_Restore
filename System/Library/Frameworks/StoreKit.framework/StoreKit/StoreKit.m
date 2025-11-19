uint64_t sub_1B23F1570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B24369EC();
  *a1 = result;
  return result;
}

void sub_1B23F1620(uint64_t a1@<X8>)
{
  sub_1B23F1654();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1B23F1764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);
  OUTLINED_FUNCTION_2_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B23F1800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);
  OUTLINED_FUNCTION_2_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B23F1888()
{
  MEMORY[0x1B274C0F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23F18C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F18F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B23F1988(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1B23F1A28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F1ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F1B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D47C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B23F1BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D47C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1B23F1BF8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B23F1CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B23F1DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F1DD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B23F1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Product();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1B23F1F94()
{
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for Product();
  OUTLINED_FUNCTION_11_1();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 24) = v0;
  }
}

uint64_t sub_1B23F2058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0310);
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0320);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1B23F2108()
{
  OUTLINED_FUNCTION_12_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0310);
  OUTLINED_FUNCTION_11_1();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0320);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1B23F21B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23F21EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0378);
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B23F22D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s8StoreKit7MessageV6ReasonVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s8StoreKit7MessageV6ReasonVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B23F2488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0558);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0580);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1B23F2570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0558);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0580);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B23F2654()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F268C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23F26C4()
{
  v1 = sub_1B256DE0C();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

char *sub_1B23F2930(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_1B23F295C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F2B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0718);
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B23F2BE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B23F2C24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0710);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F2CB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0710);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F2D44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D47C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F2DCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D47C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1B23F2E74(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1B23F2F24()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F3024()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  OUTLINED_FUNCTION_1_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_2_10();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B23F30E0()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();

  v0 = OUTLINED_FUNCTION_2_10();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B23F3188()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23F31C0()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_2_10();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B23F3334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F33C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F3490()
{

  j__swift_bridgeObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1B23F34DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B23F3570()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F35CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Product();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for Product.ContingentPriceInfo.ID(0);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B23F3698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Product();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for Product.ContingentPriceInfo.ID(0);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B23F3760(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_9();
  v4 = sub_1B256D3CC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1B23F37A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_9();
  v4 = sub_1B256D3CC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1B23F3934()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23F3970()
{
  v1 = (type metadata accessor for StorefrontInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B23F3A68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

unint64_t sub_1B23F3B38(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1B23F3B74()
{
  v0 = sub_1B256E91C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B23F3BC0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x737574617473;
}

uint64_t sub_1B23F3C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B23F3CC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1B23F3D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1B23F3E14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B23F3FBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F3FFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F4078()
{
  sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = (((*(v3 + 64) + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_2_10();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B23F4160()
{
  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23F41B0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F41E4()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23F421C()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F429C()
{
  v0 = sub_1B256E91C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B23F42E8(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x69666F725079656BLL;
      break;
    case 3:
      result = 0x736D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B23F4378(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D14C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F4400(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D14C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B23F4608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_1B23F46E8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_10_9(a1) allowsBootstrapCellularData];
  *v1 = result;
  return result;
}

id sub_1B23F47C4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_10_9(a1) environmentType];
  *v1 = result;
  return result;
}

id sub_1B23F4808(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_10_9(a1) hidesConfirmationDialogs];
  *v1 = result;
  return result;
}

id sub_1B23F484C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_10_9(a1) ignoresInAppPurchaseRestriction];
  *v1 = result;
  return result;
}

id sub_1B23F4910(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_10_9(a1) requiresAuthenticationForPayment];
  *v1 = result;
  return result;
}

uint64_t sub_1B23F49F4@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.AdvancedCommerceInfo.Offer.Reason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B23F4A44(char a1)
{
  if (a1)
  {
    return 0x697461636F766572;
  }

  else
  {
    return 0x73646E75666572;
  }
}

uint64_t sub_1B23F4A88()
{
  OUTLINED_FUNCTION_33_2();
  sub_1B256E91C();
  OUTLINED_FUNCTION_40_3();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B23F4AC8(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_10_10();
      break;
    case 2:
      result = 0x726566666FLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_18_7();
      break;
    case 4:
      result = 5589843;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B23F4B4C()
{
  OUTLINED_FUNCTION_33_2();
  sub_1B256E91C();
  OUTLINED_FUNCTION_40_3();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B23F4B8C(char a1)
{
  result = 0x646F69726570;
  switch(a1)
  {
    case 1:
      result = 0x6F43646F69726570;
      break;
    case 2:
      result = OUTLINED_FUNCTION_18_7();
      break;
    case 3:
      result = 0x6E6F73616572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B23F4C08()
{
  OUTLINED_FUNCTION_33_2();
  sub_1B256E91C();
  OUTLINED_FUNCTION_40_3();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B23F4C48(char a1)
{
  result = 0x6D41646E75666572;
  switch(a1)
  {
    case 1:
      result = 0x6144646E75666572;
      break;
    case 2:
      result = 0x6552646E75666572;
      break;
    case 3:
      result = 0x7954646E75666572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B23F4CF8(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_25_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  v3 = OUTLINED_FUNCTION_15_11();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B23F4D74()
{
  OUTLINED_FUNCTION_30_4();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
    v3 = OUTLINED_FUNCTION_15_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B23F4DEC(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_25_6();
  }

  sub_1B256D36C();
  v3 = OUTLINED_FUNCTION_15_11();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B23F4E5C()
{
  OUTLINED_FUNCTION_30_4();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B256D36C();
    v3 = OUTLINED_FUNCTION_15_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B23F4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1B23F5088(uint64_t a1, uint64_t a2, int *a3)
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
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[15];
      }

      else
      {
        v10 = sub_1B256D3CC();
        v11 = a3[17];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1B23F519C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[13];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[15];
      }

      else
      {
        v10 = sub_1B256D3CC();
        v11 = a4[17];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1B23F5348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
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

uint64_t sub_1B23F5400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
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

uint64_t sub_1B23F5508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24A5EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

StoreKit::Transaction::RevocationReason sub_1B23F66DC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = Transaction.RevocationReason.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B23F671C@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.RevocationReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B23F6744@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.OwnershipType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B23F6788(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_300(*(a1 + 8));
  }

  sub_1B256D36C();
  OUTLINED_FUNCTION_11_1();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[12];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
    OUTLINED_FUNCTION_11_1();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[14];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
      OUTLINED_FUNCTION_11_1();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[21];
      }

      else
      {
        type metadata accessor for Storefront(0);
        OUTLINED_FUNCTION_11_1();
        if (*(v16 + 84) == a2)
        {
          v9 = v15;
          v10 = a3[24];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
          OUTLINED_FUNCTION_11_1();
          if (*(v18 + 84) == a2)
          {
            v9 = v17;
            v10 = a3[26];
          }

          else
          {
            v9 = sub_1B256D3CC();
            v10 = a3[29];
          }
        }
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1B23F6968(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
      OUTLINED_FUNCTION_11_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
        OUTLINED_FUNCTION_11_1();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[21];
        }

        else
        {
          type metadata accessor for Storefront(0);
          OUTLINED_FUNCTION_11_1();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[24];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
            OUTLINED_FUNCTION_11_1();
            if (*(v19 + 84) == a3)
            {
              v10 = v18;
              v11 = a4[26];
            }

            else
            {
              v10 = sub_1B256D3CC();
              v11 = a4[29];
            }
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1B23F6B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B0);
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_300(*(a1 + *(a3 + 20)));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1820);
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1B23F6C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B0);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1820);
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1B23F6D68()
{
  v1 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23F6D98()
{
  sub_1B2443AE4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F6DE4()
{
  OUTLINED_FUNCTION_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  v8 = *(v6 + 80);
  swift_unknownObjectRelease();
  if (*(v0 + 40) >= 4uLL)
  {
  }

  v9 = OUTLINED_FUNCTION_257();
  v10(v9);
  (*(v7 + 8))(v0 + ((((v2 + 64) & ~v2) + v4 + v8) & ~v8), v5);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1B23F6F34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 40) >= 4uLL)
  {
  }

  v5 = OUTLINED_FUNCTION_257();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 64) & ~v2) + v4, v2 | 7);
}

uint64_t sub_1B23F7008()
{
  OUTLINED_FUNCTION_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  v8 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  v9 = OUTLINED_FUNCTION_257();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1B23F7140()
{

  v0 = OUTLINED_FUNCTION_242();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F7170()
{

  v0 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F71A8()
{

  v0 = OUTLINED_FUNCTION_242();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F71D8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B23F7228()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  v1 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23F72A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F72E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23F7338(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D36C();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F73C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D36C();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F74D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F7510()
{
  v1 = *(type metadata accessor for ProductRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for ClientOverride(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    v7 = v5[1];
    if (v7 >> 60 != 15)
    {
      sub_1B2443AE4(*v5, v7);
    }

    v8 = *(v6 + 28);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
    if (!__swift_getEnumTagSinglePayload(v5 + v8, 3, v9))
    {
      sub_1B256D14C();
      OUTLINED_FUNCTION_2_1();
      (*(v10 + 8))(v5 + v8);
    }

    v11 = *(v6 + 40);
    v12 = sub_1B256D3CC();
    if (!__swift_getEnumTagSinglePayload(v5 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v5 + v11, v12);
    }
  }

  j__swift_bridgeObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B23F7768()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B23F77B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D5EC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B23F77FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D5EC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1B23F788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2441970(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B23F7958(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D47C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F79E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D47C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F7A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1D90);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B23F7B3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1D90);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B23F7D44(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_9();
  v5 = _s14PurchaseOptionV19PurchaseOptionValueOMa(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1B23F7D88(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_9();
  v5 = _s14PurchaseOptionV19PurchaseOptionValueOMa(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1B23F7DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B23F7E4C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1B23F7F08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D3CC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F7F90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D3CC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F8020()
{
  type metadata accessor for Product();
  OUTLINED_FUNCTION_87_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  sub_1B24472E0(*(v7 + 16), *(v7 + 24), *(v7 + 32));

  if (*(v1 + v4 + 272))
  {
    if (*(v7 + 184))
    {
    }

    sub_1B24472E0(*(v7 + 320), *(v7 + 328), *(v7 + 336));
  }

  v8 = *(v0 + 60);
  sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  (*(v9 + 8))(v7 + v8);
  if (*(v7 + *(v0 + 64) + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1B23F81BC()
{
  type metadata accessor for Product();
  OUTLINED_FUNCTION_87_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  sub_1B24472E0(*(v7 + 16), *(v7 + 24), *(v7 + 32));

  if (*(v1 + v4 + 272))
  {
    if (*(v7 + 184))
    {
    }

    sub_1B24472E0(*(v7 + 320), *(v7 + 328), *(v7 + 336));
  }

  v8 = *(v0 + 60);
  sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  (*(v9 + 8))(v7 + v8);
  if (*(v7 + *(v0 + 64) + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B23F83B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D47C();
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F8438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D47C();
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F8508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B23F859C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F8604@<X0>(uint64_t *a1@<X8>)
{
  result = AppStore.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B23F86A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.PurchaseResult(0);
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

uint64_t sub_1B23F86EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Product.PurchaseResult(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1B23F8778()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_81_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F87AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F88B4()
{
  sub_1B24472E0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B23F8960()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F8998()
{
  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23F8A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Product.SubscriptionInfo.RenewalInfo.ExpirationReason.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B23F8A88@<X0>(uint64_t *a1@<X8>)
{
  result = Product.SubscriptionInfo.RenewalInfo.ExpirationReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B23F8AC4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_300(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_11_1();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[13];
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[16];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
      OUTLINED_FUNCTION_11_1();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[19];
      }

      else
      {
        sub_1B256D3CC();
        OUTLINED_FUNCTION_11_1();
        if (*(v16 + 84) == a2)
        {
          v9 = v15;
          v10 = a3[22];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
          v10 = a3[25];
        }
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sub_1B23F8C64()
{
  OUTLINED_FUNCTION_18_3();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
    OUTLINED_FUNCTION_11_1();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = v4[13];
    }

    else
    {
      sub_1B256D36C();
      OUTLINED_FUNCTION_11_1();
      if (*(v11 + 84) == v5)
      {
        v8 = v10;
        v9 = v4[16];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
        OUTLINED_FUNCTION_11_1();
        if (*(v13 + 84) == v5)
        {
          v8 = v12;
          v9 = v4[19];
        }

        else
        {
          sub_1B256D3CC();
          OUTLINED_FUNCTION_11_1();
          if (*(v15 + 84) == v5)
          {
            v8 = v14;
            v9 = v4[22];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
            v9 = v4[25];
          }
        }
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_1B23F8E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = *(a3 + 20);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
    v9 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v4 + v9, v3, v8);
}

uint64_t sub_1B23F8EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(a4 + 20);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
    v11 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1B23F8F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_300(*(v4 + *(a3 + 20)));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D23F0);
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1B23F9068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20)) = (v4 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D23F0);
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1B23F914C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23F9184()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B23F91D4()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F9208()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23F923C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23F927C()
{
  sub_1B25142B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23F92FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B23F9344()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23F937C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23F96FC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B23F9758()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F9794()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B23F97F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B23F9858@<X0>(uint64_t *a1@<X8>)
{
  result = Product.SubscriptionOffer.OfferType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B23F9880(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B256D3CC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B23F9908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B256D3CC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B23F9988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_62_4();
  sub_1B256D36C();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    OUTLINED_FUNCTION_11_1();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_16_19(v4 + *(a3 + 28));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1B23F9A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_62_4();
  sub_1B256D36C();
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    OUTLINED_FUNCTION_11_1();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1B23F9B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PurchaseIntentInternal();
  OUTLINED_FUNCTION_11_1();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_16_19(a1 + *(a3 + 24));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1B23F9BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_62_4();
  type metadata accessor for PurchaseIntentInternal();
  OUTLINED_FUNCTION_11_1();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = (v4 - 1);
  }
}

uint64_t sub_1B23F9D64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23F9DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B23F9E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B23FA008()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23FA090(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_61_2();
    return (v3 + 1);
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
      v8 = *(a3 + 36);
    }

    v9 = OUTLINED_FUNCTION_277(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

uint64_t sub_1B23FA154(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
      v8 = *(a4 + 36);
    }

    v9 = OUTLINED_FUNCTION_277(v8);

    return __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  return result;
}

uint64_t sub_1B23FA290()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23FA2C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B23FA308()
{
  v1 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64) + v5;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1B23FA3DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23FA414(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_61_2();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
    v7 = OUTLINED_FUNCTION_277(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_1B23FA4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
    v6 = OUTLINED_FUNCTION_277(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1B23FA52C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
      v8 = *(a3 + 24);
    }

    v9 = OUTLINED_FUNCTION_277(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void *sub_1B23FA608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    sub_1B256D36C();
    OUTLINED_FUNCTION_11_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1B23FA718()
{
  swift_unknownObjectRelease();

  sub_1B2443AE4(*(v0 + 40), *(v0 + 48));

  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23FA764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B23FA79C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23FA7E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B23FA828()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B23FA878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B256D5FC();
  *a1 = result;
  return result;
}

uint64_t sub_1B23FA8F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B23FA944()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B23FA99C@<X0>(uint64_t *a1@<X8>)
{
  result = StoreProductManager.CollectionObserver.storage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B23FA9CC@<X0>(uint64_t *a1@<X8>)
{
  result = StoreProductManager.CollectionObserver.error.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B23FABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
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

    return (v8 + 1);
  }
}

uint64_t sub_1B23FAC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B23FAD34()
{
  v1 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 65) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B23FAE04()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23FAE54()
{

  OUTLINED_FUNCTION_43_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23FAE88()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B23FAEC0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_355();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B23FAF38()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_438();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B23FAFC0()
{
  OUTLINED_FUNCTION_58();
  v1 = type metadata accessor for Product();
  OUTLINED_FUNCTION_432();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  sub_1B24472E0(*(v4 + 16), *(v4 + 24), *(v4 + 32));

  if (*(v0 + v3 + 272))
  {
    if (*(v4 + 184))
    {
    }

    sub_1B24472E0(*(v4 + 320), *(v4 + 328), *(v4 + 336));
  }

  v5 = *(v1 + 60);
  sub_1B256D47C();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 8))(v4 + v5);
  if (*(v4 + *(v1 + 64) + 16))
  {
  }

  OUTLINED_FUNCTION_51();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_1B23FB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1B256D36C();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B23FB498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1B256D36C();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B23FB618()
{
  v1 = *v0;

  return v1;
}

uint64_t _s17SubscriptionOfferVwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1B23FB6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C();
  }
}

uint64_t sub_1B23FB710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2441970(a1, a2);
  *a3 = result & 1;
  return result;
}

id _SKErrorFromNSError(void *a1)
{
  v1 = a1;
  if (![v1 _isSKInternalError])
  {
    v5 = [v1 domain];
    v6 = [v5 isEqualToString:@"com.apple.commerce.client"];

    if (v6)
    {
      v7 = [v1 code];
      if (v7 != 600)
      {
        if (v7 != 1002)
        {
          goto LABEL_8;
        }

LABEL_38:
        v4 = 0;
        v3 = 5;
        goto LABEL_39;
      }

      goto LABEL_30;
    }

    v9 = [v1 domain];
    if (([v9 isEqualToString:@"com.apple.commerce.server"] & 1) == 0)
    {
      v10 = [v1 domain];
      if (![v10 isEqualToString:@"ASDServerErrorDomain"])
      {
        v12 = [v1 domain];
        v13 = [v12 isEqualToString:@"SKServerErrorDomain"];

        if ((v13 & 1) == 0)
        {
          v14 = [v1 domain];
          v15 = [v14 isEqualToString:@"ASDErrorDomain"];

          if (!v15)
          {
            goto LABEL_29;
          }

          v16 = [v1 code];
          if (v16 > 1049)
          {
            if (v16 != 1054)
            {
              if (v16 == 1051)
              {
                v4 = 0;
                v3 = 1;
                goto LABEL_39;
              }

              if (v16 == 1050)
              {
                v4 = 0;
                v3 = 4;
                goto LABEL_39;
              }

              goto LABEL_8;
            }

            goto LABEL_38;
          }

          if (v16 == 512)
          {
            v4 = 0;
            v3 = 1002;
            goto LABEL_39;
          }

          if (v16 != 907)
          {
            if (v16 == 912)
            {
              v4 = 0;
              v3 = 1001;
              goto LABEL_39;
            }

            goto LABEL_8;
          }

LABEL_30:
          v4 = 0;
          v3 = 2;
          goto LABEL_39;
        }

LABEL_13:
        v11 = [v1 code];
        if (v11 > 3901)
        {
          switch(v11)
          {
            case 3902:
              v4 = 0;
              v3 = 13;
              goto LABEL_39;
            case 3903:
              v4 = 0;
              v3 = 12;
              goto LABEL_39;
            case 3904:
              v4 = 0;
              v3 = 18;
              goto LABEL_39;
          }

          goto LABEL_8;
        }

        if (v11 != 3504)
        {
          if (v11 == 3900)
          {
            v4 = 0;
            v3 = 11;
            goto LABEL_39;
          }

          if (v11 == 3901)
          {
            v4 = 0;
            v3 = 14;
            goto LABEL_39;
          }

          goto LABEL_8;
        }

        goto LABEL_38;
      }
    }

    goto LABEL_13;
  }

  v2 = [v1 _SKErrorCodeFromInternal];
  if (!v2)
  {
LABEL_8:
    v8 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Frameworks/StoreKit.framework"];
    v4 = [v8 localizedStringForKey:@"UNKNOWN_ERROR" value:&stru_1F29BCE20 table:0];

    v3 = 0;
    goto LABEL_39;
  }

  v3 = v2;
  if (v2 < 0)
  {
LABEL_29:
    v17 = _SKPublicSafeError(v1);
    goto LABEL_40;
  }

  v4 = 0;
LABEL_39:
  v18 = [MEMORY[0x1E695DF90] dictionary];
  [v18 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v19 = _SKPublicSafeError(v1);
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:v3 userInfo:v18];

LABEL_40:

  return v17;
}

id _SKPublicSafeError(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DF90];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    v4 = [v2 userInfo];
    v5 = *MEMORY[0x1E696A578];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    [v3 setObject:v6 forKeyedSubscript:v5];

    v7 = [v2 userInfo];
    v8 = *MEMORY[0x1E696A588];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
    [v3 setObject:v9 forKeyedSubscript:v8];

    v10 = [v2 userInfo];
    v11 = *MEMORY[0x1E696AA08];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v13 = _SKPublicSafeError();
    [v3 setObject:v13 forKeyedSubscript:v11];

    v14 = MEMORY[0x1E696ABC0];
    v15 = [v2 domain];
    v16 = [v2 code];

    v17 = [v14 errorWithDomain:v15 code:v16 userInfo:v3];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1B2400768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getSKUIRedeemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKUIRedeemClass_softClass;
  v7 = getSKUIRedeemClass_softClass;
  if (!getSKUIRedeemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSKUIRedeemClass_block_invoke;
    v3[3] = &unk_1E7B279A8;
    v3[4] = &v4;
    __getSKUIRedeemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B24039F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKUIRedeemClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B279C8;
    v6 = 0;
    StoreKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (StoreKitUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("SKUIRedeem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKUIRedeemClass_block_invoke_cold_1();
  }

  getSKUIRedeemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B24057C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B24062AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2407A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2408170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B24085CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B2408908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getAMSUIWebViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSUIWebViewControllerClass_softClass;
  v7 = getAMSUIWebViewControllerClass_softClass;
  if (!getAMSUIWebViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAMSUIWebViewControllerClass_block_invoke;
    v3[3] = &unk_1E7B279A8;
    v3[4] = &v4;
    __getAMSUIWebViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B24097CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B240AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSUCreditCardReaderViewControllerClass_block_invoke(uint64_t a1)
{
  iTunesStoreUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SUCreditCardReaderViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUCreditCardReaderViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSUCreditCardReaderViewControllerClass_block_invoke_cold_1();
    iTunesStoreUILibrary();
  }
}

void iTunesStoreUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!iTunesStoreUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __iTunesStoreUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B27CB0;
    v3 = 0;
    iTunesStoreUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!iTunesStoreUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __iTunesStoreUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iTunesStoreUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSURedeemCameraViewControllerClass_block_invoke(uint64_t a1)
{
  iTunesStoreUILibrary();
  result = objc_getClass("SURedeemCameraViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSURedeemCameraViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSURedeemCameraViewControllerClass_block_invoke_cold_1();
    return __getSKUIClientContextClass_block_invoke(v3);
  }

  return result;
}

void __getSKUIClientContextClass_block_invoke(uint64_t a1)
{
  StoreKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKUIClientContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUIClientContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKUIClientContextClass_block_invoke_cold_1();
    StoreKitUILibrary();
  }
}

void StoreKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!StoreKitUILibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __StoreKitUILibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B27CC8;
    v3 = 0;
    StoreKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!StoreKitUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __StoreKitUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  StoreKitUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSKUIRedeemConfigurationClass_block_invoke(uint64_t a1)
{
  StoreKitUILibrary();
  result = objc_getClass("SKUIRedeemConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUIRedeemConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKUIRedeemConfigurationClass_block_invoke_cold_1();
    return __getSKUIRedeemViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getSKUIRedeemViewControllerClass_block_invoke(uint64_t a1)
{
  StoreKitUILibrary();
  result = objc_getClass("SKUIRedeemViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUIRedeemViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKUIRedeemViewControllerClass_block_invoke_cold_1();
    return __getAMSUIWebViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getAMSUIWebViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B27CE0;
    v6 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("AMSUIWebViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIWebViewControllerClass_block_invoke_cold_1();
  }

  getAMSUIWebViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getISLoadURLBagOperationClass_block_invoke(uint64_t a1)
{
  iTunesStoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISLoadURLBagOperation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISLoadURLBagOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISLoadURLBagOperationClass_block_invoke_cold_1();
    iTunesStoreLibrary();
  }
}

void iTunesStoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!iTunesStoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __iTunesStoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B27CF8;
    v3 = 0;
    iTunesStoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!iTunesStoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __iTunesStoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iTunesStoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getISAMSBagShimClass_block_invoke(uint64_t a1)
{
  iTunesStoreLibrary();
  result = objc_getClass("ISAMSBagShim");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISAMSBagShimClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISAMSBagShimClass_block_invoke_cold_1();
    return SKAllowsLandscapePhone();
  }

  return result;
}

void sub_1B240C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICCloudServiceStatusMonitorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iTunesCloudLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iTunesCloudLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B27D60;
    v6 = 0;
    iTunesCloudLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iTunesCloudLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("ICCloudServiceStatusMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICCloudServiceStatusMonitorClass_block_invoke_cold_1();
  }

  getICCloudServiceStatusMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iTunesCloudLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iTunesCloudLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B240CC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B240CE80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _SKANErrorFromNSError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    v4 = [v3 isEqualToString:@"ASDErrorDomain"];

    if (v4 && (v5 = [v2 code], (v5 - 1200) <= 0x18))
    {
      v6 = qword_1B2576DA0[v5 - 1200];
    }

    else
    {
      v6 = 10;
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKANErrorDomain" code:v6 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _SKAdNetworkGetImpressionQueue()
{
  if (_SKAdNetworkGetImpressionQueue_sOnceToken[0] != -1)
  {
    _SKAdNetworkGetImpressionQueue_cold_1();
  }

  v1 = _SKAdNetworkGetImpressionQueue_sSKAdNetworkImpressionQueue;

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1B2412270(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void SKTerminateForInvalidReceipt(void)
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  [v0 isiOSAppOnMac];

  v1 = objc_alloc_init(SKHandleInvalidReceiptRequest);
  [(SKRequest *)v1 start];
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B24158FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isMyViewVisible(void *a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:@"CFBundleIdentifier"];

  v5 = [v4 lowercaseString];
  v6 = v5;
  if (!v5 || ([v5 hasPrefix:@"com.apple."] & 1) == 0)
  {
    v8 = a1;
    v9 = [v8 view];
    v10 = v9;
    if (v9)
    {
      [v9 alpha];
      if (v11 > 0.300000012 && ([v10 isHidden] & 1) == 0)
      {
        v7 = [v10 window];

        if (!v7)
        {
LABEL_21:

          goto LABEL_22;
        }

        [v10 bounds];
        if (v12 == 0.0)
        {
          [v10 frame];
          if (v13 == 0.0)
          {
            [v10 bounds];
            if (v14 >= 0.0)
            {
              [v10 frame];
              if (v15 >= 0.0)
              {
                v16 = [v10 window];
                [v16 bounds];
                v18 = v17;

                [v10 frame];
                v19 = v18 * 0.550000012;
                if (v20 <= v19)
                {
                  [v10 bounds];
                  if (v21 <= v19)
                  {
                    v22 = [MEMORY[0x1E69DC938] currentDevice];
                    if ([v22 userInterfaceIdiom])
                    {

LABEL_17:
                      v24 = [v10 window];

                      if (!v24 || viewMeetsMinimumSizeRequired(v8) && ([v10 layer], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "borderWidth"), v27 = v26, objc_msgSend(v10, "frame"), v29 = v28 * 0.200000003, v25, v27 <= v29))
                      {
                        v7 = 1;
                        goto LABEL_21;
                      }

                      goto LABEL_20;
                    }

                    v23 = [v10 _sk_isAtLeast50PercentOnScreen];

                    if (v23)
                    {
                      goto LABEL_17;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7;
}

void sub_1B2418310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t viewMeetsMinimumSizeRequired(void *a1)
{
  v1 = [a1 view];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 window];

    if (v3)
    {
      [v2 frame];
      v5 = v4;
      v7 = v6;
      v8 = [v2 window];
      [v8 bounds];
      v10 = v9;
      v12 = v11;

      v3 = v5 > v10 * 0.800000012 && v7 > v12 * 0.449999988;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void SKSecTrustCopyResultValidityRange(uint64_t a1, void *a2, void *a3)
{
  v5 = SecTrustCopyInfo();
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      Value = CFDictionaryGetValue(v5, *MEMORY[0x1E697B358]);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFDateGetTypeID())
        {
          CFRetain(v8);
          *a2 = v8;
        }
      }
    }

    if (a3)
    {
      v10 = CFDictionaryGetValue(v6, *MEMORY[0x1E697B350]);
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFDateGetTypeID())
        {
          CFRetain(v11);
          *a3 = v11;
        }
      }
    }

    CFRelease(v6);
  }
}

uint64_t __SKLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.storekit", "Download");
  v1 = SKLogHandleForCategory_logHandles_0;
  SKLogHandleForCategory_logHandles_0 = v0;

  v2 = os_log_create("com.apple.storekit", "General");
  v3 = SKLogHandleForCategory_logHandles_1;
  SKLogHandleForCategory_logHandles_1 = v2;

  v4 = os_log_create("com.apple.storekit", "Messages");
  v5 = SKLogHandleForCategory_logHandles_2;
  SKLogHandleForCategory_logHandles_2 = v4;

  v6 = os_log_create("com.apple.storekit", "Products");
  v7 = SKLogHandleForCategory_logHandles_3;
  SKLogHandleForCategory_logHandles_3 = v6;

  v8 = os_log_create("com.apple.storekit", "Purchase");
  v9 = SKLogHandleForCategory_logHandles_4;
  SKLogHandleForCategory_logHandles_4 = v8;

  v10 = os_log_create("com.apple.storekit", "Push");
  v11 = SKLogHandleForCategory_logHandles_5;
  SKLogHandleForCategory_logHandles_5 = v10;

  v12 = os_log_create("com.apple.storekit", "Receipts");
  v13 = SKLogHandleForCategory_logHandles_6;
  SKLogHandleForCategory_logHandles_6 = v12;

  v14 = os_log_create("com.apple.storekit", "SQL");
  v15 = SKLogHandleForCategory_logHandles_7;
  SKLogHandleForCategory_logHandles_7 = v14;

  v16 = os_log_create("com.apple.storekit", "XcodeTest");
  v17 = SKLogHandleForCategory_logHandles_8;
  SKLogHandleForCategory_logHandles_8 = v16;

  v18 = os_log_create("com.apple.storekit", "ProductPage");
  v19 = SKLogHandleForCategory_logHandles_9;
  SKLogHandleForCategory_logHandles_9 = v18;

  return MEMORY[0x1EEE66BB8](v18, v19);
}

void sub_1B241B808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id get_MusicSubscriptionOfferViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_MusicSubscriptionOfferViewControllerClass_softClass;
  v7 = get_MusicSubscriptionOfferViewControllerClass_softClass;
  if (!get_MusicSubscriptionOfferViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_MusicSubscriptionOfferViewControllerClass_block_invoke;
    v3[3] = &unk_1E7B279A8;
    v3[4] = &v4;
    __get_MusicSubscriptionOfferViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B241C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B241D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B241E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id get_MusicSubscriptionOfferMessageIdentifierJoin()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_ptr;
  v8 = get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_ptr;
  if (!get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_ptr)
  {
    v1 = _MusicKit_SwiftUILibrary();
    v6[3] = dlsym(v1, "_MusicSubscriptionOfferMessageIdentifierJoin");
    get_MusicSubscriptionOfferMessageIdentifierJoinSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t _MusicKit_SwiftUILibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!_MusicKit_SwiftUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___MusicKit_SwiftUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B28848;
    v5 = 0;
    _MusicKit_SwiftUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = _MusicKit_SwiftUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!_MusicKit_SwiftUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B28860;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSUCreditCardReaderViewControllerClass_block_invoke_0(uint64_t a1)
{
  iTunesStoreUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SUCreditCardReaderViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUCreditCardReaderViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSUCreditCardReaderViewControllerClass_block_invoke_cold_1();
    iTunesStoreUILibrary_0();
  }
}

void iTunesStoreUILibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!iTunesStoreUILibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __iTunesStoreUILibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B28878;
    v3 = 0;
    iTunesStoreUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!iTunesStoreUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __iTunesStoreUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  iTunesStoreUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSURedeemCameraViewControllerClass_block_invoke_0(uint64_t a1)
{
  iTunesStoreUILibrary_0();
  result = objc_getClass("SURedeemCameraViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSURedeemCameraViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSURedeemCameraViewControllerClass_block_invoke_cold_1();
    return __get_MusicSubscriptionOfferActionSubscribeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void sub_1B241FEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2422AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2428398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SKGetRatingStarsImage(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    [v5 size];
    v8 = ceil((a2 - 1) * a3 + v7 * a2);
    [v6 size];
    v10 = v9;
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 scale];
    v13 = v12;
    v19.width = v8;
    v19.height = v10;
    UIGraphicsBeginImageContextWithOptions(v19, 0, v13);

    if (a2 >= 1)
    {
      v14 = 0;
      do
      {
        [v6 size];
        [v6 drawAtPoint:{floor((v15 + a3) * v14++), 0.0}];
      }

      while (a2 != v14);
    }

    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1B242A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAIDAServiceTypeCloudSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleIDSSOAuthenticationLibrary();
  result = dlsym(v2, "AIDAServiceTypeCloud");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAIDAServiceTypeCloudSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleIDSSOAuthenticationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppleIDSSOAuthenticationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleIDSSOAuthenticationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B28A50;
    v5 = 0;
    AppleIDSSOAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppleIDSSOAuthenticationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AppleIDSSOAuthenticationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AppleIDSSOAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleIDSSOAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAIDAServiceTypeStoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleIDSSOAuthenticationLibrary();
  result = dlsym(v2, "AIDAServiceTypeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAIDAServiceTypeStoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAMSBiometricsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B28A68;
    v6 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("AMSBiometrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSBiometricsClass_block_invoke_cold_1();
  }

  getAMSBiometricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSUIPasswordSettingsViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B28A80;
    v6 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("AMSUIPasswordSettingsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIPasswordSettingsViewControllerClass_block_invoke_cold_1();
  }

  getAMSUIPasswordSettingsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t __SKLogHandleForCategory_block_invoke_0()
{
  v0 = os_log_create("com.apple.storekit", "Download");
  v1 = SKLogHandleForCategory_logHandles_0_0;
  SKLogHandleForCategory_logHandles_0_0 = v0;

  v2 = os_log_create("com.apple.storekit", "General");
  v3 = SKLogHandleForCategory_logHandles_1_0;
  SKLogHandleForCategory_logHandles_1_0 = v2;

  v4 = os_log_create("com.apple.storekit", "Messages");
  v5 = SKLogHandleForCategory_logHandles_2_0;
  SKLogHandleForCategory_logHandles_2_0 = v4;

  v6 = os_log_create("com.apple.storekit", "Products");
  v7 = SKLogHandleForCategory_logHandles_3_0;
  SKLogHandleForCategory_logHandles_3_0 = v6;

  v8 = os_log_create("com.apple.storekit", "Purchase");
  v9 = SKLogHandleForCategory_logHandles_4_0;
  SKLogHandleForCategory_logHandles_4_0 = v8;

  v10 = os_log_create("com.apple.storekit", "Push");
  v11 = SKLogHandleForCategory_logHandles_5_0;
  SKLogHandleForCategory_logHandles_5_0 = v10;

  v12 = os_log_create("com.apple.storekit", "Receipts");
  v13 = SKLogHandleForCategory_logHandles_6_0;
  SKLogHandleForCategory_logHandles_6_0 = v12;

  v14 = os_log_create("com.apple.storekit", "SQL");
  v15 = SKLogHandleForCategory_logHandles_7_0;
  SKLogHandleForCategory_logHandles_7_0 = v14;

  v16 = os_log_create("com.apple.storekit", "XcodeTest");
  v17 = SKLogHandleForCategory_logHandles_8_0;
  SKLogHandleForCategory_logHandles_8_0 = v16;

  v18 = os_log_create("com.apple.storekit", "ProductPage");
  v19 = SKLogHandleForCategory_logHandles_9_0;
  SKLogHandleForCategory_logHandles_9_0 = v18;

  return MEMORY[0x1EEE66BB8](v18, v19);
}

void sub_1B242B2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B242BBBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242BF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B242C670(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242C8C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B242CB94(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B242D7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B242D9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B242DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B242E768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B242EAD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242EC70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242EE08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F020(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F1B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F4F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F820(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242F9C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242FB5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B242FCE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id OUTLINED_FUNCTION_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = (a1 + 48);

  return objc_loadWeakRetained(v4);
}

void sub_1B243102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2431714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B243297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SKLogHandleForCategory_block_invoke_1()
{
  v0 = os_log_create("com.apple.storekit", "Download");
  v1 = SKLogHandleForCategory_logHandles_0_1;
  SKLogHandleForCategory_logHandles_0_1 = v0;

  v2 = os_log_create("com.apple.storekit", "General");
  v3 = SKLogHandleForCategory_logHandles_1_1;
  SKLogHandleForCategory_logHandles_1_1 = v2;

  v4 = os_log_create("com.apple.storekit", "Messages");
  v5 = SKLogHandleForCategory_logHandles_2_1;
  SKLogHandleForCategory_logHandles_2_1 = v4;

  v6 = os_log_create("com.apple.storekit", "Products");
  v7 = SKLogHandleForCategory_logHandles_3_1;
  SKLogHandleForCategory_logHandles_3_1 = v6;

  v8 = os_log_create("com.apple.storekit", "Purchase");
  v9 = SKLogHandleForCategory_logHandles_4_1;
  SKLogHandleForCategory_logHandles_4_1 = v8;

  v10 = os_log_create("com.apple.storekit", "Push");
  v11 = SKLogHandleForCategory_logHandles_5_1;
  SKLogHandleForCategory_logHandles_5_1 = v10;

  v12 = os_log_create("com.apple.storekit", "Receipts");
  v13 = SKLogHandleForCategory_logHandles_6_1;
  SKLogHandleForCategory_logHandles_6_1 = v12;

  v14 = os_log_create("com.apple.storekit", "SQL");
  v15 = SKLogHandleForCategory_logHandles_7_1;
  SKLogHandleForCategory_logHandles_7_1 = v14;

  v16 = os_log_create("com.apple.storekit", "XcodeTest");
  v17 = SKLogHandleForCategory_logHandles_8_1;
  SKLogHandleForCategory_logHandles_8_1 = v16;

  v18 = os_log_create("com.apple.storekit", "ProductPage");
  v19 = SKLogHandleForCategory_logHandles_9_1;
  SKLogHandleForCategory_logHandles_9_1 = v18;

  return MEMORY[0x1EEE66BB8](v18, v19);
}

id getICCloudServiceStatusCapabilitiesDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_ptr;
  v8 = getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_ptr;
  if (!getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = iTunesCloudLibrary();
    v6[3] = dlsym(v1, "ICCloudServiceStatusCapabilitiesDidChangeNotification");
    getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getICCloudServiceStatusStorefrontCountryCodeDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_ptr;
  v8 = getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_ptr;
  if (!getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = iTunesCloudLibrary();
    v6[3] = dlsym(v1, "ICCloudServiceStatusStorefrontCountryCodeDidChangeNotification");
    getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getICCloudServiceStatusStorefrontIdentifierDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr;
  v8 = getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr;
  if (!getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = iTunesCloudLibrary();
    v6[3] = dlsym(v1, "ICCloudServiceStatusStorefrontIdentifierDidChangeNotification");
    getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1B24364C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICCloudServiceStatusCapabilitiesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICCloudServiceStatusCapabilitiesDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t iTunesCloudLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!iTunesCloudLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __iTunesCloudLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B28EA0;
    v5 = 0;
    iTunesCloudLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = iTunesCloudLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!iTunesCloudLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __iTunesCloudLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  iTunesCloudLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICCloudServiceStatusStorefrontCountryCodeDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICCloudServiceStatusStorefrontCountryCodeDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICCloudServiceStatusStorefrontIdentifierDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICCloudServiceStatusStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getICCloudServiceStatusMonitorClass_block_invoke_0(uint64_t a1)
{
  iTunesCloudLibrary();
  result = objc_getClass("ICCloudServiceStatusMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICCloudServiceStatusMonitorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getICCloudServiceStatusMonitorClass_block_invoke_cold_1();
    return type metadata accessor for SKErrorEventContext(v3);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2436824(uint64_t a1, int a2)
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

uint64_t sub_1B2436844(uint64_t result, int a2, int a3)
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

uint64_t sub_1B2436884@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_98_2();
  *a1 = result;
  return result;
}

uint64_t sub_1B24368AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B245503C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B24368F4(uint64_t a1, id *a2)
{
  result = sub_1B256D99C();
  *a2 = 0;
  return result;
}

uint64_t sub_1B243696C(uint64_t a1, id *a2)
{
  v3 = sub_1B256D9AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B24369EC()
{
  sub_1B256D9BC();
  v0 = sub_1B256D98C();

  return v0;
}

uint64_t sub_1B2436A24(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE08, type metadata accessor for SKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B2436A90(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE08, type metadata accessor for SKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B2436AFC(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B2436B68()
{
  v1 = OUTLINED_FUNCTION_0_4();
  result = nullsub_3(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1B2436B90()
{
  v0 = sub_1B256D9BC();
  v1 = MEMORY[0x1B2749DC0](v0);

  return v1;
}

uint64_t sub_1B2436BC8()
{
  sub_1B256D9BC();
  sub_1B256DA7C();
}

uint64_t sub_1B2436C30@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_3(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B2436C70(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B2436CDC(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B2436D54(void *a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B2436DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B2436E74(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B2436EE0(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B2436F4C(void *a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B2436FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B243706C(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B24370D8(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B2437144(void *a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B24371D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B2437250()
{
  sub_1B256ED3C();
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B24372BC()
{
  OUTLINED_FUNCTION_0_4();
  result = sub_1B2455100();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B24372E4(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption);
  v3 = sub_1B2437694(&qword_1EB7CFE60, type metadata accessor for SKPaymentOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B24373A0(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE68, type metadata accessor for SKServerKey);
  v3 = sub_1B2437694(&qword_1EB7CFE70, type metadata accessor for SKServerKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B243745C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2437694(&qword_1EB7CFE38, type metadata accessor for SKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B24374E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B256D98C();

  *a1 = v2;
  return result;
}

uint64_t sub_1B2437694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B24377B4(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFE48, type metadata accessor for SKClientOverridesKey);
  v3 = sub_1B2437694(&qword_1EB7CFE50, type metadata accessor for SKClientOverridesKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1B2437B0C()
{
  result = qword_1EB7CFD98;
  if (!qword_1EB7CFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CFD98);
  }

  return result;
}

uint64_t sub_1B2437BA8(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFDC0, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B2437C14(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFDC0, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B2437C80(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B2437CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2437694(&qword_1EB7CFDB8, type metadata accessor for ASDError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B2437D70(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFD70, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B2437DDC(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFD70, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B2437E48(uint64_t a1)
{
  v2 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B2437EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2437694(&qword_1EB7CFD68, type metadata accessor for ASDServerError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

void sub_1B2438350(uint64_t a1, unint64_t *a2)
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

uint64_t InvalidRequestError.message.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2438570(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B24385B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t StoreKitViewOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2438694()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

unint64_t sub_1B24386DC()
{
  result = qword_1EB7CFE90;
  if (!qword_1EB7CFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CFE90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreKitViewOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitViewOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B24388A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a7;
  v43 = a8;
  v44 = a6;
  v45 = a4;
  v41 = a5;
  v11 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_1_1();
  v38 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_5();
  v37 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_0_5();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  swift_isUniquelyReferenced_nonNull_native();
  v46 = *a3;
  v26 = v46;
  v39 = a1;
  v40 = a2;
  v27 = sub_1B2458898(a1, a2);
  if (__OFADD__(*(v26 + 16), (v28 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = v27;
  v30 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
  if ((sub_1B256E80C() & 1) == 0)
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1B243A334(*(v46 + 56) + *(v38 + 72) * v29, v25);
    v33 = 0;
    goto LABEL_8;
  }

  v31 = sub_1B2458898(v39, v40);
  if ((v30 & 1) != (v32 & 1))
  {
LABEL_16:

    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  v29 = v31;
  if (v30)
  {
    goto LABEL_7;
  }

LABEL_5:
  v33 = 1;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v25, v33, 1, v11);
  sub_1B25431C0();
  sub_1B243A18C(v25, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
  {
    sub_1B243A224(v22);
    v34 = v46;
    if (v30)
    {
      sub_1B243A28C(*(v46 + 48) + 16 * v29);
      sub_1B243A2E0();
      sub_1B256E82C();
      v34 = v46;
    }
  }

  else
  {
    sub_1B243A334(v22, v18);
    v34 = v46;
    if (v30)
    {
      sub_1B243A334(v18, *(v46 + 56) + *(v38 + 72) * v29);
    }

    else
    {
      v35 = v37;
      sub_1B243A334(v18, v37);
      sub_1B2449CF8(v29, v39, v40, v35, v34);
    }
  }

  *a3 = v34;
}

uint64_t sub_1B2438BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v37 = a4;
  v7 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_1_1();
  v34 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_5();
  v33 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_0_5();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *a3;
  v22 = v38;
  v35 = a1;
  v36 = a2;
  v23 = sub_1B2458898(a1, a2);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
  if (sub_1B256E80C())
  {
    v27 = sub_1B2458898(v35, v36);
    if ((v26 & 1) == (v28 & 1))
    {
      v25 = v27;
      goto LABEL_5;
    }

LABEL_16:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v26)
  {
    sub_1B243A334(*(v38 + 56) + *(v34 + 72) * v25, v21);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v29, 1, v7);
  sub_1B2558B8C();
  sub_1B243A18C(v21, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v7) == 1)
  {
    result = sub_1B243A224(v18);
    v31 = v38;
    if (v26)
    {
      sub_1B243A28C(*(v38 + 48) + 16 * v25);
      sub_1B243A2E0();
      result = sub_1B256E82C();
      v31 = v38;
    }
  }

  else
  {
    sub_1B243A334(v18, v14);
    v31 = v38;
    if (v26)
    {
      result = sub_1B243A334(v14, *(v38 + 56) + *(v34 + 72) * v25);
    }

    else
    {
      v32 = v33;
      sub_1B243A334(v14, v33);
      sub_1B2449CF8(v25, v35, v36, v32, v31);
    }
  }

  *a3 = v31;
  return result;
}

uint64_t sub_1B2438EE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEB8);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = v1;
  sub_1B256E15C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v3);
  return sub_1B256DE5C();
}

uint64_t sub_1B2438FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v41 = a1;
  v42 = sub_1B256D6CC();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);
  v6 = *(v5 - 8);
  v37 = *(v6 + 64);
  v7 = v37;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v38 = sub_1B256D69C();
  v43 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B256D68C();
  v12 = *(v6 + 16);
  v34 = v6 + 16;
  v36 = v12;
  v30 = v9;
  v12(v9, a1, v5);
  v13 = *(v6 + 80);
  v14 = (v13 + 24) & ~v13;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v39;
  v32 = *(v6 + 32);
  v33 = v6 + 32;
  v17 = v5;
  v32(v16 + v14, v9, v5);
  *(v16 + v15) = v40;
  v49 = sub_1B243A3A0;
  v50 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1B243963C;
  v48 = &block_descriptor;
  v18 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v19 = v35;
  sub_1B256D6BC();
  sub_1B256E17C();
  _Block_release(v18);
  v20 = *(v44 + 8);
  v44 += 8;
  v31 = v20;
  v20(v19, v42);
  v21 = *(v43 + 8);
  v43 += 8;
  v22 = v38;
  v21(v11, v38);

  sub_1B256D68C();
  v23 = v30;
  v36(v30, v41, v17);
  v24 = swift_allocObject();
  v32(v24 + ((v13 + 16) & ~v13), v23, v17);
  v49 = sub_1B243A460;
  v50 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1B243963C;
  v48 = &block_descriptor_6;
  v25 = _Block_copy(&aBlock);
  sub_1B256D6BC();
  v26 = v39;
  sub_1B256E18C();
  _Block_release(v25);
  v31(v19, v42);
  v21(v11, v22);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  return sub_1B256DDBC();
}

uint64_t sub_1B24394E4()
{
  v0 = sub_1B256E15C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF30);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1B256E1FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);
  sub_1B256DDEC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B243963C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B24396B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFF28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x1E69E8618])
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B256E19C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B2439830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2439854, 0, 0);
}

uint64_t sub_1B2439854()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 14;
  v0[3] = sub_1B2439914;
  v5 = swift_continuation_init();
  sub_1B2439A30(v5, v2, v1, v4, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B2439914()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);
    v3 = 0;
  }

  else
  {
    v3 = *(*v0 + 112);
    v2 = *(v1 + 8);
  }

  return v2(v3);
}

uint64_t sub_1B2439A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() defaultBroker];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a1;
  v33 = sub_1B243A4D4;
  v34 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1B244BD28;
  v32 = &block_descriptor_19;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 storeKitServiceWithErrorHandler_];
  _Block_release(v12);

  if (v13)
  {
    swift_unknownObjectRetain();
    sub_1B24F4CF8();
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    aBlock = 0;
    v30 = 0xE000000000000000;
    sub_1B256E4FC();

    aBlock = 0xD000000000000023;
    v30 = 0x80000001B258E300;
    MEMORY[0x1B2749D50](a2, a3);
    v17 = aBlock;
    v16 = v30;
    v18 = sub_1B256E0AC();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136446466;
      if (a5)
      {
        aBlock = 91;
        v30 = 0xE100000000000000;
        MEMORY[0x1B2749D50](a4, a5);
        MEMORY[0x1B2749D50](8285, 0xE200000000000000);
        v22 = aBlock;
        v23 = v30;
      }

      else
      {
        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_1B2519814(v22, v23, &v28);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = sub_1B2519814(v17, v16, &v28);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v21, -1, -1);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }

    else
    {
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v26 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v27 = v26;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B2439E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v10, qword_1ED69A108);
  sub_1B256E4FC();

  v28 = 0xD000000000000011;
  v29 = 0x80000001B258E330;
  MEMORY[0x1B2749D50](a2, a3);
  MEMORY[0x1B2749D50](8250, 0xE200000000000000);
  v11 = sub_1B256D0CC();
  v12 = [v11 description];
  v13 = sub_1B256D9BC();
  v15 = v14;

  MEMORY[0x1B2749D50](v13, v15);

  v16 = sub_1B256E0AC();

  v17 = sub_1B256D5CC();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446466;
    if (a5)
    {
      v28 = 91;
      v29 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v20 = 91;
      v21 = 0xE100000000000000;
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_1B2519814(v20, v21, &v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_1B2519814(0xD000000000000011, 0x80000001B258E330, &v27);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v19, -1, -1);
    MEMORY[0x1B274BFF0](v18, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v24 = a1;
  v25 = a1;

  return swift_continuation_throwingResumeWithError();
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

uint64_t sub_1B243A18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243A224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B243A2E0()
{
  result = qword_1EB7CFEB0;
  if (!qword_1EB7CFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CFEB0);
  }

  return result;
}

uint64_t sub_1B243A334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreProductManager.CachedProduct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243A3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);

  return sub_1B24394E4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B243A460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEC0);

  return sub_1B2439680();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B243A51C()
{
  result = qword_1EB7CD4C0;
  if (!qword_1EB7CD4C0)
  {
    type metadata accessor for StoreKitError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD4C0);
  }

  return result;
}

uint64_t PolicyInterface.PolicyInterfaceError.failureReason.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v4 = sub_1B256D47C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_1B24E41B8(0xD00000000000001BLL, 0x80000001B258E350, v3);
}

uint64_t PolicyInterface.PolicyInterfaceError.recoverySuggestion.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v4 = sub_1B256D47C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_1B24E41B8(0xD000000000000012, 0x80000001B258E370, v3);
}

uint64_t PolicyInterface.PolicyInterfaceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t sub_1B243A7F0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [objc_allocWithZone(PolicyRequest) init];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = type metadata accessor for Policy();
  *v3 = v0;
  v3[1] = sub_1B243A904;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x6C6F506863746566, 0xED00002928796369, sub_1B243BD04, v2, v4);
}

uint64_t sub_1B243A904()
{
  OUTLINED_FUNCTION_4_0();
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B243AA7C;
  }

  else
  {

    v2 = sub_1B243AA1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B243AA1C()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B243AA7C()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B243AAE4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  v7 = [objc_opt_self() defaultBroker];
  v8 = *(v4 + 16);
  v26 = a1;
  v24 = v8;
  v8(v6, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v23 = *(v4 + 32);
  v23(v10 + v9, v6, v3);
  v31 = sub_1B243C2A0;
  v32 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v22[1] = &v29;
  v29 = sub_1B244BD28;
  v30 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);

  v12 = [v7 policyServiceWithErrorHandler_];
  _Block_release(v11);

  if (v12)
  {
    v24(v6, v26, v3);
    v13 = swift_allocObject();
    v23(v13 + v9, v6, v3);
    v31 = sub_1B243C3C4;
    v32 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1B243BA98;
    v30 = &block_descriptor_19_0;
    v14 = _Block_copy(&aBlock);

    [v12 policyWithRequest:v25 reply:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v16, qword_1ED69A108);
    v17 = sub_1B256E0AC();
    v18 = sub_1B256D5CC();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1B2519814(0xD00000000000004CLL, 0x80000001B258E390, &aBlock);
      _os_log_impl(&dword_1B23EF000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v20, -1, -1);
      MEMORY[0x1B274BFF0](v19, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243C688(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v21 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    aBlock = v21;
    return sub_1B256DCFC();
  }
}

uint64_t sub_1B243AF88(void *a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000047, 0x80000001B258E450);
  v3 = sub_1B256D0CC();
  v4 = [v3 description];
  v5 = sub_1B256D9BC();
  v7 = v6;

  MEMORY[0x1B2749D50](v5, v7);

  v8 = sub_1B256E0AC();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v14);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(0, 0xE000000000000000, v14);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  v14[0] = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
  return sub_1B256DCFC();
}

void sub_1B243B1E4(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Policy();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v43 - v16);
  if (a2 && (v44 = a2, v18 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40), sub_1B243C5DC(), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v46;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v20, qword_1ED69A108);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000035, 0x80000001B258E410);
    v21 = [v19 description];
    v22 = sub_1B256D9BC();
    v24 = v23;

    MEMORY[0x1B2749D50](v22, v24);

    v25 = v44;
    v26 = v45;
    v27 = sub_1B256E0AC();

    v28 = sub_1B256D5CC();

    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_1B2519814(0, 0xE000000000000000, &v44);
      *(v29 + 12) = 2082;
      v31 = sub_1B2519814(v25, v26, &v44);

      *(v29 + 14) = v31;
      _os_log_impl(&dword_1B23EF000, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v30, -1, -1);
      MEMORY[0x1B274BFF0](v29, -1, -1);
    }

    else
    {
    }

    v44 = sub_1B243B684(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
    sub_1B256DCFC();
  }

  else
  {
    v43 = a3;
    if (a1)
    {
      v32 = sub_1B243C57C(a1, &selRef_termsOfService);
      v34 = v33;
      v35 = sub_1B243C57C(a1, &selRef_privacyPolicyText);
      v37 = v36;
      v38 = [a1 privacyPolicyURL];
      if (v38)
      {
        v39 = v38;
        sub_1B256D12C();

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v42 = sub_1B256D14C();
      __swift_storeEnumTagSinglePayload(v9, v40, 1, v42);
      sub_1B243C44C(v9, v11);
    }

    else
    {
      v41 = sub_1B256D14C();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v41);
      v34 = 0;
      v32 = 0;
      v37 = 0;
      v35 = 0;
    }

    *v17 = v32;
    v17[1] = v34;
    v17[2] = v35;
    v17[3] = v37;
    sub_1B243C44C(v11, v17 + *(v12 + 24));
    sub_1B243C4BC(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
    sub_1B256DD0C();
    sub_1B243C520(v17);
  }
}

uint64_t sub_1B243B684(void *a1)
{
  v2 = sub_1B256D55C();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0058);
  v12 = OUTLINED_FUNCTION_2_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v15 = sub_1B256D56C();
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = a1;
  sub_1B243C5DC();
  v21 = a1;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v17 + 32))(v20, v14, v15);
    sub_1B243C688(&unk_1EB7CD4C8, MEMORY[0x1E6969C20]);
    sub_1B256D08C();
    sub_1B256D51C();
    sub_1B243C688(&qword_1EB7D0060, MEMORY[0x1E6969BF8]);
    v22 = OUTLINED_FUNCTION_0_6();
    v23 = *(v4 + 8);
    v23(v8, v2);
    if (v22)
    {
      v23(v10, v2);
      sub_1B243BE94();
      v26 = OUTLINED_FUNCTION_5();
      *v27 = 0;
    }

    else
    {
      sub_1B256D53C();
      OUTLINED_FUNCTION_0_6();
      v24 = OUTLINED_FUNCTION_1_2();
      (v23)(v24);
      sub_1B256D54C();
      OUTLINED_FUNCTION_0_6();
      v25 = OUTLINED_FUNCTION_1_2();
      (v23)(v25);
      sub_1B256D50C();
      OUTLINED_FUNCTION_0_6();
      v30 = OUTLINED_FUNCTION_1_2();
      (v23)(v30);
      if (v22)
      {
        v23(v10, v2);
        sub_1B243BE94();
        v26 = OUTLINED_FUNCTION_5();
        v33 = 1;
      }

      else
      {
        sub_1B256D4FC();
        OUTLINED_FUNCTION_0_6();
        v31 = OUTLINED_FUNCTION_1_2();
        (v23)(v31);
        v23(v10, v2);
        sub_1B243BE94();
        v26 = OUTLINED_FUNCTION_5();
        v33 = 2;
      }

      *v32 = v33;
    }

    (*(v17 + 8))(v20, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_1B243C620(v14);
    sub_1B243BE94();
    v26 = OUTLINED_FUNCTION_5();
    *v28 = 2;
  }

  return v26;
}

void sub_1B243BA98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t Policy.termsOfService.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Policy.termsOfService.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Policy.privacyPolicyText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Policy.privacyPolicyText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Policy.privacyPolicyURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Policy() + 24);

  return sub_1B243BD58(v3, a1);
}

uint64_t Policy.privacyPolicyURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Policy() + 24);

  return sub_1B243BDC8(a1, v3);
}

uint64_t type metadata accessor for Policy()
{
  result = qword_1EB7D0030;
  if (!qword_1EB7D0030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B243BD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243BDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B243BE3C()
{
  result = qword_1EB7D0020;
  if (!qword_1EB7D0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0020);
  }

  return result;
}

unint64_t sub_1B243BE94()
{
  result = qword_1EB7D0028;
  if (!qword_1EB7D0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyInterface(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PolicyInterface(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PolicyInterface.PolicyInterfaceError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PolicyInterface.PolicyInterfaceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B243C174()
{
  sub_1B243C1F8();
  if (v0 <= 0x3F)
  {
    sub_1B243C248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B243C1F8()
{
  if (!qword_1ED699E38)
  {
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED699E38);
    }
  }
}

void sub_1B243C248()
{
  if (!qword_1EB7D0040)
  {
    sub_1B256D14C();
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D0040);
    }
  }
}

uint64_t sub_1B243C2A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
  OUTLINED_FUNCTION_2_2(v2);

  return sub_1B243AF88(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1B243C3C4(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0048);
  OUTLINED_FUNCTION_2_2(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_1B243B1E4(a1, a2, v7);
}

uint64_t sub_1B243C44C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243C4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Policy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243C520(uint64_t a1)
{
  v2 = type metadata accessor for Policy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B243C57C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B256D9BC();

  return v4;
}

unint64_t sub_1B243C5DC()
{
  result = qword_1EB7D0050;
  if (!qword_1EB7D0050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D0050);
  }

  return result;
}

uint64_t sub_1B243C620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B243C688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_1B256D96C();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_allocError();
}

uint64_t sub_1B243C75C()
{
  if (qword_1EB7CDA50 != -1)
  {
    swift_once();
  }

  sub_1B256EE5C();
  v1 = v0[7];
  v2 = v0[8];
  v0[5] = &type metadata for AccountTypeQueryTask;
  v0[6] = sub_1B243CB50();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B243C888;
  v4 = v0[9];

  return sub_1B2527380((v0 + 2), sub_1B243CA44, 0, v4);
}

uint64_t sub_1B243C888(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B243C9E0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1B243C9E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1B243CA44(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  v9 = sub_1B256D1FC();
  v11[4] = sub_1B243CBF0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B2444748;
  v11[3] = &block_descriptor_1;
  v10 = _Block_copy(v11);

  [v7 accountType:v9 reply:v10];
  _Block_release(v10);
}

unint64_t sub_1B243CB50()
{
  result = qword_1EB7D0068;
  if (!qword_1EB7D0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0068);
  }

  return result;
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B243CC10@<X0>(char *a1@<X8>)
{
  v2 = sub_1B256DA2C();
  v4 = v3;
  v5 = v2 == 68 && v3 == 0xE100000000000000;
  if (v5 || (v6 = v2, (OUTLINED_FUNCTION_12() & 1) != 0))
  {

    v8 = 0;
  }

  else
  {
    v9 = v6 == 87 && v4 == 0xE100000000000000;
    if (v9 || (OUTLINED_FUNCTION_12() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = v6 == 77 && v4 == 0xE100000000000000;
      if (v10 || (OUTLINED_FUNCTION_12() & 1) != 0)
      {

        v8 = 2;
      }

      else if (v6 == 89 && v4 == 0xE100000000000000)
      {

        v8 = 3;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_12();

        if (v12)
        {
          v8 = 3;
        }

        else
        {
          v8 = 4;
        }
      }
    }
  }

  *a1 = v8;
  return result;
}

uint64_t Product.SubscriptionPeriod.Unit.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

unsigned __int8 *Product.SubscriptionPeriod.init(from8601String:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = a3;
  v5 = sub_1B256CEEC();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v52 = a1;
  v53 = a2;
  sub_1B256CEBC();
  sub_1B256CEDC();
  v15 = *(v7 + 8);
  v15(v14, v5);
  sub_1B243E6F8();
  v16 = sub_1B256E34C();
  v18 = v17;
  result = (v15)(v11, v5);
  v20 = HIBYTE(v18) & 0xF;
  v21 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v22 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_77;
  }

  if ((v18 & 0x1000000000000000) == 0)
  {
    if ((v18 & 0x2000000000000000) != 0)
    {
      v52 = v16;
      v53 = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (v20)
        {
          if (v20 != 1)
          {
            OUTLINED_FUNCTION_25();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v42 & v25)
              {
                break;
              }

              OUTLINED_FUNCTION_5_0();
              if (!v42)
              {
                break;
              }

              v24 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v42)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (v16 != 45)
      {
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v42 & v25)
            {
              break;
            }

            OUTLINED_FUNCTION_5_0();
            if (!v42)
            {
              break;
            }

            v24 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v42)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v20)
      {
        if (v20 != 1)
        {
          OUTLINED_FUNCTION_25();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v42 & v25)
            {
              break;
            }

            OUTLINED_FUNCTION_5_0();
            if (!v42)
            {
              break;
            }

            v24 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v42)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        result = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1B256E5FC();
      }

      v23 = *result;
      if (v23 == 43)
      {
        if (v21 >= 1)
        {
          if (v21 != 1)
          {
            v24 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v42 & v25)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_5_0();
                if (!v42)
                {
                  goto LABEL_68;
                }

                v24 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_22();
                if (v42)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_89;
      }

      if (v23 != 45)
      {
        if (v21)
        {
          v24 = 0;
          if (result)
          {
            while (1)
            {
              v35 = *result - 48;
              if (v35 > 9)
              {
                goto LABEL_68;
              }

              v36 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_68;
              }

              v24 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v21)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v24 = 0;
        v28 = 1;
LABEL_69:
        v54 = v28;
        v39 = v28;

        if (v39)
        {
LABEL_77:

LABEL_78:
          type metadata accessor for StoreKitError();
          sub_1B243EB90(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          return swift_willThrow();
        }

        goto LABEL_70;
      }

      if (v21 >= 1)
      {
        if (v21 != 1)
        {
          v24 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v42 & v25)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_5_0();
              if (!v42)
              {
                goto LABEL_68;
              }

              v24 = v27 - v26;
              if (__OFSUB__(v27, v26))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_22();
              if (v42)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v28 = 0;
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v54 = 0;
  sub_1B243F320(v16, v18, 10);
  v24 = v47;
  v49 = v48;

  if (v49)
  {
    goto LABEL_77;
  }

LABEL_70:
  if (sub_1B256DA8C() < 3)
  {
    goto LABEL_77;
  }

  v40 = sub_1B243D274(a1, a2);
  if (!v41)
  {
    goto LABEL_77;
  }

  v42 = v40 == 80 && v41 == 0xE100000000000000;
  if (v42)
  {
  }

  else
  {
    v43 = sub_1B256EB5C();

    if ((v43 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  sub_1B243D2BC(a1, a2);
  v45 = v44;

  if (!v45)
  {
    goto LABEL_78;
  }

  sub_1B243CC10(&v52);

  if (v52 == 4)
  {
    goto LABEL_78;
  }

  v46 = v51;
  *v51 = v52;
  *(v46 + 1) = v24;
  return result;
}

uint64_t sub_1B243D274(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B256DB7C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B243D2BC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1B256DAAC();
  return sub_1B256DB7C();
}

_BYTE *Product.SubscriptionPeriod.init(unit:value:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1B243D34C()
{
  v1 = *v0;
  v2 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v2);

  MEMORY[0x1B2749D50](qword_1B2578218[v1], 0xE100000000000000);
  return 80;
}

uint64_t Product.SubscriptionPeriod.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1B274AFC0](*v0);
  return MEMORY[0x1B274AFC0](v1);
}

uint64_t Product.SubscriptionPeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v2);
  return sub_1B256ED7C();
}

uint64_t sub_1B243D4B8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v2);
  return sub_1B256ED7C();
}

uint64_t Product.SubscriptionPeriod.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v8 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](32, 0xE100000000000000);
  v3 = 0xE300000000000000;
  v4 = 7954756;
  switch(v1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1801807191;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x68746E6F4DLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1918985561;
      break;
    default:
      break;
  }

  MEMORY[0x1B2749D50](v4, v3);

  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 115;
  }

  if (v2 == 1)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x1B2749D50](v5, v6);

  return v8;
}

uint64_t Product.SubscriptionPeriod.Unit.debugDescription.getter()
{
  result = 7954756;
  switch(*v0)
  {
    case 1:
      result = 1801807191;
      break;
    case 2:
      result = 0x68746E6F4DLL;
      break;
    case 3:
      result = 1918985561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DateComponents.init(subscriptionPeriod:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0070);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0078);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = sub_1B256D4DC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  v13 = sub_1B256D4EC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
  switch(v10)
  {
    case 1:
      OUTLINED_FUNCTION_3_1();
      LOBYTE(v22) = 0;
      v21 = v11;
      OUTLINED_FUNCTION_0_7();
      v20 = v17;
      v19 = 0;
      goto LABEL_5;
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_1();
      LOBYTE(v22) = v15;
      v21 = 0;
      OUTLINED_FUNCTION_0_7();
      v20 = v16;
      v19 = 0;
      OUTLINED_FUNCTION_8_0();
      break;
    default:
      OUTLINED_FUNCTION_3_1();
      LOBYTE(v22) = v14;
      v21 = 0;
      OUTLINED_FUNCTION_0_7();
      v20 = 0;
      v19 = v11;
LABEL_5:
      OUTLINED_FUNCTION_8_0();
      break;
  }

  return sub_1B256CF6C();
}

uint64_t Product.SubscriptionPeriod.Unit.calendarComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1B256D4CC();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 104);
  v7 = **(&unk_1E7B28F40 + v3);

  return v6(a1, v7, v4);
}

uint64_t Product.SubscriptionPeriod.dateRange(referenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a1;
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0080);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_5();
  v55 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v53 - v8;
  sub_1B256D4CC();
  OUTLINED_FUNCTION_1_1();
  v58 = v10;
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  v14 = sub_1B256D48C();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v57 = sub_1B256D4DC();
  OUTLINED_FUNCTION_1_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  v28 = OUTLINED_FUNCTION_2_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_0_5();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v53 - v33;
  v35 = *v3;
  (*(v16 + 104))(v20, *MEMORY[0x1E6969868], v14);
  sub_1B256D49C();
  (*(v16 + 8))(v20, v14);
  v37 = v58;
  v36 = v59;
  (*(v58 + 104))(v13, **(&unk_1E7B28F40 + v35), v59);
  v38 = v60;
  sub_1B256D4AC();
  (*(v37 + 8))(v13, v36);
  (*(v22 + 8))(v26, v57);
  sub_1B243E7BC(v34, v31, &qword_1EB7D0088);
  v39 = sub_1B256D36C();
  result = __swift_getEnumTagSinglePayload(v31, 1, v39);
  if (result != 1)
  {
    sub_1B243EB90(&qword_1EB7D0090, MEMORY[0x1E6969530]);
    v41 = sub_1B256D94C();
    result = sub_1B243E88C(v34, &qword_1EB7D0088);
    if (v41)
    {
      v42 = *(v39 - 8);
      v43 = v42[2];
      v44 = v53;
      v43(v53, v38, v39);
      v45 = v54;
      v43((v44 + *(v54 + 48)), v31, v39);
      v46 = v55;
      sub_1B243E7BC(v44, v55, &qword_1EB7D0080);
      v47 = *(v45 + 48);
      v48 = v42[4];
      v49 = v56;
      v48(v56, v46, v39);
      v60 = v31;
      v50 = v42[1];
      v50(v46 + v47, v39);
      sub_1B243E81C(v44, v46);
      v51 = *(v45 + 48);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0098);
      v48(v49 + *(v52 + 36), v46 + v51, v39);
      v50(v46, v39);
      return (v50)(v60, v39);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Product.SubscriptionPeriod.formatted<A>(_:referenceDate:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0098);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  OUTLINED_FUNCTION_20();
  Product.SubscriptionPeriod.dateRange(referenceDate:)(a2, v6);
  sub_1B256CE4C();
  return sub_1B243E88C(v6, &qword_1EB7D0098);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0098);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - v4;
  OUTLINED_FUNCTION_20();
  Product.SubscriptionPeriod.dateRange(referenceDate:)(a2, v5);
  sub_1B256D28C();
  v8[0] = sub_1B256EE0C();
  v8[1] = v6;
  sub_1B256CE4C();
  return sub_1B243E88C(v5, &qword_1EB7D0098);
}

void Product.SubscriptionPeriod.canonicalRepresentation.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  if (v2 == 2)
  {
    if (v3 % 12)
    {
      LOBYTE(v2) = 2;
    }

    else
    {
      LOBYTE(v2) = 3;
    }
  }

  else if (!*v1)
  {
    LOBYTE(v2) = v3 % 7 == 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_10(a1);
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.format(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = 0xE300000000000000;
  v9 = 5849412;
  switch(v7)
  {
    case 1:
      v8 = 0xE400000000000000;
      v9 = 1262830935;
      break;
    case 2:
      v8 = 0xE500000000000000;
      v9 = 0x48544E4F4DLL;
      break;
    case 3:
      v8 = 0xE400000000000000;
      v9 = 1380009305;
      break;
    default:
      break;
  }

  v10 = sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  (*(v11 + 16))(v6, v1, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  return sub_1B24E41B8(v9, v8, v6);
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDEC();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_1B256D47C();
  OUTLINED_FUNCTION_2_3();
  sub_1B243EB90(v1, v2);
  sub_1B256EC0C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B256D47C();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDAC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_2_3();
    sub_1B243EB90(v12, v13);
    sub_1B256EBAC();
    (*(v7 + 32))(a2, v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.hash(into:)()
{
  sub_1B256D47C();
  OUTLINED_FUNCTION_2_3();
  sub_1B243EB90(v0, v1);

  return sub_1B256D8FC();
}

uint64_t Product.SubscriptionPeriod.Unit.FormatStyle.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256D47C();
  OUTLINED_FUNCTION_2_3();
  sub_1B243EB90(v0, v1);
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B243E550@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Product.SubscriptionPeriod.Unit.FormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B243E5C8()
{
  sub_1B256ED3C();
  sub_1B256D47C();
  sub_1B243EB90(&qword_1EB7D00A8, MEMORY[0x1E6969770]);
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

unint64_t sub_1B243E6F8()
{
  result = qword_1EB7CD600[0];
  if (!qword_1EB7CD600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7CD600);
  }

  return result;
}

void *sub_1B243E74C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D00F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1B243E7BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B243E81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B243E88C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_1B243E978()
{
  result = qword_1EB7D00B0;
  if (!qword_1EB7D00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D00B0);
  }

  return result;
}

unint64_t sub_1B243E9D0()
{
  result = qword_1EB7D00B8;
  if (!qword_1EB7D00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D00B8);
  }

  return result;
}

uint64_t type metadata accessor for Product.SubscriptionPeriod.Unit.FormatStyle()
{
  result = qword_1EB7D00E0;
  if (!qword_1EB7D00E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B243EB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s18SubscriptionPeriodVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[16])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
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

uint64_t _s18SubscriptionPeriodVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t _s18SubscriptionPeriodV4UnitOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s18SubscriptionPeriodV4UnitOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B243EDFC()
{
  result = sub_1B256D47C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B243EE68(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = sub_1B256DB9C();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_24();
    v5 = sub_1B243F7E8();
    v40 = v39;

    v6 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_24();
      v7 = sub_1B256E5FC();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_6_0();
          if (v18)
          {
            while (1)
            {
              OUTLINED_FUNCTION_16();
              if (v15 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_11();
                if (!v15 || v22 >= v24)
                {
                  goto LABEL_128;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              if (is_mul_ok(v21, a3) && !__CFADD__(v21 * a3, (v22 + v23)))
              {
                OUTLINED_FUNCTION_15();
                if (!v25)
                {
                  continue;
                }
              }

              goto LABEL_128;
            }
          }
        }

        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_21();
        if (v26 ^ v27 | v25)
        {
          v30 = v33;
        }

        if (v26 ^ v27 | v25)
        {
          v31 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v32 = 58;
        }

        if (v28)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v28;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v31)
              {
                if (v35 < 0x61 || v35 >= v30)
                {
                  goto LABEL_128;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v15 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v15)
              {
                ++v28;
                if (--v29)
                {
                  continue;
                }
              }
            }

            goto LABEL_128;
          }
        }
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_6_0();
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_16();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_11();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if (is_mul_ok(v13, a3) && v13 * a3 >= (v14 + v16))
            {
              OUTLINED_FUNCTION_15();
              if (!v25)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_128:

      return;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_19();
  if (!v25)
  {
    if (v42 != 45)
    {
      if (v41)
      {
        OUTLINED_FUNCTION_1_3();
        while (1)
        {
          OUTLINED_FUNCTION_16();
          if (v15 && v58 < v57)
          {
            v59 = -48;
          }

          else if (v58 < 0x41 || v58 >= v56)
          {
            OUTLINED_FUNCTION_11();
            if (!v15 || v58 >= v60)
            {
              goto LABEL_128;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }

          if (is_mul_ok(v55, a3) && !__CFADD__(v55 * a3, (v58 + v59)))
          {
            OUTLINED_FUNCTION_15();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      if (v41 != 1)
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_14();
        while (1)
        {
          OUTLINED_FUNCTION_16();
          if (v15 && v46 < v45)
          {
            v47 = -48;
          }

          else if (v46 < 0x41 || v46 >= v44)
          {
            OUTLINED_FUNCTION_11();
            if (!v15 || v46 >= v48)
            {
              goto LABEL_128;
            }

            v47 = -87;
          }

          else
          {
            v47 = -55;
          }

          if (is_mul_ok(v43, a3) && v43 * a3 >= (v46 + v47))
          {
            OUTLINED_FUNCTION_15();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    if (v41 != 1)
    {
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_14();
      while (1)
      {
        OUTLINED_FUNCTION_16();
        if (v15 && v52 < v51)
        {
          v53 = -48;
        }

        else if (v52 < 0x41 || v52 >= v50)
        {
          OUTLINED_FUNCTION_11();
          if (!v15 || v52 >= v54)
          {
            goto LABEL_128;
          }

          v53 = -87;
        }

        else
        {
          v53 = -55;
        }

        if (is_mul_ok(v49, a3) && !__CFADD__(v49 * a3, (v52 + v53)))
        {
          OUTLINED_FUNCTION_15();
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_128;
      }
    }

    goto LABEL_128;
  }

LABEL_133:
  __break(1u);
}

void sub_1B243F320(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1B256DB9C();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_24();
    v5 = sub_1B243F7E8();
    v51 = v50;

    v6 = v51;
    if ((v51 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_24();
      v7 = sub_1B256E5FC();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_6_0();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_11();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_136;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_136;
            }
          }
        }

        goto LABEL_136;
      }

      goto LABEL_140;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_21();
        if (v38 ^ v39 | v37)
        {
          v42 = v45;
        }

        if (v38 ^ v39 | v37)
        {
          v43 = 65;
        }

        if (!(v38 ^ v39 | v37))
        {
          v44 = 58;
        }

        if (v40)
        {
          v46 = 0;
          while (1)
          {
            v47 = *v40;
            if (v47 < 0x30 || v47 >= v44)
            {
              if (v47 < 0x41 || v47 >= v43)
              {
                if (v47 < 0x61 || v47 >= v42)
                {
                  goto LABEL_136;
                }

                v48 = -87;
              }

              else
              {
                v48 = -55;
              }
            }

            else
            {
              v48 = -48;
            }

            v49 = v46 * a3;
            if ((v46 * a3) >> 64 == (v46 * a3) >> 63)
            {
              v46 = v49 + (v47 + v48);
              if (!__OFADD__(v49, (v47 + v48)))
              {
                ++v40;
                if (--v41)
                {
                  continue;
                }
              }
            }

            goto LABEL_136;
          }
        }
      }

      goto LABEL_136;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_6_0();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_11();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_136:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_19();
  if (!v10)
  {
    if (v53 != 45)
    {
      if (v52)
      {
        OUTLINED_FUNCTION_1_3();
        while (1)
        {
          OUTLINED_FUNCTION_16();
          if (v22 && v69 < v68)
          {
            v70 = -48;
          }

          else if (v69 < 0x41 || v69 >= v67)
          {
            OUTLINED_FUNCTION_11();
            if (!v22 || v69 >= v71)
            {
              goto LABEL_136;
            }

            v70 = -87;
          }

          else
          {
            v70 = -55;
          }

          if ((v66 * a3) >> 64 == (v66 * a3) >> 63 && !__OFADD__(v66 * a3, (v69 + v70)))
          {
            OUTLINED_FUNCTION_15();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    if (v52)
    {
      if (v52 != 1)
      {
        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_14();
        while (1)
        {
          OUTLINED_FUNCTION_16();
          if (v22 && v57 < v56)
          {
            v58 = -48;
          }

          else if (v57 < 0x41 || v57 >= v55)
          {
            OUTLINED_FUNCTION_11();
            if (!v22 || v57 >= v59)
            {
              goto LABEL_136;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }

          if ((v54 * a3) >> 64 == (v54 * a3) >> 63 && !__OFSUB__(v54 * a3, (v57 + v58)))
          {
            OUTLINED_FUNCTION_15();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    goto LABEL_139;
  }

  if (v52)
  {
    if (v52 != 1)
    {
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_14();
      while (1)
      {
        OUTLINED_FUNCTION_16();
        if (v22 && v63 < v62)
        {
          v64 = -48;
        }

        else if (v63 < 0x41 || v63 >= v61)
        {
          OUTLINED_FUNCTION_11();
          if (!v22 || v63 >= v65)
          {
            goto LABEL_136;
          }

          v64 = -87;
        }

        else
        {
          v64 = -55;
        }

        if ((v60 * a3) >> 64 == (v60 * a3) >> 63 && !__OFADD__(v60 * a3, (v63 + v64)))
        {
          OUTLINED_FUNCTION_15();
          if (!v10)
          {
            continue;
          }
        }

        goto LABEL_136;
      }
    }

    goto LABEL_136;
  }

LABEL_141:
  __break(1u);
}

uint64_t sub_1B243F7E8()
{
  v0 = sub_1B243F854();
  v4 = sub_1B243F888(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B243F888(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B256E30C();
    if (!v9 || (v10 = v9, v11 = sub_1B243E74C(v9, 0), v12 = sub_1B243F9E8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B256DA6C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B256DA6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B256E5FC();
LABEL_4:

  return sub_1B256DA6C();
}