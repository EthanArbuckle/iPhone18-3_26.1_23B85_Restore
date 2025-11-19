uint64_t sub_18F1DD900(uint64_t a1)
{
  result = sub_18F1DDA4C(&qword_1ED6FC0B8, type metadata accessor for IntFromDoubleResolver);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1DD958()
{
  result = qword_1ED6FBF50[0];
  if (!qword_1ED6FBF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FBF50);
  }

  return result;
}

uint64_t sub_18F1DD9AC(uint64_t a1)
{
  result = sub_18F1DDA4C(&qword_1ED6FC0C8, type metadata accessor for IntFromDoubleResolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1DDA4C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for IntResolver(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F1DDBA0()
{
  result = sub_18F522CFC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_18F1DDC0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F1DDCD8()
{
  result = qword_1EACCF3B8;
  if (!qword_1EACCF3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD1800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF3B8);
  }

  return result;
}

unint64_t sub_18F1DDD3C()
{
  result = qword_1EACD1808;
  if (!qword_1EACD1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1808);
  }

  return result;
}

uint64_t sub_18F1DDD90()
{
  v0 = sub_18F1DDDF8();
  sub_18F1DDE2C(v0, v1, v2, v3);

  return OUTLINED_FUNCTION_45();
}

uint64_t sub_18F1DDE2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_18F52256C();
    if (!v9 || (v10 = v9, v11 = sub_18F118C58(v9, 0), v12 = sub_18F1DDF8C(v14, (v11 + 4), v10, a1, a2, a3, a4), _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0(), , v12 == v10))
    {
      v13 = sub_18F5219BC();

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
      return sub_18F5219BC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_18F52286C();
LABEL_4:

  return sub_18F5219BC();
}

unint64_t sub_18F1DDF8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_18F1DE19C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18F521A7C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18F52286C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_18F1DE19C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_18F521A4C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18F1DE19C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_18F521A8C();
    OUTLINED_FUNCTION_14_18(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x193ADB040](15, a1 >> 16);
    OUTLINED_FUNCTION_14_18(v3);
    return v4 | 8;
  }
}

uint64_t sub_18F1DE1F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t AttributedStringFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_18F52094C();
  OUTLINED_FUNCTION_10(v4);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1DE2F0, 0, 0);
}

uint64_t sub_18F1DE2F0()
{
  v1 = *(v0 + 16);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52093C();
  sub_18F5208FC();
  v2 = sub_18F5208EC();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_18F1DE3E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18F10DF80;

  return AttributedStringFromStringResolver.resolve(from:context:)(a1, v4, v5);
}

id static AttributedString.valueType.getter()
{
  v0 = [objc_opt_self() attributedStringValueType];

  return v0;
}

uint64_t AttributedString.projectedAsValue.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_18F5208EC();
  OUTLINED_FUNCTION_2_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_29();
  v8 = sub_18F1DE5B0();
  (*(v6 + 16))(v3, v1, v2);
  result = sub_18F52234C();
  a1[3] = v8;
  *a1 = result;
  return result;
}

unint64_t sub_18F1DE5B0()
{
  result = qword_1EACCDD18;
  if (!qword_1EACCDD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACCDD18);
  }

  return result;
}

uint64_t AttributedString.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  sub_18F5208EC();
  OUTLINED_FUNCTION_2_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_29();
  v16 = sub_18F52187C();
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F1DE5B0();
  (*(v14 + 16))(v3, v1, v2);
  v18 = sub_18F52234C();
  v19 = [v18 string];

  sub_18F5218DC();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = type metadata accessor for DisplayRepresentation();
  v29 = v28[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v20);
  v33 = v28[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v24);
  *(a1 + v28[7]) = xmmword_18F540410;
  *(a1 + v28[8]) = 0;
  *(a1 + v28[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v20);
  sub_18F0FF628(v12, a1 + v29, &qword_1EACCF7A8);
  sub_18F0FF628(v8, a1 + v33, &qword_1EACD0270);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v28);
}

unint64_t sub_18F1DE924(uint64_t a1)
{
  result = sub_18F1DE94C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1DE94C()
{
  result = qword_1EACCECB0[0];
  if (!qword_1EACCECB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCECB0);
  }

  return result;
}

unint64_t sub_18F1DE9A4()
{
  result = qword_1EACCECA8;
  if (!qword_1EACCECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCECA8);
  }

  return result;
}

uint64_t sub_18F1DEA38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18F5208EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

_BYTE *storeEnumTagSinglePayload for AttributedStringFromStringResolver(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1DEB50()
{
  result = qword_1EACCEBC0;
  if (!qword_1EACCEBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD1830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEBC0);
  }

  return result;
}

uint64_t IntentCurrencyAmount.currencyCode.getter()
{
  v1 = *(v0 + 24);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t IntentCurrencyAmount.init(amount:currencyCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_18F1DEC00(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 amount];
  if (v4 && (v5 = v4, [v4 decimalValue], v5, v6 = sub_18F1E00BC(a1), v7))
  {
    v8 = v6;
    v9 = v7;

    LODWORD(v10) = v12;
    *a2 = v11;
    *(a2 + 16) = v10;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
  }

  else
  {
    sub_18F522A3C();
    __break(1u);
  }
}

uint64_t static IntentCurrencyAmount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((MEMORY[0x193ADBA90](*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_18F522D5C();
}

uint64_t IntentCurrencyAmount.hash(into:)()
{
  sub_18F5224DC();

  return sub_18F5219CC();
}

uint64_t IntentCurrencyAmount.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F5224DC();
  sub_18F5219CC();
  return sub_18F522F4C();
}

uint64_t sub_18F1DEE50()
{
  sub_18F522EFC();
  IntentCurrencyAmount.hash(into:)();
  return sub_18F522F4C();
}

uint64_t IntentCurrencyAmount.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = v39 - v6;
  v7 = sub_18F52247C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39[3] = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  sub_18F52186C();
  sub_18F52185C();
  MEMORY[0x193AD9C00](v14, v15);
  sub_18F1E0074(&qword_1EACD1838, MEMORY[0x1E6969FC0]);
  sub_18F5224FC();
  (*(v9 + 8))(v12, v7);
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v16 = sub_18F520B3C();
  v17 = v40;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  v21 = type metadata accessor for DisplayRepresentation.Image(0);
  v22 = v41;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  v26 = type metadata accessor for DisplayRepresentation();
  v27 = v26[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
  v31 = v26[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v21);
  *(a1 + v26[7]) = xmmword_18F540410;
  *(a1 + v26[8]) = 0;
  *(a1 + v26[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v16);
  sub_18F0FF628(v17, a1 + v27, &qword_1EACCF7A8);
  return sub_18F0FF628(v22, a1 + v31, &qword_1EACD0270);
}

id static IntentCurrencyAmount.valueType.getter()
{
  v0 = [objc_opt_self() currencyAmountValueType];

  return v0;
}

id IntentCurrencyAmount.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8 = *(v1 + 32);
  v4 = sub_18F1DF2FC();
  sub_18F1DF3F4(v7, v6);
  result = sub_18F1DF340(v1);
  a1[3] = v4;
  *a1 = result;
  return result;
}

unint64_t sub_18F1DF2FC()
{
  result = qword_1EACD1840;
  if (!qword_1EACD1840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD1840);
  }

  return result;
}

id sub_18F1DF340(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v1;
  v9 = *(a1 + 32);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F52249C();
  sub_18F1DF3F4(v8, v7);
  v4 = sub_18F5218AC();
  sub_18F1E0120(v8);
  v5 = [v2 initWithAmount:v3 currencyCode:v4];
  sub_18F1E0120(v8);

  return v5;
}

uint64_t IntentParameter<>.currencyCodes.getter()
{
  if (!*(*(v0 + *(*v0 + 112)) + 16))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_0_30();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_8_3(v1);
  sub_18F0FECD4(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  if (OUTLINED_FUNCTION_8_4())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void IntentParameter<>.inclusiveRange.getter(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + *(*v1 + 112)) + 16);
  v4 = 0uLL;
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_5_8();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_8_3(v5);
      sub_18F0FECD4(v7, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1848);
      v8 = OUTLINED_FUNCTION_9_16();
      *&v16 = OUTLINED_FUNCTION_6_22(v8, v9, v10, v11, v12, v13, v14, v15, v20).n128_u64[0];
      *&v19 = OUTLINED_FUNCTION_5_24(v16, v17);
    }

    else
    {
      *&v19 = OUTLINED_FUNCTION_3_20();
    }
  }

  else
  {
    v18 = 1;
    v19 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v19;
  *(a1 + 32) = v3;
  *(a1 + 40) = v18;
}

uint64_t IntentParameterContext<>.currencyCodes.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_0_30();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_8_3(v1);
  sub_18F0FECD4(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  if (OUTLINED_FUNCTION_8_4())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void IntentParameterContext<>.inclusiveRange.getter(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = 0uLL;
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_5_8();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_8_3(v5);
      sub_18F0FECD4(v7, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1848);
      v8 = OUTLINED_FUNCTION_9_16();
      *&v16 = OUTLINED_FUNCTION_6_22(v8, v9, v10, v11, v12, v13, v14, v15, v20).n128_u64[0];
      *&v19 = OUTLINED_FUNCTION_5_24(v16, v17);
    }

    else
    {
      *&v19 = OUTLINED_FUNCTION_3_20();
    }
  }

  else
  {
    v18 = 1;
    v19 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v19;
  *(a1 + 32) = v3;
  *(a1 + 40) = v18;
}

uint64_t sub_18F1DF68C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  strcpy((inited + 32), "currencyCodes");
  *(inited + 46) = -4864;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  *(inited + 48) = a1;
  sub_18F1168B4();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F5216CC();
  if ((*(a2 + 40) & 1) == 0)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1848);
    v6 = swift_allocObject();
    *&v10 = v6;
    v7 = *(a2 + 16);
    *(v6 + 16) = *a2;
    *(v6 + 32) = v7;
    *(v6 + 48) = *(a2 + 32);
    sub_18F118710(&v10, &v9);
    swift_isUniquelyReferenced_nonNull_native();
    sub_18F2BFA5C();
  }

  return v5;
}

uint64_t sub_18F1DF7F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374696E75 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F522D5C();

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

uint64_t sub_18F1DF8C0(char a1)
{
  if (a1)
  {
    return 0x7374696E75;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_18F1DF8E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1880);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1E0020();
  sub_18F522FEC();
  v13[0] = *v3;
  *(v13 + 13) = *(v3 + 13);
  v12[15] = 0;
  type metadata accessor for Decimal(0);
  sub_18F1E0074(&qword_1EACD1890, type metadata accessor for Decimal);
  sub_18F522C2C();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_18F522BFC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F1DFAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1DF7F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F1DFAC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F1D5E88();
  *a1 = result;
  return result;
}

uint64_t sub_18F1DFAF0(uint64_t a1)
{
  v2 = sub_18F1E0020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1DFB2C(uint64_t a1)
{
  v2 = sub_18F1E0020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F1DFB80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 20) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

double sub_18F1DFBA0@<D0>(uint64_t a1@<X8>)
{
  sub_18F1DFB80(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_18F1DFBE8()
{
  result = qword_1EACD1850;
  if (!qword_1EACD1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1850);
  }

  return result;
}

unint64_t sub_18F1DFC3C(uint64_t a1)
{
  result = sub_18F1DFC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1DFC64()
{
  result = qword_1EACD1858;
  if (!qword_1EACD1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1858);
  }

  return result;
}

unint64_t sub_18F1DFCB8(uint64_t a1)
{
  result = sub_18F1DFCE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1DFCE0()
{
  result = qword_1EACD1860;
  if (!qword_1EACD1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1860);
  }

  return result;
}

unint64_t sub_18F1DFD38()
{
  result = qword_1EACD1868;
  if (!qword_1EACD1868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD1870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1868);
  }

  return result;
}

unint64_t sub_18F1DFD9C()
{
  result = qword_1EACD1878;
  if (!qword_1EACD1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1878);
  }

  return result;
}

unint64_t sub_18F1DFDF4()
{
  result = qword_1EACD44E0;
  if (!qword_1EACD44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44E0);
  }

  return result;
}

uint64_t initializeWithCopy for IntentCurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return a1;
}

uint64_t assignWithCopy for IntentCurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return a1;
}

uint64_t assignWithTake for IntentCurrencyAmount(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t sub_18F1DFF60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_18F1DFFB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_18F1E0020()
{
  result = qword_1EACD1888;
  if (!qword_1EACD1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1888);
  }

  return result;
}

uint64_t sub_18F1E0074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F1E00BC(void *a1)
{
  v1 = [a1 currencyCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for IntentCurrencyAmount.CurrencyNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F1E022C()
{
  result = qword_1EACD1898;
  if (!qword_1EACD1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1898);
  }

  return result;
}

unint64_t sub_18F1E0284()
{
  result = qword_1EACD18A0;
  if (!qword_1EACD18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD18A0);
  }

  return result;
}

unint64_t sub_18F1E02DC()
{
  result = qword_1EACD18A8[0];
  if (!qword_1EACD18A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD18A8);
  }

  return result;
}

