void sub_18F39CC3C()
{
  if (!qword_1EACCDD78)
  {
    type metadata accessor for IntentReminderTask(255);
    v0 = sub_18F521DBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDD78);
    }
  }
}

unint64_t sub_18F39CCA4()
{
  result = qword_1EACD8030;
  if (!qword_1EACD8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8030);
  }

  return result;
}

unint64_t sub_18F39CCF8()
{
  result = qword_1EACD8040;
  if (!qword_1EACD8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD8038);
    sub_18F23A2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8040);
  }

  return result;
}

uint64_t sub_18F39CD7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F39CDD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentReminderTaskList.ReminderTaskListNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F39CF10()
{
  result = qword_1EACD8050;
  if (!qword_1EACD8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8050);
  }

  return result;
}

unint64_t sub_18F39CF68()
{
  result = qword_1EACD8058;
  if (!qword_1EACD8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8058);
  }

  return result;
}

unint64_t sub_18F39CFC0()
{
  result = qword_1EACD8060;
  if (!qword_1EACD8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8060);
  }

  return result;
}

uint64_t sub_18F39D018@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    sub_18F521DBC();
    type metadata accessor for AppEnumsFromStringsResolver();
    OUTLINED_FUNCTION_10_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_89();
    swift_getWitnessTable();
    *(a1 + 24) = OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_0_33();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_72(WitnessTable);
    return sub_18F39D618();
  }

  else
  {
    type metadata accessor for AppEnumFromStringResolver();
    OUTLINED_FUNCTION_3_72();
    *(a1 + 24) = OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_0_33();
    v5 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_72(v5);
    return sub_18F39D714();
  }
}

uint64_t sub_18F39D174()
{
  result = sub_18F5229BC();
  if (!v1)
  {
    sub_18F52279C();

    v2 = sub_18F52307C();
    MEMORY[0x193ADB000](v2);

    MEMORY[0x193ADB000](0xD000000000000012, 0x800000018F526560);
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18F39D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *(*(*(a3 + 16) + 8) + 16);
  v3[5] = swift_getAssociatedTypeWitness();
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F39D318, 0, 0);
}

uint64_t sub_18F39D318()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_18F5227CC();
    swift_getAssociatedConformanceWitness();
    v1 = sub_18F521DEC();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F39D3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F39D480(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *v6 = v3;
  v6[1] = sub_18F32F860;

  return sub_18F39D25C(v5, v7, v8);
}

uint64_t sub_18F39D520()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F39D55C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18F39D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18F39D618()
{
  sub_18F521DBC();
  type metadata accessor for AppEnumsFromStringsResolver();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_89();
  swift_getWitnessTable();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F39D958);
}

uint64_t sub_18F39D714()
{
  type metadata accessor for AppEnumFromStringResolver();
  OUTLINED_FUNCTION_3_72();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F39D964);
}

void sub_18F39D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1(a2, a4);
  v5 = type metadata accessor for AppEnumFromStringResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v7, WitnessTable, a2, v5, WitnessTable);

  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
}

void sub_18F39D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1(a2, a4);
  v4 = sub_18F521DBC();
  v5 = type metadata accessor for AppEnumsFromStringsResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v7, WitnessTable, v4, v5, WitnessTable);
  swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
}

uint64_t RangeCheckingResolver.checkParameterRangeContains<A>(value:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v24 = a6;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = &v21 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_18F52254C();
  v9 = *(v23 - 8);
  v10 = MEMORY[0x1EEE9AC00](v23);
  v12 = &v21 - v11;
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for IntentParameterContext();
  sub_18F39DCC0(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v9 + 8))(v12, v23);
  }

  v17 = v22;
  (*(v22 + 32))(v14, v12, TupleTypeMetadata2);
  if (sub_18F5217DC() & 1) != 0 && (sub_18F5217EC())
  {
    return (*(v17 + 8))(v14, TupleTypeMetadata2);
  }

  v18 = type metadata accessor for IntentDialog(0);
  v19 = v21;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v18);
  type metadata accessor for AppIntentError(0);
  sub_18F2199DC();
  swift_allocError();
  IntentParameterContext.needsValueError(_:)(v19, v15, v20);
  sub_18F1F03A8(v19);
  swift_willThrow();
  return (*(v17 + 8))(v14, TupleTypeMetadata2);
}

uint64_t sub_18F39DCC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_18F0F713C(0x766973756C636E69, 0xEE0065676E615265), (v5 & 1) != 0))
  {
    sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v7 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a1, v7 ^ 1u, 1, TupleTypeMetadata2);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v9 = swift_getTupleTypeMetadata2();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t type metadata accessor for ConfirmationActionNameEnum()
{
  result = qword_1EACCEBD0;
  if (!qword_1EACCEBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F39DE70@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v74 = a2;
  v75 = a3;
  v4 = sub_18F520B3C();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v11 = OUTLINED_FUNCTION_10(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v64 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  v23 = type metadata accessor for ConfirmationActionNameEnum();
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  sub_18F39F064(a1, v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38);
  if (__swift_getEnumTagSinglePayload(v27, 33, v28))
  {
    v29 = sub_18F39E84C();

    sub_18F39E84C();
    if (v31)
    {
      v32 = sub_18F39EC2C(v30, v31);
    }

    else
    {
      v32 = 0;
    }

    v38 = v75;
    v40 = sub_18F39ED74();
    v41 = objc_allocWithZone(MEMORY[0x1E69ACE10]);
    v42 = sub_18F39F0C8(v29, v74 & 1, v32, MEMORY[0x1E69E7CC0], v40);
    sub_18F39F1A8(v27);
LABEL_25:
    *v38 = v42;
    return sub_18F39F1A8(a1);
  }

  v66 = v14;
  v64 = v7;
  v71 = *(v27 + v28[12]);
  v72 = v20;
  v33 = v28[16];
  v34 = *(v27 + v28[20]);
  sub_18F1A9E70(v27, v22);
  v35 = v27 + v33;
  v36 = v72;
  sub_18F1A9E70(v35, v72);
  sub_18F11F0A0(v22, v17);
  v37 = v22;
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) == 1)
  {
    sub_18F1121C4(v17);
    v67 = 0;
    v38 = v75;
    v39 = v73;
  }

  else
  {
    v67 = sub_18F117248();
    v39 = v73;
    v43 = OUTLINED_FUNCTION_3_73();
    v44(v43);
    v38 = v75;
  }

  v45 = *(v71 + 16);
  v69 = v37;
  v70 = a1;
  v68 = v34;
  if (v45)
  {
    v78 = MEMORY[0x1E69E7CC0];
    v46 = v71;
    sub_18F5228CC();
    OUTLINED_FUNCTION_1_90();
    v48 = v46 + v47;
    v49 = *(v39 + 56);
    while (1)
    {
      v76(v9, v48, v4);
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v50 = v77;
      [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      (*(v39 - 8))(v9, v4);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v48 += v49;
      if (!--v45)
      {

        v71 = v78;
        v37 = v69;
        a1 = v70;
        v38 = v75;
        v51 = v74;
        v36 = v72;
        v39 = v73;
        v34 = v68;
        goto LABEL_15;
      }
    }
  }

  else
  {

    v71 = MEMORY[0x1E69E7CC0];
    v51 = v74;
LABEL_15:
    v52 = v66;
    sub_18F11F0A0(v36, v66);
    if (__swift_getEnumTagSinglePayload(v52, 1, v4) == 1)
    {
      sub_18F1121C4(v52);
      v65 = 0;
    }

    else
    {
      v65 = sub_18F117248();
      v53 = OUTLINED_FUNCTION_3_73();
      v54(v53);
    }

    v55 = *(v34 + 16);
    if (!v55)
    {

LABEL_24:
      v62 = objc_allocWithZone(MEMORY[0x1E69ACE10]);
      v42 = sub_18F39F0C8(2, v51 & 1, v67, v71, v65);
      sub_18F1121C4(v36);
      sub_18F1121C4(v37);
      goto LABEL_25;
    }

    v78 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    OUTLINED_FUNCTION_1_90();
    v57 = v34 + v56;
    v58 = *(v39 + 56);
    v59 = (v39 - 8);
    v60 = v64;
    while (1)
    {
      v76(v60, v57, v4);
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v61 = v77;
      [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      (*v59)(v60, v4);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v57 += v58;
      if (!--v55)
      {

        v37 = v69;
        a1 = v70;
        v38 = v75;
        v51 = v74;
        v36 = v72;
        goto LABEL_24;
      }
    }
  }

  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F39E628@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationActionNameEnum();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38);
  __swift_storeEnumTagSinglePayload(v8, a1, 33, v9);
  return sub_18F39DE70(v8, 0, a2);
}

uint64_t static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = type metadata accessor for ConfirmationActionNameEnum();
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38);
  v14 = v13[12];
  v15 = v13[16];
  v16 = v13[20];
  v17 = sub_18F520B3C();
  v18 = *(*(v17 - 8) + 16);
  v18(v12, a1, v17);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
  *(v12 + v14) = a2;
  v18(v12 + v15, a3, v17);
  __swift_storeEnumTagSinglePayload(v12 + v15, 0, 1, v17);
  *(v12 + v16) = a4;
  __swift_storeEnumTagSinglePayload(v12, 0, 33, v13);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F39DE70(v12, a5, a6);
}

uint64_t sub_18F39E84C()
{
  v1 = type metadata accessor for ConfirmationActionNameEnum();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F39F064(v0, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 33, v4);
  result = 0;
  switch(EnumTagSinglePayload)
  {
    case 1:
      result = 18;
      break;
    case 2:
      result = 30;
      break;
    case 3:
      result = 9;
      break;
    case 4:
      result = 11;
      break;
    case 5:
      result = 31;
      break;
    case 6:
      result = 28;
      break;
    case 7:
      return result;
    case 8:
      result = 17;
      break;
    case 9:
      result = 3;
      break;
    case 10:
      result = 26;
      break;
    case 11:
      result = 21;
      break;
    case 12:
      result = 20;
      break;
    case 13:
      result = 27;
      break;
    case 14:
      result = 5;
      break;
    case 15:
      result = 29;
      break;
    case 16:
      result = 7;
      break;
    case 17:
      result = 8;
      break;
    case 18:
      result = 10;
      break;
    case 19:
      result = 32;
      break;
    case 20:
      result = 33;
      break;
    case 21:
      result = 15;
      break;
    case 22:
      result = 12;
      break;
    case 23:
      result = 4;
      break;
    case 24:
      result = 16;
      break;
    case 25:
      result = 19;
      break;
    case 26:
      result = 25;
      break;
    case 27:
      result = 14;
      break;
    case 28:
      result = 1;
      break;
    case 29:
      result = 13;
      break;
    case 30:
      result = 22;
      break;
    case 31:
      result = 24;
      break;
    case 32:
      result = 23;
      break;
    case 33:
      result = 6;
      break;
    default:

      v7 = *(v4 + 64);

      sub_18F1121C4(&v3[v7]);
      sub_18F1121C4(v3);
      result = 2;
      break;
  }

  return result;
}

id sub_18F39EC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for ConfirmationActionNameEnum.__();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = [v8 bundleForClass_];
  v10 = [v9 bundleURL];

  sub_18F520C3C();
  v11 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  v12 = objc_allocWithZone(MEMORY[0x1E69AC9E8]);
  return sub_18F39F204(a1, a2, 0, 0, 0, 0, v6);
}

id sub_18F39ED74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  type metadata accessor for ConfirmationActionNameEnum.__();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = [v4 bundleURL];

  sub_18F520C3C();
  v6 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = objc_allocWithZone(MEMORY[0x1E69AC9E8]);
  return sub_18F39F204(0x6C65636E6143, 0xE600000000000000, 0, 0, 0, 0, v2);
}

uint64_t sub_18F39EEEC()
{
  sub_18F39EF44();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_18F39EF44()
{
  if (!qword_1EACD8068)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACCF7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD8070);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EACD8068);
    }
  }
}

uint64_t sub_18F39F064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationActionNameEnum();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18F39F0C8(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5)
{
  sub_18F0F21A8(0, &qword_1ED6FEFA8);
  v10 = sub_18F521C8C();

  v11 = sub_18F521C8C();

  v12 = [v5 initWithType:a1 destructive:a2 & 1 acceptLabel:a3 acceptAlternatives:v10 denyLabel:a5 denyAlternatives:v11];

  return v12;
}

uint64_t sub_18F39F1A8(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationActionNameEnum();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F39F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_18F5218AC();

  if (a4)
  {
    v13 = sub_18F5218AC();

    if (a6)
    {
LABEL_3:
      v14 = sub_18F5218AC();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_18F520C8C();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v15) != 1)
  {
    v16 = sub_18F520BEC();
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v17 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v16];

  return v17;
}

uint64_t sub_18F39F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F39F35C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 context];

  if (v2)
  {
    v3 = sub_18F520D4C();
    v5 = v4;

    if (qword_1EACCF5A8 != -1)
    {
      swift_once();
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_18F52062C();
    sub_18F123A1C(v3, v5);
    v7 = 0;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 16), v7, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F39F528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F39F540()
{
  if (qword_1EACCF5A0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = sub_18F39F7FC(qword_1EACD8078, v2, v1);
  v5 = v4;
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v6[5] = v5;
  swift_getAssociatedTypeWitness();
  sub_18F52254C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  sub_18F107A24(sub_18F39F910, MEMORY[0x1E6969080], (v0 + 4), (v0 + 2));

  v7 = v0[3];
  v8 = [objc_opt_self() sharedInstance];
  if (v7 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_22();
    sub_18F16AAE0(v10, v11);
    OUTLINED_FUNCTION_22();
    v9 = sub_18F520D2C();
    v12 = OUTLINED_FUNCTION_22();
    sub_18F190748(v12, v13);
  }

  [v8 setContext_];

  v14 = OUTLINED_FUNCTION_22();
  sub_18F190748(v14, v15);
  OUTLINED_FUNCTION_71();

  return v16();
}

uint64_t sub_18F39F7A8(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t (*sub_18F39F7FC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_18F39F95C;
}

uint64_t sub_18F39F870()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18F52068C();
}

uint64_t sub_18F39F910@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))();
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t dispatch thunk of _EntitySearchableItemQuery.entities(forSearchableItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_25(a4);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_18F224D20;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18F39FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_18F39FB5C;

  return sub_18F139E28();
}

uint64_t sub_18F39FB5C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  if (v0)
  {
    v5 = v3[1];

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_18_25(v2[5]);
    v13 = (v7 + *v7);
    v8 = swift_task_alloc();
    v2[8] = v8;
    *v8 = v3;
    v8[1] = sub_18F39FD34;
    v9 = v2[5];
    v10 = v2[3];
    v11 = v2[4];
    v12 = v2[2];

    return v13(v12, v10, v11, v9);
  }
}

