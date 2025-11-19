_BYTE *storeEnumTagSinglePayload for WeatherQueryHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t WeatherChanges.init(changes:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for WeatherChanges() + 20);
  OUTLINED_FUNCTION_1_12();
  return sub_23B412944();
}

unint64_t sub_23B410B5C(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(*v2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B410B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v7 <= 0 && v7 > a2)
    {
      return 0;
    }
  }

  else if ((v7 & 0x8000000000000000) == 0 && v7 < a2)
  {
    return 0;
  }

  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > *(*v4 + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B410C24(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(*v1 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_23B410C70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  if (result < 0 || *(*v5 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 40);
    result = sub_23B4129A0();
    *a5 = v8;
    a5[1] = a2;
  }

  return result;
}

size_t sub_23B410CE8()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherChanges();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_23B440584(0, *(*v0 + 16));
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = sub_23B3A5CB8(v8, 0, &qword_27E1326F8, &qword_23B512250, type metadata accessor for WeatherChange);
  v11 = *(type metadata accessor for WeatherChange() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_23B4129A0();
  v13 = sub_23B4120B4(v7, v10 + v12, v9);
  sub_23B398890(v7, &qword_27E132838, &qword_23B512D08);
  if (v13 != v9)
  {
    __break(1u);
LABEL_4:
    v10 = MEMORY[0x277D84F90];
  }

  sub_23B4129FC(v1, type metadata accessor for WeatherChanges);
  return v10;
}

size_t sub_23B410EB0()
{
  v1 = v0;
  v2 = type metadata accessor for HistoricalComparisons();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_27();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_23B440584(0, *(*v0 + 16));
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  OUTLINED_FUNCTION_5_10();
  v14 = sub_23B3A5CB8(v10, 0, v11, v12, v13);
  v15 = *(type metadata accessor for HistoricalComparison() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  sub_23B4129A0();
  v17 = sub_23B412280(v7, v14 + v16, v9);
  sub_23B398890(v7, &qword_27E1325C0, &qword_23B5118C0);
  if (v17 != v9)
  {
    __break(1u);
LABEL_4:
    v14 = MEMORY[0x277D84F90];
  }

  sub_23B4129FC(v1, type metadata accessor for HistoricalComparisons);
  return v14;
}

uint64_t WeatherChanges.changes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WeatherChanges.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WeatherChanges() + 20);

  return sub_23B407020(a1, v3);
}

unint64_t WeatherChanges.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    if (*(v2 + 16) > result)
    {
      v3 = *(type metadata accessor for WeatherChange() - 8);
      v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      return sub_23B4129A0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B411260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365676E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B411328(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x7365676E616863;
  }
}

uint64_t sub_23B411368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B411260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B411390(uint64_t a1)
{
  v2 = sub_23B411EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4113CC(uint64_t a1)
{
  v2 = sub_23B411EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B411408@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B410C24(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_23B411434(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_23B40A7CC(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B411488@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherChanges.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_23B4114B0(void **a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = type metadata accessor for WeatherChange();
  *a1 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  WeatherChanges.subscript.getter(*a2);
  return sub_23B411530;
}

void sub_23B411530(uint64_t *a1)
{
  v1 = *a1;
  sub_23B4129FC(*a1, type metadata accessor for WeatherChange);

  free(v1);
}

uint64_t sub_23B4115C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D2984();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B411614@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B3D29BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B411640(uint64_t *a1)
{
  v3 = *a1;
  result = sub_23B40A7CC(*v1);
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t sub_23B41168C@<X0>(uint64_t a1@<X8>)
{
  sub_23B412944();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t WeatherChanges.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327B8, &qword_23B512B58);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B411EC0();
  sub_23B50D974();
  v18 = *v3;
  v17[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327C8, &qword_23B512B60);
  sub_23B411F14(&unk_27E1327D0);
  OUTLINED_FUNCTION_40();
  if (!v2)
  {
    v14 = *(type metadata accessor for WeatherChanges() + 20);
    v17[6] = 1;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_2_16();
    sub_23B41271C(v15);
    OUTLINED_FUNCTION_40();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t WeatherChanges.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = type metadata accessor for WeatherMetadata();
  v4 = OUTLINED_FUNCTION_6(v32);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327D8, &qword_23B512B68);
  v7 = OUTLINED_FUNCTION_5(v33);
  v31 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v28 - v11;
  v13 = type metadata accessor for WeatherChanges();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v19 = (v18 - v17);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B411EC0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v21 = v19;
  v22 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327C8, &qword_23B512B60);
  v35 = 0;
  sub_23B411F14(&unk_27E1327E0);
  v23 = v33;
  sub_23B50D734();
  v28[0] = v21;
  v28[1] = v36;
  *v21 = v36;
  v34 = 1;
  OUTLINED_FUNCTION_2_16();
  sub_23B41271C(v24);
  sub_23B50D734();
  (*(v22 + 8))(v12, v23);
  v25 = *(v13 + 20);
  OUTLINED_FUNCTION_1_12();
  v26 = v28[0];
  sub_23B412944();
  sub_23B4129A0();
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_23B4129FC(v26, type metadata accessor for WeatherChanges);
}

uint64_t WeatherChanges.isExpired.getter()
{
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  sub_23B50B9D4();
  sub_23B50B994();
  v10 = v0 + *(type metadata accessor for WeatherChanges() + 20);
  v11 = *(type metadata accessor for WeatherMetadata() + 20);
  sub_23B41271C(&qword_280B43110);
  LOBYTE(v10) = sub_23B50D114();
  (*(v4 + 8))(v9, v1);
  return v10 & 1;
}

void WeatherChanges.hash(into:)()
{
  v1 = *v0;
  sub_23B40A160();
  v2 = v0 + *(type metadata accessor for WeatherChanges() + 20);
  WeatherMetadata.hash(into:)();
}

uint64_t WeatherChanges.hashValue.getter()
{
  sub_23B50D8C4();
  v1 = *v0;
  sub_23B40A160();
  v2 = v0 + *(type metadata accessor for WeatherChanges() + 20);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B411E6C(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  v4 = *v2;
  sub_23B40A160();
  v5 = v2 + *(a2 + 20);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B411EC0()
{
  result = qword_27E1327C0;
  if (!qword_27E1327C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327C0);
  }

  return result;
}

unint64_t sub_23B411F14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1327C8, &qword_23B512B60);
    sub_23B41271C(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B4120B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  result = sub_23B412944();
  v12 = *(v7 + 44);
  *&v10[v12] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    sub_23B40A768();
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19[1] = a1;
    v13 = 0;
    v14 = *v10;
    v15 = *(*v10 + 16);
    while (1)
    {
      if (v15 == v13)
      {
        a3 = v15;
        goto LABEL_11;
      }

      if (v13 >= *(v14 + 16))
      {
        break;
      }

      v16 = *(type metadata accessor for WeatherChange() - 8);
      v17 = *(v16 + 80);
      v18 = *(v16 + 72);
      *&v10[v12] = v13 + 1;
      result = sub_23B4129A0();
      if (a3 - 1 == v13)
      {
        goto LABEL_11;
      }

      a2 += v18;
      ++v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B412280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  result = sub_23B412944();
  v12 = *(v7 + 44);
  *&v10[v12] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    sub_23B40A768();
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19[1] = a1;
    v13 = 0;
    v14 = *v10;
    v15 = *(*v10 + 16);
    while (1)
    {
      if (v15 == v13)
      {
        a3 = v15;
        goto LABEL_11;
      }

      if (v13 >= *(v14 + 16))
      {
        break;
      }

      v16 = *(type metadata accessor for HistoricalComparison() - 8);
      v17 = *(v16 + 80);
      v18 = *(v16 + 72);
      *&v10[v12] = v13 + 1;
      result = sub_23B4129A0();
      if (a3 - 1 == v13)
      {
        goto LABEL_11;
      }

      a2 += v18;
      ++v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23B41257C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132800, &qword_23B512B70);
    sub_23B41271C(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B41271C(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for WeatherChanges.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B412840()
{
  result = qword_27E132848;
  if (!qword_27E132848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132848);
  }

  return result;
}

unint64_t sub_23B412898()
{
  result = qword_27E132850;
  if (!qword_27E132850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132850);
  }

  return result;
}

unint64_t sub_23B4128F0()
{
  result = qword_27E132858;
  if (!qword_27E132858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132858);
  }

  return result;
}

uint64_t sub_23B412944()
{
  OUTLINED_FUNCTION_220();
  v3 = v2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_23B4129A0()
{
  OUTLINED_FUNCTION_220();
  v3 = v2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B4129FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t static SunEvents.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v43 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v44 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v45 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v46 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v47 = &v41 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v48 = &v41 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  v50 = &v41 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v41 - v29;
  v49 = &v41 - v29;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_16(v30);
  OUTLINED_FUNCTION_0_16(v27);
  OUTLINED_FUNCTION_0_16(v24);
  OUTLINED_FUNCTION_0_16(v21);
  OUTLINED_FUNCTION_0_16(v18);
  OUTLINED_FUNCTION_0_16(v15);
  OUTLINED_FUNCTION_0_16(v12);
  OUTLINED_FUNCTION_0_16(v9);
  OUTLINED_FUNCTION_0_16(v51);
  OUTLINED_FUNCTION_0_16(v52);
  OUTLINED_FUNCTION_0_16(a1);
  v31 = type metadata accessor for SunEvents();
  v42 = v31[5];
  OUTLINED_FUNCTION_0_16(a1 + v42);
  v32 = v31[6];
  OUTLINED_FUNCTION_0_16(a1 + v32);
  v33 = v31[7];
  OUTLINED_FUNCTION_0_16(a1 + v33);
  v34 = v31[8];
  OUTLINED_FUNCTION_0_16(a1 + v34);
  v35 = v31[9];
  OUTLINED_FUNCTION_0_16(a1 + v35);
  v36 = v31[10];
  OUTLINED_FUNCTION_0_16(a1 + v36);
  v37 = v31[11];
  OUTLINED_FUNCTION_0_16(a1 + v37);
  v38 = v31[12];
  OUTLINED_FUNCTION_0_16(a1 + v38);
  v39 = v31[13];
  OUTLINED_FUNCTION_0_16(a1 + v39);
  sub_23B3CF890(v49, a1);
  sub_23B3CF890(v50, a1 + v42);
  sub_23B3CF890(v48, a1 + v32);
  sub_23B3CF890(v47, a1 + v33);
  sub_23B3CF890(v46, a1 + v34);
  sub_23B3CF890(v45, a1 + v35);
  sub_23B3CF890(v44, a1 + v36);
  sub_23B3CF890(v43, a1 + v37);
  sub_23B3CF890(v51, a1 + v38);
  return sub_23B3CF890(v52, a1 + v39);
}

uint64_t sub_23B412DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70326D70 && a2 == 0xE900000000000035;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 808545648 && a2 == 0xE400000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 13167 && a2 == 0xE200000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F7A6FLL && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 28526 && a2 == 0xE200000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 3305326 && a2 == 0xE300000000000000;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7892846 && a2 == 0xE300000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 3305331 && a2 == 0xE300000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 28515 && a2 == 0xE200000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1667788142 && a2 == 0xE400000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7363686D6ELL && a2 == 0xE500000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 3369070 && a2 == 0xE300000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 912799331 && a2 == 0xE400000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7565940 && a2 == 0xE300000000000000;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_23B50D834();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
  }
}

uint64_t sub_23B413200(char a1)
{
  result = 0x746E696F70326D70;
  switch(a1)
  {
    case 1:
      result = 808545648;
      break;
    case 2:
      result = 13167;
      break;
    case 3:
      result = 0x656E6F7A6FLL;
      break;
    case 4:
      result = 28526;
      break;
    case 5:
      result = 3305326;
      break;
    case 6:
      result = 7892846;
      break;
    case 7:
      result = 3305331;
      break;
    case 8:
      result = 28515;
      break;
    case 9:
      result = 1667788142;
      break;
    case 10:
      result = 0x7363686D6ELL;
      break;
    case 11:
      result = 3369070;
      break;
    case 12:
      result = 912799331;
      break;
    case 13:
      result = 7565940;
      break;
    case 14:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B413328(uint64_t a1)
{
  v2 = sub_23B41470C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413364(uint64_t a1)
{
  v2 = sub_23B41470C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4133A0(uint64_t a1)
{
  v2 = sub_23B41485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4133DC(uint64_t a1)
{
  v2 = sub_23B41485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B412DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B413448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4131F8();
  *a1 = result;
  return result;
}

uint64_t sub_23B413470(uint64_t a1)
{
  v2 = sub_23B414610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4134AC(uint64_t a1)
{
  v2 = sub_23B414610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4134E8(uint64_t a1)
{
  v2 = sub_23B414760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413524(uint64_t a1)
{
  v2 = sub_23B414760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413560(uint64_t a1)
{
  v2 = sub_23B414808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41359C(uint64_t a1)
{
  v2 = sub_23B414808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4135D8(uint64_t a1)
{
  v2 = sub_23B4147B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413614(uint64_t a1)
{
  v2 = sub_23B4147B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413650(uint64_t a1)
{
  v2 = sub_23B414958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41368C(uint64_t a1)
{
  v2 = sub_23B414958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4136C8(uint64_t a1)
{
  v2 = sub_23B4149AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413704(uint64_t a1)
{
  v2 = sub_23B4149AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413740(uint64_t a1)
{
  v2 = sub_23B414904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41377C(uint64_t a1)
{
  v2 = sub_23B414904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4137B8(uint64_t a1)
{
  v2 = sub_23B414A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4137F4(uint64_t a1)
{
  v2 = sub_23B414A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413830(uint64_t a1)
{
  v2 = sub_23B414A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41386C(uint64_t a1)
{
  v2 = sub_23B414A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4138A8(uint64_t a1)
{
  v2 = sub_23B414AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4138E4(uint64_t a1)
{
  v2 = sub_23B414AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413920(uint64_t a1)
{
  v2 = sub_23B414AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41395C(uint64_t a1)
{
  v2 = sub_23B414AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413998(uint64_t a1)
{
  v2 = sub_23B4148B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4139D4(uint64_t a1)
{
  v2 = sub_23B4148B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413A10(uint64_t a1)
{
  v2 = sub_23B4146B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413A4C(uint64_t a1)
{
  v2 = sub_23B4146B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413A88(uint64_t a1)
{
  v2 = sub_23B414664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413AC4(uint64_t a1)
{
  v2 = sub_23B414664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AirPollutantKind.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328A0, &qword_23B512FB0);
  v6 = OUTLINED_FUNCTION_5(v5);
  v138 = v7;
  v139 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v137 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328A8, &qword_23B512FB8);
  v13 = OUTLINED_FUNCTION_5(v12);
  v135 = v14;
  v136 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v134 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328B0, &qword_23B512FC0);
  v20 = OUTLINED_FUNCTION_5(v19);
  v132 = v21;
  v133 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  v131 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328B8, &qword_23B512FC8);
  v27 = OUTLINED_FUNCTION_5(v26);
  v129 = v28;
  v130 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  v128 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328C0, &qword_23B512FD0);
  v34 = OUTLINED_FUNCTION_5(v33);
  v126 = v35;
  v127 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  v125 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328C8, &qword_23B512FD8);
  v41 = OUTLINED_FUNCTION_5(v40);
  v123 = v42;
  v124 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328D0, &qword_23B512FE0);
  OUTLINED_FUNCTION_2_0(v47, &v153);
  v122[23] = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328D8, &qword_23B512FE8);
  OUTLINED_FUNCTION_2_0(v53, &v150);
  v122[20] = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328E0, &qword_23B512FF0);
  OUTLINED_FUNCTION_2_0(v59, &v147);
  v122[17] = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328E8, &qword_23B512FF8);
  OUTLINED_FUNCTION_2_0(v65, v144);
  v122[14] = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328F0, &qword_23B513000);
  OUTLINED_FUNCTION_2_0(v71, &v141);
  v122[11] = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328F8, &qword_23B513008);
  OUTLINED_FUNCTION_2_0(v77, &v138);
  v122[8] = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132900, &qword_23B513010);
  OUTLINED_FUNCTION_2_0(v83, &v135);
  v122[5] = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132908, &qword_23B513018);
  OUTLINED_FUNCTION_2_0(v89, &v132);
  v122[2] = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v93);
  v95 = v122 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132910, &qword_23B513020);
  OUTLINED_FUNCTION_5(v96);
  v122[1] = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  v102 = v122 - v101;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132918, &qword_23B513028);
  OUTLINED_FUNCTION_5(v141);
  v104 = v103;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_13();
  v108 = *v3;
  v109 = a1[4];
  v110 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B414610();
  v140 = v2;
  sub_23B50D974();
  v111 = (v104 + 8);
  switch(v108)
  {
    case 1:
      v143[2] = 1;
      sub_23B414AA8();
      v110 = v140;
      v96 = v141;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1(&v131);
      v119 = v95;
      v121 = &v132;
      goto LABEL_18;
    case 2:
      v143[3] = 2;
      sub_23B414A54();
      OUTLINED_FUNCTION_3_16(&v133);
      v119 = OUTLINED_FUNCTION_7_15(&v134);
      v121 = &v135;
      goto LABEL_18;
    case 3:
      v143[4] = 3;
      sub_23B414A00();
      OUTLINED_FUNCTION_3_16(&v136);
      v119 = OUTLINED_FUNCTION_7_15(&v137);
      v121 = &v138;
      goto LABEL_18;
    case 4:
      v143[5] = 4;
      sub_23B4149AC();
      OUTLINED_FUNCTION_3_16(&v139);
      v119 = OUTLINED_FUNCTION_7_15(&v140);
      v121 = &v141;
      goto LABEL_18;
    case 5:
      v143[6] = 5;
      sub_23B414958();
      OUTLINED_FUNCTION_3_16(&v142);
      v119 = OUTLINED_FUNCTION_7_15(v143);
      v121 = v144;
      goto LABEL_18;
    case 6:
      v143[7] = 6;
      sub_23B414904();
      OUTLINED_FUNCTION_3_16(&v145);
      v119 = OUTLINED_FUNCTION_7_15(v146);
      v121 = &v147;
      goto LABEL_18;
    case 7:
      v146[0] = 7;
      sub_23B4148B0();
      OUTLINED_FUNCTION_3_16(&v148);
      v119 = OUTLINED_FUNCTION_7_15(&v149);
      v121 = &v150;
      goto LABEL_18;
    case 8:
      v146[1] = 8;
      sub_23B41485C();
      OUTLINED_FUNCTION_3_16(&v151);
      v119 = OUTLINED_FUNCTION_7_15(&v152);
      v121 = &v153;
LABEL_18:
      v120(v119, *(v121 - 32));
      goto LABEL_19;
    case 9:
      v146[2] = 9;
      sub_23B414808();
      OUTLINED_FUNCTION_3_16(&v154);
      v118 = v123;
      v117 = v124;
      goto LABEL_16;
    case 10:
      v146[3] = 10;
      sub_23B4147B4();
      v102 = v125;
      OUTLINED_FUNCTION_6_4();
      v118 = v126;
      v117 = v127;
      goto LABEL_16;
    case 11:
      v146[4] = 11;
      sub_23B414760();
      v102 = v128;
      OUTLINED_FUNCTION_6_4();
      v118 = v129;
      v117 = v130;
      goto LABEL_16;
    case 12:
      v146[5] = 12;
      sub_23B41470C();
      v102 = v131;
      OUTLINED_FUNCTION_6_4();
      v118 = v132;
      v117 = v133;
      goto LABEL_16;
    case 13:
      v146[6] = 13;
      sub_23B4146B8();
      v102 = v134;
      OUTLINED_FUNCTION_6_4();
      v118 = v135;
      v117 = v136;
      goto LABEL_16;
    case 14:
      v146[7] = 14;
      sub_23B414664();
      v102 = v137;
      OUTLINED_FUNCTION_6_4();
      v118 = v138;
      v117 = v139;
LABEL_16:
      (*(v118 + 8))(v102, v117);
LABEL_19:
      result = (*v111)(v110, v96);
      break;
    default:
      v143[1] = 0;
      sub_23B414AFC();
      v112 = v140;
      v113 = v141;
      sub_23B50D764();
      v114 = OUTLINED_FUNCTION_7_15(&v130);
      v115(v114, v96);
      result = (*v111)(v112, v113);
      break;
  }

  return result;
}

unint64_t sub_23B414610()
{
  result = qword_280B42528;
  if (!qword_280B42528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42528);
  }

  return result;
}

unint64_t sub_23B414664()
{
  result = qword_27E132920;
  if (!qword_27E132920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132920);
  }

  return result;
}

unint64_t sub_23B4146B8()
{
  result = qword_27E132928;
  if (!qword_27E132928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132928);
  }

  return result;
}

unint64_t sub_23B41470C()
{
  result = qword_27E132930;
  if (!qword_27E132930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132930);
  }

  return result;
}

unint64_t sub_23B414760()
{
  result = qword_27E132938;
  if (!qword_27E132938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132938);
  }

  return result;
}

unint64_t sub_23B4147B4()
{
  result = qword_27E132940;
  if (!qword_27E132940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132940);
  }

  return result;
}

unint64_t sub_23B414808()
{
  result = qword_27E132948;
  if (!qword_27E132948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132948);
  }

  return result;
}

unint64_t sub_23B41485C()
{
  result = qword_280B42510;
  if (!qword_280B42510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42510);
  }

  return result;
}

unint64_t sub_23B4148B0()
{
  result = qword_280B424A0;
  if (!qword_280B424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424A0);
  }

  return result;
}

unint64_t sub_23B414904()
{
  result = qword_27E132950;
  if (!qword_27E132950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132950);
  }

  return result;
}

unint64_t sub_23B414958()
{
  result = qword_280B424C8;
  if (!qword_280B424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424C8);
  }

  return result;
}

unint64_t sub_23B4149AC()
{
  result = qword_27E132958;
  if (!qword_27E132958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132958);
  }

  return result;
}

unint64_t sub_23B414A00()
{
  result = qword_280B42430;
  if (!qword_280B42430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42430);
  }

  return result;
}

unint64_t sub_23B414A54()
{
  result = qword_27E132960;
  if (!qword_27E132960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132960);
  }

  return result;
}

unint64_t sub_23B414AA8()
{
  result = qword_280B42458;
  if (!qword_280B42458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42458);
  }

  return result;
}

unint64_t sub_23B414AFC()
{
  result = qword_280B42408;
  if (!qword_280B42408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42408);
  }

  return result;
}

uint64_t AirPollutantKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v166 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132968, &qword_23B513030);
  v5 = OUTLINED_FUNCTION_5(v4);
  v154 = v6;
  v155 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v165 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132970, &qword_23B513038);
  v12 = OUTLINED_FUNCTION_5(v11);
  v152 = v13;
  v153 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  v164 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132978, &qword_23B513040);
  OUTLINED_FUNCTION_2_0(v18, &v183);
  v151 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_52();
  v163 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132980, &qword_23B513048);
  OUTLINED_FUNCTION_2_0(v24, &v181);
  v150 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52();
  v162 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132988, &qword_23B513050);
  OUTLINED_FUNCTION_2_0(v30, &v179);
  v149 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v161 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132990, &qword_23B513058);
  OUTLINED_FUNCTION_2_0(v36, &v177);
  v148 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v160 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132998, &qword_23B513060);
  OUTLINED_FUNCTION_2_0(v42, v175);
  v147 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  v169 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329A0, &qword_23B513068);
  OUTLINED_FUNCTION_2_0(v48, v173);
  v146 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  v159 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329A8, &qword_23B513070);
  OUTLINED_FUNCTION_2_0(v54, &v171);
  v145 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52();
  v168 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329B0, &qword_23B513078);
  OUTLINED_FUNCTION_2_0(v60, &v168);
  v144 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_52();
  v158 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329B8, &qword_23B513080);
  OUTLINED_FUNCTION_2_0(v66, &v164);
  v143 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_52();
  v157 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329C0, &qword_23B513088);
  OUTLINED_FUNCTION_2_0(v72, &v166);
  v142 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52();
  v167 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329C8, &qword_23B513090);
  OUTLINED_FUNCTION_2_0(v78, &v163);
  v141 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v156 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329D0, &qword_23B513098);
  OUTLINED_FUNCTION_2_0(v84, &v161);
  v140 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_13();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329D8, &qword_23B5130A0);
  OUTLINED_FUNCTION_5(v89);
  v139 = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v93);
  v95 = &v134 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329E0, &unk_23B5130A8);
  OUTLINED_FUNCTION_5(v96);
  v98 = v97;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v101);
  v103 = &v134 - v102;
  v105 = a1[3];
  v104 = a1[4];
  v170 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v105);
  sub_23B414610();
  v106 = v171;
  sub_23B50D964();
  if (v106)
  {
    goto LABEL_8;
  }

  v137 = v95;
  v136 = v89;
  v138 = v2;
  v107 = v169;
  v171 = v98;
  v108 = sub_23B50D744();
  result = sub_23B40D8C8(v108, 0);
  if (v111 == v112 >> 1)
  {
LABEL_7:
    v121 = v103;
    v122 = sub_23B50D5F4();
    swift_allocError();
    v124 = v123;
    v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v124 = &type metadata for AirPollutantKind;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v122 - 8) + 104))(v124, *MEMORY[0x277D84160], v122);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v171 + 8))(v121, v96);