uint64_t sub_18F1E0334()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_18F52254C();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18F1E0414()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 112);
  v2 = sub_18F52254C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_18F1E052C()
{
  v0 = sub_18F1E0414();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F1E0598()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1E05D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18F1E0614(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18F1E066C()
{
  result = sub_18F52165C();
  if (v1 <= 0x3F)
  {
    result = sub_18F52254C();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id *sub_18F1E0768()
{
  v1 = qword_1EAD0AC08;
  sub_18F52165C();
  OUTLINED_FUNCTION_0_31();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 16);
  sub_18F52254C();
  OUTLINED_FUNCTION_0_31();
  (*(v4 + 8))(v0 + v3);

  sub_18F1E08E0(v0 + *(*v0 + 18) + 8);
  return v0;
}

uint64_t sub_18F1E0870()
{
  sub_18F1E0768();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F1E08E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1E0984@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_18F0FD724(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      if (v8)
      {
        return sub_18F0FD0B4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t _EntityDeferredPropertyValue.__allocating_init(get:set:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_20();
  v8 = swift_allocObject();
  _EntityDeferredPropertyValue.init(get:set:)(a1, a2, a3, a4);
  return v8;
}

void *_EntityDeferredPropertyValue.init(get:set:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = 0;
  v4[4] = 0;
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_55_1();
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t _EntityDeferredPropertyValue.__allocating_init(get:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_4_20();
  v2 = swift_allocObject();
  _EntityDeferredPropertyValue.init(get:)(v1, v0);
  return v2;
}

void *_EntityDeferredPropertyValue.init(get:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  v2[4] = 0;
  v2[2] = a1;
  v2[3] = a2;
  OUTLINED_FUNCTION_55_1();
  v2[5] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t _EntityDeferredPropertyValue._getter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _EntityDeferredPropertyValue._getter.setter()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_55_1();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_18F1E0CA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v12;
    *(v8 + 32) = v11;
    *(v8 + 48) = v6;
    *(v8 + 56) = v7;
    v9 = &unk_18F546080;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_18F0F693C(v6);
}

uint64_t sub_18F1E0D50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_18F0FC874;

  return v9(a2, a3);
}

uint64_t sub_18F1E0E54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
    v10 = &unk_18F546070;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = *a2;
  swift_beginAccess();
  v12 = *(v11 + 32);
  *(v11 + 32) = v10;
  *(v11 + 40) = v8;
  sub_18F0F693C(v5);
  return sub_18F0F689C(v12);
}

uint64_t sub_18F1E0F1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_18F0FC870;

  return v6();
}

uint64_t _EntityDeferredPropertyValue._setter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_18F0F693C(v1);
  return v1;
}

uint64_t _EntityDeferredPropertyValue._setter.setter()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_55_1();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return sub_18F0F689C(v3);
}

uint64_t _EntityDeferredPropertyValue.deinit()
{

  sub_18F0F689C(*(v0 + 32));
  return v0;
}

uint64_t _EntityDeferredPropertyValue.__deallocating_deinit()
{
  _EntityDeferredPropertyValue.deinit();
  v0 = OUTLINED_FUNCTION_4_20();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F1E1160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = _EntityDeferredPropertyValue.__allocating_init(get:set:)(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_18F1E1188@<X0>(uint64_t *a1@<X8>)
{
  result = _EntityDeferredPropertyValue.__allocating_init(get:)();
  *a1 = result;
  return result;
}

uint64_t sub_18F1E11F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1E1328()
{
  OUTLINED_FUNCTION_18_7();
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_18F0FC870;

  return sub_18F1E0F1C(v2, v0, v4);
}

void sub_18F1E1410()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F0FC874;

  JUMPOUT(0x18F1E0D50);
}

uint64_t sub_18F1E1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[51] = a5;
  v6[52] = v5;
  v6[49] = a3;
  v6[50] = a4;
  v6[47] = a1;
  v6[48] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F1E1530, 0, 0);
}

uint64_t sub_18F1E1530()
{
  result = sub_18F11D920(*(v0 + 400));
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_11:

    v13 = *(v0 + 376);
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X1, X16 }
  }

  v4 = 0;
  v5 = *(v0 + 392);
  v6 = result + 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_18F0FD724(v6, v0 + 96);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v7);
    v9 = (*(v8 + 16))(v7, v8);
    if (v10)
    {
      break;
    }

LABEL_10:
    ++v4;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
    v6 += 40;
    if (v3 == v4)
    {
      goto LABEL_11;
    }
  }

  if (v9 != *(v0 + 384) || v10 != v5)
  {
    v12 = sub_18F522D5C();

    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:

  sub_18F0FD0B4((v0 + 96), v0 + 56);
  sub_18F0FD0B4((v0 + 56), v0 + 16);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v16);
  (*(v17 + 72))(v16, v17);
  if (!*(v0 + 240))
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
LABEL_23:
    v56 = *(v0 + 400);
    sub_18F0EF148(v0 + 176, &unk_1EACD4550);
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    *(v0 + 440) = v35;
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v35);
    *(v0 + 320) = v56;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
    v45 = OUTLINED_FUNCTION_6_23(boxed_opaque_existential_1, v38, v39, v40, v41, v42, v43, v44, v53, v54, v56);
    (*(v46 + 16))(v45);
    *(v0 + 448) = *(v36 + 8);
    *(v0 + 456) = swift_getAssociatedTypeWitness();
    v47 = sub_18F52254C();
    *(v0 + 464) = v47;
    OUTLINED_FUNCTION_51(v47);
    *(v0 + 472) = v48;
    *(v0 + 480) = OUTLINED_FUNCTION_34_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 488) = v49;
    *v49 = v50;
    v49[1] = sub_18F1E1B94;
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X4, X16 }
  }

  if (!*(v0 + 200))
  {
    goto LABEL_23;
  }

  v55 = *(v0 + 400);
  sub_18F0FD0B4((v0 + 176), v0 + 136);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
  *(v0 + 360) = v55;
  v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  v26 = OUTLINED_FUNCTION_6_23(v18, v19, v20, v21, v22, v23, v24, v25, v53, v54, v55);
  (*(v27 + 16))(v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 424) = v28;
  *v28 = v29;
  v28[1] = sub_18F1E1A18;
  OUTLINED_FUNCTION_18_3();

  return sub_18F1E1ED4(v30, v31, v32, v33);
}

uint64_t sub_18F1E1A18()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 432) = v0;

  if (v0)
  {
    v6 = sub_18F1E1DE8;
  }

  else
  {
    sub_18F0EF148(v3 + 336, &qword_1EACCFCF8);
    v6 = sub_18F1E1B34;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F1E1B34()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F1E1B94()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 496) = v0;

  if (v0)
  {
    v6 = sub_18F1E1E64;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 296);
    v6 = sub_18F1E1CA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F1E1CA0()
{
  v1 = v0[60];
  v2 = v0[57];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[47];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[59] + 8))(v1, v0[58]);

    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    v0[35] = v2;
    v0[36] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
    (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, v1, v2);

    sub_18F11E26C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  OUTLINED_FUNCTION_6();

  return v6();
}

uint64_t sub_18F1E1DE8()
{
  OUTLINED_FUNCTION_69();
  sub_18F0EF148(v0 + 336, &qword_1EACCFCF8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1E1E64()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1E1ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v5[18] = v7;
  v5[19] = OUTLINED_FUNCTION_34_0();
  v8 = swift_getAssociatedTypeWitness();
  v5[20] = v8;
  v9 = sub_18F52254C();
  v5[21] = v9;
  OUTLINED_FUNCTION_51(v9);
  v5[22] = v10;
  v5[23] = OUTLINED_FUNCTION_34_0();
  v5[24] = *(v8 - 8);
  v5[25] = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F1E2070, 0, 0);
}

uint64_t sub_18F1E2070()
{
  sub_18F1E25D0(*(v0 + 104), v0 + 56);
  if (*(v0 + 80))
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    sub_18F11E26C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  else
  {
    sub_18F0EF148(v0 + 56, &qword_1EACCFCF8);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 160);
  if (v1)
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 184);
    v6 = *(v0 + 120);
    v7 = *(v0 + 112);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, *(v0 + 160));
    (*(v4 + 32))(v3, v5, v2);
    v8 = (*(v6 + 64))(v7, v6);
    *(v0 + 208) = v9;
    v20 = (v8 + *v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 216) = v10;
    *v10 = v11;
    v10[1] = sub_18F1E2320;
    v12 = *(v0 + 200);
    v13 = *(v0 + 152);

    return v20(v13, v12);
  }

  else
  {
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);
    v18 = *(v0 + 96);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, *(v0 + 160));
    (*(v16 + 8))(v15, v17);
    *(v18 + 32) = 0;
    *v18 = 0u;
    *(v18 + 16) = 0u;

    OUTLINED_FUNCTION_6();

    return v19();
  }
}

uint64_t sub_18F1E2320()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 224) = v0;

  if (v0)
  {
    v5 = sub_18F1E2538;
  }

  else
  {
    v5 = sub_18F1E2440;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F1E2440()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  swift_getAssociatedConformanceWitness();
  sub_18F11E26C();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_18F1E2538()
{
  (*(v0[24] + 8))(v0[25], v0[20]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1E25D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntentTimer.label.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t IntentTimer.identifier.getter()
{
  v1 = *(v0 + 16);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

void __swiftcall IntentTimer.init(label:identifier:duration:remainingTime:state:type:)(AppIntents::IntentTimer *__return_ptr retstr, Swift::String label, Swift::String identifier, Swift::Double duration, Swift::Double remainingTime, AppIntents::IntentTimer::IntentTimerState state, AppIntents::IntentTimer::IntentTimerType type)
{
  v7 = *state;
  v8 = *type;
  retstr->label = label;
  retstr->identifier = identifier;
  retstr->duration = duration;
  retstr->remainingTime = remainingTime;
  retstr->state = v7;
  retstr->type = v8;
}

uint64_t IntentTimer.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for DisplayRepresentation();
  v18 = v17[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  v22 = v17[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  *(a1 + v17[7]) = xmmword_18F540410;
  *(a1 + v17[8]) = 0;
  *(a1 + v17[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  sub_18F0FF628(v7, a1 + v18, &qword_1EACCF7A8);
  return sub_18F0FF628(v4, a1 + v22, &qword_1EACD0270);
}

id static IntentTimer.valueType.getter()
{
  v0 = [objc_opt_self() timerValueType];

  return v0;
}

id IntentTimer.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = *(v1 + 32);
  v8 = *(v1 + 48);
  v4 = sub_18F0F21A8(0, &qword_1EACD1A48);
  sub_18F1E2BB4(v7, v6);
  result = sub_18F1E2AC8(v1);
  a1[3] = v4;
  *a1 = result;
  return result;
}

id sub_18F1E2AC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACD1AA8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F39B210();
  v7 = sub_18F5218AC();
  v8 = [v5 initWithLabel:v6 duration:v7 remainingTime:v3 identifier:v4 state:v1 type:v2];

  return v8;
}

unint64_t sub_18F1E2BF0()
{
  result = qword_1EACD1A50;
  if (!qword_1EACD1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A50);
  }

  return result;
}

unint64_t sub_18F1E2C48()
{
  result = qword_1EACD1A58;
  if (!qword_1EACD1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A58);
  }

  return result;
}

unint64_t sub_18F1E2C9C(uint64_t a1)
{
  result = sub_18F1E2CC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1E2CC4()
{
  result = qword_1EACD1A60;
  if (!qword_1EACD1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A60);
  }

  return result;
}

unint64_t sub_18F1E2D18(uint64_t a1)
{
  result = sub_18F1E2D40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1E2D40()
{
  result = qword_1EACD1A68;
  if (!qword_1EACD1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A68);
  }

  return result;
}

unint64_t sub_18F1E2D98()
{
  result = qword_1EACD1A70;
  if (!qword_1EACD1A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD1A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A70);
  }

  return result;
}

unint64_t sub_18F1E2DFC()
{
  result = qword_1EACD1A80;
  if (!qword_1EACD1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A80);
  }

  return result;
}

unint64_t sub_18F1E2E5C()
{
  result = qword_1EACD1A88;
  if (!qword_1EACD1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A88);
  }

  return result;
}

uint64_t sub_18F1E2EB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1935893875 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F1E2F38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1AC8);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1E3DB8();
  sub_18F522FEC();
  sub_18F522C5C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_18F1E3060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1701869940 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F522D5C();

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

