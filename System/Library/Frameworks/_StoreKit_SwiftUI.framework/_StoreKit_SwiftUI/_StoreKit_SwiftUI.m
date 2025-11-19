uint64_t sub_23B9721A8()
{
  if (OUTLINED_FUNCTION_8())
  {
    sub_23BBDB0D8();

    return sub_23BBDA358();
  }

  else
  {
    sub_23BBDA478();
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23BBDD648();
    OUTLINED_FUNCTION_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDA478();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    return sub_23BBDA358();
  }
}

uint64_t sub_23B9722CC()
{
  if (OUTLINED_FUNCTION_8())
  {
    sub_23BBDB0D8();
    OUTLINED_FUNCTION_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0();
  }

  else
  {
    sub_23BBDA478();
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    OUTLINED_FUNCTION_9();
    sub_23BBDD648();
    OUTLINED_FUNCTION_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDA478();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_23BBDAE88();
    sub_23BBDA358();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_23B972460@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197870) + 36);
  sub_23B972538(a1, v7, &qword_27E197878);
  *(v7 + 40) = a2;
  return sub_23B972538(v3, a3, &qword_27E197880);
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

uint64_t sub_23B972538(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B972598@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (OUTLINED_FUNCTION_5())
  {
    v36 = a6;
    v37 = a7;
    v38 = v8;
    v35 = sub_23BBDA268();
    OUTLINED_FUNCTION_7();
    v18 = v17;
    MEMORY[0x28223BE20](v19);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_23BBDD768();

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      MEMORY[0x23EEB5890](a3, a4);
      MEMORY[0x23EEB5890](58, 0xE100000000000000);
      v39 = a5;
      v28 = sub_23BBDDA38();
      MEMORY[0x23EEB5890](v28);
    }

    sub_23BBDD368();
    OUTLINED_FUNCTION_7();
    MEMORY[0x28223BE20](v29);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_23BBDA258();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898);
    OUTLINED_FUNCTION_3();
    (*(v32 + 16))(a8, v38);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A0);
    return (*(v18 + 32))(a8 + *(v33 + 36), v21, v35);
  }

  else
  {
    v22 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A8) + 36));
    v23 = *(sub_23BBDA008() + 20);
    sub_23BBDD368();
    OUTLINED_FUNCTION_3();
    (*(v24 + 16))(&v22[v23], a2);
    *v22 = a6;
    *(v22 + 1) = a7;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898);
    v26 = *(*(v25 - 8) + 16);

    return v26(a8, v8, v25);
  }
}

uint64_t sub_23B972920@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_23B97295C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9731D4();
  *a1 = result;
  return result;
}

uint64_t sub_23B972984@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BBDCFE8();

  *a1 = v2;
  return result;
}

uint64_t sub_23B9729CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9729F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B9729FC(uint64_t a1)
{
  v2 = sub_23B972E7C(&qword_27E197968, type metadata accessor for AMSBagKey);
  v3 = sub_23B972E7C(&unk_27E197970, type metadata accessor for AMSBagKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B972ADC()
{
  if (OUTLINED_FUNCTION_5())
  {
    sub_23BBDA268();
  }

  else
  {
    sub_23BBDA008();
  }

  return sub_23BBDA358();
}

uint64_t sub_23B972B34()
{
  if (OUTLINED_FUNCTION_5())
  {
    sub_23BBDA268();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23B972BF0();
  }

  else
  {
    sub_23BBDA008();
    OUTLINED_FUNCTION_4();
    sub_23BBDA358();
    sub_23B972E7C(&qword_27E197890, MEMORY[0x277CDD8B0]);
  }

  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B972BF0()
{
  result = qword_27E197888;
  if (!qword_27E197888)
  {
    sub_23BBDA268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197888);
  }

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

uint64_t sub_23B972C60(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B972CB4(uint64_t a1, int a2)
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

uint64_t sub_23B972CD4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B972D34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_6(a1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B972D6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PackMuleView(uint64_t result, int a2, int a3)
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

void sub_23B972DE8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23B972E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B972F54()
{
  v0 = sub_23BBDD018();
  v2 = v1;
  if (v0 == sub_23BBDD018() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23BBDDA88();
  }

  return v5 & 1;
}

uint64_t sub_23B972FD8()
{
  v0 = sub_23BBDD018();
  v1 = MEMORY[0x23EEB5900](v0);

  return v1;
}

uint64_t sub_23B973010()
{
  sub_23BBDD018();
  sub_23BBDDBB8();
  sub_23BBDD078();
  v0 = sub_23BBDDBF8();

  return v0;
}

uint64_t sub_23B973084()
{
  sub_23BBDD018();
  sub_23BBDD078();
}

uint64_t sub_23B9730DC(uint64_t a1, id *a2)
{
  result = sub_23BBDCFF8();
  *a2 = 0;
  return result;
}

uint64_t sub_23B973154(uint64_t a1, id *a2)
{
  v3 = sub_23BBDD008();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B9731D4()
{
  sub_23BBDD018();
  v0 = sub_23BBDCFE8();

  return v0;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_23BBDA358();
}

void sub_23B973304()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 20));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B973438()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 24));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B97356C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 28));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B9736A0()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 32));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B9737D4()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v3 = type metadata accessor for LayoutMetrics(0);
  OUTLINED_FUNCTION_22(*(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_2_0(v4);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v7(v6);
    OUTLINED_FUNCTION_8_0();
    v8 = OUTLINED_FUNCTION_11();
    v9(v8);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B973908@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  v12 = v11;
  if (a1)
  {
    v13 = 1;
  }

  else
  {
    v14 = (v4 + *(v11 + 48));
    sub_23B974940();
    sub_23BBD9D28();
    v13 = 0;
    *v14 = a3;
    v14[1] = a4;
  }

  __swift_storeEnumTagSinglePayload(v4, v13, 1, v12);
  return sub_23B974A04(v4, a2);
}

uint64_t sub_23B973A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v4, qword_27E1BF7C8);
  OUTLINED_FUNCTION_25();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8);
  v6 = v4[5];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v6);
  v7 = v4[6];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v7);
  v8 = v4[7];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v8);
  v9 = v4[8];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v9);
  v10 = v4[9];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v10);
  sub_23B9748D8(qword_27E1BF7C8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8);
  sub_23B9748D8(qword_27E1BF7C8 + v6);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v6);
  sub_23B9748D8(qword_27E1BF7C8 + v7);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v7);
  sub_23B9748D8(qword_27E1BF7C8 + v8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7C8 + v8);
  v11 = *(v5 + 48);
  v15 = 0x404E000000000000;
  sub_23B974940();
  OUTLINED_FUNCTION_18();
  v14 = xmmword_23BBE3B90;
  *&v3[v11] = xmmword_23BBE3B90;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v3, qword_27E1BF7C8 + v9);
  v12 = *(v5 + 48);
  v15 = 0x404E000000000000;
  OUTLINED_FUNCTION_18();
  *&v3[v12] = v14;
  OUTLINED_FUNCTION_4_0();
  return sub_23B974994(v3, qword_27E1BF7C8 + v10);
}

void sub_23B973BD4()
{
  OUTLINED_FUNCTION_24();
  v17 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_3_0(v3);
  v7 = type metadata accessor for LayoutMetrics(0);
  v8 = v7[5];
  OUTLINED_FUNCTION_3_0(v3 + v8);
  v9 = v7[6];
  OUTLINED_FUNCTION_3_0(v3 + v9);
  v10 = v7[7];
  OUTLINED_FUNCTION_3_0(v3 + v10);
  v11 = v7[8];
  OUTLINED_FUNCTION_3_0(v3 + v11);
  v12 = v7[9];
  OUTLINED_FUNCTION_3_0(v3 + v12);
  sub_23B9748D8(v3);
  OUTLINED_FUNCTION_3_0(v3);
  sub_23B9748D8(v3 + v8);
  OUTLINED_FUNCTION_3_0(v3 + v8);
  sub_23B9748D8(v3 + v9);
  OUTLINED_FUNCTION_3_0(v3 + v9);
  v13 = *(v6 + 48);
  sub_23B974940();
  OUTLINED_FUNCTION_16();
  *(v0 + v13) = xmmword_23BBE3BA0;
  OUTLINED_FUNCTION_6_0(v0);
  sub_23B974994(v0, v3 + v10);
  if (v17)
  {
    v14 = 105.0;
  }

  else
  {
    v14 = 88.0;
  }

  v15 = v0 + *(v6 + 48);
  OUTLINED_FUNCTION_16();
  *v15 = v14;
  *(v15 + 8) = 0x7FF0000000000000;
  OUTLINED_FUNCTION_6_0(v0);
  sub_23B974994(v0, v3 + v11);
  v16 = *(v6 + 48);
  OUTLINED_FUNCTION_16();
  *(v0 + v16) = xmmword_23BBE3BB0;
  OUTLINED_FUNCTION_6_0(v0);
  sub_23B974994(v0, v3 + v12);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_23B973DA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  v4 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v4, qword_27E1BF7E0);
  OUTLINED_FUNCTION_25();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0);
  v6 = v4[5];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v6);
  v7 = v4[6];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v7);
  v8 = v4[7];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v8);
  v9 = v4[8];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v9);
  v10 = v4[9];
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v10);
  sub_23B9748D8(qword_27E1BF7E0);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0);
  sub_23B9748D8(qword_27E1BF7E0 + v6);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v6);
  sub_23B9748D8(qword_27E1BF7E0 + v7);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v7);
  v11 = *(v5 + 48);
  v13[1] = 0x404E000000000000;
  sub_23B974940();
  sub_23BBD9D28();
  *&v3[v11] = xmmword_23BBE3B90;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v3, qword_27E1BF7E0 + v8);
  sub_23B9748D8(qword_27E1BF7E0 + v9);
  OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v9);
  sub_23B9748D8(qword_27E1BF7E0 + v10);
  return OUTLINED_FUNCTION_3_0(qword_27E1BF7E0 + v10);
}

void sub_23B973F60()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LayoutMetrics(0);
  __swift_allocate_value_buffer(v10, v5);
  OUTLINED_FUNCTION_25();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_3_0(v5);
  v12 = v10[5];
  OUTLINED_FUNCTION_3_0(v5 + v12);
  v13 = v10[6];
  OUTLINED_FUNCTION_3_0(v5 + v13);
  v14 = v10[7];
  OUTLINED_FUNCTION_3_0(v5 + v14);
  v15 = v10[8];
  OUTLINED_FUNCTION_3_0(v5 + v15);
  v21 = v10[9];
  OUTLINED_FUNCTION_3_0(v5 + v21);
  sub_23B9748D8(v5);
  OUTLINED_FUNCTION_3_0(v5);
  v16 = *(v11 + 48);
  v23 = v3;
  sub_23B974940();
  OUTLINED_FUNCTION_14();
  v22 = xmmword_23BBE3BC0;
  *&v9[v16] = xmmword_23BBE3BC0;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v9, v5 + v12);
  v17 = *(v11 + 48);
  v23 = v3;
  OUTLINED_FUNCTION_14();
  *&v9[v17] = v22;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v9, v5 + v13);
  sub_23B9748D8(v5 + v14);
  OUTLINED_FUNCTION_3_0(v5 + v14);
  v18 = *(v11 + 48);
  v23 = v1;
  OUTLINED_FUNCTION_14();
  *&v9[v18] = v22;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v9, v5 + v15);
  v19 = *(v11 + 48);
  v23 = v1;
  OUTLINED_FUNCTION_14();
  *&v9[v19] = v22;
  OUTLINED_FUNCTION_4_0();
  sub_23B974994(v9, v5 + v21);
  OUTLINED_FUNCTION_23();
}

void sub_23B974140()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  v5 = OUTLINED_FUNCTION_13_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-v12];
  sub_23BA19634(v1, v29);
  v25 = v29[2];
  v24 = v30;
  *&v27 = v31;
  v26 = v32;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  OUTLINED_FUNCTION_3_0(v3);
  v15 = type metadata accessor for LayoutMetrics(0);
  v16 = v15[5];
  OUTLINED_FUNCTION_3_0(v3 + v16);
  v17 = v15[6];
  OUTLINED_FUNCTION_3_0(v3 + v17);
  v18 = v15[7];
  OUTLINED_FUNCTION_3_0(v3 + v18);
  v19 = v15[8];
  OUTLINED_FUNCTION_3_0(v3 + v19);
  v20 = v15[9];
  OUTLINED_FUNCTION_3_0(v3 + v20);
  sub_23B9748D8(v3);
  OUTLINED_FUNCTION_3_0(v3);
  sub_23B973908(v24 & 1, v13, -INFINITY, INFINITY);
  sub_23B974994(v13, v3 + v16);
  sub_23B973908(v26 & 1, v10, -INFINITY, INFINITY);
  sub_23B974994(v10, v3 + v17);
  sub_23B9748D8(v3 + v18);
  OUTLINED_FUNCTION_3_0(v3 + v18);
  v21 = *(v14 + 48);
  v28 = 0x402C000000000000;
  sub_23B974940();
  OUTLINED_FUNCTION_18();
  v27 = xmmword_23BBE3BC0;
  *&v7[v21] = xmmword_23BBE3BC0;
  OUTLINED_FUNCTION_6_0(v7);
  sub_23B974994(v7, v3 + v19);
  v22 = *(v14 + 48);
  v28 = 0x402C000000000000;
  OUTLINED_FUNCTION_18();
  *&v7[v22] = v27;
  OUTLINED_FUNCTION_6_0(v7);
  sub_23B974994(v7, v3 + v20);
  OUTLINED_FUNCTION_23();
}