uint64_t sub_18F39FD34()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_18F39FEB4()
{
  v0 = sub_18F52159C();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v39 - v3;
  v4 = sub_18F52165C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = sub_18F5215DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_1ED7076B0);
  v18 = *(v5 + 16);
  v18(v10, v17, v4);
  v18(v8, v10, v4);
  sub_18F5215AC();
  v46 = v8;
  v19 = *(v5 + 8);
  v45 = v5 + 8;
  v19(v10, v4);
  v20 = sub_18F5215BC();
  v21 = *(v12 + 8);
  v48 = v12 + 8;
  v41 = v21;
  v21(v16, v11);
  v22 = nullsub_1;
  if ((v20 & 1) == 0)
  {
    return v22;
  }

  v40 = v11;
  v18(v10, v17, v4);
  v18(v46, v10, v4);
  v23 = v47;
  sub_18F5215AC();
  v19(v10, v4);
  v25 = v49;
  v24 = v50;
  sub_18F3A19DC();
  v26 = sub_18F5215CC();
  v27 = sub_18F52236C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v29 = *v24;
  if ((*(v24 + 16) & 1) == 0)
  {
    if (!v29)
    {
      __break(1u);
      return v22;
    }

    goto LABEL_13;
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((*v24 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v51;
LABEL_13:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v26, v27, v31, v29, "", v30, 2u);
      MEMORY[0x193ADD350](v30, -1, -1);
LABEL_14:

      v32 = v43;
      v33 = v23;
      v34 = v44;
      (*(v43 + 16))(v42, v25, v44);
      sub_18F52161C();
      swift_allocObject();
      v35 = sub_18F52160C();
      (*(v32 + 8))(v25, v34);
      v41(v33, v40);
      v36 = swift_allocObject();
      v37 = *(v24 + 16);
      *(v36 + 16) = *v24;
      *(v36 + 32) = v37;
      v38 = *(v24 + 48);
      *(v36 + 48) = *(v24 + 32);
      *(v36 + 64) = v38;
      *(v36 + 80) = v35;
      sub_18F1A81D8(v24, v52);
      return sub_18F3A33C4;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18F3A03C0()
{
  v1 = v0;
  v54 = type metadata accessor for PerformActionExecutorTask(0);
  v48 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = v2;
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18F52159C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - v6;
  v7 = sub_18F52165C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = sub_18F5215DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(v8 + 16);
  v55 = v1;
  v20(v13, v1, v7);
  v20(v11, v13, v7);
  sub_18F5215AC();
  v51 = *(v8 + 8);
  v51(v13, v7);
  LOBYTE(v1) = sub_18F5215BC();
  v21 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v14;
  v22 = v14;
  v23 = v21;
  v21(v19, v22);
  v24 = nullsub_1;
  if ((v1 & 1) == 0)
  {
    return v24;
  }

  v25 = v55;
  v20(v13, v55, v7);
  v20(v11, v13, v7);
  v26 = v52;
  sub_18F5215AC();
  v51(v13, v7);
  v27 = v53;
  v28 = v25 + *(v54 + 20);
  v29 = *v28;
  v30 = *(v28 + 16);
  sub_18F3A1BF4(v53);
  v31 = sub_18F5215CC();
  v32 = sub_18F52236C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v30 & 1) == 0)
  {
    if (!v29)
    {
      __break(1u);
      return v24;
    }

    goto LABEL_11;
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v56;
LABEL_11:
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v31, v32, v35, v29, "", v34, 2u);
      MEMORY[0x193ADD350](v34, -1, -1);
LABEL_12:

      v36 = v46;
      v37 = v47;
      (*(v46 + 16))(v45, v27, v47);
      sub_18F52161C();
      swift_allocObject();
      v38 = sub_18F52160C();
      (*(v36 + 8))(v27, v37);
      v23(v26, v44);
      v39 = v50;
      sub_18F3A3040(v25, v50, type metadata accessor for PerformActionExecutorTask);
      v40 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v41 = (v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      sub_18F3A30A0(v39, v42 + v40, type metadata accessor for PerformActionExecutorTask);
      *(v42 + v41) = v38;
      return sub_18F3A3374;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18F3A093C()
{
  v1 = v0;
  ViewEntitiesTask = type metadata accessor for FetchViewEntitiesTask();
  v48 = *(ViewEntitiesTask - 8);
  MEMORY[0x1EEE9AC00](ViewEntitiesTask);
  v49 = v2;
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18F52159C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - v6;
  v7 = sub_18F52165C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = sub_18F5215DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(v8 + 16);
  v55 = v1;
  v20(v13, v1, v7);
  v20(v11, v13, v7);
  sub_18F5215AC();
  v51 = *(v8 + 8);
  v51(v13, v7);
  LOBYTE(v1) = sub_18F5215BC();
  v21 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v14;
  v22 = v14;
  v23 = v21;
  v21(v19, v22);
  v24 = nullsub_1;
  if ((v1 & 1) == 0)
  {
    return v24;
  }

  v25 = v55;
  v20(v13, v55, v7);
  v20(v11, v13, v7);
  v26 = v52;
  sub_18F5215AC();
  v51(v13, v7);
  v27 = v53;
  v28 = v25 + *(ViewEntitiesTask + 20);
  v29 = *v28;
  v30 = *(v28 + 16);
  sub_18F3A1BF4(v53);
  v31 = sub_18F5215CC();
  v32 = sub_18F52236C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v30 & 1) == 0)
  {
    if (!v29)
    {
      __break(1u);
      return v24;
    }

    goto LABEL_11;
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v56;
LABEL_11:
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v31, v32, v35, v29, "", v34, 2u);
      MEMORY[0x193ADD350](v34, -1, -1);
LABEL_12:

      v36 = v46;
      v37 = v47;
      (*(v46 + 16))(v45, v27, v47);
      sub_18F52161C();
      swift_allocObject();
      v38 = sub_18F52160C();
      (*(v36 + 8))(v27, v37);
      v23(v26, v44);
      v39 = v50;
      sub_18F3A3040(v25, v50, type metadata accessor for FetchViewEntitiesTask);
      v40 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v41 = (v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      sub_18F3A30A0(v39, v42 + v40, type metadata accessor for FetchViewEntitiesTask);
      *(v42 + v41) = v38;
      return sub_18F3A32C8;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18F3A0EB8()
{
  v1 = v0;
  v49 = type metadata accessor for SignpostWrapper(0);
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v2;
  v47 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_18F52159C();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v42 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v40[-v6];
  v7 = sub_18F52165C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_18F5215DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40[-v16];
  v18 = *(v8 + 16);
  v50 = v1;
  v18(v10, v1, v7);
  sub_18F5215AC();
  LOBYTE(v1) = sub_18F5215BC();
  v19 = *(v12 + 8);
  v19(v17, v11);
  v20 = nullsub_1;
  if ((v1 & 1) == 0)
  {
    return v20;
  }

  v21 = v50;
  v18(v10, v50, v7);
  sub_18F5215AC();
  v22 = v21 + *(v49 + 20);
  v49 = *v22;
  v41 = *(v22 + 16);
  v18(v10, v21, v7);
  sub_18F5215AC();
  sub_18F5215CC();
  v23 = v48;
  sub_18F52156C();
  v19(v17, v11);
  v24 = sub_18F5215CC();
  v25 = sub_18F52236C();
  result = sub_18F52251C();
  v27 = v11;
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v41 & 1) == 0)
  {
    v28 = v19;
    v29 = v49;
    if (!v49)
    {
      __break(1u);
      return v20;
    }

    goto LABEL_11;
  }

  if (HIDWORD(v49))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v49 & 0xFFFFF800) != 0xD800)
  {
    if (v49 >> 16 <= 0x10)
    {
      v28 = v19;
      v29 = &v51;
LABEL_11:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v24, v25, v31, v29, "", v30, 2u);
      MEMORY[0x193ADD350](v30, -1, -1);
      v19 = v28;
LABEL_12:

      v32 = v27;
      v33 = v43;
      v34 = v44;
      (*(v43 + 16))(v42, v23, v44);
      sub_18F52161C();
      swift_allocObject();
      v35 = sub_18F52160C();
      (*(v33 + 8))(v23, v34);
      v19(v15, v32);
      v36 = v47;
      sub_18F3A3040(v50, v47, type metadata accessor for SignpostWrapper);
      v37 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v38 = (v46 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      sub_18F3A30A0(v36, v39 + v37, type metadata accessor for SignpostWrapper);
      *(v39 + v38) = v35;
      return sub_18F3A3100;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18F3A1400()
{
  v1 = v0;
  StructuredDataTask = type metadata accessor for FetchStructuredDataTask();
  v48 = *(StructuredDataTask - 8);
  MEMORY[0x1EEE9AC00](StructuredDataTask);
  v49 = v2;
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18F52159C();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - v6;
  v7 = sub_18F52165C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = sub_18F5215DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(v8 + 16);
  v55 = v1;
  v20(v13, v1, v7);
  v20(v11, v13, v7);
  sub_18F5215AC();
  v51 = *(v8 + 8);
  v51(v13, v7);
  LOBYTE(v1) = sub_18F5215BC();
  v21 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v14;
  v22 = v14;
  v23 = v21;
  v21(v19, v22);
  v24 = nullsub_1;
  if ((v1 & 1) == 0)
  {
    return v24;
  }

  v25 = v55;
  v20(v13, v55, v7);
  v20(v11, v13, v7);
  v26 = v52;
  sub_18F5215AC();
  v51(v13, v7);
  v27 = v53;
  v28 = v25 + *(StructuredDataTask + 20);
  v29 = *v28;
  v30 = *(v28 + 16);
  sub_18F3A1BF4(v53);
  v31 = sub_18F5215CC();
  v32 = sub_18F52236C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v30 & 1) == 0)
  {
    if (!v29)
    {
      __break(1u);
      return v24;
    }

    goto LABEL_11;
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v56;
LABEL_11:
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v31, v32, v35, v29, "", v34, 2u);
      MEMORY[0x193ADD350](v34, -1, -1);
LABEL_12:

      v36 = v46;
      v37 = v47;
      (*(v46 + 16))(v45, v27, v47);
      sub_18F52161C();
      swift_allocObject();
      v38 = sub_18F52160C();
      (*(v36 + 8))(v27, v37);
      v23(v26, v44);
      v39 = v50;
      sub_18F3A3040(v25, v50, type metadata accessor for FetchStructuredDataTask);
      v40 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v41 = (v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      sub_18F3A30A0(v39, v42 + v40, type metadata accessor for FetchStructuredDataTask);
      *(v42 + v41) = v38;
      return sub_18F3A3014;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18F3A19DC()
{
  v0 = sub_18F52165C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = sub_18F5215DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_1ED7076B0);
  v12 = *(v1 + 16);
  v12(v6, v11, v0);
  v12(v4, v6, v0);
  sub_18F5215AC();
  (*(v1 + 8))(v6, v0);
  sub_18F5215CC();
  sub_18F52156C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18F3A1BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_18F52165C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v12 = sub_18F5215DC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = *(v5 + 16);
  v19(v11, v2, v3);
  v19(v9, v11, v3);
  sub_18F5215AC();
  (*(v5 + 8))(v11, v3);
  sub_18F5215CC();
  sub_18F52156C();
  return (*(v14 + 8))(v18, v12);
}

uint64_t sub_18F3A1DB4(uint64_t a1)
{
  v30 = a1;
  v1 = sub_18F5215EC();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18F52159C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18F52165C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v32 = sub_18F5215DC();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_1ED7076B0);
  v17 = *(v7 + 16);
  v17(v12, v16, v6);
  v17(v10, v12, v6);
  sub_18F5215AC();
  (*(v7 + 8))(v12, v6);
  v18 = sub_18F5215CC();
  sub_18F5215FC();
  v19 = sub_18F52235C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = *v30;
  if ((*(v30 + 16) & 1) == 0)
  {
    v22 = v31;
    if (v21)
    {
LABEL_11:

      sub_18F52162C();

      v24 = v28;
      v23 = v29;
      if ((*(v28 + 88))(v22, v29) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v22, v23);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v18, v19, v27, v21, v25, v26, 2u);
      MEMORY[0x193ADD350](v26, -1, -1);
LABEL_15:

      (*(v33 + 8))(v5, v34);
      return (*(v13 + 8))(v15, v32);
    }

    __break(1u);
  }

  v22 = v31;
  if (v21 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v21 = &v35;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18F3A2218(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v53 = a3;
  v51 = a2;
  sub_18F5215EC();
  OUTLINED_FUNCTION_0();
  v47 = v5;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v46 = v7 - v6;
  v52 = sub_18F52159C();
  OUTLINED_FUNCTION_0();
  v49 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v50 = v11 - v10;
  v12 = sub_18F52165C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = sub_18F5215DC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v28 = *(v14 + 16);
  v28(v20, a1, v12);
  v28(v18, v20, v12);
  v29 = v27;
  sub_18F5215AC();
  (*(v14 + 8))(v20, v12);
  v30 = v50;
  v31 = a1 + *((v53)(0) + 20);
  v32 = *v31;
  v33 = *(v31 + 16);
  v34 = sub_18F5215CC();
  sub_18F5215FC();
  v35 = sub_18F52235C();
  result = sub_18F52251C();
  v37 = v52;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v49 + 8))(v30, v37);
    return v23[1](v29, v21);
  }

  v53 = v23;
  v38 = v52;
  v45 = v29;
  if ((v33 & 1) == 0)
  {
    if (v32)
    {
      v40 = v47;
      v39 = v48;
LABEL_9:

      v41 = v46;
      sub_18F52162C();

      if ((*(v40 + 88))(v41, v39) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v40 + 8))(v41, v39);
        v42 = "";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v34, v35, v44, v32, v42, v43, 2u);
      MEMORY[0x193ADD350](v43, -1, -1);
      v37 = v38;
      v23 = v53;
      v29 = v45;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v32 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    v40 = v47;
    v39 = v48;
    if (v32 >> 16 <= 0x10)
    {
      v32 = &v54;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_18F3A2640(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_18F5215EC();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18F52159C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18F52165C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18F5215DC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  sub_18F5215AC();
  v18 = a1 + *(type metadata accessor for SignpostWrapper(0) + 20);
  v19 = *v18;
  v20 = *(v18 + 16);
  v21 = sub_18F5215CC();
  sub_18F5215FC();
  v33 = sub_18F52235C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v15 + 8))(v17, v14);
  }

  v30 = v15;
  v31 = v14;
  v32 = v6;
  if ((v20 & 1) == 0)
  {
    v23 = v36;
    if (v19)
    {
LABEL_9:

      v24 = v34;
      sub_18F52162C();

      v25 = v35;
      if ((*(v23 + 88))(v24, v35) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v24, v25);
        v26 = "";
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v21, v33, v28, v19, v26, v27, 2u);
      MEMORY[0x193ADD350](v27, -1, -1);
      v14 = v31;
      v6 = v32;
      v15 = v30;
      goto LABEL_13;
    }

    __break(1u);
  }

  v23 = v36;
  if (v19 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v19 = &v38;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18F3A2A3C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_18F5215EC();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18F52159C();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18F52165C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = sub_18F5215DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 16);
  v17(v12, a1, v6);
  v17(v10, v12, v6);
  v18 = v16;
  sub_18F5215AC();
  (*(v7 + 8))(v12, v6);
  v19 = v42;
  v20 = a1 + *(type metadata accessor for FetchStructuredDataTask() + 20);
  v21 = *v20;
  v22 = *(v20 + 16);
  v23 = sub_18F5215CC();
  sub_18F5215FC();
  v24 = sub_18F52235C();
  result = sub_18F52251C();
  v26 = v44;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v41 + 8))(v19, v26);
    return (*(v14 + 8))(v18, v13);
  }

  v36 = v13;
  v37 = v14;
  v27 = v44;
  v35 = v16;
  if ((v22 & 1) == 0)
  {
    if (v21)
    {
      v29 = v39;
      v28 = v40;
LABEL_9:

      v30 = v38;
      sub_18F52162C();

      if ((*(v29 + 88))(v30, v28) == *MEMORY[0x1E69E93E8])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v30, v28);
        v31 = "";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v23, v24, v33, v21, v31, v32, 2u);
      MEMORY[0x193ADD350](v32, -1, -1);
      v26 = v27;
      v13 = v36;
      v14 = v37;
      v18 = v35;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v21 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    v29 = v39;
    v28 = v40;
    if (v21 >> 16 <= 0x10)
    {
      v21 = &v45;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_18F3A2F04()
{
  sub_18F52165C();
  if (v0 <= 0x3F)
  {
    sub_18F3A2F90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F3A2F90()
{
  if (!qword_1EACD8088)
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACD8088);
    }
  }
}