uint64_t sub_18F1E3250(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x6E696E69616D6572;
      break;
    case 4:
      result = 0x6574617473;
      break;
    case 5:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F1E3300(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A90);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1E3B1C();
  sub_18F522FEC();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_0_32();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_0_32();
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    v13 = 2;
    sub_18F1E3B70();
    OUTLINED_FUNCTION_1_26();
    v14 = *(v3 + 48);
    v15 = *(v3 + 56);
    v13 = 3;
    OUTLINED_FUNCTION_1_26();
    LOBYTE(v14) = 4;
    OUTLINED_FUNCTION_0_32();
    LOBYTE(v14) = 5;
    OUTLINED_FUNCTION_0_32();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F1E34C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1E2EB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F1E34F4(uint64_t a1)
{
  v2 = sub_18F1E3DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1E3530(uint64_t a1)
{
  v2 = sub_18F1E3DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F1E3590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1E3060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F1E35B8(uint64_t a1)
{
  v2 = sub_18F1E3B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1E35F4(uint64_t a1)
{
  v2 = sub_18F1E3B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F1E3648@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = 0x676E696E6E7572;
  if (*(v1 + 48))
  {
    v6 = 0x646573756170;
  }

  v7 = 0xE700000000000000;
  if (*(v1 + 48))
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x54746C7561666564;
  if (*(v1 + 49))
  {
    v8 = 0x7065656C73;
  }

  v9 = 0xEB00000000657079;
  if (*(v1 + 49))
  {
    v9 = 0xE500000000000000;
  }

  v10 = fabs(*(v1 + 40));
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = fabs(v5);
  *(a1 + 40) = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t dispatch thunk of TimerRepresentableEntity.timerRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_18F1E38B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_18F1E38F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_18F1E3968(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F1E3A4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_18F1E3AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F1E3B1C()
{
  result = qword_1EACD1A98;
  if (!qword_1EACD1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1A98);
  }

  return result;
}

unint64_t sub_18F1E3B70()
{
  result = qword_1EACD1AA0;
  if (!qword_1EACD1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTimer.TimerNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F1E3CB4()
{
  result = qword_1EACD1AB0;
  if (!qword_1EACD1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AB0);
  }

  return result;
}

unint64_t sub_18F1E3D0C()
{
  result = qword_1EACD1AB8;
  if (!qword_1EACD1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AB8);
  }

  return result;
}

unint64_t sub_18F1E3D64()
{
  result = qword_1EACD1AC0;
  if (!qword_1EACD1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AC0);
  }

  return result;
}

unint64_t sub_18F1E3DB8()
{
  result = qword_1EACD1AD0;
  if (!qword_1EACD1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentTimer.Duration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1E3EBC()
{
  result = qword_1EACD1AD8;
  if (!qword_1EACD1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AD8);
  }

  return result;
}

unint64_t sub_18F1E3F14()
{
  result = qword_1EACD1AE0;
  if (!qword_1EACD1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AE0);
  }

  return result;
}

unint64_t sub_18F1E3F6C()
{
  result = qword_1EACD1AE8;
  if (!qword_1EACD1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1AE8);
  }

  return result;
}

uint64_t sub_18F1E3FD8@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
  if (result)
  {
    OUTLINED_FUNCTION_104();
    v4 = swift_getAssociatedTypeWitness();
    if (dynamic_cast_existential_1_conditional(v4))
    {
      sub_18F521DBC();
      OUTLINED_FUNCTION_27_16();
      type metadata accessor for TransientAppEntityConvertibleArrayResolver();
      OUTLINED_FUNCTION_27_16();
      type metadata accessor for IntentFileToSystemIntentValueArrayResolver();
      OUTLINED_FUNCTION_10_3();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_18_14();
      swift_getWitnessTable();
      *(a1 + 24) = OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_0_33();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_46_6(WitnessTable);
      return sub_18F1E98AC();
    }

    else
    {
      OUTLINED_FUNCTION_27_16();
      type metadata accessor for TransientAppEntityConvertibleSingleItemResolver();
      OUTLINED_FUNCTION_27_16();
      type metadata accessor for IntentFileToSystemIntentValueResolver();
      OUTLINED_FUNCTION_24_15();
      OUTLINED_FUNCTION_23_16();
      *(a1 + 24) = OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_0_33();
      v6 = swift_getWitnessTable();
      OUTLINED_FUNCTION_46_6(v6);
      return sub_18F1E96BC();
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t IntentStandardRepresentation.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v50 - v6;
  v65 = sub_18F52153C();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v61 = v10 - v9;
  v11 = a1[2];
  v12 = a1[4];
  v13 = sub_18F52122C();
  OUTLINED_FUNCTION_0();
  v53 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v59 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v50 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v66 = v50 - v21;
  v22 = v2[1];
  v57 = *v2;
  v23 = v57;
  v24 = v2[3];
  v62 = v2[2];
  v63 = v24;
  v64 = v22;
  v25 = a1[3];
  v26 = a1[5];
  v27 = OUTLINED_FUNCTION_165();
  v50[1] = v26;
  v51 = v25;
  sub_18F1E45C0(v27, v28);
  v54 = v7;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v65);
  OUTLINED_FUNCTION_22();
  sub_18F5214EC();
  v32 = swift_allocObject();
  *&v33 = v11;
  *(&v33 + 1) = v25;
  v34 = v12;
  *&v35 = v12;
  *(&v35 + 1) = v26;
  v55 = v35;
  v56 = v33;
  *(v32 + 16) = v33;
  *(v32 + 32) = v35;
  *(v32 + 48) = v23;
  v36 = v63;
  v37 = v62;
  *(v32 + 56) = v64;
  *(v32 + 64) = v37;
  *(v32 + 72) = v36;

  sub_18F0F693C(v37);
  v50[0] = v34;
  sub_18F52120C();
  OUTLINED_FUNCTION_17_16();
  WitnessTable = swift_getWitnessTable();
  v38 = v53;
  v52 = *(v53 + 16);
  v52(v66, v20, v13);
  v39 = *(v38 + 8);
  v39(v20, v13);
  sub_18F1E45C0(v11, v51);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v65);
  OUTLINED_FUNCTION_56();
  sub_18F5214EC();
  v43 = swift_allocObject();
  v44 = v55;
  *(v43 + 16) = v56;
  *(v43 + 32) = v44;
  *(v43 + 48) = v57;
  v45 = v63;
  v46 = v62;
  *(v43 + 56) = v64;
  *(v43 + 64) = v46;
  *(v43 + 72) = v45;

  sub_18F0F693C(v46);
  v47 = v59;
  sub_18F52121C();
  v52(v20, v47, v13);
  v39(v47, v13);
  v48 = v66;
  sub_18F1E696C(v66, v20, v11, v13, v13);
  v39(v20, v13);
  return (v39)(v48, v13);
}

uint64_t sub_18F1E45C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F1E6C34(a1, a2);
  v3 = [v2 contentType];

  if (!v3)
  {
    return 0x692E63696C627570;
  }

  v4 = [v3 contentType];

  v5 = sub_18F5218DC();
  return v5;
}

uint64_t sub_18F1E4664(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a8;
  v8[37] = v17;
  v8[34] = a6;
  v8[35] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = *(a7 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[44] = v12;
  v15 = (a2 + *a2);
  v13 = swift_task_alloc();
  v8[45] = v13;
  *v13 = v8;
  v13[1] = sub_18F1E4840;

  return v15(v12, a1);
}

uint64_t sub_18F1E4840()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1E4938()
{
  v1 = *(*(v0 + 328) + 16);
  (v1)(*(v0 + 344), *(v0 + 352), *(v0 + 280));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1D90);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 280);
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_104();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 376) = AssociatedTypeWitness;
    OUTLINED_FUNCTION_0();
    *(v0 + 384) = v5;
    *(v0 + 392) = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_165();
    v7(v6);
    sub_18F1E45C0(v2, v3);
    v8 = sub_18F52153C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    sub_18F5214EC();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
    v15 = swift_task_alloc();
    *(v0 + 400) = v15;
    OUTLINED_FUNCTION_37_3();
    v16 = *(swift_getAssociatedConformanceWitness() + 16);
    *v15 = v0;
    v15[1] = sub_18F1E4E00;
    v17 = *(v0 + 320);
    v18 = AssociatedTypeWitness;
LABEL_5:

    return MEMORY[0x1EEDBF598](v17, v18, v16);
  }

  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_18F0FA038(v0 + 56, &qword_1EACD1DA8);
  v19 = OUTLINED_FUNCTION_56();
  v1(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1DA0);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    sub_18F0FD0B4((v0 + 136), v0 + 96);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
    sub_18F1E45C0(v21, v20);
    v22 = sub_18F52153C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    sub_18F5214EC();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
    v29 = swift_task_alloc();
    *(v0 + 416) = v29;
    *v29 = v0;
    v29[1] = sub_18F1E5004;
    OUTLINED_FUNCTION_68_0();
    goto LABEL_5;
  }

  v30 = *(v0 + 352);
  v31 = *(v0 + 328);
  v32 = *(v0 + 296);
  v33 = *(v0 + 272);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  v37 = *(v0 + 280);
  sub_18F0FA038(v0 + 136, qword_1EACD1DB0);
  *(v0 + 176) = v33;
  *(v0 + 184) = v37;
  *(v0 + 200) = v32;
  type metadata accessor for IntentStandardRepresentation.Errors();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28();
  *v34 = 0x8000000000000000;
  swift_willThrow();
  (*(v31 + 8))(v30, v37);

  OUTLINED_FUNCTION_71();

  return v35();
}

uint64_t sub_18F1E4E00()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v5;
  v2[29] = v0;
  OUTLINED_FUNCTION_141();
  *v6 = *v1;
  *(v7 + 408) = v0;

  OUTLINED_FUNCTION_141();
  sub_18F0FA038(*(v8 + 320), &qword_1EACD0358);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1E4F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = OUTLINED_FUNCTION_10_16();
  v12(v11);
  v13 = OUTLINED_FUNCTION_6_24();
  v14(v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_18F1E5004()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[30] = v1;
  v2[31] = v4;
  v2[32] = v5;
  v2[33] = v0;
  OUTLINED_FUNCTION_141();
  *v6 = *v1;
  *(v7 + 424) = v0;

  OUTLINED_FUNCTION_141();
  sub_18F0FA038(*(v8 + 304), &qword_1EACD0358);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1E513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = OUTLINED_FUNCTION_10_16();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 96);
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F1E51E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F1E5270()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_10_16();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F1E5310()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_10_16();
  v2(v1);
  v3 = OUTLINED_FUNCTION_6_24();
  v4(v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18F1E53D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18F1E54B8;

  return sub_18F1E4664(a1, v7, v8, v10, v9, v4, v5, v6);
}

uint64_t sub_18F1E54B8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_85();
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_18F1E55B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[50] = v13;
  v8[51] = v14;
  v8[48] = a8;
  v8[49] = v12;
  v8[46] = a6;
  v8[47] = a7;
  v8[44] = a2;
  v8[45] = a3;
  v8[43] = a1;
  v9 = sub_18F52254C();
  v8[52] = v9;
  v8[53] = *(v9 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = *(v12 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1E574C, 0, 0);
}

uint64_t sub_18F1E574C()
{
  if (!v0[46])
  {
    v0[27] = v0[48];
    v18 = v0[50];
    v17 = v0[51];
    v19 = v0[49];
    v20 = 0x8000000000000008;
    v21 = 30;
    v22 = 29;
    v23 = 28;
    goto LABEL_5;
  }

  v1 = sub_18F1E6928();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = v0[46];
    v6 = v0[44];
    v7 = v0[45];
    v0[62] = v2;
    sub_18F0F693C(v5);
    sub_18F16AAE0(v6, v7);
    OUTLINED_FUNCTION_55_5();
    v8 = sub_18F52153C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    sub_18F5214EC();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
    v0[15] = v3;
    v0[16] = v4;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[63] = v15;
    *v15 = v16;
    v15[1] = sub_18F1E5AA4;
    goto LABEL_10;
  }

  v27 = dynamic_cast_existential_1_conditional(v0[49]);
  if (!v27)
  {
    v18 = v0[50];
    v17 = v0[51];
    v19 = v0[49];
    v0[31] = v0[48];
    v21 = 34;
    v22 = 33;
    v23 = 32;
    v20 = v19;
LABEL_5:
    v0[v23] = v19;
    v0[v22] = v18;
    v0[v21] = v17;
    type metadata accessor for IntentStandardRepresentation.Errors();
    OUTLINED_FUNCTION_2_32();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_29_13();
    OUTLINED_FUNCTION_28();
    *v24 = v20;
    swift_willThrow();
    OUTLINED_FUNCTION_12_19();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_20();

    __asm { BRAA            X1, X16 }
  }

  v29 = v27;
  v43 = v28;
  v30 = v0[44];
  v31 = v0[45];
  sub_18F0F693C(v0[46]);
  sub_18F16AAE0(v30, v31);
  OUTLINED_FUNCTION_55_5();
  v32 = sub_18F52153C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  sub_18F5214EC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
  v0[5] = v29;
  v0[6] = v43;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[67] = v39;
  *v39 = v40;
  v39[1] = sub_18F1E6064;
LABEL_10:
  OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEDBF5A0]();
}

uint64_t sub_18F1E5AA4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F1E5B9C()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v3);
  v5 = *(v2 + 40);
  OUTLINED_FUNCTION_104();
  *(v0 + 160) = swift_getAssociatedTypeWitness();
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v5(v3, v4);
  if (v1)
  {
    sub_18F0F689C(*(v0 + 368));
    __swift_deallocate_boxed_opaque_existential_1(v0 + 136);
  }

  else
  {
    sub_18F0FD6C4(v0 + 136, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1D90);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 392);
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
      v10 = OUTLINED_FUNCTION_45_6();
      v11(v10);
      OUTLINED_FUNCTION_13_19();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 520) = v12;
      *v12 = v13;
      v12[1] = sub_18F1E5EAC;
      OUTLINED_FUNCTION_54_3();

      __asm { BRAA            X2, X16 }
    }

    v16 = *(v0 + 440);
    v17 = *(v0 + 416);
    v18 = *(v0 + 424);
    v19 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 368);
    v31 = *(v0 + 392);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    (*(v18 + 8))(v16, v17);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
    DynamicType = swift_getDynamicType();
    *(v0 + 312) = v20;
    v27 = DynamicType | 0x4000000000000000;
    *(v0 + 320) = v31;
    *(v0 + 336) = v19;
    type metadata accessor for IntentStandardRepresentation.Errors();
    OUTLINED_FUNCTION_2_32();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_29_13();
    OUTLINED_FUNCTION_28();
    *v28 = v27;
    swift_willThrow();
    sub_18F0F689C(v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_12_19();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F1E5EAC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1E5FA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  sub_18F0F689C(*(v0 + 368));
  v1 = OUTLINED_FUNCTION_6_24();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_58_3();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_59_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F1E6064()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F1E615C()
{
  sub_18F0FD6C4(v0 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1DA0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 392);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
    v5 = OUTLINED_FUNCTION_45_6();
    v6(v5);
    OUTLINED_FUNCTION_13_19();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 552) = v7;
    *v7 = v8;
    v7[1] = sub_18F1E63D0;
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X2, X16 }
  }

  v11 = *(v0 + 408);
  v12 = *(v0 + 384);
  v25 = *(v0 + 392);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_165();
  v18(v17);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  DynamicType = swift_getDynamicType();
  *(v0 + 280) = v12;
  v20 = DynamicType | 0x4000000000000000;
  *(v0 + 288) = v25;
  *(v0 + 304) = v11;
  type metadata accessor for IntentStandardRepresentation.Errors();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28();
  *v21 = v20;
  swift_willThrow();
  v22 = OUTLINED_FUNCTION_56();
  sub_18F0F689C(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F1E63D0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1E64C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  sub_18F0F689C(*(v0 + 368));
  v1 = OUTLINED_FUNCTION_6_24();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_58_3();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_59_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F1E657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 368));
  __swift_deallocate_boxed_opaque_existential_1(v10 + 16);
  OUTLINED_FUNCTION_12_19();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F1E661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 368));
  v11 = OUTLINED_FUNCTION_6_24();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
  OUTLINED_FUNCTION_12_19();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F1E66D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 368));
  __swift_deallocate_boxed_opaque_existential_1(v10 + 96);
  OUTLINED_FUNCTION_12_19();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F1E6774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  sub_18F0F689C(*(v10 + 368));
  v11 = OUTLINED_FUNCTION_6_24();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 96);
  OUTLINED_FUNCTION_12_19();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F1E6838()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20();

  return sub_18F1E55B4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F1E6928()
{
  result = dynamic_cast_existential_1_conditional(v0);
  if (result)
  {
    return sub_18F1E7944();
  }

  return result;
}

uint64_t sub_18F1E696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v15 - v11;
  v13 = *(v10 + 48);
  (*(*(a4 - 8) + 16))(&v15 - v11, a1, a4);
  (*(*(a5 - 8) + 16))(&v12[v13], a2, a5);
  swift_getAssociatedConformanceWitness();
  return sub_18F52125C();
}