void *sub_23B974398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(type metadata accessor for LayoutMetricsModifier(0) + 20)) == 1)
  {
    *&v3 = COERCE_DOUBLE(sub_23B974FC0());
    v5 = v4;
    sub_23B973304();
    v7 = v6;
    v9 = v8;
    sub_23B973438();
    v11 = v10;
    v13 = v12;
    sub_23B97356C();
    v37 = v14;
    v38 = v15;
    sub_23B9736A0();
    v36 = v16;
    v18 = v17;
    sub_23B9737D4();
    v21 = v20;
    v22 = *&v3;
    if (v5)
    {
      v22 = -INFINITY;
    }

    if (v9)
    {
      v23 = v22;
    }

    else
    {
      v23 = v7;
    }

    v24 = v11;
    if (v13)
    {
      v24 = v23;
    }
  }

  else
  {
    v19 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v21 = 1;
    v24 = -INFINITY;
    v23 = -INFINITY;
    v22 = -INFINITY;
    v18 = 1;
    v38 = 1;
  }

  if (v22 > v23 || v23 > v24)
  {
    goto LABEL_26;
  }

  v26 = v37;
  if (v38)
  {
    v26 = -INFINITY;
  }

  v27 = v36;
  if (v18)
  {
    v27 = v26;
  }

  v28 = v19;
  if (v21)
  {
    v28 = v27;
  }

  if (v26 > v27 || v27 > v28)
  {
LABEL_26:
    sub_23BBDD5A8();
    v30 = sub_23BBDB338();
    sub_23BBD9978();
  }

  sub_23BBDA488();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A38);
  (*(*(v31 - 8) + 16))(a2, a1, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A40);
  return memcpy((a2 + *(v32 + 36)), __src, 0x70uLL);
}

uint64_t sub_23B97462C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for LayoutMetricsModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B974734(a1, v14);
  v14[*(v12 + 20)] = a4;
  v15 = &v14[*(v12 + 24)];
  *v15 = a2;
  *(v15 + 1) = a3;
  MEMORY[0x23EEB43C0](v14, a5, v12, a6);
  return sub_23B9747B8(v14);
}

uint64_t sub_23B974734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9747B8(uint64_t a1)
{
  v2 = type metadata accessor for LayoutMetricsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
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

uint64_t sub_23B9748D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B974940()
{
  result = qword_27E1979F0;
  if (!qword_27E1979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1979F0);
  }

  return result;
}

uint64_t sub_23B974994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B974A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B974A88()
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for LayoutMetrics(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23B974B08()
{
  OUTLINED_FUNCTION_19();
  type metadata accessor for LayoutMetrics(0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_23B974B64(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B974B9C()
{
  result = type metadata accessor for LayoutMetrics(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B974C24()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23B974C88()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23B974CD0()
{
  sub_23B974D48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B974D48()
{
  if (!qword_27E197A20)
  {
    sub_23B974940();
    v0 = type metadata accessor for OptionalScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197A20);
    }
  }
}

uint64_t sub_23B974DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutMetrics(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B974E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  result = type metadata accessor for LayoutMetrics(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_15();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_23B974F20()
{
  result = type metadata accessor for LayoutMetrics(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B974FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  sub_23B975158(v1, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    return 0;
  }

  v10 = (v2 + *(v8 + 48));
  (*(v4 + 32))(v1, v2, v0);
  v11 = *v10;
  v12 = v10[1];
  sub_23BBD9D38();
  (*(v4 + 8))(v1, v0);
  if (v12 >= v15)
  {
    v13 = v15;
  }

  else
  {
    v13 = v12;
  }

  if (v15 >= v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  return *&v14;
}

uint64_t sub_23B975158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9751CC()
{
  result = qword_27E197A50;
  if (!qword_27E197A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197A40);
    sub_23B9752A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A50);
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

unint64_t sub_23B9752A0()
{
  result = qword_27E197A58;
  if (!qword_27E197A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_23BBD9D38();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return sub_23BBD9D28();
}

uint64_t OUTLINED_FUNCTION_22@<X0>(uint64_t a1@<X8>)
{

  return sub_23B975158(v1 + a1, v2);
}

id sub_23B975584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23B9755E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B97563C()
{
  type metadata accessor for StoreKitSwiftUIOverlayClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E1BF840 = result;
  return result;
}

uint64_t sub_23B975694()
{
  v0 = sub_23BBD9688();
  __swift_allocate_value_buffer(v0, qword_27E1BF848);
  v1 = __swift_project_value_buffer(v0, qword_27E1BF848);
  *v1 = type metadata accessor for StoreKitSwiftUIOverlayClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_23B975730()
{
  v0 = sub_23BBDB3D8();
  sub_23BBDA138();
  v2 = v1;
  sub_23BBDA128();
  if (v2 > -v3)
  {
    v4 = sub_23BBDB3A8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v4)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA138();
  v6 = v5;
  sub_23BBDA128();
  if (v6 > -v7)
  {
    v8 = sub_23BBDB3C8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v8)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA128();
  v10 = v9;
  sub_23BBDA138();
  v12 = v10 + v11;
  sub_23BBDA118();
  v14 = v12 + v13;
  sub_23BBDA108();
  if (v14 < v15)
  {
    v16 = sub_23BBDB3B8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v16)
    {
      v0 = sub_23BBDB3D8();
    }
  }

  sub_23BBDA128();
  v18 = v17;
  sub_23BBDA138();
  v20 = v18 + v19;
  sub_23BBDA118();
  v22 = v20 + v21;
  sub_23BBDA108();
  if (v22 >= v23)
  {
    return v0;
  }

  v24 = sub_23BBDB3E8();
  sub_23BBDB3D8();
  if (sub_23BBDB3D8() == v24)
  {
    return v0;
  }

  return sub_23BBDB3D8();
}

uint64_t sub_23B9758C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_23BBDC1E8();
  sub_23BBDC208();
  sub_23B975A78();
  sub_23BBDC198();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_23B975A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC208();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_23B975A78()
{
  result = qword_27E197A60;
  if (!qword_27E197A60)
  {
    sub_23BBDC208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197A60);
  }

  return result;
}

uint64_t sub_23B975AD0()
{
  if (sub_23BBDA7E8())
  {
    return 1;
  }

  return MEMORY[0x28212DE30]();
}

void sub_23B975B10()
{
  sub_23B975E4C(319, &qword_27E197AF0, &qword_27E197AF8);
  if (v0 <= 0x3F)
  {
    sub_23B975EF0(319, &qword_27E197B00, type metadata accessor for SubscriptionStoreControlConfigurationSection, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23B975E04();
      if (v2 <= 0x3F)
      {
        sub_23B975E4C(319, &qword_27E197B10, &qword_27E197B18);
        if (v3 <= 0x3F)
        {
          sub_23B975EA0();
          if (v4 <= 0x3F)
          {
            sub_23B975EF0(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
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

uint64_t sub_23B975CB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 60));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23B975D48()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 60));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

unint64_t sub_23B975E04()
{
  result = qword_27E197B08;
  if (!qword_27E197B08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E197B08);
  }

  return result;
}

void sub_23B975E4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B975EA0()
{
  if (!qword_27E197B20)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197B20);
    }
  }
}

void sub_23B975EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23B975F68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  v5 = OUTLINED_FUNCTION_15_0(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_23B975FF4()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_23B97606C()
{
  sub_23B975EF0(319, &qword_27E197B40, type metadata accessor for SubscriptionStoreControlOption, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B976164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for Subscription();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_23B97621C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  v8 = type metadata accessor for Subscription();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

void sub_23B9762C8()
{
  type metadata accessor for Subscription();
  if (v0 <= 0x3F)
  {
    sub_23B975EF0(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B976384@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);
  a1[1] = sub_23B977368;
  a1[2] = 0;
}

uint64_t sub_23B9763A4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_23BBDD458();
  if (!v19)
  {
    return sub_23BBDD278();
  }

  v41 = v19;
  v45 = sub_23BBDD838();
  v32 = sub_23BBDD848();
  sub_23BBDD808();
  result = sub_23BBDD438();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_23BBDD558();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_23BBDD818();
      result = sub_23BBDD4B8();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B9767C0()
{
  v96 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v96);
  v1 = &v80 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v3 = *(v2 - 8);
  v87 = v2;
  v88 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v18 = type metadata accessor for SubscriptionStoreControlOption(0);
  v98 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  v24 = sub_23BBDCDB8();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v30 = &v80 - v29;
  if (*(v89 + 8))
  {
  }

  v94 = v14;
  v95 = v8;
  v85 = v27;
  v86 = v5;
  v83 = v1;
  v97 = v20;
  v92 = v17;
  v93 = v18;
  v32 = *(v89 + 16);
  v33 = *(v32 + 16);
  v90 = v26;
  if (v33 == 1)
  {
    v34 = *(v32 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + 40);
    v35 = *(v34 + 16);
    v36 = v98;
    if (v35)
    {
      v99[0] = MEMORY[0x277D84F90];
      v37 = v26;

      sub_23BA92B88();
      v38 = v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v39 = *(v36 + 72);
      v97 = v34;
      v98 = v39;
      v31 = v99[0];
      v40 = v85;
      do
      {
        sub_23B979478();
        (*(v37 + 16))(v30, v23, v40);
        sub_23B979A48(v23, type metadata accessor for SubscriptionStoreControlOption);
        v99[0] = v31;
        v41 = *(v31 + 16);
        if (v41 >= *(v31 + 24) >> 1)
        {
          sub_23BA92B88();
          v40 = v85;
          v31 = v99[0];
        }

        *(v31 + 16) = v41 + 1;
        (*(v90 + 32))(v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v41, v30, v40);
        v38 += v98;
        --v35;
      }

      while (v35);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v81 = v28;
    v42 = v26;
    sub_23B977154();
    v101 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C20);
    sub_23BBDD3C8();
    sub_23B9B7C5C();
    v84 = v43;
    v80 = (v42 + 32);
    v89 = v32;

    v45 = 0;
    v46 = 0;
    v47 = v93;
    v48 = v94;
    v91 = v11;
    while (1)
    {
      v49 = v97;
      v50 = v95;
      if (v45)
      {
        v82 = v46;
        v51 = v86;
        v52 = 0;
        while (1)
        {
          v53 = *(v45 + 16);
          if (v52 == v53)
          {
            __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
            result = sub_23B979910(v48, &qword_27E197BA0);
            v73 = v89;
            v74 = v51;
            v46 = v82;
            goto LABEL_30;
          }

          if (v52 >= v53)
          {
            break;
          }

          v54 = v45;
          sub_23B979478();
          __swift_storeEnumTagSinglePayload(v48, 0, 1, v47);
          v55 = v92;
          sub_23B979688();
          if (__swift_getEnumTagSinglePayload(v55, 1, v47) == 1)
          {

            goto LABEL_37;
          }

          v56 = v51;
          sub_23B9799E0();
          v57 = v101;
          v58 = v49 + *(v96 + 20);
          v59 = *v58;
          v60 = *(v58 + 8);
          if (v60 == 2)
          {
            v61 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
            v63 = v62;
          }

          else
          {
            v63 = v60 & 1;
            v61 = *v58;
          }

          v64 = sub_23B9AFB8C(v61, v63, v60 == 2, v57);
          sub_23B979A38(v61, v63, v60 == 2);
          if (v64)
          {
            v49 = v97;
            result = sub_23B979A48(v97, type metadata accessor for SubscriptionStoreControlOption);
            ++v52;
            v51 = v56;
            v48 = v94;
            v50 = v95;
            v11 = v91;
          }

          else
          {
            if (v60 == 2)
            {
              v59 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
              v66 = v65;
            }

            else
            {
              v66 = v60 & 1;
            }

            v67 = v83;
            sub_23B9B94E0(v99, v59, v66, v60 == 2);
            sub_23B979A38(v99[0], v99[1], v100);
            sub_23B979478();
            v68 = *v80;
            (*v80)(v81, v67, v85);
            v69 = *(v84 + 16);
            v51 = v56;
            if (v69 >= *(v84 + 24) >> 1)
            {
              sub_23B9B7C5C();
              v84 = v72;
            }

            v48 = v94;
            v50 = v95;
            v49 = v97;
            ++v52;
            sub_23B979A48(v97, type metadata accessor for SubscriptionStoreControlOption);
            v71 = v84;
            v70 = v85;
            *(v84 + 16) = v69 + 1;
            result = v68(v71 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v69, v81, v70);
            v11 = v91;
          }

          v47 = v93;
          v45 = v54;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v73 = v89;
      v74 = v86;
LABEL_30:
      v75 = *(v73 + 16);
      if (v46 == v75)
      {
        v76 = 1;
        v77 = v11;
      }

      else
      {
        if (v46 >= v75)
        {
          goto LABEL_42;
        }

        v77 = v11;
        sub_23B979478();
        v76 = 0;
        ++v46;
      }

      v78 = v87;
      __swift_storeEnumTagSinglePayload(v77, v76, 1, v87);
      sub_23B979688();
      if (__swift_getEnumTagSinglePayload(v50, 1, v78) == 1)
      {
        break;
      }

      sub_23B9799E0();
      v79 = *(v74 + 40);

      sub_23B979A48(v74, type metadata accessor for SubscriptionStoreControlConfigurationSection);

      v45 = v79;
    }

    __swift_storeEnumTagSinglePayload(v92, 1, 1, v47);
LABEL_37:

    return v84;
  }

  return v31;
}

void sub_23B977154()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_7();
  v23 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *(v0 + 16);
  swift_getKeyPath();
  v16 = *(v15 + 16);

  v17 = 0;
  v18 = 0;
  while (v17 == v16)
  {
    v19 = 1;
    v17 = v16;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v14, v19, 1, v1);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v11, 1, v1);
    if (v21)
    {
      goto LABEL_11;
    }

    sub_23B9799E0();
    swift_getAtKeyPath();
    sub_23B979A48(v6, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v22 = __OFADD__(v18, v24);
    v18 += v24;
    if (v22)
    {
      __break(1u);
LABEL_11:

      OUTLINED_FUNCTION_9_1();
      return;
    }
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 >= *(v15 + 16))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_0_1(v15 + v20);
    sub_23B979478();
    v19 = 0;
    ++v17;
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_23B977374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-v3];
  v5 = *(v0 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BC0);
  sub_23B97974C();
  v6 = OUTLINED_FUNCTION_13();
  sub_23BAE596C(v6, v5, sub_23B977368, 0, v11);
  sub_23BAC74C8(v4);
  v13 = v12;
  sub_23B979910(&v13, &qword_27E197BF8);

  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_11_0(v4, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_23B979910(v4, &qword_27E197BA0);
  return v9;
}

void sub_23B9774BC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_1();
  v72 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v71 = v67 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v67 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v67 - v11;
  v13 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_7();
  v73 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  v20 = OUTLINED_FUNCTION_13_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v70 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = v67 - v25;
  MEMORY[0x28223BE20](v27);
  v69 = v67 - v29;
  v30 = *(v0 + 16);
  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_15;
  }

  v68 = v28;

  v32 = 0;
  while (1)
  {
    if (v32 == v31)
    {
      v33 = 1;
      v32 = v31;
    }

    else
    {
      if (v32 >= v31)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_0_1(v30 + v34);
      sub_23B979478();
      v33 = 0;
      ++v32;
    }

    __swift_storeEnumTagSinglePayload(v12, v33, 1, v13);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v9, 1, v13);
    if (v35)
    {

      type metadata accessor for SubscriptionStoreControlOption(0);
      v43 = v69;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
LABEL_14:
      sub_23B979910(v43, &qword_27E197BA0);

      goto LABEL_15;
    }

    sub_23B9799E0();
    v36 = *(v18 + 40);

    sub_23B979A48(v18, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v37 = *(v36 + 16);
    v38 = type metadata accessor for SubscriptionStoreControlOption(0);
    v39 = v38;
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
    sub_23B979910(v26, &qword_27E197BA0);
    v31 = *(v30 + 16);
  }

  v48 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
  v49 = *(*(v38 - 8) + 72);
  sub_23B979478();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v39);
  v43 = v69;
  sub_23B979688();
  OUTLINED_FUNCTION_11_0(v43, 1, v39);
  if (v35)
  {

    goto LABEL_14;
  }

  v67[0] = v49;
  v67[1] = v48;
  sub_23B979910(v43, &qword_27E197BA0);
  for (i = 1; ; i = 0)
  {
    v52 = v71;
    v51 = v72;
    if (!v36)
    {
      goto LABEL_19;
    }

    v53 = *(v36 + 16);
    if (i != v53)
    {
      break;
    }

    v54 = v70;
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v39);
    sub_23B979910(v54, &qword_27E197BA0);
LABEL_19:
    v58 = *(v30 + 16);
    if (v32 == v58)
    {
      v59 = 1;
    }

    else
    {
      if (v32 >= v58)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_0_1(v30 + v60);
      sub_23B979478();
      v59 = 0;
      ++v32;
    }

    __swift_storeEnumTagSinglePayload(v52, v59, 1, v13);
    sub_23B979688();
    OUTLINED_FUNCTION_11_0(v51, 1, v13);
    if (v35)
    {

      v62 = v68;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v39);
      goto LABEL_28;
    }

    sub_23B9799E0();
    v61 = *(v18 + 40);

    sub_23B979A48(v18, type metadata accessor for SubscriptionStoreControlConfigurationSection);

    v36 = v61;
  }

  if (i >= v53)
  {
    goto LABEL_31;
  }

  v66 = v70;
  sub_23B979478();

  __swift_storeEnumTagSinglePayload(v66, 0, 1, v39);
  v62 = v68;
  sub_23B979688();
LABEL_28:

  OUTLINED_FUNCTION_11_0(v62, 1, v39);
  sub_23B979910(v62, &qword_27E197BA0);
LABEL_15:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B977AE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = type metadata accessor for SubscriptionStoreControlConfiguration();
  v20 = *(v19 + 60);
  v21 = type metadata accessor for Subscription();
  __swift_storeEnumTagSinglePayload(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = sub_23B979568(a12, a9 + v20);
  *(a9 + *(v19 + 64)) = a13;
  return result;
}

void sub_23B977BC0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA8);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  v11 = (MEMORY[0x28223BE20])(v10);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  (*(v16 + 16))(v15 - v14, v2, v4);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
    sub_23B979688();
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = sub_23B979910(v13, &qword_27E197BA8);
    v22 = *v2;
    v48 = *(v2 + 1);
    v47 = *(v2 + 4);
    v23 = v2[40];
    v45 = v22;
    v46 = v23;
    v24 = *(v2 + 6);
    v25 = *(v2 + 7);
    if (v24)
    {
      v21 = swift_allocObject();
      v26 = v21;
      v27 = *(v4 + 16);
      *(v21 + 16) = v27;
      *(v21 + 32) = v24;
      *(v21 + 40) = v25;
      v28 = sub_23B979654;
    }

    else
    {
      v28 = 0;
      v26 = 0;
      v27 = *(v4 + 16);
    }

    v43 = v27;
    v44 = &v43;
    v49 = v28;
    v50 = v26;
    *&v29 = MEMORY[0x28223BE20](v21);
    *(&v43 - 1) = v29;

    sub_23B9794F0(v24);
    sub_23BBDD648();
    swift_getFunctionTypeMetadata1();
    sub_23BBDD648();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB8);
    sub_23BA20CF8(sub_23B9794D0, v30, v31, v51);
    sub_23B979500(v28);
    v32 = v51[0];
    if (v51[0])
    {
      v33 = v51[1];
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v33;
      v32 = sub_23B979610;
    }

    else
    {
      v34 = 0;
    }

    v36 = *(v2 + 8);
    v35 = *(v2 + 9);
    sub_23B979510();
    v37 = v2[*(v4 + 64)];
    v38 = *(v17 + 60);
    type metadata accessor for Subscription();
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    *v6 = v45;
    *(v6 + 8) = 0;
    *(v6 + 16) = v48;
    *(v6 + 32) = v47;
    *(v6 + 40) = v46;
    *(v6 + 48) = v32;
    *(v6 + 56) = v34;
    *(v6 + 64) = v36;
    *(v6 + 72) = v35;

    sub_23B979568(v1, v6 + v38);
    *(v6 + *(v17 + 64)) = v37;
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B977FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  v9[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = sub_23B9796E0;
  *(v10 + 5) = v9;
  *a4 = sub_23B979720;
  a4[1] = v10;
}

uint64_t sub_23B97807C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-v12];
  a2(*a1, *(a1 + 8), *(a1 + 16));
  v17 = a3;
  v18 = a4;
  sub_23BA20CF8(sub_23B97972C, MEMORY[0x277CE11C8], v14, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23B9781C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_23BBDC0D8();
  *a2 = result;
  return result;
}

uint64_t sub_23B9782A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  v16 = a1;
  v14[1] = *(a2 + 16);
  v15 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C10);
  v9 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v10 = sub_23B97998C(&qword_27E197C18, &qword_27E197C10);
  v12 = sub_23B9763A4(sub_23B979968, v14, v8, v9, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  *(a3 + 16) = v12;
  if (!*(a3 + 8))
  {
    result = sub_23B9767C0();
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_23B9783DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B97933C(a1, a3);
  v6 = *(a2 + 16);
  v10[2] = a1;

  sub_23BB5B4B4(sub_23B979AA0, v10, v6, sub_23B977368, 0);
  v8 = v7;
  type metadata accessor for SubscriptionStoreContentConfiguration.Section(0);
  type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  result = sub_23B979478();
  *(a3 + 40) = v8;
  return result;
}

uint64_t sub_23B9784BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 40);
  sub_23B979478();
  LOBYTE(a2) = v6(v5);
  v7 = sub_23BBDCDB8();
  (*(*(v7 - 8) + 8))(v5, v7);
  return a2 & 1;
}

void sub_23B9785B0()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v1;
  OUTLINED_FUNCTION_19();
  v22 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v21 = *(v0 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_23B9782A4(v1, v0, v9 - v8);
  if (*v1)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_23B977374();
  }

  v11 = *(v10 + 16);
  v12 = *(v1 + 32);
  v19 = *(v1 + 24);
  v18 = *(v1 + 40);
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  v15 = *(v3 + 72);
  v17 = *(v3 + 64);
  sub_23B979510();
  v16 = *(v3 + *(v0 + 64));

  sub_23B9794F0(v14);

  sub_23B977AE0(v20 & 1, 0, v11, v19, v12, v18, v14, v13, v22, v17, v15, v2, v16);
  (*(v21 + 8))(v10, v0);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9787A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_23BBDC8F8();
  sub_23B979510();
  v10 = sub_23BBDCB58();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_23B979910(v6, &qword_27E197B90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v9, &qword_27E197B90);
    return (*(*(v10 - 8) + 32))(a1, v6, v10);
  }

  return result;
}