LABEL_8:
    v126 = v170;
    return __swift_destroy_boxed_opaque_existential_1(v126);
  }

  v134 = 0;
  if (v111 < (v112 >> 1))
  {
    v135 = *(v110 + v111);
    sub_23B40D8C4(v111 + 1);
    v114 = v113;
    v116 = v115;
    swift_unknownObjectRelease();
    if (v114 == v116 >> 1)
    {
      v117 = v166;
      switch(v135)
      {
        case 1:
          v172[2] = 1;
          sub_23B414AA8();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v160);
          v120 = &v161;
          goto LABEL_25;
        case 2:
          v172[3] = 2;
          sub_23B414A54();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v162);
          v120 = &v163;
          goto LABEL_25;
        case 3:
          v172[4] = 3;
          sub_23B414A00();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v165);
          v120 = &v166;
          goto LABEL_25;
        case 4:
          v172[5] = 4;
          sub_23B4149AC();
          v130 = v157;
          OUTLINED_FUNCTION_5_11();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1(&v167);
          v118 = v130;
          v120 = &v164;
          goto LABEL_25;
        case 5:
          v172[6] = 5;
          sub_23B414958();
          v131 = v158;
          OUTLINED_FUNCTION_5_11();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1(&v169);
          v118 = v131;
          v120 = &v168;
          goto LABEL_25;
        case 6:
          v172[7] = 6;
          sub_23B414904();
          OUTLINED_FUNCTION_5_11();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v170);
          v120 = &v171;
          goto LABEL_25;
        case 7:
          v175[0] = 7;
          sub_23B4148B0();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(v172);
          v120 = v173;
          goto LABEL_25;
        case 8:
          v175[1] = 8;
          sub_23B41485C();
          OUTLINED_FUNCTION_5_11();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1(&v174);
          v118 = v107;
          v120 = v175;
          goto LABEL_25;
        case 9:
          v175[2] = 9;
          sub_23B414808();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v176);
          v120 = &v177;
          goto LABEL_25;
        case 10:
          v175[3] = 10;
          sub_23B4147B4();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v178);
          v120 = &v179;
          goto LABEL_25;
        case 11:
          v175[4] = 11;
          sub_23B414760();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v180);
          v120 = &v181;
          goto LABEL_25;
        case 12:
          v175[5] = 12;
          sub_23B41470C();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v182);
          v120 = &v183;
          goto LABEL_25;
        case 13:
          v175[6] = 13;
          sub_23B4146B8();
          v127 = v164;
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v129 = v152;
          v128 = v153;
          goto LABEL_21;
        case 14:
          v175[7] = 14;
          sub_23B414664();
          v127 = v165;
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v129 = v154;
          v128 = v155;
LABEL_21:
          (*(v129 + 8))(v127, v128);
          break;
        default:
          v172[1] = 0;
          sub_23B414AFC();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_4_13(&v159);
          v120 = &v156;
LABEL_25:
          v119(v118, *(v120 - 32));
          break;
      }

      v132 = OUTLINED_FUNCTION_14_7();
      v133(v132);
      v126 = v170;
      *v117 = v135;
      return __swift_destroy_boxed_opaque_existential_1(v126);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t AirPollutantKind.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B4159E0()
{
  result = qword_27E1329E8;
  if (!qword_27E1329E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1329E8);
  }

  return result;
}

