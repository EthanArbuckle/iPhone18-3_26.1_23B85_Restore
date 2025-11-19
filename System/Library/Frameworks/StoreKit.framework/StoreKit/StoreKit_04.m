uint64_t sub_1B247CD00()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B247CE08()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v3, v2);
  sub_1B256D5CC();
  v4 = OUTLINED_FUNCTION_16_9();
  v1(v4);
  v5 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_11_9(v5))
  {
    v6 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v6);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_7_2();

  return v12();
}

uint64_t sub_1B247CEEC()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static Product.PromotionInfo.updateAll<A>(_:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[21] = v1;
  v0[22] = v2;
  v0[20] = v3;
  v4 = type metadata accessor for SKLogger();
  v0[23] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B247D004()
{
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = v1[25];
  v1[26] = __swift_project_value_buffer(v1[23], qword_1ED69A108);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v3, v2);
  v4 = sub_1B256D5CC();
  v1[27] = sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 8);
  v1[28] = v6;
  v1[29] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2);
  v7 = sub_1B256E09C();
  if (os_log_type_enabled(v4, v7))
  {
    v8 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v8);
    _os_log_impl(&dword_1B23EF000, v4, v7, "Updating all promotions", v0, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  v10 = v1[21];
  v9 = v1[22];

  v11 = MEMORY[0x1E69E6158];
  v1[19] = OUTLINED_FUNCTION_31_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E10);
  sub_1B256DBDC();
  v13 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B257CB00;
  *(inited + 32) = sub_1B256D9BC();
  *(inited + 40) = v15;
  v17 = sub_1B247A0E4(sub_1B247D598, 0, v10, v11, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v16);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
  *(inited + 48) = v17;
  *(inited + 80) = sub_1B256D9BC();
  *(inited + 88) = v18;
  *(inited + 120) = v12;
  *(inited + 96) = v13;
  v1[30] = OUTLINED_FUNCTION_31_3();
  v19 = swift_task_alloc();
  v1[31] = v19;
  *v19 = v1;
  v20 = OUTLINED_FUNCTION_9_11(v19);

  return sub_1B247AF5C(v20);
}

uint64_t sub_1B247D2D0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B247D3D8()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v3, v2);
  sub_1B256D5CC();
  v4 = OUTLINED_FUNCTION_16_9();
  v1(v4);
  v5 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_11_9(v5))
  {
    v6 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v6);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_7_2();

  return v12();
}

uint64_t sub_1B247D4B0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B247D520(uint64_t *a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *a1;
  sub_1B244A2E8();
  *a1 = v2;
}

uint64_t sub_1B247D598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

BOOL static Product.PromotionInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B256EB5C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_1B247D620()
{
  result = qword_1EB7D0E18;
  if (!qword_1EB7D0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0E18);
  }

  return result;
}

uint64_t sub_1B247D674(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B247D6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s13PromotionInfoV10VisibilityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B247D83C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  return a2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_7_12()
{

  JUMPOUT(0x1B274BFF0);
}

void OUTLINED_FUNCTION_10_7()
{

  JUMPOUT(0x1B274BFF0);
}

BOOL OUTLINED_FUNCTION_11_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{
}

void OUTLINED_FUNCTION_27_2(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_29_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_30_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1B2519814(0, 0xE000000000000000, &a10);
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_1B256D8AC();
}

void sub_1B247DAA8()
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_6(v12, v22);
  v13 = sub_1B256DDAC();
  v14 = OUTLINED_FUNCTION_59_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B248D228(v0, &qword_1EB7D1910);
  }

  else
  {
    EnumTagSinglePayload = sub_1B256DD9C();
    OUTLINED_FUNCTION_57_1();
    v17 = OUTLINED_FUNCTION_156();
    v18(v17);
  }

  OUTLINED_FUNCTION_134();

  if (v1)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v9)
    {
LABEL_6:
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_43_0();
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v3;

      if (EnumTagSinglePayload | v0)
      {
        OUTLINED_FUNCTION_27_3();
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_40_2(v20);
      OUTLINED_FUNCTION_97_0();
      swift_task_create();
      OUTLINED_FUNCTION_119();

      sub_1B248D228(v7, &qword_1EB7D1910);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v7, &qword_1EB7D1910);
  OUTLINED_FUNCTION_43_0();
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v3;
  if (EnumTagSinglePayload | v0)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_97_0();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

void sub_1B247DCE8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_19_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_6(v7, v15);
  v8 = sub_1B256DDAC();
  OUTLINED_FUNCTION_31_4(v8);
  if (v3 == 1)
  {
    sub_1B248D228(v0, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    OUTLINED_FUNCTION_32_2();
    v9 = OUTLINED_FUNCTION_103_0();
    v10(v9);
    OUTLINED_FUNCTION_147();
  }

  OUTLINED_FUNCTION_134();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_43_0();
      v11 = swift_allocObject();
      OUTLINED_FUNCTION_99_0(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E98);
      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
        OUTLINED_FUNCTION_27_3();
      }

      OUTLINED_FUNCTION_40_2(v12);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_120();

      sub_1B248D228(v2, &qword_1EB7D1910);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v2, &qword_1EB7D1910);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_145(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E98);
  OUTLINED_FUNCTION_73_0();
  if (v14)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_165();
LABEL_13:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

void sub_1B247DEE0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_19_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_6(v7, v15);
  v8 = sub_1B256DDAC();
  OUTLINED_FUNCTION_31_4(v8);
  if (v3 == 1)
  {
    sub_1B248D228(v0, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    OUTLINED_FUNCTION_32_2();
    v9 = OUTLINED_FUNCTION_103_0();
    v10(v9);
    OUTLINED_FUNCTION_147();
  }

  OUTLINED_FUNCTION_134();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_43_0();
      v11 = swift_allocObject();
      OUTLINED_FUNCTION_99_0(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
        OUTLINED_FUNCTION_27_3();
      }

      OUTLINED_FUNCTION_40_2(v12);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_120();

      sub_1B248D228(v2, &qword_1EB7D1910);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v2, &qword_1EB7D1910);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_145(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
  OUTLINED_FUNCTION_73_0();
  if (v14)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_165();
LABEL_13:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

void sub_1B247E0D8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_19_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_6(v7, v15);
  v8 = sub_1B256DDAC();
  OUTLINED_FUNCTION_31_4(v8);
  if (v3 == 1)
  {
    sub_1B248D228(v0, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    OUTLINED_FUNCTION_32_2();
    v9 = OUTLINED_FUNCTION_103_0();
    v10(v9);
    OUTLINED_FUNCTION_147();
  }

  OUTLINED_FUNCTION_134();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_43_0();
      v11 = swift_allocObject();
      OUTLINED_FUNCTION_99_0(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E90);
      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
        OUTLINED_FUNCTION_27_3();
      }

      OUTLINED_FUNCTION_40_2(v12);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_120();

      sub_1B248D228(v2, &qword_1EB7D1910);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v2, &qword_1EB7D1910);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_145(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E90);
  OUTLINED_FUNCTION_73_0();
  if (v14)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_165();
LABEL_13:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

void sub_1B247E2D0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_19_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_6(v7, v15);
  v8 = sub_1B256DDAC();
  OUTLINED_FUNCTION_31_4(v8);
  if (v3 == 1)
  {
    sub_1B248D228(v0, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    OUTLINED_FUNCTION_32_2();
    v9 = OUTLINED_FUNCTION_103_0();
    v10(v9);
    OUTLINED_FUNCTION_147();
  }

  OUTLINED_FUNCTION_134();

  if (v4)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v1)
    {
LABEL_6:
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_43_0();
      v11 = swift_allocObject();
      OUTLINED_FUNCTION_99_0(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E88);
      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
        OUTLINED_FUNCTION_27_3();
      }

      OUTLINED_FUNCTION_40_2(v12);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_119();

      sub_1B248D228(v2, &qword_1EB7D1910);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v2, &qword_1EB7D1910);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_145(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E88);
  OUTLINED_FUNCTION_73_0();
  if (v14)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_165();
LABEL_13:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B247E4C8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0310);
  OUTLINED_FUNCTION_106_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_105_0();

  return MEMORY[0x1EEE6D9D0](v3, v4);
}

uint64_t sub_1B247E570()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0558);
  OUTLINED_FUNCTION_106_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_105_0();

  return MEMORY[0x1EEE6D9D0](v3, v4);
}

uint64_t sub_1B247E618()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_10(v1);

  return (sub_1B24D6D74)(v3);
}

void sub_1B247E6B4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_7_2();

    v4();
  }
}

uint64_t sub_1B247E7BC()
{
  OUTLINED_FUNCTION_4_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B247E844()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_14_7();

  return v3();
}

uint64_t sub_1B247E924()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E80);
  OUTLINED_FUNCTION_106_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_105_0();

  return MEMORY[0x1EEE6D9D0](v3, v4);
}

uint64_t sub_1B247E9CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA8);
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EB0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v0);
  return sub_1B256DE5C();
}

uint64_t sub_1B247EAD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E58);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E60);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1B256DE5C();
}

uint64_t sub_1B247EBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D3CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1B2483260(a1, &v14 - v9);
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v8, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04F0);
  sub_1B256DDBC();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1B247ED98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B256D3CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1B2483898(a1, &v14 - v9);
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v8, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0428);
  sub_1B256DDBC();
  return (*(v5 + 8))(v10, v4);
}

void sub_1B247EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v30);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = sub_1B256DDAC();
  OUTLINED_FUNCTION_108_0(v33, v35, v36, v34);
  v37 = OUTLINED_FUNCTION_35_0();
  v38(v37);
  v39 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v23;
  (*(v26 + 32))(&v40[v39], &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v24);

  sub_1B247DAA8();

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B247F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B247F0E4, a4, 0);
}

uint64_t sub_1B247F0E4()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24844DC(*(v0 + 24));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B247F13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B247F15C, a4, 0);
}

uint64_t sub_1B247F15C()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B248489C(*(v0 + 24));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B247F1B4()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EC8);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04F0);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for PurchaseIntentRequest.Query(0);
  v1[23] = swift_task_alloc();
  v4 = sub_1B256D36C();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B247F38C, v0, 0);
}