void _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV6OptionV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  if (sub_23BBA82BC(v4, v2))
  {
    v24 = v7;
    v23 = type metadata accessor for SubscriptionStoreControlOption(0);
    v17 = *(v13 + 48);
    sub_23B979510();
    sub_23B979510();
    OUTLINED_FUNCTION_11_0(v16, 1, v5);
    if (!v18)
    {
      sub_23B979510();
      OUTLINED_FUNCTION_11_0(&v16[v17], 1, v5);
      if (!v18)
      {
        v19 = v24;
        (*(v24 + 32))(v0, &v16[v17], v5);
        OUTLINED_FUNCTION_1_1();
        sub_23B979398(v20, v21);
        sub_23BBDCF38();
        v22 = *(v19 + 8);
        v22(v0, v5);
        v22(v12, v5);
        sub_23B979910(v16, &unk_27E19FEF0);
        goto LABEL_11;
      }

      (*(v24 + 8))(v12, v5);
LABEL_10:
      sub_23B979910(v16, &qword_27E197B80);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_11_0(&v16[v17], 1, v5);
    if (!v18)
    {
      goto LABEL_10;
    }

    sub_23B979910(v16, &unk_27E19FEF0);
  }

LABEL_11:
  OUTLINED_FUNCTION_9_1();
}

void sub_23B978BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v21;
  a20 = v22;
  v23 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v30);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_23BBA87A0();
  v34 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v33, 1, v23);
  if (v35)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v25 + 32))(v29, v33, v23);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_1_1();
    sub_23B979398(v36, v37);
    sub_23BBDCE68();
    (*(v25 + 8))(v29, v23);
  }

  MEMORY[0x23EEB63A0](*(v20 + *(v34 + 24)));
  OUTLINED_FUNCTION_9_1();
}

void sub_23B978D9C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_23BBDDBB8();
  sub_23BBA87A0();
  v10 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v9, 1, v2);
  if (v11)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v4 + 32))(v1, v9, v2);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_1_1();
    sub_23B979398(v12, v13);
    sub_23BBDCE68();
    (*(v4 + 8))(v1, v2);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v10 + 24)));
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B978F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDCC88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_23BBDDBB8();
  sub_23BBA87A0();
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_23BBDDBD8();
    sub_23B979398(&qword_27E197B78, MEMORY[0x277CDD2B8]);
    sub_23BBDCE68();
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x23EEB63A0](*(v2 + *(a2 + 24)));
  return sub_23BBDDBF8();
}

uint64_t sub_23B9791E0()
{
  v1 = (v0 + *(type metadata accessor for Subscription() + 20));
  if (v1[8] == 2)
  {
    return _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_23B979230@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B9791E0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_23B9792E4()
{
  result = qword_27E197B68;
  if (!qword_27E197B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B68);
  }

  return result;
}

uint64_t sub_23B979398(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B979424()
{
  result = qword_27E197B98;
  if (!qword_27E197B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B98);
  }

  return result;
}

uint64_t sub_23B979478()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B9794F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B979500(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B979510()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B979568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9795D8()
{

  return swift_deallocObject();
}

uint64_t sub_23B97961C()
{

  return swift_deallocObject();
}

uint64_t sub_23B979688()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B9796E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 32);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

unint64_t sub_23B97974C()
{
  result = qword_27E197BC8;
  if (!qword_27E197BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BC0);
    sub_23B9797D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BC8);
  }

  return result;
}

unint64_t sub_23B9797D0()
{
  result = qword_27E197BD0;
  if (!qword_27E197BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BD8);
    sub_23B979874();
    sub_23B97998C(&qword_27E197C00, &qword_27E197C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BD0);
  }

  return result;
}

unint64_t sub_23B979874()
{
  result = qword_27E197BE0;
  if (!qword_27E197BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197BE8);
    sub_23B97998C(&qword_27E197BF0, &qword_27E197BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197BE0);
  }

  return result;
}

uint64_t sub_23B979910(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B97998C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B9799E0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B979A38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23B979A48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t _s23MarketingModifierValuesVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s23MarketingModifierValuesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23B979D30);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI012SubscriptionA30ControlBackgroundStyleInternalO_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B979D94(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[113])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_23B979DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B979E60()
{
  if (v0[2] == 1)
  {
    if (*v0 == 1)
    {
      sub_23B9B6E40();
      memset(v3, 0, sizeof(v3));
      v4 = xmmword_23BBE4070;
      v1 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v5, v3);
      sub_23B97B104(v3);
      sub_23B97B104(v5);
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_23B979EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C28);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  sub_23BBDC318();
  sub_23BBDA488();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C30);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  memcpy(&v8[*(v6 + 44)], __src, 0x70uLL);
  v10 = sub_23BBDAB48();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C38) + 36);
  sub_23B97A0D0(v2, v11);
  v12 = sub_23BBD9D58();
  v13 = MEMORY[0x23EEB3BE0]((2 * v12));
  v14 = sub_23BBDA398();
  v15 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C40) + 36);
  *v15 = v14;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 17) = v13;
  *(v15 + 24) = v10;
  return sub_23B97A69C(v8, a2, &qword_27E197C28);
}