_BYTE *sub_23B415A44(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B415C14()
{
  result = qword_27E1329F0;
  if (!qword_27E1329F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1329F0);
  }

  return result;
}

unint64_t sub_23B415C6C()
{
  result = qword_280B423F8;
  if (!qword_280B423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423F8);
  }

  return result;
}

unint64_t sub_23B415CC4()
{
  result = qword_280B42400;
  if (!qword_280B42400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42400);
  }

  return result;
}

unint64_t sub_23B415D1C()
{
  result = qword_280B42448;
  if (!qword_280B42448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42448);
  }

  return result;
}

unint64_t sub_23B415D74()
{
  result = qword_280B42450;
  if (!qword_280B42450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42450);
  }

  return result;
}

unint64_t sub_23B415DCC()
{
  result = qword_280B424E0;
  if (!qword_280B424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424E0);
  }

  return result;
}

unint64_t sub_23B415E24()
{
  result = qword_280B424E8;
  if (!qword_280B424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424E8);
  }

  return result;
}

unint64_t sub_23B415E7C()
{
  result = qword_280B42420;
  if (!qword_280B42420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42420);
  }

  return result;
}

unint64_t sub_23B415ED4()
{
  result = qword_280B42428;
  if (!qword_280B42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42428);
  }

  return result;
}

unint64_t sub_23B415F2C()
{
  result = qword_280B424F0;
  if (!qword_280B424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424F0);
  }

  return result;
}

unint64_t sub_23B415F84()
{
  result = qword_280B424F8;
  if (!qword_280B424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424F8);
  }

  return result;
}

unint64_t sub_23B415FDC()
{
  result = qword_280B424B8;
  if (!qword_280B424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424B8);
  }

  return result;
}

unint64_t sub_23B416034()
{
  result = qword_280B424C0;
  if (!qword_280B424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424C0);
  }

  return result;
}

unint64_t sub_23B41608C()
{
  result = qword_280B424A8;
  if (!qword_280B424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424A8);
  }

  return result;
}

unint64_t sub_23B4160E4()
{
  result = qword_280B424B0;
  if (!qword_280B424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424B0);
  }

  return result;
}

unint64_t sub_23B41613C()
{
  result = qword_280B42490;
  if (!qword_280B42490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42490);
  }

  return result;
}

unint64_t sub_23B416194()
{
  result = qword_280B42498;
  if (!qword_280B42498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42498);
  }

  return result;
}

unint64_t sub_23B4161EC()
{
  result = qword_280B42500;
  if (!qword_280B42500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42500);
  }

  return result;
}

unint64_t sub_23B416244()
{
  result = qword_280B42508;
  if (!qword_280B42508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42508);
  }

  return result;
}

unint64_t sub_23B41629C()
{
  result = qword_280B42460;
  if (!qword_280B42460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42460);
  }

  return result;
}

unint64_t sub_23B4162F4()
{
  result = qword_280B42468;
  if (!qword_280B42468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42468);
  }

  return result;
}

unint64_t sub_23B41634C()
{
  result = qword_280B42438;
  if (!qword_280B42438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42438);
  }

  return result;
}

unint64_t sub_23B4163A4()
{
  result = qword_280B42440;
  if (!qword_280B42440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42440);
  }

  return result;
}

unint64_t sub_23B4163FC()
{
  result = qword_280B424D0;
  if (!qword_280B424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424D0);
  }

  return result;
}

unint64_t sub_23B416454()
{
  result = qword_280B424D8;
  if (!qword_280B424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424D8);
  }

  return result;
}

unint64_t sub_23B4164AC()
{
  result = qword_280B42470;
  if (!qword_280B42470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42470);
  }

  return result;
}

unint64_t sub_23B416504()
{
  result = qword_280B42478;
  if (!qword_280B42478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42478);
  }

  return result;
}

unint64_t sub_23B41655C()
{
  result = qword_280B42480;
  if (!qword_280B42480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42480);
  }

  return result;
}

unint64_t sub_23B4165B4()
{
  result = qword_280B42488;
  if (!qword_280B42488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42488);
  }

  return result;
}

unint64_t sub_23B41660C()
{
  result = qword_280B42410;
  if (!qword_280B42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42410);
  }

  return result;
}

unint64_t sub_23B416664()
{
  result = qword_280B42418;
  if (!qword_280B42418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42418);
  }

  return result;
}

unint64_t sub_23B4166BC()
{
  result = qword_280B42518;
  if (!qword_280B42518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42518);
  }

  return result;
}

unint64_t sub_23B416714()
{
  result = qword_280B42520;
  if (!qword_280B42520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42520);
  }

  return result;
}

uint64_t WeatherQueryDailyRelativeRange.RelativeTo.hashValue.getter()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

uint64_t sub_23B416814()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

uint64_t WeatherQueryDailyRelativeRange.init(start:end:relativeTo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23B416860()
{
  result = qword_27E132A00;
  if (!qword_27E132A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherQueryDailyRelativeRange.RelativeTo(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InstantWeatherQueryOptions.Stride(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for InstantWeatherQueryOptions.Stride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t HourWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:isDaylight:precipitation:precipitationChance:precipitationAmount:snowfallAmount:apparentPrecipitationIntensity:pressure:pressureTrend:temperature:apparentTemperature:uvIndex:visibility:wind:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25)
{
  v61 = *a2;
  v36 = *(a2 + 2);
  v37 = *a3;
  v38 = *a8;
  v39 = *a18;
  v63 = *(a18 + 8);
  v40 = *a20;
  v65 = *a23;
  v64 = *(a23 + 8);
  v41 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v41);
  (*(v42 + 32))(a9, a1);
  v43 = type metadata accessor for HourWeather();
  *(a9 + v43[5]) = a10;
  *(a9 + v43[6]) = a11;
  *(a9 + v43[7]) = a12;
  *(a9 + v43[8]) = a13;
  v44 = a9 + v43[9];
  *v44 = v61;
  *(v44 + 16) = v36;
  *(a9 + v43[10]) = v37;
  v45 = (a9 + v43[11]);
  *v45 = a4;
  v45[1] = a5;
  v46 = v43[12];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v47);
  v49 = *(v48 + 32);
  v49(a9 + v46, a6, v47);
  *(a9 + v43[13]) = a14;
  *(a9 + v43[14]) = a7;
  *(a9 + v43[15]) = v38;
  *(a9 + v43[16]) = a15;
  v50 = v43[20];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v51);
  (*(v52 + 32))(a9 + v50, a19);
  *(a9 + v43[21]) = v40;
  v53 = v43[17];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v54);
  v56 = *(v55 + 32);
  v56(a9 + v53, a16, v54);
  v56(a9 + v43[18], a17, v54);
  v57 = a9 + v43[19];
  *v57 = v39;
  *(v57 + 8) = v63;
  v49(a9 + v43[22], a21, v47);
  v49(a9 + v43[23], a22, v47);
  v58 = a9 + v43[24];
  *v58 = v65;
  *(v58 + 8) = v64;
  v56(a9 + v43[25], a24, v54);
  v59 = a9 + v43[26];

  return sub_23B416D44(a25, v59);
}

uint64_t sub_23B416D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Wind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HourWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t HourWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t HourWeather.cloudCover.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverLow.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverMid.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverHigh.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 32);
  return OUTLINED_FUNCTION_44();
}

double HourWeather.cloudCoverByAltitude.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for HourWeather() + 36);
  result = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = result;
  return result;
}

__n128 HourWeather.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for HourWeather() + 36));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t HourWeather.cloudCoverByAltitude.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for HourWeather();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t HourWeather.condition.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.symbolName.getter()
{
  v1 = (v0 + *(type metadata accessor for HourWeather() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HourWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HourWeather() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HourWeather.symbolName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.dewPoint.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for HourWeather() + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t HourWeather.dewPoint.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.dewPoint.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t HourWeather.humidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.isDaylight.setter(char a1)
{
  result = type metadata accessor for HourWeather();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t HourWeather.isDaylight.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for HourWeather();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t HourWeather.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 64)) = v1;
  return result;
}

uint64_t HourWeather.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.precipitationAmount.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for HourWeather() + 68);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t HourWeather.precipitationAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 68);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.precipitationAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.snowfallAmount.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for HourWeather() + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t HourWeather.snowfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.snowfallAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 72);
  return OUTLINED_FUNCTION_44();
}

double HourWeather.apparentPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for HourWeather() + 76);
  result = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t HourWeather.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for HourWeather();
  v5 = v1 + *(result + 76);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t HourWeather.apparentPrecipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 76);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.pressure.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for HourWeather() + 80);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t HourWeather.pressure.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 80);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.pressure.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 80);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.pressureTrend.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for HourWeather();
  *v0 = *(v1 + *(result + 84));
  return result;
}

uint64_t HourWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for HourWeather();
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t HourWeather.pressureTrend.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 84);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.temperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.temperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 88);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.apparentTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 92);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.apparentTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 92);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for HourWeather();
  v5 = v1 + *(result + 96);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t HourWeather.uvIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 96);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.visibility.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for HourWeather() + 100);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t HourWeather.visibility.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 100);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t HourWeather.visibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 100);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.wind.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = type metadata accessor for HourWeather();
  return sub_23B41A60C(v1 + *(v2 + 104), v0, type metadata accessor for Wind);
}

uint64_t HourWeather.wind.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for HourWeather() + 104);

  return sub_23B417DE8(v0, v2);
}

uint64_t sub_23B417DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Wind();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HourWeather.wind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourWeather() + 104);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.conditionAccessibilityDescription.getter()
{
  v1 = type metadata accessor for HourWeather();
  v3 = *(v0 + *(v1 + 40));
  return WeatherCondition.accessibilityDescription(isDaylight:)(*(v0 + *(v1 + 56)))._countAndFlagsBits;
}

uint64_t sub_23B417ED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xED0000776F4C7265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xED000064694D7265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEE00686769487265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023B529F40 == a2;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x746E696F50776564 && a2 == 0xE800000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x800000023B529F60 == a2;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 1684957559 && a2 == 0xE400000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_23B50D834();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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

unint64_t sub_23B4185C0(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x766F4364756F6C63;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x614E6C6F626D7973;
      break;
    case 8:
      result = 0x746E696F50776564;
      break;
    case 9:
      result = 0x79746964696D7568;
      break;
    case 10:
      result = 0x67696C7961447369;
      break;
    case 11:
      result = 0x7469706963657270;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6C6C6166776F6E73;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
    case 17:
      result = 0x6572757373657270;
      break;
    case 18:
      result = 0x74617265706D6574;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x7865646E497675;
      break;
    case 21:
      result = 0x696C696269736976;
      break;
    case 22:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B418844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B417ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B41886C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4185B8();
  *a1 = result;
  return result;
}