unint64_t sub_18F1E6AC4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_18F52279C();
    v4 = sub_18F52307C();

    v6 = v4;
    v2 = "lt from an entity";
    v3 = 0xD000000000000029;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    v6 = 0;
    sub_18F52279C();
    MEMORY[0x193ADB000](0xD00000000000001ALL, 0x800000018F526D20);
    v1 = sub_18F52307C();
    MEMORY[0x193ADB000](v1);

    v2 = "An illegal currency type '";
    v3 = 0xD000000000000031;
LABEL_5:
    MEMORY[0x193ADB000](v3, v2 | 0x8000000000000000);
    return v6;
  }

  if (a1 == 0x8000000000000000)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t static SystemIntentValueConvertibleEntity.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_18F52153C();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  sub_18F1E6E10();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  sub_18F5214EC();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  return MEMORY[0x193ADA7E0](v10, &unk_18F5466B0, v14, &unk_18F5466C0, v15, a1, *(a2 + 16));
}

uint64_t sub_18F1E6E10()
{
  v0 = static SystemIntentValueConvertibleEntity.valueType.getter();
  v1 = [v0 contentType];

  if (!v1)
  {
    return 0x692E63696C627570;
  }

  v2 = [v1 contentType];

  v3 = sub_18F5218DC();
  return v3;
}

uint64_t sub_18F1E6EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18F1E6F48, 0, 0);
}

uint64_t sub_18F1E6F48()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_66();
  v4 = SystemIntentValueConvertibleEntity.asValue.getter(v2, v3);
  *(v0 + 16) = 0;
  v5 = [v1 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v0 + 16];

  v6 = *(v0 + 16);
  if (v5)
  {
    sub_18F520D4C();

    v7 = OUTLINED_FUNCTION_66();

    return v8(v7);
  }

  else
  {
    sub_18F520A8C();

    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_18F1E70CC()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F1EA230;
  v4 = OUTLINED_FUNCTION_66();

  return sub_18F1E6EB4(v4, v5, v2);
}

id SystemIntentValueConvertibleEntity.asValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DisplayRepresentation();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_104();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v30 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v21 = *(*(a2 + 8) + 8);

  AppManager.cache<A>(entity:)(v2, a1, v21);

  v22 = sub_18F0F21A8(0, &qword_1ED6FE640);
  (*(v17 + 16))(v20, v3, a1);
  v23 = sub_18F141AA0(v20, v22, a1, v21);
  v31[3] = v22;
  v31[0] = v23;
  v24 = static SystemIntentValueConvertibleEntity.valueType.getter();
  (*(a2 + 40))(a1, a2);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_0();
  v25(AssociatedTypeWitness);
  (*(v30 + 8))(v16, AssociatedTypeWitness);
  sub_18F13FE10();
  v27 = v26;
  sub_18F14372C(v10);
  v28 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F141064(v31, v24, v27);
}

uint64_t sub_18F1E7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_18F52254C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1E752C, 0, 0);
}

uint64_t sub_18F1E752C()
{
  OUTLINED_FUNCTION_21();
  sub_18F0F21A8(0, &qword_1EACD0540);
  sub_18F0F21A8(0, &unk_1ED6FE390);
  v1 = sub_18F5222FC();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[9];
  v3 = v0[5];
  v4 = OUTLINED_FUNCTION_66();
  static SystemIntentValueConvertibleEntity.from(_:)(v4, v5, v6);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
LABEL_4:
    sub_18F1E9FAC();
    OUTLINED_FUNCTION_28();
    swift_willThrow();

    OUTLINED_FUNCTION_71();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_31_0();
  (*(v9 + 32))();

  OUTLINED_FUNCTION_6();
LABEL_5:

  return v7();
}

uint64_t sub_18F1E7698()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_37_3();

  return sub_18F1E7460(v6, v7, v8, v3, v2);
}

uint64_t static SystemIntentValueConvertibleEntity.from(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 value];
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0F21A8(0, &qword_1ED6FE640);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = v18;
  v8 = [a1 valueType];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_5:
    v15 = a3;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v15, v14, 1, a2);
  }

  v10 = [v9 bundleIdentifier];
  v11 = sub_18F5218DC();
  v13 = v12;

  sub_18F1EA280(v11, v13, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8);
  v14 = swift_dynamicCast() ^ 1;
  v15 = a3;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, a2);
}

id static SystemIntentValueConvertibleEntity.valueType.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_18F1E79B8(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F1E7944()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

id sub_18F1E79B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F5210CC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_18F52111C();
  (*(*(*(a2 + 8) + 16) + 8))(a1);
  sub_18F5210BC();
  v12 = sub_18F19E26C(v10, v11);

  (*(v6 + 8))(v10, v4);
  if (!v12)
  {
    return [objc_allocWithZone(MEMORY[0x1E69AC8D0]) init];
  }

  return v12;
}

uint64_t sub_18F1E7AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_68_0();

  return v3();
}

id sub_18F1E7B40(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_37_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v38 - v14;
  v16 = OUTLINED_FUNCTION_66();
  v18 = sub_18F1E79B8(v16, v17);
  objc_opt_self();
  OUTLINED_FUNCTION_29_13();
  v19 = swift_dynamicCastObjCClass();

  if (v19)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v39 = sub_18F0F21A8(0, qword_1EACCF090);
    v38[0] = v20;
    v21 = OUTLINED_FUNCTION_66();
    v23 = sub_18F1E79B8(v21, v22);
    v24 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    return sub_18F166E58(v38, v23);
  }

  else
  {
    v26 = sub_18F0F21A8(0, &qword_1ED6FE640);
    v27 = OUTLINED_FUNCTION_66();
    v28(v27);
    (*(v9 + 16))(v13, v15, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = sub_18F141AA0(v13, v26, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8));
    (*(v9 + 8))(v15, AssociatedTypeWitness);
    v39 = v26;
    v38[0] = v30;
    v31 = OUTLINED_FUNCTION_66();
    v33 = sub_18F1E79B8(v31, v32);
    OUTLINED_FUNCTION_50_0();
    v34(a1);
    sub_18F13FE10();
    v36 = v35;
    sub_18F14372C(v6);
    v37 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    return sub_18F141064(v38, v33, v36);
  }
}

id sub_18F1E7E20(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F1E79B8(a1, a2);
  v3 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v2 capabilities:3];

  return v3;
}

id sub_18F1E7E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v5 = sub_18F521DBC();
  v6 = sub_18F0F21A8(0, &unk_1ED6FE390);
  v7 = OUTLINED_FUNCTION_2_3();
  v9 = sub_18F10C138(sub_18F1E9F8C, v13, v5, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430);
  v14[0] = v9;
  v10 = sub_18F1E7E20(a2, a3);
  v11 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v14, v10);
}

id sub_18F1E7F70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = sub_18F0F21A8(0, &qword_1ED6FE640);
  (*(a2 + 32))(a1, a2);
  (*(v8 + 16))(v11, v13, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_18F141AA0(v11, v14, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8));
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  v25[3] = v14;
  v25[0] = v16;
  v17 = sub_18F1E79B8(a1, a2);
  v18 = v23;
  (*(*(*(*(a2 + 8) + 8) + 8) + 16))(a1);
  sub_18F13FE10();
  v20 = v19;
  sub_18F14372C(v18);
  v21 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  result = sub_18F141064(v25, v17, v20);
  *v24 = result;
  return result;
}

uint64_t sub_18F1E8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v4[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1E8248, 0, 0);
}

uint64_t sub_18F1E8248()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[9];
  v2 = v0[7];
  sub_18F0FD6C4(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1D90);
  v3 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v3 ^ 1u, 1, v1);
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F1E82E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  *v9 = v4;
  v9[1] = sub_18F0FC870;

  return sub_18F1E8224(a1, a2, a3, v10);
}

uint64_t sub_18F1E83CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1E83F0, 0, 0);
}

uint64_t sub_18F1E83F0()
{
  OUTLINED_FUNCTION_29();
  *(v0 + 16) = *(v0 + 24);
  *(swift_task_alloc() + 16) = *(v0 + 32);
  v1 = OUTLINED_FUNCTION_165();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  sub_18F1E9F48(&qword_1EACD1D88, qword_1EACD1AF8);
  v2 = sub_18F521B3C();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_18F1E8500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18F0FD6C4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1D90);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_18F1E8584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F1EA228;

  return sub_18F1E83CC(v7, a3, v9, v10);
}

uint64_t sub_18F1E8634(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_18F1E86F8;

  return sub_18F1E8830(a1, (v4 + 16), a4);
}

uint64_t sub_18F1E86F8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F1E8830(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  swift_getAssociatedTypeWitness();
  v3[4] = swift_getAssociatedConformanceWitness();
  v3[5] = swift_getAssociatedTypeWitness();
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = swift_checkMetadataState();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[11] = v6;
  v3[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18F1E89E4, 0, 0);
}

uint64_t sub_18F1E89E4()
{
  OUTLINED_FUNCTION_29();
  v1 = [*(v0 + 96) typeIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 96);
    sub_18F5218DC();

    v4 = [v3 data];
    sub_18F520D4C();

    v5 = sub_18F52153C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
    sub_18F5214EC();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 104) = v12;
    *v12 = v13;
    v12[1] = sub_18F1E8BB4;
    OUTLINED_FUNCTION_68_0();

    return MEMORY[0x1EEDBF5A0]();
  }

  else
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

    OUTLINED_FUNCTION_6();

    return v18();
  }
}

uint64_t sub_18F1E8BB4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1E8CAC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[14];
  (*(v0[4] + 40))(v0[9]);
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  if (v1)
  {

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v5 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v0[2], v5 ^ 1u, 1, v0[3]);

    OUTLINED_FUNCTION_6();
  }

  return v4();
}

uint64_t sub_18F1E8DD4()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1E8E58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  *v9 = v4;
  v9[1] = sub_18F0FC874;

  return sub_18F1E8634(a1, a2, a3, v10);
}

uint64_t sub_18F1E8F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v6 = sub_18F52254C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = *(a3 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1E9038, 0, 0);
}

uint64_t sub_18F1E9038()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[5];
  v2 = sub_18F52168C();
  v0[2] = v2;
  v3 = *(v1 + 16);
  v0[14] = v3;
  v0[15] = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_44_5(v0[5]);
    v5 = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_14_19(v6);

    return sub_18F1E8830(v8, v9, v10);
  }

  else
  {
    v0[4] = v2;
    sub_18F521DBC();
    OUTLINED_FUNCTION_2_3();
    if (sub_18F52213C())
    {
    }

    v12 = OUTLINED_FUNCTION_47();

    return v13(v12);
  }
}

uint64_t sub_18F1E9160()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1E9264()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0[10], 1, v1);
  v3 = v0[16];
  if (EnumTagSinglePayload == 1)
  {

    v4 = OUTLINED_FUNCTION_6_24();
    v5(v4);
  }

  else
  {
    v6 = v0[13];
    v7 = v0[11];
    OUTLINED_FUNCTION_68_0();
    v8();
    OUTLINED_FUNCTION_37_3();
    v9();
    sub_18F521DBC();
    sub_18F521D8C();

    (*(v7 + 8))(v6, v1);
  }

  v10 = v0[14];
  v11 = v0[15] + 1;
  v0[15] = v11;
  if (v11 == v10)
  {
    v0[4] = v0[2];
    sub_18F521DBC();
    OUTLINED_FUNCTION_2_3();
    if (sub_18F52213C())
    {
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_59_1();

    return v14(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_44_5(v0[5] + 8 * v11);
    v22 = v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_59_1();

    return sub_18F1E8830(v25, v26, v27);
  }
}

uint64_t sub_18F1E9440()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1E94C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F1E9574;

  return sub_18F1E8F10(v7, a3, v9, v10);
}

uint64_t sub_18F1E9574()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_18F1E9670(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_18F522EFC();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_18F522F4C();
}

uint64_t sub_18F1E96BC()
{
  type metadata accessor for TransientAppEntityConvertibleSingleItemResolver();
  type metadata accessor for IntentFileToSystemIntentValueResolver();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_23_16();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F1EA020);
}

void sub_18F1E97A8(uint64_t a1)
{
  v2 = type metadata accessor for TransientAppEntityConvertibleSingleItemResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v4, WitnessTable, a1, v2, WitnessTable);
  v5 = type metadata accessor for IntentFileToSystemIntentValueResolver();
  v6 = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v7, v6, a1, v5, v6);
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
}

uint64_t sub_18F1E98AC()
{
  sub_18F521DBC();
  type metadata accessor for TransientAppEntityConvertibleArrayResolver();
  type metadata accessor for IntentFileToSystemIntentValueArrayResolver();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_18_14();
  swift_getWitnessTable();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F1EA018);
}

void sub_18F1E99CC()
{
  v0 = sub_18F521DBC();
  v1 = type metadata accessor for TransientAppEntityConvertibleArrayResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v3, WitnessTable, v0, v1, WitnessTable);
  v4 = type metadata accessor for IntentFileToSystemIntentValueArrayResolver();
  v5 = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v6, v5, v0, v4, v5);
  swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
}

unint64_t sub_18F1E9B68()
{
  result = qword_1EACCE9C0[0];
  if (!qword_1EACCE9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCE9C0);
  }

  return result;
}

uint64_t sub_18F1E9BBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1E9C58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1E9CB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1E9D50(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F1E9DBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1E9E50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyq_xIseghHnrzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F1E9F48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_29_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F1E9FAC()
{
  result = qword_1EACD1D98;
  if (!qword_1EACD1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1D98);
  }

  return result;
}