uint64_t sub_1B247F38C()
{
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v3 = v0[15];
  v4 = type metadata accessor for SKLogger();
  v5 = __swift_project_value_buffer(v4, qword_1ED69A108);
  v0[29] = v5;
  v6 = sub_1B24D3E10();
  v8 = v7;
  v0[30] = v6;
  v0[31] = v7;
  v9 = qword_1EB7CDC00;
  OUTLINED_FUNCTION_137();
  if (!*(*(v3 + v9) + 16))
  {
    v42 = sub_1B256E09C();

    v43 = sub_1B256D5CC();

    if (os_log_type_enabled(v43, v42))
    {
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_4_9(4.8752e-34);
      MEMORY[0x1B2749D50](v6, v8);
      OUTLINED_FUNCTION_67_0();
      v52 = OUTLINED_FUNCTION_65_0(v44, v45, v46, v47, v48, v49, v50, v51, v109, v112, v114, v116, v118, v122, v124, v126, v127, v128);

      *(v1 + 4) = v52;
      OUTLINED_FUNCTION_74_0();
      *(v1 + 14) = OUTLINED_FUNCTION_131(v53, v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_113(&dword_1B23EF000, v43, v42, "%{public}s%{public}s");
      OUTLINED_FUNCTION_97_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

LABEL_21:
    OUTLINED_FUNCTION_17_6();

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_81_0();
  sub_1B256D2DC();
  OUTLINED_FUNCTION_111();
  v10 = OUTLINED_FUNCTION_123();
  v5(v10);
  sub_1B256D2BC();
  v11 = OUTLINED_FUNCTION_124();
  v13 = v12(v11);
  v20 = v1;
  v119 = v8;
  if (v6)
  {
    v21 = v9;
  }

  else
  {
    v21 = v8;
  }

  v22 = OUTLINED_FUNCTION_122(v13, v21, v14, v15, v16, v17, v18, v19, v109);
  v5(v22);
  OUTLINED_FUNCTION_68_0();
  sub_1B256E4FC();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_15_8();
  sub_1B248BF00(v23, v24);
  v25 = sub_1B256EAAC();
  v27 = v26;
  MEMORY[0x1B2749D50](v25);

  v28 = v127;
  v29 = v128;

  v30 = sub_1B256E0CC();

  v31 = sub_1B256D5CC();

  if (os_log_type_enabled(v31, v30))
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_4_9(4.8752e-34);
    MEMORY[0x1B2749D50](v124, v20);
    OUTLINED_FUNCTION_67_0();
    v2 = OUTLINED_FUNCTION_65_0(v32, v33, v34, v35, v36, v37, v38, v39, v20, v112, v114, v116, v8, v122, v124, v126, v127, v128);

    *(v27 + 4) = v2;
    OUTLINED_FUNCTION_64_0();
    v41 = sub_1B2519814(v28, v29, v40);

    *(v27 + 14) = v41;
    OUTLINED_FUNCTION_113(&dword_1B23EF000, v31, v30, "%{public}s%{public}s");
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  v60 = OUTLINED_FUNCTION_93_0();
  v61(v60);
  v62 = *(v31 + 20);
  v63 = type metadata accessor for ClientOverride(0);
  v66 = OUTLINED_FUNCTION_108_0(v27 + v62, v64, v65, v63);
  OUTLINED_FUNCTION_92_0(v66, v67, v68, v69, v70, v71, v72, v73, v110, v112, v114, v116, v119, v122, v124);
  sub_1B256D34C();
  OUTLINED_FUNCTION_129();
  v74 = OUTLINED_FUNCTION_22_1();
  v75(v74);
  swift_endAccess();
  sub_1B256D03C();
  swift_allocObject();
  sub_1B256D02C();
  OUTLINED_FUNCTION_47_1();
  sub_1B248BF00(v76, v77);
  v78 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_117(v78, v79);
  if (v28)
  {
    v81 = v80;

    OUTLINED_FUNCTION_8_10();
    v82 = OUTLINED_FUNCTION_150();
    v115(v82);
    v83 = OUTLINED_FUNCTION_153();
    v115(v83);
    OUTLINED_FUNCTION_68_0();
    sub_1B256E4FC();
    v0[11] = v127;
    v0[12] = v128;
    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000017);
    v0[13] = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v85 = v0[11];
    v84 = v0[12];
    v86 = sub_1B256E0AC();

    v87 = v123;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_167();

    if (os_log_type_enabled(v2, v86))
    {
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_4_9(4.8752e-34);
      MEMORY[0x1B2749D50](v125, v81);
      OUTLINED_FUNCTION_67_0();
      v96 = OUTLINED_FUNCTION_65_0(v88, v89, v90, v91, v92, v93, v94, v95, v111, v113, v115, v117, v120, v123, v125, v126, v127, v128);

      *(v27 + 4) = v96;
      OUTLINED_FUNCTION_64_0();
      sub_1B2519814(v85, v84, v97);
      OUTLINED_FUNCTION_119();

      *(v27 + 14) = v87;
      OUTLINED_FUNCTION_113(&dword_1B23EF000, v2, v86, "%{public}s%{public}s");
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_8_10();
  v98 = OUTLINED_FUNCTION_150();
  v115(v98);
  v99 = OUTLINED_FUNCTION_153();
  v115(v99);
  v100 = swift_task_alloc();
  v0[35] = v100;
  *v100 = v0;
  OUTLINED_FUNCTION_79_0(v100);
  OUTLINED_FUNCTION_112();

  return sub_1B2480F84(v101, v102, v103, v104);
}

uint64_t sub_1B247FA08()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  v3[36] = v5;
  v3[37] = v0;

  if (v0)
  {
    v6 = v3[15];
    swift_bridgeObjectRelease_n();
    v7 = sub_1B247FD30;
    v8 = v6;
  }

  else
  {
    v8 = v3[15];
    v7 = sub_1B247FB24;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1B247FD30()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B247FDD0()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v8 + 312) = v7;
  *(v8 + 320) = v0;

  v9 = *(v2 + 120);

  if (v0)
  {
    v10 = sub_1B248009C;
  }

  else
  {
    v10 = sub_1B247FF2C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B247FF2C()
{
  OUTLINED_FUNCTION_37_1();
  v16 = (v9 + 8);

  v11 = 0;
  if (v0)
  {
    while (1)
    {
LABEL_5:
      v13 = OUTLINED_FUNCTION_35_2();
      v14(v13);
      v3[14] = v1;

      OUTLINED_FUNCTION_162();
      (*(v6 + 8))(v2, v4);
      (*v16)(v5);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    ++v11;
    if (*(v7 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  sub_1B2443AE4(v3[33], v3[34]);

  OUTLINED_FUNCTION_17_6();

  OUTLINED_FUNCTION_14_7();

  return v15();
}

uint64_t sub_1B248009C()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B248013C()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E70);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0428);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for PurchaseIntentRequest.Query(0);
  v1[23] = swift_task_alloc();
  v4 = sub_1B256D36C();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2480314, v0, 0);
}

uint64_t sub_1B2480314()
{
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v3 = v0[15];
  v4 = type metadata accessor for SKLogger();
  v5 = __swift_project_value_buffer(v4, qword_1ED69A108);
  v0[29] = v5;
  v6 = sub_1B24D3E10();
  v8 = v7;
  v0[30] = v6;
  v0[31] = v7;
  v9 = qword_1EB7CDC00;
  OUTLINED_FUNCTION_137();
  if (!*(*(v3 + v9) + 16))
  {
    v42 = sub_1B256E09C();

    v43 = sub_1B256D5CC();

    if (os_log_type_enabled(v43, v42))
    {
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_4_9(4.8752e-34);
      MEMORY[0x1B2749D50](v6, v8);
      OUTLINED_FUNCTION_67_0();
      v52 = OUTLINED_FUNCTION_65_0(v44, v45, v46, v47, v48, v49, v50, v51, v109, v112, v114, v116, v118, v122, v124, v126, v127, v128);

      *(v1 + 4) = v52;
      OUTLINED_FUNCTION_74_0();
      *(v1 + 14) = OUTLINED_FUNCTION_131(v53, v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_113(&dword_1B23EF000, v43, v42, "%{public}s%{public}s");
      OUTLINED_FUNCTION_97_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

LABEL_21:
    OUTLINED_FUNCTION_17_6();

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_81_0();
  sub_1B256D2DC();
  OUTLINED_FUNCTION_111();
  v10 = OUTLINED_FUNCTION_123();
  v5(v10);
  sub_1B256D2BC();
  v11 = OUTLINED_FUNCTION_124();
  v13 = v12(v11);
  v20 = v1;
  v119 = v8;
  if (v6)
  {
    v21 = v9;
  }

  else
  {
    v21 = v8;
  }

  v22 = OUTLINED_FUNCTION_122(v13, v21, v14, v15, v16, v17, v18, v19, v109);
  v5(v22);
  OUTLINED_FUNCTION_68_0();
  sub_1B256E4FC();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_15_8();
  sub_1B248BF00(v23, v24);
  v25 = sub_1B256EAAC();
  v27 = v26;
  MEMORY[0x1B2749D50](v25);

  v28 = v127;
  v29 = v128;

  v30 = sub_1B256E0CC();

  v31 = sub_1B256D5CC();

  if (os_log_type_enabled(v31, v30))
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_4_9(4.8752e-34);
    MEMORY[0x1B2749D50](v124, v20);
    OUTLINED_FUNCTION_67_0();
    v2 = OUTLINED_FUNCTION_65_0(v32, v33, v34, v35, v36, v37, v38, v39, v20, v112, v114, v116, v8, v122, v124, v126, v127, v128);

    *(v27 + 4) = v2;
    OUTLINED_FUNCTION_64_0();
    v41 = sub_1B2519814(v28, v29, v40);

    *(v27 + 14) = v41;
    OUTLINED_FUNCTION_113(&dword_1B23EF000, v31, v30, "%{public}s%{public}s");
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  v60 = OUTLINED_FUNCTION_93_0();
  v61(v60);
  v62 = *(v31 + 20);
  v63 = type metadata accessor for ClientOverride(0);
  v66 = OUTLINED_FUNCTION_108_0(v27 + v62, v64, v65, v63);
  OUTLINED_FUNCTION_92_0(v66, v67, v68, v69, v70, v71, v72, v73, v110, v112, v114, v116, v119, v122, v124);
  sub_1B256D34C();
  OUTLINED_FUNCTION_129();
  v74 = OUTLINED_FUNCTION_22_1();
  v75(v74);
  swift_endAccess();
  sub_1B256D03C();
  swift_allocObject();
  sub_1B256D02C();
  OUTLINED_FUNCTION_47_1();
  sub_1B248BF00(v76, v77);
  v78 = OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_117(v78, v79);
  if (v28)
  {
    v81 = v80;

    OUTLINED_FUNCTION_8_10();
    v82 = OUTLINED_FUNCTION_150();
    v115(v82);
    v83 = OUTLINED_FUNCTION_153();
    v115(v83);
    OUTLINED_FUNCTION_68_0();
    sub_1B256E4FC();
    v0[11] = v127;
    v0[12] = v128;
    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000017);
    v0[13] = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v85 = v0[11];
    v84 = v0[12];
    v86 = sub_1B256E0AC();

    v87 = v123;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_167();

    if (os_log_type_enabled(v2, v86))
    {
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_4_9(4.8752e-34);
      MEMORY[0x1B2749D50](v125, v81);
      OUTLINED_FUNCTION_67_0();
      v96 = OUTLINED_FUNCTION_65_0(v88, v89, v90, v91, v92, v93, v94, v95, v111, v113, v115, v117, v120, v123, v125, v126, v127, v128);

      *(v27 + 4) = v96;
      OUTLINED_FUNCTION_64_0();
      sub_1B2519814(v85, v84, v97);
      OUTLINED_FUNCTION_119();

      *(v27 + 14) = v87;
      OUTLINED_FUNCTION_113(&dword_1B23EF000, v2, v86, "%{public}s%{public}s");
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_8_10();
  v98 = OUTLINED_FUNCTION_150();
  v115(v98);
  v99 = OUTLINED_FUNCTION_153();
  v115(v99);
  v100 = swift_task_alloc();
  v0[35] = v100;
  *v100 = v0;
  OUTLINED_FUNCTION_79_0(v100);
  OUTLINED_FUNCTION_112();

  return sub_1B248121C(v101, v102, v103, v104);
}

uint64_t sub_1B2480990()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  v3[36] = v5;
  v3[37] = v0;

  if (v0)
  {
    v6 = v3[15];
    swift_bridgeObjectRelease_n();
    v7 = sub_1B248D434;
    v8 = v6;
  }

  else
  {
    v8 = v3[15];
    v7 = sub_1B2480AAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1B2480CB8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v8 + 312) = v7;
  *(v8 + 320) = v0;

  v9 = *(v2 + 120);

  if (v0)
  {
    v10 = sub_1B248D438;
  }

  else
  {
    v10 = sub_1B2480E14;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B2480E14()
{
  OUTLINED_FUNCTION_37_1();
  v16 = (v9 + 8);

  v11 = 0;
  if (v0)
  {
    while (1)
    {
LABEL_5:
      v13 = OUTLINED_FUNCTION_35_2();
      v14(v13);
      v3[14] = v1;

      OUTLINED_FUNCTION_162();
      (*v16)(v5);
      (*(v6 + 8))(v2, v4);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    ++v11;
    if (*(v7 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  sub_1B2443AE4(v3[33], v3[34]);

  OUTLINED_FUNCTION_17_6();

  OUTLINED_FUNCTION_14_7();

  return v15();
}

uint64_t sub_1B2480F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a3;
  v5[14] = a4;
  v5[11] = a1;
  v5[12] = a2;
  sub_1B248D0F8(&qword_1EB7D0EC0, &qword_1EB7D03A0);
  if (v4)
  {
    swift_getObjectType();
    v6 = sub_1B256DCEC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B2481044, v6, v8);
}

uint64_t sub_1B2481044()
{
  OUTLINED_FUNCTION_24_5();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  v1 = OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_163(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B24810E4()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 80);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_1B248121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a3;
  v5[14] = a4;
  v5[11] = a1;
  v5[12] = a2;
  sub_1B248D0F8(qword_1EB7CDB78, &qword_1EB7D0370);
  if (v4)
  {
    swift_getObjectType();
    v6 = sub_1B256DCEC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B24812DC, v6, v8);
}

uint64_t sub_1B24812DC()
{
  OUTLINED_FUNCTION_24_5();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  v1 = OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_163(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B248137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0ED0);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for PurchaseIntent(0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = *(type metadata accessor for Product() - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for ProductRequest();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for PurchaseIntentInternal();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24815B8, v3, 0);
}

void sub_1B24815B8()
{
  v139 = v2;
  *(v2 + 200) = sub_1B246063C(0, &qword_1EB7CDC50);
  v128 = v2;
  if (!swift_dynamicCastMetatype())
  {
    v75 = *(v2 + 48);
    v76 = *(v75 + 16);
    v77 = MEMORY[0x1E69E7CC0];
    if (v76)
    {
      v78 = *(v2 + 168);
      v79 = *(v2 + 176);
      v135 = MEMORY[0x1E69E7CC0];
      sub_1B2455BD8(0, v76, 0);
      v77 = v135;
      v80 = v75 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v81 = *(v78 + 72);
      do
      {
        v82 = *(v2 + 176);
        OUTLINED_FUNCTION_2_18();
        sub_1B248D2E4(v80, v82, v83);
        v85 = *(v79 + 32);
        v84 = *(v79 + 40);

        OUTLINED_FUNCTION_3_17();
        sub_1B248D1CC(v82, v86);
        v135 = v77;
        v88 = *(v77 + 16);
        v87 = *(v77 + 24);
        if (v88 >= v87 >> 1)
        {
          OUTLINED_FUNCTION_20_6(v87);
          v77 = v135;
        }

        *(v77 + 16) = v88 + 1;
        v89 = v77 + 16 * v88;
        *(v89 + 32) = v85;
        *(v89 + 40) = v84;
        v80 += v81;
        --v76;
        v2 = v128;
      }

      while (v76);
    }

    *(v2 + 232) = v77;
    v90 = *(v2 + 136);
    *(v2 + 264) = 6;
    v91 = type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_108_0(v90, v92, v93, v91);
    v94 = swift_task_alloc();
    *(v2 + 240) = v94;
    *v94 = v2;
    v94[1] = sub_1B24820B4;
    OUTLINED_FUNCTION_84_0();

    sub_1B24E5E54();
    return;
  }

  v118 = v2 + 16;
  v129 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_142();
  v125 = *(v0 + 16);
  v7 = v5;
LABEL_3:
  v120 = v7;
  while (1)
  {
    if (v6 == v125)
    {
      v96 = *(v7 + 16);
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_70_0();
        sub_1B2455BD8(v97, v96, 0);
        OUTLINED_FUNCTION_78_0();
        do
        {
          v98 = *(v2 + 176);
          OUTLINED_FUNCTION_2_18();
          v99 = OUTLINED_FUNCTION_22_1();
          sub_1B248D2E4(v99, v100, v101);

          OUTLINED_FUNCTION_3_17();
          sub_1B248D1CC(v98, v102);
          OUTLINED_FUNCTION_148();
          if (v47)
          {
            OUTLINED_FUNCTION_20_6(v103);
          }

          OUTLINED_FUNCTION_116();
          v2 = v128;
        }

        while (!v104);
      }

      type metadata accessor for ClientOverride(0);
      v105 = OUTLINED_FUNCTION_59_1();
      __swift_storeEnumTagSinglePayload(v105, v106, 1, v107);
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_62_0(v108, v112, v114, v116);
      v109 = swift_task_alloc();
      *(v2 + 208) = v109;
      *v109 = v2;
      v109[1] = sub_1B2481DD0;
      OUTLINED_FUNCTION_84_0();

      sub_1B24CC8A8();
      return;
    }

    v8 = *(v2 + 192);
    v123 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v126 = v6;
    v122 = *(v124 + 72);
    OUTLINED_FUNCTION_2_18();
    sub_1B248D2E4(v9, v8, v10);
    OUTLINED_FUNCTION_139();
    if (v8)
    {
      break;
    }

    v3 = sub_1B256D8AC();
LABEL_36:
    OUTLINED_FUNCTION_144();
    if (!v68)
    {

LABEL_40:
      OUTLINED_FUNCTION_12_10(*(v2 + 192), *(v2 + 184));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_130_0();
        v7 = v137;
      }

      OUTLINED_FUNCTION_143();
      if (v47)
      {
        OUTLINED_FUNCTION_69_0(v73);
        sub_1B2455DC0();
        v8 = v137;
      }

      v74 = *(v2 + 184);
      *(v8 + 16) = v7;
      OUTLINED_FUNCTION_12_10(v74, v8 + v123 + v0 * v122);
      v7 = v8;
      v6 = v126;
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_82_0();
    v8 = v69;

    if ((v8 & 1) == 0)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_3_17();
    sub_1B248D1CC(v70, v71);
    v6 = v126;
  }

  v11 = OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_161(v11, v12, v13, v14, v15, v16, v17, v18, v112, v114, v116, v118);
  v19 = OUTLINED_FUNCTION_30_3();
  sub_1B24C3E54(v19, v20, v21, v22, v7, v8, v23, v24, v113, v115, v117, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v26 = v25;

  v0 = *(v26 + 2);
  if (v0)
  {
    v138 = v5;
    sub_1B2455E18(0, v0, 0);
    v8 = v138;
    v130 = v26 + 32;
    v131 = v0;
    v127 = v26;
    do
    {
      if (!*(v26 + 2))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_164();
      v27 = OUTLINED_FUNCTION_156();
      MEMORY[0x1B2749CC0](v27);
      v28 = OUTLINED_FUNCTION_101_0();
      *(v28 + 16) = v129;
      v29 = OUTLINED_FUNCTION_30_3();
      sub_1B24C3E54(v29, v30, v31, v32, v8, v3, v33, v34, v112, v114, v116, v118, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v8, v135, v136, v137);
      v3 = v35;

      v36 = *(v3 + 16);
      if (v36)
      {
        v132 = v4;
        v133 = v1;
        v37 = OUTLINED_FUNCTION_70_0();
        sub_1B2455BD8(v37, v36, 0);
        v4 = v135;
        v38 = (v3 + 56);
        do
        {
          v8 = *(v38 - 3);
          v39 = *(v38 - 2);
          v40 = *(v38 - 1);
          v41 = *v38;

          v28 = MEMORY[0x1B2749CC0](v8, v39, v40, v41);
          v3 = v42;

          v135 = v4;
          v44 = *(v4 + 16);
          v43 = *(v4 + 24);
          if (v44 >= v43 >> 1)
          {
            OUTLINED_FUNCTION_20_6(v43);
            v4 = v135;
          }

          *(v4 + 16) = v44 + 1;
          v45 = v4 + 16 * v44;
          *(v45 + 32) = v28;
          *(v45 + 40) = v3;
          v38 += 4;
          --v36;
        }

        while (v36);

        v26 = v127;
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v4 = v5;
      }

      OUTLINED_FUNCTION_121();
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_69_0(v46);
        sub_1B2455E18(v48, v28, 1);
        v8 = v138;
      }

      OUTLINED_FUNCTION_152();
      v0 = v131;
    }

    while (v131);
  }

  else
  {

    v8 = v5;
  }

  v3 = sub_1B256D8AC();
  v49 = 0;
  v50 = *(v8 + 16);
  while (1)
  {
    if (v50 == v49)
    {

      v2 = v128;
      v7 = v120;
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_36;
    }

    if (v49 >= *(v8 + 16))
    {
      break;
    }

    v51 = *(v8 + 8 * v49++ + 32);
    if (v51[2] == 2)
    {
      v133 = v1;
      v134 = v8;
      v53 = v51[4];
      v52 = v51[5];
      v54 = v51[7];
      v130 = v51[6];

      v131 = v54;

      swift_isUniquelyReferenced_nonNull_native();
      v135 = v3;
      v132 = v53;
      v55 = v52;
      v56 = sub_1B2455488();
      if (__OFADD__(*(v3 + 16), (v57 & 1) == 0))
      {
        goto LABEL_67;
      }

      v0 = v56;
      v4 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E78);
      v58 = &v135;
      if (sub_1B256E80C())
      {
        v58 = v135;
        v59 = sub_1B2455488();
        if ((v4 & 1) != (v60 & 1))
        {
          goto LABEL_63;
        }

        v0 = v59;
        if (v4)
        {
LABEL_33:

          v58 = v135;
          OUTLINED_FUNCTION_146();
          *v67 = v130;
          v67[1] = v131;

          goto LABEL_34;
        }
      }

      else if (v4)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_52_1();
      *v61 = v62;
      v61[1] = v55;
      OUTLINED_FUNCTION_146();
      *v63 = v130;
      v63[1] = v131;

      v64 = v58[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_68;
      }

      v58[2] = v66;
LABEL_34:
      v3 = v58;
      v8 = v134;
    }
  }

  __break(1u);
LABEL_63:
  OUTLINED_FUNCTION_84_0();

  sub_1B256EC9C();
}

uint64_t sub_1B2481DD0()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 216) = v0;

  v7 = *(v4 + 72);
  if (v0)
  {
    v8 = sub_1B2482004;
  }

  else
  {
    *(v5 + 224) = v3;
    v8 = sub_1B2481F00;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1B2481F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v13 = *(v12 + 224);
  v14 = *(v12 + 152);
  v15 = [v13 products];
  v16 = sub_1B256DC5C();

  sub_1B2483020(v16);

  OUTLINED_FUNCTION_5_9();
  sub_1B248D1CC(v14, v17);
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_115();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1B2482004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_5_9();
  sub_1B248D1CC(v12, v13);
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_115();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1B24820B4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  v3[31] = v5;
  v3[32] = v0;

  v6 = v3[17];
  v7 = v3[9];
  sub_1B248D228(v6, &qword_1EB7D1850);

  if (v0)
  {
    v8 = sub_1B24824D4;
  }

  else
  {
    v8 = sub_1B2482208;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1B2482208()
{
  v1 = 0;
  v2 = v0[15];
  v19 = v0[12];
  v3 = v0[31];
  v4 = v0[32];
  v5 = *(v3 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v1)
    {

      sub_1B24830E0(v20);

      OUTLINED_FUNCTION_36_1();

      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_114();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[16];
    v7 = v0[10];
    sub_1B248D2E4(v0[31] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, v6, type metadata accessor for Product);
    sub_1B2446E58(v6, v7);
    if (v4)
    {
      break;
    }

    v9 = v0[10];
    v8 = v0[11];
    OUTLINED_FUNCTION_61_0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
    {
      sub_1B248D228(v0[10], &qword_1EB7D0ED0);
      v4 = 0;
      ++v1;
    }

    else
    {
      v11 = v0[13];
      v10 = v0[14];
      sub_1B248D284(v0[10], v10, type metadata accessor for PurchaseIntent);
      sub_1B248D284(v10, v11, type metadata accessor for PurchaseIntent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2448C08();
        v20 = v14;
      }

      v12 = *(v20 + 16);
      if (v12 >= *(v20 + 24) >> 1)
      {
        sub_1B2448C08();
        v20 = v15;
      }

      ++v1;
      v13 = v0[13];
      *(v20 + 16) = v12 + 1;
      sub_1B248D284(v13, v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v12, type metadata accessor for PurchaseIntent);
      v4 = 0;
    }
  }

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1B24824D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_36_1();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_115();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1B2482578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = type metadata accessor for ProductRequest();
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for PurchaseIntentInternal();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2482684, v3, 0);
}

void sub_1B2482684()
{
  v118 = v2;
  v97 = (v2 + 2);
  v109 = (v2 + 4);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_142();
  v6 = MEMORY[0x1E69E7CC0];
  v104 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v108 = v2;
LABEL_2:
  v99 = v7;
  while (1)
  {
    if (v5 == v104)
    {
      v75 = *(v7 + 16);
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_70_0();
        sub_1B2455BD8(v76, v75, 0);
        OUTLINED_FUNCTION_78_0();
        do
        {
          v77 = v2[15];
          OUTLINED_FUNCTION_2_18();
          v78 = OUTLINED_FUNCTION_22_1();
          sub_1B248D2E4(v78, v79, v80);

          OUTLINED_FUNCTION_3_17();
          sub_1B248D1CC(v77, v81);
          OUTLINED_FUNCTION_148();
          if (v47)
          {
            OUTLINED_FUNCTION_20_6(v82);
          }

          OUTLINED_FUNCTION_116();
          v2 = v108;
        }

        while (!v83);
      }

      type metadata accessor for ClientOverride(0);
      v84 = OUTLINED_FUNCTION_59_1();
      __swift_storeEnumTagSinglePayload(v84, v85, 1, v86);
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_62_0(v87, v91, v93, v95);
      v88 = swift_task_alloc();
      v2[17] = v88;
      *v88 = v2;
      v88[1] = sub_1B2482D28;
      OUTLINED_FUNCTION_84_0();

      sub_1B24CC8A8();
      return;
    }

    v8 = v2[16];
    v102 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v105 = v5;
    v101 = *(v103 + 72);
    OUTLINED_FUNCTION_2_18();
    sub_1B248D2E4(v9, v8, v10);
    OUTLINED_FUNCTION_139();
    if (v8)
    {
      break;
    }

    v3 = sub_1B256D8AC();
LABEL_35:
    OUTLINED_FUNCTION_144();
    if (!v68)
    {

LABEL_39:
      OUTLINED_FUNCTION_12_10(v2[16], v2[14]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_130_0();
        v7 = v116;
      }

      OUTLINED_FUNCTION_143();
      if (v47)
      {
        OUTLINED_FUNCTION_69_0(v73);
        sub_1B2455DC0();
        v8 = v116;
      }

      v74 = v2[14];
      *(v8 + 16) = v7;
      OUTLINED_FUNCTION_12_10(v74, v8 + v102 + v0 * v101);
      v7 = v8;
      v5 = v105;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_82_0();
    v8 = v69;

    if ((v8 & 1) == 0)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_3_17();
    sub_1B248D1CC(v70, v71);
    v5 = v105;
  }

  v11 = OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_161(v11, v12, v13, v14, v15, v16, v17, v18, v91, v93, v95, v97);
  v19 = OUTLINED_FUNCTION_30_3();
  sub_1B24C3E54(v19, v20, v21, v22, v7, v8, v23, v24, v92, v94, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v26 = v25;

  v27 = *(v26 + 2);
  if (v27)
  {
    v117 = v6;
    sub_1B2455E18(0, v27, 0);
    v8 = v117;
    v110 = v26 + 32;
    v106 = v26;
    v107 = v27;
    do
    {
      if (!*(v26 + 2))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_164();
      v28 = OUTLINED_FUNCTION_156();
      MEMORY[0x1B2749CC0](v28);
      *(OUTLINED_FUNCTION_101_0() + 16) = v109;
      v29 = OUTLINED_FUNCTION_30_3();
      sub_1B24C3E54(v29, v30, v31, v32, v8, v3, v33, v34, v91, v93, v95, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v8, v114, v115, v116);
      v0 = v35;

      v3 = *(v0 + 16);
      if (v3)
      {
        v111 = v4;
        v112 = v1;
        v36 = OUTLINED_FUNCTION_70_0();
        sub_1B2455BD8(v36, v3, 0);
        v4 = v114;
        v37 = (v0 + 56);
        do
        {
          v8 = *(v37 - 3);
          v38 = *(v37 - 2);
          v39 = *(v37 - 1);
          v40 = *v37;

          v0 = MEMORY[0x1B2749CC0](v8, v38, v39, v40);
          v42 = v41;

          v114 = v4;
          v44 = *(v4 + 16);
          v43 = *(v4 + 24);
          if (v44 >= v43 >> 1)
          {
            OUTLINED_FUNCTION_20_6(v43);
            v4 = v114;
          }

          *(v4 + 16) = v44 + 1;
          v45 = v4 + 16 * v44;
          *(v45 + 32) = v0;
          *(v45 + 40) = v42;
          v37 += 4;
          --v3;
        }

        while (v3);

        v27 = v107;
        v6 = MEMORY[0x1E69E7CC0];
        v26 = v106;
      }

      else
      {

        v4 = v6;
      }

      OUTLINED_FUNCTION_121();
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_69_0(v46);
        sub_1B2455E18(v48, v0, 1);
        v8 = v117;
      }

      OUTLINED_FUNCTION_152();
    }

    while (v27);
  }

  else
  {

    v8 = v6;
  }

  v3 = sub_1B256D8AC();
  v49 = 0;
  v50 = *(v8 + 16);
  while (1)
  {
    if (v50 == v49)
    {

      v2 = v108;
      v7 = v99;
      v6 = MEMORY[0x1E69E7CC0];
      goto LABEL_35;
    }

    if (v49 >= *(v8 + 16))
    {
      break;
    }

    v51 = *(v8 + 8 * v49++ + 32);
    if (v51[2] == 2)
    {
      v113 = v8;
      v53 = v51[4];
      v52 = v51[5];
      v54 = v51[7];
      v107 = v51[6];

      v110 = v54;

      swift_isUniquelyReferenced_nonNull_native();
      v114 = v3;
      v111 = v53;
      v55 = v52;
      v56 = sub_1B2455488();
      v112 = v3;
      if (__OFADD__(*(v3 + 16), (v57 & 1) == 0))
      {
        goto LABEL_58;
      }

      v0 = v56;
      v4 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E78);
      v58 = &v114;
      if (sub_1B256E80C())
      {
        v58 = v114;
        v59 = sub_1B2455488();
        if ((v4 & 1) != (v60 & 1))
        {
          goto LABEL_54;
        }

        v0 = v59;
        if (v4)
        {
LABEL_32:

          v58 = v114;
          OUTLINED_FUNCTION_146();
          *v67 = v107;
          v67[1] = v110;

          goto LABEL_33;
        }
      }

      else if (v4)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_52_1();
      *v61 = v62;
      v61[1] = v55;
      OUTLINED_FUNCTION_146();
      *v63 = v107;
      v63[1] = v110;

      v64 = v58[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_59;
      }

      v58[2] = v66;
LABEL_33:
      v3 = v58;
      v8 = v113;
    }
  }

  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_84_0();

  sub_1B256EC9C();
}

uint64_t sub_1B2482D28()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v8 + 144) = v7;
  *(v8 + 152) = v0;

  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_1B2482F8C;
  }

  else
  {
    v10 = sub_1B2482E4C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B2482E4C()
{
  OUTLINED_FUNCTION_24_5();
  v2 = [*(v1 + 144) products];
  sub_1B246063C(0, &qword_1EB7CDC50);
  OUTLINED_FUNCTION_154();
  v3 = sub_1B256DC5C();

  v4 = *(v1 + 144);

  if (v3 >> 62)
  {
    sub_1B256E85C();
    OUTLINED_FUNCTION_120();
  }

  else
  {
    sub_1B256EC3C();
    v0 = v3;
  }

  v5 = *(v1 + 88);

  OUTLINED_FUNCTION_5_9();
  sub_1B248D1CC(v5, v6);

  OUTLINED_FUNCTION_141();

  return v7(v0);
}

uint64_t sub_1B2482F8C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_9();
  sub_1B248D1CC(v1, v2);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2483020(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B256E8AC();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_5:
    v4 = v2;
    sub_1B2455D68();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    sub_1B2463718(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_10;
    }

    v5 = *(a1 + 32);
    while (1)
    {
      __break(1u);
LABEL_9:
      __break(1u);
LABEL_10:
      MEMORY[0x1B274A7A0](0, a1);
    }
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B24830E0(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseIntent(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B2455D68();
    v7 = v14;
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = a1 + v8;
    v10 = *(v3 + 72);
    do
    {
      sub_1B248D2E4(v9, v5, type metadata accessor for PurchaseIntent);
      v14 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1B2455D68();
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      sub_1B248D284(v5, v7 + v8 + v11 * v10, type metadata accessor for PurchaseIntent);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1B2483260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1B256D3CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B256D3BC();
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v14, qword_1ED69A108);
  aBlock = 0;
  v42 = 0xE000000000000000;
  sub_1B256E4FC();

  aBlock = 0xD00000000000002ALL;
  v42 = 0x80000001B258F440;
  sub_1B248BF00(&qword_1EB7CDC30, MEMORY[0x1E69695A8]);
  v39 = a2;
  v15 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v15);

  v16 = aBlock;
  v17 = v42;
  v18 = sub_1B256E09C();

  v19 = sub_1B256D5CC();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v3;
    v22 = v21;
    aBlock = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v20 + 12) = 2082;
    v23 = sub_1B2519814(v16, v17, &aBlock);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v24 = v22;
    v3 = v37;
    MEMORY[0x1B274BFF0](v24, -1, -1);
    MEMORY[0x1B274BFF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v11 + 16))(v13, v39, v10);
  sub_1B248BF00(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256E47C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04F0);
  (*(*(v25 - 8) + 16))(v9, v40, v25);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  swift_beginAccess();
  sub_1B253F0E0();
  swift_endAccess();
  v26 = qword_1EB7CDC08;
  result = notify_is_valid_token(*(v3 + qword_1EB7CDC08));
  if ((result & 1) == 0)
  {
    v28 = swift_slowAlloc();
    sub_1B256D9BC();
    sub_1B246063C(0, &qword_1EB7CDC60);
    v29 = sub_1B256E0EC();
    v45 = sub_1B248D0F0;
    v46 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1B2459760;
    v44 = &block_descriptor_135;
    v30 = v3;
    v31 = _Block_copy(&aBlock);

    v32 = sub_1B256DA3C();

    notify_register_dispatch((v32 + 32), v28, v29, v31);

    _Block_release(v31);

    *(v30 + v26) = *v28;
    v33 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v33);
    v34 = sub_1B248D0F8(&qword_1EB7D0EC0, &qword_1EB7D03A0);
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v34;
    v35[4] = v30;
    swift_retain_n();
    sub_1B2484230();

    return MEMORY[0x1B274BFF0](v28, -1, -1);
  }

  return result;
}

uint64_t sub_1B2483898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_1B256D3CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B256D3BC();
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v14, qword_1ED69A108);
  aBlock = 0;
  v42 = 0xE000000000000000;
  sub_1B256E4FC();

  aBlock = 0xD00000000000002ALL;
  v42 = 0x80000001B258F440;
  sub_1B248BF00(&qword_1EB7CDC30, MEMORY[0x1E69695A8]);
  v39 = a2;
  v15 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v15);

  v16 = aBlock;
  v17 = v42;
  v18 = sub_1B256E09C();

  v19 = sub_1B256D5CC();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v3;
    v22 = v21;
    aBlock = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v20 + 12) = 2082;
    v23 = sub_1B2519814(v16, v17, &aBlock);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v24 = v22;
    v3 = v37;
    MEMORY[0x1B274BFF0](v24, -1, -1);
    MEMORY[0x1B274BFF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v11 + 16))(v13, v39, v10);
  sub_1B248BF00(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256E47C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0428);
  (*(*(v25 - 8) + 16))(v9, v40, v25);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  swift_beginAccess();
  sub_1B253F410();
  swift_endAccess();
  v26 = qword_1EB7CDC08;
  result = notify_is_valid_token(*(v3 + qword_1EB7CDC08));
  if ((result & 1) == 0)
  {
    v28 = swift_slowAlloc();
    sub_1B256D9BC();
    sub_1B246063C(0, &qword_1EB7CDC60);
    v29 = sub_1B256E0EC();
    v45 = sub_1B248C50C;
    v46 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1B2459760;
    v44 = &block_descriptor_53;
    v30 = v3;
    v31 = _Block_copy(&aBlock);

    v32 = sub_1B256DA3C();

    notify_register_dispatch((v32 + 32), v28, v29, v31);

    _Block_release(v31);

    *(v30 + v26) = *v28;
    v33 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v33);
    v34 = sub_1B248D0F8(qword_1EB7CDB78, &qword_1EB7D0370);
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v34;
    v35[4] = v30;
    swift_retain_n();
    sub_1B2484230();

    return MEMORY[0x1B274BFF0](v28, -1, -1);
  }

  return result;
}

uint64_t sub_1B2483ED0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_1B248D0F8(&qword_1EB7D0EC0, &qword_1EB7D03A0);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = v7;
  v8[4] = a2;
  swift_retain_n();
  sub_1B2484230();
}

uint64_t sub_1B2483FF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_1B248D0F8(qword_1EB7CDB78, &qword_1EB7D0370);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = v7;
  v8[4] = a2;
  swift_retain_n();
  sub_1B2484230();
}