uint64_t sub_23B418894(uint64_t a1)
{
  v2 = sub_23B41A468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4188D0(uint64_t a1)
{
  v2 = sub_23B41A468();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static HourWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HourWeather();
  OUTLINED_FUNCTION_13_0(*(v4 + 20));
  if (!v12)
  {
    return 0;
  }

  v6 = v5;
  OUTLINED_FUNCTION_13_0(v5[6]);
  if (!v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[7]);
  if (!v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[8]);
  if (!v12)
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = *(a1 + v7 + 16);
  v11 = (a2 + v7);
  v12 = v8 == *v11 && v9 == v11[1];
  v13 = v12 && v10 == v11[2];
  if (!v13 || (sub_23B3CAE4C(*(a1 + v6[10]), *(a2 + v6[10])) & 1) == 0)
  {
    return 0;
  }

  v14 = v6[11];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v19 = v6[12];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v20, &qword_27E131E30, &qword_23B511AC0);
  if ((OUTLINED_FUNCTION_32_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[13]);
  if (!v12)
  {
    return 0;
  }

  if (*(a1 + v6[14]) != *(a2 + v6[14]))
  {
    return 0;
  }

  if ((sub_23B3CFF58(*(a1 + v6[15]), *(a2 + v6[15])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[16]);
  if (!v12)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v21 = v6[17];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v22, &qword_27E131E28, &qword_23B50EFB0);
  if ((OUTLINED_FUNCTION_36_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v6[18]);
  if ((OUTLINED_FUNCTION_36_2() & 1) == 0)
  {
    return 0;
  }

  v23 = v6[19];
  v24 = a1 + v23;
  v25 = *(a1 + v23);
  v26 = a2 + v23;
  if (v25 != *v26)
  {
    return 0;
  }

  if ((sub_23B3E71A0(*(v24 + 8), *(v26 + 8)) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  v27 = v6[20];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v28, &qword_27E132158, &qword_23B5100E8);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3E5D18(*(a1 + v6[21]), *(a2 + v6[21])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v6[22]);
  if ((OUTLINED_FUNCTION_32_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v6[23]);
  if ((OUTLINED_FUNCTION_32_2() & 1) == 0)
  {
    return 0;
  }

  v29 = v6[24];
  v30 = a1 + v29;
  v31 = *(a1 + v29);
  v32 = a2 + v29;
  if (v31 != *v32)
  {
    return 0;
  }

  v33 = *(v32 + 8);
  v34 = UVIndex.ExposureCategory.rawValue.getter(*(v30 + 8));
  v36 = v35;
  if (v34 == UVIndex.ExposureCategory.rawValue.getter(v33) && v36 == v37)
  {
  }

  else
  {
    v39 = sub_23B50D834();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_31_2(v6[25]);
  if ((OUTLINED_FUNCTION_36_2() & 1) == 0)
  {
    return 0;
  }

  v40 = OUTLINED_FUNCTION_31_2(v6[26]);

  return static Wind.== infix(_:_:)(v40, v41);
}

uint64_t HourWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A08, &qword_23B513E38);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v44 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B41A468();
  sub_23B50D974();
  LOBYTE(v45) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_17();
  sub_23B41A70C(v14, v15);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for HourWeather();
    v17 = *(v3 + v16[5]);
    OUTLINED_FUNCTION_7_2(1);
    v18 = *(v3 + v16[6]);
    OUTLINED_FUNCTION_7_2(2);
    v19 = *(v3 + v16[7]);
    OUTLINED_FUNCTION_7_2(3);
    v20 = *(v3 + v16[8]);
    OUTLINED_FUNCTION_7_2(4);
    v21 = (v3 + v16[9]);
    v22 = *(v21 + 2);
    v45 = *v21;
    v46 = v22;
    v47 = 5;
    sub_23B41A4BC();
    OUTLINED_FUNCTION_6_5();
    LOBYTE(v45) = *(v3 + v16[10]);
    v47 = 6;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_6_5();
    v23 = (v3 + v16[11]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v45) = 7;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    v26 = v16[12];
    LOBYTE(v45) = 8;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v28, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_21_2();
    v44[3] = v27;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v29 = *(v3 + v16[13]);
    OUTLINED_FUNCTION_7_2(9);
    v30 = *(v3 + v16[14]);
    LOBYTE(v45) = 10;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    LOBYTE(v45) = *(v3 + v16[15]);
    v47 = 11;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_6_5();
    v31 = *(v3 + v16[16]);
    OUTLINED_FUNCTION_7_2(12);
    v32 = v16[17];
    LOBYTE(v45) = 13;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v34, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_21_2();
    v44[2] = v33;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v16[18]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v35 = (v3 + v16[19]);
    v36 = *v35;
    LOBYTE(v35) = *(v35 + 8);
    *&v45 = v36;
    BYTE8(v45) = v35;
    v47 = 15;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_6_5();
    v44[1] = v16[20];
    LOBYTE(v45) = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v37, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v45) = *(v3 + v16[21]);
    v47 = 17;
    sub_23B41A510();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_14_8(v16[22]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v16[23]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v38 = (v3 + v16[24]);
    v39 = *v38;
    LOBYTE(v38) = *(v38 + 8);
    *&v45 = v39;
    BYTE8(v45) = v38;
    v47 = 20;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_14_8(v16[25]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v40 = v16[26];
    LOBYTE(v45) = 22;
    type metadata accessor for Wind();
    OUTLINED_FUNCTION_19_5();
    sub_23B41A70C(v41, v42);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t HourWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v124 = type metadata accessor for Wind();
  v3 = OUTLINED_FUNCTION_6(v124);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v125 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  v9 = OUTLINED_FUNCTION_5(v8);
  v133 = v10;
  v134 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v122 = &v120 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v14 = OUTLINED_FUNCTION_5(v137);
  v140 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v123 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v120 - v20;
  MEMORY[0x28223BE20](v21);
  v128 = &v120 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v24 = OUTLINED_FUNCTION_5(v23);
  v141 = v25;
  v142 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v120 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  v36 = sub_23B50AD24();
  v37 = OUTLINED_FUNCTION_5(v36);
  v135 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27();
  v43 = v42 - v41;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A18, &qword_23B513E40);
  v44 = OUTLINED_FUNCTION_5(v131);
  v129 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v49 = &v120 - v48;
  v143 = type metadata accessor for HourWeather();
  v50 = OUTLINED_FUNCTION_6(v143);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_27();
  v138 = v54 - v53;
  v56 = a1[3];
  v55 = a1[4];
  v136 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v56);
  sub_23B41A468();
  v130 = v49;
  v57 = v139;
  sub_23B50D964();
  v132 = v36;
  if (v57)
  {
    v139 = v57;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    LODWORD(v63) = 0;
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v120 = v32;
    v121 = v29;
    v61 = v129;
    LOBYTE(v144) = 0;
    OUTLINED_FUNCTION_3_17();
    sub_23B41A70C(v58, v59);
    OUTLINED_FUNCTION_30();
    v64 = v130;
    sub_23B50D734();
    v78 = v138;
    (*(v135 + 32))(v138, v43, v36);
    OUTLINED_FUNCTION_12_6(1);
    sub_23B50D704();
    v79 = v143;
    *(v78 + v143[5]) = v80;
    OUTLINED_FUNCTION_12_6(2);
    sub_23B50D704();
    *(v78 + v79[6]) = v81;
    OUTLINED_FUNCTION_12_6(3);
    sub_23B50D704();
    *(v78 + v79[7]) = v82;
    OUTLINED_FUNCTION_12_6(4);
    sub_23B50D704();
    *(v78 + v79[8]) = v83;
    v146 = 5;
    sub_23B41A564();
    OUTLINED_FUNCTION_35_4();
    v84 = v145;
    v85 = v78 + v79[9];
    *v85 = v144;
    *(v85 + 16) = v84;
    v146 = 6;
    sub_23B3F0450();
    OUTLINED_FUNCTION_35_4();
    *(v78 + v79[10]) = v144;
    OUTLINED_FUNCTION_12_6(7);
    v86 = sub_23B50D6E4();
    v87 = (v78 + v79[11]);
    *v87 = v86;
    v87[1] = v88;
    LOBYTE(v144) = 8;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_30();
    v62 = v35;
    v60 = v89;
    sub_23B50D734();
    v139 = 0;
    v65 = v141 + 32;
    v90 = *(v141 + 32);
    v90(v78 + v143[12], v35, v142);
    OUTLINED_FUNCTION_12_6(9);
    v91 = v139;
    sub_23B50D704();
    v139 = v91;
    if (v91)
    {
      goto LABEL_31;
    }

    *(v138 + v143[13]) = v92;
    LOBYTE(v144) = 10;
    v93 = sub_23B50D6F4();
    v139 = 0;
    *(v138 + v143[14]) = v93 & 1;
    v146 = 11;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_17_4();
    v139 = 0;
    *(v138 + v143[15]) = v144;
    LOBYTE(v144) = 12;
    v64 = v130;
    sub_23B50D704();
    v139 = 0;
    *(v138 + v143[16]) = v94;
    LOBYTE(v144) = 13;
    OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_20_6();
    v95 = v139;
    sub_23B50D734();
    v139 = v95;
    if (v95)
    {
LABEL_31:
      v96 = OUTLINED_FUNCTION_26_4();
      v97(v96);
      LODWORD(v63) = 0;
      OUTLINED_FUNCTION_23_5();
      v61 = 1;
      v62 = 1;
    }

    else
    {
      v63 = *(v140 + 32);
      v63(v138 + v143[17], v128, v137);
      OUTLINED_FUNCTION_29(14);
      v64 = v130;
      v98 = v139;
      sub_23B50D734();
      v139 = v98;
      if (v98)
      {
        v99 = OUTLINED_FUNCTION_26_4();
        v100(v99);
        OUTLINED_FUNCTION_23_5();
        OUTLINED_FUNCTION_22_4();
      }

      else
      {
        v63(v138 + v143[18], v127, v137);
        v146 = 15;
        sub_23B3E9ECC();
        OUTLINED_FUNCTION_17_4();
        v139 = 0;
        v101 = BYTE8(v144);
        v102 = v138 + v143[19];
        *v102 = v144;
        *(v102 + 8) = v101;
        LOBYTE(v144) = 16;
        OUTLINED_FUNCTION_3_8(&qword_27E132A28, &qword_27E132158, &qword_23B5100E8);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_20_6();
        v103 = v139;
        sub_23B50D734();
        v139 = v103;
        if (!v103)
        {
          (*(v133 + 32))(v138 + v143[20], v122, v134);
          v146 = 17;
          sub_23B41A5B8();
          OUTLINED_FUNCTION_17_4();
          v139 = 0;
          *(v138 + v143[21]) = v144;
          OUTLINED_FUNCTION_29(18);
          OUTLINED_FUNCTION_20_6();
          sub_23B50D734();
          v139 = 0;
          v90(v138 + v143[22], v120, v142);
          OUTLINED_FUNCTION_29(19);
          v106 = v139;
          sub_23B50D734();
          v69 = v106 == 0;
          v139 = v106;
          if (v106)
          {
            goto LABEL_38;
          }

          v90(v138 + v143[23], v121, v142);
          v146 = 20;
          sub_23B3F04A4();
          OUTLINED_FUNCTION_17_4();
          v139 = 0;
          v107 = BYTE8(v144);
          v108 = v138 + v143[24];
          *v108 = v144;
          *(v108 + 8) = v107;
          OUTLINED_FUNCTION_29(21);
          OUTLINED_FUNCTION_20_6();
          v109 = v139;
          sub_23B50D734();
          v139 = v109;
          if (v109)
          {
LABEL_38:
            v110 = OUTLINED_FUNCTION_26_4();
            v111(v110);
            v70 = 0;
          }

          else
          {
            v63(v138 + v143[25], v123, v137);
            LOBYTE(v144) = 22;
            OUTLINED_FUNCTION_19_5();
            sub_23B41A70C(v112, v113);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_20_6();
            v114 = v139;
            sub_23B50D734();
            v139 = v114;
            if (!v114)
            {
              v117 = OUTLINED_FUNCTION_26_4();
              v118(v117);
              v119 = v138;
              sub_23B416D44(v125, v138 + v143[26]);
              sub_23B41A60C(v119, v126, type metadata accessor for HourWeather);
              __swift_destroy_boxed_opaque_existential_1(v136);
              return sub_23B41A668(v119);
            }

            v115 = OUTLINED_FUNCTION_26_4();
            v116(v115);
            v70 = 1;
          }

          __swift_destroy_boxed_opaque_existential_1(v136);
          OUTLINED_FUNCTION_22_4();
          v64 = 1;
          v65 = 1;
          v68 = 1;
          v66 = v138;
LABEL_6:
          result = (*(v135 + 8))(v66, v132);
          if (v61)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }

        v104 = OUTLINED_FUNCTION_26_4();
        v105(v104);
        v65 = 0;
        v60 = 1;
        OUTLINED_FUNCTION_22_4();
        v64 = 1;
      }
    }
  }

  v66 = v138;
  result = __swift_destroy_boxed_opaque_existential_1(v136);
  if (v60)
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_6;
  }

  v70 = 0;
  v69 = 0;
  v68 = 0;
  if (v61)
  {
LABEL_7:
    v71 = *(v66 + v143[11] + 8);

    if ((v62 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (!v62)
  {
LABEL_8:
    v72 = v137;
    v73 = v143;
    if (v63)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  v73 = v143;
  result = (*(v141 + 8))(v66 + v143[12], v142);
  v72 = v137;
  if (v63)
  {
LABEL_9:
    v74 = v73[17];
    v75 = *(v140 + 8);
    result = v75(v66 + v74, v72);
    if ((v64 & 1) == 0)
    {
      v73 = v143;
      goto LABEL_20;
    }

LABEL_16:
    v76 = v143;
    result = v75(v66 + v143[18], v72);
    v73 = v76;
    if (v65)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (!v68)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_14:
  if (v64)
  {
    v75 = *(v140 + 8);
    goto LABEL_16;
  }

LABEL_20:
  if (!v65)
  {
    goto LABEL_17;
  }

LABEL_21:
  result = (*(v133 + 8))(v66 + v73[20], v134);
  if ((v68 & 1) == 0)
  {
LABEL_22:
    if (v69)
    {
      v77 = *(v141 + 8);
      goto LABEL_24;
    }

LABEL_26:
    if (!v70)
    {
      return result;
    }

    return (*(v140 + 8))(v66 + v73[25], v72);
  }

LABEL_18:
  v77 = *(v141 + 8);
  result = v77(v66 + v73[22], v142);
  if (!v69)
  {
    goto LABEL_26;
  }

LABEL_24:
  result = v77(v66 + v73[23], v142);
  if ((v70 & 1) == 0)
  {
    return result;
  }

  return (*(v140 + 8))(v66 + v73[25], v72);
}

uint64_t HourWeather.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_17();
  sub_23B41A70C(v1, v2);
  sub_23B50D0E4();
  v3 = type metadata accessor for HourWeather();
  v4 = *(v0 + v3[5]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v4);
  v5 = OUTLINED_FUNCTION_9_9(v3[6]);
  MEMORY[0x23EE9DB70](v5);
  v6 = OUTLINED_FUNCTION_9_9(v3[7]);
  MEMORY[0x23EE9DB70](v6);
  v7 = OUTLINED_FUNCTION_9_9(v3[8]);
  MEMORY[0x23EE9DB70](v7);
  v8 = (v0 + v3[9]);
  v30 = *v8;
  v31 = *(v8 + 2);
  CloudCoverByAltitude.hash(into:)();
  LOBYTE(v30) = *(v0 + v3[10]);
  WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0();

  v9 = (v0 + v3[11]);
  v10 = *v9;
  v11 = v9[1];
  sub_23B50D1C4();
  v12 = v3[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0);
  sub_23B50D0E4();
  v13 = OUTLINED_FUNCTION_9_9(v3[13]);
  MEMORY[0x23EE9DB70](v13);
  v14 = *(v0 + v3[14]);
  sub_23B50D8E4();
  v15 = *(v0 + v3[15]);
  sub_23B3CFAAC();
  v16 = OUTLINED_FUNCTION_9_9(v3[16]);
  MEMORY[0x23EE9DB70](v16);
  v17 = v3[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3F1C50(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0);
  sub_23B50D0E4();
  v18 = v3[18];
  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v19 = v0 + v3[19];
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v20);
  sub_23B50D1C4();

  v22 = v3[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  sub_23B3F1C50(&qword_280B42BB0, &qword_27E132158, &qword_23B5100E8);
  sub_23B50D0E4();
  if (*(v0 + v3[21]))
  {
    *(v0 + v3[21]);
  }

  sub_23B50D1C4();

  v23 = v3[22];
  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v24 = v3[23];
  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v25 = v0 + v3[24];
  v26 = *(v25 + 8);
  MEMORY[0x23EE9DB40](*v25);
  UVIndex.ExposureCategory.rawValue.getter(v26);
  OUTLINED_FUNCTION_14_0();

  v27 = v3[25];
  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v28 = v3[26];
  OUTLINED_FUNCTION_28();
  return Wind.hash(into:)();
}

uint64_t HourWeather.hashValue.getter()
{
  sub_23B50D8C4();
  HourWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B41A42C()
{
  sub_23B50D8C4();
  HourWeather.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B41A468()
{
  result = qword_280B42B18;
  if (!qword_280B42B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B18);
  }

  return result;
}

unint64_t sub_23B41A4BC()
{
  result = qword_27E132A10;
  if (!qword_27E132A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A10);
  }

  return result;
}

unint64_t sub_23B41A510()
{
  result = qword_280B42570;
  if (!qword_280B42570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42570);
  }

  return result;
}

unint64_t sub_23B41A564()
{
  result = qword_27E132A20;
  if (!qword_27E132A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A20);
  }

  return result;
}

unint64_t sub_23B41A5B8()
{
  result = qword_27E132A30;
  if (!qword_27E132A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A30);
  }

  return result;
}

uint64_t sub_23B41A60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B41A668(uint64_t a1)
{
  v2 = type metadata accessor for HourWeather();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B41A70C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HourWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HourWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B41A8BC()
{
  result = qword_27E132A38;
  if (!qword_27E132A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A38);
  }

  return result;
}

unint64_t sub_23B41A914()
{
  result = qword_280B42B08;
  if (!qword_280B42B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B08);
  }

  return result;
}

unint64_t sub_23B41A96C()
{
  result = qword_280B42B10;
  if (!qword_280B42B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B10);
  }

  return result;
}

uint64_t static Forecast<>.mock()@<X0>(char *a1@<X8>)
{
  v43 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v43);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MinuteWeather();
  v9 = OUTLINED_FUNCTION_5(v8);
  v41 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E131C10 != -1)
  {
    swift_once();
  }

  v15 = *(qword_27E15A728 + 32);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v36 = a1;
    v44 = MEMORY[0x277D84F90];

    sub_23B41AD28(0, v16, 0);
    v17 = v44;
    v18 = objc_opt_self();
    v20 = *(v4 + 16);
    v19 = v4 + 16;
    v38 = v20;
    v39 = v18;
    v21 = *(v19 + 64);
    v35 = v15;
    v22 = (v15 + ((v21 + 32) & ~v21));
    v40 = v19;
    v37 = *(v19 + 56);
    v23 = v42;
    do
    {
      v24 = v43;
      v25 = v38;
      v38(v23, v22, v43);
      v25(v14, v23, v24);
      v26 = [v39 kilometersPerHour];
      v27 = v8[7];
      sub_23B3EA0E8();
      sub_23B50A9B4();
      (*(v19 - 8))(v23, v24);
      v14[v8[5]] = 3;
      *&v14[v8[6]] = 0x3FF0000000000000;
      v28 = &v14[v8[8]];
      *v28 = 0x4008000000000000;
      v28[8] = 2;
      v44 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_23B41AD28(v29 > 1, v30 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v30 + 1;
      sub_23B41AD80(v14, v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30);
      v22 += v37;
      --v16;
    }

    while (v16);

    a1 = v36;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  result = static WeatherMetadata.mock()(&a1[v31[13]]);
  *a1 = v17;
  v33 = &a1[v31[14]];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&a1[v31[15]] = 0;
  *&a1[v31[16]] = 0;
  v34 = &a1[v31[17]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  return result;
}

uint64_t sub_23B41AD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MinuteWeather();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B41AE30()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_17();
  sub_23B3B3AEC(v2, v3, v4, v5, v6, v7, v8, sub_23B4F5A9C);
  *v0 = v9;
}

size_t sub_23B41B3D8(size_t a1, int64_t a2, char a3)
{
  result = sub_23B41B644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23B41B3F8(size_t a1, int64_t a2, char a3)
{
  result = sub_23B41B810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23B41B418(size_t a1, int64_t a2, char a3)
{
  result = sub_23B41B9DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_23B41B54C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_18();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_23B41B644(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AC8, &qword_23B514160);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AD0, &qword_23B514168) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AD0, &qword_23B514168) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23B4F5C04(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_23B41B810(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AC0, &qword_23B514158);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23B4F5C18(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_23B41B9DC(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AB0, &qword_23B514150);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AB8, &qword_23B5164C0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AB8, &qword_23B5164C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23B4F5C2C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_23B41BBA8(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_18();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t WeatherQueryPeriodicRelativeRange.init(periodStart:periodEnd:periodLengths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AD24();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  result = (v9)(a4 + *(PeriodicRelativeRange + 20), a2, v8);
  *(a4 + *(PeriodicRelativeRange + 24)) = a3;
  return result;
}

uint64_t WeatherNetworkActivity.Domain.rawValue.getter()
{
  if (*v0)
  {
    return 999;
  }

  else
  {
    return 43;
  }
}

uint64_t sub_23B41BD9C@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherNetworkActivity.Domain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherNetworkActivity.Label.children.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  while (2)
  {
    v4 = byte_284E0D7A8[v1 + 32];
    v5 = byte_284E0D7A8[v1 + 32];
    switch(v5)
    {
      case 1u:
      case 2u:
        v4 = 1;
        goto LABEL_12;
      case 3u:
      case 4u:
        v4 = 3;
        goto LABEL_12;
      case 5u:
        goto LABEL_12;
      case 7u:
      case 8u:
        v4 = 7;
        goto LABEL_12;
      case 9u:
        v4 = 9;
        goto LABEL_12;
      case 0xBu:
      case 0xCu:
        v4 = 11;
        goto LABEL_12;
      case 0xDu:
      case 0xEu:
        v4 = 13;
        goto LABEL_12;
      case 0xFu:
        v4 = 15;
LABEL_12:
        if (v2 == 16 || v4 != v2 + 1)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      default:
        if (v2 != 16)
        {
          goto LABEL_22;
        }

LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B41B394(0, *(v3 + 16) + 1, 1);
        }

        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23B41B394(v7 > 1, v8 + 1, 1);
        }

        *(v3 + 16) = v8 + 1;
        *(v3 + v8 + 32) = v5;
LABEL_22:
        if (++v1 != 16)
        {
          continue;
        }

        return v3;
    }
  }
}

WeatherKit::WeatherNetworkActivity::Label_optional __swiftcall WeatherNetworkActivity.Label.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x10)
  {
    v2 = 16;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23B41C030@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherNetworkActivity.Label.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherNetworkActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WeatherNetworkActivity() + 24);

  return sub_23B398820(v3, a1);
}