uint64_t sub_23B97A0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C48);
  MEMORY[0x28223BE20](v37);
  v9 = &v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50);
  MEMORY[0x28223BE20](v38);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C58);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  if (*(a1 + 2) == 1)
  {
    if (sub_23B979E60())
    {
      sub_23BB254D4(v11);
      v15 = sub_23BBDB3F8();
      sub_23BBD9B18();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CB0) + 36)];
      *v24 = v15;
      *(v24 + 1) = v17;
      *(v24 + 2) = v19;
      *(v24 + 3) = v21;
      *(v24 + 4) = v23;
      v24[40] = 0;
      v25 = sub_23BBDB388();
      v26 = &v11[*(v38 + 36)];
      *v26 = v25;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      v26[40] = 1;
      sub_23B97B02C(v11, v9);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C98);
      sub_23B97AE30();
      sub_23B97AFA0();
      sub_23BBDACD8();
      sub_23B97B09C(v11);
LABEL_15:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C60);
      v30 = v14;
      v31 = 0;
      goto LABEL_16;
    }

    v28 = *(a1 + 104);
    if (*(a1 + 112) == 1)
    {
      if ((v28 & 1) == 0)
      {
LABEL_9:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C60);
        v30 = v14;
        v31 = 1;
LABEL_16:
        __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
        sub_23B97A69C(v14, a2, &qword_27E197C58);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
      }
    }

    else
    {

      sub_23BBDD5A8();
      v35 = v12;
      v32 = sub_23BBDB338();
      v36 = a2;
      v33 = v32;
      v12 = v35;
      sub_23BBD9978();

      a2 = v36;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v28, 0);
      (*(v5 + 8))(v7, v4);
      if (v43[0] != 1)
      {
        goto LABEL_9;
      }
    }

    sub_23B9B6F70();
    if ((v42 - 1) > 1)
    {
      v39 = 1;
      v43[112] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C68);
      sub_23B97AC1C();
      sub_23BBDACD8();
      sub_23B97ADDC(v41);
      memcpy(v43, v40, sizeof(v43));
    }

    else
    {
      sub_23BBDC318();
      sub_23BBDA488();
      v41[0] = 0;
      v40[112] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C68);
      sub_23B97AC1C();
      sub_23BBDACD8();
    }

    memcpy(v9, v43, 0x71uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C98);
    sub_23B97AE30();
    sub_23B97AFA0();
    sub_23BBDACD8();
    goto LABEL_15;
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
}

uint64_t sub_23B97A69C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B97A704@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = (a2 >> 8) & 1;
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    v14 = *(v9 + 8);
    v14(v11, v8);
    v20 = v22;

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    v14(v11, v8);
    LOBYTE(v12) = v21;
    LOBYTE(a2) = v20;
  }

  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CF0) + 36);
  *v16 = a2 & 1;
  *(v16 + 1) = v12;
  *(v16 + 2) = HIBYTE(a3) & 1;
  *(v16 + 8) = swift_getKeyPath();
  *(v16 + 48) = 0;
  *(v16 + 56) = swift_getKeyPath();
  *(v16 + 96) = 0;
  *(v16 + 104) = swift_getKeyPath();
  *(v16 + 112) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CF8);
  return (*(*(v17 - 8) + 16))(a4, a1, v17);
}

uint64_t sub_23B97A9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23B97A704(a1, *v2, v3 | *(v2 + 8), a2);
}

uint64_t sub_23B97A9E4()
{
  sub_23B97B158();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B97AA68(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a1 & 1;
  v8[1] = a2;
  v8[2] = a3;
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  v13 = swift_getKeyPath();
  v14 = 0;
  MEMORY[0x23EEB43C0](v8, a4, &type metadata for MarketingContentViewModifier, a5);
  return sub_23B97B1CC(v8);
}

uint64_t sub_23B97AB10(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = a1;
  MEMORY[0x23EEB43C0](&KeyPath, a2, &type metadata for MarketingContentEnvironmentViewModifier, a3);
}

uint64_t sub_23B97AB94()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

unint64_t sub_23B97AC1C()
{
  result = qword_27E197C70;
  if (!qword_27E197C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C68);
    sub_23B97ACA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C70);
  }

  return result;
}

unint64_t sub_23B97ACA8()
{
  result = qword_27E197C78;
  if (!qword_27E197C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C80);
    sub_23B97AD34();
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C78);
  }

  return result;
}

unint64_t sub_23B97AD34()
{
  result = qword_27E197C88;
  if (!qword_27E197C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C88);
  }

  return result;
}

unint64_t sub_23B97AD88()
{
  result = qword_27E197C90;
  if (!qword_27E197C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197C90);
  }

  return result;
}

unint64_t sub_23B97AE30()
{
  result = qword_27E197CA0;
  if (!qword_27E197CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C50);
    sub_23B97AEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CA0);
  }

  return result;
}

unint64_t sub_23B97AEBC()
{
  result = qword_27E197CA8;
  if (!qword_27E197CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197CB0);
    sub_23B97AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CA8);
  }

  return result;
}

unint64_t sub_23B97AF48()
{
  result = qword_27E197CB8;
  if (!qword_27E197CB8)
  {
    type metadata accessor for SubscriptionStorePolicySection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CB8);
  }

  return result;
}

unint64_t sub_23B97AFA0()
{
  result = qword_27E197CC0;
  if (!qword_27E197CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C98);
    sub_23B97AC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CC0);
  }

  return result;
}

uint64_t sub_23B97B02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B97B09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B97B158()
{
  result = qword_27E197CC8;
  if (!qword_27E197CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CC8);
  }

  return result;
}

unint64_t sub_23B97B210()
{
  result = qword_27E197CD0;
  if (!qword_27E197CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C38);
    sub_23B97B2C8();
    sub_23B97B518(&qword_27E197CE8, &qword_27E197C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CD0);
  }

  return result;
}

unint64_t sub_23B97B2C8()
{
  result = qword_27E197CD8;
  if (!qword_27E197CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197C28);
    sub_23B97B518(&qword_27E197CE0, &qword_27E197C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197CD8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_23B97B3A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_23B97B3E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B97B450(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_23B97B460()
{
  result = qword_27E197D00;
  if (!qword_27E197D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197CF0);
    sub_23B97B518(&qword_27E197D08, &qword_27E197CF8);
    sub_23B97B560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D00);
  }

  return result;
}

uint64_t sub_23B97B518(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_23B97B560()
{
  result = qword_27E197D10;
  if (!qword_27E197D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticSubscriptionOfferViewStyle(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AutomaticSubscriptionOfferViewStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23B97B720);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B97B75C()
{
  result = qword_27E197D18;
  if (!qword_27E197D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D20);
    sub_23B97B7E8();
    sub_23B97B84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D18);
  }

  return result;
}

unint64_t sub_23B97B7E8()
{
  result = qword_27E197D28;
  if (!qword_27E197D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D28);
  }

  return result;
}

unint64_t sub_23B97B84C()
{
  result = qword_27E197D38;
  if (!qword_27E197D38)
  {
    type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D38);
  }

  return result;
}

uint64_t sub_23B97B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_23BBDA3A8())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D48);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D50);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_23B97B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D78);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D80);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_23B97B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B97BE1C();

  return MEMORY[0x2821309F8](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_23B97BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B97BE1C();

  return MEMORY[0x282130A00](a1, a2, a3, a4, a5, v12, a6);
}

double sub_23B97BAFC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_23B97BB08(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_23B97BB44()
{
  sub_23B97BC08();
  result = sub_23BBD9E28();
  qword_27E1BF860 = result;
  return result;
}

uint64_t sub_23B97BB74()
{
  sub_23BBD9E18();
  if (qword_27E197638 != -1)
  {
    swift_once();
  }

  v0 = sub_23BBD9E08();

  qword_27E1BF868 = v0;
  return result;
}

unint64_t sub_23B97BC08()
{
  result = qword_27E197D40;
  if (!qword_27E197D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D40);
  }

  return result;
}

unint64_t sub_23B97BC9C()
{
  result = qword_27E197D58;
  if (!qword_27E197D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D50);
    sub_23B97B518(&qword_27E197D60, &qword_27E197D48);
    sub_23B97BD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D58);
  }

  return result;
}

unint64_t sub_23B97BD54()
{
  result = qword_27E197D68;
  if (!qword_27E197D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D68);
  }

  return result;
}

unint64_t sub_23B97BDAC()
{
  result = qword_27E197D70;
  if (!qword_27E197D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D70);
  }

  return result;
}

unint64_t sub_23B97BE1C()
{
  result = qword_27E197D88;
  if (!qword_27E197D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D88);
  }

  return result;
}

unint64_t sub_23B97BE74()
{
  result = qword_27E197D90;
  if (!qword_27E197D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197D80);
    sub_23B97B518(qword_27E197D98, &qword_27E197D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197D90);
  }

  return result;
}

void sub_23B97BF34()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23B985190(319, &qword_27E197E20, &qword_27E197E28);
    if (v1 <= 0x3F)
    {
      sub_23B985190(319, &qword_27E197E30, &qword_27E197E38);
      if (v2 <= 0x3F)
      {
        sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23B9850E8(319, &qword_27E197E48, &type metadata for PlatterStyleVariant, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B97C084(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_21;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_21;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B97C1D0);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        v18 = v7 + (v15 | v14);
        return (v18 + 1);
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = a1[v6];
  if (v17 < 2)
  {
    return 0;
  }

  v18 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v18 + 1);
}

void sub_23B97C1E4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 89) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_40:
      __break(1u);
      JUMPOUT(0x23B97C3BCLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          a1[v9] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B97C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 16);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 60)) == 2)
  {
    if (*(v2 + *(a1 + 56)) == 1)
    {
      a2[3] = MEMORY[0x277CDD8E8];
      result = sub_23B985784();
      a2[4] = result;
    }

    else
    {
      result = sub_23BAC69A0(2);
      v15 = MEMORY[0x277CDF6A0];
      a2[3] = MEMORY[0x277CDF6A8];
      a2[4] = v15;
      *a2 = result;
    }

    return result;
  }

  if (*(v2 + *(a1 + 64)) == 1)
  {
    if (*(v2 + *(a1 + 56)) == 1)
    {
      v13 = v2 + *(a1 + 96);
      v14 = *v13;
      if (*(v13 + 8) == 1)
      {
        if ((v14 & 1) == 0)
        {
LABEL_8:
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197F40);
          result = sub_23B97B518(&qword_27E197F48, &qword_27E197F40);
          a2[4] = result;
          *a2 = 1;
          return result;
        }
      }

      else
      {

        v23 = sub_23BBDD5A8();
        v22 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B450(v14, 0);
        (*(v9 + 8))(v11, v8);
        if ((v25 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    (*(v24 + 16))(v7, v2, v5);
    v19 = v2 + *(a1 + 96);
    v20 = *v19;
    if (*(v19 + 8) != 1)
    {

      v23 = sub_23BBDD5A8();
      v21 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v20, 0);
      (*(v9 + 8))(v11, v8);
    }

    a2[3] = sub_23BBDAAD8();
    a2[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_23BBD9B98();
    return (*(v24 + 8))(v7, v5);
  }

  else
  {
    v16 = *(a1 + 32);
    a2[3] = v5;
    a2[4] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v18 = *(v24 + 16);

    return v18(boxed_opaque_existential_1, v2, v5);
  }
}

uint64_t sub_23B97C8AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBD9BF8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B6F84();
  v12 = (*(v9 + 88))(v11, v8);
  v13 = *MEMORY[0x277CDF3D0];
  (*(v9 + 8))(v11, v8);
  if (v12 == v13)
  {
    v14 = (v2 + *(a1 + 76));
    v15 = *v14;
    v16 = *(v14 + 8);

    if ((v16 & 1) == 0)
    {
      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(v15, 0);
      (*(v5 + 8))(v7, v4);
      v15 = v28;
    }

    sub_23BBDBD38();
    if (v15)
    {
      v18 = sub_23BBDBCD8();

      if (v18)
      {
        return sub_23BBDBCB8();
      }
    }

    else
    {
    }
  }

  v19 = (v2 + *(a1 + 76));
  v20 = *v19;
  v21 = *(v19 + 8);

  v22 = v20;
  if ((v21 & 1) == 0)
  {
    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v20, 0);
    (*(v5 + 8))(v7, v4);
    v22 = v28;
  }

  sub_23BBDBD38();
  if (v22)
  {
    v24 = sub_23BBDBCD8();

    if (v24)
    {
      return sub_23BBDBCB8();
    }
  }

  else
  {
  }

  if ((v21 & 1) == 0)
  {
    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v20, 0);
    (*(v5 + 8))(v7, v4);
    v20 = v28;
  }

  if (!v20)
  {
    return sub_23BBDBCB8();
  }

  return v20;
}

uint64_t sub_23B97CC9C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B97C8AC(a1);
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  v10 = sub_23BBDBD58();

  return v10;
}

double sub_23B97CE44(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 0.0;
  if (v8)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_23B97CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v14 = type metadata accessor for PlatterStyleModifier();
  v15 = *(a1 + *(v14 + 60));
  if (v15 == 2)
  {
    return 2;
  }

  v17 = v14;
  v18 = a1 + *(v14 + 96);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if (v19)
    {
      return 3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v19, 0);
    (*(v11 + 8))(v13, v10);
    if (v21[0])
    {
      return 3;
    }
  }

  if (*(a1 + *(v17 + 64)))
  {
    return v15;
  }

  else
  {
    return 3;
  }
}

double sub_23B97D178(int *a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + a1[18]);
  if ((v7[8] & 1) == 0)
  {
    return *v7;
  }

  v8 = *(v1 + a1[15]);
  result = 1.0;
  if (v8 != 2)
  {
    v10 = v1 + a1[24];
    v11 = *v10;
    if (*(v10 + 8) != 1)
    {

      sub_23BBDD5A8();
      v12 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v11, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v11) = v13[15];
    }

    result = 0.5;
    if ((v8 == 0) | v11 & 1)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_23B97D318(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 60)) == 2)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = v1 + *(a1 + 96);
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      sub_23BBDD5A8();
      v9 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