uint64_t sub_18F3A3040(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18F3A30A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_18F3A312C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = OUTLINED_FUNCTION_5_67();
  v4(v3);
  OUTLINED_FUNCTION_4_73();
  v7 = *(v2 + (v6 & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v5, v7);
}

uint64_t objectdestroy_5Tm(uint64_t a1, void (*a2)(void))
{
  v4 = OUTLINED_FUNCTION_5_67();
  v6 = v5(v4) - 8;
  OUTLINED_FUNCTION_4_73();
  v8 = v2 + v7;
  sub_18F52165C();
  OUTLINED_FUNCTION_10_0();
  (*(v9 + 8))(v8);
  a2(*(v8 + *(v6 + 32)));

  return swift_deallocObject();
}

uint64_t sub_18F3A32E4(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_5_67();
  v5(v4);
  OUTLINED_FUNCTION_4_73();
  return sub_18F3A2218(v2 + v7, *(v2 + (v6 & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_18F3A3390(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_18F3A1DB4(v4);
}

uint64_t sub_18F3A33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_18F2C3548(a3, v21 - v9);
  v11 = sub_18F521EFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_18F0FFBBC(v10);
  }

  else
  {
    sub_18F521EEC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_18F521E1C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_18F52197C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = OUTLINED_FUNCTION_73_0();

      sub_18F0FFBBC(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18F0FFBBC(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return OUTLINED_FUNCTION_73_0();
}

uint64_t static AppNotificationEvent.onObservedChanged(bundleIdentifier:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3A3620()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = _s18AppManagerObserverO23ObservationStatusStreamCMa(0);
  swift_allocObject();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = sub_18F23BB80(v4, v3, v1, v2);
  v5[3] = v6;
  v5[4] = sub_18F1EB490();
  *v5 = v7;
  v8 = v0[1];

  return v8();
}

id sub_18F3A36F8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v6)
  {
    sub_18F3A56C8();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    return sub_18F3A4AEC(v3, v5, v6, v2, v1, v4);
  }

  else
  {
    if (qword_1EACCED38 != -1)
    {
      OUTLINED_FUNCTION_0_48();
      swift_once();
    }

    v8 = sub_18F52165C();
    __swift_project_value_buffer(v8, qword_1EAD0ABB0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v9 = sub_18F52163C();
    v10 = sub_18F52222C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v11 = 136315394;
      type metadata accessor for LNAppNotificationEventType(0);
      v12 = sub_18F52194C();
      v14 = sub_18F11897C(v12, v13, &v26);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F52279C();

      OUTLINED_FUNCTION_10_47();
      v24 = v16;
      v25 = v15;
      v19[0] = v2;
      v19[1] = v1;
      v20 = v3;
      v21 = v4;
      v22 = v5;
      v23 = 0;
      v17 = sub_18F3A3BCC(v19);
      MEMORY[0x193ADB000](v17);

      MEMORY[0x193ADB000](62, 0xE100000000000000);

      v18 = sub_18F11897C(v24, v25, &v26);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_18F0E9000, v9, v10, "No bundleIdentifier %s in %s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    return 0;
  }
}

AppIntents::AppNotificationEvent::EventType_optional __swiftcall AppNotificationEvent.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_18F3A3A38@<X0>(uint64_t *a1@<X8>)
{
  result = AppNotificationEvent.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AppNotificationEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  sub_18F52279C();

  OUTLINED_FUNCTION_10_47();
  v14 = v6;
  v15 = v5;
  v10[0] = v1;
  v10[1] = v2;
  v11 = v3;
  v12 = v9;
  v13 = v4;
  v7 = sub_18F3A3BCC(v10);
  MEMORY[0x193ADB000](v7);

  MEMORY[0x193ADB000](62, 0xE100000000000000);
  return v14;
}

uint64_t sub_18F3A3BCC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18F541F50;
  *(v5 + 32) = *&aCreated_4[8 * v3];
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  sub_18F1905C8();
  v6 = OUTLINED_FUNCTION_5_68();
  v8 = v7;

  if (v4)
  {
    v9 = OUTLINED_FUNCTION_5_68();
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18F541F50;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    *(v12 + 56) = v11;
    v6 = OUTLINED_FUNCTION_5_68();
  }

  return v6;
}

BOOL static AppNotificationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v10 && (sub_18F522D5C() & 1) == 0 || (sub_18F1BE430(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (sub_18F383214(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = v3 == v7 && v5 == v9;
    return v11 || (sub_18F522D5C() & 1) != 0;
  }

  return !v9;
}

uint64_t AppNotificationEvent.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_18F5219CC();
  sub_18F5219CC();

  if (!v3)
  {
    sub_18F522F1C();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_18F522F1C();
  }

  sub_18F522F1C();
  sub_18F3A52C8(a1, v3);
  if (!v4)
  {
    return sub_18F522F1C();
  }

LABEL_3:
  sub_18F522F1C();

  return sub_18F5219CC();
}

uint64_t AppNotificationEvent.hashValue.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[5];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 3);
  v10 = v3;
  sub_18F522EFC();
  AppNotificationEvent.hash(into:)(v5);
  return sub_18F522F4C();
}

uint64_t sub_18F3A3F44()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[5];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 3);
  v10 = v3;
  sub_18F522EFC();
  AppNotificationEvent.hash(into:)(v5);
  return sub_18F522F4C();
}

uint64_t sub_18F3A3FAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v27 = a1;
  sub_18F12A000();
  v6 = OUTLINED_FUNCTION_7_60();
  v7 = v6[2];
  if (v7 >= 2)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v8 = sub_18F522B3C();

    if (v8 <= 2)
    {
      if (v7 == 2)
      {
        v10 = 0;
      }

      else
      {
        if (v6[2] < 3uLL)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v24 = v6[9];
        v27 = v6[8];
        v28 = v24;
        result = OUTLINED_FUNCTION_7_60();
        v10 = result;
      }

      if (v6[2] >= 2uLL)
      {
        v26 = v6[6];
        v25 = v6[7];
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

        *a3 = v26;
        *(a3 + 8) = v25;
        *(a3 + 16) = v8;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 24) = v10;
        return result;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_1EACCED38 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v11 = sub_18F52165C();
  __swift_project_value_buffer(v11, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v12 = sub_18F52163C();
  v13 = sub_18F52221C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_18F11897C(a1, a2, &v27);
    *(v14 + 12) = 2080;
    v15 = MEMORY[0x193ADB2B0](v6, MEMORY[0x1E69E6158]);
    v17 = v16;

    v18 = sub_18F11897C(v15, v17, &v27);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_18F0E9000, v12, v13, "Failed to extract eventType - input %s split into %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350](v19, v20);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350](v21, v22);
  }

  else
  {
  }

  sub_18F1EB43C();
  swift_allocError();
  *v23 = 0;
  return swift_willThrow();
}

uint64_t AppNotificationEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_11_44();
  sub_18F522FAC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
    OUTLINED_FUNCTION_11_44();
    v5 = sub_18F522D6C();
    sub_18F3A3FAC(v5, v6, v13);

    v8 = v13[0];
    v9 = v13[1];
    v10 = v14;
    v12 = v15;
    v11 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 40) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AppNotificationEvent.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v7 = *(v1 + 24);
  v5 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F522FDC();
  v8[0] = v2;
  v8[1] = v3;
  v9 = v4;
  v10 = v7;
  v11 = v5;
  sub_18F3A3BCC(v8);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_18F522D8C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

Swift::Void __swiftcall AppNotificationEvent.send(_:)(Swift::String_optional a1)
{
  OUTLINED_FUNCTION_12_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0088);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_74(inited, xmmword_18F53F800);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _sSa10AppIntentsAA0A17NotificationEventVRszlE4sendyyF_0(inited);
  swift_setDeallocating();
  sub_18F17053C();
}

uint64_t _sSa10AppIntentsAA0A17NotificationEventVRszlE4sendyyF_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v44 - v6;
  v60 = MEMORY[0x1E69E7CC8];
  v7 = *(a1 + 16);
  for (i = a1 + 40; v7; --v7)
  {
    v9 = *(i + 32);
    v10 = *(i + 8);
    v11 = *i;
    v56[0] = *(i - 8);
    v56[1] = v11;
    v57 = v10;
    v58 = *(i + 16);
    v59 = v9;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F3A4BD0(&v60, v56);

    i += 48;
  }

  v12 = 0;
  v14 = v60 + 64;
  v13 = *(v60 + 64);
  v49 = v60;
  v15 = 1 << *(v60 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  *&v5 = 136315394;
  v44 = v5;
  v46 = v18;
  v47 = v60 + 64;
  if ((v16 & v13) != 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      do
      {
LABEL_10:
        v20 = __clz(__rbit64(v17)) | (v12 << 6);
        v21 = (*(v49 + 48) + 16 * v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(*(v49 + 56) + 8 * v20);
        v25 = qword_1EACCED38;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        if (v25 != -1)
        {
          swift_once();
        }

        v26 = sub_18F52165C();
        __swift_project_value_buffer(v26, qword_1EAD0ABB0);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v27 = sub_18F52163C();
        v28 = sub_18F52223C();

        v50 = v27;
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v56[0] = v45;
          *v29 = v44;
          *(v29 + 4) = sub_18F11897C(v22, v23, v56);
          *(v29 + 12) = 2080;
          v30 = MEMORY[0x193ADB2B0](v24, &type metadata for AppNotificationEvent);
          v32 = sub_18F11897C(v30, v31, v56);

          *(v29 + 14) = v32;
          v33 = v50;
          _os_log_impl(&dword_18F0E9000, v50, v28, "Sending events for %s: %s", v29, 0x16u);
          v34 = v45;
          swift_arrayDestroy();
          MEMORY[0x193ADD350](v34, -1, -1);
          MEMORY[0x193ADD350](v29, -1, -1);
        }

        else
        {
        }

        v35 = v48;
        v36 = sub_18F521EFC();
        v37 = v51;
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v36);
        v38 = swift_allocObject();
        v38[2] = 0;
        v38[3] = 0;
        v38[4] = v24;
        v38[5] = v22;
        v38[6] = v23;
        sub_18F2C3548(v37, v35);
        LODWORD(v37) = __swift_getEnumTagSinglePayload(v35, 1, v36);

        if (v37 == 1)
        {
          sub_18F0FFBBC(v35);
        }

        else
        {
          sub_18F521EEC();
          (*(*(v36 - 8) + 8))(v35, v36);
        }

        v39 = v38[2];
        swift_unknownObjectRetain();

        if (v39)
        {
          swift_getObjectType();
          v40 = sub_18F521E1C();
          v42 = v41;
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        sub_18F0FFBBC(v51);
        if (v42 | v40)
        {
          v52 = 0;
          v53 = 0;
          v54 = v40;
          v55 = v42;
        }

        v18 = v46;
        v14 = v47;
        v17 &= v17 - 1;
        swift_task_create();
      }

      while (v17);
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::Void __swiftcall AppNotificationEvent.send()()
{
  OUTLINED_FUNCTION_12_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0088);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_74(inited, xmmword_18F53F800);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _sSa10AppIntentsAA0A17NotificationEventVRszlE4sendyyF_0(inited);
  swift_setDeallocating();
  sub_18F17053C();
}

id sub_18F3A4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_18F5218AC();

  v9 = sub_18F5218AC();

  if (a6)
  {
    v10 = sub_18F521C8C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() eventWithType:a1 bundleIdentifier:v8 entityType:v9 instanceIdentifiers:v10];

  return v11;
}

void sub_18F3A4BD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v7)
  {
    v22 = *(a2 + 32);
    v9 = sub_18F19ED7C(v6, v7, *a1);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1697E0();
      v10 = v19;
    }

    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_18F1697E0();
      v10 = v20;
    }

    *(v10 + 16) = v11 + 1;
    v12 = v10 + 48 * v11;
    *(v12 + 32) = v3;
    *(v12 + 40) = v2;
    *(v12 + 48) = v4;
    *(v12 + 56) = v5;
    *(v12 + 64) = v22;
    *(v12 + 72) = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *a1;
    sub_18F2C0A4C();
    *a1 = v24[0];
  }

  else
  {
    if (qword_1EACCED38 != -1)
    {
      swift_once();
    }

    v13 = sub_18F52165C();
    __swift_project_value_buffer(v13, qword_1EAD0ABB0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v14 = sub_18F52163C();
    v15 = sub_18F52221C();

    if (os_log_type_enabled(v14, v15))
    {
      v23 = v6;
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v16 = 136315138;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F52279C();

      v29 = 0xD000000000000016;
      v30 = 0x800000018F52B2E0;
      v24[0] = v3;
      v24[1] = v2;
      v25 = v4;
      v26 = v5;
      v27 = v23;
      v28 = 0;
      v17 = sub_18F3A3BCC(v24);
      MEMORY[0x193ADB000](v17);

      MEMORY[0x193ADB000](62, 0xE100000000000000);

      v18 = sub_18F11897C(v29, v30, &v31);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_18F0E9000, v14, v15, "Cannot determine bundle identifier - not specified. Dropping %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x193ADD350](v21, -1, -1);
      MEMORY[0x193ADD350](v16, -1, -1);
    }
  }
}

void sub_18F3A4F08()
{
  OUTLINED_FUNCTION_2_88();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      sub_18F52244C();

      --v0;
    }

    while (v0);
  }
}

void sub_18F3A4F58()
{
  OUTLINED_FUNCTION_2_88();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F478C9C();
      if (v3)
      {
        sub_18F522F1C();
        sub_18F5219CC();
      }

      else
      {
        sub_18F522F1C();
      }

      sub_18F478C84();
      OUTLINED_FUNCTION_39_2();

      v2 += 56;
      --v0;
    }

    while (v0);
  }
}

void sub_18F3A5054()
{
  OUTLINED_FUNCTION_2_88();
  if (v0)
  {
    v2 = v1 + 56;
    do
    {
      v3 = v0;

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F478C84();
      OUTLINED_FUNCTION_39_2();

      sub_18F478E80();
      OUTLINED_FUNCTION_9_52();
      sub_18F478E80();
      OUTLINED_FUNCTION_9_52();
      sub_18F478E80();
      OUTLINED_FUNCTION_9_52();
      sub_18F478E80();
      OUTLINED_FUNCTION_9_52();
      sub_18F478E80();
      OUTLINED_FUNCTION_9_52();

      v2 += 88;
      --v0;
    }

    while (v3 != 1);
  }
}

uint64_t sub_18F3A51CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193ADC4F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_18F5219CC();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18F3A52C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193ADC4F0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F5219CC();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_18F3A5344()
{
  result = qword_1EACCE6E8;
  if (!qword_1EACCE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE6E8);
  }

  return result;
}

unint64_t sub_18F3A539C()
{
  result = qword_1EACD8098;
  if (!qword_1EACD8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8098);
  }

  return result;
}

uint64_t sub_18F3A53F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18F3A5430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_18F3A547C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F3A5558()
{
  result = qword_1EACD80A0;
  if (!qword_1EACD80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD80A0);
  }

  return result;
}

unint64_t sub_18F3A55AC()
{
  result = qword_1EACD80A8;
  if (!qword_1EACD80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD80A8);
  }

  return result;
}

uint64_t sub_18F3A5600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18F10DF80;

  return sub_18F23FB60(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_18F3A56C8()
{
  result = qword_1EACCE8F8;
  if (!qword_1EACCE8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACCE8F8);
  }

  return result;
}

void sub_18F3A5710(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 personaUniqueIdentifier];
    v5 = sub_18F5218DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t UserIdentity.personaUniqueIdentifier.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t SystemContext.userIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18F133F30();
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v3 = sub_18F10C01C(v2);

  if (v3)
  {
    v4 = *(v3 + 24);

    os_unfair_lock_lock((v4 + 24));
    v5 = [*(v4 + 16) userIdentity];
    os_unfair_lock_unlock((v4 + 24));
  }

  else
  {
    v5 = 0;
  }

  sub_18F3A5710(v5, a1);
}

_BYTE *storeEnumTagSinglePayload for SystemContext(_BYTE *result, int a2, int a3)
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

uint64_t RelevantIntentManager.updateRelevantIntents(_:)()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F3A6D78;

  return sub_18F3A5A5C();
}

uint64_t sub_18F3A5A5C()
{
  OUTLINED_FUNCTION_69();
  v0[34] = v1;
  v0[35] = v2;
  v0[33] = v3;
  v0[36] = *(type metadata accessor for RelevantIntent() - 8);
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3A5B24, 0, 0);
}

uint64_t sub_18F3A5B24()
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v1 = sub_18F5218DC();
  v3 = sub_18F10051C(v1, v2, 0);
  v0[39] = v3;
  v4 = LNDaemonApplicationXPCInterface();
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[22] = sub_18F3A6AF4;
  v0[23] = 0;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_18F38D7A4;
  v0[21] = &block_descriptor_11;
  v5 = _Block_copy(v0 + 18);
  v6 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0FECD4((v0 + 24), (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if (swift_dynamicCast())
  {
    v7 = v0[32];
    v8 = v0[33];
    v0[40] = v7;
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v0[36];
      sub_18F5228CC();
      sub_18F0F21A8(0, &qword_1EACCDD30);
      v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v12 = *(v10 + 72);
      do
      {
        v13 = v0[37];
        v14 = v0[38];
        sub_18F3A6C8C(v11, v14);
        sub_18F3A6C8C(v14, v13);
        sub_18F3A6940(v13);
        sub_18F3A6CF0(v14);
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
        v11 += v12;
        --v9;
      }

      while (v9);
    }

    v15 = v0[35];
    sub_18F0F21A8(0, &qword_1EACCDD30);
    v16 = sub_18F521C8C();
    v0[41] = v16;

    if (v15)
    {
      v15 = sub_18F5218AC();
    }

    v0[42] = v15;
    v0[2] = v0;
    v0[3] = sub_18F3A5FD8;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18F354F08;
    v0[13] = &block_descriptor_10;
    v0[14] = v17;
    [v7 updateRelevantIntents:v16 bundleIdentifier:v15 reply:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1ED6FE088 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED707760);
    v19 = sub_18F52163C();
    v20 = sub_18F52221C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_18F0E9000, v19, v20, "Cannot convert remote object proxy to LNDaemonApplicationInterface", v21, 2u);
      MEMORY[0x193ADD350](v21, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

    OUTLINED_FUNCTION_71();

    return v22();
  }
}

