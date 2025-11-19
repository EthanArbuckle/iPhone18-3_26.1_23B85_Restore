void OUTLINED_FUNCTION_87_0()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_129()
{
  v1 = *(*(v0 - 456) + 8);
  result = *(v0 - 432);
  v3 = *(v0 - 448);
  return result;
}

uint64_t OUTLINED_FUNCTION_168_1()
{
  result = v0[39];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  return result;
}

void OUTLINED_FUNCTION_154_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 200) = v1;
  *(v2 - 192) = v3;
}

void sub_23B3D112C()
{
  OUTLINED_FUNCTION_21();
  v51 = v3;
  v52 = v4;
  v55 = v6;
  v56 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_4();
  v17 = sub_23B50AD24();
  v18 = OUTLINED_FUNCTION_5(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  v27 = v8(0, v24);
  v28 = OUTLINED_FUNCTION_5(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v36 = &v51 - v34;
  v37 = *v0;
  v53 = v0[1];
  v54 = v37;
  v39 = *(v38 + 104);
  if (v0[2])
  {
    v39(v32, *v52, v35);
    v40 = *(type metadata accessor for WeatherServiceFetchOptions() + 48);
    sub_23B3A23E0();
    v41 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_51(v41, v42, v17);
    if (v43)
    {
      sub_23B50ACE4();
      v44 = OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_51(v44, v45, v17);
      if (!v43)
      {
        sub_23B398890(v15, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      (*(v20 + 32))(v2, v15, v17);
    }

    v47 = v54;
    v48 = v53;
    v49 = v32;
    v50 = v2;
  }

  else
  {
    v39(&v51 - v34, *v51, v35);
    v46 = *(type metadata accessor for WeatherServiceFetchOptions() + 48);
    sub_23B3A23E0();
    OUTLINED_FUNCTION_51(v1, 1, v17);
    if (v43)
    {
      sub_23B50ACE4();
      OUTLINED_FUNCTION_51(v1, 1, v17);
      if (!v43)
      {
        sub_23B398890(v1, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      (*(v20 + 32))(v26, v1, v17);
    }

    v47 = v54;
    v48 = v53;
    v49 = v36;
    v50 = v26;
  }

  v56(v47, v48, v49, v50);
  OUTLINED_FUNCTION_20();
}

void OUTLINED_FUNCTION_240_0()
{
  v2 = *(v1 + v0);
  v3 = (v1 + ((v0 + 15) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_240_1()
{

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B3D1568(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50ADC4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3D15F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B50ADC4();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D16A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v7 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v8 = a1 + *(a4 + 24);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D179C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherServiceOptions();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B3D1824(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherServiceOptions();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D18D4()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D1944()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D199C()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3D1B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    v12 = OUTLINED_FUNCTION_8_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 32) + 8);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_23B3D1C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2 + 2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D1E38(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23B3D1F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    v12 = OUTLINED_FUNCTION_8_0(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 28) + 8);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_23B3D206C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2 + 2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SnowfallAmount();
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D224C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SnowfallAmount();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for TrendBaseline();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v12 = sub_23B50A9E4();
    v13 = OUTLINED_FUNCTION_8_0(v12);
    if (*(v14 + 84) != a2)
    {
      v16 = *(a1 + *(a3 + 32));
      if (v16 >= 5)
      {
        return v16 - 4;
      }

      else
      {
        return 0;
      }
    }

    v10 = v13;
    v11 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v11, a2, v10);
}

uint64_t sub_23B3D2490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_7_11();
  v9 = type metadata accessor for TrendBaseline();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    v14 = sub_23B50A9E4();
    result = OUTLINED_FUNCTION_8_0(v14);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 4;
      return result;
    }

    v12 = result;
    v13 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
}

uint64_t sub_23B3D25B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B410B58(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23B3D25DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_23B410B80(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_23B3D26F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D2808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3D27E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B3D2994(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B3D29A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23B3D29BC(unint64_t result)
{
  if (*(*v1 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

unint64_t sub_23B3D29D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_23B410B5C(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_23B3D2A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_23B410B98(*a1, a2, *a3, sub_23B440584);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

id sub_23B3D2D20@<X0>(_BYTE *a1@<X8>)
{
  result = static Automation.shouldShowSimulatedAlert.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B3D2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3D2E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3D37CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3D3878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3D3920(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_14:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 253)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
    v16 = OUTLINED_FUNCTION_8_0(v15);
    if (*(v17 + 84) == a2)
    {
      v9 = v16;
      v18 = a3[11];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F50, &qword_23B50F288);
      v18 = a3[12];
    }

    v10 = a1 + v18;
    goto LABEL_14;
  }

  v11 = *(a1 + a3[9] + 16);
  if (v11 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = *(a1 + a3[9] + 16);
  }

  v13 = v12 - 2;
  if (v11 >= 2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3D3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4343B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B3D3D3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
    JUMPOUT(0x23B3D3D50);
  }

  return result;
}

uint64_t sub_23B3D3D64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
    v12 = OUTLINED_FUNCTION_8_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
      v16 = OUTLINED_FUNCTION_8_0(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
        v19 = OUTLINED_FUNCTION_8_0(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
          v14 = a3[8];
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_23B3D3EF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
          v16 = a4[8];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D40D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_11:
    v10 = a1 + v14;
    goto LABEL_12;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  v16 = OUTLINED_FUNCTION_8_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  v19 = OUTLINED_FUNCTION_8_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[7];
    goto LABEL_11;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v22 = OUTLINED_FUNCTION_8_0(v21);
  if (*(v23 + 84) == a2)
  {
    v9 = v22;
    v14 = a3[8];
    goto LABEL_11;
  }

  v25 = *(a1 + a3[9]);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  v26 = v25 - 1;
  if (v26 < 0)
  {
    v26 = -1;
  }

  return (v26 + 1);
}

uint64_t sub_23B3D42C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
          result = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) != a3)
          {
            *(a1 + a4[9]) = a2;
            return result;
          }

          v11 = result;
          v16 = a4[8];
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_4_17(*(a1 + *(a3 + 52)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_23B3D4570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50C7D4();
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3D4614(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_4_17(*a1);
  }

  v7 = sub_23B50BE64();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[13];
  }

  else
  {
    v12 = sub_23B50AD24();
    v13 = OUTLINED_FUNCTION_8_0(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[14];
    }

    else
    {
      v10 = sub_23B50AEF4();
      v11 = a3[15];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_23B3D4710(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50BE64();
    v9 = OUTLINED_FUNCTION_8_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[13];
    }

    else
    {
      v13 = sub_23B50AD24();
      v14 = OUTLINED_FUNCTION_8_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[14];
      }

      else
      {
        v11 = sub_23B50AEF4();
        v12 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23B3D4814()
{
  v0 = sub_23B50D664();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23B3D4860(char a1)
{
  result = 0x6B7261446F676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6867694C6F676F6CLL;
      break;
    case 2:
      result = 0x617571536F676F6CLL;
      break;
    case 3:
      result = 0x4E65636976726573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3D4BEC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_23B3D4C78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3D4D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D4D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D4E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D4EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D4FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D5000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D5094(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = type metadata accessor for PrecipitationShift();
    v14 = a3[8];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[6] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23B3D51B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return result;
      }

      v11 = type metadata accessor for PrecipitationShift();
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D52F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23B50A9E4();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v8 = sub_23B50AD24();
    v9 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23B3D5390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_23B50A9E4();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    v10 = sub_23B50AD24();
    v11 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_23B3D548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
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

uint64_t sub_23B3D5554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B3D5608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D56B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D57B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B3D57F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23B3D5858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 32));
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

uint64_t sub_23B3D590C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_23B3D59DC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_139_0();

  return swift_deallocObject();
}

uint64_t sub_23B3D5A98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_23B3D5AEC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_233_0();
  if (v9)
  {
    OUTLINED_FUNCTION_32_5();
    v10 = *v3;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v11);
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_275();
    while (v0 != v4)
    {
      v13 = *(v6 + 8 * v4);
      v14 = v3[v4];
      v15 = *(v7 + 8 * v4);
      OUTLINED_FUNCTION_26_12(*(v5 + 8 * v4));
      *(v2 + 8 * v4++) = type metadata accessor for DailyWeatherSummaryQuery();
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v16 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v18 = v17;
  v34 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v35 = v16;
  v20 = *(v19 + 64);
  v21 = sub_23B50AD24();
  OUTLINED_FUNCTION_5(v21);
  v23 = v22;
  v24 = (v34 + v20 + *(v22 + 80)) & ~*(v22 + 80);
  v26 = *(v25 + 64);
  v27 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5(v27);
  v29 = v28;
  v30 = (v24 + v26 + *(v29 + 80)) & ~*(v29 + 80);
  v32 = (*(v31 + 64) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v18 + 8))(v1 + v34, v35);
  (*(v23 + 8))(v1 + v24, v21);
  (*(v29 + 8))(v1 + v30, v27);
  v33 = *(v1 + v32 + 8);

  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

void sub_23B3D5D30()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_233_0();
  if (v9)
  {
    OUTLINED_FUNCTION_32_5();
    v10 = *v3;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v11);
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_275();
    while (v0 != v4)
    {
      v13 = *(v6 + 8 * v4);
      v14 = v3[v4];
      v15 = *(v7 + 8 * v4);
      OUTLINED_FUNCTION_26_12(*(v5 + 8 * v4));
      *(v2 + 8 * v4++) = type metadata accessor for MonthlyWeatherStatisticsQuery();
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_48(TupleTypeMetadata);
  v17 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v16 + 8))(v1 + v17);
  v19 = *(v1 + v18 + 8);

  OUTLINED_FUNCTION_264();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3D5E58()
{
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);

  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_264();

  return swift_deallocObject();
}

uint64_t sub_23B3D5F00()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23B3D5F54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  OUTLINED_FUNCTION_138_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v23 = sub_23B50AD24();
  OUTLINED_FUNCTION_5(v23);
  v8 = v7;
  v9 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = *(v10 + 64);
  v12 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5(v12);
  v14 = v13;
  v15 = (v9 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = (*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6(v18);
  (*(v19 + 8))(v1 + v4);
  v20 = *(v1 + v4 + *(v0 + 60) + 8);

  (*(v8 + 8))(v1 + v9, v23);
  (*(v14 + 8))(v1 + v15, v12);
  v21 = *(v1 + v17 + 8);

  return swift_deallocObject();
}

uint64_t sub_23B3D6164()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  OUTLINED_FUNCTION_138_0(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;
  v10 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6(v10);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E38, &qword_23B5157C0) + 52) + 8);

  v14 = v9 + *(v0 + 56);
  v15 = OUTLINED_FUNCTION_241_0();
  (v12)(v15);
  v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132E40, &qword_23B5157C8) + 52) + 8);

  v17 = *(v1 + v8 + 8);

  return swift_deallocObject();
}

uint64_t sub_23B3D630C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133958, &unk_23B519510);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    v19 = OUTLINED_FUNCTION_8_0(v18);
    if (*(v20 + 84) == a2)
    {
      v9 = v19;
      v14 = a3[7];
    }

    else
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
      v22 = OUTLINED_FUNCTION_8_0(v21);
      if (*(v23 + 84) == a2)
      {
        v9 = v22;
        v14 = a3[8];
      }

      else
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
        v25 = OUTLINED_FUNCTION_8_0(v24);
        if (*(v26 + 84) == a2)
        {
          v9 = v25;
          v14 = a3[9];
        }

        else
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
          v28 = OUTLINED_FUNCTION_8_0(v27);
          if (*(v29 + 84) == a2)
          {
            v9 = v28;
            v14 = a3[10];
          }

          else
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
            v31 = OUTLINED_FUNCTION_8_0(v30);
            if (*(v32 + 84) == a2)
            {
              v9 = v31;
              v14 = a3[11];
            }

            else
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
              v34 = OUTLINED_FUNCTION_8_0(v33);
              if (*(v35 + 84) == a2)
              {
                v9 = v34;
                v14 = a3[12];
              }

              else
              {
                v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
                v37 = OUTLINED_FUNCTION_8_0(v36);
                if (*(v38 + 84) == a2)
                {
                  v9 = v37;
                  v14 = a3[18];
                }

                else
                {
                  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
                  v40 = OUTLINED_FUNCTION_8_0(v39);
                  if (*(v41 + 84) == a2)
                  {
                    v9 = v40;
                    v14 = a3[20];
                  }

                  else
                  {
                    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
                    v43 = OUTLINED_FUNCTION_8_0(v42);
                    if (*(v44 + 84) == a2)
                    {
                      v9 = v43;
                      v14 = a3[21];
                    }

                    else
                    {
                      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
                      v14 = a3[23];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[6]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_23B3D66F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133958, &unk_23B519510);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return result;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
            v27 = OUTLINED_FUNCTION_8_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[10];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
              v30 = OUTLINED_FUNCTION_8_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[11];
              }

              else
              {
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
                v33 = OUTLINED_FUNCTION_8_0(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = v33;
                  v16 = a4[12];
                }

                else
                {
                  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
                  v36 = OUTLINED_FUNCTION_8_0(v35);
                  if (*(v37 + 84) == a3)
                  {
                    v11 = v36;
                    v16 = a4[18];
                  }

                  else
                  {
                    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
                    v39 = OUTLINED_FUNCTION_8_0(v38);
                    if (*(v40 + 84) == a3)
                    {
                      v11 = v39;
                      v16 = a4[20];
                    }

                    else
                    {
                      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
                      v42 = OUTLINED_FUNCTION_8_0(v41);
                      if (*(v43 + 84) == a3)
                      {
                        v11 = v42;
                        v16 = a4[21];
                      }

                      else
                      {
                        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
                        v16 = a4[23];
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

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D6B7C()
{
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D6C54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D6D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D6E34(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34_0();
  v6 = type metadata accessor for CurrentWeather();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_9:
    v10 = v3 + v14;
    goto LABEL_10;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v16 = OUTLINED_FUNCTION_8_0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v19 = OUTLINED_FUNCTION_8_0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[7];
    goto LABEL_9;
  }

  if (a2 != 2147483646)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
    v25 = OUTLINED_FUNCTION_8_0(v24);
    if (*(v26 + 84) == a2)
    {
      v9 = v25;
      v14 = a3[10];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
      v14 = a3[11];
    }

    goto LABEL_9;
  }

  v22 = *(v3 + a3[8]);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  v23 = v22 - 1;
  if (v23 < 0)
  {
    v23 = -1;
  }

  return (v23 + 1);
}

uint64_t sub_23B3D7044(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34_0();
  v8 = type metadata accessor for CurrentWeather();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
        result = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = result;
          v16 = a4[7];
        }

        else
        {
          if (a3 == 2147483646)
          {
            *(v4 + a4[8]) = a2;
            return result;
          }

          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[10];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
            v16 = a4[11];
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D72E0()
{
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D73B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D7484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D7574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_23B50A9E4();

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_23B3D75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = sub_23B50A9E4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

uint64_t sub_23B3D7660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3D7714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3D7808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v7 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3D786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v8 = a1 + *(a4 + 24);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3D791C()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_23B3D79D4()
{
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);

  v6 = *(v0 + v5);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_23B3D7A94()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_23B3D7AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D7B48()
{
  OUTLINED_FUNCTION_0_40();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D7BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D7C20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_23B3D7CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23B50AD24();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for WeatherMetadata();
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B3D7DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36) + 8);
  if (v15 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = *(a1 + *(a3 + 36) + 8);
  }

  v17 = v16 - 3;
  if (v15 >= 3)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3D7EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3D8078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_26();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3D80EC()
{
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3D8160(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x7473616365726F66;
  }
}

uint64_t sub_23B3D8190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D8160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B3D81C4()
{
  v0 = sub_23B50D664();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23B3D8210(char a1)
{
  if (!a1)
  {
    return 0x7473616365726F66;
  }

  if (a1 == 1)
  {
    return 0x617461646174656DLL;
  }

  return 0x6F4C656E6972616DLL;
}

uint64_t sub_23B3D83B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B3D845C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

BOOL sub_23B3D8584(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t _s10WeatherKit23WeatherDataAgePredicateOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_5_24(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10WeatherKit23WeatherDataAgePredicateOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23B3D864C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_5_24(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3D8660(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_23B3D86CC()
{
  OUTLINED_FUNCTION_32_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
        OUTLINED_FUNCTION_8_0(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
          OUTLINED_FUNCTION_8_0(v14);
          if (*(v15 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
            OUTLINED_FUNCTION_8_0(v16);
            if (*(v17 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
              OUTLINED_FUNCTION_8_0(v18);
              if (*(v19 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
                v21 = OUTLINED_FUNCTION_8_0(v20);
                if (*(v22 + 84) == v0)
                {
                  v6 = v21;
                  v9 = v2[11];
                }

                else
                {
                  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                  v24 = OUTLINED_FUNCTION_8_0(v23);
                  if (*(v25 + 84) == v0)
                  {
                    v6 = v24;
                    v9 = v2[12];
                  }

                  else
                  {
                    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                    v27 = OUTLINED_FUNCTION_8_0(v26);
                    if (*(v28 + 84) == v0)
                    {
                      v6 = v27;
                      v9 = v2[13];
                    }

                    else
                    {
                      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                      v30 = OUTLINED_FUNCTION_8_0(v29);
                      if (*(v31 + 84) == v0)
                      {
                        v6 = v30;
                        v9 = v2[14];
                      }

                      else
                      {
                        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                        v9 = v2[15];
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

    v5 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_23B3D8A50()
{
  OUTLINED_FUNCTION_23_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v4);
    if (*(v5 + 84) == v1)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
        OUTLINED_FUNCTION_8_0(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
          OUTLINED_FUNCTION_8_0(v10);
          if (*(v11 + 84) == v1)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
            OUTLINED_FUNCTION_8_0(v12);
            if (*(v13 + 84) == v1)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
              OUTLINED_FUNCTION_8_0(v14);
              if (*(v15 + 84) == v1)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
                OUTLINED_FUNCTION_8_0(v16);
                if (*(v17 + 84) == v1)
                {
                  v18 = v0[11];
                }

                else
                {
                  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                  OUTLINED_FUNCTION_8_0(v19);
                  if (*(v20 + 84) == v1)
                  {
                    v21 = v0[12];
                  }

                  else
                  {
                    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                    OUTLINED_FUNCTION_8_0(v22);
                    if (*(v23 + 84) == v1)
                    {
                      v24 = v0[13];
                    }

                    else
                    {
                      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                      OUTLINED_FUNCTION_8_0(v25);
                      if (*(v26 + 84) == v1)
                      {
                        v27 = v0[14];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                        v28 = v0[15];
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

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

uint64_t sub_23B3D8DD4()
{
  OUTLINED_FUNCTION_32_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v14);
          if (*(v15 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v16);
            if (*(v17 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0(v18);
              if (*(v19 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                v21 = OUTLINED_FUNCTION_8_0(v20);
                if (*(v22 + 84) == v0)
                {
                  v6 = v21;
                  v9 = v2[11];
                }

                else
                {
                  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                  v24 = OUTLINED_FUNCTION_8_0(v23);
                  if (*(v25 + 84) == v0)
                  {
                    v6 = v24;
                    v9 = v2[12];
                  }

                  else
                  {
                    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                    v27 = OUTLINED_FUNCTION_8_0(v26);
                    if (*(v28 + 84) == v0)
                    {
                      v6 = v27;
                      v9 = v2[13];
                    }

                    else
                    {
                      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                      v30 = OUTLINED_FUNCTION_8_0(v29);
                      if (*(v31 + 84) == v0)
                      {
                        v6 = v30;
                        v9 = v2[14];
                      }

                      else
                      {
                        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                        v9 = v2[15];
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

    v5 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_23B3D9158()
{
  OUTLINED_FUNCTION_23_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v4);
    if (*(v5 + 84) == v1)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v10);
          if (*(v11 + 84) == v1)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v12);
            if (*(v13 + 84) == v1)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0(v14);
              if (*(v15 + 84) == v1)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
                OUTLINED_FUNCTION_8_0(v16);
                if (*(v17 + 84) == v1)
                {
                  v18 = v0[11];
                }

                else
                {
                  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
                  OUTLINED_FUNCTION_8_0(v19);
                  if (*(v20 + 84) == v1)
                  {
                    v21 = v0[12];
                  }

                  else
                  {
                    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
                    OUTLINED_FUNCTION_8_0(v22);
                    if (*(v23 + 84) == v1)
                    {
                      v24 = v0[13];
                    }

                    else
                    {
                      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
                      OUTLINED_FUNCTION_8_0(v25);
                      if (*(v26 + 84) == v1)
                      {
                        v27 = v0[14];
                      }

                      else
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                        v28 = v0[15];
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

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

uint64_t sub_23B3D94DC()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v15);
            if (*(v16 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_56_3();
            }
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_23B3D96E4()
{
  OUTLINED_FUNCTION_23_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v11);
            if (*(v12 + 84) == v0)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_57_3();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_23B3D98EC()
{
  OUTLINED_FUNCTION_32_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v14);
          if (*(v15 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v16);
            if (*(v17 + 84) == v0)
            {
              OUTLINED_FUNCTION_43_8();
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0(v18);
              if (*(v19 + 84) == v0)
              {
                OUTLINED_FUNCTION_56_3();
              }

              else
              {
                v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                v9 = *(v2 + 44);
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_23B3D9B40()
{
  OUTLINED_FUNCTION_23_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v4);
    if (*(v5 + 84) == v1)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v10);
          if (*(v11 + 84) == v1)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
            OUTLINED_FUNCTION_8_0(v12);
            if (*(v13 + 84) == v1)
            {
              OUTLINED_FUNCTION_49_3();
            }

            else
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
              OUTLINED_FUNCTION_8_0(v14);
              if (*(v15 + 84) == v1)
              {
                OUTLINED_FUNCTION_57_3();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
                v16 = *(v0 + 44);
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_23B3D9D94()
{
  OUTLINED_FUNCTION_32_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_4();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_45_5();
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v9);
      if (*(v10 + 84) == v0)
      {
        OUTLINED_FUNCTION_42_7();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v11);
        if (*(v12 + 84) == v0)
        {
          OUTLINED_FUNCTION_44_4();
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v13);
          if (*(v14 + 84) == v0)
          {
            OUTLINED_FUNCTION_47_4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
            OUTLINED_FUNCTION_43_8();
          }
        }
      }
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_23B3D9F54()
{
  OUTLINED_FUNCTION_23_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_8_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_52_3();
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
    OUTLINED_FUNCTION_8_0(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_51_1();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      OUTLINED_FUNCTION_8_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_48_3();
      }

      else
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
        OUTLINED_FUNCTION_8_0(v7);
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_50_2();
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
          OUTLINED_FUNCTION_8_0(v9);
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_53_2();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
            OUTLINED_FUNCTION_49_3();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_2();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_23B3DA224(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v9 = OUTLINED_FUNCTION_8_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      v14 = OUTLINED_FUNCTION_8_0(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v12], a2, v11);
  }
}

_BYTE *sub_23B3DA348(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    v9 = OUTLINED_FUNCTION_8_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      v14 = OUTLINED_FUNCTION_8_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(&v5[v12], a2, a2, v11);
  }

  return result;
}

uint64_t sub_23B3DA544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_23B3DA5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B3DAB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0x65)
    {
      return v8 - 100;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B3DAC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 100;
  }

  return result;
}

uint64_t sub_23B3DADC0()
{
  OUTLINED_FUNCTION_105_1();
  v5 = *(v0 + 80);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v1 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 96) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DAE78()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_137_0();
  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DAF78()
{
  OUTLINED_FUNCTION_137_0();
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v1 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB028()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB0D8()
{
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v1 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B3DB180()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_226_1();
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v4 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  (*(v5 + 8))(v0 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v3 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB2D4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B3DB380()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_23B3DB438()
{
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v129 = *(*(v7 - 1) + 80);
  v8 = (v6 + v129 + 8) & ~v129;
  v127 = *(*(v7 - 1) + 64);
  v131 = *(v3 + 8);
  v131(v0 + v5, v1);

  v130 = v0;
  v128 = v8;
  v9 = v0 + v8;
  v10 = sub_23B50AA24();
  if (!OUTLINED_FUNCTION_143_1(v0 + v8))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v13 = v12[7];
  if (!OUTLINED_FUNCTION_143_1(&v13[v9]))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v14 + 8))(&v13[v9], v10);
  }

  v15 = v12[11];
  Options = type metadata accessor for InstantWeatherQueryOptions();
  if (!__swift_getEnumTagSinglePayload(v9 + v15, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      (*(v17 + 8))(v9 + v15, v10);
    }

    else
    {
      v131(v9 + v15, v1);
    }
  }

  v18 = v9 + v12[12];
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  if (!__swift_getEnumTagSinglePayload(v18, 1, PeriodicRelativeRange))
  {
    v20 = OUTLINED_FUNCTION_67_2();
    (v13)(v20);
    v21 = OUTLINED_FUNCTION_65_3();
    (v13)(v21);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[12]))
  {
    OUTLINED_FUNCTION_26_16();
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_163_1();
    v25(v24);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  if (!OUTLINED_FUNCTION_52_4(v26))
  {
    OUTLINED_FUNCTION_26_16();
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_94_1();
    v30(v29);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v32 = *(v31 + 8);
      v33 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v33 = OUTLINED_FUNCTION_72_1();
    }

    v34(v33);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v35 = OUTLINED_FUNCTION_67_2();
    (v13)(v35);
    v36 = OUTLINED_FUNCTION_65_3();
    (v13)(v36);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[16]))
  {
    OUTLINED_FUNCTION_26_16();
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_163_1();
    v40(v39);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  if (!OUTLINED_FUNCTION_52_4(v41))
  {
    OUTLINED_FUNCTION_26_16();
    v43 = *(v42 + 8);
    v44 = OUTLINED_FUNCTION_94_1();
    v45(v44);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v47 = *(v46 + 8);
      v48 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v48 = OUTLINED_FUNCTION_72_1();
    }

    v49(v48);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v50 = OUTLINED_FUNCTION_67_2();
    (v13)(v50);
    v51 = OUTLINED_FUNCTION_65_3();
    (v13)(v51);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[20]))
  {
    OUTLINED_FUNCTION_26_16();
    v53 = *(v52 + 8);
    v54 = OUTLINED_FUNCTION_163_1();
    v55(v54);
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  if (!OUTLINED_FUNCTION_52_4(v56))
  {
    OUTLINED_FUNCTION_26_16();
    v58 = *(v57 + 8);
    v59 = OUTLINED_FUNCTION_94_1();
    v60(v59);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v62 = *(v61 + 8);
      v63 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v63 = OUTLINED_FUNCTION_72_1();
    }

    v64(v63);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v65 = OUTLINED_FUNCTION_67_2();
    (v13)(v65);
    v66 = OUTLINED_FUNCTION_65_3();
    (v13)(v66);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[24]))
  {
    OUTLINED_FUNCTION_26_16();
    v68 = *(v67 + 8);
    v69 = OUTLINED_FUNCTION_163_1();
    v70(v69);
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  if (!OUTLINED_FUNCTION_52_4(v71))
  {
    OUTLINED_FUNCTION_26_16();
    v73 = *(v72 + 8);
    v74 = OUTLINED_FUNCTION_94_1();
    v75(v74);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v77 = *(v76 + 8);
      v78 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v78 = OUTLINED_FUNCTION_72_1();
    }

    v79(v78);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v80 = OUTLINED_FUNCTION_67_2();
    (v13)(v80);
    v81 = OUTLINED_FUNCTION_65_3();
    (v13)(v81);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[28]))
  {
    OUTLINED_FUNCTION_26_16();
    v83 = *(v82 + 8);
    v84 = OUTLINED_FUNCTION_163_1();
    v85(v84);
  }

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
  if (!OUTLINED_FUNCTION_52_4(v86))
  {
    OUTLINED_FUNCTION_26_16();
    v88 = *(v87 + 8);
    v89 = OUTLINED_FUNCTION_94_1();
    v90(v89);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v92 = *(v91 + 8);
      v93 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v93 = OUTLINED_FUNCTION_72_1();
    }

    v94(v93);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v95 = OUTLINED_FUNCTION_67_2();
    (v13)(v95);
    v96 = OUTLINED_FUNCTION_65_3();
    (v13)(v96);
    OUTLINED_FUNCTION_196_1();
  }

  if (!OUTLINED_FUNCTION_81_2(v7[32]))
  {
    OUTLINED_FUNCTION_26_16();
    v98 = *(v97 + 8);
    v99 = OUTLINED_FUNCTION_163_1();
    v100(v99);
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  if (!OUTLINED_FUNCTION_52_4(v101))
  {
    OUTLINED_FUNCTION_26_16();
    v103 = *(v102 + 8);
    v104 = OUTLINED_FUNCTION_94_1();
    v105(v104);
  }

  if (!OUTLINED_FUNCTION_80_2())
  {
    if (OUTLINED_FUNCTION_199_1() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      v107 = *(v106 + 8);
      v108 = OUTLINED_FUNCTION_94_1();
    }

    else
    {
      v108 = OUTLINED_FUNCTION_72_1();
    }

    v109(v108);
  }

  if (!OUTLINED_FUNCTION_57_4())
  {
    v110 = OUTLINED_FUNCTION_67_2();
    (v13)(v110);
    v111 = OUTLINED_FUNCTION_65_3();
    (v13)(v111);
    OUTLINED_FUNCTION_196_1();
  }

  v112 = v9 + v7[36];
  if (!OUTLINED_FUNCTION_143_1(v112))
  {
    OUTLINED_FUNCTION_26_16();
    v114 = *(v113 + 8);
    v115 = OUTLINED_FUNCTION_36();
    v116(v115);
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  v118 = v117[7];
  if (!OUTLINED_FUNCTION_143_1(v112 + v118))
  {
    OUTLINED_FUNCTION_26_16();
    (*(v119 + 8))(v112 + v118, v10);
  }

  v120 = v117[11];
  if (!__swift_getEnumTagSinglePayload(v112 + v120, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_26_16();
      (*(v121 + 8))(v112 + v120, v10);
    }

    else
    {
      v131(v112 + v120, v1);
    }
  }

  v122 = v112 + v117[12];
  if (!__swift_getEnumTagSinglePayload(v122, 1, PeriodicRelativeRange))
  {
    v123 = OUTLINED_FUNCTION_226();
    (v131)(v123);
    v131(v122 + *(PeriodicRelativeRange + 20), v1);
    v124 = *(v122 + *(PeriodicRelativeRange + 24));
  }

  v125 = *(v130 + ((v127 + v128 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_23B3DBDD8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_23B3DBFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMetadata();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3DC058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DC1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32) + 8);
  if (v15 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = *(a1 + *(a3 + 32) + 8);
  }

  v17 = v16 - 3;
  if (v15 >= 3)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3DC2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
    result = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2 + 3;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3DC3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3DC45C()
{
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();

  return sub_23B50D374();
}

uint64_t sub_23B3DC4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23B3DC534(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WeatherMetadata();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B3DC5BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DC664(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_0();
  v4 = sub_23B50AEF4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_23B3DC6A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_0();
  v4 = sub_23B50AEF4();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_23B3DC6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_23B3DC754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_23B3DC860(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_16:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 253)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
    v16 = OUTLINED_FUNCTION_8_0(v15);
    if (*(v17 + 84) == a2)
    {
      v9 = v16;
      v18 = a3[8];
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
      v20 = OUTLINED_FUNCTION_8_0(v19);
      if (*(v21 + 84) == a2)
      {
        v9 = v20;
        v18 = a3[10];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
        v18 = a3[11];
      }
    }

    v10 = a1 + v18;
    goto LABEL_16;
  }

  v11 = *(a1 + a3[7] + 16);
  if (v11 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = *(a1 + a3[7] + 16);
  }

  v13 = v12 - 2;
  if (v11 >= 2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3DC9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + a4[7] + 16) = a2 + 2;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[10];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
        v16 = a4[11];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3DCB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3DCC04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3DCD2C@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherSeverityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B3DCE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50C7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B3DCF40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50C7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B3DD074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality();
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

uint64_t sub_23B3DD0BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AirQuality();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_23B3DD16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

char *sub_23B3DD1F4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_23B3DD21C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[9];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v10 = a3[12];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[8]);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t sub_23B3DD34C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[9];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v12 = a4[12];
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_23B3DD51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return v9 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B3DD5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23B3DD718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Swell();
    v12 = OUTLINED_FUNCTION_8_0(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_23B3DD7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Swell();
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_23B3DD930(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_6_21(a1);
}

uint64_t sub_23B3DDA38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B50AEF4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B3DDAC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B50AEF4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3DDC24(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34_0();
  v6 = sub_23B50AB34();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_23B50AD24();
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v16 = a3[13];
        }

        else
        {
          v23 = type metadata accessor for WeatherMetadata();
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a2)
          {
            v9 = v24;
            v16 = a3[17];
          }

          else
          {
            v9 = sub_23B50AD64();
            v16 = a3[18];
          }
        }
      }
    }

    v10 = v3 + v16;
    goto LABEL_17;
  }

  v11 = *(v3 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_23B3DDE08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34_0();
  v8 = sub_23B50AB34();
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return result;
    }

    v13 = sub_23B50AD24();
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[9];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[13];
        }

        else
        {
          v23 = type metadata accessor for WeatherMetadata();
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[17];
          }

          else
          {
            v11 = sub_23B50AD64();
            v16 = a4[18];
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t static WatchWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherAlert();
  v79 = *(v2 - 8);
  v3 = v79;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = (&v75 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = (&v75 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v75 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  static CurrentWeather.mock()(&v75 - v34);
  v75 = type metadata accessor for CurrentWeather();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v75);
  static Forecast<>.mock()(v29);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v36);
  v78 = v23;
  static Forecast<>.mock()(v23);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v38 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v77 = v17;
  static Forecast<>.mock()(v17);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v42 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v76 = v11;
  static AirQuality.mock()(v11);
  v45 = type metadata accessor for AirQuality();
  v46 = OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E131CB8, &qword_23B50ED80);
  v49 = *(v3 + 72);
  v50 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23B50ED30;
  v52 = v80;
  sub_23B4DAB18(v80);
  sub_23B3DE638(v52, v51 + v50);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v75);
  v56 = type metadata accessor for WatchWeather();
  v57 = v56[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v36);
  v61 = v56[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v37);
  v65 = v56[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v41);
  v69 = v56[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v45);
  v73 = v56[9];
  sub_23B3C24A8(v35, a1, &qword_27E131C98, &unk_23B50ED60);
  sub_23B3C24A8(v29, a1 + v57, &qword_27E131C90, &unk_23B514EC0);
  sub_23B3C24A8(v78, a1 + v61, &qword_27E131C88, &unk_23B50ED50);
  sub_23B3C24A8(v77, a1 + v65, &qword_27E131C80, &qword_23B50ED48);
  result = sub_23B3C24A8(v76, a1 + v69, &qword_27E131C78, &qword_23B50ED40);
  *(a1 + v73) = v51;
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

uint64_t sub_23B3DE638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherAlert();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceDailyRelativeRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeatherServiceDailyRelativeRange(uint64_t result, int a2, int a3)
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

uint64_t Article.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Article.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Article.supportedStorefronts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Article.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Article() + 24);
  v4 = sub_23B50ADC4();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for Article()
{
  result = qword_280B41BE0;
  if (!qword_280B41BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Article.locale.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for Article() + 24);
  v3 = sub_23B50ADC4();
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Article.locale.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Article() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.headlineOverride.getter()
{
  v1 = (v0 + *(type metadata accessor for Article() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Article.headlineOverride.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Article() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Article.headlineOverride.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Article() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.phenomena.getter()
{
  v1 = *(v0 + *(type metadata accessor for Article() + 32));
}

uint64_t Article.phenomena.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for Article() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Article.phenomena.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Article() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.alertIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Article() + 36));
}

uint64_t Article.alertIds.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for Article() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Article.alertIds.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Article() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t Article.init(id:supportedStorefronts:locale:headlineOverride:phenomena:alertIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for Article();
  v18 = &a9[v17[7]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v19 = v17[6];
  v20 = sub_23B50ADC4();
  OUTLINED_FUNCTION_6(v20);
  result = (*(v21 + 32))(&a9[v19], a4);
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v17[8]] = a7;
  *&a9[v17[9]] = a8;
  return result;
}

uint64_t sub_23B3DEC38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000023B5287E0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000023B528800 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656D6F6E656870 && a2 == 0xE900000000000061;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7364497472656C61 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t _s10WeatherKit0A6ChangeV9DirectionO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a1);
  return sub_23B50D914();
}

unint64_t sub_23B3DEE88(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E656D6F6E656870;
      break;
    case 5:
      result = 0x7364497472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3DEF44()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t sub_23B3DEF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3DEC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3DEFD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3DEE2C();
  *a1 = result;
  return result;
}

uint64_t sub_23B3DF000(uint64_t a1)
{
  v2 = sub_23B3E1FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3DF03C(uint64_t a1)
{
  v2 = sub_23B3E1FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static Article.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3DF180(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Article();
  if ((MEMORY[0x23EE9B020](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if ((sub_23B3DF180(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v12 = v5[9];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_23B3DF20C(v13, v14);
}

uint64_t sub_23B3DF180(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_23B50D834() & 1) == 0)
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

uint64_t sub_23B3DF20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_23B3E2AC4(&unk_27E131E40);
    v23 = sub_23B50D134();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

void sub_23B3DF420(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    OUTLINED_FUNCTION_42();
    v42 = v3;
    v43 = v4;
    OUTLINED_FUNCTION_42();
    v40 = v5;
    v41 = v6;
    OUTLINED_FUNCTION_42();
    v38 = v7;
    v39 = v8;
    OUTLINED_FUNCTION_42();
    v37 = v9;
    v11 = (v10 + 40);
    for (i = (v12 + 40); ; i += 16)
    {
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = *(i - 1);
      v17 = *i;

      sub_23B3DF86C();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v11 += 16;
      v19 = 0xEF6C696174654465;
      v20 = 0x6B694C736C656566;
      switch(v15)
      {
        case 1:
          break;
        case 2:
          v20 = 0x79746964696D7568;
          goto LABEL_20;
        case 3:
          v21 = 1852796781;
          goto LABEL_15;
        case 4:
          OUTLINED_FUNCTION_16_0();
          v20 = v23 + 3;
          v19 = v38;
          break;
        case 5:
          OUTLINED_FUNCTION_16_0();
          v20 = v25 + 11;
          v19 = v39;
          break;
        case 6:
          v20 = 0x6572757373657270;
LABEL_20:
          v19 = 0xEE006C6961746544;
          break;
        case 7:
          v19 = 0xE600000000000000;
          v20 = 0x657265766573;
          break;
        case 8:
          OUTLINED_FUNCTION_16_0();
          v20 = v26 + 3;
          v19 = v40;
          break;
        case 9:
          OUTLINED_FUNCTION_16_0();
          v20 = v24 + 1;
          v19 = v41;
          break;
        case 10:
          v19 = 0xE500000000000000;
          v20 = 0x646E657274;
          break;
        case 11:
          OUTLINED_FUNCTION_16_0();
          v20 = v22 + 9;
          v19 = v42;
          break;
        case 12:
          v20 = 0x447865646E497675;
          v19 = 0xED00006C69617465;
          break;
        case 13:
          v20 = 0xD000000000000010;
          v19 = v43;
          break;
        case 14:
          v21 = 1684957559;
LABEL_15:
          v20 = v21 | 0x6174654400000000;
          v19 = 0xEA00000000006C69;
          break;
        default:
          v20 = 0xD000000000000010;
          v19 = v37;
          break;
      }

      v27 = 0x6B694C736C656566;
      v28 = 0xEF6C696174654465;
      switch(v17)
      {
        case 1:
          break;
        case 2:
          v27 = 0x79746964696D7568;
          goto LABEL_37;
        case 3:
          v29 = 1852796781;
          goto LABEL_32;
        case 4:
          OUTLINED_FUNCTION_16_0();
          v27 = v31 + 3;
          v28 = v38;
          break;
        case 5:
          OUTLINED_FUNCTION_16_0();
          v27 = v33 + 11;
          v28 = v39;
          break;
        case 6:
          v27 = 0x6572757373657270;
LABEL_37:
          v28 = 0xEE006C6961746544;
          break;
        case 7:
          v28 = 0xE600000000000000;
          v27 = 0x657265766573;
          break;
        case 8:
          OUTLINED_FUNCTION_16_0();
          v27 = v34 + 3;
          v28 = v40;
          break;
        case 9:
          OUTLINED_FUNCTION_16_0();
          v27 = v32 + 1;
          v28 = v41;
          break;
        case 10:
          v28 = 0xE500000000000000;
          v27 = 0x646E657274;
          break;
        case 11:
          OUTLINED_FUNCTION_16_0();
          v27 = v30 + 9;
          v28 = v42;
          break;
        case 12:
          v27 = 0x447865646E497675;
          v28 = 0xED00006C69617465;
          break;
        case 13:
          v27 = 0xD000000000000010;
          v28 = v43;
          break;
        case 14:
          v29 = 1684957559;
LABEL_32:
          v27 = v29 | 0x6174654400000000;
          v28 = 0xEA00000000006C69;
          break;
        default:
          v27 = 0xD000000000000010;
          v28 = v37;
          break;
      }

      if (v20 == v27 && v19 == v28)
      {
      }

      else
      {
        v36 = sub_23B50D834();

        if ((v36 & 1) == 0)
        {
          return;
        }
      }

      if (!--v2)
      {
        return;
      }
    }
  }
}

void sub_23B3DF86C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = sub_23B50AD64();
  v5 = OUTLINED_FUNCTION_5(v4);
  v84 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v83 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v82 = type metadata accessor for Article();
  v13 = OUTLINED_FUNCTION_0_0(v82);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_5();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v22 = (&v71 - v21);
  v23 = *(v3 + 16);
  if (v23 == *(v1 + 16) && v23 && v3 != v1)
  {
    v24 = 0;
    OUTLINED_FUNCTION_3_0(v20);
    v26 = v3 + v25;
    v27 = v1 + v25;
    v78 = v84 + 8;
    v79 = v84 + 16;
    v29 = *(v28 + 72);
    v73 = v26;
    v74 = v23;
    v71 = v29;
    v72 = v27;
    v30 = (v84 + 8);
    while (1)
    {
      v31 = v29 * v24;
      OUTLINED_FUNCTION_13_1();
      sub_23B3E2B08(v26 + v31, v22, v32);
      if (v24 == v23)
      {
        break;
      }

      v75 = v24;
      OUTLINED_FUNCTION_13_1();
      sub_23B3E2B08(v27 + v31, v18, v33);
      v34 = *v22 == *v18 && v22[1] == v18[1];
      if (!v34 && (sub_23B50D834() & 1) == 0 || (v35 = v22[2], OUTLINED_FUNCTION_29_1(v18[2]), !v34))
      {
LABEL_60:
        OUTLINED_FUNCTION_14_2();
        sub_23B3E2B68();
        sub_23B3E2B68();
        goto LABEL_61;
      }

      if (v31)
      {
        v38 = v37 == v36;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v39 = (v37 + 40);
        v40 = (v36 + 40);
        while (v31)
        {
          v41 = *(v39 - 1) == *(v40 - 1) && *v39 == *v40;
          if (!v41 && (sub_23B50D834() & 1) == 0)
          {
            goto LABEL_60;
          }

          v39 += 2;
          v40 += 2;
          if (!--v31)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        break;
      }

LABEL_25:
      if ((MEMORY[0x23EE9B020](v22 + v82[6], v18 + v82[6]) & 1) == 0)
      {
        goto LABEL_60;
      }

      v42 = v82[7];
      v43 = (v22 + v42);
      v44 = *(v22 + v42 + 8);
      v45 = (v18 + v42);
      v46 = v45[1];
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_60;
        }

        v47 = *v43 == *v45 && v44 == v46;
        if (!v47 && (sub_23B50D834() & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else if (v46)
      {
        goto LABEL_60;
      }

      v48 = v82[8];
      v49 = *(v22 + v48);
      OUTLINED_FUNCTION_29_1(*(v18 + v48));
      if (!v34)
      {
        goto LABEL_60;
      }

      if (v31)
      {
        v52 = v51 == v50;
      }

      else
      {
        v52 = 1;
      }

      if (!v52)
      {
        v53 = (v51 + 40);
        v54 = (v50 + 40);
        while (v31)
        {
          v55 = *(v53 - 1) == *(v54 - 1) && *v53 == *v54;
          if (!v55 && (sub_23B50D834() & 1) == 0)
          {
            goto LABEL_60;
          }

          v53 += 2;
          v54 += 2;
          if (!--v31)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_63;
      }

LABEL_49:
      v56 = v82[9];
      v57 = *(v18 + v56);
      v81 = *(v22 + v56);
      v58 = *(v57 + 16);
      v80 = *(v81 + 16);
      if (v80 != v58)
      {
        goto LABEL_60;
      }

      if (v80 && v81 != v57)
      {
        v59 = 0;
        OUTLINED_FUNCTION_41_0();
        v76 = v57 + v60;
        v77 = v81 + v60;
        while (v59 < *(v81 + 16))
        {
          v61 = v22;
          v62 = *(v84 + 72) * v59;
          v63 = *(v84 + 16);
          v63(v12, v77 + v62, v4);
          if (v59 >= *(v57 + 16))
          {
            goto LABEL_65;
          }

          v64 = v18;
          v65 = v12;
          v66 = v83;
          v63(v83, v76 + v62, v4);
          OUTLINED_FUNCTION_11_0();
          sub_23B3E2AC4(&unk_27E131E40);
          v67 = sub_23B50D134();
          v68 = *v30;
          v69 = v66;
          v12 = v65;
          v18 = v64;
          (*v30)(v69, v4);
          v70 = OUTLINED_FUNCTION_37();
          v68(v70);
          v22 = v61;
          if ((v67 & 1) == 0)
          {
            goto LABEL_60;
          }

          if (v80 == ++v59)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_64;
      }

LABEL_57:
      v24 = v75 + 1;
      sub_23B3E2B68();
      sub_23B3E2B68();
      v26 = v73;
      v23 = v74;
      v29 = v71;
      v27 = v72;
      if (v24 == v74)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_61:
    OUTLINED_FUNCTION_20();
  }
}

uint64_t sub_23B3DFD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 4) == *(i - 4); i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23B50D834() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_23B3DFE28()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DayPartForecast();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *(v4 + 16);
  if (v10 == *(v2 + 16) && v10 && v4 != v2)
  {
    v11 = 0;
    v12 = v4 + 32;
    v13 = v2 + 32;
    v29 = v4 + 32;
    v30 = v10;
    v28 = v2 + 32;
    while (v11 != v10)
    {
      v14 = (v12 + 16 * v11);
      v15 = (v13 + 16 * v11);
      if (*v14 != *v15)
      {
        goto LABEL_20;
      }

      v16 = v14[1];
      v17 = v15[1];
      v18 = *(v16 + 16);
      if (v18 != *(v17 + 16))
      {
        goto LABEL_20;
      }

      if (v18 && v16 != v17)
      {
        v31 = v11;
        OUTLINED_FUNCTION_41_0();
        v20 = v16 + v19;
        v21 = v17 + v19;

        v22 = 0;
        while (v22 < *(v16 + 16))
        {
          v23 = *(v32 + 72) * v22;
          sub_23B3E2B08(v20 + v23, v9, type metadata accessor for DayPartForecast);
          if (v22 >= *(v17 + 16))
          {
            goto LABEL_22;
          }

          sub_23B3E2B08(v21 + v23, v0, type metadata accessor for DayPartForecast);
          v24 = OUTLINED_FUNCTION_40_0();
          v26 = static DayPartForecast.== infix(_:_:)(v24, v25);
          sub_23B3E2B68();
          sub_23B3E2B68();
          if (!v26)
          {

            goto LABEL_20;
          }

          if (v18 == ++v22)
          {

            v10 = v30;
            v11 = v31;
            v13 = v28;
            v12 = v29;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_16:
      if (++v11 == v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E00A8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_1();
  v13 = *(v7 + 16);
  if (v13 == *(v5 + 16) && v13 && v7 != v5)
  {
    OUTLINED_FUNCTION_3_0(v12);
    v15 = v7 + v14;
    v16 = v5 + v14;
    v18 = *(v17 + 72);
    do
    {
      v19 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v19, v20, v3);
      v21 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v21, v22, v3);
      v23 = OUTLINED_FUNCTION_36();
      v24 = v1(v23);
      OUTLINED_FUNCTION_40_0();
      sub_23B3E2B68();
      OUTLINED_FUNCTION_37();
      sub_23B3E2B68();
      if ((v24 & 1) == 0)
      {
        break;
      }

      v16 += v18;
      v15 += v18;
      --v13;
    }

    while (v13);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B3E01FC()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for HistoricalFact.Argument(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for HistoricalFact(0);
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_5();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v22 = *(v4 + 16);
  if (v22 != *(v2 + 16) || !v22 || v4 == v2)
  {
LABEL_72:
    OUTLINED_FUNCTION_20();
    return;
  }

  v59 = v6;
  v60 = v22;
  v23 = 0;
  OUTLINED_FUNCTION_3_0(v19);
  v61 = v11;
  v62 = v2 + v24;
  v63 = *(v25 + 72);
  v64 = v4 + v24;
  while (1)
  {
    v26 = v63 * v23;
    OUTLINED_FUNCTION_10_0();
    sub_23B3E2B08(v27 + v26, v21, v28);
    if (v23 == v22)
    {
      break;
    }

    v65 = v23;
    OUTLINED_FUNCTION_10_0();
    sub_23B3E2B08(v62 + v26, v17, v29);
    v30 = *v17;
    if (*v21)
    {
      v31 = 0x7469706963657270;
    }

    else
    {
      v31 = 0x74617265706D6574;
    }

    if (*v21)
    {
      v32 = 0xED00006E6F697461;
    }

    else
    {
      v32 = 0xEB00000000657275;
    }

    if (*v17)
    {
      v33 = 0x7469706963657270;
    }

    else
    {
      v33 = 0x74617265706D6574;
    }

    if (*v17)
    {
      v34 = 0xED00006E6F697461;
    }

    else
    {
      v34 = 0xEB00000000657275;
    }

    v35 = v31 == v33 && v32 == v34;
    if (v35)
    {
    }

    else
    {
      v36 = sub_23B50D834();

      if ((v36 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v37 = v21[1];
    if (v21[1])
    {
      if (v37 == 1)
      {
        v38 = 0x68746E6F6DLL;
      }

      else
      {
        v38 = 0x6B6165727473;
      }

      if (v37 == 1)
      {
        v39 = 0xE500000000000000;
      }

      else
      {
        v39 = 0xE600000000000000;
      }

      if (v17[1])
      {
LABEL_33:
        if (v17[1] == 1)
        {
          v40 = 0xE500000000000000;
          v41 = 0x68746E6F6DLL;
        }

        else
        {
          v40 = 0xE600000000000000;
          v41 = 0x6B6165727473;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v39 = 0xE500000000000000;
      v38 = 0x7961646F74;
      if (v17[1])
      {
        goto LABEL_33;
      }
    }

    v40 = 0xE500000000000000;
    v41 = 0x7961646F74;
LABEL_38:
    if (v38 == v41 && v39 == v40)
    {
    }

    else
    {
      v43 = sub_23B50D834();

      if ((v43 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v44 = *(v21 + 1) == *(v17 + 1) && *(v21 + 2) == *(v17 + 2);
    if (!v44 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    v45 = *(v21 + 3) == *(v17 + 3) && *(v21 + 4) == *(v17 + 4);
    if (!v45 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    v46 = *(v21 + 5) == *(v17 + 5) && *(v21 + 6) == *(v17 + 6);
    if (!v46 && (sub_23B50D834() & 1) == 0)
    {
      goto LABEL_71;
    }

    v47 = *(v21 + 7);
    OUTLINED_FUNCTION_29_1(*(v17 + 7));
    if (!v35)
    {
      goto LABEL_71;
    }

    if (v26 && v49 != v48)
    {
      v50 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v51 = v49 + v50;
      v52 = v48 + v50;
      v53 = *(v59 + 72);
      while (1)
      {
        sub_23B3E2B08(v51, v10, type metadata accessor for HistoricalFact.Argument);
        sub_23B3E2B08(v52, v0, type metadata accessor for HistoricalFact.Argument);
        v54 = OUTLINED_FUNCTION_40_0();
        v56 = static HistoricalFact.Argument.== infix(_:_:)(v54, v55);
        sub_23B3E2B68();
        sub_23B3E2B68();
        if ((v56 & 1) == 0)
        {
          break;
        }

        v52 += v53;
        v51 += v53;
        if (!--v26)
        {
          goto LABEL_67;
        }
      }

LABEL_71:
      sub_23B3E2B68();
      sub_23B3E2B68();
      goto LABEL_72;
    }

LABEL_67:
    v57 = static WeatherMetadata.== infix(_:_:)(&v21[*(v61 + 40)], &v17[*(v61 + 40)]);
    sub_23B3E2B68();
    sub_23B3E2B68();
    if (v57)
    {
      v23 = v65 + 1;
      v22 = v60;
      if (v65 + 1 != v60)
      {
        continue;
      }
    }

    goto LABEL_72;
  }

  __break(1u);
}

void sub_23B3E0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for WeatherChange();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v25 + 16);
  if (v37 == *(v23 + 16) && v37 && v25 != v23)
  {
    OUTLINED_FUNCTION_3_0(v34);
    v39 = v25 + v38;
    v40 = v23 + v38;
    v42 = *(v41 + 72);
    while (1)
    {
      v43 = OUTLINED_FUNCTION_36();
      sub_23B3E2B08(v43, v44, v45);
      if (!v37)
      {
        break;
      }

      sub_23B3E2B08(v40, v32, type metadata accessor for WeatherChange);
      OUTLINED_FUNCTION_40_0();
      if ((sub_23B50ACD4() & 1) == 0 || (OUTLINED_FUNCTION_28_1(v26[5]), !v48) || (OUTLINED_FUNCTION_28_1(v26[6]), !v48) || (OUTLINED_FUNCTION_28_1(v26[7]), !v48))
      {
        sub_23B3E2B68();
        sub_23B3E2B68();
        goto LABEL_21;
      }

      v46 = v36[v26[8]];
      sub_23B3E2B68();
      v47 = *(v32 + v26[8]);
      sub_23B3E2B68();
      v48 = v46 != v47 || v37-- == 1;
      v40 += v42;
      v39 += v42;
      if (v48)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E0914()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  v2 = type metadata accessor for DayPrecipitationSummary();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_1();
  v8 = *(v1 + 16);
  if (v8 == *(v0 + 16) && v8 && v1 != v0)
  {
    OUTLINED_FUNCTION_2_5(v7);
    while (1)
    {
      v9 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v9, v10, v11);
      v12 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v12, v13, v14);
      OUTLINED_FUNCTION_36();
      if ((sub_23B50ACD4() & 1) == 0)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      v15 = *(v2 + 20);
      sub_23B3E2A74(&qword_280B42BC0);
      if ((OUTLINED_FUNCTION_33_0() & 1) == 0)
      {
        break;
      }

      v16 = *(v2 + 24);
      v17 = OUTLINED_FUNCTION_34_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v17)
      {
        OUTLINED_FUNCTION_25_0();
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0B18()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  v4 = type metadata accessor for MonthTemperatureStatistics();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_1();
  v10 = *(v3 + 16);
  if (v10 == *(v0 + 16) && v10 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5(v9);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v11, v12, v13);
      v14 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v14, v15, v16);
      if (*v2 != *v1)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      v17 = *(v4 + 20);
      sub_23B3E2A74(&qword_280B42B78);
      if ((OUTLINED_FUNCTION_33_0() & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      v19 = OUTLINED_FUNCTION_34_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v19)
      {
        OUTLINED_FUNCTION_25_0();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0D20()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = (&v28 - v16);
  v18 = *(v5 + 16);
  if (v18 == *(v3 + 16) && v18 && v5 != v3)
  {
    OUTLINED_FUNCTION_3_0(v15);
    v20 = v5 + v19;
    v21 = v3 + v19;
    v29 = *(v22 + 72);
    while (1)
    {
      sub_23B3E2B08(v20, v17, v1);
      sub_23B3E2B08(v21, v13, v1);
      if (*v17 != *v13)
      {
        break;
      }

      if (v17[1] != *(v13 + 8))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      v23 = v1;
      v24 = v7;
      v25 = *(v7 + 24);
      sub_23B3E2A74(&qword_280B42BC0);
      v7 = v24;
      v1 = v23;
      if ((OUTLINED_FUNCTION_34_1() & 1) == 0)
      {
        break;
      }

      v26 = *(v7 + 28);
      v27 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_18_0();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v27)
      {
        v21 += v29;
        v20 += v29;
        if (--v18)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

void sub_23B3E0F28()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  v24 = type metadata accessor for HourTemperatureStatistics();
  v5 = OUTLINED_FUNCTION_0_0(v24);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_1();
  v10 = *(v3 + 16);
  if (v10 == *(v0 + 16) && v10 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5(v9);
    v23 = v11;
    while (1)
    {
      v12 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v15, v16, v17);
      if (*v2 != *v1)
      {
        break;
      }

      v18 = *(v24 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      sub_23B3E2A74(&qword_280B42B78);
      if ((sub_23B50D134() & 1) == 0)
      {
        break;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
      v20 = *(v19 + 28);
      if ((OUTLINED_FUNCTION_45_1() & 1) == 0)
      {
        break;
      }

      v21 = *(v19 + 32);
      v22 = OUTLINED_FUNCTION_45_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v22)
      {
        v4 += v23;
        v3 += v23;
        if (--v10)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_13:
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3E1154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 11)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = i[1];
      v31 = i[5];
      v32 = i[3];
      v27 = i[7];
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = v3[1];
      v24 = v3[2];
      v25 = i[2];
      v11 = v3[3];
      v28 = v3[4];
      v12 = v3[5];
      v29 = v12;
      v30 = i[4];
      v22 = v3[6];
      v23 = i[6];
      v13 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      v26 = v3[7];
      if (v13)
      {
        if (v5 != v9)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_23B50D834();
        result = 0;
        if ((v14 & 1) == 0 || v5 != v9)
        {
          return result;
        }
      }

      v16 = v6 == v8 && v7 == v10;
      if (!v16 && (sub_23B50D834() & 1) == 0)
      {
        return 0;
      }

      if (!v32)
      {
        break;
      }

      if (!v11)
      {
        return 0;
      }

      if (v25 != v24 || v32 != v11)
      {
        v18 = sub_23B50D834();
        result = 0;
        if ((v18 & 1) == 0)
        {
          return result;
        }

        goto LABEL_27;
      }

      if (v30 != v28 || v31 != v29)
      {
        return 0;
      }

LABEL_37:
      if (v27)
      {
        if (!v26)
        {
          return 0;
        }

        v21 = v23 == v22 && v27 == v26;
        if (!v21 && (sub_23B50D834() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v26)
      {
        return 0;
      }

      v3 += 11;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v11)
    {
      return result;
    }

LABEL_27:
    if (v30 != v28 || v31 != v29)
    {
      return result;
    }

    goto LABEL_37;
  }

  return 1;
}

void sub_23B3E132C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v58 = (v11 - v10);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6(v59);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for MinuteCondition();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_5();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v31 = &v53 - v30;
  v32 = *(v3 + 16);
  if (v32 == *(v1 + 16) && v32 && v3 != v1)
  {
    OUTLINED_FUNCTION_3_0(v29);
    v34 = v3 + v33;
    v35 = v1 + v33;
    v53 = (v7 + 32);
    v54 = v20;
    v55 = (v7 + 8);
    v57 = *(v36 + 72);
    v60 = v21;
    while (1)
    {
      sub_23B3E2B08(v34, v31, type metadata accessor for MinuteCondition);
      if (!v32)
      {
        break;
      }

      sub_23B3E2B08(v35, v27, type metadata accessor for MinuteCondition);
      if ((sub_23B50ACD4() & 1) == 0)
      {
        goto LABEL_31;
      }

      v37 = *(v21 + 20);
      v38 = *(v59 + 48);
      sub_23B3C7DF4(&v31[v37], v20);
      sub_23B3C7DF4(v27 + v37, &v20[v38]);
      OUTLINED_FUNCTION_46(v20);
      if (v40)
      {
        OUTLINED_FUNCTION_46(&v20[v38]);
        if (!v40)
        {
          goto LABEL_30;
        }

        sub_23B398890(v20, &qword_27E131E18, &unk_23B50F710);
        v39 = v60;
      }

      else
      {
        sub_23B3C7DF4(v20, v15);
        OUTLINED_FUNCTION_46(&v20[v38]);
        if (v40)
        {
          (*v55)(v15, v4);
LABEL_30:
          sub_23B398890(v20, &qword_27E131E20, &qword_23B51E340);
LABEL_31:
          OUTLINED_FUNCTION_15_1();
          sub_23B3E2B68();
          sub_23B3E2B68();
          goto LABEL_32;
        }

        v41 = &v20[v38];
        v42 = v15;
        v43 = v58;
        (*v53)(v58, v41, v4);
        sub_23B3E2AC4(&unk_280B42F08);
        v56 = sub_23B50D134();
        v44 = *v55;
        v45 = v43;
        v15 = v42;
        v20 = v54;
        (*v55)(v45, v4);
        v44(v15, v4);
        sub_23B398890(v20, &qword_27E131E18, &unk_23B50F710);
        v39 = v60;
        if ((v56 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      OUTLINED_FUNCTION_30_0(v39[6]);
      v48 = v40 && v46 == v47;
      if (!v48 && (sub_23B50D834() & 1) == 0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_30_0(v39[7]);
      v51 = v40 && v49 == v50;
      if (!v51 && (sub_23B50D834() & 1) == 0)
      {
        goto LABEL_31;
      }

      v52 = static PrecipitationShift.== infix(_:_:)(&v31[v39[8]], v27 + v39[8]);
      OUTLINED_FUNCTION_15_1();
      sub_23B3E2B68();
      sub_23B3E2B68();
      if (v52)
      {
        v35 += v57;
        v34 += v57;
        v40 = v32-- == 1;
        v21 = v60;
        if (!v40)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    OUTLINED_FUNCTION_20();
  }
}

void sub_23B3E18B4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for MinuteWeather();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_1();
  v11 = *(v3 + 16);
  if (v11 == *(v0 + 16) && v11 && v3 != v0)
  {
    OUTLINED_FUNCTION_2_5(v10);
    v43 = v12;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_31();
      sub_23B3E2B08(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_32();
      sub_23B3E2B08(v16, v17, v18);
      OUTLINED_FUNCTION_36();
      if ((sub_23B50ACD4() & 1) == 0)
      {
        break;
      }

      v19 = v5[5];
      v20 = *(v2 + v19);
      v21 = *(v1 + v19);
      v22 = 0xE400000000000000;
      v23 = 1701736302;
      switch(v20)
      {
        case 1:
          v23 = 1818845544;
          break;
        case 2:
          v22 = 0xE500000000000000;
          v23 = 0x646578696DLL;
          break;
        case 3:
          v23 = 1852399986;
          break;
        case 4:
          v22 = 0xE500000000000000;
          v23 = 0x7465656C73;
          break;
        case 5:
          v23 = 2003791475;
          break;
        default:
          break;
      }

      v24 = 0xE400000000000000;
      v25 = 1701736302;
      switch(v21)
      {
        case 1:
          v25 = 1818845544;
          break;
        case 2:
          v24 = 0xE500000000000000;
          v25 = 0x646578696DLL;
          break;
        case 3:
          v25 = 1852399986;
          break;
        case 4:
          v24 = 0xE500000000000000;
          v25 = 0x7465656C73;
          break;
        case 5:
          v25 = 2003791475;
          break;
        default:
          break;
      }

      if (v23 == v25 && v22 == v24)
      {
      }

      else
      {
        v27 = sub_23B50D834();

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      if (*(v2 + v5[6]) != *(v1 + v5[6]))
      {
        break;
      }

      v28 = OUTLINED_FUNCTION_39();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      v30 = v5[7];
      sub_23B3E2A74(&qword_280B42F10);
      if ((sub_23B50D134() & 1) == 0)
      {
        break;
      }

      v31 = v5[8];
      v32 = v2 + v31;
      v33 = *(v2 + v31);
      v34 = v1 + v31;
      if (v33 != *v34)
      {
        break;
      }

      v35 = *(v32 + 8);
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = 0xE600000000000000;
          v37 = 0x6D756964656DLL;
        }

        else
        {
          v36 = 0xE500000000000000;
          v37 = 0x7976616568;
        }
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x746867696CLL;
      }

      v38 = *(v34 + 8);
      if (v38)
      {
        if (v38 == 1)
        {
          v39 = 0xE600000000000000;
          v40 = 0x6D756964656DLL;
        }

        else
        {
          v39 = 0xE500000000000000;
          v40 = 0x7976616568;
        }
      }

      else
      {
        v39 = 0xE500000000000000;
        v40 = 0x746867696CLL;
      }

      if (v37 == v40 && v36 == v39)
      {

        OUTLINED_FUNCTION_12_2();
        sub_23B3E2B68();
        OUTLINED_FUNCTION_37();
        sub_23B3E2B68();
      }

      else
      {
        v42 = sub_23B50D834();

        OUTLINED_FUNCTION_12_2();
        sub_23B3E2B68();
        OUTLINED_FUNCTION_37();
        sub_23B3E2B68();
        if ((v42 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v4 += v43;
      v3 += v43;
      if (!--v11)
      {
        goto LABEL_48;
      }
    }

    sub_23B3E2B68();
    OUTLINED_FUNCTION_18_0();
    sub_23B3E2B68();
  }

LABEL_48:
  OUTLINED_FUNCTION_20();
}

uint64_t Article.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131D90, &qword_23B50EDC8);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E1FAC();
  sub_23B50D974();
  v12 = *v3;
  v13 = v3[1];
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7A4();
  if (!v2)
  {
    v24 = v3[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DA0, &qword_23B50EDD0);
    sub_23B3E2588(&unk_27E131DA8);
    OUTLINED_FUNCTION_22();
    v23 = type metadata accessor for Article();
    v14 = v23[6];
    sub_23B50ADC4();
    OUTLINED_FUNCTION_9_0();
    sub_23B3E2AC4(v15);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v16 = (v3 + v23[7]);
    v17 = *v16;
    v18 = v16[1];
    OUTLINED_FUNCTION_23_0();
    sub_23B50D774();
    v25 = *(v3 + v23[8]);
    OUTLINED_FUNCTION_22();
    v26 = *(v3 + v23[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DB8, &qword_23B50EDD8);
    sub_23B3E25F0(&unk_27E131DC0);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  v19 = *(v7 + 8);
  v20 = OUTLINED_FUNCTION_18_0();
  return v21(v20);
}

unint64_t sub_23B3E1FAC()
{
  result = qword_27E131D98;
  if (!qword_27E131D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131D98);
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

uint64_t Article.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23B50ADC4();
  v6 = OUTLINED_FUNCTION_5(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DD0, &qword_23B50EDE0);
  OUTLINED_FUNCTION_5(v34);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v35 = type metadata accessor for Article();
  v16 = OUTLINED_FUNCTION_6(v35);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v21 = (v20 - v19);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E1FAC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_26_0();
    *v21 = sub_23B50D6E4();
    v21[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DA0, &qword_23B50EDD0);
    sub_23B3E2588(&unk_27E131DD8);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    v21[2] = v36;
    OUTLINED_FUNCTION_9_0();
    sub_23B3E2AC4(v24);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    (*(v32 + 32))(v21 + v35[6], v12, v33);
    LOBYTE(v36) = 3;
    OUTLINED_FUNCTION_26_0();
    v25 = sub_23B50D6B4();
    v26 = (v21 + v35[7]);
    *v26 = v25;
    v26[1] = v27;
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    *(v21 + v35[8]) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131DB8, &qword_23B50EDD8);
    sub_23B3E25F0(&unk_27E131DE8);
    OUTLINED_FUNCTION_26_0();
    sub_23B50D734();
    v28 = OUTLINED_FUNCTION_7_3();
    v29(v28);
    *(v21 + v35[9]) = v36;
    OUTLINED_FUNCTION_14_2();
    sub_23B3E2B08(v21, a2, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_18_0();
    return sub_23B3E2B68();
  }
}

unint64_t sub_23B3E2588(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131DA0, &qword_23B50EDD0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B3E25F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131DB8, &qword_23B50EDD8);
    OUTLINED_FUNCTION_11_0();
    sub_23B3E2AC4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B3E26D0()
{
  sub_23B3E27E4(319, &qword_280B433D0, MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_23B50ADC4();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_23B3E27E4(319, &qword_280B43430, MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_23B3E2838();
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_23B3E27E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3E2838()
{
  if (!qword_280B41A40)
  {
    sub_23B50AD64();
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B41A40);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Article.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E2970()
{
  result = qword_27E131DF8;
  if (!qword_27E131DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131DF8);
  }

  return result;
}

unint64_t sub_23B3E29C8()
{
  result = qword_27E131E00;
  if (!qword_27E131E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E00);
  }

  return result;
}

unint64_t sub_23B3E2A20()
{
  result = qword_27E131E08;
  if (!qword_27E131E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E08);
  }

  return result;
}

unint64_t sub_23B3E2A74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B3E2AC4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B3E2B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B3E2B68()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t MonthPrecipitationStatistics.averagePrecipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthPrecipitationStatistics() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MonthPrecipitationStatistics.averagePrecipitationAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_6() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MonthPrecipitationStatistics.averageSnowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthPrecipitationStatistics() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MonthPrecipitationStatistics.averageSnowfallAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_6() + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MonthPrecipitationStatistics.init(month:averagePrecipitationProbability:averagePrecipitationAmount:averageSnowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  v8 = type metadata accessor for MonthPrecipitationStatistics();
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v10);
  v14 = *(v11 + 32);
  v14(a4 + v9, a2, v10);
  v12 = a4 + *(v8 + 28);

  return (v14)(v12, a3, v10);
}

uint64_t static MonthPrecipitationStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v2 = type metadata accessor for MonthPrecipitationStatistics();
  v3 = *(v2 + 24);
  sub_23B3E38E8(&qword_280B42BC0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 28);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B3E3038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000023B528820 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000023B528840 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B528860 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

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

unint64_t sub_23B3E31A4(char a1)
{
  result = 0x68746E6F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E3244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E3038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E326C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E319C();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E3294(uint64_t a1)
{
  v2 = sub_23B3E34F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E32D0(uint64_t a1)
{
  v2 = sub_23B3E34F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonthPrecipitationStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E48, &qword_23B50EFB8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E34F0();
  sub_23B50D974();
  v14 = *v3;
  v24 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15 = v3[1];
    v23 = 1;
    sub_23B50D7C4();
    v16 = type metadata accessor for MonthPrecipitationStatistics();
    v17 = *(v16 + 24);
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0);
    OUTLINED_FUNCTION_2_6();
    v18 = *(v16 + 28);
    v21 = 3;
    OUTLINED_FUNCTION_2_6();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B3E34F0()
{
  result = qword_27E131E50;
  if (!qword_27E131E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E50);
  }

  return result;
}

uint64_t MonthPrecipitationStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_5(v44);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E58, &qword_23B50EFC0);
  v13 = OUTLINED_FUNCTION_5(v45);
  v43 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  v19 = type metadata accessor for MonthPrecipitationStatistics();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  v25 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B3E34F0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v40 = v9;
  v41 = v19;
  v28 = v43;
  v27 = v44;
  v29 = v45;
  v30 = v46;
  v51 = 0;
  OUTLINED_FUNCTION_3_1();
  *v24 = sub_23B50D724();
  v50 = 1;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D704();
  v39 = v24;
  v24[1] = v31;
  v49 = 2;
  sub_23B3E38E8(&qword_27E131E60);
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  v32 = *(v41 + 24);
  v37 = *(v30 + 32);
  v38 = v32;
  v37(v39 + v32, v12, v27);
  v48 = 3;
  v33 = v40;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  (*(v28 + 8))(v18, v29);
  v34 = v39;
  v37(v39 + *(v41 + 28), v33, v27);
  sub_23B3E3938(v34, v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_23B3E399C(v34);
}

uint64_t sub_23B3E38E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E28, &qword_23B50EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B3E3938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthPrecipitationStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E399C(uint64_t a1)
{
  v2 = type metadata accessor for MonthPrecipitationStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B3E3A54()
{
  result = qword_280B433A0;
  if (!qword_280B433A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonthPrecipitationStatistics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MonthPrecipitationStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E3C00()
{
  result = qword_27E131E68;
  if (!qword_27E131E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E68);
  }

  return result;
}

unint64_t sub_23B3E3C58()
{
  result = qword_27E131E70;
  if (!qword_27E131E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E70);
  }

  return result;
}

unint64_t sub_23B3E3CB0()
{
  result = qword_27E131E78;
  if (!qword_27E131E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131E78);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23EE9E260);
  }

  return result;
}

unint64_t sub_23B3E3D54()
{
  result = qword_27E131EB0;
  if (!qword_27E131EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131EB0);
  }

  return result;
}

uint64_t sub_23B3E3DA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_23B50D184();
}

id OUTLINED_FUNCTION_61()
{

  return v0;
}

uint64_t *OUTLINED_FUNCTION_62(uint64_t a1)
{
  v3 = *(v1 + 392);
  v3[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t sub_23B3E3E88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for WeatherQuery();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F28, &qword_23B50F260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for WeatherServiceOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(_s21WeatherServiceRequestVMa() + 20);
  sub_23B3AEEF0(a1 + v19, v17);
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200) != a3)
  {
    return sub_23B3AF34C(v17, type metadata accessor for WeatherServiceOptions);
  }

  v35 = v9;
  v36 = v19;
  v37 = v6;

  if (sub_23B3AF288(8, v18))
  {
    sub_23B3AF34C(v17, type metadata accessor for WeatherServiceOptions);
  }

  else
  {
    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(v18 + 16) + 1, 1, v18);
      v18 = v33;
    }

    v21 = v13;
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);
    v24 = v37;
    v25 = v35;
    if (v23 >= v22 >> 1)
    {
      sub_23B3AE984(v22 > 1, v23 + 1, 1, v18);
      v24 = v37;
      v18 = v34;
    }

    *(v18 + 16) = v23 + 1;
    *(v18 + v23 + 32) = 8;
    v26 = &v17[*(v14 + 36)];
    v27 = v36;
    if (v26[16] == 2)
    {
      (*(v24 + 16))(v25, v38, v5);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F30, &qword_23B50F268);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v28);
        v29 = v21 + *(v28 + 40);
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        sub_23B398890(v21, &qword_27E131F30, &qword_23B50F268);
        if (v32 != 2)
        {
          *v26 = v30;
          *(v26 + 1) = v31;
          v26[16] = v32 & 1;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v21, 1, 1, v28);
        sub_23B398890(v21, &qword_27E131F28, &qword_23B50F260);
      }
    }

    result = sub_23B3CE728(v17, a1 + v27, type metadata accessor for WeatherServiceOptions);
    *a1 = v18;
  }

  return result;
}

uint64_t sub_23B3E422C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for WeatherQuery();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F38, &qword_23B50F270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for WeatherServiceOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(_s21WeatherServiceRequestVMa() + 20);
  sub_23B3AEEF0(a1 + v19, v17);
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210) != a3)
  {
    return sub_23B3AF34C(v17, type metadata accessor for WeatherServiceOptions);
  }

  v35 = v9;
  v36 = v19;
  v37 = v6;

  if (sub_23B3AF288(12, v18))
  {
    sub_23B3AF34C(v17, type metadata accessor for WeatherServiceOptions);
  }

  else
  {
    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(v18 + 16) + 1, 1, v18);
      v18 = v33;
    }

    v21 = v13;
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);
    v24 = v37;
    v25 = v35;
    if (v23 >= v22 >> 1)
    {
      sub_23B3AE984(v22 > 1, v23 + 1, 1, v18);
      v24 = v37;
      v18 = v34;
    }

    *(v18 + 16) = v23 + 1;
    *(v18 + v23 + 32) = 12;
    v26 = &v17[*(v14 + 36)];
    v27 = v36;
    if (v26[16] == 2)
    {
      (*(v24 + 16))(v25, v38, v5);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F40, &qword_23B50F278);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v28);
        v29 = v21 + *(v28 + 40);
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        sub_23B398890(v21, &qword_27E131F40, &qword_23B50F278);
        if (v32 != 2)
        {
          *v26 = v30;
          *(v26 + 1) = v31;
          v26[16] = v32 & 1;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v21, 1, 1, v28);
        sub_23B398890(v21, &qword_27E131F38, &qword_23B50F270);
      }
    }

    result = sub_23B3CE728(v17, a1 + v27, type metadata accessor for WeatherServiceOptions);
    *a1 = v18;
  }

  return result;
}

uint64_t sub_23B3E45D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (type metadata accessor for InstantWeather() == a2 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F78, &unk_23B50F2B0) == a2)
  {
    v11 = type metadata accessor for WeatherQuery();
    return sub_23B39A44C(a1 + *(v11 + 44), a3, &qword_27E131F70, &unk_23B5192B0);
  }

  else
  {
    type metadata accessor for InstantWeatherQueryOptions();
    OUTLINED_FUNCTION_1();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_23B3E468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23B50D834() & 1;
  }
}

WeatherKit::WeatherAvailability::AvailabilityKind_optional __swiftcall WeatherAvailability.AvailabilityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherAvailability.AvailabilityKind.rawValue.getter()
{
  result = 0x6C62616C69617661;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x726F707075736E75;
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_3();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E48D0@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherAvailability.AvailabilityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B3E49B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_18_2();
      break;
    case 3:
    case 5:
      OUTLINED_FUNCTION_16_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4AD0()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4B68(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 4:
      OUTLINED_FUNCTION_8_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4C08(uint64_t a1, char a2)
{
  Wind.CompassDirection.rawValue.getter(a2);
  OUTLINED_FUNCTION_14_0();
}

uint64_t sub_23B3E4C48()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4CE0()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4D64(uint64_t a1, char a2)
{
  v2 = *&aModeled_2[8 * a2];
  sub_23B50D1C4();
}

uint64_t sub_23B3E4DA4()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4E24()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E4EBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_14_0();
}

uint64_t sub_23B3E4F0C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_20_2();
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E4F88()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E500C()
{
  OUTLINED_FUNCTION_3_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E50B0()
{
  sub_23B50D1C4();
}

uint64_t sub_23B3E513C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_21_4();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E5238(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 999;
  }

  else
  {
    v2 = 43;
  }

  return MEMORY[0x23EE9DB40](v2);
}

uint64_t sub_23B3E526C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 3:
      OUTLINED_FUNCTION_8_2();
      break;
    case 4:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      break;
  }

  sub_23B50D1C4();
}

uint64_t sub_23B3E530C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_23B3E61D8();
}

uint64_t sub_23B3E5318(unsigned __int8 a1, char a2)
{
  v2 = 7824750;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 0x6947676E696E6177;
  v6 = 0x7243676E696E6177;
  v7 = 7824750;
  switch(v4)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_18_2();
      break;
    case 2:
      v7 = 0x6175517473726966;
      v3 = 0xEC00000072657472;
      break;
    case 3:
    case 5:
      OUTLINED_FUNCTION_16_2();
      break;
    case 4:
      v3 = 0xE400000000000000;
      v7 = 1819047270;
      break;
    case 6:
      v7 = 0x726175517473616CLL;
      v3 = 0xEB00000000726574;
      break;
    default:
      break;
  }

  v8 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = v6 + 655360;
      goto LABEL_13;
    case 2:
      v2 = 0x6175517473726966;
      v8 = 0xEC00000072657472;
      break;
    case 3:
      v2 = v5 + 655360;
      goto LABEL_15;
    case 4:
      v8 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 5:
      v2 = 0x6947676E696E6177;
LABEL_15:
      v8 = 0xED000073756F6262;
      break;
    case 6:
      v2 = 0x726175517473616CLL;
      v8 = 0xEB00000000726574;
      break;
    case 7:
      v2 = 0x7243676E696E6177;
LABEL_13:
      v8 = 0xEE00746E65637365;
      break;
    default:
      break;
  }

  if (v7 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_3();
  }

  return v10 & 1;
}

uint64_t sub_23B3E551C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x617461646174656DLL;
  }

  else
  {
    v2 = 0x7473616365726F66;
  }

  if (a2)
  {
    v3 = 0x617461646174656DLL;
  }

  else
  {
    v3 = 0x7473616365726F66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E559C(unsigned __int8 a1, char a2)
{
  v2 = 0x7473616365726F66;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x617461646174656DLL;
    }

    else
    {
      v4 = 0x6F4C656E6972616DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006E6F69746163;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7473616365726F66;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x617461646174656DLL;
    }

    else
    {
      v2 = 0x6F4C656E6972616DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEE006E6F69746163;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E56A4(unsigned __int8 a1, char a2)
{
  v2 = 7827308;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7827308;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_11_2();
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1751607656;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6867694879726576;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_7_5();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_6_1();
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1751607656;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6867694879726576;
      break;
    case 4:
      OUTLINED_FUNCTION_12_4();
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
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E57C0(char a1, char a2)
{
  v3 = Wind.CompassDirection.rawValue.getter(a1);
  v5 = v4;
  if (v3 == Wind.CompassDirection.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E5850(unsigned __int8 a1, char a2)
{
  v2 = 0x746867696CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 0x7976616568;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x746867696CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x7976616568;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E592C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x72746E65636E6F63;
  }

  else
  {
    v3 = 0x7073694474696E75;
  }

  if (v2)
  {
    v4 = 0xEE006E6F69737265;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v5 = 0x72746E65636E6F63;
  }

  else
  {
    v5 = 0x7073694474696E75;
  }

  if (a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xEE006E6F69737265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E59D8(char a1, char a2)
{
  if (*&aModeled_2[8 * a1] == *&aModeled_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_23B3E5A40(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7469706963657270;
  }

  else
  {
    v3 = 0x74617265706D6574;
  }

  if (v2)
  {
    v4 = 0xEB00000000657275;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v5 = 0x7469706963657270;
  }

  else
  {
    v5 = 0x74617265706D6574;
  }

  if (a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xEB00000000657275;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E5AE8(unsigned __int8 a1, char a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x68746E6F6DLL;
    }

    else
    {
      v4 = 0x6B6165727473;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7961646F74;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x68746E6F6DLL;
    }

    else
    {
      v2 = 0x6B6165727473;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E5BC4()
{
  OUTLINED_FUNCTION_4_8();
  v3 = "temporarilyUnavailable";
  if (v4)
  {
    OUTLINED_FUNCTION_20_2();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }
  }

  else
  {
    v9 = v2;
    v10 = 0xE900000000000065;
  }

  if (v1)
  {
    v11 = (v3 - 32) | 0x8000000000000000;
    if (v1 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0x726F707075736E75;
    }

    if (v1 == 1)
    {
      v0 = v11;
    }

    else
    {
      v0 = 0xEB00000000646574;
    }
  }

  if (v9 == v2 && v10 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_3();
  }

  return v13 & 1;
}

uint64_t sub_23B3E5CA8(char a1, char a2)
{
  if (a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E5D18(unsigned __int8 a1, char a2)
{
  v2 = 0x676E69736972;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676E696C6C6166;
    }

    else
    {
      v4 = 0x796461657473;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x676E69736972;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E696C6C6166;
    }

    else
    {
      v2 = 0x796461657473;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E5DFC(unsigned __int8 a1, char a2)
{
  v2 = 1751607656;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 0x6C616D726F6ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1751607656;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7827308;
    }

    else
    {
      v2 = 0x6C616D726F6ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E5ED0(char a1, char a2)
{
  if (a1)
  {
    v2 = 7827310;
  }

  else
  {
    v2 = 7954788;
  }

  if (a2)
  {
    v3 = 7827310;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B50D834();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B3E5F48(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000783340;
  v3 = 0x6B7261446F676F6CLL;
  v4 = a1;
  v5 = 0x6B7261446F676F6CLL;
  v6 = 0xEB00000000783340;
  switch(v4)
  {
    case 1:
      v5 = 0x6867694C6F676F6CLL;
      v6 = 0xEC00000078334074;
      break;
    case 2:
      v5 = 0x617571536F676F6CLL;
      v6 = 0xED00007833406572;
      break;
    case 3:
      v5 = 0x4E65636976726573;
      v6 = 0xEB00000000656D61;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6867694C6F676F6CLL;
      v2 = 0xEC00000078334074;
      break;
    case 2:
      OUTLINED_FUNCTION_21_4();
      break;
    case 3:
      v3 = 0x4E65636976726573;
      v2 = 0xEB00000000656D61;
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
    v8 = OUTLINED_FUNCTION_5_3();
  }

  return v8 & 1;
}