uint64_t WeatherNetworkActivity.parentToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WeatherNetworkActivity() + 28);

  return sub_23B398820(v3, a1);
}

uint64_t sub_23B41C1B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F54746E65726170 && a2 == 0xEB000000006E656BLL)
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

uint64_t sub_23B41C308(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x6F54746E65726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B41C390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B41C1B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B41C3B8(uint64_t a1)
{
  v2 = sub_23B41D144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41C3F4(uint64_t a1)
{
  v2 = sub_23B41D144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherNetworkActivity.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132B08, &qword_23B5141C8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23 - v11;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_10_8();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_23B41D144();
  sub_23B50D974();
  v29 = *v3;
  v28 = 0;
  sub_23B41D198();
  sub_23B50D7F4();
  if (!v2)
  {
    v27 = v3[1];
    v26 = 1;
    sub_23B41D1EC();
    sub_23B50D7F4();
    v17 = type metadata accessor for WeatherNetworkActivity();
    v18 = *(v17 + 24);
    v25 = 2;
    sub_23B50AD64();
    OUTLINED_FUNCTION_0_18();
    sub_23B41D508(v19, v20);
    OUTLINED_FUNCTION_8_6();
    v21 = *(v17 + 28);
    v24 = 3;
    OUTLINED_FUNCTION_8_6();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t WeatherNetworkActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132B28, &qword_23B5141D0);
  v14 = OUTLINED_FUNCTION_5(v13);
  v39 = v15;
  v40 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = type metadata accessor for WeatherNetworkActivity();
  v19 = OUTLINED_FUNCTION_6(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v24 = (v23 - v22);
  v26 = a1[3];
  v25 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B41D144();
  v27 = v41;
  sub_23B50D964();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v28 = v12;
  v29 = v39;
  v41 = v9;
  v47 = 0;
  sub_23B41D240();
  sub_23B50D734();
  *v24 = v48;
  v45 = 1;
  sub_23B41D294();
  sub_23B50D734();
  v24[1] = v46;
  sub_23B50AD64();
  v44 = 2;
  OUTLINED_FUNCTION_0_18();
  sub_23B41D508(v30, v31);
  OUTLINED_FUNCTION_7_16();
  v37 = *(v18 + 24);
  sub_23B39857C(v28, &v24[v37]);
  v43 = 3;
  v32 = v41;
  OUTLINED_FUNCTION_7_16();
  v33 = *(v29 + 8);
  v34 = OUTLINED_FUNCTION_10_8();
  v35(v34);
  sub_23B39857C(v32, &v24[*(v18 + 28)]);
  sub_23B41D2E8(v24, v38);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_23B41D34C(v24);
}

BOOL static WeatherNetworkActivity.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_23B50AD64();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v51[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132B40, &qword_23B5141D8);
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v51[-v31];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v53 = v19;
  v55 = v7;
  v54 = type metadata accessor for WeatherNetworkActivity();
  v33 = *(v54 + 24);
  v34 = *(v23 + 48);
  sub_23B398820(&a1[v33], v32);
  sub_23B398820(&a2[v33], &v32[v34]);
  OUTLINED_FUNCTION_46(v32);
  if (v35)
  {
    OUTLINED_FUNCTION_46(&v32[v34]);
    if (v35)
    {
      sub_23B398890(v32, &qword_27E1321E8, &qword_23B5101C0);
      goto LABEL_13;
    }

LABEL_11:
    v36 = v32;
LABEL_22:
    sub_23B398890(v36, &qword_27E132B40, &qword_23B5141D8);
    return 0;
  }

  sub_23B398820(v32, v22);
  OUTLINED_FUNCTION_46(&v32[v34]);
  if (v35)
  {
    (*(v55 + 8))(v22, v4);
    goto LABEL_11;
  }

  v37 = v55;
  (*(v55 + 32))(v12, &v32[v34], v4);
  OUTLINED_FUNCTION_0_18();
  sub_23B41D508(v38, v39);
  v52 = sub_23B50D134();
  v40 = *(v37 + 8);
  v40(v12, v4);
  v40(v22, v4);
  sub_23B398890(v32, &qword_27E1321E8, &qword_23B5101C0);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v41 = *(v54 + 28);
  v42 = *(v23 + 48);
  sub_23B398820(&a1[v41], v29);
  sub_23B398820(&a2[v41], v29 + v42);
  OUTLINED_FUNCTION_46(v29);
  if (v35)
  {
    OUTLINED_FUNCTION_46(v29 + v42);
    if (v35)
    {
      sub_23B398890(v29, &qword_27E1321E8, &qword_23B5101C0);
      return 1;
    }

    goto LABEL_21;
  }

  v43 = v53;
  sub_23B398820(v29, v53);
  OUTLINED_FUNCTION_46(v29 + v42);
  if (v44)
  {
    (*(v55 + 8))(v43, v4);
LABEL_21:
    v36 = v29;
    goto LABEL_22;
  }

  v46 = v55;
  (*(v55 + 32))(v12, v29 + v42, v4);
  OUTLINED_FUNCTION_0_18();
  sub_23B41D508(v47, v48);
  v49 = sub_23B50D134();
  v50 = *(v46 + 8);
  v50(v12, v4);
  v50(v43, v4);
  sub_23B398890(v29, &qword_27E1321E8, &qword_23B5101C0);
  return (v49 & 1) != 0;
}

uint64_t WeatherNetworkActivity.hash(into:)()
{
  v1 = sub_23B50AD64();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  if (*v0)
  {
    v21 = 999;
  }

  else
  {
    v21 = 43;
  }

  MEMORY[0x23EE9DB40](v21, v18);
  MEMORY[0x23EE9DB40](v0[1] + 1);
  v22 = type metadata accessor for WeatherNetworkActivity();
  sub_23B398820(&v0[*(v22 + 24)], v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v1) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v4 + 32))(v9, v20, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_0_18();
    sub_23B41D508(v23, v24);
    OUTLINED_FUNCTION_11();
    (*(v4 + 8))(v9, v1);
  }

  sub_23B398820(&v0[*(v22 + 28)], v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v1) == 1)
  {
    return sub_23B50D8E4();
  }

  (*(v4 + 32))(v9, v16, v1);
  sub_23B50D8E4();
  OUTLINED_FUNCTION_0_18();
  sub_23B41D508(v26, v27);
  OUTLINED_FUNCTION_11();
  return (*(v4 + 8))(v9, v1);
}

uint64_t WeatherNetworkActivity.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherNetworkActivity.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B41D108()
{
  sub_23B50D8C4();
  WeatherNetworkActivity.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B41D144()
{
  result = qword_27E132B10;
  if (!qword_27E132B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B10);
  }

  return result;
}

unint64_t sub_23B41D198()
{
  result = qword_27E132B18;
  if (!qword_27E132B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B18);
  }

  return result;
}

unint64_t sub_23B41D1EC()
{
  result = qword_27E132B20;
  if (!qword_27E132B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B20);
  }

  return result;
}

unint64_t sub_23B41D240()
{
  result = qword_27E132B30;
  if (!qword_27E132B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B30);
  }

  return result;
}

unint64_t sub_23B41D294()
{
  result = qword_27E132B38;
  if (!qword_27E132B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B38);
  }

  return result;
}

uint64_t sub_23B41D2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherNetworkActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B41D34C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherNetworkActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B41D3AC()
{
  result = qword_27E132B50;
  if (!qword_27E132B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B50);
  }

  return result;
}

unint64_t sub_23B41D404()
{
  result = qword_27E132B58;
  if (!qword_27E132B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B58);
  }

  return result;
}

unint64_t sub_23B41D45C()
{
  result = qword_27E132B60;
  if (!qword_27E132B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132B68, &qword_23B5143C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B60);
  }

  return result;
}

uint64_t sub_23B41D508(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherNetworkActivity.Domain(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherNetworkActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B41D6FC()
{
  result = qword_27E132B78;
  if (!qword_27E132B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B78);
  }

  return result;
}

unint64_t sub_23B41D754()
{
  result = qword_27E132B80;
  if (!qword_27E132B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B80);
  }

  return result;
}

unint64_t sub_23B41D7AC()
{
  result = qword_27E132B88;
  if (!qword_27E132B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B88);
  }

  return result;
}

unint64_t sub_23B41D800()
{
  result = qword_27E132B90;
  if (!qword_27E132B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B90);
  }

  return result;
}

unint64_t sub_23B41D854()
{
  result = qword_27E132B98;
  if (!qword_27E132B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132B98);
  }

  return result;
}

uint64_t News.placements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_23B41D904(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xEA00000000007374)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B41D984()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

uint64_t sub_23B41D9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B41D904(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B41DA18(uint64_t a1)
{
  v2 = sub_23B41DC38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41DA54(uint64_t a1)
{
  v2 = sub_23B41DC38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t News.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132BA0, &qword_23B514680);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B41DC38();

  sub_23B50D974();
  v14[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132BB0, &qword_23B514688);
  sub_23B41DE84(&qword_27E132BB8, sub_23B41DC8C);
  sub_23B50D7F4();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B41DC38()
{
  result = qword_27E132BA8;
  if (!qword_27E132BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BA8);
  }

  return result;
}

unint64_t sub_23B41DC8C()
{
  result = qword_27E132BC0;
  if (!qword_27E132BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BC0);
  }

  return result;
}