uint64_t sub_1B2484110()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B2445514;

  return sub_1B247F1B4();
}

uint64_t sub_1B24841A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24741E0;

  return sub_1B248013C();
}

void sub_1B2484230()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  sub_1B2479E30(v2, v17 - v7);
  v9 = sub_1B256DDAC();
  v10 = OUTLINED_FUNCTION_59_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B248D228(v8, &qword_1EB7D1910);
  }

  else
  {
    EnumTagSinglePayload = sub_1B256DD9C();
    OUTLINED_FUNCTION_57_1();
    v13 = OUTLINED_FUNCTION_156();
    v14(v13);
  }

  OUTLINED_FUNCTION_134();

  if (v0)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_66();
    if (v4)
    {
LABEL_6:
      v15 = sub_1B256DA3C() + 32;

      if (EnumTagSinglePayload | v8)
      {
        OUTLINED_FUNCTION_27_3();
      }

      else
      {
        v16 = 0;
      }

      v17[1] = 7;
      v17[2] = v16;
      v17[3] = v15;
      OUTLINED_FUNCTION_97_0();
      swift_task_create();
      OUTLINED_FUNCTION_119();

      sub_1B248D228(v2, &qword_1EB7D1910);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_1B248D228(v2, &qword_1EB7D1910);
  if (EnumTagSinglePayload | v8)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_97_0();
  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B248444C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24741E0;

  return sub_1B247F1B4();
}

uint64_t sub_1B24844DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1B256D3CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v11, qword_1ED69A108);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002CLL, 0x80000001B258F410);
  v26 = a1;
  sub_1B256E78C();
  v13 = v27;
  v12 = v28;
  v14 = sub_1B256E09C();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v25 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1B2519814(0, 0xE000000000000000, &v27);
    *(v17 + 12) = 2082;
    v19 = sub_1B2519814(v13, v12, &v27);

    *(v17 + 14) = v19;
    _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v18, -1, -1);
    v20 = v17;
    v6 = v25;
    MEMORY[0x1B274BFF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v8 + 16))(v10, v26, v7);
  sub_1B248BF00(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256E47C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04F0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v21);
  v22 = qword_1EB7CDC00;
  swift_beginAccess();
  sub_1B253F0E0();
  result = swift_endAccess();
  if (!*(*(v2 + v22) + 16))
  {
    v24 = qword_1EB7CDC08;
    result = notify_is_valid_token(*(v2 + qword_1EB7CDC08));
    if (result)
    {
      result = notify_cancel(*(v2 + v24));
      *(v2 + v24) = -1;
    }
  }

  return result;
}

uint64_t sub_1B248489C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1B256D3CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v11, qword_1ED69A108);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002CLL, 0x80000001B258F410);
  v26 = a1;
  sub_1B256E78C();
  v13 = v27;
  v12 = v28;
  v14 = sub_1B256E09C();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v25 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1B2519814(0, 0xE000000000000000, &v27);
    *(v17 + 12) = 2082;
    v19 = sub_1B2519814(v13, v12, &v27);

    *(v17 + 14) = v19;
    _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v18, -1, -1);
    v20 = v17;
    v6 = v25;
    MEMORY[0x1B274BFF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v8 + 16))(v10, v26, v7);
  sub_1B248BF00(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256E47C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0428);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v21);
  v22 = qword_1EB7CDC00;
  swift_beginAccess();
  sub_1B253F410();
  result = swift_endAccess();
  if (!*(*(v2 + v22) + 16))
  {
    v24 = qword_1EB7CDC08;
    result = notify_is_valid_token(*(v2 + qword_1EB7CDC08));
    if (result)
    {
      result = notify_cancel(*(v2 + v24));
      *(v2 + v24) = -1;
    }
  }

  return result;
}

void sub_1B2484C5C()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  sub_1B246063C(0, &qword_1EB7CDAD8);
  v6 = [objc_opt_self() defaultQueue];
  v7 = sub_1B256E21C();

  if ((v7 & 1) != 0 && !qword_1EB7EDF78)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v8 = type metadata accessor for SKLogger();
    v9 = __swift_project_value_buffer(v8, qword_1ED69A108);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1B256E4FC();

    OUTLINED_FUNCTION_39_2();
    v27 = v10;
    v28 = v11;
    v12 = [v1 description];
    v13 = sub_1B256D9BC();
    v15 = v14;

    MEMORY[0x1B2749D50](v13, v15);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000021);
    v17 = v27;
    v16 = v28;
    v18 = sub_1B256E0CC();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      OUTLINED_FUNCTION_21_3();
      v27 = OUTLINED_FUNCTION_46_1();
      *v9 = 136446466;
      *(v9 + 4) = sub_1B2519814(0, 0xE000000000000000, &v27);
      OUTLINED_FUNCTION_74_0();
      v20 = sub_1B2519814(v17, v16, &v27);

      *(v9 + 14) = v20;
      OUTLINED_FUNCTION_113(&dword_1B23EF000, v19, v18, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v21 = sub_1B256DDAC();
    OUTLINED_FUNCTION_108_0(v5, v22, v23, v21);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v1;
    v25 = v1;
    OUTLINED_FUNCTION_107_0();
    sub_1B2484230();
    qword_1EB7EDF78 = v26;
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B2484F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E48);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E50);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B248506C, 0, 0);
}

uint64_t sub_1B248506C()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7EDF80;
  *(v0 + 80) = qword_1EB7EDF80;

  return MEMORY[0x1EEE6DFA0](sub_1B2485100, v1, 0);
}

uint64_t sub_1B2485100()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B247EAD8();
  v0 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B248515C()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B256DE1C();
  *(v0 + 88) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 96) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_42_1(v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1B24851E8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24852CC()
{
  OUTLINED_FUNCTION_126();
  if (!v0[2])
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v9 + 8))(v8, v10);

    OUTLINED_FUNCTION_14_7();
    goto LABEL_5;
  }

  v1 = v0[11];
  sub_1B256DEAC();
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[5];

    (*(v4 + 8))(v2, v3);
    v5 = OUTLINED_FUNCTION_103_0();
    v6(v5);

    OUTLINED_FUNCTION_7_2();
LABEL_5:

    return v7();
  }

  v12 = v0[3];
  sub_1B246063C(0, &qword_1EB7CDC50);
  v13 = sub_1B256DC4C();

  [v12 notifyPurchaseIntentObserversForProducts_];

  v0[11] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[12] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6D9C8](v16);
}