uint64_t sub_18F1EA028(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_18F1EA07C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18F1EA0CC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t *sub_18F1EA0F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemIntentValueConvertibleEntityError(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1EA1D0()
{
  result = qword_1EACD1E38;
  if (!qword_1EACD1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1E38);
  }

  return result;
}

void sub_18F1EA280(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = sub_18F1EA970(a1, a2);
  if (!v6)
  {
LABEL_16:
    OUTLINED_FUNCTION_5_3();
    return;
  }

  v8 = v6;
  v9 = v7;
  sub_18F366F30(v6, &v33);
  if (v34)
  {
    sub_18F0FD0B4(&v33, &v36);
    v10 = *(&v37 + 1);
    __swift_project_boxed_opaque_existential_1Tm(&v36, *(&v37 + 1));
    sub_18F366EE8(v4, v10);
    v18 = *(&v37 + 1);
    v19 = v38;
    __swift_project_boxed_opaque_existential_1Tm(&v36, *(&v37 + 1));
    a3[3] = v18;
    a3[4] = *(v19 + 8);
    __swift_allocate_boxed_opaque_existential_1(a3);
    OUTLINED_FUNCTION_31_0();
    (*(v20 + 16))();
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    return;
  }

  sub_18F0FA038(&v33, &qword_1EACD1E40);
  sub_18F1EAC0C(v3);
  if (!v11)
  {
    if (qword_1ED6FE088 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v22 = sub_18F52165C();
    __swift_project_value_buffer(v22, qword_1ED707760);
    v23 = sub_18F52163C();
    v24 = sub_18F52221C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_9_17();
      *&v36 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = OUTLINED_FUNCTION_1_27();
      *(v25 + 4) = sub_18F11897C(v26, v27, &v36);
      *(v25 + 12) = 2080;
      v28 = sub_18F52307C();
      v30 = sub_18F11897C(v28, v29, &v36);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_18F0E9000, v23, v24, "%s failed. %s is not a TransientAppEntity type", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    goto LABEL_16;
  }

  v12 = sub_18F5227BC();

  if (v12 && (v13 = dynamic_cast_existential_1_conditional(v12)) != 0)
  {
    v15 = v13;
    v16 = *(v14 + 8);
    v17 = *(v16 + 16);
    *(&v37 + 1) = v13;
    v38 = v14;
    __swift_allocate_boxed_opaque_existential_1(&v36);
    v17(v15, v16);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  sub_18F1EAC70(&v36, &v33);
  v21 = v34;
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
    sub_18F366EE8(v4, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  }

  else
  {
    sub_18F0FA038(&v33, &qword_1EACD1E48);
  }

  sub_18F1EAC70(&v36, &v33);
  v31 = v34;
  if (v34)
  {
    v32 = v35;
    __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
    (*(v32 + 128))(v8, v9, v31, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  }

  else
  {
    sub_18F0FA038(&v33, &qword_1EACD1E48);
    OUTLINED_FUNCTION_5_3();
  }

  sub_18F0FA038(&v36, &qword_1EACD1E48);
}

uint64_t sub_18F1EA894@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a2, v7);
  v13[3] = v7;
  v13[4] = *(*(v8 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
  v11 = sub_18F1422A4(v13, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  *a3 = v11;
  return result;
}

uint64_t sub_18F1EA970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v6 = [v3 identifier];
  v7 = [v6 typeIdentifier];

  v8 = sub_18F5218DC();
  v10 = v9;

  v11 = sub_18F2794A0(v8, v10, a1, a2);

  return v11;
}

uint64_t sub_18F1EAC0C(void *a1)
{
  v1 = [a1 prototypeMangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F1EAC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntity.notificationEvent(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = *a1;
  AppEntity.fullyQualifiedIdentifier.getter(a2, a3, v24);
  v5 = v24[0];
  v6 = *(v24[1] + 8);
  static AppValue._identifier.getter(v24[0], v6);
  if (dynamic_cast_existential_1_conditional(v5))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    v7 = static AppValue._identifier.getter(v5, v6);
    v8 = sub_18F164CE8(v7);

    v9 = v8;
    sub_18F1AF344();
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  sub_18F166ED0();
  v12 = v11;
  v13 = [v11 typeIdentifier];
  v14 = sub_18F5218DC();
  v16 = v15;

  LOBYTE(v24[0]) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18F53F800;
  v18 = [v12 instanceIdentifier];
  v19 = sub_18F5218DC();
  v21 = v20;

  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_18F1EAF78(v14, v16, v24, v17, a4);
}

uint64_t sub_18F1EAF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_18F1201BC();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v9;
  *(a5 + 24) = a4;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static AppEntity.notificationEvent(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = static AppValue._identifier.getter(a2, *(a3 + 8));
  v9 = v5;
  sub_18F1EAF78(v6, v7, &v9, 0, a4);
}

uint64_t static AppEntity.notificationEvent(for:identifiers:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = static AppValue._identifier.getter(a3, *(a4 + 8));
  v12 = v11;
  v19 = a2;
  v18[2] = a3;
  v18[3] = a4;
  swift_getAssociatedTypeWitness();
  v13 = sub_18F521DBC();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_18F10C138(sub_18F1EB41C, v18, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);
  LOBYTE(v19) = v9;
  sub_18F1EAF78(v10, v12, &v19, v16, a5);
}

uint64_t sub_18F1EB1C4@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  result = v3(v4, AssociatedConformanceWitness);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_18F1EB284()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t static AppEntity.onObservedChanged()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1EB30C()
{
  sub_18F1201BC();
  if (v1)
  {
    v2 = v0[2];
    static AppValue._identifier.getter(v0[3], *(v0[4] + 8));
    v3 = _s18AppManagerObserverO23ObservationStatusStreamCMa(0);
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_1_28();
    v8 = sub_18F23BB80(v4, v5, v6, v7);
    v2[3] = v3;
    v2[4] = sub_18F1EB490();
    *v2 = v8;
  }

  else
  {
    sub_18F1EB43C();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_2_33(v10, v11);
  }

  v9 = v0[1];

  return v9();
}

unint64_t sub_18F1EB43C()
{
  result = qword_1EACD1E68;
  if (!qword_1EACD1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1E68);
  }

  return result;
}

unint64_t sub_18F1EB490()
{
  result = qword_1EACCEA78;
  if (!qword_1EACCEA78)
  {
    _s18AppManagerObserverO23ObservationStatusStreamCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEA78);
  }

  return result;
}

uint64_t sub_18F1EB4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v2;
}

uint64_t sub_18F1EB54C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v4;
}

uint64_t sub_18F1EB594()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v0[6] = v3;
  v0[7] = v1;
  v0[4] = v4;
  v0[5] = v5;
  v0[2] = v6;
  v0[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v0[8] = swift_task_alloc();
  v0[9] = *(*(v2 + 8) + 24);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1EB68C, 0, 0);
}

uint64_t sub_18F1EB68C()
{
  sub_18F1EBABC(v0[3], v0[4], v0[6], v0[7]);
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v6 = v0[6];
    v7 = v0[2];
    sub_18F521DFC();

    v8 = v7;
    v9 = 0;
    v10 = 1;
    v11 = v6;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = OUTLINED_FUNCTION_4_21();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);

LABEL_11:

    OUTLINED_FUNCTION_71();

    return v17();
  }

  v12 = sub_18F522B1C();
  v0[12] = v12;

  if (!v12)
  {
    v8 = OUTLINED_FUNCTION_4_21();
    goto LABEL_10;
  }

  v13 = v0[8];
  v14 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[13] = v15;
  type metadata accessor for IntentParameterContext();
  *v15 = v0;
  v15[1] = sub_18F1EB864;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F1EB864()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v5 + 112) = v0;

  sub_18F0EF148(v2, &qword_1EACCF7A0);

  if (v0)
  {
    v6 = sub_18F1EBA54;
  }

  else
  {
    v6 = sub_18F1EB9C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F1EB9C0()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(*(v0 + 16), v1 ^ 1u, 1, *(v0 + 48));

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1EBA54()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1EBABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v90 = *(*(*(a4 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v81 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v78 - v9;
  sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v83 = v11;
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v80 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v78 - v15;
  OUTLINED_FUNCTION_11_0();
  v85 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v79 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v78 - v21;
  v86 = *(a4 + 24);
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  OUTLINED_FUNCTION_11_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v78 - v36;
  v91 = a4;
  swift_getAssociatedConformanceWitness();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v93 = a2;
  sub_18F522D0C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v22) == 1)
  {
    (*(v25 + 8))(v28, v23);
  }

  else
  {
    (*(v30 + 32))(v37, v28, v22);
    (*(v30 + 16))(v34, v37, v22);
    v38 = v87;
    sub_18F521C1C();
    if (__swift_getEnumTagSinglePayload(v38, 1, a3) != 1)
    {
      v61 = *(v85 + 32);
      v61(v82, v38, a3);
      sub_18F18C388(a3, a3);
      OUTLINED_FUNCTION_1_29();
      v62 = sub_18F521CDC();
      v64 = OUTLINED_FUNCTION_6_25(v62, v63);
      (v61)(v64);
      v46 = sub_18F129FD4(a3);
      (*(v30 + 8))(v37, v22);
      return v46;
    }

    (*(v30 + 8))(v37, v22);
    (*(v83 + 8))(v38, v84);
  }

  v39 = v91;
  if (qword_1ED6FF6D8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v40 = *(*(v39 + 8) + 8);
  v41 = *(v40 + 8);

  v42 = v41(a3, v40);
  v49 = sub_18F164EC0(v42);
  v86 = 0;
  v87 = a3;

  v89 = v49;
  v50 = [v49 cases];
  sub_18F1ED198();
  v51 = sub_18F521CAC();

  a3 = sub_18F111F70(v51);
  v52 = 0;
  while (1)
  {
    if (a3 == v52)
    {

      v65 = v87;
      v66 = v91;
      goto LABEL_7;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x193ADBE10](v52, v51);
    }

    else
    {
      if (v52 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v53 = *(v51 + 8 * v52 + 32);
    }

    v54 = v53;
    v55 = [v53 identifier];
    v39 = sub_18F5218DC();
    v57 = v56;

    if (v39 == v94 && v57 == v93)
    {
      break;
    }

    v59 = sub_18F522D5C();

    if (v59)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v52++, 1))
    {
      goto LABEL_31;
    }
  }

LABEL_25:
  v68 = v80;
  v67 = v81;

  v65 = v87;
  v69 = v88;
  v70 = sub_18F5227CC();
  MEMORY[0x1EEE9AC00](v70);
  v71 = v91;
  *(&v78 - 4) = v65;
  *(&v78 - 3) = v71;
  *(&v78 - 2) = v52;
  v72 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  sub_18F521BAC();
  (*(v67 + 8))(v69, v72);
  if (__swift_getEnumTagSinglePayload(v68, 1, v65) != 1)
  {
    v73 = *(v85 + 32);
    v73(v79, v68, v65);
    sub_18F18C388(v65, v65);
    OUTLINED_FUNCTION_1_29();
    v74 = sub_18F521CDC();
    v76 = OUTLINED_FUNCTION_6_25(v74, v75);
    (v73)(v76);
    v46 = sub_18F129FD4(v69);
    goto LABEL_28;
  }

  (*(v83 + 8))(v68, v84);
  v66 = v91;
LABEL_7:
  v43 = sub_18F5227CC();
  MEMORY[0x1EEE9AC00](v43);
  *(&v78 - 4) = v65;
  *(&v78 - 3) = v66;
  v44 = v93;
  v45 = v94;
  *(&v78 - 2) = v94;
  *(&v78 - 1) = v44;
  swift_getAssociatedConformanceWitness();
  v46 = sub_18F521BBC();
  if (sub_18F521D7C() != 1)
  {

    v47 = sub_18F5227CC();
    MEMORY[0x1EEE9AC00](v47);
    *(&v78 - 4) = v65;
    *(&v78 - 3) = v66;
    v48 = v93;
    *(&v78 - 2) = v45;
    *(&v78 - 1) = v48;
    v46 = sub_18F521BBC();

    return v46;
  }

LABEL_28:

  return v46;
}

uint64_t sub_18F1EC40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1EC4D0;

  return sub_18F1EB594();
}

uint64_t sub_18F1EC4D0()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1EC5B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1EC610()
{
  result = qword_1EACD1E70;
  if (!qword_1EACD1E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0400);
    sub_18F10F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1E70);
  }

  return result;
}

uint64_t sub_18F1EC694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1EC6B8, 0, 0);
}