double sub_23B97D484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA468();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v15, v6);
    sub_23BBDBEC8();
    v20 = v22;
    v21 = v23;
    v17 = v24;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_23B9873D4(v15, v13);
    sub_23BBDA448();
    v20 = v22;
    v21 = v23;
    v17 = v24;
    sub_23B987438(v13);
  }

  result = *&v20;
  v19 = v21;
  *a2 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v17;
  return result;
}

double sub_23B97D6F8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v25[0] = a1;
  v25[1] = a3;
  v10 = *(a5 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BBDA468();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v6, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v19, v10);
    v29 = a2 & 1;
    v28 = a4 & 1;
    sub_23BBDBEB8();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_23B9873D4(v19, v17);
    sub_23B9878FC(&qword_27E198168, MEMORY[0x277CDFC08]);
    v27 = a2 & 1;
    v26 = a4 & 1;
    sub_23BBDBED8();
    v22 = v23;
    sub_23B987438(v17);
  }

  return v22;
}

double sub_23B97D99C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B97D484(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t (*sub_23B97DA10(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97DA84;
}

uint64_t sub_23B97DA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133768](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97DB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133720](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97DBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133738](a1, WitnessTable);
}

double sub_23B97DC04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v3;
  v4 = type metadata accessor for PlatterStyleModifier.PlatterShape();
  sub_23B97D484(v4, &v7);
  result = *&v7;
  v6 = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_23B97DD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32[-1] - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32[-1] - v16;
  v18 = sub_23BBDA468();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v32[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = *(a1 + 16);
  *(&v21 + 1) = v8;
  v31 = *(a1 + 32);
  v36 = v21;
  v37 = v31;
  v22 = type metadata accessor for PlatterStyleModifier.PlatterShape();
  MEMORY[0x28223BE20](v22);
  v24 = &v32[-1] - v23;
  (*(v25 + 16))(&v32[-1] - v23, v4, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v17, v24, v8);
    v26 = *(v9 + 16);
    v26(v15, v17, v8);
    if (swift_dynamicCast())
    {
      v34[0] = v36;
      v34[1] = v37;
      v35 = AssociatedConformanceWitness;
      sub_23BB238B4(v32);
      __swift_project_boxed_opaque_existential_1(v32, v33);
      *(&v37 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v36);
      sub_23BBDA318();
      sub_23B987854(v34);
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v36 = 0u;
      v37 = 0u;
      sub_23B9846E8(&v36, &qword_27E197E60);
      v26(v12, v17, v8);
      sub_23BB23808(v12, v8, *(&v31 + 1), v34);
      sub_23BB238B4(v32);
      sub_23B987854(v34);
      __swift_project_boxed_opaque_existential_1(v32, v33);
      *(&v37 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v36);
      sub_23BBDA318();
    }

    (*(v9 + 8))(v17, v8);
    result = sub_23B9878A8(v32);
    v30 = v37;
    *a2 = v36;
    *(a2 + 16) = v30;
    *(a2 + 32) = AssociatedConformanceWitness;
  }

  else
  {
    sub_23B9873D4(v24, v20);
    v27 = sub_23BBDA458();
    *(&v37 + 1) = v27;
    AssociatedConformanceWitness = sub_23B9878FC(qword_27E1981D0, MEMORY[0x277CDFBC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_23B987944(v20, boxed_opaque_existential_1);
    *(boxed_opaque_existential_1 + *(v27 + 20)) = a3;
    sub_23BB238B4(a2);
    sub_23B987438(v20);
    return sub_23B987854(&v36);
  }

  return result;
}

double sub_23B97E22C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B97DC04(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t (*sub_23B97E2A4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

void sub_23B97E318(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23B97E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133768](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133720](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B97E458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133738](a1, WitnessTable);
}

uint64_t sub_23B97E4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2 + *(a1 + 68), v9);
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v17 = *(v2 + *(a1 + 60));
    if (v17 == 2)
    {
      v18 = *(sub_23BBDA468() + 20);
      v19 = *MEMORY[0x277CE0118];
      v20 = sub_23BBDAA88();
      (*(*(v20 - 8) + 104))(a2 + v18, v19, v20);
      __asm { FMOV            V0.2D, #26.0 }

LABEL_13:
      *a2 = _Q0;
LABEL_14:
      v40 = *(a1 + 16);
      v41 = v8;
      v42 = *(a1 + 32);
      type metadata accessor for PlatterStyleModifier.PlatterShape();
      return swift_storeEnumTagMultiPayload();
    }

    v27 = v2 + *(a1 + 100);
    v28 = *v27;
    if (*(v27 + 8) == 1)
    {
      if ((v28 & 1) == 0)
      {
LABEL_7:
        if (v17)
        {
          v29 = 12.0;
        }

        else
        {
          v29 = 18.0;
        }

        v30 = *(sub_23BBDA468() + 20);
        v31 = *MEMORY[0x277CE0118];
        v32 = sub_23BBDAA88();
        (*(*(v32 - 8) + 104))(a2 + v30, v31, v32);
        *a2 = v29;
        *(a2 + 8) = v29;
        goto LABEL_14;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v33 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v28, 0);
      (*(v38 + 8))(v7, v39);
      if (v40 != 1)
      {
        goto LABEL_7;
      }
    }

    v34 = *(sub_23BBDA468() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_23BBDAA88();
    (*(*(v36 - 8) + 104))(a2 + v34, v35, v36);
    __asm { FMOV            V0.2D, #18.0 }

    goto LABEL_13;
  }

  v26 = *(v14 + 32);
  v26(v16, v13, v8);
  v26(a2, v16, v8);
  v40 = *(a1 + 16);
  v41 = v8;
  v42 = *(a1 + 32);
  type metadata accessor for PlatterStyleModifier.PlatterShape();
  return swift_storeEnumTagMultiPayload();
}

double sub_23B97E92C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 0.0;
    }

LABEL_5:
    result = 1.0;
    if (*(v1 + *(a1 + 52)))
    {
      return result;
    }

    return 0.0;
  }

  sub_23BBDD5A8();
  v9 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();
  sub_23B97B450(v8, 0);
  (*(v4 + 8))(v6, v3);
  if (v11[15] == 1)
  {
    goto LABEL_5;
  }

  return 0.0;
}

double sub_23B97EAA8(int *a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + a1[14]) != 1)
  {
    return 1.0;
  }

  v7 = v1 + a1[24];
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 1.0;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v14[15] != 1)
    {
      return 1.0;
    }
  }

  v10 = v1 + a1[26];
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      return 1.0;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v11, 0);
    (*(v4 + 8))(v6, v3);
    if (v14[14] != 1)
    {
      return 1.0;
    }
  }

  if (*(v1 + a1[15]) != 2)
  {
    return 0.989130435;
  }

  return 1.0;
}

uint64_t sub_23B97ECF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v219 = a1;
  v232 = a3;
  v231 = sub_23BBDAD18();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v229 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDA928();
  v154 = *(v5 - 8);
  v155 = v5;
  MEMORY[0x28223BE20](v5);
  v153 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2;
  v260 = a2[2];
  v11 = v260;
  v248 = v260;
  v261 = v7;
  v12 = v7;
  v249 = v7;
  v262 = v8;
  v13 = v8;
  v245 = v8;
  v263 = v9;
  v14 = v9;
  v244 = v9;
  v243 = type metadata accessor for PlatterStyleModifier.ContainerShape();
  v228 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v227 = &v153 - v15;
  v242 = sub_23BBDAD08();
  v226 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v225 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_23BBDA538();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v222 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = v11;
  v261 = v12;
  v262 = v13;
  v263 = v14;
  v18 = type metadata accessor for PlatterStyleModifier.PlatterShape();
  WitnessTable = swift_getWitnessTable();
  v247 = type metadata accessor for FillBlendLayerModifier();
  v221 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v220 = &v153 - v20;
  v21 = v18;
  v252 = v18;
  v251 = WitnessTable;
  v22 = sub_23BBD9FF8();
  v218 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v217 = &v153 - v24;
  v239 = v10;
  v215 = *(v10 - 8);
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v23);
  v213 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v175 = sub_23BBDAE98();
  v26 = sub_23BBDA358();
  v211 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v189 = &v153 - v27;
  v260 = MEMORY[0x277CDF6A8];
  v261 = v21;
  v262 = MEMORY[0x277CDF6A0];
  v263 = WitnessTable;
  sub_23BBDB0C8();
  v185 = v26;
  v28 = sub_23BBDA358();
  Description = v28[-1].Description;
  MEMORY[0x28223BE20](v28);
  v241 = &v153 - v29;
  sub_23BBDAF38();
  v30 = swift_getWitnessTable();
  v260 = MEMORY[0x277CE0F78];
  v261 = v22;
  v190 = v22;
  v262 = MEMORY[0x277CE0F60];
  v263 = v30;
  v31 = v30;
  v188 = v30;
  sub_23BBDAE78();
  v32 = sub_23BBDA358();
  v33 = swift_getWitnessTable();
  v174 = v33;
  v34 = sub_23B9852FC();
  v285 = v33;
  v286 = v34;
  v35 = MEMORY[0x277CDFAD8];
  v36 = swift_getWitnessTable();
  v180 = v36;
  v37 = swift_getWitnessTable();
  v283 = v36;
  v284 = v37;
  v234 = v35;
  v236 = v28;
  v38 = swift_getWitnessTable();
  v238 = v38;
  v39 = swift_getWitnessTable();
  v250 = MEMORY[0x277CE0488];
  v40 = swift_getWitnessTable();
  v281 = v39;
  v282 = v40;
  v235 = v32;
  v237 = swift_getWitnessTable();
  v260 = v28;
  v261 = v32;
  v262 = v38;
  v263 = v237;
  v233 = MEMORY[0x277CE0C78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v202 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v182 = &v153 - v41;
  v191 = sub_23B985350();
  v260 = &type metadata for SubscriptionStorePickerStrokeStyle;
  v261 = v22;
  v262 = v191;
  v263 = v31;
  sub_23BBDAE78();
  v42 = sub_23BBDA358();
  v207 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v240 = &v153 - v43;
  v44 = sub_23BBDA358();
  v210 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v208 = &v153 - v45;
  type metadata accessor for ProminentPlatterShadow();
  v46 = sub_23BBDD648();
  v280 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v206 = v46;
  v198 = v47;
  v205 = sub_23BBDACB8();
  v48 = sub_23BBDA358();
  v204 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v199 = &v153 - v49;
  v50 = sub_23BBDA358();
  v200 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v194 = &v153 - v51;
  v201 = sub_23BBDAE58();
  v52 = sub_23BBDA358();
  v196 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v193 = &v153 - v53;
  sub_23BBDB108();
  v54 = sub_23BBDA358();
  v195 = v54[-1].Description;
  MEMORY[0x28223BE20](v54);
  v192 = &v153 - v55;
  v260 = v236;
  v261 = v235;
  v262 = v238;
  v263 = v237;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v157 = OpaqueTypeConformance2;
  v57 = swift_getWitnessTable();
  v278 = OpaqueTypeConformance2;
  v279 = v57;
  v209 = v42;
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v159 = v58;
  v276 = v58;
  v277 = v59;
  v212 = v44;
  v60 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v161 = v60;
  v274 = v60;
  v275 = v61;
  v205 = v48;
  v164 = swift_getWitnessTable();
  v272 = v164;
  v273 = MEMORY[0x277CDF690];
  v203 = v50;
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v165 = v62;
  v270 = v62;
  v271 = v63;
  v201 = v52;
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v166 = v64;
  v268 = v64;
  v269 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_23B9878FC(&qword_27E197F30, MEMORY[0x277CDDFF8]);
  v260 = v54;
  v68 = v242;
  v261 = v242;
  v262 = v66;
  v263 = v67;
  v69 = swift_getOpaqueTypeMetadata2();
  v169 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v168 = &v153 - v70;
  v160 = swift_getWitnessTable();
  sub_23BBDB058();
  v170 = v69;
  v71 = sub_23BBDA358();
  v181 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v178 = &v153 - v72;
  v73 = sub_23BBDA358();
  v184 = v73[-1].Description;
  MEMORY[0x28223BE20](v73);
  v179 = &v153 - v74;
  v197 = v54;
  v260 = v54;
  v261 = v68;
  v167 = v66;
  v262 = v66;
  v162 = v67;
  v263 = v67;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = swift_getWitnessTable();
  v158 = v75;
  v266 = v75;
  v267 = v76;
  v183 = v71;
  v163 = swift_getWitnessTable();
  v264 = v163;
  v265 = MEMORY[0x277CDFC60];
  v77 = swift_getWitnessTable();
  v186 = v73;
  v260 = v73;
  v173 = v77;
  v261 = v77;
  v78 = swift_getOpaqueTypeMetadata2();
  v176 = *(v78 - 8);
  v177 = v78;
  v79 = MEMORY[0x28223BE20](v78);
  v171 = &v153 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v172 = &v153 - v82;
  v234 = *(v252 - 8);
  v83 = MEMORY[0x28223BE20](v81);
  v233 = &v153 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v250 = &v153 - v85;
  v86 = v239;
  v87 = v246;
  sub_23B97E4BC(v239, &v153 - v85);
  LODWORD(v48) = *(v87 + *(v86 + 60));
  KeyPath = swift_getKeyPath();
  v156 = v48;
  LOBYTE(v260) = v48;
  v261 = KeyPath;
  LOBYTE(v262) = 0;
  v89 = v189;
  MEMORY[0x23EEB43C0](&v260, v175, &type metadata for PlatterInnerPadding, v174);

  sub_23B97C440(v86, &v260);
  v90 = __swift_project_boxed_opaque_existential_1(&v260, v263);
  MEMORY[0x28223BE20](v90);
  (*(v92 + 16))(&v153 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  v259 = sub_23BBD9DF8();
  v93 = v185;
  sub_23BBDB6C8();

  (*(v211 + 8))(v89, v93);
  __swift_destroy_boxed_opaque_existential_1(&v260);
  v94 = v215;
  v95 = v213;
  (*(v215 + 16))(v213, v87, v86);
  v96 = (*(v94 + 80) + 48) & ~*(v94 + 80);
  v97 = swift_allocObject();
  v98 = v248;
  v99 = v249;
  *(v97 + 2) = v248;
  *(v97 + 3) = v99;
  v100 = v245;
  v101 = v244;
  *(v97 + 4) = v245;
  *(v97 + 5) = v101;
  (*(v94 + 32))(&v97[v96], v95, v86);
  v253 = v98;
  v254 = v99;
  v255 = v100;
  v256 = v101;
  v102 = v246;
  v257 = v246;
  v258 = v250;
  swift_checkMetadataState();
  v103 = v182;
  v104 = v236;
  v105 = v241;
  sub_23BBDB7B8();

  Description[1](v105, v104);
  LOBYTE(v260) = sub_23B97CFA4(v86);
  sub_23B97D178(v86);
  v106 = v217;
  sub_23BBDBF38();
  v107 = OpaqueTypeMetadata2;
  v108 = v190;
  sub_23BBDBB98();
  (*(v218 + 8))(v106, v108);
  (*(v202 + 8))(v103, v107);
  v109 = *(v234 + 16);
  v110 = v233;
  v241 = (v234 + 16);
  v238 = v109;
  v109();
  v111 = 0;
  if (*(v102 + *(v86 + 60)) != 2)
  {
    v111 = *(v102 + *(v86 + 64));
  }

  v112 = v220;
  sub_23B980E10(v110, v156, v111, v252, v220);
  v114 = v208;
  v113 = v209;
  v115 = v247;
  v116 = v240;
  MEMORY[0x23EEB43C0](v112, v209, v247, v159);
  (*(v221 + 8))(v112, v115);
  v117 = (*(v207 + 8))(v116, v113);
  MEMORY[0x28223BE20](v117);
  v118 = v212;
  sub_23B9C2924();
  v119 = v199;
  sub_23BBDB6B8();
  (*(v210 + 8))(v114, v118);
  sub_23B97EAA8(v86);
  sub_23BBDC438();
  v120 = v194;
  v121 = v205;
  sub_23BBDB7A8();
  (*(v204 + 8))(v119, v121);
  v122 = v193;
  v123 = v250;
  v124 = v203;
  v125 = v252;
  sub_23BBDB7E8();
  (*(v200 + 8))(v120, v124);
  v126 = v222;
  sub_23BBDA518();
  v127 = v192;
  v128 = v201;
  sub_23BBDB7F8();
  (*(v223 + 8))(v126, v224);
  (*(v196 + 8))(v122, v128);
  v129 = v225;
  sub_23BBDA568();
  v130 = v168;
  v131 = v197;
  v132 = v242;
  sub_23BBDB758();
  (*(v226 + 8))(v129, v132);
  (v195)[1](v127, v131);
  v133 = v233;
  v238(v233, v123, v125);
  v134 = v227;
  sub_23B97E1B4(v133, v227);
  v135 = v178;
  v136 = v170;
  v137 = v243;
  sub_23BBDB848();
  (*(v228 + 8))(v134, v137);
  (*(v169 + 8))(v130, v136);
  v138 = v246 + *(v239 + 92);
  v139 = *v138;
  if (*(v138 + 8) != 1)
  {

    sub_23BBDD5A8();
    v140 = sub_23BBDB338();
    sub_23BBD9978();

    v141 = v153;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v139, 0);
    (*(v154 + 8))(v141, v155);
  }

  v152 = v183;
  sub_23B9C2924();
  v142 = v179;
  sub_23BBDBB18();
  (*(v181 + 8))(v135, v152);
  sub_23B985698();
  v143 = v229;
  sub_23BBDAFA8();
  v144 = v171;
  v145 = v186;
  v146 = v173;
  sub_23BBDB878();
  (*(v230 + 8))(v143, v231);
  v184[1](v142, v145);
  v260 = v145;
  v261 = v146;
  v147 = swift_getOpaqueTypeConformance2();
  v148 = v172;
  v149 = v177;
  sub_23B9D2D88(v144, v177, v147);
  v150 = *(v176 + 8);
  v150(v144, v149);
  sub_23B9D2D88(v148, v149, v147);
  v150(v148, v149);
  return (*(v234 + 8))(v250, v252);
}