void sub_1B24854F8()
{
  if (qword_1EB7EDF78)
  {
    v1 = v0;
    v2 = qword_1ED699E80;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v3 = type metadata accessor for SKLogger();
    v4 = __swift_project_value_buffer(v3, qword_1ED69A108);
    sub_1B256E4FC();

    OUTLINED_FUNCTION_39_2();
    v16 = v5;
    v17 = v6;
    v7 = [v1 description];
    v8 = sub_1B256D9BC();
    v10 = v9;

    MEMORY[0x1B2749D50](v8, v10);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000023);
    v12 = v16;
    v11 = v17;
    v13 = sub_1B256E0CC();

    v14 = v4;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_154();

    if (os_log_type_enabled(v4, v13))
    {
      v15 = OUTLINED_FUNCTION_21_3();
      v16 = OUTLINED_FUNCTION_20_4();
      *v15 = 136446466;
      *(v15 + 4) = sub_1B2519814(0, 0xE000000000000000, &v16);
      *(v15 + 12) = 2082;
      sub_1B2519814(v12, v11, &v16);
      OUTLINED_FUNCTION_167();
      *(v15 + 14) = v12;
      _os_log_impl(&dword_1B23EF000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    qword_1EB7EDF78 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256DE7C();
  }
}

uint64_t sub_1B24857A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v4 = type metadata accessor for SKLogger();
  v5 = __swift_project_value_buffer(v4, qword_1ED69A108);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1B256E4FC();

  OUTLINED_FUNCTION_39_2();
  v18 = v6;
  v19 = v7;
  v8 = sub_1B256EE7C();
  MEMORY[0x1B2749D50](v8);

  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD00000000000001CLL);
  v10 = v18;
  v9 = v19;
  v11 = sub_1B256E0CC();

  sub_1B256D5CC();
  OUTLINED_FUNCTION_154();

  if (os_log_type_enabled(v5, v11))
  {
    OUTLINED_FUNCTION_21_3();
    v18 = OUTLINED_FUNCTION_46_1();
    *v5 = 136446466;
    *(v5 + 4) = sub_1B2519814(0, 0xE000000000000000, &v18);
    OUTLINED_FUNCTION_74_0();
    sub_1B2519814(v10, v9, &v18);
    OUTLINED_FUNCTION_167();
    *(v5 + 14) = v10;
    OUTLINED_FUNCTION_113(&dword_1B23EF000, v5, v11, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  v12 = sub_1B256DDAC();
  OUTLINED_FUNCTION_108_0(v3, v13, v14, v12);
  OUTLINED_FUNCTION_43_0();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  OUTLINED_FUNCTION_107_0();
  sub_1B2484230();
  qword_1EB7EDF70 = v16;
}

uint64_t sub_1B24859EC()
{
  v0[8] = type metadata accessor for Storefront(0);
  v0[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30);
  v0[10] = swift_task_alloc();
  v0[11] = type metadata accessor for StorefrontInternal();
  v0[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E38);
  v0[13] = swift_task_alloc();
  type metadata accessor for Storefront.Storefronts.AsyncIterator(0);
  v0[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2485B48, 0, 0);
}

uint64_t sub_1B2485B48()
{
  OUTLINED_FUNCTION_24_5();
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v4 = sub_1B24D3E10();
  v5 = v1;

  OUTLINED_FUNCTION_90_0();

  v0[15] = v5;
  v0[6] = v4;
  v0[7] = v5;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1B2485C88;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DE98]();
}

void sub_1B2485C88()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_9_2();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1B2485DA8()
{
  OUTLINED_FUNCTION_4_0();
  _s8StoreKit10StorefrontV11StorefrontsV17makeAsyncIteratorAE0fG0VyF_0(*(v0 + 112));
  v1 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B2485E04()
{
  OUTLINED_FUNCTION_21_5();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40);
  v0[18] = sub_1B256E7AC();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C10);
  v2 = sub_1B248D0F8(&qword_1EB7CD958, &qword_1EB7D0C10);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[19] = v3;
  *v3 = v4;
  v3[1] = sub_1B2485F20;
  v5 = v0[10];

  return MEMORY[0x1EEE6D8C8](v5, v1, v2);
}

uint64_t sub_1B2485F20()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v3 + 144))();
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2486038()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[10];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[11]) == 1)
  {
    sub_1B248D228(v1, &qword_1EB7D0C30);
    OUTLINED_FUNCTION_108_0(v0[13], v2, v3, v0[8]);
    v4 = OUTLINED_FUNCTION_16_7();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_51_1();
    sub_1B248D284(v1, v7, v8);
    v9 = sub_1B256E7BC();
    v0[21] = v10;
    v16 = (v9 + *v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[22] = v11;
    *v11 = v12;
    v11[1] = sub_1B24861D4;
    v14 = v0[12];
    v13 = v0[13];

    return v16(v13, v14);
  }
}

uint64_t sub_1B24861D4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_60_1();
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24862EC()
{
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(*(v0 + 104), 0, 1, *(v0 + 64));
  v1 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B2486354()
{
  OUTLINED_FUNCTION_155();
  v1 = v0[13];
  v2 = OUTLINED_FUNCTION_59_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    v5 = v0[14];
    OUTLINED_FUNCTION_49_1();
    sub_1B248D1CC(v5, v6);

    OUTLINED_FUNCTION_14_7();
LABEL_5:

    return v7();
  }

  v8 = v0[20];
  sub_1B248D284(v1, v0[9], type metadata accessor for Storefront);
  sub_1B256DEAC();
  if (v8)
  {
    v9 = v0[14];
    v10 = v0[9];
    OUTLINED_FUNCTION_48_1();
    sub_1B248D1CC(v10, v11);
    OUTLINED_FUNCTION_49_1();
    sub_1B248D1CC(v9, v12);

    OUTLINED_FUNCTION_7_2();
    goto LABEL_5;
  }

  v14 = v0[9];
  v15 = objc_allocWithZone(SKStorefront);

  OUTLINED_FUNCTION_41_2();
  v16 = sub_1B248BC9C();
  v17 = [objc_opt_self() defaultQueue];
  [v17 notifyObserversForNewStorefront_];

  OUTLINED_FUNCTION_48_1();
  sub_1B248D1CC(v14, v18);
  v19 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1B248655C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30);
  v0[2] = swift_task_alloc();
  v0[3] = type metadata accessor for StorefrontInternal();
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2486624, 0, 0);
}

uint64_t sub_1B2486624()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDCF0 != -1)
  {
    swift_once();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_1B24866E8;

  return sub_1B247117C();
}

uint64_t sub_1B24866E8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24867CC()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_59_1();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    sub_1B248D228(v1, &qword_1EB7D0C30);
  }

  else
  {
    v5 = *(v0 + 32);
    OUTLINED_FUNCTION_51_1();
    sub_1B248D284(v1, v5, v6);
    objc_allocWithZone(SKStorefront);

    OUTLINED_FUNCTION_41_2();
    v7 = sub_1B248BC9C();
    v8 = [objc_opt_self() defaultQueue];
    [v8 notifyObserversForNewStorefront_];

    OUTLINED_FUNCTION_60_1();
  }

  OUTLINED_FUNCTION_14_7();

  return v9();
}

uint64_t sub_1B2486928(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B2486950()
{
  OUTLINED_FUNCTION_155();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v1, qword_1ED69A108);
  v7 = sub_1B24D3E10();
  v8 = v2;
  OUTLINED_FUNCTION_90_0();
  v0[5] = v8;
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v3 = v0[4];
  v0[2] = v7;
  v0[3] = v8;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B2486AD0;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DE98]();
}

void sub_1B2486AD0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_9_2();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1B2486C38()
{
  v32 = v0;
  sub_1B248C130(*(v0 + 32), &selRef_transactionIdentifier);
  *(v0 + 40) = v1;
  if (!v1)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v9 = *(v0 + 32);
    v10 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v10, qword_1ED69A108);
    sub_1B256E4FC();

    v30 = 0xD000000000000016;
    v31 = 0x80000001B258F350;
    v11 = [v9 description];
    v12 = sub_1B256D9BC();
    v14 = v13;

    MEMORY[0x1B2749D50](v12, v14);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000013);
    if (qword_1EB7CDA50 != -1)
    {
      OUTLINED_FUNCTION_3_14();
    }

    sub_1B256EE5C();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = sub_1B256E0AC();

    v18 = sub_1B256D5CC();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v19 = 136446466;
      OUTLINED_FUNCTION_39_2();
      v29 = v20;
      v30 = v21;
      v31 = v22;
      MEMORY[0x1B2749D50](v16, v15);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v30, v31, &v29);
      OUTLINED_FUNCTION_166();
      *(v19 + 4) = v16;
      *(v19 + 12) = 2082;
      v23 = OUTLINED_FUNCTION_35_0();
      v26 = sub_1B2519814(v23, v24, v25);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1B23EF000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_63_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X1, X16 }
  }

  v2 = [*(v0 + 32) payment];
  v3 = [v2 productIdentifier];

  sub_1B256D9BC();
  v5 = v4;

  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B2486FB0;
  OUTLINED_FUNCTION_114();

  return sub_1B24B8C38();
}

uint64_t sub_1B2486FB0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_14_7();

  return v3();
}

uint64_t sub_1B24870E8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B24871A8;

  return sub_1B2486928(v6);
}

uint64_t sub_1B24871A8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_9();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v9 = v8;

  if (v5)
  {
    v10 = *(v2 + 32);
    v10[2](v10);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_7_2();

  return v11();
}

uint64_t sub_1B24872EC()
{
  OUTLINED_FUNCTION_4_0();
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = sub_1B256DD6C();
  v1[14] = sub_1B256DD5C();
  OUTLINED_FUNCTION_120();
  v4 = sub_1B256DCEC();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2487380, v4, v3);
}

uint64_t sub_1B2487380()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B256DD5C();
  *(v0 + 136) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1B256DCEC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B2487410, v2, v4);
}

uint64_t sub_1B2487410()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v3 = OUTLINED_FUNCTION_128();
  sub_1B24876A8(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B24874AC()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_9();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[18] = v5;
  if (v5)
  {
    swift_willThrow();

    v6 = v2[15];
    v7 = v2[16];
    v8 = sub_1B248764C;
  }

  else
  {

    v2[19] = v2[10];
    v6 = v2[15];
    v7 = v2[16];
    v8 = sub_1B24875EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B24875EC()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_141();
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_1B248764C()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24876A8(uint64_t a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = [objc_opt_self() defaultBroker];
  v75 = sub_1B248BF48;
  v76 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = sub_1B244BD28;
  v74 = &block_descriptor_8;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 storeKitServiceWithErrorHandler_];
  _Block_release(v8);

  if (v9)
  {
    v67 = a3;
    v68 = v9;
    v70 = a2;
    v69 = a1;
    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 connectedScenes];

    sub_1B246063C(0, &qword_1EB7D0E20);
    sub_1B248BF68();
    v12 = sub_1B256DFBC();

    if ((v12 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B256E43C();
      sub_1B256DFEC();
      v13 = v77;
      v14 = v78;
      v15 = v79;
      v16 = v80;
      v17 = v81;
    }

    else
    {
      v26 = -1 << *(v12 + 32);
      v14 = v12 + 56;
      v15 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v17 = v28 & *(v12 + 56);

      v16 = 0;
      v13 = v12;
    }

    v66 = v15;
    v29 = (v15 + 64) >> 6;
    if (v13 < 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v30 = v16;
    v31 = v17;
    v32 = v16;
    if (!v17)
    {
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          goto LABEL_24;
        }

        v31 = *(v14 + 8 * v32);
        ++v30;
        if (v31)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_17:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v13 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (v34)
    {
      while ([v34 activationState])
      {

        v16 = v32;
        v17 = v33;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_19:
        if (sub_1B256E44C())
        {
          swift_dynamicCast();
          v34 = aBlock;
          v32 = v16;
          v33 = v17;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      sub_1B23FB6C4();

      v63 = [v34 _visibleWindows];
      sub_1B246063C(0, &qword_1EB7D0E30);
      v64 = sub_1B256DC5C();

      if (sub_1B24D0D24(v64))
      {
        sub_1B2463718(0, (v64 & 0xC000000000000001) == 0, v64);
        v36 = v70;
        if ((v64 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x1B274A7A0](0, v64);
        }

        else
        {
          v65 = *(v64 + 32);
        }

        v35 = v65;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_24:
      sub_1B23FB6C4();
      v34 = 0;
    }

    v35 = 0;
    v36 = v70;
LABEL_26:

    v37 = [v35 rootViewController];
    if (!v37)
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v38, qword_1ED69A108);
      aBlock = 0;
      v72 = 0xE000000000000000;
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0xD00000000000001FLL, 0x80000001B258F1B0);
      v39 = [v36 payment];
      v40 = [v39 productIdentifier];

      v41 = sub_1B256D9BC();
      v43 = v42;

      MEMORY[0x1B2749D50](v41, v43);

      MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B258F1D0);
      v45 = aBlock;
      v44 = v72;
      v46 = sub_1B256E0AC();

      v47 = sub_1B256D5CC();

      if (os_log_type_enabled(v47, v46))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136446466;
        *(v48 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
        *(v48 + 12) = 2082;
        v50 = sub_1B2519814(v45, v44, &aBlock);

        *(v48 + 14) = v50;
        _os_log_impl(&dword_1B23EF000, v47, v46, "%{public}s%{public}s", v48, 0x16u);
        swift_arrayDestroy();
        v51 = v49;
        v36 = v70;
        MEMORY[0x1B274BFF0](v51, -1, -1);
        MEMORY[0x1B274BFF0](v48, -1, -1);
      }

      else
      {
      }
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v67;
    *(v52 + 24) = v36;
    type metadata accessor for StoreKitPaymentDelegate();
    swift_allocObject();
    v53 = v67;
    v54 = v36;
    v55 = v37;
    v56 = sub_1B253D05C(v37, sub_1B248BFD0, v52);
    sub_1B2488464(v54);
    v57 = [v53 paymentQueueClient];
    v58 = sub_1B2489C5C(v57);

    type metadata accessor for SKPaymentOption(0);
    sub_1B248BF00(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption);
    v59 = sub_1B256D86C();

    if (v58)
    {
      type metadata accessor for SKClientOverridesKey(0);
      sub_1B248BF00(&qword_1EB7CFE48, type metadata accessor for SKClientOverridesKey);
      v60 = sub_1B256D86C();
    }

    else
    {
      v60 = 0;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v69;
    v75 = sub_1B248BFD8;
    v76 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1B248A62C;
    v74 = &block_descriptor_19_2;
    v62 = _Block_copy(&aBlock);

    [v68 processPayment:v59 forClient:v60 paymentDelegate:v56 reply:v62];
    _Block_release(v62);

    swift_unknownObjectRelease();
  }

  if (qword_1ED699E80 != -1)
  {
LABEL_41:
    swift_once();
  }

  v18 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v18, qword_1ED69A108);
  v19 = sub_1B256E0AC();
  v20 = sub_1B256D5CC();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1B2519814(0xD00000000000003CLL, 0x80000001B258F170, &aBlock);
    _os_log_impl(&dword_1B23EF000, v20, v19, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v22, -1, -1);
    MEMORY[0x1B274BFF0](v21, -1, -1);
  }

  type metadata accessor for SKError(0);
  v77 = 0;
  sub_1B25195E0(MEMORY[0x1E69E7CC0]);
  sub_1B248BF00(&qword_1EB7CFE38, type metadata accessor for SKError);
  sub_1B256D0BC();
  v23 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v24 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B2488144(void *a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000034, 0x80000001B258F2F0);
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
    v16[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v16);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(0, 0xE000000000000000, v16);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v13 = a1;
  v14 = a1;

  return swift_continuation_throwingResumeWithError();
}

id sub_1B24883C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_allocWithZone(SKStorefront);

  v6 = sub_1B248BC9C();
  v7 = [a2 shouldContinueTransaction:a3 inNewStorefront:v6];

  return v7;
}