uint64_t sub_18F1EC6B8()
{
  *(v0 + 16) = *(v0 + 24);
  *(swift_task_alloc() + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  sub_18F521DBC();
  sub_18F1ECAAC();
  swift_getWitnessTable();
  v1 = sub_18F521BEC();

  *(v0 + 16) = v1;
  swift_getWitnessTable();
  if (sub_18F52213C())
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F1EC814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18F1EBABC(*a1, a1[1], a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_18F1EC860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v7 = v4;
  v7[1] = sub_18F1EC900;

  return sub_18F1EC694(v6, v8, v9, v10);
}

uint64_t sub_18F1EC900(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_18F1ECA08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1ECAAC()
{
  result = qword_1EACD0640;
  if (!qword_1EACD0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0640);
  }

  return result;
}

BOOL sub_18F1ECB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v14 = a2;
  v16 = *(*(a4 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v13 - v6;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = &v13 - v10;
  sub_18F5227CC();
  sub_18F52214C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (__swift_getEnumTagSinglePayload(v11, 1, v8) == 1)
  {
    (*(v9 + 8))(v11, v15);
  }

  else if (swift_dynamicCast())
  {
    return v18 == v14;
  }

  return 0;
}

uint64_t sub_18F1ECD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F522D1C();
  sub_18F12A000();
  v5 = sub_18F52259C();

  v6 = sub_18F1EB54C(v5);
  v8 = v7;

  if (v8)
  {
    if (v6 == a2 && v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_18F522D5C();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_18F1ECE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v28 = a2;
  v29 = a3;
  v7 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = sub_18F520B3C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v27 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v27 - v20;
  sub_18F1436A0(v34, *(*(a5 + 16) + 8));
  v22 = type metadata accessor for DisplayRepresentation();
  if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
  {
    sub_18F0EF148(v11, &qword_1EACD32D0);
    v23 = 0;
  }

  else
  {
    v34 = v5;
    v24 = *(v13 + 16);
    v24(v19, v11, v12);
    sub_18F14372C(v11);
    (*(v13 + 32))(v21, v19, v12);
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    sub_18F520B2C();
    v24(v16, v21, v12);
    v32 = sub_18F52193C();
    v33 = v25;
    v30 = v28;
    v31 = v29;
    sub_18F12A000();
    v23 = sub_18F5225EC();

    (*(v13 + 8))(v21, v12);
  }

  return v23 & 1;
}

unint64_t sub_18F1ED198()
{
  result = qword_1ED6FE040;
  if (!qword_1ED6FE040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FE040);
  }

  return result;
}

uint64_t sub_18F1ED208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1ED230, 0, 0);
}

uint64_t sub_18F1ED230()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F18C388(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_18F521CDC();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  v0[7] = sub_18F129FD4(v4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_18F1ED3BC;

  return sub_18F1922E0();
}

uint64_t sub_18F1ED3BC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {

    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1ED4D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_45();
  Array<A>.items.getter();

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_59_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F1ED594()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1ED5F0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v0;
  *(v1 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = *(v3 + 24);
  *(v1 + 56) = *(v3 + 16);
  *(v1 + 64) = swift_getAssociatedTypeWitness();
  v8 = sub_18F52254C();
  *(v1 + 72) = v8;
  *(v1 + 80) = *(v8 - 8);
  *(v1 + 88) = swift_task_alloc();
  OUTLINED_FUNCTION_21_12();
  *(v1 + 96) = v9;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = *v5;
  v10 = *(v5 + 24);
  *(v1 + 144) = *(v5 + 16);
  *(v1 + 152) = v10;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F1ED79C()
{
  v59 = v0;
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED7077A8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v2 = sub_18F52163C();
  v3 = sub_18F52223C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v58[0] = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_45();
    static AppValue._identifier.getter(v7, v8);
    if (dynamic_cast_existential_1_conditional(v4))
    {
      if (qword_1ED6FF6D8 != -1)
      {
        swift_once();
      }

      v9 = OUTLINED_FUNCTION_45();
      v11 = static AppValue._identifier.getter(v9, v10);
      v12 = sub_18F164CE8(v11);

      v13 = v12;
      sub_18F1AF344();
    }

    v14 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F166ED0();
    v16 = v15;
    v17 = [v15 description];

    sub_18F5218DC();
    v18 = OUTLINED_FUNCTION_45();
    v21 = sub_18F11897C(v18, v19, v20);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Input: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  v22 = v0[7];
  if (v22 != v0[16])
  {
    goto LABEL_14;
  }

  v23 = v0[18];
  v24 = v0[19];
  v25 = v0[11];
  v26 = v0[8];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v23, v24, v26, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v22 = v0[7];
LABEL_14:
    __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v22);

    OUTLINED_FUNCTION_71();

    return v28();
  }

  v30 = v0[14];
  v31 = v0[15];
  v32 = v0[12];
  v33 = v0[8];
  v34 = v0[4];
  (*(v32 + 32))(v31, v0[11], v33);
  v35 = v34[4];
  v55 = v34[3];
  v57 = *v34;
  v36 = *(v32 + 16);
  v36(v30, v31, v33);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v37 = sub_18F52163C();
  v38 = sub_18F52223C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[14];
  if (v39)
  {
    v54 = v38;
    v41 = v0[12];
    v42 = v0[13];
    v43 = v0[8];
    v44 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = sub_18F11897C(v55, v35, v58);
    *(v44 + 12) = 2080;
    v36(v42, v40, v43);
    v45 = sub_18F52194C();
    v47 = v46;
    v48 = *(v41 + 8);
    v48(v40, v43);
    v49 = sub_18F11897C(v45, v47, v58);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_18F0E9000, v37, v54, "Perform %s with: %s", v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
    v50 = v0[12];
    v51 = v0[8];

    v48 = *(v50 + 8);
    v48(v40, v51);
  }

  v0[20] = v48;
  v56 = (v57 + *v57);
  v52 = swift_task_alloc();
  v0[21] = v52;
  *v52 = v0;
  v52[1] = sub_18F1EDE28;
  v53 = v0[15];

  return v56(v53);
}

uint64_t sub_18F1EDE28()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  *(v2 + 176) = v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F1EDF30()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v4 = v0[20];
    v5 = v0[15];
    v6 = v0[8];
    sub_18F521DFC();

    v4(v5, v6);
    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = OUTLINED_FUNCTION_22_14();
    v3(v2);

LABEL_5:
    v7 = OUTLINED_FUNCTION_19_11();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);

    OUTLINED_FUNCTION_71();

    return v10();
  }

  v12 = v0[5];
  v13 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[24] = v14;
  type metadata accessor for IntentParameterContext();
  *v14 = v0;
  v14[1] = sub_18F1EE108;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F1EE108()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_18F1F03A8(v3);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1EE248()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_22_14();
  v1(v0);
  v2 = OUTLINED_FUNCTION_19_11();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F1EE2F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_14_20();
  v1(v0);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F1EE388()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_14_20();
  v1(v0);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F1EE45C()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](*(v0 + 16));
  return sub_18F522F4C();
}

uint64_t sub_18F1EE4A0()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_18F18A260;

  return sub_18F1ED5F0();
}

uint64_t sub_18F1EE57C()
{
  sub_18F522EFC();
  sub_18F1EE41C();
  return sub_18F522F4C();
}

unint64_t sub_18F1EE5BC()
{
  result = qword_1EACD1E78;
  if (!qword_1EACD1E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD1E80);
    sub_18F1AFFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1E78);
  }

  return result;
}

uint64_t sub_18F1EE640()
{
  OUTLINED_FUNCTION_0_35();
  v0 = OUTLINED_FUNCTION_26_11();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return OUTLINED_FUNCTION_6_26();
}

uint64_t sub_18F1EE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_18F1EE7A4;

  return sub_18F1922E0();
}

uint64_t sub_18F1EE7A4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18F1EE8D4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_45();
  Array<A>.items.getter();

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_59_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F1EE998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a3;
  v7[6] = a4;
  v7[4] = a1;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1EE9CC()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v0[2] = v1;
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
    swift_getAssociatedTypeWitness();
    sub_18F1F0344();
    v6 = sub_18F521B3C();
    v0[9] = v6;

    v10 = (v4 + *v4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_18F1EEBC0;

    return v10(v6);
  }

  else
  {
    sub_18F521D2C();
    OUTLINED_FUNCTION_20_0();

    return v9();
  }
}

uint64_t sub_18F1EEBC0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F1EECC8()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 24) = *(v0 + 88);
  sub_18F521DBC();
  swift_getWitnessTable();
  if (sub_18F52213C())
  {
  }

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_18F1EED74()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1EEDD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 == a2)
  {
    v7 = a1[2];
    v6 = a1[3];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 16))(v7, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v4 = swift_getAssociatedTypeWitness();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v4);
  }
}

uint64_t sub_18F1EEED0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  v7 = *a2;
  v9 = *v4;
  v8 = v4[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *v10 = v5;
  v10[1] = sub_18F130E78;

  return sub_18F1EE998(v7, v11, v9, v8, v12, v13, v14);
}

uint64_t sub_18F1EEF84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1EEFF4()
{
  OUTLINED_FUNCTION_0_35();
  v0 = OUTLINED_FUNCTION_26_11();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return OUTLINED_FUNCTION_6_26();
}

uint64_t sub_18F1EF09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F1EF0C0, 0, 0);
}

uint64_t sub_18F1EF0C0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_8_8();
  v1 = sub_18F521CDC();
  OUTLINED_FUNCTION_16_15(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_18_15(v9);

  return v11(v10);
}

uint64_t sub_18F1EF200()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_18F129FD4(*(v3 + 48));
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_18F1EF320()
{
  OUTLINED_FUNCTION_69();
  sub_18F522DCC();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1EF380()
{
  OUTLINED_FUNCTION_0_35();
  v0 = OUTLINED_FUNCTION_26_11();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return OUTLINED_FUNCTION_6_26();
}

uint64_t sub_18F1EF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F1EF44C, 0, 0);
}

uint64_t sub_18F1EF44C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_8_8();
  v1 = sub_18F521CDC();
  OUTLINED_FUNCTION_16_15(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_18_15(v9);

  return v11(v10);
}

uint64_t sub_18F1EF58C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_18F129FD4(*(v3 + 48));
    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_18F1EF6AC()
{
  OUTLINED_FUNCTION_69();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_18F1EF790;

  return v4();
}

uint64_t sub_18F1EF790()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_10_18();

    return v7(v6);
  }
}

uint64_t sub_18F1EF8A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F130D80;

  return sub_18F1EF6AC();
}

uint64_t sub_18F1EF940(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1EF998()
{
  OUTLINED_FUNCTION_0_35();
  v0 = OUTLINED_FUNCTION_26_11();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return OUTLINED_FUNCTION_6_26();
}

uint64_t sub_18F1EFA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 32) + **(a5 + 32));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_18F0FC874;

  return v11(a1, a4, a5);
}

uint64_t sub_18F1EFB70()
{
  OUTLINED_FUNCTION_0_35();
  v0 = OUTLINED_FUNCTION_26_11();
  v1 = OUTLINED_FUNCTION_1_30(v0);
  v2(v1);
  return OUTLINED_FUNCTION_6_26();
}

uint64_t sub_18F1EFC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 32) + **(a5 + 32));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_18F0FC870;

  return v11(a1, a4, a5);
}

uint64_t sub_18F1EFD48()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v0[2] = v1;
  v0[3] = v3;
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_18F1EFE40;

  return v7(v2);
}

uint64_t sub_18F1EFE40()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_18F1EFF58()
{
  OUTLINED_FUNCTION_69();
  __swift_storeEnumTagSinglePayload(*(v0 + 16), 0, 1, *(v0 + 24));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1EFFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a3);
  return sub_18F522F4C();
}

uint64_t sub_18F1F0038()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;

  return sub_18F1EFD48();
}

uint64_t sub_18F1F00EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1F015C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

uint64_t sub_18F1F01A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F01F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F024C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F02A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_18F1F02E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18F1F0344()
{
  result = qword_1EACD1F88;
  if (!qword_1EACD1F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD1E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1F88);
  }

  return result;
}

uint64_t sub_18F1F03A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1F0410()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_17(v1);

  return sub_18F1EF09C(v3, v4, v5, v6);
}

uint64_t sub_18F1F04CC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_18();

  return v4(v3);
}

uint64_t sub_18F1F05B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_17(v1);

  return sub_18F1EF428(v3, v4, v5, v6);
}

uint64_t sub_18F1F066C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_28_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_27_17(v1);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_59_1();

  return sub_18F1EE6E8(v2, v3, v4, v5, v6);
}

uint64_t sub_18F1F072C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_28_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_27_17(v1);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_59_1();

  return sub_18F1EFA40(v3, v4, v5, v6, v7);
}

uint64_t sub_18F1F07E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_28_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_27_17(v1);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_59_1();

  return sub_18F1EFC18(v3, v4, v5, v6, v7);
}

uint64_t sub_18F1F08A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_28_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_27_17(v1);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_59_1();

  return sub_18F1ED208(v2, v3, v4, v5, v6);
}

id sub_18F1F0988(uint64_t a1, unint64_t a2)
{
  type metadata accessor for AppManager();
  sub_18F3E6F18(v13);
  v3 = v13[1];
  v22 = v14;
  sub_18F0EF148(&v22, &qword_1EACD4470);
  v21 = v15;
  sub_18F0EF148(&v21, &unk_1EACCFDB0);
  sub_18F3E6F18(v16);
  v4 = v16[1];
  v20 = v17;
  sub_18F0EF148(&v20, &qword_1EACD4470);
  v19 = v18;
  sub_18F0EF148(&v19, &unk_1EACCFDB0);
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (!v4)
  {
    if (!v3)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_8;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  v6 = sub_18F5218AC();

  if (v3)
  {
    v7 = sub_18F5218AC();
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  v8 = sub_18F520D2C();
  v9 = [objc_allocWithZone(MEMORY[0x1E69AD0A8]) initWithCanReplacePrintableText_];
  v10 = [v5 initWithContainerBundleIdentifier:v6 targetBundleIdentifier:v7 viewData:v8 viewSnippetOptions:v9];
  sub_18F123A1C(a1, a2);

  return v10;
}

id sub_18F1F0B68(uint64_t a1, unint64_t a2, void *a3)
{
  type metadata accessor for AppManager();
  sub_18F3E6F18(v14);
  v4 = v14[1];
  v23 = v15;
  sub_18F0EF148(&v23, &qword_1EACD4470);
  v22 = v16;
  sub_18F0EF148(&v22, &unk_1EACCFDB0);
  sub_18F3E6F18(v17);
  v5 = v17[1];
  v21 = v18;
  sub_18F0EF148(&v21, &qword_1EACD4470);
  v20 = v19;
  sub_18F0EF148(&v20, &unk_1EACCFDB0);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (!v5)
  {
    if (!v4)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_8;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  v7 = sub_18F5218AC();

  if (v4)
  {
    v8 = sub_18F5218AC();
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = sub_18F520D2C();
  v10 = [v6 initWithContainerBundleIdentifier:v7 targetBundleIdentifier:v8 viewData:v9 viewSnippetOptions:a3];

  sub_18F123A1C(a1, a2);
  return v10;
}

id sub_18F1F0D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_opt_self() bundleRecordForCurrentProcess];
  v10 = v9;
  if (v9)
  {
    sub_18F10FBF8(v9);
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 containingBundleRecord];
      if (v14)
      {
        sub_18F10FBF8(v14);
        if (v15)
        {
          v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          goto LABEL_8;
        }
      }
    }

    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    if (v12)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
LABEL_8:
      v17 = sub_18F5218AC();

      if (v12)
      {
        v18 = sub_18F5218AC();
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_13;
    }

    v18 = 0;
    v17 = 0;
  }

  else
  {
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v18 = 0;
    v17 = 0;
  }

LABEL_13:
  v19 = sub_18F520D2C();
  if (a4)
  {
    v20 = sub_18F5218AC();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v16 initWithContainerBundleIdentifier:v17 targetBundleIdentifier:v18 snippetModelData:v19 snippetModelBundleIdentifier:v20 viewSnippetOptions:a5];

  sub_18F123A1C(a1, a2);
  return v21;
}