uint64_t sub_18F3A5FD8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_18F3A6190;
  }

  else
  {
    v2 = sub_18F3A60E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F3A60E4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  [v2 invalidate];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F3A6190()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[39];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t RelevantIntentManager.updateRelevantIntents(_:for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F3A62EC;

  return sub_18F3A5A5C();
}

uint64_t sub_18F3A62EC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t RelevantIntent.init<A>(_:relevance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  type metadata accessor for PreparedIntent();
  (*(v11 + 16))(v15, a1, a3);
  v16 = sub_18F10E0AC();
  v17 = sub_18F1194F4(v15, v16, a3, a4);
  (*(v11 + 8))(a1, a3);
  *a5 = v17;
  v18 = type metadata accessor for RelevantIntent();
  a5[1] = 0;
  a5[2] = 0;
  v19 = *(v18 + 24);
  sub_18F5205BC();
  OUTLINED_FUNCTION_0_55();
  return (*(v20 + 32))(a5 + v19, a2);
}

uint64_t type metadata accessor for RelevantIntent()
{
  result = qword_1EACCE6A8;
  if (!qword_1EACCE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RelevantIntent.init<A>(_:widgetKind:relevance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  OUTLINED_FUNCTION_11_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  type metadata accessor for PreparedIntent();
  (*(v15 + 16))(v19, a1, a5);
  v20 = *(a6 + 8);
  v21 = sub_18F10E0AC();
  v22 = sub_18F1194F4(v19, v21, a5, v20);
  (*(v15 + 8))(a1, a5);
  *a7 = v22;
  a7[1] = a2;
  a7[2] = a3;
  v23 = *(type metadata accessor for RelevantIntent() + 24);
  sub_18F5205BC();
  OUTLINED_FUNCTION_0_55();
  return (*(v24 + 32))(a7 + v23, a4);
}

uint64_t RelevantIntent.debugDescription.getter()
{
  v1 = 0xE000000000000000;
  v6 = 0;
  v7 = 0xE000000000000000;
  MEMORY[0x193ADB000](123, 0xE100000000000000);
  sub_18F0FD724(*v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  sub_18F52299C();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  MEMORY[0x193ADB000](32, 0xE100000000000000);
  v2 = v0[2];
  if (v2)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v1 = v0[2];
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](v3, v1);

  MEMORY[0x193ADB000](8250, 0xE200000000000000);
  type metadata accessor for RelevantIntent();
  sub_18F5205BC();
  sub_18F52299C();
  MEMORY[0x193ADB000](125, 0xE100000000000000);
  return v6;
}

void sub_18F3A68A4()
{
  type metadata accessor for PreparedIntent();
  if (v0 <= 0x3F)
  {
    sub_18F12ACC8();
    if (v1 <= 0x3F)
    {
      sub_18F5205BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_18F3A6940(void *a1)
{
  v2 = sub_18F5218AC();
  v3 = sub_18F0F21A8(0, &qword_1ED6FD860);
  sub_18F0FD724(*a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v17);
  v4 = v18;
  v5 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7);
  v11 = sub_18F33B63C(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (a1[2])
  {
    v12 = sub_18F5218AC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for RelevantIntent();
  v14 = sub_18F5205AC();
  v15 = [v13 initWithBundleIdentifier:v2 action:v11 widgetKind:v12 rkContext:v14];

  sub_18F3A6CF0(a1);
  return v15;
}

void sub_18F3A6AF4(void *a1)
{
  if (qword_1ED6FE088 != -1)
  {
    swift_once();
  }

  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1ED707760);
  v3 = a1;
  oslog = sub_18F52163C();
  v4 = sub_18F52221C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_18F522E8C();
    v9 = sub_18F11897C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18F0E9000, oslog, v4, "Failed to connect to linkd to update relevant intents: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x193ADD350](v6, -1, -1);
    MEMORY[0x193ADD350](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_18F3A6C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3A6CF0(uint64_t a1)
{
  v2 = type metadata accessor for RelevantIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OpenIntent.perform()(uint64_t a1)
{
  *(v1 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  *(v1 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3A6E70, 0, 0);
}

uint64_t sub_18F3A6E70()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v18 = v1;
  v3 = type metadata accessor for IntentDialog(0);
  *(v0 + 120) = 0u;
  *(v0 + 129) = 0u;
  *(v0 + 104) = 0u;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  *(v0 + 184) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_18F543360;
  *(v0 + 96) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158);
  v16 = v4[17];
  __swift_storeEnumTagSinglePayload(&v2[v16], 1, 1, v3);
  v2[v4[18]] = 1;
  v5 = v4[20];
  v17 = &v2[v4[19]];
  v2[v5] = 2;
  v6 = &v2[v4[21]];
  *(v6 + 25) = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  v7 = &v2[v4[22]];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = &v2[v4[23]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 1;
  v8[32] = 0;
  v9 = &v2[v4[24]];
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 64) = xmmword_18F543360;
  *(v9 + 80) = 0;
  v10 = &v2[v4[25]];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v14 = v4[26];
  v15 = v4[27];
  *&v2[v15] = 0;
  v11 = &v2[v4[29]];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *v2 = 1;
  sub_18F0FF628(v0 + 192, v11, &qword_1EACD0D70);
  v2[v5] = 2;
  sub_18F0FF628(v0 + 104, v6, &qword_1EACD0550);
  sub_18F0FF628(v0 + 232, v7, &qword_1EACD0D78);
  sub_18F138888(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3));
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 1;
  v8[32] = 0;
  sub_18F0FF628(v0 + 16, v9, &qword_1EACD0D80);
  sub_18F0FF628(v18, &v2[v16], &qword_1EACCF7A0);
  sub_18F0FF628(v0 + 152, v10, &qword_1EACD0D70);
  *&v2[v14] = 0;
  *v17 = 0;
  v17[1] = 0;
  *&v2[v15] = 0;
  *&v2[v4[28]] = 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_18F3A71A0()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return AppViewBridge.prepareViewState(for:)();
}

uint64_t AppViewBridge.prepareViewState(for:)()
{
  OUTLINED_FUNCTION_69();
  sub_18F521EBC();
  *(v0 + 16) = sub_18F521EAC();
  v2 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F377B04, v2, v1);
}

uint64_t sub_18F3A72B0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_16_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_75(v1);

  return AppViewBridge.entities(for:)();
}

uint64_t AppViewBridge.entities(for:)()
{
  OUTLINED_FUNCTION_31();
  v0[2] = v1;
  type metadata accessor for ViewEntityIdentifier();
  OUTLINED_FUNCTION_14_6();
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  OUTLINED_FUNCTION_10_4();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_12_3(v4);
  v5 = OUTLINED_FUNCTION_80_0();

  return v7(v5);
}

uint64_t sub_18F3A74AC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18F3A75F8, 0, 0);
  }
}

void sub_18F3A75F8()
{
  v1 = 0;
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v19 = v0[5];
  v20 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v18 = v2;
LABEL_2:
  while (1)
  {
    v6 = v1;
    if (v1 == v20)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = *(v3 + 72);
    ++v1;
    sub_18F3AA1D0(v0[7] + v7 + v8 * v6, v0[5], type metadata accessor for ViewEntityIdentifier);
    if (*(v4 + 16))
    {
      v9 = *(v19 + 56);
      v10 = MEMORY[0x193ADC4C0](*(v4 + 40), v9, 4);
      v11 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v10 = v12 + 1;
        if (*(*(v4 + 48) + 4 * v12) == v9)
        {
          sub_18F3A77F8(v0[5], v0[4]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F3AA178(0, *(v5 + 16) + 1, 1);
          }

          v14 = *(v5 + 16);
          v13 = *(v5 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_18F3AA178(v13 > 1, v14 + 1, 1);
          }

          v15 = v0[4];
          *(v5 + 16) = v14 + 1;
          sub_18F3A77F8(v15, v5 + v7 + v14 * v8);
          v2 = v18;
          goto LABEL_2;
        }
      }
    }

    sub_18F381788(v0[5]);
  }

  v16 = OUTLINED_FUNCTION_16_35();

  v17(v16);
}

uint64_t sub_18F3A77F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewEntityIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3A7864()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return AppViewBridge.actionForScene(executionIdentifier:completed:)();
}

uint64_t sub_18F3A7914()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_12_3(v5);

  return AppViewBridge.actionForScene(executionIdentifier:completed:)(v7, v3, v1);
}

uint64_t AppViewBridge.actionForScene(executionIdentifier:completed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3A79B8()
{
  OUTLINED_FUNCTION_69();
  (*(v0 + 16))();
  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t SceneActionsProvider.init<A>(aggregating:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = *(a3 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(result + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    *&v30 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v12 = (a1 + 32);
    do
    {
      v13 = *v12;
      v12 += 2;
      v14 = v13;
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      result = sub_18F5228AC();
      --v10;
    }

    while (v10);
    v15 = v30;
    v16 = *(a1 + 16);
  }

  else
  {
    v16 = 0;
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  *&v30 = v11;
LABEL_7:
  v18 = 16 * v17 + 40;
  while (v16 != v17)
  {
    if (v17 >= *(a1 + 16))
    {
      __break(1u);
      return result;
    }

    v19 = *(a1 + v18);
    v18 += 16;
    ++v17;
    if (v19)
    {

      MEMORY[0x193ADB260](v20);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F521D0C();
      }

      result = sub_18F521D6C();
      v11 = v30;
      goto LABEL_7;
    }
  }

  v22 = v28;
  v21 = v29;
  (*(v6 + 16))(v9, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80C8);
  if (swift_dynamicCast())
  {
    v23 = *(&v31 + 1);
    v24 = v32;
    __swift_project_boxed_opaque_existential_1Tm(&v30, *(&v31 + 1));
    v25 = (*(v24 + 16))(v23, v24);
    v27 = v26;
    (*(v6 + 8))(v22, v21);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }

  else
  {
    (*(v6 + 8))(v22, v21);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    result = sub_18F0EF1A8(&v30, &qword_1EACD80D0);
    v25 = 0;
    v27 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v11;
  *(a4 + 16) = 0;
  *(a4 + 24) = v25;
  *(a4 + 32) = v27;
  return result;
}

uint64_t sub_18F3A7D04()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_6_1(&unk_18F560AD0);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_75(v2);

  return v6(v4);
}

uint64_t sub_18F3A7DA0(void *a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
    swift_allocError();
    *v3 = a1;
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80F0);
    return sub_18F521E2C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80F0);

    return sub_18F521E3C();
  }
}

uint64_t sub_18F3A7E5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F3A7E7C, 0, 0);
}

uint64_t sub_18F3A7E7C()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_18F3A7F4C;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_18F3A7F4C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F3A8068, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v7();
  }
}

void sub_18F3A808C(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 104));
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80E8);
  v5 = sub_18F3A8444(v3 + *(v4 + 28), a1);
  v7 = v6;
  v8 = ~v6;
  os_unfair_lock_unlock(v3);
  v9 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v11 = v10;
  if (v8)
  {
    sub_18F3AB044(v5, v7 & 1);
    if (qword_1ED6FDA70 != -1)
    {
      swift_once();
    }

    v12 = sub_18F52165C();
    __swift_project_value_buffer(v12, qword_1ED7076B0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v13 = sub_18F52163C();
    v14 = sub_18F52220C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136446210;
      v17 = sub_18F11897C(v9, v11, v24);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_18F0E9000, v13, v14, "AsyncSignal %{public}s already completed, returning result", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x193ADD350](v16, -1, -1);
      MEMORY[0x193ADD350](v15, -1, -1);
    }

    else
    {
    }

    sub_18F3A7DA0(v5, v7 & 1);
    sub_18F3AB050(v5, v7);

    sub_18F3AB050(v5, v7);
  }

  else
  {
    if (qword_1ED6FDA70 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED7076B0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    oslog = sub_18F52163C();
    v19 = sub_18F52220C();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 136446210;
      v22 = sub_18F11897C(v9, v11, v24);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_18F0E9000, oslog, v19, "AsyncSignal %{public}s not completed, storing continuation", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x193ADD350](v21, -1, -1);
      MEMORY[0x193ADD350](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18F3A8444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80F8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v10 - v5);
  sub_18F3AB074(a1, v10 - v5);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_18F0EF1A8(a1, &qword_1EACD80F8);
      v8 = *v6;
      swift_storeEnumTagMultiPayload();
      return v8;
    case 2:
      sub_18F0EF1A8(a1, &qword_1EACD80F8);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80F0);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
      return 0;
    case 3:
      __break(1u);
      goto LABEL_6;
    default:
LABEL_6:
      __break(1u);
      return result;
  }
}

uint64_t sub_18F3A85D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F3A85F0, 0, 0);
}

uint64_t sub_18F3A85F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_6_1(&unk_18F560AF8);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_18F1AC5EC;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t sub_18F3A8694()
{
  result = sub_18F5218DC();
  qword_1EACD80B8 = result;
  qword_1EACD80C0 = v1;
  return result;
}

uint64_t *sub_18F3A86C4()
{
  if (qword_1EACCF5B8 != -1)
  {
    OUTLINED_FUNCTION_0_114();
  }

  return &qword_1EACD80B8;
}

uint64_t static AppViewBridgeError.errorDomain.getter()
{
  if (qword_1EACCF5B8 != -1)
  {
    OUTLINED_FUNCTION_0_114();
  }

  swift_beginAccess();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_22();
}

uint64_t static AppViewBridgeError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EACCF5B8 != -1)
  {
    OUTLINED_FUNCTION_0_114();
  }

  swift_beginAccess();
  qword_1EACD80B8 = a1;
  qword_1EACD80C0 = a2;
}