uint64_t sub_1B2488464(void *a1)
{
  v206 = *MEMORY[0x1E69E9840];
  v2 = sub_1B256D3CC();
  v197 = *(v2 - 8);
  v198 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SKPaymentOption(0);
  v6 = v5;
  v200 = sub_1B248BF00(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption);
  v201 = v6;
  v7 = sub_1B256D8AC();
  v8 = SKPaymentOptionLegacyOfferName;
  v9 = [a1 payment];
  v10 = [v9 productIdentifier];

  v11 = sub_1B256D9BC();
  v13 = v12;

  v14 = MEMORY[0x1E69E6158];
  *(&v205 + 1) = MEMORY[0x1E69E6158];
  *&v204 = v11;
  *(&v204 + 1) = v13;
  sub_1B244AA0C(&v204, v203);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v202 = v7;
  sub_1B244A54C(v203, v8, isUniquelyReferenced_nonNull_native);

  v16 = v202;
  v17 = SKPaymentOptionLegacyQuantity;
  v18 = [a1 payment];
  v19 = [v18 quantity];

  *(&v205 + 1) = MEMORY[0x1E69E6530];
  *&v204 = v19;
  sub_1B244AA0C(&v204, v203);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v16;
  sub_1B244A54C(v203, v17, v20);

  v21 = v202;
  v22 = SKPaymentOptionLegacyRequestData;
  v23 = sub_1B248BFE0([a1 payment]);
  if (v24 >> 60 == 15)
  {
    v25 = sub_1B2458894(v22);
    if (v26)
    {
      v27 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v21 = *&v203[0];

      sub_1B244AA0C((*(v21 + 56) + 32 * v27), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  else
  {
    *(&v205 + 1) = MEMORY[0x1E6969080];
    *&v204 = v23;
    *(&v204 + 1) = v24;
    sub_1B244AA0C(&v204, v203);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v21;
    sub_1B244A54C(v203, v22, v28);

    v21 = v202;
  }

  v29 = SKPaymentOptionLegacySimulateAskToBuy;
  v30 = [a1 payment];
  v31 = [v30 simulatesAskToBuyInSandbox];

  *(&v205 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v204) = v31;
  sub_1B244AA0C(&v204, v203);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v21;
  sub_1B244A54C(v203, v29, v32);

  v33 = v202;
  v34 = SKPaymentOptionApplicationUsername;
  v35 = sub_1B248C050([a1 payment], &selRef_applicationUsername);
  if (v36)
  {
    *(&v205 + 1) = v14;
    *&v204 = v35;
    *(&v204 + 1) = v36;
    sub_1B244AA0C(&v204, v203);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v33;
    sub_1B244A54C(v203, v34, v37);

    v33 = v202;
  }

  else
  {
    v38 = sub_1B2458894(v34);
    if (v39)
    {
      v40 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v33 = *&v203[0];

      sub_1B244AA0C((*(v33 + 56) + 32 * v40), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v41 = SKPaymentOptionAdditionalBuyParams;
  v42 = sub_1B248C0BC([a1 payment], &selRef_requestParameters);
  if (v42)
  {
    v43 = v42;
    *(&v205 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A60);
    *&v204 = v43;
    sub_1B244AA0C(&v204, v203);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v33;
    sub_1B244A54C(v203, v41, v44);

    v33 = v202;
  }

  else
  {
    v45 = sub_1B2458894(v41);
    if (v46)
    {
      v47 = v45;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v33 = *&v203[0];

      sub_1B244AA0C((*(v33 + 56) + 32 * v47), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v48 = SKPaymentOptionLegacyIsStoreOriginated;
  v49 = [a1 payment];
  v50 = [v49 isStoreOriginated];

  *(&v205 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v204) = v50;
  sub_1B244AA0C(&v204, v203);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v33;
  sub_1B244A54C(v203, v48, v51);

  v52 = v202;
  v53 = SKPaymentOptionPartnerIdentifier;
  v54 = sub_1B248C050([a1 payment], &selRef_partnerIdentifier);
  if (v55)
  {
    *(&v205 + 1) = v14;
    *&v204 = v54;
    *(&v204 + 1) = v55;
    sub_1B244AA0C(&v204, v203);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v53, v56);

    v52 = v202;
  }

  else
  {
    v57 = sub_1B2458894(v53);
    if (v58)
    {
      v59 = v57;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v52 = *&v203[0];

      sub_1B244AA0C((*(v52 + 56) + 32 * v59), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v60 = SKPaymentOptionPartnerTransactionIdentifier;
  v61 = sub_1B248C050([a1 payment], &selRef_partnerTransactionIdentifier);
  if (v62)
  {
    *(&v205 + 1) = v14;
    *&v204 = v61;
    *(&v204 + 1) = v62;
    sub_1B244AA0C(&v204, v203);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v60, v63);

    v52 = v202;
  }

  else
  {
    v64 = sub_1B2458894(v60);
    if (v65)
    {
      v66 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v52 = *&v203[0];

      sub_1B244AA0C((*(v52 + 56) + 32 * v66), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v67 = SKPaymentOptionProductKind;
  v68 = sub_1B248C050([a1 payment], &selRef_productKind);
  if (v69)
  {
    *(&v205 + 1) = v14;
    *&v204 = v68;
    *(&v204 + 1) = v69;
    sub_1B244AA0C(&v204, v203);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v67, v70);

    v52 = v202;
  }

  else
  {
    v71 = sub_1B2458894(v67);
    if (v72)
    {
      v73 = v71;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v52 = *&v203[0];

      sub_1B244AA0C((*(v52 + 56) + 32 * v73), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v74 = SKPaymentOptionSubscriptionPeriod;
  v75 = [a1 payment];
  v76 = [v75 subscriptionPeriod];

  if (v76)
  {
    v77 = [v76 toISO8601String];

    v78 = sub_1B256D9BC();
    v80 = v79;

    *(&v205 + 1) = v14;
    *&v204 = v78;
    *(&v204 + 1) = v80;
    sub_1B244AA0C(&v204, v203);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v74, v81);

    v52 = v202;
  }

  else
  {
    v82 = sub_1B2458894(v74);
    if (v83)
    {
      v84 = v82;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203[0] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
      sub_1B256E80C();
      v52 = *&v203[0];

      sub_1B244AA0C((*(v52 + 56) + 32 * v84), &v204);
      sub_1B256E82C();
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }

    sub_1B248D228(&v204, &qword_1EB7D05F0);
  }

  v85 = [a1 payment];
  v86 = [v85 appleIDAuthorizationClientInfo];

  if (v86)
  {
    v87 = SKPaymentOptionSiWAClientIdentifier;
    v88 = [v86 clientIdentifier];
    v89 = sub_1B256D9BC();
    v91 = v90;

    *(&v205 + 1) = v14;
    *&v204 = v89;
    *(&v204 + 1) = v91;
    sub_1B244AA0C(&v204, v203);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v87, v92);

    v93 = v202;
    v94 = SKPaymentOptionSiWATeamIdentifier;
    v95 = [v86 teamIdentifier];
    v96 = sub_1B256D9BC();
    v98 = v97;

    *(&v205 + 1) = v14;
    *&v204 = v96;
    *(&v204 + 1) = v98;
    sub_1B244AA0C(&v204, v203);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v93;
    sub_1B244A54C(v203, v94, v99);

    v52 = v202;
    v100 = SKPaymentOptionSiWAServiceIdentifier;
    v101 = sub_1B248C130(v86, &selRef_serviceIdentifier);
    if (v102)
    {
      *(&v205 + 1) = v14;
      *&v204 = v101;
      *(&v204 + 1) = v102;
      sub_1B244AA0C(&v204, v203);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v52;
      sub_1B244A54C(v203, v100, v103);

      v52 = v202;
    }

    else
    {
      v104 = sub_1B2458894(v100);
      if (v105)
      {
        v106 = v104;
        swift_isUniquelyReferenced_nonNull_native();
        *&v203[0] = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
        sub_1B256E80C();
        v52 = *&v203[0];

        sub_1B244AA0C((*(v52 + 56) + 32 * v106), &v204);
        sub_1B256E82C();
      }

      else
      {
        v204 = 0u;
        v205 = 0u;
      }

      sub_1B248D228(&v204, &qword_1EB7D05F0);
    }
  }

  if (sub_1B248C0BC([a1 payment], &selRef_metricsOverlay))
  {
    v107 = SKPaymentOptionMetricsOverlayData;
    v108 = sub_1B248AAFC();
    v110 = v109;

    if (v110 >> 60 == 15)
    {
      v111 = sub_1B2458894(v107);
      if (v112)
      {
        v113 = v111;
        swift_isUniquelyReferenced_nonNull_native();
        *&v203[0] = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
        sub_1B256E80C();
        v52 = *&v203[0];

        sub_1B244AA0C((*(v52 + 56) + 32 * v113), &v204);
        sub_1B256E82C();
      }

      else
      {
        v204 = 0u;
        v205 = 0u;
      }

      sub_1B248D228(&v204, &qword_1EB7D05F0);
    }

    else
    {
      *(&v205 + 1) = MEMORY[0x1E6969080];
      *&v204 = v108;
      *(&v204 + 1) = v110;
      sub_1B244AA0C(&v204, v203);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v52;
      sub_1B244A54C(v203, v107, v114);

      v52 = v202;
    }
  }

  v115 = [a1 payment];
  v116 = [v115 paymentDiscount];

  if (v116)
  {
    v117 = SKPaymentOptionLegacyDiscountIdentifier;
    v118 = [v116 identifier];
    v119 = sub_1B256D9BC();
    v121 = v120;

    *(&v205 + 1) = v14;
    *&v204 = v119;
    *(&v204 + 1) = v121;
    sub_1B244AA0C(&v204, v203);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v52;
    sub_1B244A54C(v203, v117, v122);

    v123 = v202;
    v124 = SKPaymentOptionLegacyDiscountKeyIdentifier;
    v125 = [v116 keyIdentifier];
    v126 = sub_1B256D9BC();
    v128 = v127;

    *(&v205 + 1) = v14;
    *&v204 = v126;
    *(&v204 + 1) = v128;
    sub_1B244AA0C(&v204, v203);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v123;
    sub_1B244A54C(v203, v124, v129);

    v130 = v202;
    v131 = SKPaymentOptionLegacyDiscountNonce;
    v132 = [v116 nonce];
    sub_1B256D3AC();

    sub_1B256D38C();
    (*(v197 + 8))(v4, v198);
    v133 = sub_1B256DA0C();
    v135 = v134;

    *(&v205 + 1) = v14;
    *&v204 = v133;
    *(&v204 + 1) = v135;
    sub_1B244AA0C(&v204, v203);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v130;
    sub_1B244A54C(v203, v131, v136);

    v137 = v202;
    v138 = SKPaymentOptionLegacyDiscountSignature;
    v139 = [v116 signature];
    v140 = sub_1B256D9BC();
    v142 = v141;

    *(&v205 + 1) = v14;
    *&v204 = v140;
    *(&v204 + 1) = v142;
    sub_1B244AA0C(&v204, v203);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v137;
    sub_1B244A54C(v203, v138, v143);

    v144 = v202;
    v145 = SKPaymentOptionLegacyDiscountTimestamp;
    v146 = [v116 timestamp];
    *(&v205 + 1) = sub_1B246063C(0, &qword_1EB7CD4F8);
    *&v204 = v146;
    sub_1B244AA0C(&v204, v203);
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v144;
    sub_1B244A54C(v203, v145, v147);

    v52 = v202;
  }

  v148 = MEMORY[0x1E69E6370];
  v149 = SKPaymentOptionExemptedRequestData;
  v150 = _DYLDProgramIOSSDKAtLeast12_2();
  *(&v205 + 1) = v148;
  LOBYTE(v204) = v150 ^ 1;
  sub_1B244AA0C(&v204, v203);
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v52;
  sub_1B244A54C(v203, v149, v151);

  v152 = v202;
  v153 = [v199 paymentQueueClient];
  if (v153)
  {
    v154 = v153;
    v155 = SKPaymentOptionHideConfirmation;
    v156 = [v154 hidesConfirmationDialogs];
    *(&v205 + 1) = v148;
    LOBYTE(v204) = v156;
    sub_1B244AA0C(&v204, v203);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v152;
    sub_1B244A54C(v203, v155, v157);

    v158 = v202;
    v159 = SKPaymentOptionIgnoreRestrictions;
    v160 = [v154 ignoresInAppPurchaseRestriction];
    *(&v205 + 1) = v148;
    LOBYTE(v204) = v160;
    sub_1B244AA0C(&v204, v203);
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v158;
    sub_1B244A54C(v203, v159, v161);

    v162 = v202;
    v163 = SKPaymentOptionRequireAuthentication;
    v164 = [v154 requiresAuthenticationForPayment];
    *(&v205 + 1) = v148;
    LOBYTE(v204) = v164;
    sub_1B244AA0C(&v204, v203);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v162;
    sub_1B244A54C(v203, v163, v165);

    v152 = v202;
    v166 = sub_1B24962DC(v154);
    if (v167)
    {
      v168 = v166;
      v169 = v167;
      sub_1B256DA3C();
      v170 = sandbox_extension_issue_file();

      if (v170 && strlen(v170) > 0)
      {
        v171 = [objc_opt_self() defaultManager];
        v172 = sub_1B256D98C();
        *&v204 = 0;
        v173 = [v171 createDirectoryAtPath:v172 withIntermediateDirectories:1 attributes:0 error:&v204];

        v174 = v204;
        if (v173)
        {
          v175 = SKPaymentOptionReceiptDirectoryPath;
          *(&v205 + 1) = v14;
          *&v204 = v168;
          *(&v204 + 1) = v169;
          sub_1B244AA0C(&v204, v203);
          v176 = v175;
          v177 = v174;
          v178 = swift_isUniquelyReferenced_nonNull_native();
          v202 = v152;
          sub_1B244A54C(v203, v176, v178);

          v152 = v202;
          v179 = SKPaymentOptionReceiptDirectorySandboxToken;
          v180 = sub_1B256D97C();
          if (v181)
          {
            *(&v205 + 1) = v14;
            *&v204 = v180;
            *(&v204 + 1) = v181;
            sub_1B244AA0C(&v204, v203);
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v202 = v152;
            sub_1B244A54C(v203, v179, v182);

            v152 = v202;
          }

          else
          {
            v192 = sub_1B2458894(v179);
            if (v193)
            {
              v194 = v192;
              swift_isUniquelyReferenced_nonNull_native();
              *&v203[0] = v152;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418);
              sub_1B256E80C();
              v152 = *&v203[0];

              sub_1B244AA0C((*(v152 + 56) + 32 * v194), &v204);
              sub_1B256E82C();
            }

            else
            {
              v204 = 0u;
              v205 = 0u;
            }

            sub_1B248D228(&v204, &qword_1EB7D05F0);
          }
        }

        else
        {
          v183 = v204;

          v184 = sub_1B256D0DC();

          swift_willThrow();
          if (qword_1ED699E80 != -1)
          {
            swift_once();
          }

          v185 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v185, qword_1ED69A108);
          *&v204 = 0;
          *(&v204 + 1) = 0xE000000000000000;
          sub_1B256E4FC();
          MEMORY[0x1B2749D50](0xD00000000000002BLL, 0x80000001B258F260);
          *&v203[0] = v184;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
          sub_1B256E78C();
          v186 = v204;
          v187 = sub_1B256E0AC();

          v188 = sub_1B256D5CC();

          if (os_log_type_enabled(v188, v187))
          {
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v204 = v190;
            *v189 = 136446466;
            *(v189 + 4) = sub_1B2519814(0, 0xE000000000000000, &v204);
            *(v189 + 12) = 2082;
            v191 = sub_1B2519814(v186, *(&v186 + 1), &v204);

            *(v189 + 14) = v191;
            _os_log_impl(&dword_1B23EF000, v188, v187, "%{public}s%{public}s", v189, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B274BFF0](v190, -1, -1);
            MEMORY[0x1B274BFF0](v189, -1, -1);
          }

          else
          {
          }
        }

        MEMORY[0x1B274BFF0](v170, -1, -1);
      }

      else
      {
      }
    }
  }

  return v152;
}

uint64_t sub_1B2489C5C(void *a1)
{
  type metadata accessor for SKClientOverridesKey(0);
  sub_1B248BF00(&qword_1EB7CFE48, type metadata accessor for SKClientOverridesKey);
  v2 = sub_1B256D8AC();
  v3 = SKClientOverridesKeyRequestBundleID;
  v4 = MEMORY[0x1E69E6158];
  v5 = &unk_1EB7CE000;
  if (a1)
  {
    v6 = SKClientOverridesKeyRequestBundleID;
    v7 = sub_1B2496300(a1);
    if (v8)
    {
      v57 = v4;
      *&v56 = v7;
      *(&v56 + 1) = v8;
      sub_1B244AA0C(&v56, &v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B244A588(&v54, v6, isUniquelyReferenced_nonNull_native);

      v10 = SKClientOverridesKeyRequestBundleVersion;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = SKClientOverridesKeyRequestBundleID;
  }

  v12 = sub_1B2458894(v3);
  if (v13)
  {
    v14 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
    v5 = &unk_1EB7CE000;
    sub_1B256E80C();

    sub_1B244AA0C((*(v2 + 56) + 32 * v14), &v54);
    sub_1B256E82C();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  sub_1B248D228(&v54, &qword_1EB7D05F0);
  v10 = v5[257];
  if (!a1)
  {
    v15 = v10;
    goto LABEL_12;
  }

LABEL_9:
  v15 = v10;
  v16 = sub_1B24962F4(a1);
  if (v17)
  {
    v57 = v4;
    *&v56 = v16;
    *(&v56 + 1) = v17;
    sub_1B244AA0C(&v56, &v54);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B244A588(&v54, v15, v18);

    v19 = SKClientOverridesKeyServer;
    goto LABEL_16;
  }

LABEL_12:
  v20 = sub_1B2458894(v15);
  if (v21)
  {
    v22 = v20;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
    sub_1B256E80C();

    sub_1B244AA0C((*(v2 + 56) + 32 * v22), &v54);
    sub_1B256E82C();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  sub_1B248D228(&v54, &qword_1EB7D05F0);
  v19 = SKClientOverridesKeyServer;
  if (!a1)
  {
    v31 = SKClientOverridesKeyServer;
    v32 = sub_1B2458894(v31);
    if (v33)
    {
      v34 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
      sub_1B256E80C();

      sub_1B244AA0C((*(v2 + 56) + 32 * v34), &v54);
      sub_1B256E82C();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    sub_1B248D228(&v54, &qword_1EB7D05F0);
    v26 = SKClientOverridesKeyStoreItemID;
    goto LABEL_22;
  }

LABEL_16:
  v23 = v19;
  v24 = [a1 environmentType];
  v57 = MEMORY[0x1E69E6530];
  *&v56 = v24;
  sub_1B244AA0C(&v56, &v54);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B244A588(&v54, v23, v25);

  v26 = SKClientOverridesKeyStoreItemID;
  v27 = [a1 storeItemIdentifier];
  if (v27)
  {
    v28 = v27;
    v57 = sub_1B246063C(0, &qword_1EB7CD4F8);
    *&v56 = v28;
    sub_1B244AA0C(&v56, &v54);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B244A588(&v54, v26, v29);

    v30 = SKClientOverridesKeyStoreExternalVersion;
    goto LABEL_26;
  }

LABEL_22:
  v35 = sub_1B2458894(v26);
  if (v36)
  {
    v37 = v35;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
    sub_1B256E80C();

    sub_1B244AA0C((*(v2 + 56) + 32 * v37), &v54);
    sub_1B256E82C();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  sub_1B248D228(&v54, &qword_1EB7D05F0);
  v30 = SKClientOverridesKeyStoreExternalVersion;
  if (!a1)
  {
    v38 = SKClientOverridesKeyStoreExternalVersion;
    goto LABEL_29;
  }

LABEL_26:
  v38 = v30;
  v39 = [a1 storeExternalVersion];
  if (v39)
  {
    v40 = v39;
    v57 = sub_1B246063C(0, &qword_1EB7CD4F8);
    *&v56 = v40;
    sub_1B244AA0C(&v56, &v54);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B244A588(&v54, v38, v41);

    v42 = SKClientOverridesKeyVendorID;
    goto LABEL_33;
  }

LABEL_29:
  v43 = sub_1B2458894(v38);
  if (v44)
  {
    v45 = v43;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
    sub_1B256E80C();

    sub_1B244AA0C((*(v2 + 56) + 32 * v45), &v54);
    sub_1B256E82C();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  sub_1B248D228(&v54, &qword_1EB7D05F0);
  v42 = SKClientOverridesKeyVendorID;
  if (!a1)
  {
    v46 = SKClientOverridesKeyVendorID;
    goto LABEL_36;
  }

LABEL_33:
  v46 = v42;
  v47 = sub_1B24962E8(a1);
  if (v48)
  {
    v57 = v4;
    *&v56 = v47;
    *(&v56 + 1) = v48;
    sub_1B244AA0C(&v56, &v54);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B244A588(&v54, v46, v49);

    return v2;
  }

LABEL_36:
  v50 = sub_1B2458894(v46);
  if (v51)
  {
    v52 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410);
    sub_1B256E80C();

    sub_1B244AA0C((*(v2 + 56) + 32 * v52), &v54);
    sub_1B256E82C();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  sub_1B248D228(&v54, &qword_1EB7D05F0);
  return v2;
}

uint64_t sub_1B248A49C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a1)
  {
    **(*(a3 + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    type metadata accessor for SKError(0);
    sub_1B25195E0(MEMORY[0x1E69E7CC0]);
    sub_1B248BF00(&qword_1EB7CFE38, type metadata accessor for SKError);
    sub_1B256D0BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v7 = v8;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B248A62C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for SKServerKey(0);
    OUTLINED_FUNCTION_54_1();
    sub_1B248BF00(v6, v7);
    v4 = sub_1B256D87C();
  }

  v8 = a3;
  v5(v4, a3);
}

uint64_t sub_1B248A718(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_71_0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_22_1();

  return sub_1B251DDF8(v10, v11);
}

uint64_t sub_1B248A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1B256DD6C();
  v3[5] = sub_1B256DD5C();
  v5 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B248A82C, v5, v4);
}

uint64_t sub_1B248A82C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B248A8EC;

  return sub_1B24872EC();
}

uint64_t sub_1B248A8EC()
{
  OUTLINED_FUNCTION_24_5();
  v2 = v0;
  OUTLINED_FUNCTION_6_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_9();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v11 = v10;

  if (v0)
  {
    if (v7)
    {
      v12 = *(v4 + 48);
      v13 = sub_1B256D0CC();

      v12[2](v12, 0, v13);
      v14 = v12;
LABEL_6:
      _Block_release(v14);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v15 = *(v4 + 48);
      type metadata accessor for SKServerKey(0);
      OUTLINED_FUNCTION_54_1();
      sub_1B248BF00(v16, v17);
      v13 = sub_1B256D86C();

      v15[2](v15, v13, 0);
      v14 = v15;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_7_2();

  return v18();
}

uint64_t sub_1B248AAFC()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1B256D86C();
  v2 = [v0 isValidJSONObject_];

  if (!v2)
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_1ED69A108);
    v8 = sub_1B256E0AC();
    v9 = sub_1B256D5CC();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, &v23);
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_1B2519814(0xD00000000000002ALL, 0x80000001B258F290, &v23);
      _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v11, -1, -1);
      MEMORY[0x1B274BFF0](v10, -1, -1);
    }

    return 0;
  }

  v3 = sub_1B256D86C();
  v23 = 0;
  v4 = [v0 dataWithJSONObject:v3 options:0 error:&v23];

  v5 = v23;
  if (!v4)
  {
    v13 = v5;
    v14 = sub_1B256D0DC();

    swift_willThrow();
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B258F2C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v17 = v23;
    v16 = v24;
    v18 = sub_1B256E0AC();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_1B2519814(0, 0xE000000000000000, &v23);
      *(v20 + 12) = 2082;
      v22 = sub_1B2519814(v17, v16, &v23);

      *(v20 + 14) = v22;
      _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v21, -1, -1);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v6 = sub_1B256D22C();

  return v6;
}

void SKPaymentQueue.forceSandbox(forBundleIdentifier:until:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1B256D67C();
  OUTLINED_FUNCTION_1_1();
  v80 = v7;
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v76 = (v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B256D6FC();
  OUTLINED_FUNCTION_1_1();
  v78 = v10;
  v79 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v68 - v13;
  v14 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v73 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v69 = v17;
  v71 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v18);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v72 = v68 - v20;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v21 = type metadata accessor for SKLogger();
  v22 = __swift_project_value_buffer(v21, qword_1ED69A108);
  v85 = sub_1B24D3E10();
  v24 = v23;
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1B256E4FC();

  v88 = 0xD000000000000014;
  v89 = 0x80000001B258F090;
  v86 = v5;
  v82 = v3;
  MEMORY[0x1B2749D50](v5, v3);
  MEMORY[0x1B2749D50](0x206C69746E7520, 0xE700000000000000);
  OUTLINED_FUNCTION_15_8();
  v70 = sub_1B248BF00(v25, v26);
  v27 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v27);

  v29 = v88;
  v28 = v89;

  v30 = sub_1B256E0CC();

  v77 = v22;
  v31 = sub_1B256D5CC();

  v83 = v24;

  v32 = os_log_type_enabled(v31, v30);
  v84 = v1;
  if (v32)
  {
    v33 = v14;
    v34 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_20_4();
    *v34 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v37 = OUTLINED_FUNCTION_151(v35, v36);
    MEMORY[0x1B2749D50](v37, v83);
    OUTLINED_FUNCTION_94_0();
    v38 = v89;
    v39 = sub_1B2519814(v88, v89, &v87);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    sub_1B2519814(v29, v28, &v87);
    OUTLINED_FUNCTION_154();

    *(v34 + 14) = v38;
    _os_log_impl(&dword_1B23EF000, v31, v30, "%{public}s%{public}s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_1();
    v14 = v33;
    v1 = v84;
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v40 = dispatch_semaphore_create(0);
  v41 = v72;
  sub_1B256DD8C();
  v42 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  v43 = v73;
  v44 = v71;
  (*(v73 + 16))(v71, v1, v14);
  v45 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v46 = (v69 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  v68[1] = v14;
  v48 = v82;
  *(v47 + 4) = v86;
  *(v47 + 5) = v48;
  (*(v43 + 32))(&v47[v45], v44, v14);
  v49 = &v47[v46];
  v50 = v83;
  *v49 = v85;
  v49[1] = v50;
  *&v47[(v46 + 23) & 0xFFFFFFFFFFFFFFF8] = v40;

  v51 = v40;
  OUTLINED_FUNCTION_107_0();
  sub_1B247DAA8();

  sub_1B256D6DC();
  v52 = v76;
  *v76 = 5;
  v54 = v80;
  v53 = v81;
  (*(v80 + 104))(v52, *MEMORY[0x1E69E7F48], v81);
  sub_1B256D6EC();
  (*(v54 + 8))(v52, v53);
  v55 = *(v78 + 8);
  v56 = OUTLINED_FUNCTION_103_0();
  v55(v56);
  v81 = v51;
  LOBYTE(v53) = sub_1B256E1DC();
  v57 = OUTLINED_FUNCTION_35_0();
  v55(v57);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1B256E4FC();
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000012);
  MEMORY[0x1B2749D50](v86, v48);
  MEMORY[0x1B2749D50](0x206C69746E7520, 0xE700000000000000);
  v58 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v58);

  MEMORY[0x1B2749D50](0x3A746C7573657220, 0xE900000000000020);
  LOBYTE(v87) = v53 & 1;
  sub_1B256E78C();
  v59 = v88;
  v60 = v89;
  v61 = sub_1B256E0CC();

  v62 = sub_1B256D5CC();

  if (os_log_type_enabled(v62, v61))
  {
    v63 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_20_4();
    *v63 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v66 = OUTLINED_FUNCTION_151(v64, v65);
    MEMORY[0x1B2749D50](v66, v50);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v88, v89, &v87);
    OUTLINED_FUNCTION_166();
    *(v63 + 4) = v51;
    *(v63 + 12) = 2082;
    v67 = sub_1B2519814(v59, v60, &v87);

    *(v63 + 14) = v67;
    _os_log_impl(&dword_1B23EF000, v62, v61, "%{public}s%{public}s", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B248B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[5] = a7;
  v9 = swift_task_alloc();
  v8[8] = v9;
  *v9 = v8;
  v9[1] = sub_1B248B810;

  return static AppStore.forceSandbox(forBundleID:until:)();
}

uint64_t sub_1B248B810()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B248B90C()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B256E1EC();
  OUTLINED_FUNCTION_7_2();

  return v0();
}

id sub_1B248BC9C()
{
  v1 = sub_1B256D98C();

  v2 = sub_1B256D98C();

  v3 = [v0 initWithIdentifier:v1 countryCode:v2];

  return v3;
}

uint64_t sub_1B248BD24()
{
  OUTLINED_FUNCTION_126();
  sub_1B256D36C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_115();

  return sub_1B248B750(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B248BE68()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_80_0(v1);

  return v3(v2);
}

uint64_t sub_1B248BF00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B248BF68()
{
  result = qword_1EB7D0E28;
  if (!qword_1EB7D0E28)
  {
    sub_1B246063C(255, &qword_1EB7D0E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0E28);
  }

  return result;
}

uint64_t sub_1B248BFE0(void *a1)
{
  v2 = [a1 requestData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B256D22C();

  return v3;
}

uint64_t sub_1B248C050(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B256D9BC();

  return v4;
}

uint64_t sub_1B248C0BC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B256D87C();

  return v4;
}

uint64_t sub_1B248C130(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1B256D9BC();
  }

  return OUTLINED_FUNCTION_22_1();
}

uint64_t objectdestroy_3Tm()
{
  _Block_release(*(v0 + 24));

  v1 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B248C1CC()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_80_0(v1);

  return v3(v2);
}

uint64_t sub_1B248C264()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_10(v3);

  return sub_1B2486C18(v5, v1);
}

uint64_t sub_1B248C2F0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_11_10();

  return sub_1B24859EC();
}

uint64_t sub_1B248C384()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_13(v1);

  return sub_1B2484F38(v3, v4, v5, v6);
}

uint64_t sub_1B248C438()
{
  OUTLINED_FUNCTION_24_5();
  v2 = sub_1B256D3CC();
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_7_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_8(v3);
  *v4 = v5;
  v4[1] = sub_1B24741E0;
  v6 = OUTLINED_FUNCTION_11_10();

  return sub_1B247F13C(v6, v7, v0, v1, v8);
}

uint64_t sub_1B248C514()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1B24841A0();
}

uint64_t sub_1B248C5A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B248C694;

  return v5(v2 + 32);
}

uint64_t sub_1B248C694()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_9();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_14_7();

  return v8();
}

uint64_t sub_1B248C7A8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1B24841A0();
}

uint64_t sub_1B248C834(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1B248C928;

  return v5(v2 + 16);
}

uint64_t sub_1B248C928()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1B248CA4C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1B248D448;

  return v5(v2 + 16);
}

uint64_t sub_1B248CB40()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B248CBD0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B248CC60()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B248CCF0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B248CD80()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_50_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t objectdestroy_45Tm()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = OUTLINED_FUNCTION_2_10();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v4, v2 | 7);
}

uint64_t objectdestroy_48Tm()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_2_10();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 40) & ~v2) + v4, v2 | 7);
}