uint64_t News.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132BC8, &qword_23B514690);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B41DC38();
  sub_23B50D964();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132BB0, &qword_23B514688);
    sub_23B41DE84(&qword_27E132BD0, sub_23B41DEFC);
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B41DE84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132BB0, &qword_23B514688);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B41DEFC()
{
  result = qword_27E132BD8;
  if (!qword_27E132BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherAttribution(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeatherAttribution(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for News.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B41E0AC()
{
  result = qword_27E132BE0;
  if (!qword_27E132BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BE0);
  }

  return result;
}

unint64_t sub_23B41E104()
{
  result = qword_27E132BE8;
  if (!qword_27E132BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BE8);
  }

  return result;
}

unint64_t sub_23B41E15C()
{
  result = qword_27E132BF0;
  if (!qword_27E132BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132BF0);
  }

  return result;
}

uint64_t AirQualityScaleGradient.stops.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_23B41E20C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B41E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B41E20C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B41E2C4(uint64_t a1)
{
  v2 = sub_23B41E4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41E300(uint64_t a1)
{
  v2 = sub_23B41E4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AirQualityScaleGradient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132BF8, &qword_23B514860);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B41E4E4();

  sub_23B50D974();
  v14[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132C00, &qword_23B514868);
  sub_23B41E730(&qword_280B41A18, sub_23B41E538);
  sub_23B50D7F4();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B41E4E4()
{
  result = qword_280B42308;
  if (!qword_280B42308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42308);
  }

  return result;
}

unint64_t sub_23B41E538()
{
  result = qword_280B41D58;
  if (!qword_280B41D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41D58);
  }

  return result;
}

uint64_t AirQualityScaleGradient.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132C08, &qword_23B514870);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B41E4E4();
  sub_23B50D964();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132C00, &qword_23B514868);
    sub_23B41E730(&qword_27E132C10, sub_23B41E7A8);
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B41E730(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132C00, &qword_23B514868);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B41E7A8()
{
  result = qword_27E132C18;
  if (!qword_27E132C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132C18);
  }

  return result;
}

uint64_t AirQualityScaleGradient.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  sub_23B40879C(v3, v1);
  return sub_23B50D914();
}

uint64_t sub_23B41E884()
{
  v1 = *v0;
  sub_23B50D8C4();
  sub_23B40879C(v3, v1);
  return sub_23B50D914();
}

unint64_t sub_23B41E8CC()
{
  result = qword_27E132C20;
  if (!qword_27E132C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132C20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleGradient.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B41E9E0()
{
  result = qword_27E132C28;
  if (!qword_27E132C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132C28);
  }

  return result;
}

unint64_t sub_23B41EA38()
{
  result = qword_280B422F8;
  if (!qword_280B422F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B422F8);
  }

  return result;
}

unint64_t sub_23B41EA90()
{
  result = qword_280B42300;
  if (!qword_280B42300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42300);
  }

  return result;
}

uint64_t WeatherError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);

  sub_23B41ED3C(&v3);
  return OUTLINED_FUNCTION_65();
}

uint64_t sub_23B41EB24@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (qword_280B43260 != -1)
    {
      swift_once();
    }

    v3 = sub_23B50AAD4();
    v5 = v4;
    v6 = 0;
    v7 = 0;
    result = 0;
    v9 = 0;
  }

  else
  {
    if (qword_280B43260 != -1)
    {
      swift_once();
    }

    v3 = sub_23B50AAD4();
    v5 = v10;
    v6 = sub_23B50AAD4();
    v7 = v11;
    result = sub_23B50AAD4();
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = result;
  a1[7] = v9;
  return result;
}

uint64_t WeatherError.failureReason.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);

  sub_23B41ED3C(v3);
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherError.helpAnchor.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);

  sub_23B41ED3C(v3);
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherError.recoverySuggestion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_19(a1, a2);

  sub_23B41ED3C(v3);
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherError.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B41EEC8()
{
  result = qword_27E132C30;
  if (!qword_27E132C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132C30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static Automation.shouldShowSimulatedAlert.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_0_20();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*static Automation.shouldShowSimulatedAlert.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  return sub_23B41F104;
}

uint64_t sub_23B41F1D4@<X0>(unsigned int *a1@<X4>, uint64_t *a2@<X5>, uint64_t *a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = sub_23B50C7D4();
  (*(*(v10 - 8) + 104))(a5, v9, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = (a5 + *(result + 52));
  *v12 = a4;
  v12[1] = 0;
  return result;
}

unint64_t sub_23B41F28C()
{
  result = sub_23B50C7D4();
  if (v1 <= 0x3F)
  {
    result = sub_23B41F350();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B41F350()
{
  result = qword_27E132CC8;
  if (!qword_27E132CC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E132CC8);
  }

  return result;
}

uint64_t sub_23B41F398()
{
  v1 = sub_23B50C7D4();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  return sub_23B50D474();
}

uint64_t sub_23B41F478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 52);
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t SunEvents.nauticalDawn.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 20));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.nauticalDawn.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 20);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.nauticalDawn.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.civilDawn.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 24));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.civilDawn.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 24);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.civilDawn.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.sunrise.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 28);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.sunrise.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.solarNoon.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 32));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.solarNoon.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 32);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.solarNoon.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.sunset.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 36);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.sunset.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.civilDusk.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 40));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.civilDusk.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 40);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.civilDusk.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.nauticalDusk.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 44));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.nauticalDusk.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 44);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.nauticalDusk.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.astronomicalDusk.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 48));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.astronomicalDusk.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 48);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.astronomicalDusk.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t SunEvents.solarMidnight.getter()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 52));

  return sub_23B3C7DF4(v1, v2);
}

uint64_t SunEvents.solarMidnight.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 52);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B3CF890(v1, v2);
}

uint64_t SunEvents.solarMidnight.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for SunEvents() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B41FAC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000023B52A1D0 == a2;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6163697475616ELL && a2 == 0xEC0000006E776144;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7761446C69766963 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6F4E72616C6F73 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7375446C69766963 && a2 == 0xE90000000000006BLL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6163697475616ELL && a2 == 0xEC0000006B737544;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000023B52A1F0 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x64694D72616C6F73 && a2 == 0xED0000746867696ELL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_23B50D834();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_23B41FDF0(char a1)
{
  result = 0x6C6163697475616ELL;
  switch(a1)
  {
    case 1:
    case 7:
      return result;
    case 2:
      result = 0x7761446C69766963;
      break;
    case 3:
      result = 0x657369726E7573;
      break;
    case 4:
      result = 0x6F6F4E72616C6F73;
      break;
    case 5:
      result = 0x7465736E7573;
      break;
    case 6:
      result = 0x7375446C69766963;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x64694D72616C6F73;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_23B41FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B41FAC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B41FF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B41FDE8();
  *a1 = result;
  return result;
}

uint64_t sub_23B41FF6C(uint64_t a1)
{
  v2 = sub_23B421108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41FFA8(uint64_t a1)
{
  v2 = sub_23B421108();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static SunEvents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_5(v5);
  v198 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_12_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v181 = v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v183 = v18;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  v185 = v20;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  v187 = v22;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  v189 = v24;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  v191 = v26;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v193 = v28;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v195 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v178 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_0();
  v180 = (v36 - v37);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_1();
  v182 = v39;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_1();
  v184 = v41;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_1();
  v186 = v43;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_1();
  v188 = v45;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_1();
  v190 = v47;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  v192 = v49;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_1();
  v194 = v51;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_34_6();
  MEMORY[0x28223BE20](v53);
  v55 = &v178 - v54;
  v196 = v56;
  v197 = a1;
  v57 = *(v56 + 48);
  sub_23B3C7DF4(a1, &v178 - v54);
  sub_23B3C7DF4(a2, &v55[v57]);
  OUTLINED_FUNCTION_46(v55);
  if (v58)
  {
    OUTLINED_FUNCTION_46(&v55[v57]);
    if (!v58)
    {
      goto LABEL_10;
    }

    v179 = v14;
    sub_23B3988E8(v55, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    sub_23B3C7DF4(v55, v33);
    OUTLINED_FUNCTION_46(&v55[v57]);
    if (v58)
    {
      OUTLINED_FUNCTION_24_4();
      v60 = v33;
LABEL_9:
      v59(v60, v5);
LABEL_10:
      v61 = v55;
LABEL_32:
      sub_23B3988E8(v61, &qword_27E131E20, &qword_23B51E340);
      return 0;
    }

    v179 = v14;
    v62 = v198;
    v63 = *(v198 + 32);
    v64 = OUTLINED_FUNCTION_18_6();
    v65(v64);
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v66, v67);
    v68 = OUTLINED_FUNCTION_25_3();
    v69 = *(v62 + 8);
    v70 = OUTLINED_FUNCTION_138();
    v69(v70);
    (v69)(v33, v5);
    sub_23B3988E8(v55, &qword_27E131E18, &unk_23B50F710);
    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  v71 = type metadata accessor for SunEvents();
  v72 = v71[5];
  v73 = v196;
  v74 = *(v196 + 48);
  sub_23B3C7DF4(v197 + v72, v2);
  sub_23B3C7DF4(a2 + v72, v2 + v74);
  OUTLINED_FUNCTION_46(v2);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v2 + v74);
    if (!v58)
    {
      goto LABEL_21;
    }

    sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v75 = v195;
    sub_23B3C7DF4(v2, v195);
    OUTLINED_FUNCTION_46(v2 + v74);
    if (v76)
    {
      OUTLINED_FUNCTION_24_4();
      v78 = v75;
LABEL_20:
      v77(v78, v5);
      goto LABEL_21;
    }

    v79 = v198;
    v80 = *(v198 + 32);
    v81 = OUTLINED_FUNCTION_18_6();
    v82(v81);
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v83, v84);
    v85 = OUTLINED_FUNCTION_27_4();
    v86 = *(v79 + 8);
    v87 = OUTLINED_FUNCTION_138();
    v86(v87);
    (v86)(v75, v5);
    sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
    if ((v85 & 1) == 0)
    {
      return 0;
    }
  }

  v88 = v71[6];
  v89 = *(v73 + 48);
  v90 = v194;
  sub_23B3C7DF4(v88 + v197, v194);
  sub_23B3C7DF4(v88 + a2, v90 + v89);
  OUTLINED_FUNCTION_46(v90);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v90 + v89);
    if (v58)
    {
      sub_23B3988E8(v90, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_36;
    }

LABEL_31:
    v61 = v90;
    goto LABEL_32;
  }

  v91 = v193;
  sub_23B3C7DF4(v90, v193);
  OUTLINED_FUNCTION_46(v90 + v89);
  if (v92)
  {
    OUTLINED_FUNCTION_24_4();
    v93(v91, v5);
    goto LABEL_31;
  }

  v95 = v198;
  v96 = *(v198 + 32);
  v97 = OUTLINED_FUNCTION_18_6();
  v98(v97);
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v99, v100);
  v101 = OUTLINED_FUNCTION_27_4();
  v102 = *(v95 + 8);
  v88 = (v95 + 8);
  v103 = OUTLINED_FUNCTION_138();
  v102(v103);
  (v102)(v91, v5);
  sub_23B3988E8(v90, &qword_27E131E18, &unk_23B50F710);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v195 = v71;
  v104 = v71[7];
  v105 = OUTLINED_FUNCTION_10_9();
  v2 = v192;
  sub_23B3C7DF4(v105, v192);
  sub_23B3C7DF4(a2 + v104, v71 + v2);
  OUTLINED_FUNCTION_46(v2);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v2);
    if (!v58)
    {
      goto LABEL_21;
    }

    sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v106 = v191;
    sub_23B3C7DF4(v2, v191);
    OUTLINED_FUNCTION_46(v71 + v2);
    if (v107)
    {
LABEL_50:
      OUTLINED_FUNCTION_24_4();
      v78 = v106;
      goto LABEL_20;
    }

    v108 = *(v198 + 32);
    v109 = OUTLINED_FUNCTION_18_6();
    v110(v109);
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v111, v112);
    v71 = OUTLINED_FUNCTION_26_5();
    v113 = OUTLINED_FUNCTION_13_5();
    v88(v113);
    (v88)(v106, v5);
    sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  v114 = v195[8];
  v115 = OUTLINED_FUNCTION_10_9();
  v2 = v190;
  sub_23B3C7DF4(v115, v190);
  sub_23B3C7DF4(a2 + v114, v71 + v2);
  OUTLINED_FUNCTION_46(v2);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v2);
    if (v58)
    {
      sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_52;
    }