uint64_t sub_18F1F0F2C()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      return 1735290739;
    case 2:
      return 0x6D75626C61;
    case 3:
      return 0x747369747261;
    case 4:
      v3 = 1919837543;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 5:
      return 0x7473696C79616C70;
    case 6:
    case 0xF:
      return 0x5374736163646F70;
    case 7:
      return 0x4574736163646F70;
    case 8:
      return 0x5074736163646F70;
    case 9:
      v2 = 0x53636973756DLL;
      goto LABEL_10;
    case 0xA:
      return 0x6F6F426F69647561;
    case 0xB:
      v3 = 1769369453;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0xC:
      return 0x776F68537674;
    case 0xD:
      return 0x7045776F68537674;
    case 0xE:
      return 0x646956636973756DLL;
    case 0x10:
      v2 = 0x536F69646172;
LABEL_10:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      break;
    case 0x11:
      result = 0x6E6F6974617473;
      break;
    case 0x12:
      result = 0x636973756DLL;
      break;
    case 0x13:
      result = 0xD000000000000017;
      break;
    case 0x14:
      result = 1937204590;
      break;
    default:
      return result;
  }

  return result;
}

AppIntents::IntentMediaItem::ItemType_optional __swiftcall IntentMediaItem.ItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
LABEL_11:
      v3 = v2;
      break;
    case 3:
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    default:
      v3 = 21;
      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_18F1F1258@<X0>(uint64_t *a1@<X8>)
{
  result = IntentMediaItem.ItemType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t IntentMediaItem.image.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  sub_18F11D008(v0, v1);
  return OUTLINED_FUNCTION_56();
}

uint64_t IntentMediaItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntentMediaItem() + 36);

  return sub_18F1F13CC(v3, a1);
}

uint64_t type metadata accessor for IntentMediaItem()
{
  result = qword_1EACCE828;
  if (!qword_1EACCE828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F1F13CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntentMediaItem.init(identifier:title:type:image:artist:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v11;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v12 = a9 + *(type metadata accessor for IntentMediaItem() + 36);

  return sub_18F178778(a11, v12);
}

uint64_t IntentMediaItem.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18F52186C();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF740(v9, a1 + v21, &qword_1EACCF7A8);
  return sub_18F0FF740(v5, a1 + v25, &qword_1EACD0270);
}

id static IntentMediaItem.valueType.getter()
{
  v0 = [objc_opt_self() mediaItemValueType];

  return v0;
}

id IntentMediaItem.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for IntentMediaItem();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18F0F21A8(0, &qword_1EACD1F90);
  sub_18F1F1800(v1, v6);
  result = sub_18F1F1864(v6);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t sub_18F1F1800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentMediaItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18F1F1864(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    sub_18F0F21A8(0, &qword_1ED6FEFC0);
    sub_18F16AAE0(v5, v3);
    v4 = sub_18F281538(v5, v3);
  }

  if (*(a1 + 8))
  {
    v6 = sub_18F5218AC();
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 24))
  {
    v7 = sub_18F5218AC();
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 64))
  {
    v8 = sub_18F5218AC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v6 title:v7 type:v2 artwork:v4 artist:v8];

  sub_18F1F27DC(a1);
  return v9;
}

unint64_t sub_18F1F19A0()
{
  result = qword_1EACD1F98;
  if (!qword_1EACD1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1F98);
  }

  return result;
}

uint64_t sub_18F1F19F4(uint64_t a1)
{
  result = sub_18F1F1AE4(&qword_1EACD1FA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1F1A38(uint64_t a1)
{
  result = sub_18F1F1AE4(&qword_1EACD1FA8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1F1A80()
{
  result = qword_1EACD1FB0;
  if (!qword_1EACD1FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD1FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FB0);
  }

  return result;
}

uint64_t sub_18F1F1AE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentMediaItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F1F1B34()
{
  result = qword_1EACD44D0;
  if (!qword_1EACD44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44D0);
  }

  return result;
}

uint64_t sub_18F1F1B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F522D5C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_18F1F1D28(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F1F1DB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FC8);
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1F26CC();
  sub_18F522FEC();
  LOBYTE(v12) = 0;
  OUTLINED_FUNCTION_0_32();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    OUTLINED_FUNCTION_0_32();
    LOBYTE(v12) = 2;
    OUTLINED_FUNCTION_0_32();
    LOBYTE(v12) = 3;
    OUTLINED_FUNCTION_0_32();
    v12 = *(v3 + 64);
    v11[15] = 4;
    sub_18F1F2720();
    sub_18F522C2C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F1F1F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1F1B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F1F1F90(uint64_t a1)
{
  v2 = sub_18F1F26CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1F1FCC(uint64_t a1)
{
  v2 = sub_18F1F26CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F1F2020@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v23 = v1[2];
  v24 = v7;
  v25 = *(v1 + 32);
  v22 = sub_18F1F0F2C();
  v11 = v10;
  v12 = v1[7];
  v13 = v1[8];
  v14 = type metadata accessor for IntentMediaItem();
  sub_18F1F13CC(v1 + *(v14 + 36), v6);
  v15 = sub_18F520C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v15);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  if (EnumTagSinglePayload == 1)
  {
    result = sub_18F1F2774(v6);
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v18 = sub_18F520BAC();
    v19 = v20;
    result = (*(*(v15 - 8) + 8))(v6, v15);
  }

  v21 = v23;
  *a1 = v24;
  a1[1] = v8;
  a1[2] = v21;
  a1[3] = v9;
  a1[4] = v22;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v18;
  a1[9] = v19;
  return result;
}

uint64_t dispatch thunk of MediaItemRepresentableEntity.mediaRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F1F2334()
{
  sub_18F0FE060(319, &qword_1ED6FDA40);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18F0FE060(319, &qword_1ED6FEF40);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_18F1F2418();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_18F1F2418()
{
  if (!qword_1EACCE7B0)
  {
    sub_18F520C8C();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCE7B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntentMediaItem.ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentMediaItem.ItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLV10AppIntentsE12URLNLGParamsVSg(uint64_t a1)
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

uint64_t sub_18F1F2600(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_18F1F2654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F1F26CC()
{
  result = qword_1EACD1FD0;
  if (!qword_1EACD1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FD0);
  }

  return result;
}

unint64_t sub_18F1F2720()
{
  result = qword_1EACD1FD8;
  if (!qword_1EACD1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FD8);
  }

  return result;
}

uint64_t sub_18F1F2774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1F27DC(uint64_t a1)
{
  v2 = type metadata accessor for IntentMediaItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentMediaItem.MediaItemNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F1F2918()
{
  result = qword_1EACD1FE0;
  if (!qword_1EACD1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FE0);
  }

  return result;
}

unint64_t sub_18F1F2970()
{
  result = qword_1EACD1FE8;
  if (!qword_1EACD1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FE8);
  }

  return result;
}

unint64_t sub_18F1F29C8()
{
  result = qword_1EACD1FF0;
  if (!qword_1EACD1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1FF0);
  }

  return result;
}

void sub_18F1F3114()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F1F3258()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F1F3300()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F1F3540()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F1F3734()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F1F3840()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t AppIntent.needsToContinueInAppError(_:requestConfirmation:bundleIdentifier:options:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);
  v12 = v11[12];
  v13 = v11[16];
  v14 = (a6 + v11[20]);
  v15 = v11[24];
  v16 = (a6 + v11[28]);
  sub_18F15F1BC(a1, a6);
  *(a6 + v12) = a2;
  *(a6 + v13) = 0;
  *v14 = a3;
  v14[1] = a4;
  *(a6 + v15) = a5;
  type metadata accessor for AppIntentError.Context(0);
  *v16 = 0;
  v16[1] = 0;
  swift_storeEnumTagMultiPayload();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t AppIntent.needsToOpenURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18F520C8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for AppIntentError.Context(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ContinueInAppLaunchOption.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

unint64_t sub_18F1F3DD8()
{
  result = qword_1EACD2000;
  if (!qword_1EACD2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2000);
  }

  return result;
}

_BYTE *sub_18F1F3E2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1F3EDC()
{
  result = qword_1EACD2008[0];
  if (!qword_1EACD2008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD2008);
  }

  return result;
}

uint64_t sub_18F1F3F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_94_1();
  sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  if ((a6 & 1) == 0)
  {
    return a4(a1, a2) & 1;
  }

  v16 = OUTLINED_FUNCTION_40_10();
  v17(v16);
  result = __swift_getEnumTagSinglePayload(v15, 1, a9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = (a4)(a1, a2, v15);
    (*(*(a9 - 8) + 8))(v15, a9);
    return v19 & 1;
  }

  return result;
}

uint64_t sub_18F1F408C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  if ((a5 & 1) == 0)
  {
    return a3(a1);
  }

  v15 = OUTLINED_FUNCTION_40_10();
  v16(v15);
  result = __swift_getEnumTagSinglePayload(v14, 1, a8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (a3)(a1, v14);
    return (*(*(a8 - 8) + 8))(v14, a8);
  }

  return result;
}

uint64_t sub_18F1F41E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = *(a3 + 16);
  *(v6 + 64) = *a3;
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a3 + 32);
  return v6;
}

uint64_t EntityQueryComparator.deinit()
{
  sub_18F14A500();
  sub_18F14A500();
  sub_18F0EF1A8(v0 + 64, &qword_1EACD0D00);
  return v0;
}

uint64_t EntityQueryComparator.__deallocating_deinit()
{
  EntityQueryComparator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_18F1F428C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  type metadata accessor for EntityQueryComparator();
  return sub_18F1F4358(v4, a2, a3, a1, a4);
}

uint64_t sub_18F1F4358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 88) = a2;
  *(a5 + 96) = a3;
  *(a5 + 104) = a4;
  v18 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD23A0);
  swift_dynamicCast();
  v7 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  *a5 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  sub_18F1F8FAC(a1 + 64, a5 + 8);
  sub_18F1F517C(a5 + 48);

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a5 + 112) = *(a1 + 16);
  *(a5 + 120) = v9;
  *(a5 + 128) = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  sub_18F14A6A0();
  sub_18F14A6A0();

  *(a5 + 136) = v11;
  *(a5 + 144) = v12;
  *(a5 + 152) = v13;
  return result;
}

void *sub_18F1F449C()
{

  type metadata accessor for EntityQueryComparator();
  v0 = OUTLINED_FUNCTION_22();
  return sub_18F1F452C(v0, v1, v2, v3);
}

void *sub_18F1F452C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v11[5] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD23A0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
  v8 = OUTLINED_FUNCTION_40_10();
  *a4 = v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a1;
  a4[1] = sub_18F1F8974;
  a4[2] = result;
  return result;
}

uint64_t static EntityQueryComparatorsBuilder.buildBlock(_:)()
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  type metadata accessor for AnyEntityQueryComparator();
  OUTLINED_FUNCTION_94_1();
  sub_18F521DBC();
  swift_getWitnessTable();
  return sub_18F521DEC();
}

uint64_t sub_18F1F4730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F1F428C(a1, a2, a3, v7);
  Comparator = type metadata accessor for EntityPropertyQueryComparator();
  sub_18F1F483C(Comparator);
  v5 = v4;
  (*(*(Comparator - 1) + 8))(v7, Comparator);
  return v5;
}

void sub_18F1F483C(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_0();
  (*(v2 + 16))(v3);
  sub_18F1F5278(v3, a1[2], a1[7], a1[3], a1[4], a1[5], a1[6], a1[8], a1[9]);
  OUTLINED_FUNCTION_10_19();
}

uint64_t sub_18F1F48D8@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X7>, char *a5@<X8>, __int128 a6, uint64_t a7)
{
  memcpy(a5, __src, 0x99uLL);
  v11 = type metadata accessor for EntityPropertyQueryComparator.ResolvedValue();
  (*(*(a4 - 8) + 32))(&a5[*(v11 + 84)], a2, a4);
  v12 = *(v11 + 88);
  OUTLINED_FUNCTION_94_1();
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  return (*(v13 + 32))(&a5[v12], a3);
}

uint64_t sub_18F1F49F0()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v4;
  v5 = *(v2 + 40);
  v1[16] = v5;
  v6 = sub_18F52254C();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = OUTLINED_FUNCTION_34_0();
  v1[20] = *(v5 - 8);
  v1[21] = OUTLINED_FUNCTION_34_0();
  v1[22] = *(v3 + 16);
  OUTLINED_FUNCTION_11_0();
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_34_0();
  v1[25] = *(v3 + 24);
  OUTLINED_FUNCTION_11_0();
  v1[26] = v8;
  v1[27] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1F4B8C()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 104);
  (*(*(v0 + 120) + 88))(v4);
  swift_getAtKeyPath();
  *(v0 + 224) = *(v0 + 96);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 232) = v5;
    *v5 = v6;
    v5[1] = sub_18F1F4D70;
    v7 = *(v0 + 152);

    return sub_18F31CFBC(v7, v0 + 16);
  }

  else
  {

    OUTLINED_FUNCTION_32_3();
    v9 = OUTLINED_FUNCTION_66();
    v10(v9);
    sub_18F0EF1A8(v0 + 56, &qword_1EACCFCF8);
    OUTLINED_FUNCTION_47_9();

    OUTLINED_FUNCTION_20_0();

    return v11(0);
  }
}

uint64_t sub_18F1F4D70()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F1F4EA8()
{
  v1 = v0[19];
  v2 = v0[16];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {

    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v6 = OUTLINED_FUNCTION_22();
    v7(v6);
    (*(v4 + 8))(v3, v5);
    v8 = 0;
  }

  else
  {
    v9 = v0[26];
    v19 = v0[27];
    v10 = v0[25];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[14];
    v14 = v0[15];
    (*(v12 + 32))(v11, v1, v2);
    v8 = sub_18F1F3F38(v11, v14 + *(v13 + 84), v14 + *(v13 + 88), *(v14 + 112), *(v14 + 120), *(v14 + 128), v15, v16, *(v13 + 48));

    (*(v12 + 8))(v11, v2);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    (*(v9 + 8))(v19, v10);
  }

  OUTLINED_FUNCTION_20_0();

  return v17(v8 & 1);
}

uint64_t sub_18F1F5060()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[16];

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_47_9();

  OUTLINED_FUNCTION_20_0();

  return v10(0);
}