uint64_t sub_1B248D01C()
{
  OUTLINED_FUNCTION_24_5();
  v2 = sub_1B256D3CC();
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_7_7();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_8(v3);
  *v4 = v5;
  v4[1] = sub_1B2445514;
  v6 = OUTLINED_FUNCTION_11_10();

  return sub_1B247F0C4(v6, v7, v0, v1, v8);
}

uint64_t sub_1B248D0F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B248D140()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1B248444C();
}

uint64_t sub_1B248D1CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_57_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B248D228(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_57_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B248D284(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_57_1();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B248D2E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_57_1();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_71_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B248D37C()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1B2484110();
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_1B248D1CC(v0, type metadata accessor for PurchaseIntentRequest.Query);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2)
{

  return sub_1B248D284(a1, a2, type metadata accessor for PurchaseIntentInternal);
}

uint64_t OUTLINED_FUNCTION_17_6()
{
}

char *OUTLINED_FUNCTION_20_6@<X0>(unint64_t a1@<X8>)
{

  return sub_1B2455BD8((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_21_6@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1B2479E30(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_26_3()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_27_3()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

void OUTLINED_FUNCTION_40_2(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

void OUTLINED_FUNCTION_44_1()
{

  JUMPOUT(0x1B274BFF0);
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return sub_1B248D1CC(v0, type metadata accessor for StorefrontInternal);
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1B248D1CC(v0, type metadata accessor for Product);
}

void OUTLINED_FUNCTION_62_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + a1) = v4;
  *(v5 + v6[8]) = v4;
  v7 = (v5 + v6[9]);
  *v7 = a4;
  v7[1] = a3;
  *(v5 + v6[10]) = 0;
}

void OUTLINED_FUNCTION_63_0()
{

  JUMPOUT(0x1B274BFF0);
}

unint64_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a17;
  v20 = a18;

  return sub_1B2519814(v19, v20, &a16);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_67_0()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_77_0()
{
  v4 = v1 + *(v2 + 20);
  *v4 = v3;
  *(v4 + 8) = 0;
  *(v1 + *(v2 + 24)) = v0;
}

unint64_t OUTLINED_FUNCTION_82_0()
{

  return sub_1B2455488();
}

unint64_t OUTLINED_FUNCTION_83_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 4) = v3;
  *(v2 + 12) = 2082;

  return sub_1B2519814(0xD000000000000013, a2 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_90_0()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 + *(v16 + 24)) = v17;
  v20 = (v15 + *(v16 + 28));
  *v20 = a15;
  v20[1] = v18;
}

void OUTLINED_FUNCTION_94_0()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_95_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_96_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_101_0()
{
  *(v0 + 32) = 61;
  *(v0 + 40) = 0xE100000000000000;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_108_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_109_0()
{
  *(v0 + 16) = 38;
  *(v0 + 24) = 0xE100000000000000;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_110_0()
{
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  return sub_1B2443AE4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_113(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_116()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_117(uint64_t result, uint64_t a2)
{
  *(v2 + 264) = result;
  *(v2 + 272) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_127()
{
  v3 = *(v0 + 64);
  *(v1 - 120) = *(v0 + 56);
  *(v1 - 112) = v3;
}

uint64_t OUTLINED_FUNCTION_128()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_130_0()
{

  sub_1B2455DC0();
}

unint64_t OUTLINED_FUNCTION_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1B2519814(0xD00000000000003ALL, v7 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_1B256D01C();
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_1B256DCEC();
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_135(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_137()
{
  *(v1 + 256) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_1B256DA3C();
}

uint64_t OUTLINED_FUNCTION_145(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_151@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 112) = a1;
  *(v3 - 104) = a2;
  *(v3 - 96) = v2;
  return *(v3 - 128);
}

uint64_t OUTLINED_FUNCTION_160()
{
}

uint64_t OUTLINED_FUNCTION_161(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 16) = a12;
}

uint64_t OUTLINED_FUNCTION_162()
{

  return sub_1B256DDEC();
}

void OUTLINED_FUNCTION_163(uint64_t a1)
{

  sub_1B2445F00(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_164()
{
}

uint64_t OUTLINED_FUNCTION_165()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_166()
{
}

uint64_t OUTLINED_FUNCTION_167()
{
}

uint64_t sub_1B248E288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F429C();
  *a1 = result;
  return result;
}

uint64_t sub_1B248E2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B23F42E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B248E2EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F429C();
  *a1 = result;
  return result;
}

uint64_t sub_1B248E314(uint64_t a1)
{
  v2 = sub_1B248F750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B248E350(uint64_t a1)
{
  v2 = sub_1B248F750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B248E38C(void *a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EF8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B248F750();
  OUTLINED_FUNCTION_8_11();
  LOBYTE(v17[0]) = 1;
  OUTLINED_FUNCTION_2_19();
  if (v1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_2_19();
  LOBYTE(v17[0]) = 2;
  OUTLINED_FUNCTION_2_19();
  v7 = objc_opt_self();
  v8 = sub_1B256D86C();
  v17[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v17];

  v10 = v17[0];
  if (!v9)
  {
    v16 = v10;
    sub_1B256D0DC();

    swift_willThrow();
LABEL_3:
    v4 = OUTLINED_FUNCTION_4_10();
    return v5(v4);
  }

  v11 = sub_1B256D22C();
  v13 = v12;

  v17[0] = v11;
  v17[1] = v13;
  sub_1B2443C2C();
  sub_1B256EA5C();
  v14 = OUTLINED_FUNCTION_4_10();
  v15(v14);
  return sub_1B2443AE4(v11, v13);
}

uint64_t sub_1B248E5EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1B256E57C();
  OUTLINED_FUNCTION_1_1();
  v43 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0F00);
  OUTLINED_FUNCTION_1_1();
  v44 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1B248F750();
  sub_1B256EDBC();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v13;
  v46 = v8;
  v14 = OUTLINED_FUNCTION_9_12();
  v17 = v16;
  v38 = v14;
  v18 = OUTLINED_FUNCTION_9_12();
  v39 = v19;
  v36 = v18;
  LOBYTE(v48[0]) = 2;
  v20 = sub_1B256E97C();
  v37 = v21;
  LOBYTE(v47) = 3;
  sub_1B24439BC();
  sub_1B256E9AC();
  v32 = v20;
  v34 = v12;
  v35 = v9;
  v23 = v48[0];
  v22 = v48[1];
  v24 = objc_opt_self();
  v33 = v23;
  v25 = sub_1B256D1FC();
  v48[0] = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:v48];

  if (v26)
  {
    v27 = v48[0];
    sub_1B256E3DC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A60);
    if (swift_dynamicCast())
    {
      (*(v44 + 8))(v34, v35);
      sub_1B2443AE4(v33, v22);

      __swift_destroy_boxed_opaque_existential_1(a1);

      *a2 = v38;
      a2[1] = v17;
      a2[2] = v36;
      a2[3] = v39;
      a2[4] = v32;
      a2[5] = v37;
      a2[6] = v47;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1980);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B2578530;
    *(v29 + 56) = &type metadata for ProductPageLookupRequest.ParameterRequest.CodingKeys;
    *(v29 + 64) = v40;
    *(v29 + 32) = 3;
    sub_1B256E54C();
    v30 = sub_1B256E58C();
    swift_allocError();
    v41 = v31;
    (*(v43 + 16))(v31, v46, v3);
    (*(*(v30 - 8) + 104))(v41, *MEMORY[0x1E69E6B00], v30);
    swift_willThrow();
    sub_1B2443AE4(v33, v22);
    (*(v43 + 8))(v46, v3);
  }

  else
  {
    v28 = v48[0];
    sub_1B256D0DC();

    swift_willThrow();
    sub_1B2443AE4(v33, v22);
  }

  (*(v44 + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_1B248EB80@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B248E5EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1B248EBE8()
{
  v0 = sub_1B256CEEC();
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v16[0] = sub_1B256D10C();
  v16[1] = v9;
  sub_1B256CECC();
  sub_1B256CEDC();
  v10 = *(v2 + 8);
  v10(v8, v0);
  sub_1B243E6F8();
  v11 = sub_1B256E34C();
  v13 = v12;
  v10(v6, v0);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  return v11;
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

uint64_t sub_1B248ED74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B248EDB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for ProductPageLookupRequest.URLRequest()
{
  result = qword_1EB7D0ED8;
  if (!qword_1EB7D0ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B248EE84()
{
  result = sub_1B256D14C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B248EF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69666F725079656BLL && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

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

uint64_t sub_1B248F06C(char a1)
{
  result = 0x49746375646F7270;
  switch(a1)
  {
    case 1:
      result = 0x79654B676F6CLL;
      break;
    case 2:
      result = 0x69666F725079656BLL;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B248F0EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EE8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B248F6FC();
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_6_9();
  if (!v1)
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_6_9();
    type metadata accessor for ProductPageLookupRequest.URLRequest();
    sub_1B256D14C();
    sub_1B248F7A4(&qword_1EB7D0D70);
    sub_1B256EA5C();
  }

  v4 = OUTLINED_FUNCTION_4_10();
  return v5(v4);
}

uint64_t sub_1B248F294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1B256D14C();
  OUTLINED_FUNCTION_1_1();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0F08);
  OUTLINED_FUNCTION_1_1();
  v30 = v10;
  v31 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B248F6FC();
  v32 = v13;
  v18 = v33;
  sub_1B256EDBC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v33 = v3;
  v37 = 0;
  *v17 = sub_1B256E97C();
  v17[1] = v20;
  v36 = 1;
  v17[2] = sub_1B256E97C();
  v17[3] = v21;
  v35 = 2;
  v27[1] = 0;
  v17[4] = sub_1B256E97C();
  v17[5] = v22;
  v34 = 3;
  sub_1B248F7A4(&qword_1EB7D0D40);
  v27[0] = v8;
  v23 = v33;
  sub_1B256E9AC();
  v24 = OUTLINED_FUNCTION_1_19();
  v25(v24);
  (*(v28 + 32))(v17 + *(v14 + 28), v27[0], v23);
  sub_1B248F7E8(v17, v29);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1B248F84C(v17);
}

uint64_t sub_1B248F62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B248EF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B248F654(uint64_t a1)
{
  v2 = sub_1B248F6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B248F690(uint64_t a1)
{
  v2 = sub_1B248F6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B248F6FC()
{
  result = qword_1EB7D0EF0;
  if (!qword_1EB7D0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0EF0);
  }

  return result;
}

unint64_t sub_1B248F750()
{
  result = qword_1EB7CD320;
  if (!qword_1EB7CD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD320);
  }

  return result;
}

uint64_t sub_1B248F7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B256D14C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B248F7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B248F84C(uint64_t a1)
{
  v2 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1B248F8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B248F9A8()
{
  result = qword_1EB7D0F10;
  if (!qword_1EB7D0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0F10);
  }

  return result;
}

unint64_t sub_1B248FA00()
{
  result = qword_1EB7D0F18;
  if (!qword_1EB7D0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0F18);
  }

  return result;
}

unint64_t sub_1B248FA58()
{
  result = qword_1EB7CD310;
  if (!qword_1EB7CD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD310);
  }

  return result;
}

unint64_t sub_1B248FAB0()
{
  result = qword_1EB7CD318;
  if (!qword_1EB7CD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD318);
  }

  return result;
}

unint64_t sub_1B248FB08()
{
  result = qword_1EB7D0F20;
  if (!qword_1EB7D0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0F20);
  }

  return result;
}

unint64_t sub_1B248FB60()
{
  result = qword_1EB7D0F28[0];
  if (!qword_1EB7D0F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7D0F28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return sub_1B256EA2C();
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_1B256EA2C();
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return sub_1B256EDFC();
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_1B256E97C();
}

uint64_t sub_1B248FC6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B248FD14()
{
  sub_1B256ED3C();
  sub_1B23FB5C8();
  return sub_1B256ED7C();
}

uint64_t sub_1B248FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B248FC6C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B248FDB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24419E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B248FDE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B248FE34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B248FE88(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a3;
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1B256EA7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDFC();
  sub_1B256EA5C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B248FFF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v23 = *(a2 - 8);
  v24 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwiftXPCCoding.TopLevelContainer.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1B256E9DC();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SwiftXPCCoding.TopLevelContainer();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v26;
  sub_1B256EDBC();
  if (!v13)
  {
    v26 = v10;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    sub_1B256E9AC();
    (*(v14 + 8))(v9, v15);
    (*(v16 + 32))(v12, v25, a2);
    (*(v19 + 32))(v20, v12, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *sub_1B249032C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B24903D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B2490440(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1B249057C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1B24907D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB7D1038);
  swift_allocObject();
  result = sub_1B24914B4(sub_1B2490838, 0);
  qword_1EB7CDA48 = result;
  return result;
}

uint64_t sub_1B2490838()
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  return sub_1B2490870();
}

uint64_t sub_1B2490870()
{
  v1 = v0;
  *(v0 + 24) = sub_1B24D3E10();
  *(v0 + 32) = v2;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  sub_1B256E4FC();
  sub_1B246063C(0, &qword_1EB7CD948);
  v4 = sub_1B256EE7C();
  v6 = v5;

  v28 = v4;
  v29 = v6;
  MEMORY[0x1B2749D50](0xD00000000000001CLL, 0x80000001B258F600);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  MEMORY[0x1B2749D50](v7, v8);

  v10 = v28;
  v9 = v29;
  v11 = sub_1B256E08C();

  v12 = sub_1B256D5CC();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_1B2519814(0, 0xE000000000000000, &v28);
    *(v13 + 12) = 2082;
    v15 = sub_1B2519814(v10, v9, &v28);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_1B23EF000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v14, -1, -1);
    MEMORY[0x1B274BFF0](v13, -1, -1);
  }

  else
  {
  }

  sub_1B246063C(0, &qword_1EB7CDC68);
  v16 = objc_opt_self();
  v17 = [v16 serviceName];
  v18 = sub_1B256D9BC();
  v20 = v19;

  v21 = sub_1B2490CC0(v18, v20, 0);
  v22 = [v16 service];
  [v21 setRemoteObjectInterface_];

  v23 = [v16 client];
  [v21 setExportedInterface_];

  v24 = [objc_opt_self() defaultBroker];
  [v21 setExportedObject_];

  v32 = sub_1B2490D3C;
  v33 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B243963C;
  v31 = &block_descriptor_9;
  v25 = _Block_copy(&v28);
  [v21 setInterruptionHandler_];
  _Block_release(v25);
  v32 = sub_1B2490F6C;
  v33 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B243963C;
  v31 = &block_descriptor_4;
  v26 = _Block_copy(&v28);
  [v21 setInvalidationHandler_];
  _Block_release(v26);
  [v21 resume];
  *(v1 + 16) = v21;
  return v1;
}

id sub_1B2490CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B256D98C();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1B2490D3C()
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v0, qword_1ED69A108);
  sub_1B256E4FC();
  sub_1B246063C(0, &qword_1EB7CD948);
  v1 = sub_1B256EE7C();
  v3 = v2;

  v11[1] = v3;
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B258F640);
  v5 = v1;
  v4 = v3;
  v6 = sub_1B256E0CC();

  oslog = sub_1B256D5CC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B2519814(0, 0xE000000000000000, v11);
    *(v7 + 12) = 2082;
    v9 = sub_1B2519814(v5, v4, v11);

    *(v7 + 14) = v9;
    _os_log_impl(&dword_1B23EF000, oslog, v6, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v8, -1, -1);
    MEMORY[0x1B274BFF0](v7, -1, -1);
  }

  else
  {
  }
}

void sub_1B2490F6C()
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v0, qword_1ED69A108);
  sub_1B256E4FC();
  sub_1B246063C(0, &qword_1EB7CD948);
  v1 = sub_1B256EE7C();
  v3 = v2;

  v11[1] = v3;
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B258F620);
  v5 = v1;
  v4 = v3;
  v6 = sub_1B256E0CC();

  oslog = sub_1B256D5CC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B2519814(0, 0xE000000000000000, v11);
    *(v7 + 12) = 2082;
    v9 = sub_1B2519814(v5, v4, v11);

    *(v7 + 14) = v9;
    _os_log_impl(&dword_1B23EF000, oslog, v6, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v8, -1, -1);
    MEMORY[0x1B274BFF0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B249119C()
{
  v1 = v0;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B256E4FC();
  sub_1B246063C(0, &qword_1EB7CD948);
  v3 = sub_1B256EE7C();
  v5 = v4;

  v16 = v3;
  v17 = v5;
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B258F5E0);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  MEMORY[0x1B2749D50](v6, v7);

  v9 = v16;
  v8 = v17;
  v10 = sub_1B256E08C();

  v11 = sub_1B256D5CC();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v16);
    *(v12 + 12) = 2082;
    v14 = sub_1B2519814(v9, v8, &v16);

    *(v12 + 14) = v14;
    _os_log_impl(&dword_1B23EF000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v13, -1, -1);
    MEMORY[0x1B274BFF0](v12, -1, -1);
  }

  else
  {
  }

  [*(v1 + 16) invalidate];

  return v1;
}