LABEL_21:
    v61 = v2;
    goto LABEL_32;
  }

  v106 = v189;
  sub_23B3C7DF4(v2, v189);
  OUTLINED_FUNCTION_46(v71 + v2);
  if (v116)
  {
    goto LABEL_50;
  }

  v117 = *(v198 + 32);
  v118 = OUTLINED_FUNCTION_18_6();
  v119(v118);
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v120, v121);
  v71 = OUTLINED_FUNCTION_26_5();
  v122 = OUTLINED_FUNCTION_13_5();
  v88(v122);
  (v88)(v106, v5);
  sub_23B3988E8(v2, &qword_27E131E18, &unk_23B50F710);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_52:
  v123 = v195[9];
  v124 = OUTLINED_FUNCTION_10_9();
  v125 = v188;
  sub_23B3C7DF4(v124, v188);
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_46(v125);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v125);
    if (!v58)
    {
      goto LABEL_77;
    }

    sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v126 = v187;
    sub_23B3C7DF4(v125, v187);
    OUTLINED_FUNCTION_46(v71 + v125);
    if (v127)
    {
      OUTLINED_FUNCTION_24_4();
      v129 = v126;
LABEL_76:
      v128(v129, v5);
      goto LABEL_77;
    }

    v130 = OUTLINED_FUNCTION_6_6();
    v131(v130);
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v132, v133);
    v134 = OUTLINED_FUNCTION_26_5();
    v71 = v125;
    v135 = OUTLINED_FUNCTION_13_5();
    (v125)(v135);
    (v125)(v126, v5);
    sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
    if ((v134 & 1) == 0)
    {
      return 0;
    }
  }

  v136 = v195[10];
  v137 = OUTLINED_FUNCTION_10_9();
  v125 = v186;
  sub_23B3C7DF4(v137, v186);
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_46(v125);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v125);
    if (!v58)
    {
      goto LABEL_77;
    }

    sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v138 = v185;
    sub_23B3C7DF4(v125, v185);
    OUTLINED_FUNCTION_46(v71 + v125);
    if (v139)
    {
LABEL_75:
      OUTLINED_FUNCTION_24_4();
      v129 = v138;
      goto LABEL_76;
    }

    v140 = OUTLINED_FUNCTION_6_6();
    v141(v140);
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v142, v143);
    v144 = OUTLINED_FUNCTION_25_3();
    v71 = v125;
    v145 = OUTLINED_FUNCTION_13_5();
    (v125)(v145);
    (v125)(v138, v5);
    sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
    if ((v144 & 1) == 0)
    {
      return 0;
    }
  }

  v146 = v195[11];
  v147 = OUTLINED_FUNCTION_10_9();
  v125 = v184;
  sub_23B3C7DF4(v147, v184);
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_46(v125);
  if (!v58)
  {
    v138 = v183;
    sub_23B3C7DF4(v125, v183);
    OUTLINED_FUNCTION_46(v71 + v125);
    if (!v148)
    {
      v149 = OUTLINED_FUNCTION_6_6();
      v150(v149);
      OUTLINED_FUNCTION_0_21();
      sub_23B421FE4(v151, v152);
      v153 = OUTLINED_FUNCTION_25_3();
      v71 = v138;
      v154 = OUTLINED_FUNCTION_13_5();
      (v125)(v154);
      (v125)(v138, v5);
      sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
      if ((v153 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_79;
    }

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_46(v71 + v125);
  if (!v58)
  {
    goto LABEL_77;
  }

  sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
LABEL_79:
  v155 = v195[12];
  v156 = OUTLINED_FUNCTION_10_9();
  v125 = v182;
  sub_23B3C7DF4(v156, v182);
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_46(v125);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v125);
    if (v58)
    {
      sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_88;
    }

LABEL_77:
    v61 = v125;
    goto LABEL_32;
  }

  v157 = v181;
  sub_23B3C7DF4(v125, v181);
  OUTLINED_FUNCTION_46(v71 + v125);
  if (v158)
  {
    OUTLINED_FUNCTION_24_4();
    v129 = v157;
    goto LABEL_76;
  }

  v159 = OUTLINED_FUNCTION_6_6();
  v160(v159);
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v161, v162);
  v163 = OUTLINED_FUNCTION_27_4();
  v71 = v125;
  v164 = OUTLINED_FUNCTION_13_5();
  (v125)(v164);
  (v125)(v157, v5);
  sub_23B3988E8(v125, &qword_27E131E18, &unk_23B50F710);
  if ((v163 & 1) == 0)
  {
    return 0;
  }

LABEL_88:
  v165 = v195[13];
  v166 = OUTLINED_FUNCTION_10_9();
  v55 = v180;
  sub_23B3C7DF4(v166, v180);
  sub_23B3C7DF4(a2 + v165, v71 + v55);
  OUTLINED_FUNCTION_46(v55);
  if (v58)
  {
    OUTLINED_FUNCTION_46(v71 + v55);
    if (v58)
    {
      sub_23B3988E8(v55, &qword_27E131E18, &unk_23B50F710);
      return 1;
    }

    goto LABEL_10;
  }

  v167 = v179;
  sub_23B3C7DF4(v55, v179);
  OUTLINED_FUNCTION_46(v71 + v55);
  if (v168)
  {
    OUTLINED_FUNCTION_24_4();
    v60 = v167;
    goto LABEL_9;
  }

  v169 = v198;
  v170 = *(v198 + 32);
  v171 = OUTLINED_FUNCTION_18_6();
  v172(v171);
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v173, v174);
  v175 = OUTLINED_FUNCTION_27_4();
  v176 = *(v169 + 8);
  v177 = OUTLINED_FUNCTION_138();
  v176(v177);
  (v176)(v167, v5);
  sub_23B3988E8(v55, &qword_27E131E18, &unk_23B50F710);
  return (v175 & 1) != 0;
}

uint64_t SunEvents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CD0, &qword_23B514C70);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v25[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B421108();
  sub_23B50D974();
  v25[31] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v12, v13);
  OUTLINED_FUNCTION_4_14();
  if (!v1)
  {
    v14 = type metadata accessor for SunEvents();
    v15 = v14[5];
    v25[30] = 1;
    OUTLINED_FUNCTION_4_14();
    v16 = v14[6];
    v25[29] = 2;
    OUTLINED_FUNCTION_4_14();
    v17 = v14[7];
    v25[28] = 3;
    OUTLINED_FUNCTION_4_14();
    v18 = v14[8];
    v25[27] = 4;
    OUTLINED_FUNCTION_4_14();
    v19 = v14[9];
    v25[26] = 5;
    OUTLINED_FUNCTION_4_14();
    v20 = v14[10];
    v25[25] = 6;
    OUTLINED_FUNCTION_4_14();
    v21 = v14[11];
    v25[24] = 7;
    OUTLINED_FUNCTION_4_14();
    v22 = v14[12];
    v25[15] = 8;
    OUTLINED_FUNCTION_4_14();
    v23 = v14[13];
    v25[14] = 9;
    OUTLINED_FUNCTION_4_14();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B421108()
{
  result = qword_280B41A70;
  if (!qword_280B41A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A70);
  }

  return result;
}

uint64_t SunEvents.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_12_0();
  v95 = v5 - v6;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v96 = v8;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  v97 = v10;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v99 = v12;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v101 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v109 = v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v108 = v18;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  v105 = v20;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  v106 = v22;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v23);
  v110 = &v90 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CD8, &qword_23B514C78);
  v25 = OUTLINED_FUNCTION_5(v111);
  v107 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v90 - v29;
  v31 = type metadata accessor for SunEvents();
  v32 = (v31 - 8);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_27();
  v36 = v35 - v34;
  v37 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v104 = v32[7];
  v41 = OUTLINED_FUNCTION_14_9(v104);
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  v103 = v32[8];
  v44 = OUTLINED_FUNCTION_14_9(v103);
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v37);
  v102 = v32[9];
  v47 = OUTLINED_FUNCTION_14_9(v102);
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v37);
  v100 = v32[10];
  v50 = OUTLINED_FUNCTION_14_9(v100);
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v37);
  v98 = v32[11];
  v53 = OUTLINED_FUNCTION_14_9(v98);
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v37);
  v56 = v32[12];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v37);
  v60 = v32[13];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v37);
  v64 = v32[14];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v37);
  v68 = v32[15];
  v114 = v36;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v37);
  v72 = a1;
  v73 = a1[3];
  v74 = v72[4];
  v115 = v72;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  sub_23B421108();
  v112 = v30;
  v75 = v113;
  sub_23B50D964();
  if (v75)
  {
    v85 = v114;
  }

  else
  {
    v113 = v56;
    v93 = v60;
    v76 = v108;
    v92 = v64;
    v91 = v68;
    v77 = v109;
    v78 = v107;
    v125 = 0;
    OUTLINED_FUNCTION_0_21();
    v81 = sub_23B421FE4(v79, v80);
    v82 = v110;
    OUTLINED_FUNCTION_33_2();
    sub_23B50D6D4();
    v84 = v81;
    v85 = v114;
    sub_23B3CF890(v82, v114);
    v124 = 1;
    v86 = v106;
    OUTLINED_FUNCTION_33_2();
    v110 = v84;
    sub_23B50D6D4();
    v87 = v78;
    sub_23B3CF890(v86, v85 + v104);
    v123 = 2;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_32_3(v103);
    v122 = 3;
    OUTLINED_FUNCTION_8_7();
    sub_23B3CF890(v76, v85 + v102);
    v121 = 4;
    OUTLINED_FUNCTION_8_7();
    sub_23B3CF890(v77, v85 + v100);
    v120 = 5;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_32_3(v98);
    v119 = 6;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_32_3(v113);
    v118 = 7;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_32_3(v93);
    v117 = 8;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_32_3(v92);
    v116 = 9;
    v88 = v111;
    v89 = v112;
    sub_23B50D6D4();
    (*(v87 + 8))(v89, v88);
    sub_23B3CF890(v95, v85 + v91);
    sub_23B4217F0(v85, v94);
  }

  __swift_destroy_boxed_opaque_existential_1(v115);
  return sub_23B421794(v85);
}

uint64_t sub_23B421794(uint64_t a1)
{
  v2 = type metadata accessor for SunEvents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4217F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunEvents();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SunEvents.hash(into:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_19();
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_0();
  v108 = v14 - v15;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  v107 = v17;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  v106 = v19;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  v105 = v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  v104 = v23;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  v103 = v25;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v103 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34_6();
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v103 - v34;
  sub_23B3C7DF4(v2, &v103 - v34);
  OUTLINED_FUNCTION_22_3(v35);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v37 = OUTLINED_FUNCTION_2_18();
    v38(v37);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v39, v40);
    OUTLINED_FUNCTION_11();
    v41 = OUTLINED_FUNCTION_3_19();
    v42(v41);
  }

  v43 = type metadata accessor for SunEvents();
  sub_23B3C7DF4(v2 + v43[5], v32);
  OUTLINED_FUNCTION_22_3(v32);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_7_17();
    v45(v44, v32, v3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v46, v47);
    OUTLINED_FUNCTION_11();
    v48 = OUTLINED_FUNCTION_3_19();
    v49(v48);
  }

  sub_23B3C7DF4(v2 + v43[6], v1);
  OUTLINED_FUNCTION_22_3(v1);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_7_17();
    v51(v50, v1, v3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v52, v53);
    OUTLINED_FUNCTION_11();
    v54 = OUTLINED_FUNCTION_3_19();
    v55(v54);
  }

  sub_23B3C7DF4(v2 + v43[7], v28);
  OUTLINED_FUNCTION_22_3(v28);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v56 = OUTLINED_FUNCTION_7_17();
    v57(v56, v28, v3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v58, v59);
    OUTLINED_FUNCTION_11();
    v60 = OUTLINED_FUNCTION_3_19();
    v61(v60);
  }

  v62 = v103;
  sub_23B3C7DF4(v2 + v43[8], v103);
  OUTLINED_FUNCTION_22_3(v62);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_2_18();
    v64(v63);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v65, v66);
    OUTLINED_FUNCTION_11();
    v67 = OUTLINED_FUNCTION_3_19();
    v68(v67);
  }

  v69 = v104;
  sub_23B3C7DF4(v2 + v43[9], v104);
  OUTLINED_FUNCTION_22_3(v69);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v70 = OUTLINED_FUNCTION_2_18();
    v71(v70);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v72, v73);
    OUTLINED_FUNCTION_11();
    v74 = OUTLINED_FUNCTION_3_19();
    v75(v74);
  }

  v76 = v105;
  sub_23B3C7DF4(v2 + v43[10], v105);
  OUTLINED_FUNCTION_22_3(v76);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v77 = OUTLINED_FUNCTION_2_18();
    v78(v77);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v79, v80);
    OUTLINED_FUNCTION_11();
    v81 = OUTLINED_FUNCTION_3_19();
    v82(v81);
  }

  v83 = v106;
  sub_23B3C7DF4(v2 + v43[11], v106);
  OUTLINED_FUNCTION_22_3(v83);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v84 = OUTLINED_FUNCTION_2_18();
    v85(v84);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v86, v87);
    OUTLINED_FUNCTION_11();
    v88 = OUTLINED_FUNCTION_3_19();
    v89(v88);
  }

  v90 = v107;
  sub_23B3C7DF4(v2 + v43[12], v107);
  OUTLINED_FUNCTION_22_3(v90);
  if (v36)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v91 = OUTLINED_FUNCTION_2_18();
    v92(v91);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_0_21();
    sub_23B421FE4(v93, v94);
    OUTLINED_FUNCTION_11();
    v95 = OUTLINED_FUNCTION_3_19();
    v96(v95);
  }

  v97 = v108;
  sub_23B3C7DF4(v2 + v43[13], v108);
  OUTLINED_FUNCTION_22_3(v97);
  if (v36)
  {
    return OUTLINED_FUNCTION_83();
  }

  v98 = OUTLINED_FUNCTION_2_18();
  v99(v98);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_0_21();
  sub_23B421FE4(v100, v101);
  OUTLINED_FUNCTION_11();
  return (*(v6 + 8))(v11, v3);
}

uint64_t SunEvents.hashValue.getter()
{
  sub_23B50D8C4();
  SunEvents.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B421F60()
{
  sub_23B50D8C4();
  SunEvents.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B421FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SunEvents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SunEvents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B422194()
{
  result = qword_27E132CE8;
  if (!qword_27E132CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132CE8);
  }

  return result;
}

unint64_t sub_23B4221EC()
{
  result = qword_280B41A60;
  if (!qword_280B41A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A60);
  }

  return result;
}

unint64_t sub_23B422244()
{
  result = qword_280B41A68;
  if (!qword_280B41A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A68);
  }

  return result;
}