uint64_t sub_23B9808A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = (a1 + *(type metadata accessor for PlatterStyleModifier() + 84));
  v15 = *v14;
  LOBYTE(a4) = *(v14 + 8);

  if ((a4 & 1) == 0)
  {
    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v15, 0);
    (*(v11 + 8))(v13, v10);
    return v18[0];
  }

  return v15;
}

uint64_t sub_23B980A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v34 = a2;
  v35 = a1;
  v36 = a7;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v11 = type metadata accessor for PlatterStyleModifier.PlatterShape();
  WitnessTable = swift_getWitnessTable();
  v31[2] = WitnessTable;
  v13 = sub_23BBD9FF8();
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v32 = v31 - v14;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v15 = type metadata accessor for PlatterStyleModifier();
  swift_getWitnessTable();
  sub_23BBDAE98();
  sub_23BBDA358();
  v39 = MEMORY[0x277CDF6A8];
  v40 = v11;
  v41 = MEMORY[0x277CDF6A0];
  v42 = WitnessTable;
  sub_23BBDB0C8();
  sub_23BBDA358();
  sub_23BBDAF38();
  v31[0] = v13;
  v16 = swift_getWitnessTable();
  v39 = MEMORY[0x277CE0F78];
  v40 = v13;
  v41 = MEMORY[0x277CE0F60];
  v42 = v16;
  v31[1] = sub_23BBDAE78();
  v17 = sub_23BBDA358();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v31 - v22;
  v39 = sub_23B97CC9C(v15);
  sub_23B97CE44(v15);
  v24 = v32;
  sub_23BBDBF38();
  v25 = swift_getWitnessTable();
  v26 = v31[0];
  sub_23BBDBB98();
  (*(v33 + 8))(v24, v26);

  v27 = swift_getWitnessTable();
  v37 = v25;
  v38 = v27;
  v28 = swift_getWitnessTable();
  sub_23B9D2D88(v21, v17, v28);
  v29 = *(v18 + 8);
  v29(v21, v17);
  sub_23B9D2D88(v23, v17, v28);
  return (v29)(v23, v17);
}

uint64_t sub_23B980E10@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for FillBlendLayerModifier();
  *(a5 + v8[9]) = a2;
  *(a5 + v8[10]) = a3;
  v9 = a5 + v8[11];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t sub_23B980EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a2;
  v40 = a1;
  v42 = a7;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v11 = type metadata accessor for PlatterStyleModifier.PlatterShape();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35[0] = v35 - v12;
  v35[1] = swift_getWitnessTable();
  v13 = type metadata accessor for ProminentPlatterShadow();
  v39 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = v35 - v17;
  v18 = sub_23BBDD648();
  v41 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v35 - v22;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v24 = type metadata accessor for PlatterStyleModifier();
  v25 = v40;
  if (sub_23B97D318(v24))
  {
    v26 = v35[0];
    (*(v36 + 16))(v35[0], v38, v11);
    v27 = sub_23B97E92C(v24);
    sub_23B9812FC(v26, *(v25 + *(v24 + 56)), *(v25 + *(v24 + 60)), v11, v16, v27);
    WitnessTable = swift_getWitnessTable();
    v29 = v37;
    sub_23B9D2D88(v16, v13, WitnessTable);
    v30 = v39;
    v31 = *(v39 + 8);
    v31(v16, v13);
    sub_23B9D2D88(v29, v13, WitnessTable);
    v31(v29, v13);
    (*(v30 + 32))(v21, v16, v13);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v13);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v13);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4();
  v32 = *(v41 + 8);
  v32(v21, v18);
  v43 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  sub_23B9D2D88(v23, v18, v33);
  return (v32)(v23, v18);
}

uint64_t sub_23B9812FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v10 = type metadata accessor for ProminentPlatterShadow();
  *(a5 + v10[9]) = a6;
  *(a5 + v10[10]) = a2;
  *(a5 + v10[11]) = a3;
  v11 = v10[12];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v10[14];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_23B981420@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v16 = type metadata accessor for PlatterStyleModifier();
  *(a9 + v16[13]) = a2;
  *(a9 + v16[14]) = a3;
  *(a9 + v16[15]) = a4;
  *(a9 + v16[16]) = a5;
  v17 = v16[17];
  v18 = sub_23BBDD648();
  (*(*(v18 - 8) + 32))(a9 + v17, a6, v18);
  v19 = a9 + v16[18];
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  v20 = a9 + v16[19];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v16[20];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v16[21];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v16[22];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a9 + v16[23];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v16[24];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v16[25];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a9 + v16[26];
  result = swift_getKeyPath();
  *v27 = result;
  *(v27 + 8) = 0;
  return result;
}

uint64_t sub_23B981658(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return sub_23BBDC448();
    }
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v11[15] != 1)
    {
      return sub_23BBDC448();
    }
  }

  return sub_23BBDC458();
}

uint64_t sub_23B9817C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = *(a1 + 16);
  v28 = *(a1 + 24);
  sub_23BBD9C28();
  sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v50 = MEMORY[0x277CDF760];
  v3 = MEMORY[0x277CDFAD8];
  v30 = swift_getWitnessTable();
  type metadata accessor for PositionReader();
  sub_23BBDACE8();
  v23 = sub_23BBDBE28();
  v32 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v29 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC098();
  sub_23BBDA358();
  sub_23BBDA358();
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CE0688];
  v27 = v3;
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CE06B0];
  v24 = swift_getWitnessTable();
  v25 = sub_23BBDADF8();
  v5 = sub_23BBDA358();
  v26 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = v2;
  v12 = v28;
  v37 = v2;
  v38 = v28;
  v13 = v31;
  v39 = v31;
  v43 = swift_getWitnessTable();
  v44 = v30;
  v14 = swift_getWitnessTable();
  v15 = v29;
  sub_23BBDBE18();
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v42 = v14;
  v16 = v23;
  v17 = swift_getWitnessTable();
  sub_23B9C2924();
  sub_23BBDBAD8();
  (*(v32 + 8))(v15, v16);
  v18 = swift_getWitnessTable();
  v40 = v17;
  v41 = v18;
  v19 = swift_getWitnessTable();
  sub_23B9D2D88(v8, v5, v19);
  v20 = *(v26 + 8);
  v20(v8, v5);
  sub_23B9D2D88(v10, v5, v19);
  return (v20)(v10, v5);
}

uint64_t sub_23B981D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  sub_23BBD9C28();
  v7 = sub_23BBDA358();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v55 - v10;
  v67 = a2;
  v68 = a3;
  v11 = type metadata accessor for ProminentPlatterShadow();
  v63 = *(v11 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v55 - v12;
  v13 = sub_23BBDAD18();
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v77 = MEMORY[0x277CDF760];
  v15 = swift_getWitnessTable();
  v16 = type metadata accessor for PositionReader();
  v62 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v58 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v55 - v19;
  v20 = sub_23BBDA928();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23BBDACE8();
  v72 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v70 = v11;
  v71 = &v55 - v25;
  v26 = a1 + *(v11 + 52);
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_23BBDD5A8();
    v56 = v20;
    v33 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v27, 0);
    (*(v21 + 8))(v23, v56);
    if (v75 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v34 = v59;
    sub_23BBDAF98();
    v35 = v70;
    sub_23B981658(v70);
    v37 = v36;
    v39 = v38;
    sub_23B981658(v35);
    v41 = v40;
    v43 = v42;
    v44 = v63;
    v45 = v61;
    (*(v63 + 16))(v61, a1, v35);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    v48 = v68;
    *(v47 + 16) = v67;
    *(v47 + 24) = v48;
    (*(v44 + 32))(v47 + v46, v45, v35);
    v49 = v58;
    sub_23BAD87F0(v34, sub_23B9877A0, v47, v58, v37, v39, v41, v43);
    v50 = swift_getWitnessTable();
    v51 = v57;
    sub_23B9D2D88(v49, v16, v50);
    v52 = *(v62 + 8);
    v52(v49, v16);
    sub_23B9D2D88(v51, v16, v50);
    v32 = v71;
    sub_23BA82D64();
    v52(v49, v16);
    v52(v51, v16);
    goto LABEL_8;
  }

  if (v27)
  {
    goto LABEL_7;
  }

LABEL_3:
  v28 = 0.2;
  if (!*(a1 + *(v70 + 40)))
  {
    v28 = 0.0;
  }

  v29 = v65;
  sub_23B982708(v70, v65, *(a1 + *(v70 + 36)) - v28);
  v30 = v64;
  sub_23B9D2D88(v29, v7, v15);
  v31 = *(v66 + 8);
  v31(v29, v7);
  sub_23B9D2D88(v30, v7, v15);
  swift_getWitnessTable();
  v32 = v71;
  sub_23BA82E14();
  v31(v29, v7);
  v31(v30, v7);
LABEL_8:
  v73 = swift_getWitnessTable();
  v74 = v15;
  v53 = swift_getWitnessTable();
  sub_23B9D2D88(v32, v24, v53);
  return (*(v72 + 8))(v32, v24);
}

uint64_t sub_23B9824FC(uint64_t a1, uint64_t a2)
{
  sub_23BBD9C28();
  v3 = sub_23BBDA358();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_23BAD8734();
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  if (v10 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = type metadata accessor for ProminentPlatterShadow();
  v14 = 0.1;
  if (!*(a2 + *(v13 + 40)))
  {
    v14 = 0.0;
  }

  sub_23B982708(v13, v7, v12 - v14);
  v18[0] = swift_getWitnessTable();
  v18[1] = MEMORY[0x277CDF760];
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v7, v3, WitnessTable);
  v16 = *(v4 + 8);
  v16(v7, v3);
  sub_23B9D2D88(v9, v3, WitnessTable);
  return (v16)(v9, v3);
}