uint64_t sub_1B24913EC()
{
  v0 = sub_1B249119C();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B2491440(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    return sub_1B256DCFC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    return sub_1B256DD0C();
  }
}

uint64_t sub_1B24914B4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2491514()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Product.SubscriptionInfo.introductoryOffer.getter()
{
  memcpy(__dst, v0, 0x70uLL);
  v1 = OUTLINED_FUNCTION_22_1();
  memcpy(v1, v2, 0x70uLL);
  return sub_1B24937CC(__dst, v4, &qword_1EB7D0300);
}

void Product.SubscriptionInfo.subscriptionPeriod.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t Product.SubscriptionInfo.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 176);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

void sub_1B2491634(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = OUTLINED_FUNCTION_0_24();
  sub_1B24472B8(v7, v8, v9);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SKLogger();
  v11 = __swift_project_value_buffer(v10, qword_1ED69A108);
  v12 = sub_1B24D3E10();
  v14 = v13;
  OUTLINED_FUNCTION_2_20();
  sub_1B24AE8B4(v15);
  if (v2)
  {

    v17 = OUTLINED_FUNCTION_0_24();
    sub_1B24472E0(v17, v18, v19);
    goto LABEL_5;
  }

  if (*(v16 + 16))
  {
    v289 = v12;
    v292 = v14;
    v286 = a2;
    v25 = *(v16 + 32);
    v24 = *(v16 + 40);
    v26 = *(v16 + 48);
    v27 = OUTLINED_FUNCTION_1_20();
    sub_1B24472B8(v27, v28, v29);

    OUTLINED_FUNCTION_11_11();
    sub_1B24AEC70(v30, v31, v32, v33);
    Product.SubscriptionPeriod.init(from8601String:)(v34, v35, v344);
    HIDWORD(v277) = LOBYTE(v344[0]);
    v40 = v344[1];
    OUTLINED_FUNCTION_2_20();
    sub_1B24AEC70(v41, v42, v43, v44);
    v227 = v45;
    v230 = v40;
    v258 = v46;
    OUTLINED_FUNCTION_2_20();
    sub_1B24AF05C();
    v181 = v47;
    OUTLINED_FUNCTION_2_20();
    sub_1B24AEC70(v48, v49, v50, v51);
    v178 = v52;
    v352 = v53;
    v54 = OUTLINED_FUNCTION_0_24();
    sub_1B24472E0(v54, v55, v56);
    OUTLINED_FUNCTION_11_11();
    sub_1B24AE8B4(v57);
    v59 = v58;
    v60 = OUTLINED_FUNCTION_1_20();
    sub_1B24472E0(v60, v61, v62);
    v63 = *(v59 + 16);
    if (!v63)
    {

      OUTLINED_FUNCTION_5_11();
      v142 = 0uLL;
      v144 = MEMORY[0x1E69E7CC0];
      v145 = MEMORY[0x1E69E7CC0];
      v140 = 0uLL;
      v139 = 0uLL;
      v141 = 0uLL;
LABEL_68:
      *v286 = v25;
      *(v286 + 8) = v59;
      *(v286 + 16) = v24;
      *(v286 + 24) = v26;
      *(v286 + 32) = v142;
      *(v286 + 48) = v140;
      *(v286 + 64) = v139;
      *(v286 + 80) = v141;
      *(v286 + 96) = v143;
      *(v286 + 104) = v11;
      *(v286 + 112) = v144;
      *(v286 + 120) = v145;
      *(v286 + 128) = v227;
      *(v286 + 136) = v258;
      *(v286 + 144) = BYTE4(v277);
      *(v286 + 152) = v230;
      *(v286 + 160) = v4;
      *(v286 + 168) = v5;
      *(v286 + 176) = v6;
      *(v286 + 184) = v181;
      *(v286 + 192) = v178;
      *(v286 + 200) = v352;
      return;
    }

    v64 = 0;
    v166 = 0x80000001B258F690;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    v261 = " connection interrupted";
    v264 = v63 - 1;
    v65 = (v59 + 48);
    v345 = 0u;
    v346 = 0u;
    v222 = 0x8220202uLL;
    v169 = MEMORY[0x1E69E7CC0];
    v172 = MEMORY[0x1E69E7CC0];
    for (i = v59; ; v59 = i)
    {
      v283 = v64;
      if (v64 >= *(v59 + 16))
      {
        __break(1u);
        return;
      }

      v67 = *(v65 - 2);
      v66 = *(v65 - 1);
      v68 = *v65;
      v341[0] = v67;
      v341[1] = v66;
      v342 = v68;
      v69 = OUTLINED_FUNCTION_12_11();
      sub_1B24472B8(v69, v70, v68);
      v71 = OUTLINED_FUNCTION_12_11();
      sub_1B24472B8(v71, v72, v68);
      sub_1B2522048(v341, __src);
      v280 = v65;
      LOBYTE(__src[14]) = 0;
      v73 = memcpy(__dst, __src, sizeof(__dst));
      if (__dst[112])
      {
        break;
      }

      v194 = v67;
      v200 = v68;
      v206 = v66;
      v95 = *__dst;
      v97 = *&__dst[16];
      v96 = *&__dst[24];
      v243 = *&__dst[48];
      v250 = *&__dst[32];
      *log = *&__dst[80];
      v213 = *&__dst[64];
      v271 = *&__dst[96];
      v184 = *&__dst[104];
      v189 = *&__dst[8];
      if (*&__dst[16] != 0x66664F6F72746E49 || *&__dst[24] != 0xEA00000000007265)
      {
        v73 = OUTLINED_FUNCTION_7_14();
        if ((v73 & 1) == 0)
        {
          v101 = v97 == 0x66664F636F686441 && v96 == 0xEA00000000007265;
          if (v101 || (v73 = OUTLINED_FUNCTION_7_14(), (v73 & 1) != 0))
          {
            v102 = OUTLINED_FUNCTION_14_8(v73, v74, v75, v76, v77, v78, v79, v80, v163, v166, v169, v172, v175, v178, v181, v184, v189, v194, v200, v206, v213, *(&v213 + 1), v222, *(&v222 + 1), v227, v230, log[0], log[1], v243, *(&v243 + 1), v250, *(&v250 + 1), v258, v261, v264, i, v271, v277, v65, v283, v286, v289, v292, v295, v297, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v339, __dst[0]);
            sub_1B24937CC(v102, v103, &qword_1EB7D10C8);
            sub_1B24472E0(v196, v208, v202);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_16_11();
              v172 = v135;
            }

            v104 = *(v172 + 16);
            v209 = v104;
            v105 = v104 + 1;
            if (v104 >= *(v172 + 24) >> 1)
            {
              sub_1B2448F38();
              v172 = v136;
            }

            sub_1B246E8B0(__dst, &qword_1EB7D10C8);
            v106 = v172;
            goto LABEL_40;
          }

          v108 = v97 == 0x6B6361626E6957 && v96 == 0xE700000000000000;
          if (v108 || (v73 = sub_1B256EB5C(), (v73 & 1) != 0))
          {
            v109 = OUTLINED_FUNCTION_14_8(v73, v74, v75, v76, v77, v78, v79, v80, v163, v166, v169, v172, v175, v178, v181, v184, v189, v194, v200, v206, v213, *(&v213 + 1), v222, *(&v222 + 1), v227, v230, log[0], log[1], v243, *(&v243 + 1), v250, *(&v250 + 1), v258, v261, v264, i, v271, v277, v65, v283, v286, v289, v292, v295, v297, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v339, __dst[0]);
            sub_1B24937CC(v109, v110, &qword_1EB7D10C8);
            sub_1B24472E0(v197, v210, v203);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_16_11();
              v169 = v137;
            }

            v111 = *(v169 + 16);
            v209 = v111;
            v105 = v111 + 1;
            if (v111 >= *(v169 + 24) >> 1)
            {
              sub_1B2448F38();
              v169 = v138;
            }

            sub_1B246E8B0(__dst, &qword_1EB7D10C8);
            v106 = v169;
LABEL_40:
            *(v106 + 16) = v105;
            v107 = v106 + 112 * v209;
            *(v107 + 32) = v95;
            *(v107 + 40) = v191;
            *(v107 + 48) = v97;
            *(v107 + 56) = v96;
            *(v107 + 64) = v252;
            *(v107 + 80) = v245;
            *(v107 + 96) = v215;
            *(v107 + 112) = *logb;
            *(v107 + 128) = v273;
            *(v107 + 136) = v186;
          }

          else
          {
            v112 = OUTLINED_FUNCTION_14_8(v73, v74, v75, v76, v77, v78, v79, v80, v163, v166, v169, v172, v175, v178, v181, v184, v189, v194, v200, v206, v213, *(&v213 + 1), v222, *(&v222 + 1), v227, v230, log[0], log[1], v243, *(&v243 + 1), v250, *(&v250 + 1), v258, v261, v264, i, v271, v277, v65, v283, v286, v289, v292, v295, v297, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, 0, 0xE000000000000000, __dst[0]);
            sub_1B24937CC(v112, v113, &qword_1EB7D10C8);
            sub_1B256E4FC();

            MEMORY[0x1B2749D50](v97, v96);
            v114 = 0xE300000000000000;
            MEMORY[0x1B2749D50](670249, 0xE300000000000000);
            v115 = 7104878;
            switch(v204)
            {
              case 1:
                v115 = sub_1B256DF7C();
                goto LABEL_63;
              case 2:
                v338 = v198;
                sub_1B24554E4();
                v115 = sub_1B256E3AC();
                goto LABEL_63;
              case 3:
                if (v198)
                {
                  v115 = 1702195828;
                }

                else
                {
                  v115 = 0x65736C6166;
                }

                if (v198)
                {
                  v114 = 0xE400000000000000;
                }

                else
                {
                  v114 = 0xE500000000000000;
                }

                break;
              case 4:
                v115 = MEMORY[0x1B2749EE0](v198, &type metadata for BackingValue);
                goto LABEL_63;
              case 5:
                v115 = sub_1B256D88C();
LABEL_63:
                v114 = v116;
                break;
              case 6:
                break;
              default:
                v114 = v211;

                v115 = v198;
                break;
            }

            MEMORY[0x1B2749D50](v115, v114);

            sub_1B24472E0(v198, v211, v204);

            v117 = sub_1B256E0AC();

            sub_1B256D5CC();
            OUTLINED_FUNCTION_19_9();

            LODWORD(v253) = v117;
            if (os_log_type_enabled(v11, v117))
            {
              v217 = swift_slowAlloc();
              logd = swift_slowAlloc();
              v338 = logd;
              *v217 = v223;
              MEMORY[0x1B2749D50](v290, v293);
              MEMORY[0x1B2749D50](8285, 0xE200000000000000);
              v118 = sub_1B2519814(91, 0xE100000000000000, &v338);

              *(v217 + 4) = v118;
              *(v217 + 12) = 2082;
              sub_1B2519814(0xD000000000000025, v167, &v338);
              OUTLINED_FUNCTION_19_9();
              *(v217 + 14) = 0xE100000000000000;
              _os_log_impl(&dword_1B23EF000, v11, v253, "%{public}s%{public}s", v217, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_11_4();
              OUTLINED_FUNCTION_11_4();

              v119 = sub_1B246E8B0(__dst, &qword_1EB7D10C8);
              OUTLINED_FUNCTION_6_10(v119, v120, v121, v122, v123, v124, v125, v126, v164, v167, v170, v173, v176, v179, v182, v187, v192, v198, v204, v211, v217, v220, v223, v225, v228, v231, logd, log_8, 0xD000000000000025, v248, v253, v256, v259, v262, v265, v268, v11, v278, v281, v284, v287, v290, v293, 91, 0xE100000000000000, v300, v303, v306, v309, v312, v315, v318, v321, v324, v327, v330, v333, v336, v338, v339, __dst[0]);
            }

            else
            {

              sub_1B246E8B0(__dst, &qword_1EB7D10C8);

              OUTLINED_FUNCTION_6_10(v127, v128, v129, v130, v131, v132, v133, v134, v164, v167, v170, v173, v176, v179, v182, v187, v192, v198, v204, v211, v216, v220, v223, v225, v228, v231, logc, log_8, 0xD000000000000025, v248, v253, v256, v259, v262, v265, v268, v11, v278, v281, v284, v287, v290, v293, 0xD000000000000025, v167, v300, v303, v306, v309, v312, v315, v318, v321, v324, v327, v330, v333, v336, v338, v339, __dst[0]);
            }
          }

LABEL_20:
          v59 = *(&v345 + 1);
          v25 = v345;
          v26 = *(&v346 + 1);
          v24 = v346;
          v89 = v347;
          v90 = v348;
          v92 = v349;
          v91 = v350;
          v94 = *(&v351 + 1);
          v93 = v351;
          goto LABEL_21;
        }
      }

      v99 = OUTLINED_FUNCTION_14_8(v73, v74, v75, v76, v77, v78, v79, v80, v163, v166, v169, v172, v96, v178, v181, v184, v189, v194, v200, v206, v213, *(&v213 + 1), v222, *(&v222 + 1), v227, v230, log[0], log[1], v243, *(&v243 + 1), v250, *(&v250 + 1), v258, v261, v264, i, v271, v277, v65, v283, v286, v289, v292, v295, v297, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v339, __dst[0]);
      sub_1B24937CC(v99, v100, &qword_1EB7D10C8);
      sub_1B24472E0(v195, v207, v201);
      if (*(&v346 + 1))
      {
        sub_1B246E8B0(&v345, &qword_1EB7D0300);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
        sub_1B2493830();
        OUTLINED_FUNCTION_15_9();
        *v146 = &unk_1F29AF158;
        *(v146 + 8) = xmmword_1B257BCD0;
        *(v146 + 24) = 2;
        *(v146 + 32) = 3;
        v147 = swift_willThrow();
        v155 = OUTLINED_FUNCTION_6_10(v147, v148, v149, v150, v151, v152, v153, v154, v163, v166, v169, v172, v175, v178, v181, v185, v190, v195, v201, v207, v214, *(&v214 + 1), v222, *(&v222 + 1), v227, v230, loga[0], loga[1], v244, *(&v244 + 1), v251, *(&v251 + 1), v258, v261, v264, i, v272, v277, v280, v283, v286, v289, v292, v295, v297, v299, v302, v305, v308, v311, v314, v317, v320, v323, v326, v329, v332, v335, v338, v339, __dst[0]);
        OUTLINED_FUNCTION_6_10(v155, v156, v157, v158, v159, v160, v161, v162, v165, v168, v171, v174, v177, v180, v183, v188, v193, v199, v205, v212, v219, v221, v224, v226, v229, v232, logf, log_8a, v247, v249, v255, v257, v260, v263, v266, v269, v276, v279, v282, v285, v288, v291, v294, v296, v298, v301, v304, v307, v310, v313, v316, v319, v322, v325, v328, v331, v334, v337, v338, v339, __dst[0]);

        v20 = 1;
        goto LABEL_6;
      }

      sub_1B246E8B0(__dst, &qword_1EB7D10C8);
      v24 = v97;
      v25 = v95;
      v26 = v175;
      v94 = v185;
      v59 = v190;
      v93 = v272;
      v90 = v244;
      v89 = v251;
      v91 = *loga;
      v92 = v214;
LABEL_21:
      if (v264 == v283)
      {
        v275 = v93;
        v246 = v90;
        v254 = v89;
        v11 = v94;
        *loge = v91;
        v218 = v92;

        v139 = v218;
        v141 = *loge;
        v140 = v246;
        v142 = v254;
        v143 = v275;
        v145 = v169;
        v144 = v172;
        goto LABEL_68;
      }

      *&v345 = v25;
      *(&v345 + 1) = v59;
      *&v346 = v24;
      *(&v346 + 1) = v26;
      v347 = v89;
      v348 = v90;
      v349 = v92;
      v350 = v91;
      v65 = (v280 + 24);
      v64 = v283 + 1;
      *&v351 = v93;
      *(&v351 + 1) = v94;
    }

    v81 = OUTLINED_FUNCTION_12_11();
    sub_1B24472E0(v81, v82, v68);
    memcpy(v344, __dst, 0x71uLL);
    v83 = v344[0];
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000024, v261 | 0x8000000000000000);
    *__dst = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v270 = __src[0];
    v84 = __src[1];

    v85 = sub_1B256E0AC();

    sub_1B256D5CC();
    OUTLINED_FUNCTION_19_9();

    if (os_log_type_enabled(v11, v85))
    {
      v242 = v85;
      v86 = swift_slowAlloc();
      *__dst = swift_slowAlloc();
      *v86 = v222;
      __src[0] = 91;
      __src[1] = 0xE100000000000000;
      MEMORY[0x1B2749D50](v289, v292);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v87 = __src[1];
      v88 = sub_1B2519814(__src[0], __src[1], __dst);

      *(v86 + 4) = v88;
      *(v86 + 12) = 2082;
      sub_1B2519814(v270, v84, __dst);
      OUTLINED_FUNCTION_19_9();
      *(v86 + 14) = v87;
      _os_log_impl(&dword_1B23EF000, v11, v242, "%{public}s%{public}s", v86, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
      sub_1B246E8B0(v344, &qword_1EB7D10C8);
    }

    else
    {
      sub_1B246E8B0(v344, &qword_1EB7D10C8);
    }

    goto LABEL_20;
  }

  v36 = OUTLINED_FUNCTION_0_24();
  sub_1B24472E0(v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
  sub_1B2493830();
  OUTLINED_FUNCTION_15_9();
  *v39 = &unk_1F29AF068;
  *(v39 + 8) = xmmword_1B2578530;
  *(v39 + 24) = 0;
  *(v39 + 32) = 3;
  swift_willThrow();
LABEL_5:
  v20 = 0;
LABEL_6:
  v21 = OUTLINED_FUNCTION_0_24();
  sub_1B24472E0(v21, v22, v23);
  if (v20)
  {
  }
}