uint64_t sub_23B422298@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_23B42B280(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

void MinuteForecastStringBuilder.buildLongString(from:timeZone:referenceDate:)()
{
  OUTLINED_FUNCTION_21();
  v42 = v2;
  v43 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CF0, &unk_23B514EB0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_5();
  v11 = type metadata accessor for MinuteCondition();
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v41 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  v23 = sub_23B50AD24();
  v24 = OUTLINED_FUNCTION_5(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_27();
  v31 = (v30 - v29);
  sub_23B4299F4(v4, v22, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_51(v22, 1, v23);
  if (v32)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_51(v22, 1, v23);
    if (!v32)
    {
      sub_23B398890(v22, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v26 + 32))(v31, v22, v23);
  }

  if (!OUTLINED_FUNCTION_10_10())
  {
    goto LABEL_10;
  }

  Forecast<>.conditions.getter();
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_18();
  *(v34 - 16) = v31;
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_6(v35);
  sub_23B429B18(&v44);
  if (!v6)
  {

    v36 = v44;
    OUTLINED_FUNCTION_0_22();
    sub_23B422298(v36, v37, type metadata accessor for MinuteCondition, v1);

    OUTLINED_FUNCTION_51(v1, 1, v11);
    if (v32)
    {
      sub_23B398890(v1, &qword_27E132CF0, &unk_23B514EB0);
    }

    else
    {
      OUTLINED_FUNCTION_4_15();
      v38 = v41;
      sub_23B429C98(v1, v41, v39);
      sub_23B427554(v38 + *(v11 + 32), v42, v31);
      sub_23B429CF8(v38, v36);
    }

LABEL_10:
    (*(v26 + 8))(v31, v23);
    OUTLINED_FUNCTION_20();
    return;
  }

  __break(1u);
}

void sub_23B4226D4()
{
  OUTLINED_FUNCTION_107();
  v26 = v1;
  v31 = v2;
  v32 = v3;
  v5 = v4;
  v29 = v6;
  v30 = v7;
  v9 = v8(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12();
  v27 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = 0;
  v17 = *(v5 + 16);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {

LABEL_14:
      OUTLINED_FUNCTION_105();
      return;
    }

    if (v16 >= *(v5 + 16))
    {
      break;
    }

    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = *(v10 + 72);
    sub_23B42B280(v5 + v18 + v19 * v16, v15, v31);
    v20 = v29(v15);
    if (v0)
    {
      sub_23B429CF8(v15, v32);

      goto LABEL_14;
    }

    if (v20)
    {
      sub_23B429C98(v15, v27, v32);
      v21 = v28;
      v33 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26(0, *(v21 + 16) + 1, 1);
        v21 = v33;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v28 = v23 + 1;
        v25 = v23;
        v26(v22 > 1, v23 + 1, 1);
        v24 = v28;
        v23 = v25;
        v21 = v33;
      }

      ++v16;
      *(v21 + 16) = v24;
      v28 = v21;
      sub_23B429C98(v27, v21 + v18 + v23 * v19, v32);
    }

    else
    {
      sub_23B429CF8(v15, v32);
      ++v16;
    }
  }

  __break(1u);
}

void MinuteForecastStringBuilder.buildListString(from:)()
{
  OUTLINED_FUNCTION_21();
  v54 = v0;
  v55 = sub_23B50AEF4();
  v3 = OUTLINED_FUNCTION_5(v55);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v52 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CF0, &unk_23B514EB0);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_4();
  v13 = type metadata accessor for MinuteCondition();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = OUTLINED_FUNCTION_18_7();
  v18 = OUTLINED_FUNCTION_5(v17);
  v56 = v19;
  v57 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  v36 = &v52 - v35;
  v37 = OUTLINED_FUNCTION_25_4();
  sub_23B4299F4(v37, v38, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(v30, 1, v31);
  if (v39)
  {
    v40 = &qword_27E131C90;
    v41 = &unk_23B514EC0;
    v42 = v30;
LABEL_11:
    sub_23B398890(v42, v40, v41);
LABEL_12:
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_20();
    return;
  }

  sub_23B429A54(v30, v36);
  v58[0] = 0;
  v58[1] = 0;
  v59 = 1;
  if (!Forecast<>.isRelevant(in:)(v58))
  {
    v40 = &qword_27E131CA0;
    v41 = &qword_23B5101A0;
    v42 = v36;
    goto LABEL_11;
  }

  sub_23B50B9D4();
  sub_23B50B994();
  Forecast<>.conditions.getter();
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_18();
  *(v44 - 16) = v24;
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_6(v45);
  sub_23B429B18(v58);
  if (!v30)
  {

    v46 = v58[0];
    OUTLINED_FUNCTION_0_22();
    sub_23B422298(v46, v47, type metadata accessor for MinuteCondition, v1);

    OUTLINED_FUNCTION_51(v1, 1, v13);
    if (v39)
    {
      sub_23B398890(v36, &qword_27E131CA0, &qword_23B5101A0);
      sub_23B398890(v1, &qword_27E132CF0, &unk_23B514EB0);
    }

    else
    {
      OUTLINED_FUNCTION_4_15();
      sub_23B429C98(v1, v2, v48);
      v49 = *(v13 + 32);
      v50 = v52;
      sub_23B50AEE4();
      sub_23B422D80(v2 + v49);
      (*(v53 + 8))(v50, v55);
      sub_23B429CF8(v2, v46);
      sub_23B398890(v36, &qword_27E131CA0, &qword_23B5101A0);
    }

    OUTLINED_FUNCTION_26_6();
    v51(v24);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_23B422D80(uint64_t a1)
{
  v2 = *(type metadata accessor for PrecipitationShift() + 24);
  result = 0;
  switch(*(a1 + v2))
  {
    case 1:
    case 2:
    case 3:
    case 4:
      if (qword_280B43260 != -1)
      {
        goto LABEL_50;
      }

      return sub_23B50AAD4();
    case 5:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 6:
    case 7:
    case 8:
    case 9:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0xA:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0xF:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x28:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x2D:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x32:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x37:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x50:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x55:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x56:
    case 0x57:
    case 0x58:
    case 0x59:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x5A:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x5F:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x60:
    case 0x61:
    case 0x62:
    case 0x63:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x64:
      return result;
    default:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

LABEL_50:
      swift_once();
      return sub_23B50AAD4();
  }
}

void MinuteForecastStringBuilder.buildWidgetString(from:timeZone:referenceDate:)()
{
  OUTLINED_FUNCTION_21();
  v48 = v2;
  v49 = v0;
  v47 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CF0, &unk_23B514EB0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for MinuteCondition();
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v14 = OUTLINED_FUNCTION_18_7();
  v15 = OUTLINED_FUNCTION_5(v14);
  v50 = v16;
  v51 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  v34 = OUTLINED_FUNCTION_25_4();
  sub_23B4299F4(v34, v35, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(v27, 1, v28);
  if (v36)
  {
    v37 = &qword_27E131C90;
    v38 = &unk_23B514EC0;
    v39 = v27;
LABEL_11:
    sub_23B398890(v39, v37, v38);
LABEL_12:
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_20();
    return;
  }

  sub_23B429A54(v27, v33);
  v52[0] = 0;
  v52[1] = 0;
  v53 = 1;
  if (!Forecast<>.isRelevant(in:)(v52))
  {
    v37 = &qword_27E131CA0;
    v38 = &qword_23B5101A0;
    v39 = v33;
    goto LABEL_11;
  }

  sub_23B50B9D4();
  sub_23B50B994();
  v40 = Forecast<>.conditions.getter();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_18();
  *(v41 - 16) = v21;
  OUTLINED_FUNCTION_22_5();
  v52[0] = v42;

  sub_23B429B18(v52);
  if (!v27)
  {

    v43 = v52[0];
    OUTLINED_FUNCTION_0_22();
    sub_23B422298(v43, v44, type metadata accessor for MinuteCondition, v9);

    OUTLINED_FUNCTION_51(v9, 1, v10);
    if (v36)
    {
      sub_23B398890(v33, &qword_27E131CA0, &qword_23B5101A0);
      sub_23B398890(v9, &qword_27E132CF0, &unk_23B514EB0);
    }

    else
    {
      sub_23B429C98(v9, v1, type metadata accessor for MinuteCondition);
      sub_23B423D40(v1 + *(v10 + 32), v47, v48);
      sub_23B429CF8(v1, type metadata accessor for MinuteCondition);
      sub_23B398890(v33, &qword_27E131CA0, &qword_23B5101A0);
    }

    OUTLINED_FUNCTION_26_6();
    v45(v21);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_23B423BA8()
{
  OUTLINED_FUNCTION_107();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_106_0();
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11_5();
  v14 = type metadata accessor for MinuteCondition();
  sub_23B4299F4(v3 + *(v14 + 20), v1, &qword_27E131E18, &unk_23B50F710);
  if (OUTLINED_FUNCTION_14_10() == 1)
  {
    v15 = OUTLINED_FUNCTION_29_5(v11);
    v16(v15);
    if (OUTLINED_FUNCTION_14_10() != 1)
    {
      sub_23B398890(v1, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_24_5(v11);
    v18(v17);
  }

  sub_23B42B228();
  sub_23B50D114();
  (*(v11 + 8))(v0, v8);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B423D40(uint64_t a1, uint64_t a2, char *a3)
{
  v89 = a3;
  v92 = sub_23B50AAC4();
  v94 = *(v92 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  v87 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = sub_23B50AD24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = sub_23B50AE84();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50ADF4();
  v93 = a1;
  sub_23B4299F4(a1, v14, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E131E18, &unk_23B50F710);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v93;
    v32 = v26;
  }

  else
  {
    v84 = v22;
    v85 = v23;
    v80 = *(v16 + 32);
    v81 = v15;
    v72 = v16 + 32;
    v80(v21, v14, v15);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20);
    v34 = sub_23B50AE64();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v77 = *(v35 + 72);
    v78 = v33;
    v37 = swift_allocObject();
    v86 = xmmword_23B50ED30;
    *(v37 + 16) = xmmword_23B50ED30;
    v38 = *MEMORY[0x277CC99A0];
    v39 = *(v35 + 104);
    v73 = v36;
    v76 = v38;
    v79 = v34;
    v75 = v39;
    v39(v37 + v36);
    sub_23B4E74B0(v37);
    v88 = v21;
    v89 = v26;
    sub_23B50AE14();

    v40 = sub_23B50AAB4();
    v42 = v41;
    v43 = v94 + 8;
    v74 = *(v94 + 8);
    v74(v8, v92);
    if (v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = v40;
    }

    v45 = MEMORY[0x277D83B88];
    v94 = v43;
    if (v44 < 1)
    {
      v82 = 0;
      v83 = 0;
    }

    else
    {
      if (qword_280B43260 != -1)
      {
        swift_once();
      }

      sub_23B50AAD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
      v46 = swift_allocObject();
      *(v46 + 16) = v86;
      *(v46 + 56) = v45;
      *(v46 + 64) = MEMORY[0x277D83C10];
      *(v46 + 32) = v44;
      v82 = sub_23B50D154();
      v83 = v47;
    }

    v48 = v81;
    v49 = type metadata accessor for PrecipitationShift();
    v31 = v93;
    v50 = v90;
    sub_23B4299F4(v93 + *(v49 + 20), v90, &qword_27E131E18, &unk_23B50F710);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v48);
    v22 = v84;
    if (EnumTagSinglePayload == 1)
    {
      (*(v16 + 8))(v88, v48);
      sub_23B398890(v50, &qword_27E131E18, &unk_23B50F710);
      v27 = 0;
      v28 = 0;
      v23 = v85;
      v32 = v89;
      v29 = v82;
      v30 = v83;
    }

    else
    {
      v81 = v16;
      v80(v91, v50, v48);
      v52 = v73;
      v53 = swift_allocObject();
      *(v53 + 16) = v86;
      v75(v53 + v52, v76, v79);
      sub_23B4E74B0(v53);
      v54 = v87;
      v32 = v89;
      sub_23B50AE14();

      v55 = sub_23B50AAB4();
      v57 = v56;
      v74(v54, v92);
      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v55;
      }

      if (v58 < 1)
      {
        v60 = 0;
        v28 = 0;
        v23 = v85;
        v62 = v83;
      }

      else
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }

        sub_23B50AAD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
        v59 = swift_allocObject();
        *(v59 + 16) = v86;
        *(v59 + 56) = MEMORY[0x277D83B88];
        *(v59 + 64) = MEMORY[0x277D83C10];
        *(v59 + 32) = v58;
        v60 = sub_23B50D154();
        v28 = v61;

        v23 = v85;
        v62 = v83;
        v31 = v93;
      }

      v63 = *(v81 + 8);
      v63(v91, v48);
      v63(v88, v48);
      v29 = v82;
      v27 = v60;
      v30 = v62;
    }
  }

  switch(*(v31 + *(type metadata accessor for PrecipitationShift() + 24)))
  {
    case 1:
    case 2:
    case 3:
    case 4:

      if (qword_280B43260 != -1)
      {
        goto LABEL_213;
      }

      goto LABEL_175;
    case 5:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 6:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 7:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 8:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 9:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0xA:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0xB:
    case 0x1B:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0xC:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0xD:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0xE:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0xF:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x10:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x11:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x12:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x13:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x14:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x15:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x16:
    case 0x17:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x18:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x19:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x1A:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x28:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x2D:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x2E:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x2F:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x30:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x31:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x32:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x33:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x34:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x35:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x36:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x37:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x38:
    case 0x43:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x39:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x3A:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x3B:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x3C:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x3D:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x3E:
    case 0x3F:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x40:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x41:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x42:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x50:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x55:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x56:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x57:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x58:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x59:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x5A:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x5F:

      if (qword_280B43260 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_213;
    case 0x60:

      if (!v30)
      {
        goto LABEL_210;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_209;
      }

      goto LABEL_223;
    case 0x61:

      if (!v30)
      {
LABEL_210:
        (*(v23 + 8))(v32, v22);
        goto LABEL_211;
      }

      v64 = v32;
      if (qword_280B43260 != -1)
      {
LABEL_223:
        swift_once();
      }

LABEL_209:
      sub_23B50AAD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_23B50ED30;
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = sub_23B3FD2D0();
      *(v70 + 32) = v29;
      *(v70 + 40) = v30;
      v66 = sub_23B50D154();

      (*(v23 + 8))(v64, v22);
      break;
    case 0x62:
      if (!v30 || !v28)
      {
        goto LABEL_205;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_220;
    case 0x63:
      if (v30 && v28)
      {
        v65 = v27;
        v89 = v32;
        if (qword_280B43260 != -1)
        {
LABEL_220:
          swift_once();
        }

LABEL_204:
        sub_23B50AAD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_23B510080;
        v68 = MEMORY[0x277D837D0];
        *(v67 + 56) = MEMORY[0x277D837D0];
        v69 = sub_23B3FD2D0();
        *(v67 + 32) = v29;
        *(v67 + 40) = v30;
        *(v67 + 96) = v68;
        *(v67 + 104) = v69;
        *(v67 + 64) = v69;
        *(v67 + 72) = v65;
        *(v67 + 80) = v28;
        v66 = sub_23B50D154();

        (*(v23 + 8))(v89, v22);
      }

      else
      {
LABEL_205:
        (*(v23 + 8))(v32, v22);
LABEL_206:

LABEL_211:
        v66 = 0;
      }

      break;
    case 0x64:
      (*(v23 + 8))(v32, v22);

      goto LABEL_206;
    default:

      if (qword_280B43260 != -1)
      {
LABEL_213:
        swift_once();
      }

LABEL_175:
      v66 = sub_23B50AAD4();
      (*(v23 + 8))(v32, v22);
      return v66;
  }

  return v66;
}