uint64_t (*static AppViewBridgeError.errorDomain.modify())()
{
  if (qword_1EACCF5B8 != -1)
  {
    OUTLINED_FUNCTION_0_114();
  }

  OUTLINED_FUNCTION_22();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F3A8864@<X0>(void *a1@<X8>)
{
  sub_18F3A86C4();
  swift_beginAccess();
  v2 = qword_1EACD80C0;
  *a1 = qword_1EACD80B8;
  a1[1] = v2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3A88B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3A86C4();
  swift_beginAccess();
  qword_1EACD80B8 = v2;
  qword_1EACD80C0 = v1;
}

uint64_t AppViewBridgeError.errorCode.getter()
{
  sub_18F3AA198(v0, v2);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    sub_18F2B7758(v2);
    return 2;
  }

  else if (v2[3] | v2[4] | v2[0] | v2[2] | v2[1])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t AppViewBridgeError.errorUserInfo.getter()
{
  sub_18F3AA198(v0, &v15);
  if (!v18)
  {
    v5 = v15;
    if (v17)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *&v15 = 14888;
      *(&v15 + 1) = 0xE200000000000000;
      v14[0] = v16;
      v8 = sub_18F522C9C();
      MEMORY[0x193ADB000](v8);

      MEMORY[0x193ADB000](41, 0xE100000000000000);
      v7 = *(&v15 + 1);
      v6 = v15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = sub_18F5218DC();
    *(inited + 40) = v10;
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    sub_18F52279C();

    *&v15 = 0xD000000000000011;
    *(&v15 + 1) = 0x800000018F52B350;
    v11 = static AppIntent._identifier.getter(v5);
    MEMORY[0x193ADB000](v11);

    MEMORY[0x193ADB000](v6, v7);

    MEMORY[0x193ADB000](0x6F6620746F6E2022, 0xEB00000000646E75);
    v12 = v15;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    return sub_18F5216CC();
  }

  sub_18F2B7758(&v15);
  sub_18F3AA198(v0, &v15);
  if (v18 != 1)
  {
    sub_18F2B7758(&v15);
    return sub_18F5216CC();
  }

  sub_18F0FD0B4(&v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_18F53F800;
  *(v1 + 32) = sub_18F5218DC();
  *(v1 + 40) = v2;
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000001FLL, 0x800000018F52B330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  sub_18F52299C();
  MEMORY[0x193ADB000](34, 0xE100000000000000);
  v3 = v15;
  *(v1 + 72) = MEMORY[0x1E69E6158];
  *(v1 + 48) = v3;
  v4 = sub_18F5216CC();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v4;
}

uint64_t sub_18F3A8CA8(uint64_t a1)
{
  v2 = sub_18F3AAFEC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F3A8CE4(uint64_t a1)
{
  v2 = sub_18F3AAFEC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t AppViewIntentNode.intent.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_18F3A8D5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return sub_18F0F693C(v2);
}

uint64_t sub_18F3A8D74(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  sub_18F0F693C(*a1);
  result = sub_18F0F689C(v5);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t AppViewIntentNode.perform.getter()
{
  v0 = OUTLINED_FUNCTION_56();
  sub_18F0F693C(v0);
  return OUTLINED_FUNCTION_56();
}

uint64_t AppViewIntentNode.perform.setter()
{
  OUTLINED_FUNCTION_18_7();
  result = sub_18F0F689C(*(v1 + 16));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_18F3A8E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v7 = sub_18F52254C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = *(a5 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3A8F6C, 0, 0);
}

uint64_t sub_18F3A8F6C()
{
  OUTLINED_FUNCTION_29();
  sub_18F0FD724(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  v1 = swift_dynamicCast();
  v2 = v0[11];
  if (v1)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v6 = v0[9];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[11]);
    (*(v4 + 32))(v3, v5, v2);
    v16 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_18F3A91B0;
    v8 = v0[16];
    v9 = v0[7];

    return v16(v9, v8);
  }

  else
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v0[11]);
    (*(v12 + 8))(v11, v13);
    sub_18F133EDC();
    swift_allocError();
    *v14 = 3;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 7;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v15();
  }
}

uint64_t sub_18F3A91B0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_18F3A9334;
  }

  else
  {
    v7 = sub_18F3A92B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F3A92B0()
{
  OUTLINED_FUNCTION_69();
  (*(v0[15] + 8))(v0[16], v0[11]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3A9334()
{
  OUTLINED_FUNCTION_69();
  (*(v0[15] + 8))(v0[16], v0[11]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t AppViewEntityNode.fullyQualifiedIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_13_47();
  sub_18F3AA1D0(v2, v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_18F0FD0B4(v6, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    AppEntity.fullyQualifiedIdentifier.getter(v9, v10, a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v12 = *(v6 + 2);
    v13 = *(v6 + 3);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
    *a1 = *v6;
    a1[2] = v12;
    a1[3] = v13;
    return sub_18F0EF1A8(v6 + v14, &qword_1EACD32D0);
  }

  else
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t AppViewEntityNode.interactionId.setter(int a1)
{
  result = type metadata accessor for AppViewEntityNode();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AppViewEntityNode.state.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for AppViewEntityNode();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppViewEntityNode.state.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for AppViewEntityNode();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AppViewEntityNode.init(fullyQualifiedIdentifier:interactionId:state:)()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  v4 = *v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
  v6 = OUTLINED_FUNCTION_30_33();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppViewEntityNode();
  *(v2 + *(result + 20)) = v0;
  *(v2 + *(result + 24)) = v4;
  return result;
}

uint64_t AppViewEntityNode.init(entity:state:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_18F0FD724(a1, a3);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  AppEntity.fullyQualifiedIdentifier.getter(v6, v7, v16);
  v10 = v16[0];
  v11 = v16[1];
  sub_18F522EFC();
  static AppValue._identifier.getter(v10, *(v11 + 8));
  sub_18F5219CC();

  sub_18F5219CC();
  v12 = sub_18F522F4C();

  if (v12 < 0 && (v14 = __OFSUB__(0, v12), v12 = -v12, v14))
  {
    __break(1u);
  }

  else
  {
    v15 = type metadata accessor for AppViewEntityNode();
    *(a3 + *(v15 + 20)) = v12;
    *(a3 + *(v15 + 24)) = v5;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t sub_18F3A9884()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return AppViewBridge.prepareViewState(for:)();
}

uint64_t sub_18F3A9910()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F130C90;

  return AppViewBridge.entities(for:)();
}

uint64_t sub_18F3A99BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F3AB1A0;

  return AppViewBridge.actionForScene(executionIdentifier:completed:)();
}

uint64_t sub_18F3A9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18F312410;

  return AppViewBridge.actionForScene(executionIdentifier:completed:)(v6, a2, a3);
}

uint64_t BSActionWrapper.completion.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t BSActionWrapper.init(action:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SceneActionsProvider.actions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SceneActionsProvider.completed()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 32);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3A9C08()
{
  OUTLINED_FUNCTION_31_38();
  v17 = v1;
  OUTLINED_FUNCTION_29();
  if (qword_1EACCDDB0 != -1)
  {
    swift_once();
  }

  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1EAD0AB40);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F52163C();
  v4 = sub_18F52223C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[2];
  v6 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = sub_18F111F70(v7);
    *(v8 + 12) = 2048;
    *(v8 + 14) = sub_18F111F70(v6);

    _os_log_impl(&dword_18F0E9000, v3, v4, "Completing provider with %ld actions(s) and %ld completion(s)", v8, 0x16u);
    MEMORY[0x193ADD350](v8, -1, -1);
  }

  else
  {
  }

  result = sub_18F111F70(v0[3]);
  v0[5] = result;
  if (!result)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_42_1();

    __asm { BRAA            X1, X16 }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[3];
    v0[6] = 0;
    v0[7] = 0;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193ADBE10](0);
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v0[8] = v11;
    OUTLINED_FUNCTION_6_1(&unk_18F5607A8);
    v16 = v14;
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_1_91(v15);

    return v16();
  }

  return result;
}

uint64_t sub_18F3A9E44()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_18F3AA044;
  }

  else
  {
    v7 = sub_18F3A9F44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F3A9F44()
{
  OUTLINED_FUNCTION_21();

  v1 = OUTLINED_FUNCTION_27_36();
  if (v2)
  {
    if (v0[6])
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_71();

    return v3();
  }

  else
  {
    v0[7] = v1;
    v5 = v0[3];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193ADBE10]();
    }

    else
    {
      v6 = *(v5 + 8 * v1 + 32);
    }

    v0[8] = v6;
    OUTLINED_FUNCTION_6_1(&unk_18F5607A8);
    v9 = v7;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_1_91();

    return v9();
  }
}

uint64_t sub_18F3AA044()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[6];

  v2 = v0[10];
  if (v1)
  {

    v2 = v0[6];
  }

  v3 = OUTLINED_FUNCTION_27_36();
  if (v4)
  {
    if (v2)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    v0[6] = v2;
    v0[7] = v3;
    v7 = v0[3];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193ADBE10]();
    }

    else
    {
      v8 = *(v7 + 8 * v3 + 32);
    }

    v0[8] = v8;
    OUTLINED_FUNCTION_6_1(&unk_18F5607A8);
    v11 = v9;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_1_91();

    return v11();
  }
}

uint64_t sub_18F3AA1D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

unint64_t sub_18F3AA230()
{
  result = qword_1EACD80D8;
  if (!qword_1EACD80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD80D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A15ViewBridgeErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_18F3AA2A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F3AA2DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AppViewBridge.entities.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_14_6();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_12_3(v2);
  v4 = OUTLINED_FUNCTION_80_0();

  return v6(v4);
}

uint64_t dispatch thunk of AppViewBridge.intents.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_14_6();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_12_3(v2);
  v4 = OUTLINED_FUNCTION_80_0();

  return v6(v4);
}

uint64_t dispatch thunk of AppViewBridge.provider(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_14_6();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_1(v13);
  *v14 = v15;
  v14[1] = sub_18F3AA678;

  return (v17)(a1, a2, a3, a4 & 1, a5, a6);
}

uint64_t sub_18F3AA678()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_80_0();

  return v4(v3);
}

uint64_t dispatch thunk of AppViewBridge.prepareViewState(for:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_10_4();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_75(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AppViewBridge.entities(for:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_10_4();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_13_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_75(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AppViewBridge.actionForScene(executionIdentifier:completed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_69(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_4();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_13_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_4_75(v16);
  OUTLINED_FUNCTION_42_1();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

{
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_69(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_4();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_13_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_4_75(v16);
  OUTLINED_FUNCTION_42_1();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of AppViewBridgeInternal.actionsForScene<A>(performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_31_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_69(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_10_4();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_13_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_4_75(v16);
  OUTLINED_FUNCTION_42_1();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

unint64_t sub_18F3AAFEC()
{
  result = qword_1EACD80E0;
  if (!qword_1EACD80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD80E0);
  }

  return result;
}

id sub_18F3AB044(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_18F3AB050(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_18F3AB068(a1, a2 & 1);
  }
}

void sub_18F3AB068(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_18F3AB074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3AB0E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_18_7();
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_13_1(v6);
  *v7 = v8;
  v7[1] = sub_18F0FC870;

  return sub_18F3A8E4C(v2, v0, v5, v4, v3);
}

uint64_t sub_18F3AB1A4()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v0, qword_1EACD8100);
  v1 = __swift_project_value_buffer(v0, qword_1EACD8100);
  return TypeDisplayRepresentation.init(stringLiteral:)(v1);
}

uint64_t static DateInterval.typeDisplayRepresentation.getter()
{
  if (qword_1EACCF5C0 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, qword_1EACD8100);
  swift_beginAccess();
  return sub_18F3AB7F8();
}

uint64_t static DateInterval.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1EACCF5C0 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, qword_1EACD8100);
  swift_beginAccess();
  sub_18F19092C(a1, v3);
  swift_endAccess();
  return sub_18F1154F0(a1, type metadata accessor for TypeDisplayRepresentation);
}

uint64_t (*static DateInterval.typeDisplayRepresentation.modify())()
{
  if (qword_1EACCF5C0 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, qword_1EACD8100);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t DateInterval.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_18F52187C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  [v8 setDateStyle_];
  [v8 setTimeStyle_];
  sub_18F52186C();
  sub_18F52185C();
  v9 = sub_18F52073C();
  v10 = [v8 stringFromDateInterval_];

  if (v10)
  {
    sub_18F5218DC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  sub_18F52194C();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v11 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v11);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v15);
  *(a1 + v19[7]) = xmmword_18F540410;
  *(a1 + v19[8]) = 0;
  v26 = v19[9];

  *(a1 + v26) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  sub_18F0FF7A4();
  return sub_18F0FF7A4();
}

uint64_t static DateInterval.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateInterval.DateIntervalFromStringResolver();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_18F520DBC();
  sub_18F520FCC();
  sub_18F3AB7F8();
  sub_18F3AB854(v5, a1);
  return sub_18F1154F0(v7, type metadata accessor for DateInterval.DateIntervalFromStringResolver);
}

uint64_t type metadata accessor for DateInterval.DateIntervalFromStringResolver()
{
  result = qword_1EACD8160;
  if (!qword_1EACD8160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F3AB7F8()
{
  OUTLINED_FUNCTION_79();
  v2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_18F3AB854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval.DateIntervalFromStringResolver();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3AB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_18F520DEC();
  OUTLINED_FUNCTION_10(v6);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = sub_18F520EFC();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F0);
  OUTLINED_FUNCTION_10(v8);
  v5[31] = swift_task_alloc();
  v9 = sub_18F520F1C();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3ABA70, 0, 0);
}

uint64_t sub_18F3ABA70()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = [objc_allocWithZone(MEMORY[0x1E6999A90]) initWithScannerType:2 passiveIntent:0];
  v0[35] = v5;
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  sub_18F520F0C();
  sub_18F520EEC();
  (*(v4 + 8))(v2, v3);
  v6 = sub_18F520EAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = v0[31];
  if (EnumTagSinglePayload == 1)
  {
    sub_18F3ACC94(v0[31]);
  }

  else
  {
    v9 = sub_18F520E9C();
    v11 = v10;
    (*(*(v6 - 8) + 8))(v8, v6);
    sub_18F3ACD0C(v9, v11, v5);
  }

  v13 = v0[22];
  v12 = v0[23];
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v0[22];
  }

  v15 = 7;
  if (((v12 >> 60) & ((v13 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v0[10] = 15;
  v0[11] = v15 | (v14 << 16);
  v0[12] = v13;
  v0[13] = v12;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F8);
  sub_18F1B8B98(&qword_1EACD7700, &qword_1EACD76F8);
  sub_18F12A000();
  v16 = sub_18F52246C();
  v18 = v17;
  v19 = swift_task_alloc();
  v0[36] = v19;
  v19[2] = v13;
  v19[3] = v12;
  v19[4] = v16;
  v19[5] = v18;
  v19[6] = v5;
  v20 = swift_task_alloc();
  v0[37] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7708);
  *v20 = v0;
  v20[1] = sub_18F3ABD78;

  return MEMORY[0x1EEE6DDE0](v0 + 16);
}

uint64_t sub_18F3ABD78()
{

  return MEMORY[0x1EEE6DFA0](sub_18F3ABEBC, 0, 0);
}

uint64_t sub_18F3ABEBC()
{
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F541F50;
  strcpy((inited + 32), "DateDuration");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  strcpy((inited + 48), "TimeDuration");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v45 = sub_18F111F70(v1);
  if (v45)
  {
    v3 = 0;
    v44 = v1 & 0xC000000000000001;
    v42 = inited;
    v43 = v1;
    do
    {
      sub_18F1C3ED4(v3, v44 == 0, v1);
      if (v44)
      {
        v4 = MEMORY[0x193ADBE10](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
      }

      v7 = [v4 type];
      v8 = sub_18F5218DC();
      v10 = v9;

      *(v0 + 112) = v8;
      *(v0 + 120) = v10;
      v11 = swift_task_alloc();
      *(v11 + 16) = v0 + 112;
      LOBYTE(v8) = sub_18F2F0C1C(sub_18F16C86C, v11, inited);

      if (v8)
      {
        *(v0 + 304) = 0;
        v12 = sub_18F520D7C();
        v13 = sub_18F520F9C();
        *(v0 + 136) = 0u;
        *(v0 + 152) = 0u;
        v14 = [v5 extractStartDate:v0 + 136 startTimezone:v0 + 144 endDate:v0 + 152 endTimezone:v0 + 160 allDayRef:v0 + 304 referenceDate:v12 referenceTimezone:v13];

        v16 = *(v0 + 152);
        v15 = *(v0 + 160);
        v17 = *(v0 + 136);
        v18 = *(v0 + 144);
        if (v14)
        {
          v41 = v15;
          v19 = v16;
          v40 = v18;
          if (v17)
          {
            v39 = v17;
            [v39 timeIntervalSinceReferenceDate];
            if (v19)
            {
              v35 = *(v0 + 272);
              v34 = *(v0 + 280);
              v36 = *(v0 + 264);
              v46 = *(v0 + 256);
              v37 = *(v0 + 168);

              swift_setDeallocating();
              sub_18F1704EC();
              [v19 timeIntervalSinceReferenceDate];
              sub_18F520D6C();
              sub_18F520D6C();
              sub_18F52074C();

              (*(v36 + 8))(v35, v46);
              v38 = sub_18F52075C();
              __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);

              goto LABEL_17;
            }
          }
        }

        else
        {
          v20 = v15;
          v21 = v16;
          v22 = v18;
          v23 = v17;
        }

        inited = v42;
        v1 = v43;
      }

      else
      {
      }

      ++v3;
    }

    while (v6 != v45);
  }

  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  v27 = *(v0 + 256);
  v26 = *(v0 + 264);

  swift_setDeallocating();
  sub_18F1704EC();

  (*(v26 + 8))(v25, v27);
  sub_18F52075C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
LABEL_17:

  v32 = *(v0 + 8);

  return v32();
}

void sub_18F3AC2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = objc_opt_self();
  v14 = sub_18F5218AC();
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_18F370540;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F36F3D0;
  aBlock[3] = &block_descriptor_12;
  v17 = _Block_copy(aBlock);

  [v13 scanString:v14 range:a4 configuration:a5 completionBlock:{v19, v17}];
  _Block_release(v17);
}

uint64_t DateInterval.DateIntervalFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for DateInterval.DateIntervalFromStringResolver() + 20);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18F10DF80;

  return sub_18F3AB8B8(a1, a2, a3, v3, v3 + v8);
}

uint64_t static DateInterval.DateIntervalFromStringResolver.== infix(_:_:)()
{
  OUTLINED_FUNCTION_79();
  if (sub_18F520D9C())
  {
    type metadata accessor for DateInterval.DateIntervalFromStringResolver();

    JUMPOUT(0x193ADA5A0);
  }

  return 0;
}

uint64_t DateInterval.DateIntervalFromStringResolver.hash(into:)()
{
  sub_18F520DEC();
  OUTLINED_FUNCTION_2_89();
  sub_18F10F868(v0, v1);
  sub_18F52178C();
  type metadata accessor for DateInterval.DateIntervalFromStringResolver();
  sub_18F520FDC();
  OUTLINED_FUNCTION_1_92();
  sub_18F10F868(v2, v3);
  return sub_18F52178C();
}

uint64_t DateInterval.DateIntervalFromStringResolver.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F520DEC();
  OUTLINED_FUNCTION_2_89();
  sub_18F10F868(v0, v1);
  sub_18F52178C();
  type metadata accessor for DateInterval.DateIntervalFromStringResolver();
  sub_18F520FDC();
  OUTLINED_FUNCTION_1_92();
  sub_18F10F868(v2, v3);
  sub_18F52178C();
  return sub_18F522F4C();
}

uint64_t sub_18F3AC79C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18F13B9C4;

  return DateInterval.DateIntervalFromStringResolver.resolve(from:context:)(a1, v4, v5);
}

uint64_t sub_18F3AC850()
{
  sub_18F522EFC();
  sub_18F520DEC();
  sub_18F10F868(&qword_1EACD7620, MEMORY[0x1E6969530]);
  sub_18F52178C();
  sub_18F520FDC();
  sub_18F10F868(&qword_1EACD7628, MEMORY[0x1E6969BC0]);
  sub_18F52178C();
  return sub_18F522F4C();
}

