void sub_1CA0E74D0(uint64_t a1@<X8>)
{
  sub_1CA0E7504();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1CA0E7548@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA0EEBAC();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0E75C4(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_8(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_3();
  }
}

uint64_t sub_1CA0E75D8(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA0E7604(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_8(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_3();
  }
}

uint64_t sub_1CA0E7618(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA0E765C()
{
  OUTLINED_FUNCTION_4();
  result = sub_1CA0E7684();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1CA0E76DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CA19BDA8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1CA19ADF8();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1CA0E77A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1CA19BDA8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1CA19ADF8();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1CA0E7870(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CA19ADF8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1CA0E78F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CA19ADF8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA0E7978()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E79B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0E79F0()
{

  sub_1CA0F76A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0E7A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0E7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1CA19CAF8();
  }
}

uint64_t sub_1CA0E7D14()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0E7E4C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CA0E7F40()
{
  MEMORY[0x1CCA9AE80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E7F78@<X0>(uint64_t *a1@<X8>)
{
  result = ArtworkImageView.darkArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0E7FA8@<X0>(uint64_t *a1@<X8>)
{
  result = ArtworkImageView.lightArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0E7FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0E8018()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1CA0E8060()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1CA0E80E8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E811C()
{

  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E8164()
{
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E81A0()
{
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E81D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E8210()
{

  sub_1CA10B868(*(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t sub_1CA0E826C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1CA0E82B4()
{

  sub_1CA10B868(*(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1CA0E8314()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E8348()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E8384()
{
  MEMORY[0x1CCA9AE80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1CA0E83CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA0E841C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E850C()
{
  v1 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA0E85C4()
{
  v1 = (type metadata accessor for BaseBootstrap() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1CA19BDA8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA0E86D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA19BDA8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CA0E8788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CA19BDA8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CA0E8844()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t get_enum_tag_for_layout_string_SSSo29NSCollectionLayoutEnvironment_pSo0aB4SizeCIegggo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA0E8924()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0E896C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E89A0()
{
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E89DC()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E8A18()
{
  sub_1CA0F76A8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0E8A6C()
{
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();

  sub_1CA0F76A8(*(v0 + 24), *(v0 + 32));
  sub_1CA0F76A8(*(v0 + 48), *(v0 + 56));
  sub_1CA0F76A8(*(v0 + 64), *(v0 + 72));
  v1 = OUTLINED_FUNCTION_25_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1CA0E8B34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_2();
  v4 = sub_1CA19B298();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA0E8B78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1CA19B298();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1CA0E8C10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E8C48()
{
  v1 = sub_1CA19BDA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1CA0E8DDC()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E8E10()
{
  v1 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);

  sub_1CA0F76A8(*(v0 + 40), *(v0 + 48));
  sub_1CA0F76A8(*(v0 + 56), *(v0 + 64));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA0E8EE8()
{
  __swift_destroy_boxed_opaque_existential_2(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0E8F20()
{
  __swift_destroy_boxed_opaque_existential_2(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA0E8F58()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E8F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA0E8FE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E901C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E9060()
{

  sub_1CA0F76A8(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0E9208()
{

  __swift_destroy_boxed_opaque_existential_2(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

__n128 sub_1CA0E9258(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA0E9264()
{
  __swift_destroy_boxed_opaque_existential_2(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA0E929C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336A8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4336B0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1CA0E9380(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336A8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4336B0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1CA0E9488()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E94C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequest();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA0E950C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequest();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1CA0E9558()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E958C()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E95C8()
{
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E95FC()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E9630()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0E96A0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0E96EC()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1CA0E99D4()
{
  MEMORY[0x1CCA9AE80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0E9A0C()
{
  v18 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v13 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13;
  v17 = *(v12 + 64);
  v15 = v3 | v13;

  (*(v2 + 8))(v0 + v4, v18);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v17, v15 | 7);
}

uint64_t sub_1CA0E9B8C()
{
  v1 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA0E9C44()
{

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_2(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1CA0E9CB4()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_2(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1CA0E9D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336A8);
  OUTLINED_FUNCTION_6_11();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4336B0);
  OUTLINED_FUNCTION_6_11();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1CA0E9E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336A8);
  OUTLINED_FUNCTION_6_11();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4336B0);
    OUTLINED_FUNCTION_6_11();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1CA0E9FD4()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_2(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1CA0EA02C()
{

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_2(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1CA0EA09C()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA0D0()
{
  v1 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA100()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0EA14C()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0EA194()
{

  v0 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA0EA1C4()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA1F4()
{

  sub_1CA0F76A8(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA27C()
{
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA2B0()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EA2E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EA31C()
{
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_4_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA0EA398()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EA41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 88);
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
    v9 = sub_1CA19B6E8();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_1CA19B4D8();
      v11 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1CA0EA4F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 88) = a2;
  }

  else
  {
    v8 = sub_1CA19B6E8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_1CA19B4D8();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1CA0EA5D8()
{
  v1 = type metadata accessor for FlowAction();
  v2 = *(*(v1 - 8) + 64);
  v11 = *(*(v1 - 8) + 80);
  v3 = (v11 + 16) & ~v11;
  v4 = v0 + v3;
  if (*(v0 + v3 + 48) != 1)
  {
  }

  if (*(v4 + 88))
  {
    __swift_destroy_boxed_opaque_existential_2(v4 + 64);
  }

  v5 = (((((((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 28);
  sub_1CA19B6E8();
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(v4 + v6);
  v8 = *(v1 + 32);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v9 + 8))(v4 + v8);

  return MEMORY[0x1EEE6BDD0](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v11 | 7);
}

uint64_t sub_1CA0EA798()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA0EA7FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0EA834()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EA86C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0EA8BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0EA96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19BD28();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA0EA9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19BD28();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1CA0EAA28()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0EAA60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1CA0EAB00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA0EABB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0EAC44()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1CA0EACBC()
{
  MEMORY[0x1CCA9AE80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0EACF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1CA0EADC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA16E1A4();
  *a1 = result & 1;
  return result;
}

__n128 sub_1CA0EAE04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA0EAE3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0EAE74()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

BOOL sub_1CA0EAF34(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA0EAF60(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1CA0EAF84(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1CA0EB010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA19ADF8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1CA19BD28();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1CA0EB0AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CA19ADF8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1CA19BD28();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1CA0EB18C()
{
  v1 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  OUTLINED_FUNCTION_7_3(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 64) & ~v3;
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_2(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v8))
  {
    sub_1CA19BA68();
    OUTLINED_FUNCTION_0_4();
    (*(v9 + 8))(v0 + v5);
  }

  v10 = v0 + v7;
  if (*(v0 + v7 + 32) == 1)
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_2(v10);
    }
  }

  else if (!*(v0 + v7 + 32))
  {
  }

  OUTLINED_FUNCTION_18_6();

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1CA0EB2D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0EB308()
{
  v1 = type metadata accessor for ResultingActionDispatcher.MetricsBehavior();
  OUTLINED_FUNCTION_7_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;

  __swift_destroy_boxed_opaque_existential_2(v0 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v5))
  {
    sub_1CA19BA68();
    OUTLINED_FUNCTION_0_4();
    (*(v6 + 8))(v0 + v4);
  }

  OUTLINED_FUNCTION_18_6();

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v3 | 7);
}

uint64_t sub_1CA0EB410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);
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

uint64_t sub_1CA0EB464(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339E0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1CA0EB4F4()
{

  __swift_destroy_boxed_opaque_existential_2(v0 + 24);
  if (*(v0 + 96) == 1)
  {
    if (*(v0 + 88))
    {
      __swift_destroy_boxed_opaque_existential_2(v0 + 64);
    }
  }

  else if (!*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1CA0EB568()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EB5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19BD28();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA0EB5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19BD28();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1CA0EB640()
{
  MEMORY[0x1CCA9AE80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA0EB678()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EB6D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_1CA0EB764(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA0EB7F0()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EB824()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EB8C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0EB8F8()
{
  __swift_destroy_boxed_opaque_existential_2(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA0EB938()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EB980@<X0>(_BYTE *a1@<X8>)
{
  result = VideoPlayer.state.getter();
  *a1 = result;
  return result;
}

void *sub_1CA0EB9D4@<X0>(void *a1@<X8>)
{
  result = VideoPlayer.playerItem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0EBA04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA0EBA44()
{
  v1 = OUTLINED_FUNCTION_5_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EBA74()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA0EBABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0EBB04()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CA0EBB68()
{
  MEMORY[0x1CCA9AE80](v0 + 16);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA0EBB9C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA0EBBF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CA0EBC38()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA0EBC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1CA0EBDAC@<X0>(void *a1@<X8>)
{
  result = VisualAreaImageView.artworkImageView.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0EBE34()
{

  __swift_destroy_boxed_opaque_existential_2(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1CA0EBE84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA0EBE94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *ActionDefinition.__allocating_init(id:model:actionImplementationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  result[2] = a6;
  result[3] = a7;
  return result;
}

void *ActionDefinition.init(id:model:actionImplementationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = a4;
  v7[8] = a5;
  v7[2] = a6;
  v7[3] = a7;
  return v7;
}

uint64_t ActionDefinition.deinit()
{

  return v0;
}

uint64_t ActionDefinition.__deallocating_deinit()
{
  ActionDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t variable initialization expression of ActionLoader.actionDefinitionCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432C98);

  return sub_1CA19C038();
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

uint64_t variable initialization expression of AMSUIDTimeout.id()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v1 = [v0 UUIDString];

  v2 = sub_1CA19C118();
  return v2;
}

uint64_t variable initialization expression of AMSUIDTimeout.startTime()
{
  OUTLINED_FUNCTION_11();
  sub_1CA19B348();
  v0 = OUTLINED_FUNCTION_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1CA0EC1BC()
{
  sub_1CA19CBD8();
  sub_1CA19C198();
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC290()
{
  OUTLINED_FUNCTION_12();
  v0(v3, v1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC318()
{
  OUTLINED_FUNCTION_12();
  v0(v1);
  OUTLINED_FUNCTION_7();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC36C(uint64_t a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC42C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC4B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC51C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC58C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC638()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC6D4()
{
  sub_1CA19CBD8();
  sub_1CA19C198();
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC738(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1CA19CBD8();
  a3(a2);
  OUTLINED_FUNCTION_7();

  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC7A4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1CA19CBD8();
  a3(v6, a2);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EC7F0(uint64_t a1, uint64_t a2)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a2);
  return sub_1CA19CC18();
}

id variable initialization expression of ArtworkImageView.backgroundView()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698CCA8]);

  return [v0 init];
}

id variable initialization expression of ArtworkImageView.underlyingImageView()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698CC90]);

  return [v0 init];
}

id variable initialization expression of AssetFetchOperation.stateLock()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB830]);

  return [v0 init];
}

id variable initialization expression of AccountsWrapper.accessLock()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AD10]);

  return [v0 init];
}

uint64_t variable initialization expression of ComponentLoader.componentDefinitionCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CA0);

  return sub_1CA19C038();
}

uint64_t variable initialization expression of DelegateController.onContentViewImpressionItemsChange()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CA8);
  swift_allocObject();
  return sub_1CA19B3F8();
}

double variable initialization expression of DynamicLabel.dynamicText@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of DynamicLabel.label()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698CCA0]);

  return [v0 init];
}

uint64_t sub_1CA0ECAB4(uint64_t a1)
{
  sub_1CA19B0E8();
  MEMORY[0x1EEE9AC00]();
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1CA19B108();
}

uint64_t sub_1CA0ECB98@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CA0ECC1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0);
  MEMORY[0x1EEE9AC00]();
  sub_1CA0EE358(a1, &v4 - v2);
  return sub_1CA19B128();
}

id variable initialization expression of DynamicLabelText.color()
{
  v0 = [objc_opt_self() ams_primaryText];

  return v0;
}

uint64_t variable initialization expression of DynamicViewController.preferredSizingModel()
{
  type metadata accessor for PreferredSizing();

  return swift_allocObject();
}

uint64_t variable initialization expression of LayoutLoader.layoutDefinitionCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC8);

  return sub_1CA19C038();
}

uint64_t variable initialization expression of PageActionLoader.pageActionDefinitionCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CD0);

  return sub_1CA19C038();
}

uint64_t variable initialization expression of PageLoader.pageDefinitionCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CD8);

  return sub_1CA19C038();
}

uint64_t variable initialization expression of VideoConfiguration.aspectRatio()
{
  OUTLINED_FUNCTION_11();
  sub_1CA19B078();
  v0 = OUTLINED_FUNCTION_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t variable initialization expression of VideoPlayer.videoUrl()
{
  OUTLINED_FUNCTION_11();
  sub_1CA19ADF8();
  v0 = OUTLINED_FUNCTION_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t variable initialization expression of VideoPlayer.failure()
{
  v0 = OUTLINED_FUNCTION_11();
  type metadata accessor for VideoPlaybackFailure(v0);
  v1 = OUTLINED_FUNCTION_6();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

id variable initialization expression of VideoPlayer.lastPlaybackTimeGuard()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB830]);

  return [v0 init];
}

id sub_1CA0ED090(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1CA0ED128(uint64_t a1, id *a2)
{
  result = sub_1CA19C0F8();
  *a2 = 0;
  return result;
}

uint64_t sub_1CA0ED1A0(uint64_t a1, id *a2)
{
  v3 = sub_1CA19C108();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CA0ED220()
{
  v1 = OUTLINED_FUNCTION_4();
  result = CGSizeMake(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1CA0ED260@<X0>(_DWORD *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_3();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0ED294@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1CA171D74(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA0ED2C4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1CA171E08(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA0ED2F4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1CA171E40(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1CA0ED32C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA171EB0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1CA0ED360@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA171F24(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1CA0ED3AC@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1CA171FBC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA0ED41C()
{
  v0 = sub_1CA19C118();
  v1 = MEMORY[0x1CCA99880](v0);

  return v1;
}

uint64_t sub_1CA0ED454()
{
  sub_1CA19C118();
  sub_1CA19C198();
}

uint64_t sub_1CA0ED4A8()
{
  sub_1CA19C118();
  sub_1CA19CBD8();
  sub_1CA19C198();
  v0 = sub_1CA19CC18();

  return v0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VisualAreaImageView.SizeConstraints(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VisualAreaImageView.SizeConstraints(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA0ED70C@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_2();
  *a1 = result;
  return result;
}

uint64_t sub_1CA0ED740@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA172ED0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA0ED770(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5(a1);
  result = sub_1CA172EA4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA0ED798(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5(a1);
  result = sub_1CA172EE8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA0ED7C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA172EC8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1CA0ED7FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA172EC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1CA0ED848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA172ED8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA0ED8AC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1CA171CCC(a1);
  *a2 = result;
  return result;
}

_DWORD *sub_1CA0ED8E0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CA0ED944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA0EDA64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA172EE4();
  *a1 = result;
  return result;
}

void *sub_1CA0EDA8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA0EDA9C(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC432EF8, type metadata accessor for TextStyle);
  v3 = sub_1CA0ED944(&unk_1EC432F00, type metadata accessor for TextStyle);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDBE8(uint64_t a1)
{
  v2 = sub_1CA0ED944(&unk_1EE03C1E8, type metadata accessor for Key);
  v3 = sub_1CA0ED944(&qword_1EC432EF0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDCA4(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433050, type metadata accessor for AttributeName);
  v3 = sub_1CA0ED944(&unk_1EC433058, type metadata accessor for AttributeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDD60(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433030, type metadata accessor for FeatureKey);
  v3 = sub_1CA0ED944(&qword_1EC433038, type metadata accessor for FeatureKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDE1C()
{
  v1 = OUTLINED_FUNCTION_4();
  result = sub_1CA184EE8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1CA0EDE44(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EE03C1B0, type metadata accessor for MarkdownAttributeName);
  v3 = sub_1CA0ED944(&qword_1EC433068, type metadata accessor for MarkdownAttributeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDF00(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433040, type metadata accessor for TraitKey);
  v3 = sub_1CA0ED944(&qword_1EC433048, type metadata accessor for TraitKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EDFBC(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433070, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1CA0ED944(&qword_1EC433078, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EE078(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433080, type metadata accessor for Mode);
  v3 = sub_1CA0ED944(&qword_1EC433088, type metadata accessor for Mode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EE134@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA19C0E8();

  *a1 = v2;
  return result;
}

uint64_t sub_1CA0EE17C(uint64_t a1)
{
  v2 = sub_1CA0ED944(&qword_1EC433090, type metadata accessor for Category);
  v3 = sub_1CA0ED944(&qword_1EC433098, type metadata accessor for Category);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA0EE358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA0EEBAC()
{
  sub_1CA19C118();
  v0 = sub_1CA19C0E8();

  return v0;
}

void sub_1CA0EEBF8(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_1CA19C198();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_1CA19CBD8();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_1CA19C198();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_1CA19CBD8();
}

uint64_t _s27AppleMediaServicesUIDynamic15DynamicGridTypeO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EEE2C()
{
  v1 = *v0;
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](v1);
  return sub_1CA19CC18();
}

uint64_t ActionFactory.action(deserializing:using:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CA0EEF50();
  if (!v1)
  {
    if (v6)
    {
      return sub_1CA0EBE94(&v5, a1);
    }

    sub_1CA0EF2A4(&v5);
    sub_1CA0EF30C();
    if (v6)
    {
      return sub_1CA0EBE94(&v5, a1);
    }

    else
    {
      sub_1CA0EF2A4(&v5);
      sub_1CA0EF658();
      swift_allocError();
      *v4 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CA0EEF50()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_0();
  v38 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v32 = OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  *&v31 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  v33 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (qword_1EE03D068 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433128);
  __swift_project_value_buffer(v14, qword_1EE040C98);
  type metadata accessor for ActionLoader();
  OUTLINED_FUNCTION_9_0();
  if (v35[0])
  {
    v30 = v2;
    OUTLINED_FUNCTION_3_0();
    v15 = *(v4 + 16);
    OUTLINED_FUNCTION_6_0();
    v15();
    v16 = v34;
    Location.init(deserializing:using:)(v13, v1);
    if (v16)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v23 = ActionLoader.actionDefinition(withLocation:)(v19, v20, v21, v22);

      v24 = *(v23 + 64);
      v25 = *(v31 + 16);
      v29 = v23;
      v31 = *(v23 + 48);
      v25(v33, v34, v32);
      v26 = v38;
      OUTLINED_FUNCTION_6_0();
      v15();
      v36 = v31;
      v37 = v24;
      __swift_allocate_boxed_opaque_existential_2Tm(v35);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_10_0();
      v27 = v30;
      *(v30 + 24) = v34;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v27);
      (*(*(v26 - 8) + 16))(boxed_opaque_existential_2Tm, v0, v26);

      return __swift_destroy_boxed_opaque_existential_2(v35);
    }
  }

  else
  {
    sub_1CA0EF658();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1CA0EF2A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA0EF30C()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_0();
  v38 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  v31 = v9;
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  v33 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  if (qword_1EE03D040 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433120);
  __swift_project_value_buffer(v14, qword_1EE040C50);
  type metadata accessor for PageActionLoader();
  OUTLINED_FUNCTION_9_0();
  if (v35[0])
  {
    v30 = v2;
    OUTLINED_FUNCTION_3_0();
    v15 = *(v4 + 16);
    OUTLINED_FUNCTION_6_0();
    v15();
    v16 = v34;
    Location.init(deserializing:using:)(v13, v1);
    if (v16)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v23 = PageActionLoader.pageActionDefinition(withLocation:)(v19, v20, v21, v22);

      v24 = *(v23 + 48);
      v28[1] = v23;
      v29 = *(v23 + 32);
      (*(v31 + 16))(v33, v34, v32);
      v25 = v38;
      OUTLINED_FUNCTION_6_0();
      v15();
      v36 = v29;
      v37 = v24;
      __swift_allocate_boxed_opaque_existential_2Tm(v35);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_10_0();
      v26 = v30;
      *(v30 + 24) = v34;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v26);
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_2Tm, v0, v25);

      return __swift_destroy_boxed_opaque_existential_2(v35);
    }
  }

  else
  {
    sub_1CA0EF658();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }
}

unint64_t sub_1CA0EF658()
{
  result = qword_1EC433110;
  if (!qword_1EC433110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionFactory.ActionDecodingError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ActionFactory.ActionDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA0EF860()
{
  result = qword_1EC433118;
  if (!qword_1EC433118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433118);
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

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1CCA9ADF0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_2(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_2_0()
{

  return sub_1CA19B888();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1CA19B4E8();
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  *(v1 - 144) = v0;

  return sub_1CA19B5C8();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_1CA19B4D8();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_1CA19B5D8();
}

void *OUTLINED_FUNCTION_10_0()
{
  v1 = *(v0 - 104);
  *(v0 - 144) = v1;
  return __swift_project_boxed_opaque_existential_2((v0 - 128), v1);
}

uint64_t ActionLoader.actionDefinition(withLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA0EFDC0(a1, a2);
  result = sub_1CA0F041C(v7);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      sub_1CA0F024C();
      swift_allocError();
      swift_willThrow();
      return v4;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA99FB0](i, v7);
      v4 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = *(v4 + 32) == a3 && *(v4 + 40) == a4;
    if (v11 || (sub_1CA19CAF8() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t ActionLoaderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0EFD18()
{
  sub_1CA19CBD8();
  ActionLoaderError.hash(into:)();
  return sub_1CA19CC18();
}

void *sub_1CA0EFD54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432C98);
  v5 = sub_1CA19C038();
  v2[3] = a2;
  v2[4] = a1;
  v2[2] = v5;
  return v2;
}

unint64_t sub_1CA0EFDC0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v2[2];
  if (*(v7 + 16) && (v8 = sub_1CA184158(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1CA174720(a1, a2);
    if (dynamic_cast_existential_1_conditional(v11))
    {
      v10 = (*(v16 + 8))();
      sub_1CA0F00E8(v10);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[2];
      sub_1CA17AAF8();
      v3[2] = v18;
      swift_endAccess();
    }

    else
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v12 = sub_1CA19AFF8();
      __swift_project_value_buffer(v12, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v20 = v6;
      v19[0] = v3;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v19);
      sub_1CA19AF18();
      v20 = MEMORY[0x1E69E6158];
      v19[0] = a1;
      v19[1] = a2;

      sub_1CA19AF38();
      sub_1CA0F0440(v19);
      sub_1CA19AFB8();

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t sub_1CA0F00E8(unint64_t a1)
{
  type metadata accessor for ResultingActionDispatcher();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  result = sub_1CA0F041C(a1);
  if (!result)
  {
  }

  v3 = result;
  if (result >= 1)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1CCA99FB0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      ++v4;
      v6 = (*(v5 + 16))();
      sub_1CA1784F4(v6);
    }

    while (v3 != v4);
  }

  __break(1u);
  return result;
}

uint64_t ActionLoader.deinit()
{

  return v0;
}

uint64_t ActionLoader.__deallocating_deinit()
{
  ActionLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1CA0F024C()
{
  result = qword_1EE03B0D8[0];
  if (!qword_1EE03B0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03B0D8);
  }

  return result;
}

unint64_t sub_1CA0F02A4()
{
  result = qword_1EC433130;
  if (!qword_1EC433130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionLoaderError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ActionLoaderError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1CA0F041C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1CA19C818();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1CA0F0440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

BOOL sub_1CA0F04F0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  return v2 == 2;
}

uint64_t sub_1CA0F05F8()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA0F0690(uint64_t a1, uint64_t a2)
{
  v64 = sub_1CA19B958();
  OUTLINED_FUNCTION_1_0();
  v63 = v4;
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_0_1();
  (MEMORY[0x1EEE9AC00])();
  v6 = &v55 - v5;
  v77 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  v9 = (MEMORY[0x1EEE9AC00])();
  v75 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  v59 = sub_1CA19C038();

  sub_1CA181D40(0x6369706F74, 0xE500000000000000, a2);
  if (v82)
  {
    v13 = OUTLINED_FUNCTION_5_1();
    v14 = *&v79[0];
    if (!v13)
    {
      v14 = 0;
    }

    v57 = v14;
    if (v13)
    {
      v15 = *(&v79[0] + 1);
    }

    else
    {
      v15 = 0;
    }

    v58 = v15;
  }

  else
  {
    sub_1CA0F0440(&v80);
    v57 = 0;
    v58 = 0;
  }

  sub_1CA181D40(0x6369706F74, 0xE500000000000000, a1);
  if (!v82)
  {
    sub_1CA0F0440(&v80);
    goto LABEL_13;
  }

  if (!OUTLINED_FUNCTION_5_1())
  {
LABEL_13:
    v65 = 0;
    v74 = 0;
    goto LABEL_14;
  }

  v74 = *(&v79[0] + 1);
  v65 = *&v79[0];
LABEL_14:
  v60 = a1;
  v73 = v6;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v77, qword_1EE040B90);
  v76 = v8;
  v17 = *(v8 + 16);
  v71 = v16;
  v72 = v8 + 16;
  v70 = v17;
  (v17)(v12);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v19 = *(*(sub_1CA19AF88() - 8) + 72);
  v68 = 3 * v19;
  v69 = v18;
  v20 = swift_allocObject();
  v67 = xmmword_1CA1A0930;
  *(v20 + 16) = xmmword_1CA1A0930;
  OUTLINED_FUNCTION_1_1(&type metadata for AMSUIDMetricsEventLinter);
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v80);
  sub_1CA19AF18();
  v23 = v74;
  if (v74)
  {
    v24 = MEMORY[0x1E69E6158];
    v25 = v65;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v81 = 0;
  }

  *&v80 = v25;
  *(&v80 + 1) = v74;
  v82 = v24;

  sub_1CA19AF38();
  sub_1CA0F0440(&v80);
  sub_1CA19AFC8();

  v26 = *(v76 + 8);
  v27 = v12;
  v28 = v77;
  v76 += 8;
  v66 = v26;
  v26(v27, v77);
  v70(v75, v71, v28);
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_4_1(v29);
  OUTLINED_FUNCTION_1_1(&type metadata for AMSUIDMetricsEventLinter);
  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v80);
  sub_1CA19AF18();
  if (v58)
  {
    v32 = MEMORY[0x1E69E6158];
    v33 = v57;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v81 = 0;
  }

  *&v80 = v33;
  *(&v80 + 1) = v58;
  v82 = v32;
  v58 = 2 * v19;
  sub_1CA19AF38();
  sub_1CA0F0440(&v80);
  v34 = v75;
  sub_1CA19AFC8();

  v66(v34, v77);
  v35 = v60;

  v36 = v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v80 = v36;
  sub_1CA0F0FB8(v35, sub_1CA157814, 0, isUniquelyReferenced_nonNull_native, &v80);
  v38 = v80;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v80 = v38;
  sub_1CA0F0FB8(a2, sub_1CA157814, 0, v39, &v80);
  v40 = v80;

  v41 = v73;
  sub_1CA19B938();
  if ((sub_1CA0F12BC() & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v74)
  {
    goto LABEL_37;
  }

  v42 = v65 == 0x615F6573615F7078 && v74 == 0xEF667265705F736DLL;
  if (!v42 && (sub_1CA19CAF8() & 1) == 0)
  {
LABEL_35:

    goto LABEL_37;
  }

  v70(v56, v71, v77);
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_4_1(v43);
  OUTLINED_FUNCTION_1_1(&type metadata for AMSUIDMetricsEventLinter);
  v44 = AMSLogKey();
  if (v44)
  {
    v45 = v44;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v80);
  sub_1CA19AF18();
  v46 = MEMORY[0x1E69E6158];
  v82 = MEMORY[0x1E69E6158];
  v47 = v65;
  *&v80 = v65;
  *(&v80 + 1) = v23;

  sub_1CA19AF38();
  sub_1CA0F0440(&v80);
  v48 = v56;
  sub_1CA19AFC8();

  v66(v48, v77);
  v82 = v46;
  *&v80 = v47;
  *(&v80 + 1) = v23;
  sub_1CA0F11E8(&v80, v79);
  swift_isUniquelyReferenced_nonNull_native();
  v78 = v40;
  sub_1CA17AC14(v79, 0x6369706F74, 0xE500000000000000);
  v41 = v73;
LABEL_37:
  v49 = v62;
  sub_1CA19B938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433138);
  v50 = v63;
  v51 = v64;
  (*(v63 + 16))(v61, v49, v64);
  v52 = sub_1CA19BE88();
  v53 = *(v50 + 8);
  v53(v49, v51);
  v53(v41, v51);
  return v52;
}

uint64_t sub_1CA0F0FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1CA177408(v31);
  v29[2] = v31[0];
  v29[3] = v31[1];
  v29[4] = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1CA176D20(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_1CA0F11F8();
    }

    v8 = v28;
    sub_1CA0F11E8(v29, v27);
    v9 = *a5;
    v11 = sub_1CA184158(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D70);
        sub_1CA19C9B8();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1CA175C7C(v14, a4 & 1);
      v16 = sub_1CA184158(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1CA0F1200(v27, v26);
        __swift_destroy_boxed_opaque_existential_2(v27);

        v19 = (v18[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_2(v19);
        sub_1CA0F11E8(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1CA0F11E8(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CA19CB58();
  __break(1u);
  return result;
}

_OWORD *sub_1CA0F11E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CA0F1200(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;
}

__n128 OUTLINED_FUNCTION_4_1(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_dynamicCast();
}

uint64_t sub_1CA0F12BC()
{
  v0 = sub_1CA19B948();
  sub_1CA181D40(0x707954746E657665, 0xE900000000000065, v0);

  if (!v7)
  {
    sub_1CA0F0440(v6);
LABEL_10:
    v2 = sub_1CA19CAF8();

    return v2 & 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 != 0x646E655265676170 || v5 != 0xEA00000000007265)
  {
    goto LABEL_10;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1CA0F13BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19BDA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  sub_1CA0F2110(0, &qword_1EE03C130);
  sub_1CA19B7C8();
  *(v3 + 16) = v15[0];
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v10 = v15[1];
  *(v3 + 24) = v15[0];
  *(v3 + 32) = v10;
  sub_1CA19BE18();
  v11 = sub_1CA19BD68();
  v12 = objc_allocWithZone(MEMORY[0x1E698CA00]);
  v13 = sub_1CA0F20A8(0xD00000000000001CLL, 0x80000001CA1A8F00, v11);

  (*(v7 + 8))(v9, v6);
  *(v3 + 40) = v13;
  return v3;
}

void sub_1CA0F1570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1CA0F2110(0, &qword_1EE03BD78);

    v8 = sub_1CA0F1810();
    [v8 setAccount_];
    [v8 setAnonymous_];
    sub_1CA19B948();
    v4 = sub_1CA19C008();

    [v8 addPropertiesWithDictionary_];

    [*(v3 + 40) enqueueEvent_];
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v9[3] = type metadata accessor for AMSUIDMetricsEventRecorder();
    v9[0] = v3;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v9);
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }
}

id sub_1CA0F1810()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA19C0E8();

  v2 = [v0 initWithTopic_];

  return v2;
}

uint64_t sub_1CA0F1884()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v10 = type metadata accessor for AMSUIDMetricsEventRecorder();
  v9[0] = v0;

  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339F0);
  v4 = [*(v0 + 40) flush];
  sub_1CA19BEE8();
  v5 = sub_1CA0F2110(0, &qword_1EE03C230);
  v6 = sub_1CA19C598();
  v10 = v5;
  v11 = MEMORY[0x1E69AB720];
  v9[0] = v6;
  sub_1CA19BE68();
  __swift_destroy_boxed_opaque_existential_2(v9);
  v10 = sub_1CA19B8B8();
  v11 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v9);
  sub_1CA19B8A8();
  v7 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  return v7;
}

uint64_t sub_1CA0F1B34(void **a1)
{
  v2 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *a1;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  type metadata accessor for DynamicViewController();
  v5 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  sub_1CA19AF48();

  sub_1CA19AEE8();
  sub_1CA19AED8();
  v8[3] = sub_1CA0F2110(0, &unk_1EE03C138);
  v8[0] = v3;
  v6 = v3;
  sub_1CA19AEC8();
  sub_1CA0F0440(v8);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFC8();
}

uint64_t sub_1CA0F1D88()
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v0 = sub_1CA19AFF8();
  __swift_project_value_buffer(v0, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  type metadata accessor for DynamicViewController();
  v1 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  sub_1CA19AF48();

  sub_1CA19AF18();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA0F0440(v5);
  sub_1CA19AFB8();
}

id sub_1CA0F1F90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_1CA0F1FCC()
{

  return v0;
}

uint64_t sub_1CA0F2004()
{
  sub_1CA0F1FCC();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

id sub_1CA0F20A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA19C0E8();

  v6 = [v3 initWithContainerID:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1CA0F2110(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t sub_1CA0F2170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433140);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA1A0C20;
  v7 = type metadata accessor for AMSUIDMetricsEventRecorder();
  swift_allocObject();

  v8 = sub_1CA0F13BC(a1, a2);
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_1CA0F226C();
  *(v6 + 32) = v8;
  v9 = sub_1CA19BCC8();
  swift_allocObject();
  result = sub_1CA19BCB8();
  v11 = MEMORY[0x1E69AB488];
  a3[3] = v9;
  a3[4] = v11;
  *a3 = result;
  return result;
}

unint64_t sub_1CA0F226C()
{
  result = qword_1EE03C930;
  if (!qword_1EE03C930)
  {
    type metadata accessor for AMSUIDMetricsEventRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C930);
  }

  return result;
}

uint64_t sub_1CA0F22C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1CA19BCF8();
  OUTLINED_FUNCTION_1_0();
  v62 = v5;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AMSUIDMetricsFieldsAggregatorProvider();
  v16 = *(v12 + 16);
  v66 = v68[5];
  v67 = v12 + 16;
  v56 = v16;
  v16(v15, v2 + v66, v10);
  sub_1CA0F2ACC(v2, v70);
  v17 = [objc_opt_self() mainBundle];
  sub_1CA19BBA8();
  v71 = type metadata accessor for ImpressionsMetricsFieldsProvider(0);
  v18 = sub_1CA0F2B9C(qword_1EE03C710, type metadata accessor for ImpressionsMetricsFieldsProvider);
  v19 = OUTLINED_FUNCTION_4_2(v18);
  v20 = *MEMORY[0x1E69AB4D8];
  v21 = sub_1CA19BD28();
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  v24 = v22 + 104;
  v23(v19, v20, v21);
  if (qword_1EE03C2F8 != -1)
  {
    swift_once();
  }

  v25 = v9;
  v26 = sub_1CA19BD18();
  __swift_project_value_buffer(v26, qword_1EE040C18);
  OUTLINED_FUNCTION_1_2();
  sub_1CA19BB88();
  __swift_destroy_boxed_opaque_existential_2(v70);
  v71 = type metadata accessor for SnapshotImpressionsMetricsFieldsProvider(0);
  v27 = sub_1CA0F2B9C(qword_1EE03C518, type metadata accessor for SnapshotImpressionsMetricsFieldsProvider);
  v28 = OUTLINED_FUNCTION_4_2(v27);
  v60 = v20;
  v59 = v21;
  v58 = v23;
  v57 = v24;
  v23(v28, v20, v21);
  if (qword_1EE03C2F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_1EE040C00);
  OUTLINED_FUNCTION_1_2();
  sub_1CA19BB88();
  __swift_destroy_boxed_opaque_existential_2(v70);
  sub_1CA0F2ACC(v2, v69);
  v29 = *(v2 + v68[7]);
  v64 = v26;
  v30 = v2 + v66;
  v55 = v2;
  v31 = v56;
  v56(v25, v30, v10);
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
  v65 = a1;
  v32 = swift_allocObject();
  v54 = xmmword_1CA1A0C40;
  *(v32 + 16) = xmmword_1CA1A0C40;
  sub_1CA0F2110(0, &qword_1EE03B200);
  v33 = v29;
  *(v32 + 32) = sub_1CA0F2B30(0x6449746E65696C63, 0xE800000000000000, 0);
  sub_1CA19BD48();
  v34 = sub_1CA19BD58();
  v71 = v34;
  v72 = MEMORY[0x1E69AB518];
  __swift_allocate_boxed_opaque_existential_2Tm(v70);
  v35 = v33;
  OUTLINED_FUNCTION_0_3(v69, v36);
  if (qword_1EE03B218 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v64, qword_1EE040B60);
  OUTLINED_FUNCTION_1_2();
  sub_1CA19BB88();
  __swift_destroy_boxed_opaque_existential_2(v70);
  v37 = v55;
  sub_1CA0F2ACC(v55, v69);
  v31(v25, v37 + v66, v10);
  OUTLINED_FUNCTION_3_1();
  v38 = swift_allocObject();
  *(v38 + 16) = v54;
  *(v38 + 32) = sub_1CA0F2B30(0x644972657375, 0xE600000000000000, 1);
  sub_1CA19BD48();
  v71 = v34;
  v72 = MEMORY[0x1E69AB518];
  __swift_allocate_boxed_opaque_existential_2Tm(v70);
  OUTLINED_FUNCTION_0_3(v69, v39);
  if (qword_1EE03B220 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v64, qword_1EE040B78);
  OUTLINED_FUNCTION_1_2();
  sub_1CA19BB88();
  __swift_destroy_boxed_opaque_existential_2(v70);
  v40 = v68[6];
  v41 = type metadata accessor for PageUrlFieldsProvider();
  v71 = v41;
  v42 = sub_1CA0F2B9C(&unk_1EE03D030, type metadata accessor for PageUrlFieldsProvider);
  v43 = OUTLINED_FUNCTION_4_2(v42);
  v44 = sub_1CA19ADF8();
  (*(*(v44 - 8) + 16))(v43, v37 + v40, v44);
  v45 = v43 + *(v41 + 20);
  v46 = v60;
  v47 = v59;
  v48 = v58;
  v58(v45, v60, v59);
  if (qword_1EE03C308 != -1)
  {
    swift_once();
  }

  v49 = v63;
  __swift_project_value_buffer(v63, qword_1EE040C30);
  OUTLINED_FUNCTION_1_2();
  sub_1CA19BB98();
  __swift_destroy_boxed_opaque_existential_2(v70);
  v71 = type metadata accessor for SendMethodFieldsProvider();
  v50 = sub_1CA0F2B9C(qword_1EE03CB58, type metadata accessor for SendMethodFieldsProvider);
  v51 = OUTLINED_FUNCTION_4_2(v50);
  v48(v51, v46, v47);
  v52 = v61;
  sub_1CA19BCD8();
  sub_1CA19BB98();
  (*(v62 + 8))(v52, v49);
  return __swift_destroy_boxed_opaque_existential_2(v70);
}

uint64_t type metadata accessor for AMSUIDMetricsFieldsAggregatorProvider()
{
  result = qword_1EE03C5F8;
  if (!qword_1EE03C5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA0F2ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1CA0F2B30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1CA19C0E8();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

uint64_t sub_1CA0F2B9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA0F2C34()
{
  result = sub_1CA0F2CF8();
  if (v1 <= 0x3F)
  {
    result = sub_1CA19BDA8();
    if (v2 <= 0x3F)
    {
      result = sub_1CA19ADF8();
      if (v3 <= 0x3F)
      {
        result = sub_1CA0F2110(319, &qword_1EE03C268);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1CA0F2CF8()
{
  result = qword_1EE03B4A0;
  if (!qword_1EE03B4A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE03B4A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = v6;

  return MEMORY[0x1EEE175A0](a1, v4, v2, 0, v3, 0, a2);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t *OUTLINED_FUNCTION_4_2(uint64_t a1)
{
  *(v1 - 112) = a1;

  return __swift_allocate_boxed_opaque_existential_2Tm((v1 - 144));
}

uint64_t sub_1CA0F2DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1CA0F11E8(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1CA17AC14(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    sub_1CA0F0440(a1);
    sub_1CA17A4D8(a2, a3, v8);

    return sub_1CA0F0440(v8);
  }

  return result;
}

uint64_t sub_1CA0F2E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA0F1200(a1, v6);

  return sub_1CA0F2DD0(v6, a2, a3);
}

uint64_t sub_1CA0F2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v35 - v5;
  v49 = sub_1CA19BBB8();
  v47 = *(v49 - 8);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v35 - v8;
  v9 = type metadata accessor for AMSUIDMetricsFieldsAggregatorProvider();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicAccountsStore();
  v40 = v2;
  v13 = *v2;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v14 = v55[0];
  sub_1CA19BE18();
  v15 = v55[1];
  sub_1CA0F3410();
  v39 = v13;
  sub_1CA19BE18();
  v43 = v55[0];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = sub_1CA19C038();
  }

  sub_1CA181D40(0x6369706F74, 0xE500000000000000, v16);

  if (v55[3])
  {
    v17 = swift_dynamicCast();
    v18 = v51;
    if (!v17)
    {
      v18 = 0;
    }

    v41 = v18;
    if (v17)
    {
      v19 = v52;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1CA0F0440(v55);
    v41 = 0;
    v19 = 0;
  }

  swift_beginAccess();
  v20 = *(v14 + 32);
  v21 = sub_1CA19BF58();
  v22 = MEMORY[0x1E69AB670];
  *(v12 + 3) = v21;
  *(v12 + 4) = v22;
  *v12 = v20;
  v23 = v9[5];
  v24 = sub_1CA19BDA8();
  v42 = v14;
  v25 = v24;
  OUTLINED_FUNCTION_0_4();
  v37 = *(v26 + 16);
  v38 = v26 + 16;
  v37(&v12[v23], a1, v25);
  v27 = *(type metadata accessor for AMSUIDMetricsPipelineProvider() + 20);
  v36 = a1;
  v28 = v9[6];
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v29 + 16))(&v12[v28], &v40[v27]);
  *&v12[v9[7]] = v43;

  v30 = v45;
  sub_1CA0F22C4(v45);
  sub_1CA0F2170(v41, v19, v55);
  sub_1CA0F34A0();
  v31 = v47;
  v32 = v49;
  (*(v47 + 16))(v44, v30, v49);
  v53 = &type metadata for AMSUIDMetricsEventLinter;
  v54 = sub_1CA0F34F4();
  v51 = v16;
  sub_1CA0F2ACC(v55, v50);
  v33 = v46;
  v37(v46, v36, v25);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v25);
  sub_1CA19B838();

  __swift_destroy_boxed_opaque_existential_2(v55);
  (*(v31 + 8))(v30, v32);
  return sub_1CA0F3548(v12);
}

unint64_t sub_1CA0F3410()
{
  result = qword_1EE03C268;
  if (!qword_1EE03C268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C268);
  }

  return result;
}

uint64_t type metadata accessor for AMSUIDMetricsPipelineProvider()
{
  result = qword_1EE03C850;
  if (!qword_1EE03C850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CA0F34A0()
{
  result = qword_1EE03C860;
  if (!qword_1EE03C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C860);
  }

  return result;
}

unint64_t sub_1CA0F34F4()
{
  result = qword_1EE03CDC0;
  if (!qword_1EE03CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03CDC0);
  }

  return result;
}

uint64_t sub_1CA0F3548(uint64_t a1)
{
  v2 = type metadata accessor for AMSUIDMetricsFieldsAggregatorProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA0F35CC()
{
  result = sub_1CA19B7D8();
  if (v1 <= 0x3F)
  {
    result = sub_1CA19ADF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *static AMSUIDTimeout.timeout(with:queue:block:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1CA19B298();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, a1);
  type metadata accessor for AMSUIDTimeout();
  swift_allocObject();
  v13 = a2;

  return sub_1CA0F37A8(v11, v13, a3, a4);
}

uint64_t type metadata accessor for AMSUIDTimeout()
{
  result = qword_1EE03BCA8;
  if (!qword_1EE03BCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1CA0F37A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 4) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v10 = [v9 UUIDString];

  v11 = sub_1CA19C118();
  v13 = v12;

  *(v4 + 5) = v11;
  *(v4 + 6) = v13;
  v14 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_startTime;
  v15 = sub_1CA19B348();
  __swift_storeEnumTagSinglePayload(&v4[v14], 1, 1, v15);
  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  *(v4 + 7) = a2;
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeout;
  v17 = sub_1CA19B298();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v4[v16], a1, v17);
  (*(v18 + 32))(&v4[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeRemaining], a1, v17);
  return v4;
}

uint64_t sub_1CA0F3910()
{
  v0 = sub_1CA19B298();
  v49 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1CA19B348();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v39 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433148);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1CA19B2D8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (*(result + 32))
    {
    }

    else
    {
      v44 = v7;
      v46 = v4;
      v47 = v3;
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v41 = v0;
      v45 = v13;
      v20 = sub_1CA19AFF8();
      v43 = __swift_project_value_buffer(v20, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v52 = type metadata accessor for AMSUIDTimeout();
      aBlock[0] = v19;

      v21 = AMSLogKey();
      if (v21)
      {
        v22 = v21;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(aBlock);
      sub_1CA19AF18();
      sub_1CA19AFA8();

      sub_1CA19B2B8();
      v53 = sub_1CA0F5570;
      v54 = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CA0F4068;
      v52 = &block_descriptor_34;
      _Block_copy(aBlock);
      sub_1CA19B378();
      swift_allocObject();

      v23 = sub_1CA19B358();

      v43 = v23;
      *(v19 + 32) = v23;

      sub_1CA19B338();
      v24 = v47;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v47);
      v25 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_startTime;
      swift_beginAccess();
      sub_1CA0F5578(v16, v19 + v25);
      swift_endAccess();
      v42 = *(v19 + 56);
      v26 = v48;
      sub_1CA19B338();
      *v2 = 100;
      v27 = v49;
      v28 = v41;
      (*(v49 + 104))(v2, *MEMORY[0x1E69E7F38], v41);
      MEMORY[0x1CCA989F0](v26, v2);
      v40 = *(v27 + 8);
      v40(v2, v28);
      v29 = v46;
      v39 = *(v46 + 8);
      v39(v26, v24);
      sub_1CA19B338();
      v30 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeRemaining;
      swift_beginAccess();
      (*(v27 + 16))(v2, v19 + v30, v28);
      v31 = v44;
      MEMORY[0x1CCA989F0](v26, v2);
      v40(v2, v28);
      v32 = v39;
      v39(v26, v24);
      sub_1CA0F55E8(&qword_1EE03B4B8, MEMORY[0x1E69E7FF8]);
      v33 = v50;
      v34 = sub_1CA19C098();
      v35 = (v34 & 1) == 0;
      if (v34)
      {
        v36 = v33;
      }

      else
      {
        v36 = v31;
      }

      if (!v35)
      {
        v33 = v31;
      }

      v32(v36, v24);
      v37 = v45;
      (*(v29 + 32))(v45, v33, v24);
      v38 = v42;
      sub_1CA19C578();

      return (v32)(v37, v24);
    }
  }

  return result;
}

uint64_t sub_1CA0F4008(uint64_t a1)
{
  *(a1 + 32) = 0;

  v2 = *(a1 + 16);

  v2(a1);
}

uint64_t sub_1CA0F4068(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA0F40C4()
{
  result = qword_1EE03C2A0;
  if (!qword_1EE03C2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC433C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C2A0);
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

uint64_t sub_1CA0F4190(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v26 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_3();
  v17 = v16 - v15;
  v18 = *(v2 + 56);
  v19 = swift_allocObject();
  swift_weakInit();
  v30 = a1;
  v31 = v19;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v28 = v20;
  v29 = a2;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  sub_1CA19B2F8();
  OUTLINED_FUNCTION_4_3();
  sub_1CA0F55E8(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_1();
  _Block_release(v21);

  (*(v7 + 8))(v11, v5);
  (*(v13 + 8))(v17, v26);
}

uint64_t sub_1CA0F43B0()
{
  v0 = sub_1CA19B298();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433148);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1CA19B348();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (!*(result + 32))
  {
  }

  v46 = *(result + 32);
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_startTime;
  swift_beginAccess();
  sub_1CA0F5500(v15 + v16, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    return sub_1CA0F54A0(v6, &qword_1EC433148);
  }

  (*(v8 + 32))(v13, v6, v7);

  sub_1CA19B368();
  *(v15 + 32) = 0;

  v17 = sub_1CA19B328();
  v18 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeRemaining;
  swift_beginAccess();
  v19 = *(v1 + 16);
  v45 = v18;
  v41 = v1 + 16;
  v39 = v19;
  v19(v3, v15 + v18, v0);
  MEMORY[0x1CCA98A10](v13, v3);
  v38 = v1;
  v20 = *(v1 + 8);
  v42 = v1 + 8;
  v43 = v0;
  v40 = v20;
  v20(v3, v0);
  v21 = sub_1CA19B328();
  v24 = *(v8 + 8);
  v22 = v8 + 8;
  v23 = v24;
  v24(v11, v7);
  v44 = v17 - v21;
  if (v17 < v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1CA19B338();
  v25 = sub_1CA19B328();
  v0 = v7;
  v37 = v22;
  v23(v11, v7);
  v11 = v13;
  v26 = sub_1CA19B328();
  if (v25 < v26)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = (v25 - v26) / 0xF4240;
  v28 = v44 / 0xF4240 >= v27;
  v29 = v44 / 0xF4240 - v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v7;
  v44 = v23;
  *v3 = v29;
  v30 = v38;
  v0 = v43;
  (*(v38 + 104))(v3, *MEMORY[0x1E69E7F38], v43);
  v31 = v45;
  swift_beginAccess();
  (*(v30 + 40))(v15 + v31, v3, v0);
  swift_endAccess();
  if (qword_1EE03B230 != -1)
  {
LABEL_20:
    swift_once();
  }

  v35 = v11;
  v32 = sub_1CA19AFF8();
  v38 = __swift_project_value_buffer(v32, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v48 = type metadata accessor for AMSUIDTimeout();
  v47[0] = v15;

  v33 = AMSLogKey();
  if (v33)
  {
    v34 = v33;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v47);
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_1CA19C8F8();
  MEMORY[0x1CCA99820](0xD000000000000025, 0x80000001CA1A9050);
  v39(v3, v15 + v45, v0);
  sub_1CA19C998();
  v40(v3, v0);
  MEMORY[0x1CCA99820](46, 0xE100000000000000);
  v48 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA0F54A0(v47, &qword_1EC433830);
  sub_1CA19AFA8();

  return (v44)(v35, v36);
}

Swift::Void __swiftcall AMSUIDTimeout.reset()()
{
  v1 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v21 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  AMSUIDTimeout.pause()();
  v14 = *(v0 + 56);
  v15 = swift_allocObject();
  swift_weakInit();
  v25 = sub_1CA0F5034;
  v26 = v15;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v23 = v16;
  v24 = &block_descriptor_8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  sub_1CA19B2F8();
  OUTLINED_FUNCTION_4_3();
  sub_1CA0F55E8(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_1();
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v21);
}

uint64_t sub_1CA0F4CA8()
{
  v0 = sub_1CA19B298();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(v1 + 16);
    v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeout;
    v13 = v6;
    v6(v3, result + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeout, v0);
    v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeRemaining;
    swift_beginAccess();
    (*(v1 + 40))(v5 + v7, v3, v0);
    swift_endAccess();
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v8 = sub_1CA19AFF8();
    v11[2] = __swift_project_value_buffer(v8, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v11[1] = *(*(sub_1CA19AF88() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v15 = type metadata accessor for AMSUIDTimeout();
    v14[0] = v5;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1CA19C8F8();
    MEMORY[0x1CCA99820](0xD000000000000027, 0x80000001CA1A9020);
    v13(v3, v5 + v12, v0);
    sub_1CA19C998();
    (*(v1 + 8))(v3, v0);
    MEMORY[0x1CCA99820](46, 0xE100000000000000);
    v15 = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA0F54A0(v14, &qword_1EC433830);
    sub_1CA19AFA8();
  }

  return result;
}

uint64_t static AMSUIDTimeout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1CA19CAF8();
  }
}

uint64_t AMSUIDTimeout.hash(into:)()
{

  sub_1CA19C198();
}

uint64_t AMSUIDTimeout.deinit()
{

  sub_1CA0F54A0(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_startTime, &qword_1EC433148);
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeout;
  v2 = sub_1CA19B298();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AMSUIDTimeout_timeRemaining, v2);
  return v0;
}

uint64_t AMSUIDTimeout.__deallocating_deinit()
{
  AMSUIDTimeout.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AMSUIDTimeout.hashValue.getter()
{
  sub_1CA19CBD8();
  AMSUIDTimeout.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t sub_1CA0F52BC()
{
  sub_1CA19CBD8();
  (*(**v0 + 336))(v2);
  return sub_1CA19CC18();
}

void sub_1CA0F5350()
{
  sub_1CA0F5448();
  if (v0 <= 0x3F)
  {
    sub_1CA19B298();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CA0F5448()
{
  if (!qword_1EE03B4B0)
  {
    sub_1CA19B348();
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B4B0);
    }
  }
}

uint64_t sub_1CA0F54A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CA0F5500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA0F5578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433148);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA0F55E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_1CA19C788();
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x1CCA99C20);
}

char *sub_1CA0F56F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for AMSUIDTimeout();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a3;
  v10[4] = a4;

  v11 = static AMSUIDTimeout.timeout(with:queue:block:)(a1, a2, sub_1CA0F5C98, v10);

  v12 = *(v5 + 24);
  [v12 lock];
  swift_beginAccess();

  sub_1CA12891C(&v14, v11);
  swift_endAccess();

  AMSUIDTimeout.start()();
  [v12 unlock];
  return v11;
}

uint64_t sub_1CA0F5824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
    v5 = *(a2 + 24);

    [v5 lock];
    swift_beginAccess();
    sub_1CA0F5D04(v4);
    swift_endAccess();

    [v5 unlock];
  }

  return a3(a1);
}

id sub_1CA0F58DC()
{
  v11 = *(v0 + 24);
  [v11 lock];
  OUTLINED_FUNCTION_5_3();
  v5 = *(v0 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_3_3();
    swift_unknownObjectRetain();
    v0 = sub_1CA19C7D8();
    type metadata accessor for AMSUIDTimeout();
    sub_1CA0F5C40();
    result = OUTLINED_FUNCTION_4_4();
    v7 = v13;
    v1 = v14;
    v2 = v15;
    v8 = v16;
    v4 = v17;
  }

  else
  {
    result = OUTLINED_FUNCTION_0_5();
    v8 = 0;
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = v8;
    v10 = v8;
    if (!v4)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_1_4();
    if (!v0)
    {
LABEL_15:
      OUTLINED_FUNCTION_2_2();
      return [v11 unlock];
    }

    while (1)
    {
      AMSUIDTimeout.pause()();

      v8 = v10;
      v4 = v3;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_1CA19C848())
      {
        type metadata accessor for AMSUIDTimeout();
        swift_dynamicCast();
        v0 = v12;
        v10 = v8;
        v3 = v4;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= ((v2 + 64) >> 6))
    {
      goto LABEL_15;
    }

    ++v9;
    if (*(v1 + 8 * v10))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_1CA0F5A4C()
{
  v11 = *(v0 + 24);
  [v11 lock];
  OUTLINED_FUNCTION_5_3();
  v5 = *(v0 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_3_3();
    swift_unknownObjectRetain();
    v0 = sub_1CA19C7D8();
    type metadata accessor for AMSUIDTimeout();
    sub_1CA0F5C40();
    result = OUTLINED_FUNCTION_4_4();
    v7 = v13;
    v1 = v14;
    v2 = v15;
    v8 = v16;
    v4 = v17;
  }

  else
  {
    result = OUTLINED_FUNCTION_0_5();
    v8 = 0;
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = v8;
    v10 = v8;
    if (!v4)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_1_4();
    if (!v0)
    {
LABEL_15:
      OUTLINED_FUNCTION_2_2();
      return [v11 unlock];
    }

    while (1)
    {
      AMSUIDTimeout.reset()();
      AMSUIDTimeout.start()();

      v8 = v10;
      v4 = v3;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_1CA19C848())
      {
        type metadata accessor for AMSUIDTimeout();
        swift_dynamicCast();
        v0 = v12;
        v10 = v8;
        v3 = v4;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= ((v2 + 64) >> 6))
    {
      goto LABEL_15;
    }

    ++v9;
    if (*(v1 + 8 * v10))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA0F5BC0()
{

  return v0;
}

uint64_t sub_1CA0F5BE8()
{
  sub_1CA0F5BC0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA0F5C40()
{
  result = qword_1EC433150;
  if (!qword_1EC433150)
  {
    type metadata accessor for AMSUIDTimeout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433150);
  }

  return result;
}

uint64_t sub_1CA0F5CA4()
{
  if (sub_1CA0F04EC(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1CA16EA2C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v0;
}

uint64_t sub_1CA0F5D04(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for AMSUIDTimeout();
    sub_1CA19CBD8();
    AMSUIDTimeout.hash(into:)();
    v7 = sub_1CA19CC18();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (static AMSUIDTimeout.== infix(_:_:)(*(*(v3 + 48) + 8 * v9), a1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA129640();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_1CA0F5FB4(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1CA19C858();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1CA0F5E74(v4, a1);

  return v6;
}

uint64_t sub_1CA0F5E74(uint64_t a1, uint64_t a2)
{

  v4 = sub_1CA19C818();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1CA128C70(v5, v4);
  v12 = v6;
  sub_1CA19CBD8();

  AMSUIDTimeout.hash(into:)();
  v7 = sub_1CA19CC18();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for AMSUIDTimeout();
    if (static AMSUIDTimeout.== infix(_:_:)(*(*(v6 + 48) + 8 * v9), a2))
    {

      v10 = *(*(v6 + 48) + 8 * v9);
      sub_1CA0F5FB4(v9);
      if (static AMSUIDTimeout.== infix(_:_:)(a2, v10))
      {
        *v2 = v12;
        return v10;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CA0F5FB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CA19C7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1CA19CBD8();

        AMSUIDTimeout.hash(into:)();
        v10 = sub_1CA19CC18();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_1_4()
{
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  sub_1CA0F11F8();
}

uint64_t OUTLINED_FUNCTION_3_3()
{
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_1CA19C3D8();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_beginAccess();
}

uint64_t Animation.__allocating_init(id:animationUrl:playCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Animation.init(id:animationUrl:playCount:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Animation.init(id:animationUrl:playCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_data) = xmmword_1CA1A0E60;
  v6 = (v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_id);
  *v6 = a1;
  v6[1] = a2;
  *(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_playCount) = a4;
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_animationUrl;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v8 + 32))(v4 + v7, a3);
  return v4;
}

char *Animation.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v25 = v4;
  v26 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v9 = sub_1CA19AFF8();
  __swift_project_value_buffer(v9, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  sub_1CA19AF18();
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1CA19C8F8();
  MEMORY[0x1CCA99820](0x6C61697265736564, 0xEE0020676E697A69);
  v10 = sub_1CA19B4D8();
  sub_1CA19C998();
  v29[3] = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA0F0440(v29);
  sub_1CA19AFC8();

  v11 = v27;
  sub_1CA161C70(0x6F6974616D696E61, 0xEC0000006C72556ELL, v28, v8);
  v12 = a1;
  if (v11)
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_0_4();
    (*(v13 + 8))(v30);
    OUTLINED_FUNCTION_2_3();
    (*(v14 + 8))(a1, v10);
  }

  else
  {
    v15 = sub_1CA161EA4();
    v17 = sub_1CA161FD8();
    v19 = v18;
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_0_4();
    (*(v20 + 8))(v30);
    OUTLINED_FUNCTION_2_3();
    (*(v21 + 8))(v12, v10);
    v22 = v24;
    (*(v25 + 32))(v24, v8, v26);
    type metadata accessor for Animation();
    v8 = swift_allocObject();
    Animation.init(id:animationUrl:playCount:)(v17, v19, v22, v15);
  }

  return v8;
}

uint64_t Animation.animationUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_animationUrl;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Animation.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_id);

  return v1;
}

void Animation.load(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_data);
  v6 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_data + 8);
  if (v6 >> 60 == 15)
  {

    sub_1CA0F6984(a1, a2);
  }

  else
  {
    v7 = *v5;
    sub_1CA0F763C(*v5, v6);
    sub_1CA0F7234(v7, v6, a1, a2);

    sub_1CA0F7694(v7, v6);
  }
}

void sub_1CA0F6984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedSession];
  v7 = sub_1CA19AD88();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v11[4] = sub_1CA0F7990;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CA10338C;
  v11[3] = &block_descriptor_11;
  v9 = _Block_copy(v11);

  v10 = [v6 dataTaskWithURL:v7 completionHandler:v9];
  _Block_release(v9);

  [v10 resume];
}

void sub_1CA0F6AE0(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1CA19AFF8();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - v19;
  if (a4)
  {
    v21 = a4;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v40 + 1) = type metadata accessor for Animation();
    *&v39 = a5;

    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v39);
    sub_1CA19AF18();
    swift_getErrorValue();
    v29 = v37;
    v30 = v38;
    *(&v40 + 1) = v38;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v39);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_2Tm, v29, v30);
    sub_1CA19AF38();
    sub_1CA0F0440(&v39);
    sub_1CA19AFB8();

    return;
  }

  v36 = v18;
  if (!a3)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v35 = a3;
  if ([v25 statusCode] >= 200 && objc_msgSend(v25, sel_statusCode) <= 299)
  {

LABEL_11:
    if (a2 >> 60 == 15)
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v14, qword_1EE040B90);
      (*(v36 + 16))(v17, v26, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      *(&v40 + 1) = type metadata accessor for Animation();
      *&v39 = a5;

      v27 = AMSLogKey();
      if (v27)
      {
        v28 = v27;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v39);
      sub_1CA19AF18();
      v39 = 0u;
      v40 = 0u;
      sub_1CA19AF38();
      sub_1CA0F0440(&v39);
      sub_1CA19AFB8();

      (*(v36 + 8))(v17, v14);
    }

    else
    {
      sub_1CA0F763C(a1, a2);
      sub_1CA0F7234(a1, a2, a6, a7);

      sub_1CA0F7694(a1, a2);
    }

    return;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v14, qword_1EE040B90);
  (*(v36 + 16))(v20, v32, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  *(&v40 + 1) = type metadata accessor for Animation();
  *&v39 = a5;

  v33 = AMSLogKey();
  if (v33)
  {
    v34 = v33;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v39);
  sub_1CA19AF18();
  v39 = 0u;
  v40 = 0u;
  sub_1CA19AF38();
  sub_1CA0F0440(&v39);
  sub_1CA19AFB8();

  (*(v36 + 8))(v20, v14);
}

uint64_t sub_1CA0F7234(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA0F78AC();
  v18 = sub_1CA19C598();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = a2;
  aBlock[4] = sub_1CA0F78F0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  sub_1CA0F763C(a1, a2);

  sub_1CA19B2F8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v17, v12, v20);
  _Block_release(v20);

  (*(v23 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v22);
}

uint64_t Animation.deinit()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_animationUrl;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  sub_1CA0F7694(*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_data), *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9Animation_data + 8));

  return v0;
}

uint64_t Animation.__deallocating_deinit()
{
  Animation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1CA0F759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = Animation.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for Animation()
{
  result = qword_1EE03B4E8;
  if (!qword_1EE03B4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA0F763C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CA0F7694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA0F76A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1CA0F76A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CA0F7708()
{
  result = sub_1CA19ADF8();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1CA0F77E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1CA0F782C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_1CA0F78AC()
{
  result = qword_1EE03C230;
  if (!qword_1EE03C230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C230);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA0F7938()
{
  result = qword_1EE03C350;
  if (!qword_1EE03C350)
  {
    sub_1CA19B2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C350);
  }

  return result;
}

uint64_t sub_1CA0F79C0()
{
  v0 = sub_1CA19C118();
  v2 = v1;
  if (v0 == sub_1CA19C118() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_6();
  }

  return v5 & 1;
}

uint64_t sub_1CA0F7A38(unsigned __int8 a1, char a2)
{
  v2 = 6778480;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6778480;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1734701162;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1667851624;
      break;
    case 3:
      v5 = 7496556;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1734701162;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1667851624;
      break;
    case 3:
      v2 = 7496556;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F7B3C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x526465646E756F72;
      v6 = 0xEB00000000746365;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x646E756F72;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1819044208;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v5 = 7364969;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x746365527674;
      break;
    case 6:
      v5 = 0x656E726F64616E75;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x526465646E756F72;
      v2 = 0xEB00000000746365;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x646E756F72;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1819044208;
      break;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 7364969;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x746365527674;
      break;
    case 6:
      v3 = 0x656E726F64616E75;
      v2 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CA19CAF8();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F7D08(char a1, char a2)
{
  if (*&aW_0[8 * a1] == *&aW_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1CA19CAF8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1CA0F7D70(unsigned __int8 a1, char a2)
{
  v2 = 0x7265746E6563;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265746E6563;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_8_1();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_6_2();
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1952867692;
      break;
    case 2:
      OUTLINED_FUNCTION_11_0();
      break;
    case 3:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F7E5C(unsigned __int8 a1, char a2)
{
  v2 = 1952867692;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1952867692;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x7265746E6563;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_8_1();
      break;
    case 3:
      v5 = 0x656966697473756ALL;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_6_2();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x7265746E6563;
      break;
    case 2:
      OUTLINED_FUNCTION_11_0();
      break;
    case 3:
      v2 = 0x656966697473756ALL;
      v6 = 0xE900000000000064;
      break;
    case 4:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F7F88(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7265746E6563;
  }

  else
  {
    v3 = 0x656E696C65736162;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x7265746E6563;
  }

  else
  {
    v5 = 0x656E696C65736162;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F8018(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x74754F68737570;
    }

    else
    {
      v3 = 0x647261646E617473;
    }

    if (v2 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001CA1A8740;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x74754F68737570;
    }

    else
    {
      v5 = 0x647261646E617473;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xD000000000000012;
    v6 = 0x80000001CA1A8740;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F8104(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x3630335F61657261;
  }

  if (v2)
  {
    v4 = 0xE900000000000034;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x3630335F61657261;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000034;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F8198(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E69616C70;
  }

  else
  {
    v3 = 0x6E776F646B72616DLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6E69616C70;
  }

  else
  {
    v5 = 0x6E776F646B72616DLL;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F8228(unsigned __int8 a1, char a2)
{
  v2 = 6449010;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64656D616ELL;
    }

    else
    {
      v4 = 0x63696D616E7964;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6449010;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64656D616ELL;
    }

    else
    {
      v2 = 0x63696D616E7964;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F830C(char a1, char a2)
{
  v3 = sub_1CA12BDE0(a1);
  v5 = v4;
  if (v3 == sub_1CA12BDE0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F8384(unsigned __int8 a1, char a2)
{
  v2 = 0x6B63616C62;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6B63616C62;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1702194274;
      break;
    case 2:
      v6 = 2003792482;
      goto LABEL_11;
    case 3:
      v5 = 0x7261656C63;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 2036429415;
      break;
    case 5:
      v6 = 1701147239;
LABEL_11:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x6F6769646E69;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x65676E61726FLL;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1802398064;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x656C70727570;
      break;
    case 10:
      v3 = 0xE300000000000000;
      v5 = 6579570;
      break;
    case 11:
      v5 = 0x6574696877;
      break;
    case 12:
      v3 = 0xE600000000000000;
      v5 = 0x776F6C6C6579;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1702194274;
      break;
    case 2:
      v8 = 2003792482;
      goto LABEL_25;
    case 3:
      v2 = 0x7261656C63;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 2036429415;
      break;
    case 5:
      v8 = 1701147239;
LABEL_25:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x6F6769646E69;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x65676E61726FLL;
      break;
    case 8:
      v7 = 0xE400000000000000;
      v2 = 1802398064;
      break;
    case 9:
      v7 = 0xE600000000000000;
      v2 = 0x656C70727570;
      break;
    case 10:
      v7 = 0xE300000000000000;
      v2 = 6579570;
      break;
    case 11:
      v2 = 0x6574696877;
      break;
    case 12:
      v7 = 0xE600000000000000;
      v2 = 0x776F6C6C6579;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_6();
  }

  return v10 & 1;
}

uint64_t sub_1CA0F85C8(unsigned __int8 a1, char a2)
{
  v2 = 1684828002;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684828002;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6B63616C62;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7976616568;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x746867696CLL;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x72616C75676572;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x646C6F62696D6573;
      break;
    case 7:
      v5 = 1852401780;
      break;
    case 8:
      v5 = 0x67694C6172746C75;
      v3 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6B63616C62;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7976616568;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x746867696CLL;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x72616C75676572;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x646C6F62696D6573;
      break;
    case 7:
      v2 = 1852401780;
      break;
    case 8:
      v2 = 0x67694C6172746C75;
      v6 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

uint64_t sub_1CA0F87C4(unsigned __int8 a1, char a2)
{
  v2 = 2036625250;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 2036625250;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x74756F6C6C6163;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_7_1() & 0xFFFFFFFFFFFFLL | 0x316E000000000000;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_7_1() & 0xFFFFFFFFFFFFLL | 0x326E000000000000;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x65746F6E746F6F66;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x656E696C64616568;
      break;
    case 6:
      v5 = 0x6C64616568627573;
      v3 = 0xEB00000000656E69;
      break;
    case 7:
      v5 = OUTLINED_FUNCTION_2_4() & 0xFFFF0000FFFFFFFFLL | 0x306500000000;
      break;
    case 8:
      v5 = OUTLINED_FUNCTION_2_4() & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
      break;
    case 9:
      v5 = OUTLINED_FUNCTION_2_4() & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
      break;
    case 10:
      v5 = OUTLINED_FUNCTION_2_4() & 0xFFFF0000FFFFFFFFLL | 0x336500000000;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x74756F6C6C6163;
      break;
    case 2:
      OUTLINED_FUNCTION_9_1();
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x316E000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_9_1();
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x326E000000000000;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x65746F6E746F6F66;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x656E696C64616568;
      break;
    case 6:
      v2 = 0x6C64616568627573;
      v6 = 0xEB00000000656E69;
      break;
    case 7:
      OUTLINED_FUNCTION_3_4();
      v2 = v10 & 0xFFFF0000FFFFFFFFLL | 0x306500000000;
      break;
    case 8:
      OUTLINED_FUNCTION_3_4();
      v2 = v12 & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
      break;
    case 9:
      OUTLINED_FUNCTION_3_4();
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
      break;
    case 10:
      OUTLINED_FUNCTION_3_4();
      v2 = v11 & 0xFFFF0000FFFFFFFFLL | 0x336500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_6();
  }

  return v14 & 1;
}

uint64_t sub_1CA0F89D0(unsigned __int8 a1, char a2)
{
  v2 = 0x7373696D736964;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7373696D736964;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7368560;
      break;
    case 2:
      v5 = 0x6F6F526F54706F70;
      v3 = 0xE900000000000074;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v3 = 0x80000001CA1A87A0;
      break;
    case 4:
      v5 = 0x746E6573657270;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1752397168;
      break;
    case 6:
      v5 = 0x6563616C706572;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7368560;
      break;
    case 2:
      v2 = 0x6F6F526F54706F70;
      v6 = 0xE900000000000074;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v6 = 0x80000001CA1A87A0;
      break;
    case 4:
      v2 = 0x746E6573657270;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1752397168;
      break;
    case 6:
      v2 = 0x6563616C706572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_6();
  }

  return v8 & 1;
}

id AnimationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_10_1();

  return [v2 v3];
}

id AnimationView.init(frame:)()
{
  OUTLINED_FUNCTION_12_0();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animation) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_10_1();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

uint64_t AnimationView.animation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animation;
  OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id sub_1CA0F8D68()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result removeFromSuperlayer];
  }

  return result;
}

void sub_1CA0F8DBC()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 systemBlueColor];
    sub_1CA0F8E94(v5);

    v6 = [v0 layer];
    v7 = sub_1CA19C118();
    sub_1CA0F98BC(v6, 0, v7, v8, v4);
  }
}

uint64_t sub_1CA0F8E94(void *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  result = OUTLINED_FUNCTION_4_5();
  v5 = *(v1 + v3);
  if (v5)
  {
    result = sub_1CA0F9844(v5);
    if (result)
    {
      v6 = sub_1CA0F942C(result);
      v7 = v6[2];
      if (v7)
      {
        v8 = (v6 + 4);
        do
        {
          sub_1CA0F1200(v8, v11);
          sub_1CA0F99E8();
          if (swift_dynamicCast())
          {
            v9 = [a1 CGColor];
            [v10 setFillColor_];
          }

          v8 += 32;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

void *AnimationView.animationPlayer.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AnimationView.animationPlayer.setter(void *a1)
{
  sub_1CA0F8D68();
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1CA0F8DBC();
}

void (*AnimationView.animationPlayer.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_4_5();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1CA0F90B8;
}

void sub_1CA0F90B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    AnimationView.animationPlayer.setter(v3);
  }

  else
  {
    AnimationView.animationPlayer.setter(*(*a1 + 24));
  }

  free(v2);
}

BOOL AnimationView.didApplyAnimation.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animation;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1) != 0;
}

void sub_1CA0F9160()
{
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animation) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA0F9204(SEL *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_4_5();
  result = *(v1 + v3);
  if (result)
  {
    return [result *a1];
  }

  return result;
}

id AnimationView.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_1_5();
  result = *(v0 + v1);
  if (result)
  {
    return [result isPlaying];
  }

  return result;
}

id AnimationView.apply(animation:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animation;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_4_5();
  v5 = *(v1 + v4);
  if (!v5)
  {
  }

  return [v5 play];
}

Swift::Void __swiftcall AnimationView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic13AnimationView_animationPlayer;
  OUTLINED_FUNCTION_1_5();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 layer];
    v5 = sub_1CA19C118();
    sub_1CA0F9940(v4, v5, v6, 0, v3);
  }
}

void *sub_1CA0F942C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1CA16B604(*(a1 + 16), 0);
  v4 = sub_1CA0F96EC(&v6, v3 + 2, v2, a1);
  sub_1CA0F11F8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

Swift::Void __swiftcall AnimationView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!isa || v4 != [(objc_class *)isa userInterfaceStyle])
  {
    v5 = [objc_opt_self() systemBlueColor];
    sub_1CA0F8E94(v5);
  }
}

id AnimationView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_1CA0F96EC(_OWORD *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1CA0F1200(*(a4 + 56) + ((v13 << 11) | (32 * v16)), v17);
      sub_1CA0F11E8(v17, v18);
      result = sub_1CA0F11E8(v18, v11);
      v11 += 2;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA0F9844(void *a1)
{
  v2 = [a1 publishedObjects];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA19C018();

  return v3;
}

void sub_1CA0F98BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1CA19C0E8();

  [a5 addToLayer:a1 onTop:a2 & 1 gravity:v8];
}

void sub_1CA0F9940(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_1CA19C0E8();

  [a5 moveAndResizeWithinParentLayer:a1 usingGravity:v8 animate:a4 & 1];
}

unint64_t sub_1CA0F99E8()
{
  result = qword_1EC433168;
  if (!qword_1EC433168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC433168);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_1CA19CAF8();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_beginAccess();
}

id Artwork.Style.iconCornerRadius(for:)(id result, double a2, double a3)
{
  switch(result)
  {
    case 1:
      v5 = objc_opt_self();

      result = [v5 scaledCornerRadiusForSize_];
      break;
    default:
      return result;
  }

  return result;
}

double Artwork.Style.iconHeight(fromWidth:)(char a1, double result)
{
  if (((1 << a1) & 0x57) == 0)
  {
    v2 = result * 3.0;
    if (a1 == 3)
    {
      return v2 * 0.25;
    }

    else
    {
      return v2 / 5.0;
    }
  }

  return result;
}

double Artwork.Style.iconWidth(fromHeight:)(char a1, double result)
{
  if (((1 << a1) & 0x57) == 0)
  {
    if (a1 == 3)
    {
      v2 = 4.0;
    }

    else
    {
      v2 = 5.0;
    }

    return result * v2 / 3.0;
  }

  return result;
}

AppleMediaServicesUIDynamic::Artwork::Style_optional __swiftcall Artwork.Style.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t Artwork.Style.rawValue.getter(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x526465646E756F72;
      break;
    case 2:
      result = 0x646E756F72;
      break;
    case 3:
      result = 1819044208;
      break;
    case 4:
      result = 7364969;
      break;
    case 5:
      result = 0x746365527674;
      break;
    case 6:
      result = 0x656E726F64616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA0F9E00()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0F9E94()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0F9F90()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0F9FD0()
{
  OUTLINED_FUNCTION_39();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_40();
      break;
    case 3:
      OUTLINED_FUNCTION_27();
      break;
    default:
      break;
  }

  sub_1CA19C198();
}

uint64_t sub_1CA0FA050(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_39();
      break;
    case 2:
      OUTLINED_FUNCTION_40();
      break;
    case 4:
      OUTLINED_FUNCTION_27();
      break;
    default:
      break;
  }

  sub_1CA19C198();
}

uint64_t sub_1CA0FA0EC()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0FA17C()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0FA1E8()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0FA250()
{
  sub_1CA19C198();
}

uint64_t sub_1CA0FA2D0(uint64_t a1, char a2)
{
  sub_1CA12BDE0(a2);
  sub_1CA19C198();
}

uint64_t sub_1CA0FA324()
{
  OUTLINED_FUNCTION_41();
  sub_1CA19C198();
}

uint64_t sub_1CA0FA450(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_41();
      break;
    default:
      break;
  }

  sub_1CA19C198();
}

uint64_t sub_1CA0FA554(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_31();
      break;
    case 7:
    case 8:
    case 9:
    case 10:
      OUTLINED_FUNCTION_17();
      break;
    default:
      break;
  }

  sub_1CA19C198();
}

uint64_t sub_1CA0FA66C()
{
  sub_1CA19C198();
}

AppleMediaServicesUIDynamic::Artwork::Style_optional sub_1CA0FA764@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::Artwork::Style_optional *a2@<X8>)
{
  result.value = Artwork.Style.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA0FA794@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.Style.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppleMediaServicesUIDynamic::Artwork::Format_optional __swiftcall Artwork.Format.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t Artwork.Format.rawValue.getter(char a1)
{
  result = 6778480;
  switch(a1)
  {
    case 1:
      result = 1734701162;
      break;
    case 2:
      result = 1667851624;
      break;
    case 3:
      result = 7496556;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::Artwork::Format_optional sub_1CA0FA8AC@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::Artwork::Format_optional *a2@<X8>)
{
  result.value = Artwork.Format.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA0FA8DC@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.Format.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Artwork.Crop.preferredContentMode.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 25186 && a2 == 0xE200000000000000)
  {
    return 1;
  }

  if (OUTLINED_FUNCTION_19())
  {
    return 1;
  }

  if (a1 == 24934 && a2 == 0xE200000000000000)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_19();
  result = 0;
  v9 = a1 == 24948 && a2 == 0xE200000000000000;
  if ((v7 & 1) == 0 && !v9)
  {
    if (OUTLINED_FUNCTION_19())
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

AppleMediaServicesUIDynamic::Artwork::Variant __swiftcall Artwork.Variant.init(format:quality:supportsWideGamut:)(AppleMediaServicesUIDynamic::Artwork::Format format, Swift::Int quality, Swift::Bool supportsWideGamut)
{
  v3 = supportsWideGamut;
  result.quality = quality;
  result.supportsWideGamut = v3;
  result.format = format;
  return result;
}

void Artwork.Variant.init(deserializing:using:)()
{
  OUTLINED_FUNCTION_25();
  v17[0] = v0;
  v2 = v1;
  v3 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v17 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  sub_1CA19B4E8();
  sub_1CA0FAE80();
  sub_1CA19B418();
  v15 = *(v5 + 8);
  v15(v14, v3);
  sub_1CA19B4E8();
  sub_1CA19B448();
  v15(v12, v3);
  sub_1CA19B4E8();
  sub_1CA19B468();
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v16 + 8))(v17[0]);
  v15(v2, v3);
  v15(v9, v3);
  OUTLINED_FUNCTION_22();
}

unint64_t sub_1CA0FAE80()
{
  result = qword_1EE03C480;
  if (!qword_1EE03C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C480);
  }

  return result;
}

uint64_t static Artwork.Variant.__derived_struct_equals(_:_:)(unsigned __int8 a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  v7 = 6778480;
  v8 = 0xE300000000000000;
  v12 = a1;
  v13 = 6778480;
  switch(v12)
  {
    case 1:
      v8 = 0xE400000000000000;
      v13 = 1734701162;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v13 = 1667851624;
      break;
    case 3:
      v13 = 7496556;
      break;
    default:
      break;
  }

  v14 = 0xE300000000000000;
  switch(a4)
  {
    case 1:
      v14 = 0xE400000000000000;
      v7 = 1734701162;
      break;
    case 2:
      v14 = 0xE400000000000000;
      v7 = 1667851624;
      break;
    case 3:
      v7 = 7496556;
      break;
    default:
      break;
  }

  if (v13 == v7 && v8 == v14)
  {

    if (a2 != a5)
    {
      v17 = 0;
      return v17 & 1;
    }

    goto LABEL_17;
  }

  v16 = sub_1CA19CAF8();

  v17 = 0;
  if ((v16 & 1) != 0 && a2 == a5)
  {
LABEL_17:
    v17 = a3 ^ a6 ^ 1;
  }

  return v17 & 1;
}

uint64_t Artwork.Variant.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA0F9E00();
  MEMORY[0x1CCA9A240](a3);
  return sub_1CA19CBF8();
}

uint64_t Artwork.Variant.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1CA19CBD8();
  sub_1CA0F9E00();
  MEMORY[0x1CCA9A240](a2);
  sub_1CA19CBF8();
  return sub_1CA19CC18();
}

void sub_1CA0FB104(uint64_t a1@<X8>)
{
  Artwork.Variant.init(deserializing:using:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

uint64_t sub_1CA0FB17C()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1CA19CBD8();
  Artwork.Variant.hash(into:)(v4, v2, v1);
  return sub_1CA19CC18();
}

AppleMediaServicesUIDynamic::Artwork::URLTemplate::Key_optional __swiftcall Artwork.URLTemplate.Key.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

AppleMediaServicesUIDynamic::Artwork::URLTemplate::Key_optional sub_1CA0FB260@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::Artwork::URLTemplate::Key_optional *a2@<X8>)
{
  result.value = Artwork.URLTemplate.Key.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA0FB290@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.URLTemplate.Key.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t Artwork.URLTemplate.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19B4A8();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v9, 255, v10);
    v11 = swift_allocError();
    v13 = OUTLINED_FUNCTION_35(v11, v12);
    v14 = MEMORY[0x1E69E7CC0];
    *v15 = &type metadata for Artwork.URLTemplate;
    v15[1] = v14;
    (*(*(v6 - 8) + 104))(v13, *MEMORY[0x1E69AB698], v6);
    swift_willThrow();
  }

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v8 + 8))(a1);
  return v6;
}

uint64_t Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  OUTLINED_FUNCTION_18();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v8 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1CA19ADD8();
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        sub_1CA0FB77C();

        OUTLINED_FUNCTION_32();
        sub_1CA19C738();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = v2;
  v4 = v1;
  v5 = withSubstitutions._rawValue + 64;
  OUTLINED_FUNCTION_18();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v13 = 0;
  if (v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v11 = v4;
      v12 = v3;
      goto LABEL_11;
    }

    v8 = *&v5[8 * v14];
    ++v13;
    if (v8)
    {
      v13 = v14;
      do
      {
LABEL_7:
        v8 &= v8 - 1;
        sub_1CA0FB77C();

        OUTLINED_FUNCTION_32();
        v4 = sub_1CA19C738();
        v16 = v15;

        v3 = v16;
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
LABEL_11:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_1CA0FB77C()
{
  result = qword_1EE03C2B0;
  if (!qword_1EE03C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C2B0);
  }

  return result;
}

uint64_t sub_1CA0FB7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Artwork.URLTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1CA0FB814@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 Artwork.__allocating_init(template:size:backgroundColor:style:crop:variants:cachePath:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a9;
  *(v22 + 40) = a10;
  *(v22 + 48) = a3;
  *(v22 + 64) = a5;
  *(v22 + 72) = a6;
  *(v22 + 56) = a4;
  *(v22 + 80) = a7;
  *(v22 + 88) = a8;
  result = a11;
  *(v22 + 96) = a11;
  *(v22 + 112) = a12;
  return result;
}

uint64_t Artwork.init(template:size:backgroundColor:style:crop:variants:cachePath:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __int128 a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a9;
  *(v12 + 40) = a10;
  *(v12 + 48) = a3;
  *(v12 + 64) = a5;
  *(v12 + 72) = a6;
  *(v12 + 56) = a4;
  *(v12 + 80) = a7;
  *(v12 + 88) = a8;
  *(v12 + 96) = a11;
  *(v12 + 112) = a12;
  return v12;
}

uint64_t Artwork.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for ColorFactory();
  v7 = swift_allocObject();
  v8 = sub_1CA161FD8();
  if (v3)
  {

    v52 = 0;
    v10 = 0;
  }

  else
  {
    v10 = v9;
    v52 = v8;
  }

  MEMORY[0x1EEE9AC00](v8);
  v53 = a2;
  sub_1CA0FBF04(0x756F72676B636162, 0xEF726F6C6F43646ELL, v4, sub_1CA0FDD54, &v42, v11, v12, v13, v42, v43, v7, a2, v45, v46, v47, v48, v49, v50, v51, v52);
  v15 = v14;
  sub_1CA0FCCD0();
  v17 = v16;
  v51 = v18;
  v19 = sub_1CA161FD8();
  v21 = v20;
  sub_1CA16211C();
  v23 = v22;
  sub_1CA0FCB70(0x656C797473, 0xE500000000000000, v4, sub_1CA0FED90, &type metadata for Artwork.Style, v24, v25, v26, v45, v46, SWORD2(v46), SBYTE6(v46), SHIBYTE(v46));
  HIDWORD(v50) = v27;
  sub_1CA0FCCD0();
  v49 = v29;
  v46 = v30;
  v47 = &v45;
  MEMORY[0x1EEE9AC00](v30);
  sub_1CA0FBF04(0x73746E6169726176, 0xE800000000000000, v4, sub_1CA0FE05C, &v42, v31, v32, v33, v42, v43, v53, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v48 = v34;
  sub_1CA16211C();
  v36 = v35;
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v37 + 8))(a1);

  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_38();
  v38 = swift_allocObject();
  v39 = v49;
  *(v38 + 16) = v46;
  *(v38 + 24) = v39;
  *(v38 + 32) = v36;
  *(v38 + 40) = v23;
  *(v38 + 48) = v15;
  *(v38 + 64) = v51;
  *(v38 + 72) = v17;
  *(v38 + 56) = BYTE4(v50);
  *(v38 + 80) = v48;
  *(v38 + 88) = v19;
  v40 = v52;
  *(v38 + 96) = v21;
  *(v38 + 104) = v40;
  *(v38 + 112) = v10;
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v41 + 8))(v53);
  return v38;
}

void sub_1CA0FBF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v22;
  a20 = v23;
  v37 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v37(&a10, v21), !a10))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v30, 255, v31);
    v32 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_7_2(v32, v33);
    *(v34 + 16) = v26;
    OUTLINED_FUNCTION_5_5();
    (*(v35 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    v36 = OUTLINED_FUNCTION_14();
    v20(v36);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_14();
    v29(v28);
  }

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_22();
}

void sub_1CA0FC07C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if (sub_1CA19B498() & 1) != 0 || (v8 = OUTLINED_FUNCTION_33(), v9(v8), (v20))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v10, 255, v11);
    v12 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35(v12, v13);
    *v14 = v0;
    v14[1] = v4;
    v14[2] = v2;
    OUTLINED_FUNCTION_5_5();
    (*(v15 + 104))();
    swift_willThrow();
    v16 = *(v6 + 8);

    v17 = OUTLINED_FUNCTION_37();
    v16(v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_37();
    v19(v18);
  }

  OUTLINED_FUNCTION_22();
}

void sub_1CA0FC214()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v8 = OUTLINED_FUNCTION_33(), v9(v8), !v20))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v12, 255, v13);
    v14 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35(v14, v15);
    *v16 = v0;
    v16[1] = v4;
    v16[2] = v2;
    OUTLINED_FUNCTION_5_5();
    (*(v17 + 104))();
    swift_willThrow();
    v18 = *(v6 + 8);

    v19 = OUTLINED_FUNCTION_37();
    v18(v19);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_37();
    v11(v10);
  }

  OUTLINED_FUNCTION_22();
}

void sub_1CA0FC3DC()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FEB50(), OUTLINED_FUNCTION_30(), v10 == 11))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FC534()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FEAFC(), OUTLINED_FUNCTION_30(), v10 == 9))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FC68C()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FEA54(), OUTLINED_FUNCTION_30(), v10 == 5))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15(v15, v16, v17);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v14(), OUTLINED_FUNCTION_20(), a13 == 2))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v19, 255, v20);
    v21 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_7_2(v21, v22);
    *(v23 + 16) = v28;
    OUTLINED_FUNCTION_5_5();
    (*(v24 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    v25 = OUTLINED_FUNCTION_14();
    v13(v25);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_14();
    v27(v26);
  }

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_22();
}

void sub_1CA0FC9B0()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FE958(), OUTLINED_FUNCTION_30(), v10 == 4))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FCB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15(v15, v16, v17);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v14(), OUTLINED_FUNCTION_20(), a13 == 7))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v19, 255, v20);
    v21 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_7_2(v21, v22);
    *(v23 + 16) = v28;
    OUTLINED_FUNCTION_5_5();
    (*(v24 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    v25 = OUTLINED_FUNCTION_14();
    v13(v25);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_14();
    v27(v26);
  }

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_22();
}

void sub_1CA0FCCD0()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v18 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v2(), sub_1CA19B438(), !v17))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v11, 255, v12);
    OUTLINED_FUNCTION_8_2();
    *v13 = v0;
    v13[1] = v5;
    v13[2] = v18;
    OUTLINED_FUNCTION_5_5();
    (*(v14 + 104))();
    swift_willThrow();
    v15 = *(v7 + 8);

    v16 = OUTLINED_FUNCTION_14();
    v15(v16);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_14();
    v10(v9);
  }

  OUTLINED_FUNCTION_22();
}

void sub_1CA0FCE6C()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FEBF8(), OUTLINED_FUNCTION_30(), v10 == 13))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FCFC4()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (sub_1CA0FEBA4(), OUTLINED_FUNCTION_30(), v10 == 17))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v2, 255, v3);
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_3(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_29();
    v7 = OUTLINED_FUNCTION_14();
    v0(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_12_1();
    v9(v8);
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_45();
}

void sub_1CA0FD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15(v15, v16, v17);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_6();
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) != 0 || (v14(), OUTLINED_FUNCTION_20(), a13 == 3))
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_7();
    sub_1CA0FE304(v19, 255, v20);
    v21 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_7_2(v21, v22);
    *(v23 + 16) = v28;
    OUTLINED_FUNCTION_5_5();
    (*(v24 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    v25 = OUTLINED_FUNCTION_14();
    v13(v25);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_14();
    v27(v26);
  }

  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_22();
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t Artwork.removingStyle.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v10 = v0[13];
  v9 = v0[14];
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_38();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  *(v11 + 32) = v3;
  *(v11 + 40) = v4;
  *(v11 + 48) = v5;
  *(v11 + 64) = v7;
  *(v11 + 72) = v6;
  *(v11 + 56) = 0;
  *(v11 + 80) = v8;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = v10;
  *(v11 + 112) = v9;

  v12 = v5;

  return v11;
}

AppleMediaServicesUIDynamic::Artwork::Variant __swiftcall Artwork.bestVariant(prefersLayeredImage:)(Swift::Bool prefersLayeredImage)
{
  v3 = *(v1 + 80);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 + 24;
    v8 = *v5;
    v5 += 24;
    if (((v8 != 3) ^ prefersLayeredImage))
    {
      v9 = *(v7 - 8);
      v10 = *(v7 - 2);
      goto LABEL_8;
    }
  }

  if (v4)
  {
    v8 = *(v3 + 32);
    v10 = *(v3 + 40);
    v9 = *(v3 + 48);
  }

  else
  {
    v9 = 0;
    v8 = 2;
    v10 = 100;
  }

LABEL_8:
  result.quality = v10;
  result.format = v8;
  *result.gap1 = *(&v8 + 1);
  *&result.gap1[4] = *(&v8 + 5);
  result.gap1[6] = HIBYTE(v8);
  result.supportsWideGamut = v9;
  return result;
}

uint64_t Artwork.isBundleImage.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24();
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_1CA0FECA0(v1, &qword_1EC433170);
    return 0;
  }

  v4 = OUTLINED_FUNCTION_26();
  v5(v4);
  v6 = sub_1CA19ADC8();
  if (!v7)
  {
    v12 = OUTLINED_FUNCTION_10_2();
    v13(v12);
    return 0;
  }

  if (v6 == 0x656372756F736572 && v7 == 0xE800000000000000)
  {

    v15 = OUTLINED_FUNCTION_10_2();
    v16(v15);
  }

  else
  {
    v9 = sub_1CA19CAF8();

    v10 = OUTLINED_FUNCTION_10_2();
    v11(v10);
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Artwork.isSystemImage.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24();
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_1CA0FECA0(v1, &qword_1EC433170);
    return 0;
  }

  v4 = OUTLINED_FUNCTION_26();
  v5(v4);
  v6 = sub_1CA19ADC8();
  if (!v7)
  {
    v12 = OUTLINED_FUNCTION_10_2();
    v13(v12);
    return 0;
  }

  if (v6 == 0x6D696D6574737973 && v7 == 0xEB00000000656761)
  {

    v15 = OUTLINED_FUNCTION_10_2();
    v16(v15);
  }

  else
  {
    v9 = sub_1CA19CAF8();

    v10 = OUTLINED_FUNCTION_10_2();
    v11(v10);
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Artwork.isLocalImage.getter()
{
  if (Artwork.isBundleImage.getter())
  {
    return 1;
  }

  return Artwork.isSystemImage.getter();
}

uint64_t Artwork.hash(into:)()
{
  sub_1CA19C198();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCA9A260](*&v1);
  v2 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1CCA9A260](*&v2);

  return sub_1CA19C198();
}

uint64_t static Artwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1CA19CAF8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v7 = *(a2 + 56);
  v8 = Artwork.Style.rawValue.getter(*(a1 + 56));
  v10 = v9;
  if (v8 == Artwork.Style.rawValue.getter(v7) && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1CA19CAF8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v14 && (sub_1CA19CAF8() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 80);
  v16 = *(a2 + 80);

  return sub_1CA0FD9FC(v15, v16);
}

uint64_t sub_1CA0FD9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v5 = *(i - 1);
    v6 = *i;
    v7 = *(v3 - 1);
    v8 = 0xE300000000000000;
    v9 = *v3;
    v10 = 6778480;
    switch(*(i - 16))
    {
      case 1u:
        v8 = 0xE400000000000000;
        v10 = 1734701162;
        break;
      case 2u:
        v8 = 0xE400000000000000;
        v10 = 1667851624;
        break;
      case 3u:
        v10 = 7496556;
        break;
      default:
        break;
    }

    v11 = 0xE300000000000000;
    v12 = 6778480;
    switch(*(v3 - 16))
    {
      case 1u:
        v11 = 0xE400000000000000;
        v12 = 1734701162;
        break;
      case 2u:
        v11 = 0xE400000000000000;
        v12 = 1667851624;
        break;
      case 3u:
        v12 = 7496556;
        break;
      default:
        break;
    }

    if (v10 == v12 && v8 == v11)
    {

      result = 0;
    }

    else
    {
      v14 = sub_1CA19CAF8();

      result = 0;
      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    if (v5 != v7 || ((v6 ^ v9) & 1) != 0)
    {
      break;
    }

    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t Artwork.deinit()
{

  return v0;
}

uint64_t Artwork.__deallocating_deinit()
{
  Artwork.deinit();
  OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Artwork.hashValue.getter()
{
  sub_1CA19CBD8();
  Artwork.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t sub_1CA0FDC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Artwork.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA0FDCD0()
{
  sub_1CA19CBD8();
  (*(**v0 + 216))(v2);
  return sub_1CA19CC18();
}

uint64_t sub_1CA0FDD5C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4331C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-v4];
  sub_1CA19B478();
  v6 = sub_1CA19BF98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (EnumTagSinglePayload == 1)
  {
    sub_1CA0FECA0(v5, &qword_1EC4331C0);
    return 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *&v10[-16] = a2;
    v8 = sub_1CA19BF88();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v8;
}

uint64_t sub_1CA0FDEBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA19B5C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v6 + 16))(v8, a2, v5);
  Artwork.Variant.init(deserializing:using:)();
  if (!v2)
  {
    return result;
  }

  return 0;
}

uint64_t sub_1CA0FE05C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA0FDD5C(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1CA0FE0B0()
{
  result = qword_1EC433178;
  if (!qword_1EC433178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433178);
  }

  return result;
}

unint64_t sub_1CA0FE108()
{
  result = qword_1EC433180;
  if (!qword_1EC433180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433180);
  }

  return result;
}

unint64_t sub_1CA0FE160()
{
  result = qword_1EC433188;
  if (!qword_1EC433188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433188);
  }

  return result;
}

unint64_t sub_1CA0FE1B8()
{
  result = qword_1EC433190;
  if (!qword_1EC433190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433190);
  }

  return result;
}

unint64_t sub_1CA0FE210()
{
  result = qword_1EE03C4A8[0];
  if (!qword_1EE03C4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03C4A8);
  }

  return result;
}

unint64_t sub_1CA0FE268()
{
  result = qword_1EE03C4A0;
  if (!qword_1EE03C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C4A0);
  }

  return result;
}

uint64_t sub_1CA0FE304(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Artwork.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Artwork.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Artwork.Format(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Artwork.Format(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Variant(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for Artwork.Variant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}