uint64_t sub_23B982708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v20[1] = a2;
  v6 = sub_23BBD9C28();
  v20[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_23BBDA358();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_23BBDC438();
  sub_23BBDBF28();
  v21 = *(v3 + *(a1 + 44));
  v22 = a3;
  type metadata accessor for ProminentPlatterShadow.ShadowColor();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BBDBDE8();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBB58();

  (*(v20[0] + 8))(v8, v6);
  v20[2] = WitnessTable;
  v20[3] = MEMORY[0x277CDF760];
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v13, v9, v17);
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_23B9D2D88(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_23B982A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a3;
  v24 = a2;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v4 = sub_23BBDC098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_23BBDA358();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_23BBDA358();
  v23 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v28 = v24;
  v29 = v26;
  v30 = v25;
  sub_23B9C2924();
  sub_23BBDC088();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB8B8();
  (*(v5 + 8))(v7, v4);
  v33 = WitnessTable;
  v34 = MEMORY[0x277CE0688];
  v18 = swift_getWitnessTable();
  sub_23BBDB8C8();
  (*(v22 + 8))(v10, v8);
  v31 = v18;
  v32 = MEMORY[0x277CE06B0];
  v19 = swift_getWitnessTable();
  sub_23B9D2D88(v14, v11, v19);
  v20 = *(v23 + 8);
  v20(v14, v11);
  sub_23B9D2D88(v16, v11, v19);
  return (v20)(v16, v11);
}

uint64_t sub_23B982E40@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  v3 = sub_23BBDA358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188);
  v7 = sub_23BBDA358();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31[0] = v31 - v12;
  v13 = *(a1 + 16);
  sub_23BBDBB68();
  *&v33 = sub_23BBDBD18();
  v14 = sub_23B97B518(&qword_27E198198, &qword_27E198180);
  v38[4] = v13;
  v38[5] = v14;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB8A8();

  (*(v4 + 8))(v6, v3);
  v16 = sub_23B97B518(&qword_27E1981A0, &qword_27E198188);
  v38[2] = WitnessTable;
  v38[3] = v16;
  v17 = swift_getWitnessTable();
  v18 = v31[0];
  sub_23B9D2D88(v11, v7, v17);
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_23BBDC438();
  v21 = v20;
  v23 = v22;
  v24 = sub_23BBDBD38();
  (*(v8 + 16))(v11, v18, v7);
  __asm { FMOV            V0.2D, #2.0 }

  v33 = _Q0;
  v34 = v21;
  v35 = v23;
  v36 = v24;
  v37 = 0xBFF0000000000000;
  v38[0] = v11;
  v38[1] = &v33;

  v32[0] = v7;
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198190);
  v31[2] = v17;
  v31[3] = sub_23B9874B8();
  sub_23BB6739C(v38, 2, v32);

  v19(v18, v7);

  return (v19)(v11, v7);
}

float sub_23B9831F4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_23BBDBD08();
    sub_23BBDBD58();

    sub_23BBDBD18();
    sub_23BBDBD58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    sub_23BBDBDE8();
LABEL_6:
    sub_23BBDBD78();
    v3 = v4;
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    sub_23BBDBD28();
    goto LABEL_6;
  }

  sub_23BBDBD18();
  sub_23BBDBD58();

  sub_23BBDBD78();
  v3 = v2;
LABEL_7:

  return v3;
}

uint64_t sub_23B9833B8(double a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x23EEB63A0](a3);
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  return MEMORY[0x23EEB63C0](*&v4);
}

uint64_t sub_23B983400(unsigned __int8 a1, double a2)
{
  sub_23BBDDBB8();
  sub_23B9833B8(a2, v5, a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B983490()
{
  sub_23BBDDBB8();
  sub_23B9833B8(*(v0 + 8), v2, *v0);
  return sub_23BBDDBF8();
}

void sub_23B9834FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23B9831F4(a1, *v2);
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
}

uint64_t sub_23B98355C@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + a1[10]) != 1)
  {
    goto LABEL_6;
  }

  v9 = v2 + a1[11];
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v15[15] != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v12 = MEMORY[0x277CE0F60];
    v13 = MEMORY[0x277CE0F78];
    result = sub_23BBDBD28();
    goto LABEL_7;
  }

  if (v10)
  {
    goto LABEL_6;
  }

LABEL_4:
  result = sub_23BAC69A0(*(v2 + a1[9]));
  v12 = MEMORY[0x277CDF6A0];
  v13 = MEMORY[0x277CDF6A8];
LABEL_7:
  a2[3] = v13;
  a2[4] = v12;
  *a2 = result;
  return result;
}

uint64_t sub_23B983718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[2] = a1;
  v20[3] = a3;
  swift_getWitnessTable();
  sub_23BBDAE98();
  v4 = *(a2 + 24);
  v20[0] = *(a2 + 16);
  v21[0] = MEMORY[0x277CDF6A8];
  v21[1] = v20[0];
  v21[2] = MEMORY[0x277CDF6A0];
  v22 = v4;
  v20[1] = sub_23BBDB0C8();
  v5 = sub_23BBDA358();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  sub_23B98355C(a2, v21);
  v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20[6] = sub_23BBD9DF8();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB6C8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v16 = swift_getWitnessTable();
  v20[4] = WitnessTable;
  v20[5] = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v9, v5, v17);
  v18 = *(v6 + 8);
  v18(v9, v5);
  sub_23B9D2D88(v11, v5, v17);
  return (v18)(v11, v5);
}

uint64_t sub_23B983A24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a3) = v23[15];
  }

  if (a2 == 2)
  {
    v15 = 0x4030000000000000;
  }

  else
  {
    v15 = 0x4028000000000000;
  }

  v16 = (a3 & 1) == 0;
  if (a3)
  {
    v17 = 0x4028000000000000;
  }

  else
  {
    v17 = v15;
  }

  if (v16)
  {
    v18 = 0x4030000000000000;
  }

  else
  {
    v18 = 0x4028000000000000;
  }

  v19 = sub_23BBDB398();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198170);
  (*(*(v20 - 8) + 16))(a5, a1, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198178);
  v22 = a5 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v17;
  *(v22 + 16) = v18;
  *(v22 + 24) = v17;
  *(v22 + 32) = v18;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_23B983C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v45 = a7;
  v37 = a8;
  v38 = a3;
  v42 = a6;
  v43 = a5;
  v39 = a4;
  v35 = a1;
  v36 = a2;
  v44 = a9;
  v33[1] = a14;
  v40 = a13;
  v41 = a10;
  v34 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v33 - v18;
  OUTLINED_FUNCTION_3_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v46 = a11;
  v47 = a12;
  v48 = a14;
  v49 = a15;
  v26 = type metadata accessor for PlatterStyleModifier();
  OUTLINED_FUNCTION_3_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = v33 - v30;
  (*(v21 + 16))(v25, v35, a11);
  (*(v16 + 16))(v19, v36, v34);
  sub_23B981420(v25, v38, v39, v42, v43, v19, v45, v37 & 1, v31, a11);
  MEMORY[0x23EEB43C0](v31, v41, v26, v40);
  return (*(v28 + 8))(v31, v26);
}

uint64_t sub_23B983E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v71 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v82 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_23BBDB068();
  OUTLINED_FUNCTION_3_2();
  v76 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v23 = *(a1 + 24);
  *&v92 = v10;
  *(&v92 + 1) = &type metadata for OpenAnyShape;
  v70 = v23;
  *&v93 = v23;
  *(&v93 + 1) = sub_23B984600();
  v69 = *(&v93 + 1);
  v79 = v17;
  v72 = type metadata accessor for PlatterStyleModifier();
  v24 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v77 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v73 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v67 - v29;
  v75 = v22;
  sub_23BBDB078();
  v80 = v12;
  v30 = *(v12 + 16);
  v78 = v16;
  v30(v16, v3, v10);
  sub_23B9B6FAC();
  sub_23B98466C(&v90, &v88);
  if (v89)
  {
    sub_23B98473C(&v88, v83);
    v31 = v84;
    v32 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_3_1();
    v36 = v35 - v34;
    (*(v37 + 16))(v35 - v34);
    sub_23BB23808(v36, v31, v32, &v92);
    sub_23B9846E8(&v90, &qword_27E197E28);
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  else
  {
    sub_23B9846E8(&v90, &qword_27E197E28);
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
  }

  v68 = *(v3 + *(a1 + 36));
  v67 = sub_23BBDB088();
  v38 = v3 + *(a1 + 48);
  v39 = *v38;
  v40 = v71;
  if (*(v38 + 8) != 1)
  {

    sub_23BBDD5A8();
    v41 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v39, 0);
    v42 = OUTLINED_FUNCTION_20_0();
    v43(v42);
    LOBYTE(v39) = v90;
  }

  v44 = v3 + *(a1 + 52);
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_23BBDD5A8();
    v46 = sub_23BBDB338();
    OUTLINED_FUNCTION_22_0();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v45, 0);
    v47 = OUTLINED_FUNCTION_20_0();
    v48(v47);
    LODWORD(v45) = v90;
  }

  v49 = v3 + *(a1 + 44);
  v50 = *v49;
  v51 = *(v49 + 8);
  if (*(v49 + 9) != 1)
  {

    sub_23BBDD5A8();
    v52 = sub_23BBDB338();
    OUTLINED_FUNCTION_22_0();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(v50, v51, 0);
    (*(v82 + 8))(v9, v40);
    v50 = v90;
    LOBYTE(v51) = v91;
  }

  OUTLINED_FUNCTION_7_1();
  v55 = sub_23B9878FC(v53, v54);
  v56 = v79;
  v57 = v39 & 1;
  v58 = v51 & 1;
  v59 = v73;
  v60 = v78;
  v61 = v75;
  sub_23B983C34(v78, &v92, v68, v67 & 1, v57, v45, v50, v58, v73, v79, v10, &type metadata for OpenAnyShape, v55, v70, v69);
  sub_23B9846E8(&v92, &qword_27E197E60);
  (*(v80 + 8))(v60, v10);
  (*(v76 + 8))(v61, v56);
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v86 = v55;
  v87 = WitnessTable;
  OUTLINED_FUNCTION_0();
  v63 = swift_getWitnessTable();
  v64 = v74;
  sub_23B9D2D88(v59, v24, v63);
  v65 = *(v77 + 8);
  v65(v59, v24);
  sub_23B9D2D88(v64, v24, v63);
  return (v65)(v64, v24);
}

unint64_t sub_23B984600()
{
  result = qword_27E197E50;
  if (!qword_27E197E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197E50);
  }

  return result;
}

uint64_t sub_23B98466C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9846DC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23B9846E8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B98473C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_23B9847F4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995898();
  *v0 = result;
  return result;
}

uint64_t sub_23B98481C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B995898();
  *v0 = result;
  return result;
}

uint64_t sub_23B984844()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC7244();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B98486C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC727C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B984898()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC720C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9848C0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23B99539C();
  return OUTLINED_FUNCTION_15_1(v0);
}

void sub_23B9848F0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BBDD648();
    if (v1 <= 0x3F)
    {
      sub_23B9850E8(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23B985190(319, &qword_27E197EF8, &qword_27E197F00);
        if (v3 <= 0x3F)
        {
          sub_23B985138();
          if (v4 <= 0x3F)
          {
            sub_23B985190(319, &qword_27E197F10, &qword_27E197F18);
            if (v5 <= 0x3F)
            {
              sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B984A94(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  v4 = *(v31 - 8);
  v5 = *(v4 + 84);
  v30 = *(a3 + 24);
  v6 = *(v30 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_23BBD9BF8() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v4 + 64);
  v14 = *(v6 + 80);
  v15 = 23;
  if (!v7)
  {
    v15 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 < a2)
  {
    v16 = *(v11 + 80) & 0xF8 | 7;
    v17 = ((v12 + ((((v15 + *(v6 + 64) + ((v14 + v13 + 4) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + v16 + 9) & ~v16) + 88) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v17 <= 3)
    {
      v18 = ((a2 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          break;
        }

        goto LABEL_31;
      case 2:
        v21 = *&a1[v17];
        if (*&a1[v17])
        {
          goto LABEL_31;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B984D84);
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          break;
        }

LABEL_31:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }

        v27 = v10 + (v28 | v23);
        return (v27 + 1);
      default:
        break;
    }
  }

  if (v5 == v10)
  {

    return __swift_getEnumTagSinglePayload(a1, v5, v31);
  }

  v25 = &a1[v13];
  if (v9 > 0xFE)
  {
    if (v7 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v25[v14 + 4] & ~v14, v7, v30);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v26 = *v25;
  if (v26 < 2)
  {
    return 0;
  }

  v27 = (v26 + 2147483646) & 0x7FFFFFFF;
  return (v27 + 1);
}

void sub_23B984D98(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v30 = *(a4 + 24);
  v31 = *(a4 + 16);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  v7 = *(v30 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_23BBD9BF8();
  v13 = v8;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v5 + 64);
  v18 = *(v7 + 80);
  v19 = *(v7 + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = *(v15 + 80) & 0xF8 | 7;
  v21 = ((v16 + ((((v19 + ((v18 + v17 + 4) & ~v18) + 23) & 0xFFFFFFFFFFFFFFF8) + v20 + 9) & ~v20) + 88) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }
  }

  v24 = a2;
  if (v11 < a2)
  {
    v25 = ~v11 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v21 > 3)
    {
      *a1 = v25;
    }

    else
    {
      *a1 = v25;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v21) = v26;
        return;
      case 2:
        *(a1 + v21) = v26;
        return;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v21) = v26;
        return;
      default:
        return;
    }
  }

  v27 = a1;
  switch(v14)
  {
    case 1:
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_54:
      __break(1u);
      JUMPOUT(0x23B9850C0);
    case 4:
      *(a1 + v21) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!a2)
      {
        return;
      }

LABEL_40:
      if (v6 == v11)
      {
        v13 = v6;
        v28 = v31;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v27, v24, v13, v28);
        return;
      }

      v29 = a1 + v17;
      if (v10 <= 0xFE)
      {
        *v29 = a2 + 1;
        return;
      }

      if (v13 >= 2)
      {
        v27 = &v29[v18 + 4] & ~v18;
        v24 = a2 + 1;
        v28 = v30;
        goto LABEL_42;
      }

      return;
  }
}

void sub_23B9850E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23B985138()
{
  if (!qword_27E197F08)
  {
    sub_23BBD9BF8();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197F08);
    }
  }
}

void sub_23B985190(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B9851E4()
{
  sub_23BBDB068();
  sub_23B984600();
  type metadata accessor for PlatterStyleModifier();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_1();
  sub_23B9878FC(v0, v1);
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B9852FC()
{
  result = qword_27E197F20;
  if (!qword_27E197F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F20);
  }

  return result;
}

unint64_t sub_23B985350()
{
  result = qword_27E197F28;
  if (!qword_27E197F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F28);
  }

  return result;
}

uint64_t sub_23B9853BC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC6A90();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9853E4()
{
  v2 = *(v1 + 16);
  v25 = *(v1 + 24);
  type metadata accessor for PlatterStyleModifier();
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  OUTLINED_FUNCTION_16_0();
  (*(v5 + 8))(v4, v2);
  v6 = v0[17];
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v25))
  {
    OUTLINED_FUNCTION_16_0();
    (*(v7 + 8))(v4 + v6, v25);
  }

  v8 = OUTLINED_FUNCTION_2_1(v0[19]);
  j__swift_release(v8, v9);
  v10 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9BF8();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v4 + v10);
  }

  else
  {
  }

  v12 = OUTLINED_FUNCTION_2_1(v0[21]);
  j__swift_release(v12, v13);
  v14 = OUTLINED_FUNCTION_2_1(v0[22]);
  sub_23B97B450(v14, v15);
  v16 = OUTLINED_FUNCTION_2_1(v0[23]);
  sub_23B97B450(v16, v17);
  v18 = OUTLINED_FUNCTION_2_1(v0[24]);
  sub_23B97B450(v18, v19);
  v20 = OUTLINED_FUNCTION_2_1(v0[25]);
  sub_23B97B450(v20, v21);
  v22 = OUTLINED_FUNCTION_2_1(v0[26]);
  sub_23B97B450(v22, v23);
  return swift_deallocObject();
}