uint64_t sub_1B2492468()
{
  v1 = v0[2];
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v0[3] = v2;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B249251C;

  return static Product.SubscriptionInfo.isEligibleForIntroOffer(for:)(v3, v2);
}

uint64_t sub_1B249251C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static Product.SubscriptionInfo.isEligibleForIntroOffer(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B2492648()
{
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_1B24926F4;
  v1 = swift_continuation_init();
  sub_1B24928A0(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B24926F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 96) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B249283C, 0, 0);
  }

  else
  {
    v4 = *(v1 + 104);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1B249283C()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1B24928A0(uint64_t a1)
{
  v2 = [objc_opt_self() defaultBroker];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v20 = sub_1B2493894;
  v21 = v3;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B244BD28;
  v19 = &block_descriptor_10;
  v4 = _Block_copy(&v16);

  v5 = [v2 offerEligibilityServiceWithErrorHandler_];
  _Block_release(v4);

  if (v5)
  {
    v6 = sub_1B256D98C();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v20 = sub_1B24938B4;
    v21 = v7;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1B252E700;
    v19 = &block_descriptor_14;
    v8 = _Block_copy(&v16);

    [v5 isEligibleForIntroductoryOfferForGroupID:v6 reply:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_1ED69A108);
    v10 = sub_1B256E0AC();
    v11 = sub_1B256D5CC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v16);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B2519814(0xD000000000000040, 0x80000001B258F6C0, &v16);
      _os_log_impl(&dword_1B23EF000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v13, -1, -1);
      MEMORY[0x1B274BFF0](v12, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v15 = v14;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B2492C24(void *a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B256E4FC();

  v16[0] = 0xD000000000000030;
  v16[1] = 0x80000001B258F730;
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
    v16[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v16);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(0xD000000000000030, 0x80000001B258F730, v16);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  v13 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v14 = v13;

  return swift_continuation_throwingResumeWithError();
}

void sub_1B2492EA0(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = parseError(_:)(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v6 = v5;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1 & 1;

    swift_continuation_throwingResume();
  }
}

uint64_t static Product.SubscriptionInfo.== infix(_:_:)(uint64_t *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = __src[14];
  v4 = __src[15];
  v165 = __src[17];
  v170 = __src[16];
  HIDWORD(v155) = *(__src + 144);
  v160 = __src[19];
  v145 = __src[21];
  v150 = __src[20];
  HIDWORD(v140) = *(__src + 176);
  v6 = __src[24];
  v135 = __src[23];
  v7 = __src[25];
  memcpy(v185, a2, 0x70uLL);
  v9 = a2[14];
  v8 = a2[15];
  v10 = __dst[3];
  v11 = v185[3];
  if (!__dst[3])
  {
    if (!v185[3])
    {
      v126 = a2[17];
      v132 = a2[16];
      OUTLINED_FUNCTION_8_12();
      v79 = v6;
      v85 = v56;
      v73 = v7;
      OUTLINED_FUNCTION_4_11();
      __srca[3] = 0;
      OUTLINED_FUNCTION_17_7();
      sub_1B24937CC(__dst, v178, &qword_1EB7D0300);
      sub_1B24937CC(v185, v178, &qword_1EB7D0300);
      sub_1B246E8B0(__srca, &qword_1EB7D0300);
      goto LABEL_10;
    }

    sub_1B24937CC(__dst, __srca, &qword_1EB7D0300);
    sub_1B24937CC(v185, __srca, &qword_1EB7D0300);
LABEL_8:
    OUTLINED_FUNCTION_4_11();
    __srca[3] = v10;
    memcpy(&__srca[4], __src + 4, 0x50uLL);
    v180 = *a2;
    v181 = a2[2];
    v182 = v11;
    memcpy(v183, a2 + 4, sizeof(v183));
    sub_1B246E8B0(__srca, &qword_1EB7D0308);
LABEL_26:
    v59 = 0;
    return v59 & 1;
  }

  v123 = a2[17];
  v129 = a2[16];
  OUTLINED_FUNCTION_8_12();
  v82 = v12;
  OUTLINED_FUNCTION_4_11();
  __srca[3] = v10;
  OUTLINED_FUNCTION_17_7();
  memcpy(v178, __srca, sizeof(v178));
  if (!v11)
  {
    memcpy(v177, __srca, sizeof(v177));
    OUTLINED_FUNCTION_10_8(__dst, v35, v36, v37, v38, v39, v40, v41, v70, v76, v82, v88, v93, v98, v103, v108, v113, v118, v123, v129, v135, v140, v145, v150, v155, v160, v165, v170, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
    OUTLINED_FUNCTION_10_8(v185, v42, v43, v44, v45, v46, v47, v48, v74, v80, v86, v91, v96, v101, v106, v111, v116, v121, v127, v133, v138, v143, v148, v153, v158, v163, v168, v173, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
    OUTLINED_FUNCTION_10_8(__srca, v49, v50, v51, v52, v53, v54, v55, v75, v81, v87, v92, v97, v102, v107, v112, v117, v122, v128, v134, v139, v144, v149, v154, v159, v164, v169, v174, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
    sub_1B2447308(v177);
    goto LABEL_8;
  }

  v177[0] = *a2;
  *&v177[1] = a2[2];
  memcpy(&v177[2], a2 + 4, 0x50uLL);
  *(&v177[1] + 1) = v11;
  OUTLINED_FUNCTION_9_13(__dst, v13, v14, v15, v16, v17, v18, v19, v7, v6, v82, v88, v93, v98, v103, v108, v113, v118, v123, v129, v135, v140, v145, v150, v155, v160, v165, v170, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
  OUTLINED_FUNCTION_9_13(v185, v20, v21, v22, v23, v24, v25, v26, v71, v77, v83, v89, v94, v99, v104, v109, v114, v119, v124, v130, v136, v141, v146, v151, v156, v161, v166, v171, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
  OUTLINED_FUNCTION_9_13(__srca, v27, v28, v29, v30, v31, v32, v33, v72, v78, v84, v90, v95, v100, v105, v110, v115, v120, v125, v131, v137, v142, v147, v152, v157, v162, v167, v172, v175[0], v175[1], v175[2], v175[3], v175[4], v175[5], v175[6], v175[7], v175[8], v175[9], v175[10], v175[11], v175[12], v175[13], v176[0]);
  v34 = static Product.SubscriptionOffer.== infix(_:_:)(v178, v177);
  memcpy(v175, v177, sizeof(v175));
  sub_1B2447308(v175);
  memcpy(v176, v178, sizeof(v176));
  sub_1B2447308(v176);
  v177[0] = *__src;
  *&v177[1] = __src[2];
  *(&v177[1] + 1) = v10;
  memcpy(&v177[2], __src + 4, 0x50uLL);
  sub_1B246E8B0(v177, &qword_1EB7D0300);
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((sub_1B2451B78(v5, v9) & 1) == 0 || (sub_1B2451B78(v4, v8) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v170 == v132 && v165 == v126)
  {
    v63 = HIDWORD(v155) == HIDWORD(v113) && v160 == v118;
    v61 = v73;
    v60 = v79;
    if (!v63)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v58 = sub_1B256EB5C();
    v59 = 0;
    v61 = v73;
    v60 = v79;
    if ((v58 & 1) == 0)
    {
      return v59 & 1;
    }

    if (HIDWORD(v155) != HIDWORD(v113) || v160 != v118)
    {
      return v59 & 1;
    }
  }

  __srca[0] = v150;
  __srca[1] = v145;
  LOBYTE(__srca[2]) = BYTE4(v140);
  v178[0] = v108;
  v178[1] = v103;
  LOBYTE(v178[2]) = BYTE4(v98);
  sub_1B24472B8(v150, v145, SBYTE4(v140));
  v65 = OUTLINED_FUNCTION_0_24();
  sub_1B24472B8(v65, v66, v67);
  v68 = static BackingValue.== infix(_:_:)(__srca, v178);
  sub_1B24472E0(v178[0], v178[1], v178[2]);
  sub_1B24472E0(__srca[0], __srca[1], __srca[2]);
  v59 = 0;
  if ((v68 & 1) != 0 && v135 == v93)
  {
    if (v60 == v88 && v61 == v85)
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_1B256EB5C();
    }
  }

  return v59 & 1;
}

uint64_t Product.SubscriptionInfo.hash(into:)()
{
  memcpy(__dst, v0, 0x70uLL);
  v1 = *(v0 + 144);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (__dst[3])
  {
    v11 = *(v0 + 184);
    memcpy(v13, v0, sizeof(v13));
    sub_1B256ED5C();
    if (v13[1])
    {
      sub_1B256ED5C();
      sub_1B2447BEC(v13, v12);
      sub_1B256DA7C();
    }

    else
    {
      sub_1B256ED5C();
      sub_1B2447BEC(v13, v12);
    }

    v7 = LOBYTE(v13[9]);
    v8 = v13[10];
    v10 = v13[11];
    sub_1B256DA7C();
    sub_1B256E28C();
    sub_1B256DA7C();
    MEMORY[0x1B274AFC0](v7);
    MEMORY[0x1B274AFC0](v8);
    MEMORY[0x1B274AFC0](v10);
    sub_1B256DA7C();
    sub_1B246E8B0(__dst, &qword_1EB7D0300);
    v6 = v11;
  }

  else
  {
    sub_1B256ED5C();
  }

  sub_1B2456F10();
  sub_1B2456F10();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v3);
  v13[0] = v2;
  v13[1] = v4;
  LOBYTE(v13[2]) = v5;
  BackingValue.hash(into:)();
  MEMORY[0x1B274AFC0](v6);
  return sub_1B256DA7C();
}

uint64_t Product.SubscriptionInfo.hashValue.getter()
{
  sub_1B256ED3C();
  Product.SubscriptionInfo.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B2493624()
{
  sub_1B256ED3C();
  Product.SubscriptionInfo.hash(into:)();
  return sub_1B256ED7C();
}

unint64_t sub_1B2493698()
{
  result = qword_1EB7D10C0;
  if (!qword_1EB7D10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D10C0);
  }

  return result;
}

uint64_t sub_1B2493708(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1B2493748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B24937CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

unint64_t sub_1B2493830()
{
  result = qword_1EB7CD6D0[0];
  if (!qword_1EB7CD6D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D10D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7CD6D0);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 OUTLINED_FUNCTION_4_11()
{
  result = *v0;
  *&STACK[0x260] = *v0;
  STACK[0x270] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{

  return sub_1B246E8B0(&a61, v61);
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_1B24937CC(a1, &a43, v43);
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_1B24937CC(a1, &a43, v43);
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_16_11()
{

  sub_1B2448F38();
}

void *OUTLINED_FUNCTION_17_7()
{

  return memcpy(&STACK[0x280], (v0 + 32), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_19_9()
{
}

uint64_t type metadata accessor for StorefrontRequest()
{
  result = qword_1EB7CDCA0;
  if (!qword_1EB7CDCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2493AEC()
{
  sub_1B2441224();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B2493B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

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

uint64_t sub_1B2493C2C(char a1)
{
  if (a1)
  {
    return 0x79654B676F6CLL;
  }

  else
  {
    return 0x764F746E65696C63;
  }
}

uint64_t sub_1B2493C6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10E0);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2494274();
  sub_1B256EDFC();
  v12[15] = 0;
  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_0_25();
  sub_1B2494388(v9, v10);
  sub_1B256EA0C();
  if (!v1)
  {
    type metadata accessor for StorefrontRequest();
    v12[14] = 1;
    sub_1B256EA2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B2493E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D8);
  OUTLINED_FUNCTION_1_1();
  v23 = v8;
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for StorefrontRequest();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2494274();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for ClientOverride(0);
  v26 = 0;
  OUTLINED_FUNCTION_0_25();
  sub_1B2494388(v12, v13);
  sub_1B256E95C();
  sub_1B244394C(v6, v11);
  v25 = 1;
  v14 = sub_1B256E97C();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_1_21();
  v18(v17);
  v19 = &v11[*(v9 + 20)];
  *v19 = v14;
  v19[1] = v16;
  sub_1B24942C8(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B249432C(v11);
}