double sub_18F1F517C@<D0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    swift_getAssociatedConformanceWitness();
    v3 = OUTLINED_FUNCTION_18_16();
    sub_18F120FCC(v3, v4, v5, v6);
  }

  else if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_18_16();
    sub_18F39D018(v8);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F1F5278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *a1;
  sub_18F0F21A8(0, &qword_1ED6FE3A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18F114200(AssociatedTypeWitness);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a8;
  v16[9] = a9;
  memcpy(v16 + 10, a1, 0x99uLL);
  OUTLINED_FUNCTION_10_19();
  return v20;
}

uint64_t (*sub_18F1F53A0(uint64_t a1, uint64_t a2, void *a3))()
{
  v35 = a2;
  v34 = a1;
  v4 = a3[6];
  OUTLINED_FUNCTION_94_1();
  v33 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v28 - v8;
  OUTLINED_FUNCTION_11_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[2];
  v32 = a3[3];
  v31 = a3[4];
  v30 = a3[5];
  v15 = a3[7];
  v16 = a3[8];
  v17 = a3[9];
  __src[0] = v14;
  __src[1] = v32;
  __src[2] = v31;
  __src[3] = v30;
  __src[4] = v4;
  __src[5] = v15;
  __src[6] = v16;
  __src[7] = v17;
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  (*(v10 + 16))(v13, v34, v4);
  v21 = v29;
  (*(v6 + 16))(v29, v35, v33);
  (*(*(a3 - 1) + 16))(__src, v36, a3);
  *(&v27 + 1) = v16;
  *&v27 = v15;
  v22 = v13;
  v23 = v32;
  v24 = v31;
  v25 = v30;
  sub_18F1F48D8(__src, v22, v21, v4, v20, v27, v17);
  sub_18F1F565C(v20, v14, v15, v23, v24, v25, v4, v16, v17);
  return OUTLINED_FUNCTION_0_36();
}

uint64_t (*sub_18F1F565C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v37 = a8;
  v38 = a4;
  v41 = a6;
  v42 = a2;
  v35 = a3;
  v36 = a1;
  v39 = a7;
  v40 = a9;
  v33 = a2;
  v34 = a5;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a3;
  v48 = a8;
  v49 = a9;
  v13 = type metadata accessor for EntityPropertyQueryComparator.ResolvedValue();
  OUTLINED_FUNCTION_11_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  (*(v15 + 16))(&v32 - v17, a1, v13);
  v19 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  v21 = v38;
  *(v20 + 4) = v38;
  *(v20 + 5) = a5;
  v23 = v39;
  v22 = v40;
  *(v20 + 6) = v41;
  *(v20 + 7) = v23;
  v24 = v37;
  *(v20 + 8) = v37;
  *(v20 + 9) = v22;
  v25 = *(v15 + 32);
  v25(&v20[v19], v18, v13);
  v25(v18, v36, v13);
  v26 = swift_allocObject();
  v27 = v34;
  v28 = v35;
  *(v26 + 2) = v33;
  *(v26 + 3) = v28;
  *(v26 + 4) = v21;
  *(v26 + 5) = v27;
  v30 = v39;
  v29 = v40;
  *(v26 + 6) = v41;
  *(v26 + 7) = v30;
  *(v26 + 8) = v24;
  *(v26 + 9) = v29;
  v25(&v26[v19], v18, v13);
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_18F1F5854()
{
  OUTLINED_FUNCTION_69();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = *(v2 + 48);
  v1[22] = v5;
  v6 = sub_18F52254C();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = OUTLINED_FUNCTION_34_0();
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1F597C()
{
  OUTLINED_FUNCTION_31();
  if ((*(v0[21] + 128) & 1) == 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[30] = v9;
    *v9 = v10;
    v9[1] = sub_18F1F5B70;
    v5 = v0[29];
    v6 = v0[20];
    v8 = v0[18];
    v7 = v0[19];
LABEL_6:

    return sub_18F1F62D4(v5, v8, v7, v6);
  }

  sub_18F0FD724(v0[18], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16E8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[17];
    v0[32] = v2;
    if (!*(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_18F0FD724(v2 + 32, (v0 + 7));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[33] = v3;
    *v3 = v4;
    v3[1] = sub_18F1F5D60;
    v5 = v0[28];
    v6 = v0[20];
    v7 = v0[19];
    v8 = (v0 + 7);
    goto LABEL_6;
  }

  sub_18F1F8920();
  OUTLINED_FUNCTION_28();
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 3;
  swift_willThrow();
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_71();

  return v12();
}

uint64_t sub_18F1F5B70()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1F5C6C()
{
  OUTLINED_FUNCTION_29();
  v5 = *(v1 + 232);
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = OUTLINED_FUNCTION_66();
  sub_18F1F53A0(v9, v10, v3);
  v11 = OUTLINED_FUNCTION_30_10();
  v12(v11);
  (*(v4 + 8))(v5, v2);
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_22_15();
  v13 = OUTLINED_FUNCTION_0_36();

  return v14(v13, v0, &unk_18F547E70, v3);
}

uint64_t sub_18F1F5D60()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 272) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 56);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F1F5E78()
{
  v2 = v0[32];
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    sub_18F0FD724(v2 + 72, (v0 + 12));

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[35] = v3;
    *v3 = v4;
    v3[1] = sub_18F1F5F38;
    v5 = v0[27];
    v6 = v0[20];
    v7 = v0[19];

    sub_18F1F62D4(v5, (v0 + 12), v7, v6);
  }
}

uint64_t sub_18F1F5F38()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 288) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 96);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1F603C()
{
  OUTLINED_FUNCTION_29();
  v6 = *(v2 + 224);
  OUTLINED_FUNCTION_36_10();
  (*(v5 + 32))(v1);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v7 = OUTLINED_FUNCTION_66();
  sub_18F1F53A0(v7, v8, v4);
  v9 = OUTLINED_FUNCTION_30_10();
  v10(v9);
  (*(v5 + 8))(v6, v3);
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_22_15();
  v11 = OUTLINED_FUNCTION_0_36();

  return v12(v11, v0, &unk_18F547E70, v4);
}

uint64_t sub_18F1F6150()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1F61C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1F6240()
{
  OUTLINED_FUNCTION_21();
  (*(v0[26] + 8))(v0[28], v0[22]);
  OUTLINED_FUNCTION_15_14();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1F62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v5[44] = type metadata accessor for AppIntentError(0);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v7 = *(a4 + 48);
  v5[47] = v7;
  v5[48] = *(v7 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v8 = sub_18F52165C();
  v5[51] = v8;
  v5[52] = *(v8 - 8);
  v5[53] = swift_task_alloc();
  v9 = sub_18F52254C();
  v5[54] = v9;
  v5[55] = *(v9 - 8);
  v5[56] = swift_task_alloc();
  v10 = type metadata accessor for IntentParameterContext();
  v5[57] = v10;
  v5[58] = *(v10 - 8);
  v5[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1F6510, 0, 0);
}

uint64_t sub_18F1F6510()
{
  OUTLINED_FUNCTION_69();
  sub_18F1F713C(v0[40], v0[41], v0[59]);
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_18F1F65B8;

  return sub_18F40D7F0(0, 0);
}

uint64_t sub_18F1F65B8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1F66B4()
{
  v78 = v0;
  v5 = v0[47];
  sub_18F40DA14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  if (swift_dynamicCast())
  {
    v7 = OUTLINED_FUNCTION_17_18();
    v8(v7);
    sub_18F20338C(v2, &off_1F0305440);
    sub_18F0FD724(v3, (v0 + 22));
    v9 = OUTLINED_FUNCTION_33_10();
    v10(v9);
    sub_18F52163C();
    v11 = sub_18F52220C();
    OUTLINED_FUNCTION_46_7(v11, v12, v13, v14, v15, v16, v17, v18, v54, v56, v59, v61, v64, v67, v70, v72, v75);
    OUTLINED_FUNCTION_32_13();
    if (v19)
    {
      OUTLINED_FUNCTION_28_20();
      v55 = OUTLINED_FUNCTION_45_7();
      v77 = v55;
      *v3 = 136315394;
      sub_18F0FD724((v0 + 22), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      v57 = v6;
      v20 = sub_18F52194C();
      v62 = v1;
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
      sub_18F11897C(v20, v22, &v77);

      v23 = OUTLINED_FUNCTION_20_13();
      v24(v23);
      sub_18F52194C();
      v25 = OUTLINED_FUNCTION_31_18();
      v26(v25);
      v27 = OUTLINED_FUNCTION_66();
      v30 = sub_18F11897C(v27, v28, v29);

      *(v3 + 14) = v30;
      OUTLINED_FUNCTION_27_18(&dword_18F0E9000, v31, v32, "Comparator resolved %s to %s", v33, v34, v35, v36, v55, v57, *v60, v60[4], v62, v65, v68, v71, v73, v76);
      OUTLINED_FUNCTION_44_6();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();

      (*(v2 + 8))(v69, v74);
      (*(v58 + 8))(v63, v66);
    }

    else
    {
      v52 = v0[47];
      v51 = v0[48];

      (*(v51 + 8))(v5, v52);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
      (*(v2 + 8))(v4, v73);
      (*(v6 + 8))(v1, v3);
    }

    OUTLINED_FUNCTION_16_16();

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v37 = v0[56];
    v38 = v0[54];
    v39 = v0[55];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    (*(v39 + 8))(v37, v38);
    sub_18F40DA14();
    sub_18F0EF1A8((v0 + 17), &qword_1EACD0620);
    v0[38] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD23B8);
    v44 = sub_18F52194C();
    v46 = v45;
    sub_18F1F8920();
    OUTLINED_FUNCTION_28();
    *v47 = v44;
    *(v47 + 8) = v46;
    *(v47 + 16) = 0;
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_22();
    v49(v48);
    OUTLINED_FUNCTION_16_16();

    OUTLINED_FUNCTION_71();
  }

  return v50();
}

uint64_t sub_18F1F6A9C()
{
  v107 = v0;
  v3 = *(v0 + 488);
  *(v0 + 280) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 488);
  if (v5)
  {
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);

    sub_18F1F8EE4(v7, v8);
    if (qword_1ED6FDA70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 408), qword_1ED7076B0);
    v9 = OUTLINED_FUNCTION_66();
    v10 = sub_18F1F7310(v9);
    v12 = v11;
    v14 = v13;
    sub_18F1F8920();
    v15 = OUTLINED_FUNCTION_28();
    *v16 = v10;
    *(v16 + 8) = v12;
    *(v16 + 16) = v14;
    sub_18F2033C0(v15);
    OUTLINED_FUNCTION_12_20();

    v26 = *(v0 + 448);
    v27 = *(v0 + 376);
    sub_18F40DA14();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_17_18();
      v31(v30);
      sub_18F20338C(v14, &off_1F0305440);
      sub_18F0FD724(v1, v0 + 176);
      v32 = OUTLINED_FUNCTION_33_10();
      v33(v32);
      sub_18F52163C();
      v34 = sub_18F52220C();
      OUTLINED_FUNCTION_46_7(v34, v35, v36, v37, v38, v39, v40, v41, v83, v85, v88, v90, v93, v96, v99, v101, v104);
      OUTLINED_FUNCTION_32_13();
      if (v42)
      {
        OUTLINED_FUNCTION_28_20();
        v84 = OUTLINED_FUNCTION_45_7();
        v106 = v84;
        *v1 = 136315394;
        sub_18F0FD724(v0 + 176, v0 + 216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
        v86 = v28;
        v43 = sub_18F52194C();
        v91 = v27;
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
        sub_18F11897C(v43, v45, &v106);

        v46 = OUTLINED_FUNCTION_20_13();
        v47(v46);
        sub_18F52194C();
        v48 = OUTLINED_FUNCTION_31_18();
        v49(v48);
        v50 = OUTLINED_FUNCTION_66();
        v53 = sub_18F11897C(v50, v51, v52);

        *(v1 + 14) = v53;
        OUTLINED_FUNCTION_27_18(&dword_18F0E9000, v54, v55, "Comparator resolved %s to %s", v56, v57, v58, v59, v84, v86, *v89, v89[4], v91, v94, v97, v100, v102, v105);
        OUTLINED_FUNCTION_44_6();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();

        (*(v14 + 8))(v98, v103);
        (*(v87 + 8))(v92, v95);
      }

      else
      {
        v82 = *(v0 + 376);
        v81 = *(v0 + 384);

        (*(v81 + 8))(v26, v82);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
        (*(v14 + 8))(v2, v102);
        (*(v28 + 8))(v27, v1);
      }

      OUTLINED_FUNCTION_16_16();

      OUTLINED_FUNCTION_71();
      goto LABEL_17;
    }

    v62 = *(v0 + 464);
    v61 = *(v0 + 472);
    v68 = *(v0 + 448);
    v63 = *(v0 + 456);
    v69 = *(v0 + 432);
    v70 = *(v0 + 440);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    (*(v70 + 8))(v68, v69);
    sub_18F40DA14();
    sub_18F0EF1A8(v0 + 136, &qword_1EACD0620);
    *(v0 + 304) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD23B8);
    v75 = sub_18F52194C();
    v77 = v76;
    OUTLINED_FUNCTION_28();
    *v78 = v75;
    *(v78 + 8) = v77;
    *(v78 + 16) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  *(v0 + 288) = v6;
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD23A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F0EF1A8(v0 + 56, &qword_1EACD23B0);
LABEL_13:
    v60 = *(v0 + 488);
    v62 = *(v0 + 464);
    v61 = *(v0 + 472);
    v63 = *(v0 + 456);
    swift_getErrorValue();
    v64 = sub_18F522E8C();
    v66 = v65;
    sub_18F1F8920();
    OUTLINED_FUNCTION_28();
    *v67 = v64;
    *(v67 + 8) = v66;
    *(v67 + 16) = 2;
    swift_willThrow();

LABEL_15:
    (*(v62 + 8))(v61, v63);
    goto LABEL_16;
  }

  sub_18F0FD0B4((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_66();
  v18 = sub_18F52086C();
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_13;
  }

  v20 = v18;
  v21 = v19;
  v22 = *(v0 + 488);
  sub_18F1F8920();
  OUTLINED_FUNCTION_28();
  *v23 = v20;
  *(v23 + 8) = v21;
  *(v23 + 16) = 2;
  swift_willThrow();

  v24 = OUTLINED_FUNCTION_40_10();
  v25(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
LABEL_16:

  OUTLINED_FUNCTION_71();
LABEL_17:

  return v79();
}