uint64_t static DateInterval.persistentIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EACD8118;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v0;
}

uint64_t static DateInterval.persistentIdentifier.setter()
{
  OUTLINED_FUNCTION_79();
  swift_beginAccess();
  qword_1EACD8118 = v1;
  off_1EACD8120 = v0;
}

uint64_t sub_18F3ACA50(uint64_t a1)
{
  result = sub_18F10F868(&qword_1EACD8130, type metadata accessor for DateInterval.DateIntervalFromStringResolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3ACB0C(uint64_t a1)
{
  result = sub_18F10F868(&qword_1EACD8140, MEMORY[0x1E6968130]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3ACB64(uint64_t a1)
{
  result = sub_18F10F868(&qword_1EACD8148, MEMORY[0x1E6968130]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F3ACBC0(void *a1)
{
  v2 = MEMORY[0x1E6968130];
  a1[1] = sub_18F10F868(&qword_1EACD8128, MEMORY[0x1E6968130]);
  a1[2] = sub_18F10F868(&qword_1EACD8150, v2);
  result = sub_18F10F868(&qword_1EACD8158, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_18F3ACC94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18F3ACD0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_18F5218AC();

  [a3 setLanguage_];
}

uint64_t sub_18F3ACD78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a1 - 8);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for DriverSequence();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3ACEA8, 0, 0);
}

uint64_t sub_18F3ACEA8()
{
  (*(v0[5] + 16))(v0[6], v0[4], v0[2]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_18F3ACF60;

  return sub_18F452D00();
}

uint64_t sub_18F3ACF60()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_18F3AD148;
  }

  else
  {
    v2 = sub_18F3AD074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F3AD074()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  swift_getWitnessTable();
  v4 = sub_18F45319C(v3);
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_18F3AD148()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntentParameter<>.DurationUnit.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_18F522B3C();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t IntentParameter<>.DurationUnit.rawValue.getter()
{
  result = 0x7372756F68;
  switch(*v0)
  {
    case 1:
      v2 = 0x736F7263696DLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
    case 2:
      v2 = 0x73696C6C696DLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
    case 3:
      return 0x736574756E696DLL;
    case 4:
      v3 = 1869504878;
      goto LABEL_8;
    case 5:
      v3 = 1868786032;
LABEL_8:
      result = v3 | 0x6F63657300000000;
      break;
    case 6:
      result = 0x73646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F3AD384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18F3AD3F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_18F3AD464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18F3AD4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18F3AD550@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter<>.DurationUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static IntentParameter<>.DurationUnit.allCases.getter()
{
  type metadata accessor for IntentParameter<>.DurationUnit();
  sub_18F522CAC();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 50462976;
  *(v1 + 4) = 1284;
  *(v1 + 6) = 6;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F3AD610@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.DurationUnit.allCases.getter();
  *a1 = result;
  return result;
}

_BYTE *sub_18F3AD65C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v55 = v24;
  v57 = v26;
  v58 = v25;
  v59 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v33);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v34 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_28_0();
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  sub_18F116908(v29, v21, &qword_1EACCF7A8);
  v46 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_106(v46, v47, v42);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    v49 = OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_106(v49, v50, v42);
    if (!v48)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v44 + 32))(v20, v21, v42);
  }

  (*(v36 + 16))(v39, v58, v34);
  OUTLINED_FUNCTION_22_0(&a14);
  v55();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v57, v54, &qword_1EACCF7A0);
  v51 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v56, v52, v53, v51);
  OUTLINED_FUNCTION_11_17();
  sub_18F116B3C();

  sub_18F0EF148(v57, &qword_1EACCF7A0);
  (*(v36 + 8))(v58, v34);
  OUTLINED_FUNCTION_27_0(v59);
  OUTLINED_FUNCTION_27_0(v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:capabilities:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v54 = v23;
  v25 = v24;
  v56 = v27;
  v57 = v26;
  v58 = v28;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v34);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  v46 = v45 - v44;

  sub_18F116908(v30, v20, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_23_5(v20);
  if (v47)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v20);
    if (!v47)
    {
      sub_18F0EF148(v20, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v42 + 32))(v46, v20, v40);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_48_18(v57, v55);
  v51 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(v51, &a18);
  v59[3] = v25;
  v59[4] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v53 = *(v25 - 8);
  (*(v53 + 16))(boxed_opaque_existential_1, v56, v25);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v53 + 8))(v56, v25);
  OUTLINED_FUNCTION_30_2(v57);
  OUTLINED_FUNCTION_30_2(v58);
  OUTLINED_FUNCTION_30_2(v30);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53_13(v23, v24, &a12);
  *(v26 - 256) = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v87 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v37);
  v38 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  v91 = v43 - v42;
  OUTLINED_FUNCTION_27_37();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v45);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v49 = OUTLINED_FUNCTION_51(v48);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_75_0();
  v56 = sub_18F520B3C();
  v57 = OUTLINED_FUNCTION_10(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  v58 = *(v32 + 16);
  if (v58)
  {
    v80 = AssociatedTypeWitness;
    v81 = v28;
    OUTLINED_FUNCTION_32_1();
    v61 = v59 + v60;
    v62 = *(v51 + 72);
    v90 = (v40 + 32);
    v63 = MEMORY[0x1E69E7CC0];
    v64 = &qword_1EACD0360;
    v89 = v38;
    v88 = v62;
    do
    {
      sub_18F116908(v61, v20, v64);
      sub_18F178778(v20, v54);
      OUTLINED_FUNCTION_106(v54, 1, v38);
      if (v65)
      {
        sub_18F0EF148(v54, v64);
      }

      else
      {
        v66 = v64;
        v67 = *v90;
        OUTLINED_FUNCTION_46_20();
        v67();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18_30();
          sub_18F167ED8();
          v63 = v73;
        }

        v70 = *(v63 + 16);
        v69 = *(v63 + 24);
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_30_34(v69);
          sub_18F167ED8();
          v63 = v74;
        }

        *(v63 + 16) = v70 + 1;
        OUTLINED_FUNCTION_8_54();
        v38 = v89;
        (v67)(v63 + v71 + *(v72 + 72) * v70, v91, v89);
        v62 = v88;
        v64 = v66;
      }

      v61 += v62;
      --v58;
    }

    while (v58);

    v75 = v87;
    v28 = v81;
    AssociatedTypeWitness = v80;
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
    v75 = v87;
  }

  v92[5] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810);
  OUTLINED_FUNCTION_41_20();
  v76 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v82, v76 ^ 1u, 1, AssociatedTypeWitness);
  v92[3] = v83;
  v92[4] = v84;
  __swift_allocate_boxed_opaque_existential_1(v92);
  v28();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_48_18(v30, v85);
  v77 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v86, v78, v79, v77);
  OUTLINED_FUNCTION_42_17();
  sub_18F116B3C();

  OUTLINED_FUNCTION_30_2(v30);
  sub_18F0EF148(v75, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_18F3B194C()
{
  sub_18F1B8B98(&qword_1ED6FC008, &qword_1EACD8200);
  sub_18F1B8B98(qword_1ED6FC010, &qword_1EACD8208);

  return sub_18F3B5A04();
}

uint64_t sub_18F3B19CC()
{
  OUTLINED_FUNCTION_52_16();
  OUTLINED_FUNCTION_4_76(&qword_1EACD8400, &qword_1EACD83F8);
  OUTLINED_FUNCTION_3_76(&qword_1EACD8410, &qword_1EACD8408);
  v0 = OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v25);
  v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v26, v28, v30);

  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_50_10(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v32, v33);

  return sub_18F3B59A8(v35, v34);
}

uint64_t sub_18F3B1A74()
{
  OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_65_16();
  v0 = OUTLINED_FUNCTION_4_76(&qword_1EACD8400, &qword_1EACD83F8);
  OUTLINED_FUNCTION_45_17(v0, v1, v2, v3, v4, v5, v6, v7, v41, v46, v50, v54, v57, v60, v62, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_3_76(&qword_1EACD8410, &qword_1EACD8408);
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_6_68(&qword_1EACD8420, &qword_1EACD8418);
  v8 = OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_50_10(v8, v9, v10, v11, v12, v13, v14, v15, v42, v47, v51, v55, v58);
  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_53_14(v16, v17, v18, v19, v20, v21, v22, v23, v43, v48, v52, v56, v59, v61, v63);

  OUTLINED_FUNCTION_49_12(v24, v25, v26, v27, v28, v29, v30, v31, v44);
  v32 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v32, v33, v34, v35, v36, v37, v38, v39, v45, v49, v53);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3B1FA8()
{
  OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_2_90(&qword_1EACD8390, &qword_1EACD8388);
  OUTLINED_FUNCTION_1_94(&qword_1EACD83A0, &qword_1EACD8398);
  OUTLINED_FUNCTION_0_116(&qword_1EACD83B0, &qword_1EACD83A8);
  v0 = OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v17);

  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20);
}

uint64_t sub_18F3B2468()
{
  OUTLINED_FUNCTION_52_16();
  OUTLINED_FUNCTION_4_76(&qword_1EACD8470, &qword_1EACD8468);
  OUTLINED_FUNCTION_3_76(&qword_1EACD8480, &qword_1EACD8478);
  v0 = OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v25);
  v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v26, v28, v30);

  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_50_10(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v32, v33);

  return sub_18F3B59A8(v35, v34);
}

uint64_t sub_18F3B2510()
{
  OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_65_16();
  v0 = OUTLINED_FUNCTION_4_76(&qword_1EACD8470, &qword_1EACD8468);
  OUTLINED_FUNCTION_45_17(v0, v1, v2, v3, v4, v5, v6, v7, v41, v46, v50, v54, v57, v60, v62, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_3_76(&qword_1EACD8480, &qword_1EACD8478);
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_6_68(&qword_1EACD8490, &qword_1EACD8488);
  v8 = OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_50_10(v8, v9, v10, v11, v12, v13, v14, v15, v42, v47, v51, v55, v58);
  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_53_14(v16, v17, v18, v19, v20, v21, v22, v23, v43, v48, v52, v56, v59, v61, v63);

  OUTLINED_FUNCTION_49_12(v24, v25, v26, v27, v28, v29, v30, v31, v44);
  v32 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v32, v33, v34, v35, v36, v37, v38, v39, v45, v49, v53);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3B2A44()
{
  OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_2_90(&qword_1EACD8320, &qword_1EACD8318);
  OUTLINED_FUNCTION_1_94(&qword_1EACD8330, &qword_1EACD8328);
  OUTLINED_FUNCTION_0_116(&qword_1EACD8340, &qword_1EACD8338);
  v0 = OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v17);

  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20);
}

uint64_t sub_18F3B2F04()
{
  OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_2_90(&qword_1EACD84E0, &qword_1EACD84D8);
  OUTLINED_FUNCTION_1_94(&qword_1EACD84F0, &qword_1EACD84E8);
  OUTLINED_FUNCTION_0_116(&qword_1EACD8500, &qword_1EACD84F8);
  v0 = OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v17);

  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20);
}

uint64_t sub_18F3B33C4()
{
  OUTLINED_FUNCTION_52_16();
  OUTLINED_FUNCTION_4_76(&qword_1EACD82B0, &qword_1EACD82A8);
  OUTLINED_FUNCTION_3_76(&qword_1EACD82C0, &qword_1EACD82B8);
  v0 = OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v25);
  v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v26, v28, v30);

  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_50_10(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v32, v33);

  return sub_18F3B59A8(v35, v34);
}

uint64_t sub_18F3B346C()
{
  OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_65_16();
  v0 = OUTLINED_FUNCTION_4_76(&qword_1EACD82B0, &qword_1EACD82A8);
  OUTLINED_FUNCTION_45_17(v0, v1, v2, v3, v4, v5, v6, v7, v41, v46, v50, v54, v57, v60, v62, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_3_76(&qword_1EACD82C0, &qword_1EACD82B8);
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_6_68(&qword_1EACD82D0, &qword_1EACD82C8);
  v8 = OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_50_10(v8, v9, v10, v11, v12, v13, v14, v15, v42, v47, v51, v55, v58);
  v16 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_53_14(v16, v17, v18, v19, v20, v21, v22, v23, v43, v48, v52, v56, v59, v61, v63);

  OUTLINED_FUNCTION_49_12(v24, v25, v26, v27, v28, v29, v30, v31, v44);
  v32 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_48_19(v32, v33, v34, v35, v36, v37, v38, v39, v45, v49, v53);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3B39A0()
{
  OUTLINED_FUNCTION_41_21();
  OUTLINED_FUNCTION_2_90(&qword_1EACD8240, &qword_1EACD8238);
  OUTLINED_FUNCTION_1_94(&qword_1EACD8250, &qword_1EACD8248);
  OUTLINED_FUNCTION_0_116(&qword_1EACD8260, &qword_1EACD8258);
  v0 = OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_49_12(v0, v1, v2, v3, v4, v5, v6, v7, v17);

  OUTLINED_FUNCTION_48_19(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20);
}

__n128 sub_18F3B3E60@<Q0>(_OWORD **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = *(v2 + 4);
  v5 = a1[2];
  v6 = *(v5 + 4);
  v7 = a1[4];
  v8 = v7[1].n128_u64[0];
  v9 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v9;
  *(a2 + 32) = v3;
  v10 = v2[1];
  *(a2 + 40) = *v2;
  *(a2 + 56) = v10;
  *(a2 + 72) = v4;
  v11 = v5[1];
  *(a2 + 80) = *v5;
  *(a2 + 96) = v11;
  *(a2 + 112) = v6;
  result = *v7;
  *(a2 + 120) = *v7;
  *(a2 + 136) = v8;
  return result;
}

__n128 sub_18F3B3EB4@<Q0>(_OWORD **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = *(v2 + 4);
  v5 = a1[2];
  v6 = v5[2].n128_i64[0];
  v7 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = v3;
  v8 = v2[1];
  *(a2 + 40) = *v2;
  *(a2 + 56) = v8;
  *(a2 + 72) = v4;
  result = v5[1];
  *(a2 + 80) = *v5;
  *(a2 + 96) = result;
  *(a2 + 112) = v6;
  return result;
}

__n128 sub_18F3B3EF4@<Q0>(_OWORD **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 2);
  v4 = *(v2 + 2);
  v5 = a1[2];
  v6 = *(v5 + 2);
  v7 = a1[4];
  v8 = v7[1].n128_u64[0];
  *a2 = **a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = *v2;
  *(a2 + 40) = v4;
  *(a2 + 48) = *v5;
  *(a2 + 64) = v6;
  result = *v7;
  *(a2 + 72) = *v7;
  *(a2 + 88) = v8;
  return result;
}

unint64_t static String.defaultResolverSpecification.getter()
{
  sub_18F1B8B98(&qword_1ED6FC008, &qword_1EACD8200);
  sub_18F1B8B98(qword_1ED6FC010, &qword_1EACD8208);

  return sub_18F3B194C();
}

uint64_t StringFromIntResolver.resolve(from:context:)()
{
  OUTLINED_FUNCTION_69();
  v0[15] = v1;
  v0[16] = v2;
  v0[17] = *(v3 + 16);
  v0[18] = *(v3 + 24);
  swift_getMetatypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v0[19] = TupleTypeMetadata2;
  v0[20] = *(TupleTypeMetadata2 - 8);
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3B40A8, 0, 0);
}