uint64_t sub_23B9855CC()
{
  type metadata accessor for PlatterStyleModifier();

  return sub_23B980854();
}

unint64_t sub_23B985698()
{
  result = qword_27E197F38;
  if (!qword_27E197F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F38);
  }

  return result;
}

uint64_t sub_23B9856EC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23B9953EC();
  return OUTLINED_FUNCTION_15_1(v0);
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

unint64_t sub_23B985784()
{
  result = qword_27E197F50[0];
  if (!qword_27E197F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E197F50);
  }

  return result;
}

uint64_t sub_23B9857E8()
{
  result = type metadata accessor for PlatterStyleModifier.PlatterShape();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B985860(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDAA88() - 8);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (v7 <= ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64))
  {
    v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_22:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23B985A14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDAA88() - 8);
  v9 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(a4 + 24) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v9 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B985C38);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

void sub_23B985C68()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23B985138();
    if (v1 <= 0x3F)
    {
      sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B985D48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_23BBD9BF8() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 10) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = a1[v13];
        if (!a1[v13])
        {
          break;
        }

        goto LABEL_23;
      case 2:
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_23;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B985F78);
      case 4:
        v17 = *&a1[v13];
        if (!v17)
        {
          break;
        }

LABEL_23:
        v18 = v13 > 3;
        if (v13 <= 3)
        {
          v19 = (v17 - 1) << (8 * v13);
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v23 = *a1;
        }

        else
        {
          v23 = *a1;
        }

        v22 = v8 + (v23 | v19);
        return (v22 + 1);
      default:
        break;
    }
  }

  if (v7 >= 0xFE)
  {

    return __swift_getEnumTagSinglePayload(a1, v7, v5);
  }

  v21 = *((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v21 < 2)
  {
    return 0;
  }

  v22 = (v21 + 2147483646) & 0x7FFFFFFF;
  return (v22 + 1);
}

void sub_23B985F8C(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBD9BF8() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 10) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 < a2)
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v20;
        return;
      case 2:
        *(a1 + v15) = v20;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v15) = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B986200);
    case 4:
      *(a1 + v15) = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v9 < 0xFE)
        {
          *(((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }
      }

      return;
  }
}

void sub_23B986230()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23B9850E8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B9862EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 9) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_21;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_21;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B986438);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        v18 = v7 + (v15 | v14);
        return (v18 + 1);
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = a1[v6 + 1];
  if (v17 < 2)
  {
    return 0;
  }

  v18 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v18 + 1);
}

void sub_23B98644C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_41:
      __break(1u);
      JUMPOUT(0x23B986630);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          a1[v9 + 1] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B986658()
{
  result = sub_23BBDA468();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9866D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDAA88() - 8);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (v7 <= ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64))
  {
    v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_22:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23B986884(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDAA88() - 8);
  v9 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(a4 + 24) - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = v9 + 1;
  v12 = 8 * (v9 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v9 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B986AA8);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B986AE4(uint64_t a1, unsigned int a2)
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
      if (v3 <= 1)
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

uint64_t sub_23B986B24(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B986B78()
{
  OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier.PlatterShape();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDB0C8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  sub_23BBDAF38();
  OUTLINED_FUNCTION_5_1();
  sub_23BBD9FF8();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDAE78();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  sub_23B9852FC();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  swift_getOpaqueTypeMetadata2();
  sub_23B985350();
  OUTLINED_FUNCTION_14_1();
  sub_23BBDAE78();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for FillBlendLayerModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for ProminentPlatterShadow();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDD648();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDACB8();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  sub_23BBDAE58();
  sub_23BBDA358();
  OUTLINED_FUNCTION_5_1();
  sub_23BBDB108();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  sub_23BBDAD08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9878FC(&qword_27E197F30, MEMORY[0x277CDDFF8]);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_14_1();
  type metadata accessor for PlatterStyleModifier.ContainerShape();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDB058();
  OUTLINED_FUNCTION_23_0();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23B9871AC()
{
  result = qword_27E198158;
  if (!qword_27E198158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198158);
  }

  return result;
}

unint64_t sub_23B98723C()
{
  result = qword_27E198160;
  if (!qword_27E198160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198160);
  }

  return result;
}

uint64_t sub_23B9873D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDA468();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B987438(uint64_t a1)
{
  v2 = sub_23BBDA468();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9874B8()
{
  result = qword_27E1981A8;
  if (!qword_27E1981A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190);
    sub_23B987570();
    sub_23B97B518(&qword_27E198198, &qword_27E198180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1981A8);
  }

  return result;
}

unint64_t sub_23B987570()
{
  result = qword_27E1981B0;
  if (!qword_27E1981B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1981B8);
    sub_23B97B518(&qword_27E1981C0, &qword_27E1981C8);
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1981B0);
  }

  return result;
}

uint64_t sub_23B987654()
{
  v2 = *(v1 + 16);
  type metadata accessor for ProminentPlatterShadow();
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  OUTLINED_FUNCTION_16_0();
  (*(v5 + 8))(v4, v2);
  v6 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9BF8();
    OUTLINED_FUNCTION_12_1();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_2_1(v0[13]);
  sub_23B97B450(v8, v9);
  v10 = OUTLINED_FUNCTION_2_1(v0[14]);
  sub_23B97B450(v10, v11);

  return swift_deallocObject();
}

uint64_t sub_23B9877A0(uint64_t a1)
{
  v3 = *(type metadata accessor for ProminentPlatterShadow() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23B9824FC(a1, v4);
}

uint64_t sub_23B9878FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B987944(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDA468();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_23B9879DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B987A24(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t sub_23B987A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_23B987AA4()
{
  result = qword_27E198258;
  if (!qword_27E198258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198178);
    sub_23B97B518(&qword_27E198260, &qword_27E198170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198258);
  }

  return result;
}

uint64_t sub_23B987B5C()
{
  sub_23BBD9C28();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for PositionReader();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198180);
  OUTLINED_FUNCTION_4_2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198188);
  OUTLINED_FUNCTION_4_2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198190);
  OUTLINED_FUNCTION_4_2();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_4_2();
  sub_23BBDC098();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_24_0();
  swift_getWitnessTable();
  sub_23BBDADF8();
  OUTLINED_FUNCTION_23_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  return OUTLINED_FUNCTION_24_0();
}

uint64_t sub_23B987DD4()
{
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for FillBlendLayerModifier();
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  sub_23BBDAE98();
  sub_23BBDB0C8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23B987EA4()
{
  result = qword_27E198268;
  if (!qword_27E198268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198268);
  }

  return result;
}

unint64_t sub_23B987F20()
{
  result = qword_27E198278;
  if (!qword_27E198278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198270);
    sub_23B987FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198278);
  }

  return result;
}

unint64_t sub_23B987FA4()
{
  result = qword_27E198280;
  if (!qword_27E198280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198288);
    sub_23B988028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198280);
  }

  return result;
}

unint64_t sub_23B988028()
{
  result = qword_27E198290;
  if (!qword_27E198290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198290);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_23BBD9978();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_23BBDA358();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getWitnessTable();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B98829C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23B9882F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9883A8(char a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1 & 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B98840C()
{
  v1 = *v0;
  sub_23BBDDBB8();
  sub_23B988380(v3, v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B988450@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0);
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A8);
  OUTLINED_FUNCTION_7();
  v36 = v14;
  v37 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a1 & 1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  v40 = a1 & 1;
  v41 = a2;
  v42 = a3;

  sub_23BBDBFA8();
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982C0);
  sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);
  sub_23B989234();
  sub_23BBDBC48();
  (*(v9 + 8))(v12, v7);
  v44 = a2;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0);
  sub_23BBDBF68();
  v25 = v43;
  if (v43)
  {
  }

  v26 = v25 != 0;
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  (*(v36 + 32))(v20, v17, v37);
  v29 = &v20[*(v35 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_23B989418;
  v29[2] = v28;
  v30 = &v23[*(v38 + 36)];
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23B989BD4(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache);

  *v30 = sub_23BBDA0E8();
  v30[1] = v31;
  v32 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v30 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0);
  swift_storeEnumTagMultiPayload();
  sub_23B989918(v20, v23, &qword_27E1982B0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23B989428();

  sub_23BBDBA28();

  return sub_23B989650(v23);
}

uint64_t sub_23B988988(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_23BBDD328();
  v9 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_23BBDD308();

  v10 = sub_23BBDD2F8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1 & 1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v13 = sub_23BB52778(0, 0, v8, &unk_23BBE5218, v11);
  v15[2] = a2;
  v15[3] = a3;
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0);
  return sub_23BBDBF78();
}

uint64_t sub_23B988ADC@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23B988BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[10] = sub_23BBDD308();
  v6[11] = sub_23BBDD2F8();
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_23B988C84;

  return MEMORY[0x28212C3F0]();
}

uint64_t sub_23B988C84()
{
  *(*v1 + 104) = v0;

  v3 = sub_23BBDD2D8();
  if (v0)
  {
    v4 = sub_23B988E84;
  }

  else
  {
    v4 = sub_23B988DE0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23B988DE0()
{
  v2 = v0[8];
  v1 = v0[9];

  v0[4] = v2;
  v0[5] = v1;
  v0[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0);
  sub_23BBDBF78();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B988E84()
{
  v2 = v0[8];
  v1 = v0[9];

  v0[2] = v2;
  v0[3] = v1;
  v0[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982E0);
  sub_23BBDBF78();
  v3 = v0[1];

  return v3();
}

void *sub_23B988F34@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198328);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = __src - v4;
  __src[0] = swift_getKeyPath();
  LOBYTE(__src[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198330);
  sub_23B97B518(&qword_27E198338, &qword_27E198330);
  sub_23B9898BC();
  sub_23BBDB728();

  v6 = sub_23BBDB398();
  v7 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198348) + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  v8 = sub_23BBDB438();
  KeyPath = swift_getKeyPath();
  v10 = &v5[*(v3 + 44)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_23BBDC318();
  sub_23BBDA488();
  sub_23B989918(v5, a1, &qword_27E198328);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198350);
  return memcpy((a1 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_23B989168()
{

  return swift_deallocObject();
}

uint64_t sub_23B9891C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0);
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

unint64_t sub_23B989234()
{
  result = qword_27E1982D0;
  if (!qword_27E1982D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982C0);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982D0);
  }

  return result;
}

unint64_t sub_23B9892EC()
{
  result = qword_27E1982D8;
  if (!qword_27E1982D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982D8);
  }

  return result;
}

uint64_t sub_23B989344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBDC208();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

unint64_t sub_23B989428()
{
  result = qword_27E1982F8;
  if (!qword_27E1982F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982B8);
    sub_23B9894E4();
    sub_23B989BD4(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1982F8);
  }

  return result;
}

unint64_t sub_23B9894E4()
{
  result = qword_27E198300;
  if (!qword_27E198300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1982C0);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);
    sub_23B989234();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198308, &qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198300);
  }

  return result;
}

uint64_t sub_23B989650(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982B8);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_23B9896B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23B9896F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23B988BD8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_23B9897C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B9898BC()
{
  result = qword_27E198340;
  if (!qword_27E198340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198340);
  }

  return result;
}

uint64_t sub_23B989918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreBackgroundState.PolicyLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RestorePurchasesButton.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B989AC8);
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