uint64_t sub_18F3B40A8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = *(v0[19] + 48);
  v4 = *(v0[17] - 8);
  (*(v4 + 16))(v1, v0[16], v0[17]);
  *(v1 + v3) = v2;
  if (swift_dynamicCast())
  {
    v5 = v0[18];
    v6 = v0[6];
    if (swift_dynamicCastMetatype())
    {
      v7 = v0[21];
      v8 = v0[17];
      v9 = v0[15];
      v0[14] = v6;
      v0[4] = sub_18F522C9C();
      v0[5] = v10;
      v11 = swift_dynamicCast() ^ 1;
      v12 = v9;
LABEL_6:
      __swift_storeEnumTagSinglePayload(v12, v11, 1, v5);
      (*(v4 + 8))(v7, v8);
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
    if (swift_dynamicCastMetatype())
    {
      v7 = v0[21];
      v8 = v0[17];
      v13 = v0[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18F53F800;
      v0[12] = v6;
      *(v14 + 32) = sub_18F522C9C();
      *(v14 + 40) = v15;
      v0[13] = v14;
      v11 = swift_dynamicCast() ^ 1;
      v12 = v13;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD28);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v16 = v0[7];
  if (swift_dynamicCastMetatype())
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_70_11();
      v17 = v43;
      do
      {
        v0[10] = *(v16 + 32);
        sub_18F522C9C();
        OUTLINED_FUNCTION_62_11();
        if (v18)
        {
          OUTLINED_FUNCTION_69_10();
          v17 = v43;
        }

        OUTLINED_FUNCTION_68_14();
      }

      while (!v19);
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[15];
    v0[11] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
    sub_18F1B8B98(&qword_1EACCF408, &qword_1EACD0400);
    v25 = sub_18F5217AC();
    v27 = v26;

    v0[2] = v25;
    v0[3] = v27;
    v28 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v24, v28 ^ 1u, 1, v23);
    (*(v4 + 8))(v21, v22);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  if (!swift_dynamicCastMetatype())
  {

LABEL_27:
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[19];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    (*(v30 + 8))(v29, v31);
    goto LABEL_30;
  }

  if (*(v16 + 16))
  {
    OUTLINED_FUNCTION_70_11();
    v20 = v43;
    do
    {
      v0[8] = *(v16 + 32);
      sub_18F522C9C();
      OUTLINED_FUNCTION_62_11();
      if (v18)
      {
        OUTLINED_FUNCTION_69_10();
        v20 = v43;
      }

      OUTLINED_FUNCTION_68_14();
    }

    while (!v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v36 = v0[21];
  v38 = v0[17];
  v37 = v0[18];
  v39 = v0[15];
  v0[9] = v20;
  v40 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v39, v40 ^ 1u, 1, v37);
  (*(v4 + 8))(v36, v38);
LABEL_30:

  v41 = v0[1];

  return v41();
}

uint64_t sub_18F3B45EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FB5F8;

  return StringFromIntResolver.resolve(from:context:)();
}

uint64_t sub_18F3B46D4()
{
  OUTLINED_FUNCTION_69();
  v0[2] = v0[3];
  sub_18F3B52A0();
  v1 = sub_18F52169C();
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18F3B4784(uint64_t a1, double *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_18F3B5A58;

  return StringFromDoubleResolver.resolve(from:context:)(v3);
}

uint64_t sub_18F3B4834()
{
  OUTLINED_FUNCTION_69();
  v0[8] = v1;
  v2 = sub_18F5208EC();
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3B48F0, 0, 0);
}

uint64_t sub_18F3B48F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_18F0F21A8(0, &qword_1EACD8230);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_18F52234C();
  v6 = sub_18F5218AC();
  v7 = NSClassFromString(v6);

  if (v7)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v9 = v5;
    v10 = sub_18F5218AC();
    v11 = [v9 length];
    v12 = swift_allocObject();
    *(v12 + 16) = ObjCClassMetadata;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18F3B5908;
    *(v13 + 24) = v12;
    v0[6] = sub_18F3B5910;
    v0[7] = v13;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_18F3B4D20;
    v0[5] = &block_descriptor_13;
    v14 = _Block_copy(v0 + 2);
    v15 = v9;

    [v15 enumerateAttribute:v10 inRange:0 options:v11 usingBlock:{0, v14}];

    _Block_release(v14);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
      return result;
    }

    v17 = [v15 string];

    v18 = sub_18F3B5908;
  }

  else
  {
    v17 = [v5 string];
    v18 = 0;
  }

  v19 = sub_18F5218DC();
  v21 = v20;

  sub_18F0F689C(v18);

  v22 = v0[1];

  return v22(v19, v21);
}

void sub_18F3B4BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_18F3B5938(a1, v11);
  if (v12)
  {
    sub_18F0F21A8(0, &qword_1EACCE798);
    if (swift_dynamicCast())
    {
      if ([v10 isKindOfClass_])
      {
        v9 = sub_18F5218AC();
        [a6 replaceCharactersInRange:a2 withString:{a3, v9}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_18F106E70(v11);
  }
}

uint64_t sub_18F3B4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_18F118710(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_18F106E70(v13);
}

uint64_t sub_18F3B4DBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F3B4E54;

  return sub_18F3B4834();
}

uint64_t sub_18F3B4E54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_18F3B4FB8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_21_11();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

_BYTE *String.IntentInputOptions.init(keyboardType:capitalizationType:multiline:autocorrect:smartQuotes:smartDashes:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  a7[1] = v7;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t IntentParameter<>.inputOptions.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18F19E300(*(v1 + *(*v1 + 112)), &v4);
  if (!v5)
  {
    result = sub_18F106E70(&v4);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *(a1 + 4) = 0;
    *a1 = 0x20000;
  }

  return result;
}

id static String.valueType.getter()
{
  v0 = [objc_opt_self() stringValueType];

  return v0;
}

uint64_t sub_18F3B5274@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3B5240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18F3B52A0()
{
  result = qword_1EACD8210;
  if (!qword_1EACD8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8210);
  }

  return result;
}

uint64_t sub_18F3B5310(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3B5368(uint64_t a1)
{
  result = sub_18F3B5390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3B5390()
{
  result = qword_1ED6FBFE0;
  if (!qword_1ED6FBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBFE0);
  }

  return result;
}

unint64_t sub_18F3B53E8()
{
  result = qword_1ED6FBFD8;
  if (!qword_1ED6FBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBFD8);
  }

  return result;
}

unint64_t sub_18F3B5440()
{
  result = qword_1EACCED60[0];
  if (!qword_1EACCED60[0])
  {
    sub_18F5208EC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCED60);
  }

  return result;
}

unint64_t sub_18F3B5498(uint64_t a1)
{
  result = sub_18F3B54C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3B54C0()
{
  result = qword_1EACCECA0;
  if (!qword_1EACCECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCECA0);
  }

  return result;
}

unint64_t sub_18F3B5518()
{
  result = qword_1EACCEC98;
  if (!qword_1EACCEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEC98);
  }

  return result;
}

unint64_t sub_18F3B5570()
{
  result = qword_1EACD8218;
  if (!qword_1EACD8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8218);
  }

  return result;
}

unint64_t sub_18F3B55C8()
{
  result = qword_1EACD8220;
  if (!qword_1EACD8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8220);
  }

  return result;
}

_BYTE *sub_18F3B5634(_BYTE *result, int a2, int a3)
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

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s18IntentInputOptionsVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 2);
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

_BYTE *_s18IntentInputOptionsV12KeyboardTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18IntentInputOptionsV18CapitalizationTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F3B5938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F3B5A04()
{
  result = qword_1EACCF3C8;
  if (!qword_1EACCF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF3C8);
  }

  return result;
}

uint64_t TargetContentProvidingIntent.perform()(uint64_t a1)
{
  *(v1 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  *(v1 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3B5C54, 0, 0);
}

uint64_t TargetContentProvidingIntent<>.perform()(uint64_t a1)
{
  *(v1 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  *(v1 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3A6E70, 0, 0);
}

void LNViewAnnotations.asViewAnnotationIdentifier()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8548);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v41 - v3);
  v5 = type metadata accessor for _ViewAnnotationIdentifier();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v41 = v0;
  v42 = &v41 - v12;
  v13 = [v0 entities];
  sub_18F0F21A8(0, &unk_1ED6FE390);
  v14 = sub_18F521CAC();

  v15 = sub_18F111F70(v14);
  v16 = 0;
  v44 = v14 & 0xFFFFFFFFFFFFFF8;
  v45 = v14 & 0xC000000000000001;
  v47 = v5;
  v48 = MEMORY[0x1E69E7CC0];
  v43 = v11;
  while (v15 != v16)
  {
    if (v45)
    {
      v17 = MEMORY[0x193ADBE10](v16, v14);
    }

    else
    {
      if (v16 >= *(v44 + 16))
      {
        goto LABEL_28;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v49 = v17;
    sub_18F3B60D0(&v49, v4);
    if (v1)
    {

      return;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_18F0EF1A8(v4, &qword_1EACD8548);
    }

    else
    {
      v19 = v14;
      v20 = v15;
      v21 = v42;
      sub_18F3B6F48(v4, v42, type metadata accessor for _ViewAnnotationIdentifier);
      sub_18F3B6F48(v21, v11, type metadata accessor for _ViewAnnotationIdentifier);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F1696EC();
        v48 = v26;
      }

      v23 = v48[2];
      v22 = v48[3];
      v15 = v20;
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_2_91(v22);
        sub_18F1696EC();
        v48 = v27;
      }

      v14 = v19;
      v48[2] = v23 + 1;
      OUTLINED_FUNCTION_3_77();
      OUTLINED_FUNCTION_0_117();
      v11 = v43;
      sub_18F3B6F48(v43, v24, v25);
      v5 = v47;
    }

    ++v16;
  }

  v28 = [v41 intents];
  v29 = sub_18F521CAC();

  v30 = 0;
  v31 = *(v29 + 16);
  v32 = (v29 + 40);
  v33 = MEMORY[0x1E69E7CC0];
  while (v31 != v30)
  {
    if (v30 >= *(v29 + 16))
    {
      goto LABEL_29;
    }

    v34 = *v32;
    *v8 = *(v32 - 1);
    v8[1] = v34;
    swift_storeEnumTagMultiPayload();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1696EC();
      v33 = v39;
    }

    v36 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v36 >= v35 >> 1)
    {
      OUTLINED_FUNCTION_2_91(v35);
      sub_18F1696EC();
      v33 = v40;
    }

    *(v33 + 16) = v36 + 1;
    OUTLINED_FUNCTION_3_77();
    OUTLINED_FUNCTION_0_117();
    sub_18F3B6F48(v8, v37, v38);
    v32 += 2;
    ++v30;
  }

  v49 = v48;
  sub_18F25DC3C(v33);
}

id sub_18F3B60D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v112 - v6;
  v7 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_18F520B3C();
  v10 = *(v128 - 8);
  v11 = MEMORY[0x1EEE9AC00](v128);
  v121 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v112 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v112 - v18;
  v19 = *a1;
  v119 = sub_18F3B6AAC();
  if (!v119)
  {
    v126 = 0;
    v127 = 0xE000000000000000;
    sub_18F52279C();

    v126 = 0xD000000000000021;
    v127 = 0x800000018F52B470;
    v38 = [v19 description];
    v39 = sub_18F5218DC();
    v41 = v40;

    MEMORY[0x193ADB000](v39, v41);

    v42 = v126;
    v43 = v127;
    sub_18F3B6DB0();
    swift_allocError();
    *v44 = v42;
    v44[1] = v43;
    return swift_willThrow();
  }

  v20 = [v19 displayRepresentation];
  v118 = v2;
  if (!v20)
  {
    v47 = a2;
    v48 = v119;
    v49 = sub_18F3B6E04(v119);
    if (v50)
    {
      v51 = v49;
      v52 = v50;
      v53 = v7;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8560) + 80);
      v55 = [v48 typeIdentifier];
      v56 = sub_18F5218DC();
      v58 = v57;

      *v47 = v56;
      v47[1] = v58;
      v47[2] = v51;
      v47[3] = v52;
      v59 = [v48 instanceIdentifier];
      v60 = sub_18F5218DC();
      v62 = v61;

      v47[4] = v60;
      v47[5] = v62;
      __swift_storeEnumTagSinglePayload(v47 + v54, 1, 1, v53);
    }

    else
    {
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8558) + 64);
      v104 = [v48 typeIdentifier];
      v105 = sub_18F5218DC();
      v107 = v106;

      *a2 = v105;
      a2[1] = v107;
      v108 = [v48 instanceIdentifier];
      v109 = sub_18F5218DC();
      v111 = v110;

      a2[2] = v109;
      a2[3] = v111;
      __swift_storeEnumTagSinglePayload(a2 + v103, 1, 1, v7);
    }

    v91 = type metadata accessor for _ViewAnnotationIdentifier();
    swift_storeEnumTagMultiPayload();
    v92 = v47;
    return __swift_storeEnumTagSinglePayload(v92, 0, 1, v91);
  }

  v21 = v20;
  v113 = v9;
  v115 = a2;
  v22 = type metadata accessor for DisplayRepresentation.Image(0);
  v23 = v123;
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v22);
  v24 = [v21 image];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 inImage];
    v27 = v120;
    DisplayRepresentation.Image.init(inImage:)(v120);

    sub_18F0EF1A8(v23, &qword_1EACD0270);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v22);
    sub_18F324CD4(v27, v23);
  }

  v114 = v22;
  v117 = v21;
  v28 = sub_18F3B6E68(v21);
  v116 = v7;
  if (!v28)
  {
    v46 = v23;
    v33 = MEMORY[0x1E69E7CC0];
    v45 = v113;
LABEL_23:
    v63 = v117;
    v64 = [v117 title];
    sub_18F2EF744();

    v65 = [v63 subtitle];
    v66 = v122;
    if (v65)
    {
      v67 = v65;
      v68 = v7;
      sub_18F2EF744();

      v69 = 0;
    }

    else
    {
      v68 = v7;
      v69 = 1;
    }

    v70 = v128;
    __swift_storeEnumTagSinglePayload(v66, v69, 1, v128);
    v71 = v120;
    sub_18F3B6ED8(v46, v120);
    v72 = v68[5];
    __swift_storeEnumTagSinglePayload(v45 + v72, 1, 1, v70);
    v73 = v68[6];
    __swift_storeEnumTagSinglePayload(v45 + v73, 1, 1, v114);
    *(v45 + v68[7]) = xmmword_18F540410;
    *(v45 + v68[8]) = 0;
    v74 = v68[9];
    __swift_storeEnumTagSinglePayload(v45 + v68[10], 1, 1, v70);
    (*(v10 + 32))(v45, v121, v70);
    sub_18F0FF6E0(v122, v45 + v72, &qword_1EACCF7A8);
    sub_18F0FF6E0(v71, v45 + v73, &qword_1EACD0270);
    *(v45 + v74) = v33;
    v75 = v119;
    v76 = sub_18F3B6E04(v119);
    v78 = v45;
    if (v77)
    {
      v79 = v76;
      v80 = v77;
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8560) + 80);
      v82 = [v75 typeIdentifier];
      v83 = sub_18F5218DC();
      v85 = v84;

      v86 = v115;
      *v115 = v83;
      v86[1] = v85;
      v86[2] = v79;
      v86[3] = v80;
      v87 = [v75 instanceIdentifier];
      v88 = sub_18F5218DC();
      v90 = v89;

      sub_18F0EF1A8(v123, &qword_1EACD0270);
      v86[4] = v88;
      v86[5] = v90;
      sub_18F3B6F48(v78, v86 + v81, type metadata accessor for DisplayRepresentation);
      __swift_storeEnumTagSinglePayload(v86 + v81, 0, 1, v116);
      v91 = type metadata accessor for _ViewAnnotationIdentifier();
      swift_storeEnumTagMultiPayload();
      v92 = v86;
    }

    else
    {
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8558) + 64);
      v94 = [v75 typeIdentifier];
      v95 = sub_18F5218DC();
      v97 = v96;

      v98 = v115;
      *v115 = v95;
      v98[1] = v97;
      v99 = [v75 instanceIdentifier];
      v100 = sub_18F5218DC();
      v102 = v101;

      sub_18F0EF1A8(v123, &qword_1EACD0270);
      v98[2] = v100;
      v98[3] = v102;
      sub_18F3B6F48(v78, v98 + v93, type metadata accessor for DisplayRepresentation);
      __swift_storeEnumTagSinglePayload(v98 + v93, 0, 1, v68);
      v91 = type metadata accessor for _ViewAnnotationIdentifier();
      swift_storeEnumTagMultiPayload();
      v92 = v98;
    }

    return __swift_storeEnumTagSinglePayload(v92, 0, 1, v91);
  }

  v29 = v28;
  result = sub_18F111F70(v28);
  v31 = result;
  v32 = 0;
  v124 = v29 & 0xFFFFFFFFFFFFFF8;
  v125 = v29 & 0xC000000000000001;
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v31 == v32)
    {

      v7 = v116;
      v45 = v113;
      v46 = v123;
      goto LABEL_23;
    }

    if (v125)
    {
      result = MEMORY[0x193ADBE10](v32, v29);
    }

    else
    {
      if (v32 >= *(v124 + 16))
      {
        goto LABEL_33;
      }

      result = *(v29 + 8 * v32 + 32);
    }

    v34 = result;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    sub_18F2EF744();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F168E40();
      v33 = v36;
    }

    v35 = *(v33 + 16);
    if (v35 >= *(v33 + 24) >> 1)
    {
      sub_18F168E40();
      v33 = v37;
    }

    *(v33 + 16) = v35 + 1;
    result = (*(v10 + 32))(v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v35, v14, v128);
    ++v32;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_18F3B6AAC()
{
  v1 = [v0 value];
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0F21A8(0, &qword_1ED6FE640);
  if (swift_dynamicCast())
  {
    v2 = [v5 identifier];
  }

  else
  {
    v3 = [v0 value];
    sub_18F52261C();
    swift_unknownObjectRelease();
    sub_18F0F21A8(0, &qword_1EACCDD20);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t type metadata accessor for _ViewAnnotationIdentifier()
{
  result = qword_1EACCDE88;
  if (!qword_1EACCDE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F3B6C20()
{
  sub_18F3B6C9C();
  if (v0 <= 0x3F)
  {
    sub_18F3B6D14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_18F3B6C9C()
{
  if (!qword_1EACCDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD32D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EACCDD98);
    }
  }
}

void sub_18F3B6D14()
{
  if (!qword_1EACCDDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD32D0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EACCDDA0);
    }
  }
}

unint64_t sub_18F3B6DB0()
{
  result = qword_1EACD8550;
  if (!qword_1EACD8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8550);
  }

  return result;
}

uint64_t sub_18F3B6E04(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F3B6E68(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18F0F21A8(0, &qword_1ED6FEFA8);
  v3 = sub_18F521CAC();

  return v3;
}

uint64_t sub_18F3B6ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F3B6F48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

BOOL sub_18F3B6FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_18F3B6FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  sub_18F3B7030(v7, a2, a3, a4);
  return v7;
}

uint64_t sub_18F3B7030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_1ED707640;
  if (qword_1EACCF3B0 != -1)
  {
    swift_once();
  }

  v9 = sub_18F52165C();
  v10 = __swift_project_value_buffer(v9, qword_1EAD0ABC8);
  (*(*(v9 - 8) + 16))(v4 + v8, v10, v9);
  *(v4 + qword_1ED707648) = 0;
  *(v4 + qword_1ED707668) = a2;
  *(v4 + qword_1ED707650) = a3;
  *(v4 + qword_1ED707660) = a4;
  *(v4 + qword_1ED707658) = MEMORY[0x1E69E7CC8];
  *(v4 + qword_1ED707670) = MEMORY[0x1E69E7CC0];
  return v4;
}

void sub_18F3B7148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_11_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1ED707648;
  v15 = *(v3 + qword_1ED707648);
  if (v15 > 9)
  {

    v78 = sub_18F52163C();
    v21 = sub_18F52221C();
    if (os_log_type_enabled(v78, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(v4 + v14);

      _os_log_impl(&dword_18F0E9000, v78, v21, "Unable to support implicit resolver chain longer than %ld", v22, 0xCu);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_16();
    }

    else
    {

      OUTLINED_FUNCTION_16();
    }
  }

  else
  {
    v78 = v11;
    *(v3 + qword_1ED707648) = v15 + 1;
    v16 = sub_18F52179C();
    OUTLINED_FUNCTION_81();
    v76 = sub_18F2C9F28(&v81, v16);
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v75 = a3;
    v77 = a2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = swift_getAssociatedTypeWitness();
    if (dynamic_cast_existential_1_conditional(v19) && *(v4 + v14) >= 2)
    {
      OUTLINED_FUNCTION_23_38();
      OUTLINED_FUNCTION_14_42();
      sub_18F39D018(v20);
    }

    else if (dynamic_cast_existential_1_conditional(v19) && *(v4 + v14) >= 2)
    {
      OUTLINED_FUNCTION_23_38();
      OUTLINED_FUNCTION_14_42();
      sub_18F120FCC(v25, v26, v27, v28);
    }

    else
    {
      v82 = type metadata accessor for EmptyResolverSpecification();
      WitnessTable = swift_getWitnessTable();
      EmptyResolverSpecification.init()(AssociatedTypeWitness, AssociatedConformanceWitness);
    }

    sub_18F0FD0B4(&v81, v84);
    (*(v9 + 16))(v13, a1, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
    v30 = sub_18F521DEC();
    __swift_project_boxed_opaque_existential_1Tm(v84, v84[3]);
    OUTLINED_FUNCTION_11_0();
    MEMORY[0x1EEE9AC00](v31);
    (*(v33 + 16))(&v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = sub_18F521DEC();
    *&v81 = v30;
    sub_18F25D8DC(v34);
    v35 = v81;
    v36 = *(v81 + 16);
    if (v36)
    {
      v37 = swift_getAssociatedTypeWitness();
      v38 = 0;
      v78 = qword_1ED707640;
      v39 = v35 + 32;
      *&v40 = 136315138;
      v71 = v40;
      v74 = v35;
      v73 = v36;
      v72 = v37;
      while (v38 < *(v35 + 16))
      {
        sub_18F0FD724(v39, &v81);
        OUTLINED_FUNCTION_12_56();
        if (sub_18F410C04() == v37)
        {
          v52 = sub_18F52163C();
          v53 = sub_18F52220C();
          if (OUTLINED_FUNCTION_84_2(v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_18F0E9000, v52, v53, "Input/Output types match, ignoring", v54, 2u);
            OUTLINED_FUNCTION_32();
          }
        }

        else
        {
          sub_18F3B7A18(&v81);
          if (v41 & v76)
          {
            v42 = OUTLINED_FUNCTION_19_41();
            sub_18F0FD724(v42, v43);
            v44 = sub_18F52163C();
            v45 = sub_18F52220C();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = OUTLINED_FUNCTION_75();
              v79 = v47;
              *v46 = v71;
              __swift_project_boxed_opaque_existential_1Tm(v80, v80[3]);
              sub_18F410C04();
              v48 = sub_18F52307C();
              v50 = v49;
              __swift_destroy_boxed_opaque_existential_1Tm(v80);
              v51 = sub_18F11897C(v48, v50, &v79);

              *(v46 + 4) = v51;
              _os_log_impl(&dword_18F0E9000, v44, v45, "Recursively visiting %s", v46, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v47);
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_32();
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v80);
            }

            OUTLINED_FUNCTION_12_56();
            v58 = sub_18F410C04();
            v60 = v59;
            v61 = swift_getAssociatedTypeWitness();
            OUTLINED_FUNCTION_11_0();
            v63 = v62;
            MEMORY[0x1EEE9AC00](v64);
            v66 = &v71 - v65;
            (*(v60 + 56))(v58, v60);
            v67 = swift_getAssociatedConformanceWitness();
            sub_18F392F14(v4, v61, v67);
            (*(v63 + 8))(v66, v61);
            sub_18F3B79BC(v4);
            v36 = v73;
            v35 = v74;
            v37 = v72;
          }

          else
          {
            v55 = sub_18F52163C();
            v56 = sub_18F52220C();
            if (OUTLINED_FUNCTION_84_2(v56))
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_18F0E9000, v55, v56, "Resolver or spec already visited, terminating recursion", v57, 2u);
              OUTLINED_FUNCTION_32();
            }

            sub_18F3B79BC(v4);
          }
        }

        ++v38;
        __swift_destroy_boxed_opaque_existential_1Tm(&v81);
        v39 += 40;
        if (v36 == v38)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_32:

      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      v68 = *(v4 + qword_1ED707648);
      v69 = __OFSUB__(v68, 1);
      v70 = v68 - 1;
      if (!v69)
      {
        *(v4 + qword_1ED707648) = v70;
        OUTLINED_FUNCTION_16();
        return;
      }
    }

    __break(1u);
  }
}

void sub_18F3B79BC(uint64_t a1)
{
  v1 = qword_1ED707670;
  if (*(*(a1 + qword_1ED707670) + 16))
  {
    sub_18F3BA8D4();
    if (v3)
    {
      sub_18F3BA858(*(*(a1 + v1) + 16) - 1);
    }
  }
}

void sub_18F3B7A18(void *a1)
{
  v3 = v1;
  v5 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = OUTLINED_FUNCTION_15_46();
  sub_18F29E4F8(v6, v7, v8);
  sub_18F1A7FEC(v104, v102);
  OUTLINED_FUNCTION_81();
  v9 = OUTLINED_FUNCTION_19_41();
  v11 = sub_18F2C97EC(v9, v10);
  sub_18F1A8048(v103);
  swift_endAccess();
  v12 = qword_1ED707660;
  v13 = "SystemIntentExecutorDelegate";
  v98 = v5;
  if (v11)
  {
    OUTLINED_FUNCTION_81();
    sub_18F166FD8();
    v14 = *(*(v1 + v12) + 16);
    sub_18F1670BC();
    v15 = *(v1 + v12);
    *(v15 + 16) = v14 + 1;
    sub_18F1A7FEC(v104, v15 + 40 * v14 + 32);
    *(v3 + v12) = v15;
    swift_endAccess();
    v16 = qword_1ED707670;
    sub_18F166FC0();
    OUTLINED_FUNCTION_24_42();
    OUTLINED_FUNCTION_21_39();
    *(v17 + 32) = v14;
    *(v3 + v16) = v18;
    OUTLINED_FUNCTION_25_38();
    v19 = sub_18F52163C();
    v20 = sub_18F52220C();
    if (OUTLINED_FUNCTION_84_2(v20))
    {
      v21 = OUTLINED_FUNCTION_9_17();
      v22 = OUTLINED_FUNCTION_75();
      v101[0] = v22;
      *v21 = 136315394;
      v23 = OUTLINED_FUNCTION_19_41();
      sub_18F0FD724(v23, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
      v25 = v11;
      v26 = sub_18F52194C();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      v29 = sub_18F11897C(v26, v28, v101);
      v13 = "SystemIntentExecutorDelegate";

      *(v21 + 4) = v29;
      v11 = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v14;
      _os_log_impl(&dword_18F0E9000, v19, v20, "Added %s to cache at %ld", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v103);
    }

    v48 = &unk_1ED707000;
LABEL_11:
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    OUTLINED_FUNCTION_15_46();
    v49 = sub_18F410C04();
    v51 = v50;
    v52 = qword_1ED707658;
    swift_beginAccess();
    v97 = v52;
    v53 = *(v3 + v52);
    v54 = *(v53 + 16);
    v96[7] = v49;
    v96[6] = v51;
    if (v54 && (v55 = sub_18F181924(), (v56 & 1) != 0))
    {
      v57 = *(*(v53 + 56) + 8 * v55);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    v58 = sub_18F3B8768(*(v3 + v48[206]));
    v59 = qword_1ED707640;
    OUTLINED_FUNCTION_25_38();

    v60 = sub_18F52163C();
    v61 = sub_18F52220C();

    if (os_log_type_enabled(v60, v61))
    {
      v96[5] = v59;
      v62 = OUTLINED_FUNCTION_9_17();
      v99 = v11;
      v100[0] = swift_slowAlloc();
      *v62 = *(v13 + 402);
      OUTLINED_FUNCTION_12_56();
      sub_18F410C04();
      v63 = sub_18F52307C();
      v65 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      v66 = sub_18F11897C(v63, v65, v100);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = MEMORY[0x193ADB2B0](v58, MEMORY[0x1E69E6530]);
      v69 = sub_18F11897C(v67, v68, v100);

      *(v62 + 14) = v69;
      v13 = "SystemIntentExecutorDelegate";
      _os_log_impl(&dword_18F0E9000, v60, v61, "Current path for %s is %s", v62, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    else
    {

      v70 = __swift_destroy_boxed_opaque_existential_1Tm(v103);
    }

    v103[0] = v58;
    MEMORY[0x1EEE9AC00](v70);
    v96[2] = v103;
    if (sub_18F2F0CCC(sub_18F3BA99C, v96, v57))
    {

      v71 = sub_18F52163C();
      v72 = sub_18F52220C();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = OUTLINED_FUNCTION_75();
        v103[0] = v74;
        *v73 = 136315138;
        v75 = MEMORY[0x193ADB2B0](v58, MEMORY[0x1E69E6530]);
        v77 = v76;

        v78 = sub_18F11897C(v75, v77, v103);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_18F0E9000, v71, v72, "Path %s already exists in known paths", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      else
      {
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      OUTLINED_FUNCTION_15_46();
      v79 = sub_18F410C04();
      v80 = dynamic_cast_existential_1_conditional(v79);
      if (v80 && (sub_18F3B844C(v80, a1) & 1) == 0)
      {

        OUTLINED_FUNCTION_25_38();

        v83 = sub_18F52163C();
        v84 = sub_18F52220C();

        if (!os_log_type_enabled(v83, v84))
        {

          sub_18F1A8048(v104);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          goto LABEL_32;
        }

        v85 = OUTLINED_FUNCTION_9_17();
        v100[0] = swift_slowAlloc();
        *v85 = *(v13 + 402);
        v86 = MEMORY[0x193ADB2B0](v58, MEMORY[0x1E69E6530]);
        v88 = v87;

        v89 = sub_18F11897C(v86, v88, v100);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2080;
        OUTLINED_FUNCTION_12_56();
        sub_18F410C04();
        v90 = sub_18F52307C();
        v92 = v91;
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        v93 = sub_18F11897C(v90, v92, v100);

        *(v85 + 14) = v93;
        _os_log_impl(&dword_18F0E9000, v83, v84, "### Path %s is not safe because it starts with %s", v85, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18F1690D0();
          v57 = v94;
        }

        v81 = v57[2];
        if (v81 >= v57[3] >> 1)
        {
          sub_18F1690D0();
          v57 = v95;
        }

        v57[2] = v81 + 1;
        v57[v81 + 4] = v58;
        v103[0] = v57;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        sub_18F3B9DD8(v103);

        v82 = v97;
        OUTLINED_FUNCTION_81();
        swift_isUniquelyReferenced_nonNull_native();
        v100[0] = *(v3 + v82);
        sub_18F2C0614();
        *(v3 + v82) = v100[0];
        swift_endAccess();
      }
    }

LABEL_31:
    sub_18F1A8048(v104);
LABEL_32:
    OUTLINED_FUNCTION_16();
    return;
  }

  swift_beginAccess();
  v30 = *(v1 + v12);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v31 = sub_18F1AFA54(v104, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    v34 = qword_1ED707670;
    v35 = sub_18F3B6FA8(v31, *(v3 + qword_1ED707670));
    sub_18F166FC0();
    OUTLINED_FUNCTION_24_42();
    OUTLINED_FUNCTION_21_39();
    *(v36 + 32) = v31;
    *(v3 + v34) = v37;
    OUTLINED_FUNCTION_25_38();
    v38 = sub_18F52163C();
    v39 = sub_18F52220C();
    if (OUTLINED_FUNCTION_84_2(v39))
    {
      v40 = OUTLINED_FUNCTION_9_17();
      v99 = v11;
      v41 = OUTLINED_FUNCTION_75();
      v100[0] = v41;
      *v40 = 136315394;
      v42 = OUTLINED_FUNCTION_19_41();
      sub_18F0FD724(v42, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
      v44 = sub_18F52194C();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      v47 = sub_18F11897C(v44, v46, v100);

      *(v40 + 4) = v47;
      v13 = "SystemIntentExecutorDelegate";
      *(v40 + 12) = 2048;
      *(v40 + 14) = v31;
      _os_log_impl(&dword_18F0E9000, v38, v39, "Using cached %s at %ld", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v11 = v99;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v103);
    }

    v48 = &unk_1ED707000;
    if (v35)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  sub_18F522A3C();
  __break(1u);

  __break(1u);
}

uint64_t sub_18F3B844C(uint64_t a1, uint64_t a2)
{
  sub_18F0FD724(a2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
  type metadata accessor for EntityFromEntityResolver();
  return swift_dynamicCast();
}

uint64_t sub_18F3B84C8()
{
  v1 = qword_1ED707640;
  v2 = sub_18F52165C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_18F3B8578()
{
  sub_18F3B84C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F3B85D0()
{
  result = sub_18F52165C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_18F3B869C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
      v8 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v8);
      *(v4 + 16) = v6;
      *(v4 + 24) = (2 * (v9 / 8)) | 1;
    }

    if (v5 != a3)
    {
      type metadata accessor for _RepresentedEntityElement();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_18F3B8768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD30);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size_1(v3);
  v3[2] = v1;
  v3[3] = 2 * ((v4 - 32) / 8);
  v5 = 4;
  do
  {
    v3[v5++] = *(a1 + 24 + 8 * v1--);
  }

  while (v1);
  return v3;
}

void sub_18F3B880C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
      v6 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F169E98(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B88FC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8568);
      v6 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE50(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8570);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B89BC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0098);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE7C(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A0);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8A7C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8598);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE7C(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8B3C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD70);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE7C(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8BFC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8640);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F169ED0(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8648);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8CBC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85B8);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F169EF8(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8D70()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85A0);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F169F18(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8E24()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD85A8);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F169F40(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8F0C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8578);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16A04C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8580);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B8FCC()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8588);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_5_71(v6);
      OUTLINED_FUNCTION_19_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_78();
        sub_18F16A074(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8590);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9094()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE7C(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B9154()
{
  OUTLINED_FUNCTION_29_7();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8638);
      v7 = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_5_71(v7);
      OUTLINED_FUNCTION_19_1(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_78();
        sub_18F16A0BC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 4 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18F3B920C()
{
  OUTLINED_FUNCTION_29_7();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8630);
      v6 = OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_0_118(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_3_78();
        sub_18F16AE54(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_56();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}