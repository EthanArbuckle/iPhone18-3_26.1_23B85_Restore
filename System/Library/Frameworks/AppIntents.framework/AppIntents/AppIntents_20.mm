unint64_t sub_18F2C0EC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_9_34(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

_OWORD *sub_18F2C0EFC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_18F118710(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18F2C0F64(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_18F520E6C();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_18F2C103C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  result = sub_18F10A3AC(a6, v11 + *(*(v12 - 8) + 72) * a1, _s18AppManagerObserverO17OnChangedObserverVMa);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

uint64_t sub_18F2C10EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_18F520E6C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_18F2C11AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18F520E6C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_18F2C1280(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18F520E6C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for IntentContext();
  result = sub_18F10A3AC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IntentContext);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_18F2C1370(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_18F2C13C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_18F2C140C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_9_34(a1, a2, a3, a4, a5);
  result = sub_18F0FD0B4(v8, *(v7 + 56) + 40 * v6);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_18F2C1470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F2C14B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18F520C8C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_18F2C1570()
{
  result = qword_1EACCE8E0;
  if (!qword_1EACCE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE8E0);
  }

  return result;
}

uint64_t sub_18F2C15C4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntentDonationIdentifier();
  sub_18F10A3AC(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntentDonationIdentifier);
  result = sub_18F0FD0B4(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_18F2C1684(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_18F2C16C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDonationIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2C172C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD07E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F2C179C()
{
  result = qword_1EACD4890;
  if (!qword_1EACD4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4890);
  }

  return result;
}

uint64_t sub_18F2C17F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t static AppIntentError.restartPerform.getter()
{
  type metadata accessor for AppIntentError.Context(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t AppIntentError.description.getter()
{
  type metadata accessor for AppIntentError.Context(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18F1F8F48(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      sub_18F0FD0B4(v3, &v33);
      v19 = 0x800000018F528BB0;
      OUTLINED_FUNCTION_3_43();
      v21 = v20 + 12;
      v38 = v20 + 12;
      v39 = 0x800000018F528BB0;
      __swift_project_boxed_opaque_existential_1Tm(&v33, v37);
      v22 = OUTLINED_FUNCTION_2_61();
      v23(v22);
      if (v24)
      {
        OUTLINED_FUNCTION_0_69();

        MEMORY[0x193ADB000](39, 0xE100000000000000);
        MEMORY[0x193ADB000](v31, v32);

        v21 = v38;
        v19 = v39;
      }

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0570) + 64);
      v31 = v21;
      v32 = v19;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      MEMORY[0x193ADB000](46, 0xE100000000000000);

      v14 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(&v33);
      goto LABEL_13;
    case 2u:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);

      sub_18F0F689C(*(v3 + *(v15 + 112)));
      sub_18F0EF1A8(v3, &qword_1EACCF7A0);
      OUTLINED_FUNCTION_3_43();
      v14 = v16 - 2;
      break;
    case 3u:
      sub_18F520C8C();
      OUTLINED_FUNCTION_10_0();
      (*(v17 + 8))(v3);
      OUTLINED_FUNCTION_3_43();
      v14 = v18 - 9;
      break;
    case 4u:
      v9 = *(v3 + 2);
      v10 = *(v3 + 3);
      v11 = *(v3 + 32);
      v12 = *(v3 + 33);

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_18F52279C();
      v38 = v33;
      v39 = v34;
      MEMORY[0x193ADB000](0xD000000000000036, 0x800000018F528B20);
      v33 = v9;
      v34 = v10;
      v35 = v11;
      v36 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD48B8);
      v13 = sub_18F52194C();
      MEMORY[0x193ADB000](v13);

      v14 = v38;
      break;
    case 5u:
      OUTLINED_FUNCTION_3_43();
      v14 = v26 - 6;
      break;
    default:
      sub_18F0FD0B4(v3, &v33);
      v4 = 0x800000018F528BF0;
      v38 = 0xD000000000000025;
      v39 = 0x800000018F528BF0;
      __swift_project_boxed_opaque_existential_1Tm(&v33, v37);
      v5 = OUTLINED_FUNCTION_2_61();
      v6(v5);
      if (v7)
      {
        OUTLINED_FUNCTION_0_69();

        MEMORY[0x193ADB000](39, 0xE100000000000000);
        MEMORY[0x193ADB000](v31, v32);

        v8 = v38;
        v4 = v39;
      }

      else
      {
        v8 = 0xD000000000000025;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568);
      v25 = *(v27 + 48);
      v28 = *(v27 + 64);
      v31 = v8;
      v32 = v4;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      MEMORY[0x193ADB000](8238, 0xE200000000000000);

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      MEMORY[0x193ADB000](0xD000000000000075, 0x800000018F528C20);

      v14 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(&v33);
      sub_18F0EF1A8(v3 + v28, &qword_1EACD0550);
LABEL_13:
      sub_18F0EF1A8(v3 + v25, &qword_1EACCF7A0);
      break;
  }

  return v14;
}

void sub_18F2C1D28()
{
  if (!qword_1ED6FCFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD00E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACCF7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0550);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FCFF0);
    }
  }
}

void sub_18F2C1DD8()
{
  if (!qword_1ED6FCFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD00E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD16E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACCF7A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FCFE8);
    }
  }
}

uint64_t EntityQueryProperties.init(properties:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = a1();
  type metadata accessor for EntityQueryPropertyDeclaration();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F521D7C();

  a2[1] = v3;
  return result;
}

uint64_t EntityQueryProperties.subscript.getter()
{
  type metadata accessor for EntityQueryPropertyDeclaration();
  sub_18F521DFC();
  return v1;
}

uint64_t static EntityQueryPropertiesBuilder.buildBlock(_:)()
{
  type metadata accessor for EntityQueryPropertyDeclaration();
  sub_18F521DBC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_getWitnessTable();
  return sub_18F521DEC();
}

uint64_t sub_18F2C1FE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_18F2C2034(_BYTE *result, int a2, int a3)
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

uint64_t AppIntentError.localizedStringResource.getter()
{
  v2 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_4();
  sub_18F520ADC();
  OUTLINED_FUNCTION_2_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = (v7 - v6);
  v9 = sub_18F52189C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_4();
  v10 = type metadata accessor for AppIntentError.Context(0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_18F2C24C8(v0, v12 - v11, type metadata accessor for AppIntentError.Context);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_18F52181C();
    *v8 = _s2__CMa();
    (*(v4 + 104))(v8, *MEMORY[0x1E6968E00], v1);
    sub_18F520EDC();
    return sub_18F520B4C();
  }

  else
  {
    AppIntentError.description.getter();
    sub_18F520ACC();
    return sub_18F2C23A0(v13);
  }
}

uint64_t sub_18F2C23A0(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentError.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F2C2424()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD49C8);
  v1 = OUTLINED_FUNCTION_0_70();
  strcpy(v1, "SIGNIN_ERROR");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  OUTLINED_FUNCTION_2_62(v1, 21);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C24C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18F2C2530()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD49E0);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000013;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 33);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C25CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AppIntentError(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_18F2C24C8(v6, a3, type metadata accessor for AppIntentError);
}

uint64_t sub_18F2C2634()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD49F8);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000017;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 32);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C26D0()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A10);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000015;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 35);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C276C()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A28);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD00000000000001ELL;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 44);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2808()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A40);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD00000000000001ALL;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 40);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C28A4()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A58);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000017;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 37);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2940()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A70);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000019;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 39);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AppIntentError.PermissionRequired.location(precise:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = "PrebuiltAppIntentErrorMessages";
  if (a1)
  {
    v3 = "ant location permission";
  }

  v4 = 0xD000000000000019;
  if (a1)
  {
    v4 = 0xD000000000000021;
    v5 = "User needs to grant precise location permission";
  }

  else
  {
    v5 = "User needs to grant location permission";
  }

  v6 = 39;
  if (a1)
  {
    v6 = 47;
  }

  *a2 = v4;
  *(a2 + 8) = v3 | 0x8000000000000000;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 2;
  type metadata accessor for AppIntentError.Context(0);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2A7C()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4A88);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000023;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 42);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2B18()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4AA0);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000023;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 30);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2BB4()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4AB8);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000026;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 34);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2C50()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4AD0);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000021;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 20);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2CEC()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4AE8);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000029;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 44);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2D88()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACCE700);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000030;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 89);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F2C2E24()
{
  v0 = type metadata accessor for AppIntentError(0);
  __swift_allocate_value_buffer(v0, qword_1EACD4B00);
  OUTLINED_FUNCTION_0_70();
  OUTLINED_FUNCTION_3_44();
  *v1 = 0xD000000000000024;
  v1[1] = v2;
  OUTLINED_FUNCTION_2_62(v1, 60);
  OUTLINED_FUNCTION_1_60();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AppIntentError.== infix(_:_:)()
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_2_9();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  AppIntentError.localizedStringResource.getter();
  AppIntentError.localizedStringResource.getter();
  v9 = MEMORY[0x193ADA0E0](v8, v6);
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  return v9 & 1;
}

_BYTE *sub_18F2C2FF0(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2C309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_18F2C3548(a3, v24 - v10);
  v12 = sub_18F521EFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_18F0FFBBC(v11);
  }

  else
  {
    sub_18F521EEC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_18F521E1C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_18F52197C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_18F0FFBBC(a3);

      return v22;
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

  sub_18F0FFBBC(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_18F2C3364()
{
  v17 = v0;
  if (qword_1ED6FED58 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v1 = *(v0 + 32);
  v2 = sub_18F52165C();
  __swift_project_value_buffer(v2, qword_1ED707790);
  v3 = v1;
  v4 = sub_18F52163C();
  v5 = sub_18F52221C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
    v11 = sub_18F52194C();
    v13 = sub_18F11897C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_18F0E9000, v4, v5, "Failed to refresh AppShortcut parameters with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_71();

  return v14();
}

uint64_t sub_18F2C3548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2C35B8()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_63(v1);

  return v4(v3);
}

uint64_t ViewAnnotation.fullyQualifiedIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_4_17();
  type metadata accessor for ViewAnnotation(v1);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_0_71();
  v6 = OUTLINED_FUNCTION_53();
  sub_18F0F99B8(v6, v7, v8);
  OUTLINED_FUNCTION_89_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FF968(v5, v20);
      OUTLINED_FUNCTION_1_42(v20);
      v10 = OUTLINED_FUNCTION_45();
      AppEntity.fullyQualifiedIdentifier.getter(v10, v11, v12);
      *v0 = v17;
      *(v0 + 16) = v18;
      *(v0 + 24) = v19;
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v5 + 24);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
      *v0 = *v5;
      *(v0 + 16) = v14;
      *(v0 + 24) = v15;
      return sub_18F0EF1A8(v5 + v16, &qword_1EACD32D0);
    }
  }

  else
  {
    result = sub_18F106ED8(v5, type metadata accessor for ViewAnnotation);
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return result;
}

uint64_t EntityIdentifier.viewDebugDescription.getter()
{
  if (sub_18F145350(*v0))
  {
    sub_18F52279C();

    v1 = OUTLINED_FUNCTION_120_3();
    MEMORY[0x193ADB000](v1);

    v2 = 0x69736E617254203ALL;
    v3 = 0xEC0000003E746E65;
  }

  else
  {
    sub_18F52279C();

    v4 = OUTLINED_FUNCTION_120_3();
    MEMORY[0x193ADB000](v4);

    MEMORY[0x193ADB000](8250, 0xE200000000000000);
    v5 = OUTLINED_FUNCTION_66();
    MEMORY[0x193ADB000](v5);
    v2 = OUTLINED_FUNCTION_102_5();
  }

  MEMORY[0x193ADB000](v2, v3);
  return 0;
}

uint64_t ViewAnnotation.displayRepresentation.getter()
{
  v1 = OUTLINED_FUNCTION_4_17();
  type metadata accessor for ViewAnnotation(v1);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = (v4 - v3);
  OUTLINED_FUNCTION_0_71();
  v6 = OUTLINED_FUNCTION_53();
  sub_18F0F99B8(v6, v7, v8);
  OUTLINED_FUNCTION_89_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FF968(v5, v22);
      __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
      v10 = OUTLINED_FUNCTION_55();
      v11(v10);
      type metadata accessor for DisplayRepresentation();
      v12 = OUTLINED_FUNCTION_76_7();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
      return sub_18F16ADE0(v5 + *(v21 + 48), v0);
    }
  }

  else
  {
    sub_18F106ED8(v5, type metadata accessor for ViewAnnotation);
    type metadata accessor for DisplayRepresentation();
    v17 = OUTLINED_FUNCTION_4_10();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

id sub_18F2C39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static AppValue._identifier.getter(a1, *(a2 + 8));
  if (dynamic_cast_existential_1_conditional(a1))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
      swift_once();
    }

    v7 = off_1ED6FF6C8;

    v8 = OUTLINED_FUNCTION_45();
    static AppValue._identifier.getter(v8, v9);
    OUTLINED_FUNCTION_37();
    sub_18F164CE8(v10);
    OUTLINED_FUNCTION_88_2();

    v11 = v7;
    sub_18F1AF344();
    OUTLINED_FUNCTION_83_1();
  }

  v12 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v13 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  OUTLINED_FUNCTION_68_7();
  sub_18F166ED0();
  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69AC7E8]) init];
  sub_18F13FE10();
  v18 = v17;
  v19 = [v12 initWithValue:v15 valueType:v16 displayRepresentation:v17];

  sub_18F106ED8(a5, type metadata accessor for DisplayRepresentation);
  return v19;
}

Swift::Void __swiftcall StandardEntityProvider.clearEntities()()
{
  OUTLINED_FUNCTION_18();
  v38 = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_0();
  v36 = v3;
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_74_5();
  EnumCaseMultiPayload = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
  swift_beginAccess();
  v9 = *(v0 + EnumCaseMultiPayload);
  v10 = *(v9 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  if (v11 > 0xD)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v32 = v0;
    v33 = EnumCaseMultiPayload;
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](v13);
    v14 = OUTLINED_FUNCTION_112_1();
    v31 = v12;
    v34 = v15;
    sub_18F128DD4(v14, v12, v15);
    v35 = 0;
    v12 = 0;
    v0 = v9;
    v16 = v9 + 56;
    OUTLINED_FUNCTION_10_33();
    v19 = v18 & v17;
    v9 = (v20 + 63) >> 6;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_10:
      v25 = v21 | (v12 << 6);
      sub_18F0F99B8(*(v0 + 48) + *(v36 + 72) * v25, v1, type metadata accessor for ViewAnnotation);
      sub_18F0F90A4(v1, v6, type metadata accessor for ViewAnnotation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_18F106ED8(v6, type metadata accessor for ViewAnnotation);
      if (!EnumCaseMultiPayload)
      {
        *(v34 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_14:
          v27 = sub_18F128E38(v34, v31, v35, v0);
          v0 = v32;
          EnumCaseMultiPayload = v33;
          goto LABEL_15;
        }
      }
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_14;
      }

      ++v22;
      if (*(v16 + 8 * v12))
      {
        OUTLINED_FUNCTION_21_24();
        v19 = v24 & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = v9;
  v29 = swift_slowAlloc();

  v27 = sub_18F2CDAE0(v29, v12, v28, sub_18F2C50DC);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_32();
LABEL_15:
  *(v0 + EnumCaseMultiPayload) = v27;

  OUTLINED_FUNCTION_16();
}

void StandardEntityProvider.getCurrentEntityAnnotation()()
{
  OUTLINED_FUNCTION_18();
  v29 = v3;
  v4 = type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_74_5();
  v11 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v12 = *(v0 + v11) + 56;
  OUTLINED_FUNCTION_10_33();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_6:
      OUTLINED_FUNCTION_3_45();
      sub_18F0F99B8(v20, v2, v21);
      sub_18F0F90A4(v2, v1, v0);
      sub_18F0F99B8(v1, v8, v0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v15 &= v15 - 1;
      OUTLINED_FUNCTION_3_45();
      sub_18F106ED8(v8, v23);
      sub_18F106ED8(v1, v0);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_3;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {

      OUTLINED_FUNCTION_1_61();
      sub_18F106ED8(v8, v26);
    }

    else
    {

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
      sub_18F0EF1A8(v8 + *(v27 + 48), &qword_1EACD32D0);
    }

    v25 = v29;
    OUTLINED_FUNCTION_0_71();
    sub_18F0F90A4(v1, v29, v28);
    v24 = 0;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v25, v24, 1, v4);

    OUTLINED_FUNCTION_16();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v24 = 1;
        v25 = v29;
        goto LABEL_14;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18F2C416C(uint64_t a1, uint64_t *a2, void *a3)
{
  v19 = a3;
  v18 = a2;
  v5 = type metadata accessor for ViewAnnotation(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_18F0F99B8(*(a1 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for ViewAnnotation);
    sub_18F2C8BA8(v8, v18, v19);
    result = sub_18F106ED8(v8, type metadata accessor for ViewAnnotation);
    if (v3)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a1 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t ViewAnnotation.interactionID.getter()
{
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_0_71();
  v4 = OUTLINED_FUNCTION_22();
  sub_18F0F99B8(v4, v5, v6);
  OUTLINED_FUNCTION_66();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_18F106ED8(v3, type metadata accessor for ViewAnnotation);
    LODWORD(v11) = 0;
    v13 = 1;
LABEL_11:
    v20[0] = v13;
    return v11 | (v13 << 32);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_18F0FF968(v3, v19);
    __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
    v8 = OUTLINED_FUNCTION_56();
    AppEntity.fullyQualifiedIdentifier.getter(v8, v9, v10);
    sub_18F522EFC();
    static AppValue._identifier.getter(v18[0], *(v18[1] + 8));
    OUTLINED_FUNCTION_92_3();

    sub_18F5219CC();
    v11 = v20;
    sub_18F522F4C();
    OUTLINED_FUNCTION_55();

    if (!v18 || (LODWORD(v11) = 120 - &vars0, !__OFSUB__(0, v20)))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v14 = *v3;
    v15 = *(v3 + 8);
    sub_18F522EFC();
    static AppValue._identifier.getter(v14, *(v15 + 8));
    OUTLINED_FUNCTION_92_3();

    sub_18F5219CC();
    v11 = sub_18F522F4C();

    if ((v11 & 0x8000000000000000) == 0 || (v16 = __OFSUB__(0, v11), v11 = -v11, !v16))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
      sub_18F0EF1A8(v3 + *(v17 + 48), &qword_1EACD32D0);
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void ViewAnnotation.asViewEntityIdentifier(state:location:)()
{
  OUTLINED_FUNCTION_4_17();
  v5 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v60 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_77_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_74_5();
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = ViewAnnotation.interactionID.getter();
  if ((v16 & 0x100000000) != 0)
  {
    type metadata accessor for ViewEntityIdentifier();
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_127_1();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  else
  {
    v17 = v16;
    OUTLINED_FUNCTION_0_71();
    sub_18F0F99B8(v1, v15, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_18F0FF968(v15, v64);
        sub_18F0FD724(v64, v61);
        OUTLINED_FUNCTION_1_42(v61);
        v20 = OUTLINED_FUNCTION_89_0();
        v22 = AppEntity.asValue.getter(v20, v21);
        OUTLINED_FUNCTION_1_42(v61);
        v23 = OUTLINED_FUNCTION_41_9();
        AppEntity.fullyQualifiedIdentifier.getter(v23, v24, v25);
        v26 = static AppEntity.structuredDataRepresentations.getter();

        v27 = v62;
        v28 = v63;
        __swift_project_boxed_opaque_existential_1Tm(v61, v62);
        v29 = *(*(v28 + 16) + 8);
        v30 = *(v29 + 16);
        v31 = type metadata accessor for ViewEntityIdentifier();
        v30(v27, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        *v0 = v22;
        *(v0 + 56) = v17;
        *(v0 + *(v31 + 36)) = v26;
        OUTLINED_FUNCTION_66_6();
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v32 = OUTLINED_FUNCTION_76_7();
        v35 = v31;
      }

      else
      {
        v42 = *(v15 + 24);
        v58 = *(v15 + 16);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
        sub_18F16ADE0(v15 + *(v43 + 48), v3);
        sub_18F116970(v3, v4, &qword_1EACD32D0);
        OUTLINED_FUNCTION_89_0();
        static AppEntity.structuredDataRepresentations.getter();
        v44 = OUTLINED_FUNCTION_89_0();
        v59 = sub_18F27DB1C(v44, v45, v58, v42);
        OUTLINED_FUNCTION_89_0();
        v46 = static AppEntity.structuredDataRepresentations.getter();

        sub_18F116970(v4, v2, &qword_1EACD32D0);
        if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
        {
          v47 = v60;
          if (qword_1EACCF4D8 != -1)
          {
            swift_once();
          }

          v48 = __swift_project_value_buffer(v5, qword_1EACD3CD0);
          OUTLINED_FUNCTION_37();
          swift_beginAccess();
          OUTLINED_FUNCTION_8_33();
          sub_18F0F99B8(v48, v60, v49);
          sub_18F0EF1A8(v4, &qword_1EACD32D0);
          sub_18F0EF1A8(v3, &qword_1EACD32D0);
          if (__swift_getEnumTagSinglePayload(v2, 1, v5) != 1)
          {
            sub_18F0EF1A8(v2, &qword_1EACD32D0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_106_5();
          sub_18F0EF1A8(v50, v51);
          OUTLINED_FUNCTION_106_5();
          sub_18F0EF1A8(v52, v53);
          OUTLINED_FUNCTION_8_33();
          v47 = v60;
          sub_18F0F90A4(v2, v60, v54);
        }

        *v0 = v59;
        *(v0 + 56) = v17;
        v55 = type metadata accessor for ViewEntityIdentifier();
        *(v0 + *(v55 + 36)) = v46;
        OUTLINED_FUNCTION_8_33();
        sub_18F0F90A4(v47, v0 + v56, v57);
        OUTLINED_FUNCTION_66_6();
        v32 = OUTLINED_FUNCTION_76_7();
        v35 = v55;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_61();
      sub_18F106ED8(v15, v41);
      type metadata accessor for ViewEntityIdentifier();
      v32 = OUTLINED_FUNCTION_4_10();
    }

    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    OUTLINED_FUNCTION_127_1();
  }
}

void __swiftcall ViewAnnotation.asViewIntentIdentifier(location:)(AppIntents::ViewIntentIdentifier_optional *__return_ptr retstr, AppIntents::ViewLocation *location)
{
  v4 = OUTLINED_FUNCTION_4_17();
  v5 = type metadata accessor for ViewAnnotation(v4);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v20 = *&location->z;
  v21 = *&location->x;
  height = location->height;
  depth = location->depth;
  OUTLINED_FUNCTION_0_71();
  v12 = OUTLINED_FUNCTION_53();
  sub_18F0F99B8(v12, v13, v14);
  OUTLINED_FUNCTION_41_9();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_61();
    sub_18F106ED8(v9, v15);
LABEL_5:
    *(v2 + 64) = 0;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    return;
  }

  if (*(v9 + 40) == 1)
  {
    v16 = OUTLINED_FUNCTION_82();
    sub_18F0F689C(v16);
    goto LABEL_5;
  }

  v17 = *(v9 + 32);
  v18 = *v9;
  static AppIntent._identifier.getter(v18);
  OUTLINED_FUNCTION_101_6();
  v19 = OUTLINED_FUNCTION_82();
  sub_18F0F689C(v19);
  *v2 = v18;
  *(v2 + 8) = v5;
  *(v2 + 16) = v17;
  *(v2 + 40) = v20;
  *(v2 + 24) = v21;
  *(v2 + 56) = height;
  *(v2 + 64) = depth;
}

uint64_t ViewAnnotation.hashValue.getter()
{
  sub_18F522EFC();
  ViewAnnotation.hash(into:)();
  return sub_18F522F4C();
}

uint64_t sub_18F2C4B1C()
{
  sub_18F522EFC();
  ViewAnnotation.hash(into:)();
  return sub_18F522F4C();
}

void _s10AppIntents22StandardEntityProviderC012intelligenceaB23PayloadDebugDescriptionSaySSGyF_0()
{
  OUTLINED_FUNCTION_18();
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_0();
  v42[0] = v3;
  v42[1] = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v4);
  v43 = v42 - v5;
  v6 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v7 = *(v0 + v6) + 56;
  OUTLINED_FUNCTION_10_33();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v42[2] = v13;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      OUTLINED_FUNCTION_16();
      return;
    }

    v10 = *(v7 + 8 * v16);
    ++v14;
    if (v10)
    {
      v14 = v16;
      do
      {
LABEL_6:
        v17 = v43;
        OUTLINED_FUNCTION_3_45();
        sub_18F0F99B8(v18, v17, v19);
        sub_18F0F99B8(v17, v1, v0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_18F0FF968(v1, &v44);
            OUTLINED_FUNCTION_1_42(&v44);
            v21 = OUTLINED_FUNCTION_62_0();
            AppEntity.fullyQualifiedIdentifier.getter(v21, v22, v23);
            v0 = EntityIdentifier.viewDebugDescription.getter();
            v25 = v24;
            OUTLINED_FUNCTION_1_61();
            sub_18F106ED8(v43, v26);

            __swift_destroy_boxed_opaque_existential_1Tm(&v44);
          }

          else
          {
            v32 = *(v1 + 16);
            v33 = *(v1 + 24);
            v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
            v44 = *v1;
            v45 = v32;
            v46 = v33;
            v0 = EntityIdentifier.viewDebugDescription.getter();
            v25 = v35;
            OUTLINED_FUNCTION_1_61();
            sub_18F106ED8(v43, v36);

            sub_18F0EF1A8(v1 + v34, &qword_1EACD32D0);
          }
        }

        else
        {
          v27 = *v1;
          v28 = *(v1 + 16);
          *&v44 = 0x3A746E65746E493CLL;
          *(&v44 + 1) = 0xE900000000000020;
          v29 = static AppIntent._identifier.getter(v27);
          MEMORY[0x193ADB000](v29);

          v30 = OUTLINED_FUNCTION_102_5();
          MEMORY[0x193ADB000](v30);
          sub_18F0F689C(v28);
          v25 = *(&v44 + 1);
          v0 = v44;
          OUTLINED_FUNCTION_1_61();
          sub_18F106ED8(v43, v31);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_18_30();
          sub_18F141818();
          v15 = v40;
        }

        v38 = *(v15 + 16);
        v37 = *(v15 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_0_28(v37);
          sub_18F141818();
          v15 = v41;
        }

        v10 &= v10 - 1;
        *(v15 + 16) = v38 + 1;
        v39 = v15 + 16 * v38;
        *(v39 + 32) = v0;
        *(v39 + 40) = v25;
      }

      while (v10);
    }
  }

  __break(1u);
}

uint64_t sub_18F2C4ED8(uint64_t a1)
{
  v2 = type metadata accessor for ViewAnnotation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0F99B8(a1, v4, type metadata accessor for ViewAnnotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F106ED8(v4, type metadata accessor for ViewAnnotation);
    }

    else
    {

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
      sub_18F0EF1A8(&v4[*(v7 + 48)], &qword_1EACD32D0);
    }

    return 0;
  }

  else
  {
    sub_18F106ED8(v4, type metadata accessor for ViewAnnotation);
    return 1;
  }
}

uint64_t StandardEntityProvider.removeAnnotation(_:)()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - v2;
  swift_beginAccess();
  sub_18F2CDD38(v3);
  swift_endAccess();
  return sub_18F0EF1A8(v3, &qword_1EACCFD00);
}

BOOL sub_18F2C50DC(uint64_t a1)
{
  v2 = type metadata accessor for ViewAnnotation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0F99B8(a1, v4, type metadata accessor for ViewAnnotation);
  v5 = swift_getEnumCaseMultiPayload() == 0;
  sub_18F106ED8(v4, type metadata accessor for ViewAnnotation);
  return v5;
}

uint64_t _s10AppIntents22StandardEntityProviderC012intelligenceaB7Payload10Foundation4DataVSgyF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v3 = sub_18F2C534C();
    v5 = v4;
    if (qword_1ED6FD658 != -1)
    {
      OUTLINED_FUNCTION_2_12();
      swift_once();
    }

    v6 = sub_18F52165C();
    __swift_project_value_buffer(v6, qword_1ED707698);
    OUTLINED_FUNCTION_55();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v7 = sub_18F52163C();
    v8 = sub_18F52220C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = sub_18F111F70(v3);

      *(v9 + 12) = 2048;
      *(v9 + 14) = *(v5 + 16);

      _os_log_impl(&dword_18F0E9000, v7, v8, "Building Standard Provider payload with %ld entities and\n%ld intents", v9, 0x16u);
      OUTLINED_FUNCTION_65();
    }

    else
    {
    }

    v10 = objc_allocWithZone(MEMORY[0x1E69AD088]);
    OUTLINED_FUNCTION_55();
    v11 = sub_18F33C1F4();
    sub_18F2C53C8(v11);
  }

  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F2C534C()
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v0 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F2C416C(v0, &v2, &v3);

  return v3;
}

uint64_t sub_18F2C53C8(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v11];
  v2 = v11[0];
  if (v1)
  {
    v3 = sub_18F520D4C();
  }

  else
  {
    v4 = v2;
    v5 = sub_18F520A8C();

    swift_willThrow();
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v6 = sub_18F52165C();
    __swift_project_value_buffer(v6, qword_1ED707698);
    v7 = sub_18F52163C();
    v8 = sub_18F52221C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_18F0E9000, v7, v8, "Failed to build Standard Provider payload", v9, 2u);
      MEMORY[0x193ADD350](v9, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_18F2C5560()
{
  OUTLINED_FUNCTION_69();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0140);
  v1[18] = swift_task_alloc();
  v5 = sub_18F5213AC();
  v1[19] = v5;
  OUTLINED_FUNCTION_51(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_19_13();
  v1[22] = swift_task_alloc();
  v7 = sub_18F5215DC();
  v1[23] = v7;
  OUTLINED_FUNCTION_51(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_19_13();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v9 = sub_18F52159C();
  v1[29] = v9;
  OUTLINED_FUNCTION_51(v9);
  v1[30] = v10;
  v1[31] = OUTLINED_FUNCTION_19_13();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = sub_18F5213DC();
  v1[34] = v11;
  OUTLINED_FUNCTION_51(v11);
  v1[35] = v12;
  v1[36] = OUTLINED_FUNCTION_19_13();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F2C5788()
{
  OUTLINED_FUNCTION_109_2();
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!*(*(v1 + v2) + 16) || (v3 = v0[35], (*(v3 + 104))(v0[38], *MEMORY[0x1E69DBC90], v0[34]), sub_18F5213BC(), OUTLINED_FUNCTION_30_22(), sub_18F103AFC(v4, v5), OUTLINED_FUNCTION_66(), v6 = sub_18F52180C(), v7 = *(v3 + 8), v8 = OUTLINED_FUNCTION_165(), v7(v8), v9 = OUTLINED_FUNCTION_19_3(), v7(v9), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_57_9();

    OUTLINED_FUNCTION_6();

    return v14();
  }

  v16 = swift_allocObject();
  v0[39] = v16;
  *(v16 + 16) = 1;
  sub_18F5213BC();
  v17 = OUTLINED_FUNCTION_165();
  v19 = v18(v17);
  v20 = *MEMORY[0x1E69DBC88];
  v21 = OUTLINED_FUNCTION_165();
  v7(v21);
  if (v19 == v20)
  {
    v22 = *(v16 + 16);
    if ((v22 & 2) == 0)
    {
      *(v16 + 16) = v22 | 2;
    }
  }

  v84 = v16;
  v24 = v0[27];
  v23 = v0[28];
  v26 = v0[23];
  v25 = v0[24];
  v27 = v0[17];
  v28 = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_signposter;
  v0[40] = OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_signposter;
  v29 = *(v25 + 16);
  v0[41] = v29;
  v0[42] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v23, &v27[v28], v26);
  sub_18F5215CC();
  v30 = v27;
  sub_18F52155C();
  v31 = *(v25 + 8);
  v0[43] = v31;
  v0[44] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = v31;
  v31(v23, v26);
  v29(v24, &v27[v28], v26);
  sub_18F52158C();
  v32 = sub_18F5215CC();
  v33 = sub_18F52236C();
  if (sub_18F52251C())
  {
    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_122_3(v34);
    _os_signpost_emit_with_name_impl(&dword_18F0E9000, v32, v33, v35, "build-async-payload", "", v24, 2u);
    OUTLINED_FUNCTION_24_3();
  }

  v36 = v0[32];
  v38 = v0[29];
  v37 = v0[30];
  v39 = v0[27];
  v40 = v0[23];
  v41 = v0[18];
  v85 = v0[16];
  v86 = v0[19];

  v42 = OUTLINED_FUNCTION_62_0();
  v43(v42);
  sub_18F52161C();
  swift_allocObject();
  v0[45] = sub_18F52160C();
  v44 = *(v37 + 8);
  v0[46] = v44;
  v0[47] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v36, v38);
  v87(v39, v40);
  sub_18F116970(v85, v41, &qword_1EACD0140);
  if (__swift_getEnumTagSinglePayload(v41, 1, v86) == 1)
  {
    sub_18F0EF1A8(v0[18], &qword_1EACD0140);
LABEL_13:
    v0[12] = *(v84 + 16);
    v45 = swift_task_alloc();
    v0[48] = v45;
    *v45 = v0;
    v45[1] = sub_18F2C6130;

    return sub_18F2C6D40(v0 + 12);
  }

  (*(v0[20] + 32))(v0[22], v0[18], v0[19]);
  sub_18F0F21A8(0, &qword_1EACD0540);
  sub_18F0F21A8(0, &qword_1EACD0548);
  v46 = sub_18F52138C();
  v48 = v47;
  v49 = sub_18F5222FC();
  sub_18F123A1C(v46, v48);
  v50 = v0[22];
  v51 = v0[19];
  v52 = v0[20];
  if (!v49)
  {
    (*(v52 + 8))(v0[22], v0[19]);
    goto LABEL_13;
  }

  v53 = [v49 entities];
  sub_18F0F21A8(0, &unk_1ED6FE390);
  v54 = sub_18F521CAC();

  v0[11] = v54;
  v55 = [v49 intents];
  v56 = sub_18F521CAC();

  (*(v52 + 8))(v50, v51);
  v0[51] = v56;
  v57 = qword_1ED6FD658;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  if (v57 != -1)
  {
    OUTLINED_FUNCTION_2_12();
    swift_once();
  }

  v58 = sub_18F52165C();
  __swift_project_value_buffer(v58, qword_1ED707698);
  OUTLINED_FUNCTION_99_4();

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v59 = sub_18F52163C();
  v60 = sub_18F52220C();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v0[39];
  if (v61)
  {
    v51 = OUTLINED_FUNCTION_75();
    v88 = OUTLINED_FUNCTION_75();
    *v51 = 134218498;
    *(v51 + 4) = sub_18F111F70(v54);
    *(v51 + 12) = 2048;
    v63 = *(v56 + 16);

    *(v51 + 14) = v63;

    *(v51 + 22) = 2080;
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    v0[13] = *(v62 + 16);
    sub_18F2CE0A4();
    sub_18F52260C();
    OUTLINED_FUNCTION_83_1();

    v64 = OUTLINED_FUNCTION_45();
    sub_18F11897C(v64, v65, v66);
    OUTLINED_FUNCTION_55();

    *(v51 + 24) = v0 + 13;
    _os_log_impl(&dword_18F0E9000, v59, v60, "Building Standard Provider async payload with %ld entities and\n%ld intents for components: %s", v51, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v67 = OUTLINED_FUNCTION_33_19();
  v68(v67);
  sub_18F5215CC();
  sub_18F52237C();
  if (sub_18F52251C())
  {
    v69 = OUTLINED_FUNCTION_88_5();
    v70 = OUTLINED_FUNCTION_122_3(v69);
    OUTLINED_FUNCTION_71_1(&dword_18F0E9000, v71, v72, v70, "begin-fetch-batch-display-representations", "");
    OUTLINED_FUNCTION_24_3();
  }

  OUTLINED_FUNCTION_117_3();
  v73 = OUTLINED_FUNCTION_45();
  v60(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B58);
  v74 = swift_task_alloc();
  v0[52] = v74;
  *(v74 + 16) = v0 + 11;
  *(v74 + 24) = v51;
  v75 = swift_task_alloc();
  v0[53] = v75;
  *v75 = v0;
  OUTLINED_FUNCTION_25_23(v75);
  OUTLINED_FUNCTION_15_29(MEMORY[0x1E69E7CA8]);
  OUTLINED_FUNCTION_47_1();

  return MEMORY[0x1EEE6DD58](v76, v77, v78, v79, v80, v81, v82, v83);
}

uint64_t sub_18F2C6130()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;
  *(v1 + 400) = v4;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2C6220()
{
  v3 = v0[49];
  v0[11] = v3;
  v4 = v0[50];
  v0[51] = v4;
  v5 = qword_1ED6FD658;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_12();
    swift_once();
  }

  v6 = sub_18F52165C();
  __swift_project_value_buffer(v6, qword_1ED707698);
  OUTLINED_FUNCTION_99_4();

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = sub_18F52163C();
  v8 = sub_18F52220C();
  v9 = OUTLINED_FUNCTION_67_1(v8);
  v10 = v0[39];
  if (v9)
  {
    v2 = OUTLINED_FUNCTION_75();
    v32 = OUTLINED_FUNCTION_75();
    *v2 = 134218498;
    *(v2 + 4) = sub_18F111F70(v3);
    *(v2 + 12) = 2048;
    v3 = *(v4 + 16);

    *(v2 + 14) = v3;

    *(v2 + 22) = 2080;
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    v0[13] = *(v10 + 16);
    sub_18F2CE0A4();
    sub_18F52260C();
    OUTLINED_FUNCTION_83_1();

    v11 = OUTLINED_FUNCTION_45();
    sub_18F11897C(v11, v12, v13);
    OUTLINED_FUNCTION_55();

    *(v2 + 24) = v0 + 13;
    _os_log_impl(&dword_18F0E9000, v7, v1, "Building Standard Provider async payload with %ld entities and\n%ld intents for components: %s", v2, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_65();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v14 = OUTLINED_FUNCTION_33_19();
  v15(v14);
  sub_18F5215CC();
  sub_18F52237C();
  if (sub_18F52251C())
  {
    v16 = OUTLINED_FUNCTION_88_5();
    v17 = OUTLINED_FUNCTION_122_3(v16);
    OUTLINED_FUNCTION_71_1(&dword_18F0E9000, v18, v19, v17, "begin-fetch-batch-display-representations", "");
    OUTLINED_FUNCTION_24_3();
  }

  OUTLINED_FUNCTION_117_3();
  v20 = OUTLINED_FUNCTION_45();
  (v2)(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B58);
  v21 = swift_task_alloc();
  v0[52] = v21;
  *(v21 + 16) = v0 + 11;
  *(v21 + 24) = v3;
  v22 = swift_task_alloc();
  v0[53] = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_25_23(v22);
  OUTLINED_FUNCTION_15_29(MEMORY[0x1E69E7CA8]);
  OUTLINED_FUNCTION_29_1();

  return MEMORY[0x1EEE6DD58](v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_18F2C64D4()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2C660C()
{
  v1 = OUTLINED_FUNCTION_33_19();
  v2(v1);
  v3 = sub_18F5215CC();
  sub_18F52237C();
  if (sub_18F52251C())
  {
    v4 = OUTLINED_FUNCTION_88_5();
    v5 = OUTLINED_FUNCTION_122_3(v4);
    OUTLINED_FUNCTION_71_1(&dword_18F0E9000, v6, v7, v5, "end-fetch-batch-display-representations", "");
    OUTLINED_FUNCTION_24_3();
  }

  v8 = v0[43];

  v9 = OUTLINED_FUNCTION_165();
  v8(v9);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  objc_allocWithZone(MEMORY[0x1E69AD088]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v10 = sub_18F33C1F4();
  sub_18F2C53C8(v10);
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    v13 = v0[46];
    v14 = v0[17];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

    sub_18F2C6A30(v14);

    v19 = OUTLINED_FUNCTION_43_1();
    v13(v19);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_165();
    sub_18F16AAE0(v20, v21);
    OUTLINED_FUNCTION_165();
    sub_18F52139C();
    if (sub_18F5213CC())
    {
      _s10AppIntents22StandardEntityProviderC012intelligenceaB23PayloadDebugDescriptionSaySSGyF_0();
      sub_18F52137C();
    }

    v33 = v0[46];
    v31 = v0[29];
    v32 = v0[33];
    v22 = v0[20];
    v23 = v0[21];
    v24 = v0[19];
    v30 = v0[17];
    v25 = v0[14];
    v26 = OUTLINED_FUNCTION_165();
    sub_18F190748(v26, v27);
    (*(v22 + 32))(v25, v23, v24);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);

    sub_18F2C6A30(v30);

    v33(v32, v31);
  }

  OUTLINED_FUNCTION_57_9();

  OUTLINED_FUNCTION_6();

  return v28();
}

uint64_t sub_18F2C68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_114_3();
  OUTLINED_FUNCTION_109_2();

  v44 = v22[54];
  v23 = v22[46];
  v24 = v22[33];
  v35 = v22[32];
  v36 = v22[31];
  v25 = v22[29];
  v37 = v22[28];
  v38 = v22[27];
  v39 = v22[26];
  v40 = v22[25];
  v41 = v22[22];
  v42 = v22[21];
  v43 = v22[18];
  sub_18F2C6A30(v22[17]);

  v23(v24, v25);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_47_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

uint64_t sub_18F2C6A30(uint64_t a1)
{
  v2 = sub_18F5215EC();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_18F52159C();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_18F5215DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_signposter, v8);
  v12 = sub_18F5215CC();
  sub_18F5215FC();
  v19 = sub_18F52235C();
  if (sub_18F52251C())
  {

    sub_18F52162C();

    v13 = v20;
    if ((*(v20 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_18F52157C();
    _os_signpost_emit_with_name_impl(&dword_18F0E9000, v12, v19, v16, "build-async-payload", v14, v15, 2u);
    MEMORY[0x193ADD350](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18F2C6D40(uint64_t *a1)
{
  v2[44] = v1;
  v4 = type metadata accessor for ViewAnnotation(0);
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[48] = v5;
  v2[49] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18F2C6E14, 0, 0);
}

uint64_t sub_18F2C743C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 448) = v3;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2C7C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B68);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2C7D68, 0, 0);
}

uint64_t sub_18F2C7D68()
{
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v2 = *v1;
  v3 = sub_18F111F70(*v1);
  v4 = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = 0;
  v10 = &unk_1E72B7000;
  v51 = v3;
  v52 = v2;
  v49 = v2 & 0xFFFFFFFFFFFFFF8;
  v50 = v2 & 0xC000000000000001;
  while (v3 != v9)
  {
    if (v4)
    {
      v6 = MEMORY[0x193ADBE10](v9, v2);
    }

    else
    {
      if (v9 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v6 = *(v2 + 8 * v9 + 32);
    }

    v11 = v6;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return MEMORY[0x1EEE6DAD8](v6, v7, v8);
    }

    [v6 v10[333]];
    sub_18F52261C();
    swift_unknownObjectRelease();
    sub_18F0F21A8(0, &qword_1EACCDD20);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 176);
      v13 = [v12 typeIdentifier];
      sub_18F5218DC();

      v54 = v12;
      v14 = [v12 instanceIdentifier];
      v53 = sub_18F5218DC();
      v16 = v15;

      if (qword_1ED6FF6D8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
        swift_once();
      }

      OUTLINED_FUNCTION_37();
      v21 = sub_18F2794A0(v17, v18, v19, v20);
      v23 = v22;
      v24 = *(v0 + 224);
      v47 = *(v0 + 208);
      v48 = *(v0 + 216);

      v25 = sub_18F521EFC();
      v26 = v24;
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v21;
      v30[5] = v23;
      v30[6] = v53;
      v30[7] = v16;
      v30[8] = v47;
      v30[9] = v11;
      v30[10] = v9;
      sub_18F116970(v26, v48, &qword_1EACD0418);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v25);

      v32 = v11;
      v33 = v32;
      if (EnumTagSinglePayload == 1)
      {
        v34 = OUTLINED_FUNCTION_41_9();
        sub_18F0EF1A8(v34, v35);
      }

      else
      {
        sub_18F521EEC();
        v36 = OUTLINED_FUNCTION_62_0();
        v37(v36);
      }

      if (v30[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = sub_18F521E1C();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v2 = v52;
      v41 = **(v0 + 192);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B58);
      v42 = v40 | v38;
      if (v40 | v38)
      {
        v42 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v38;
        *(v0 + 72) = v40;
      }

      v43 = *(v0 + 224);
      *(v0 + 104) = 1;
      *(v0 + 112) = v42;
      *(v0 + 120) = v41;
      swift_task_create();

      v6 = sub_18F0EF1A8(v43, &qword_1EACD0418);
      v4 = v50;
      v3 = v51;
      v5 = v49;
      v10 = &unk_1E72B7000;
    }

    else
    {
    }

    ++v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  OUTLINED_FUNCTION_66();
  sub_18F521F8C();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 256) = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_22_25(v44);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DAD8](v6, v7, v8);
}

uint64_t sub_18F2C83AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2C84A8()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    if (*(v0 + 168))
    {
      goto LABEL_10;
    }

    v2 = *(v0 + 160);
    v3 = *(v0 + 200);
    OUTLINED_FUNCTION_22();
    swift_beginAccess();
    v4 = *v3;
    v5 = v1;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v3 = v4;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
    {
      v9 = *(v0 + 200);
      isUniquelyReferenced_nonNull_bridgeObject = sub_18F3B9D74(v4);
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      *v9 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v5;
      swift_endAccess();

LABEL_10:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 256) = v11;
      *v11 = v12;
      OUTLINED_FUNCTION_22_25();
      OUTLINED_FUNCTION_13_0();

      return MEMORY[0x1EEE6DAD8](isUniquelyReferenced_nonNull_bridgeObject, v7, v8);
    }

    __break(1u);
    return MEMORY[0x1EEE6DAD8](isUniquelyReferenced_nonNull_bridgeObject, v7, v8);
  }

  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

  OUTLINED_FUNCTION_6();

  return v13();
}

uint64_t sub_18F2C8654()
{
  OUTLINED_FUNCTION_21();
  (*(v0[30] + 8))(v0[31], v0[29]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2C86E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v11;
  v8[20] = v12;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a1;
  v8[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v8[21] = swift_task_alloc();
  v8[22] = type metadata accessor for DisplayRepresentation();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2C87D4, 0, 0);
}

uint64_t sub_18F2C87D4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v8 = *(v0 + 112);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v0 + 16) = "FetchDisplayRepresentation";
  *(v0 + 24) = 26;
  *(v0 + 32) = 2;
  *(v0 + 40) = v8;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v4;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 200) = v5;
  *v5 = v6;
  v5[1] = sub_18F2C88E4;

  return sub_18F1A4F10();
}

uint64_t sub_18F2C88E4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 208) = v0;

  sub_18F16AD28(v3 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F2C89E8()
{
  v1 = v0[21];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[22]);
  if (EnumTagSinglePayload == 1)
  {
    v3 = v0[19];
    sub_18F0EF1A8(v1, &qword_1EACD32D0);
    v4 = v3;
    v5 = 0;
    v6 = v0[19];
  }

  else
  {
    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[16];
    v9 = v0[17];
    v12 = v0[14];
    v11 = v0[15];
    sub_18F0F90A4(v1, v7, type metadata accessor for DisplayRepresentation);
    v13 = OUTLINED_FUNCTION_165();
    sub_18F0F99B8(v13, v14, type metadata accessor for DisplayRepresentation);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v6 = sub_18F2C39F8(v12, v11, v10, v9, v8);
    sub_18F106ED8(v7, type metadata accessor for DisplayRepresentation);
    v5 = v0[20];
  }

  v15 = v0[13];
  *v15 = v6;
  *(v15 + 8) = v5;
  *(v15 + 16) = EnumTagSinglePayload == 1;

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F2C8B38()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2C8BA8(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = type metadata accessor for ViewAnnotation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0F99B8(a1, v9, type metadata accessor for ViewAnnotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FF968(v9, &v71);
      if (qword_1ED6FD658 != -1)
      {
        swift_once();
      }

      v11 = sub_18F52165C();
      __swift_project_value_buffer(v11, qword_1ED707698);
      sub_18F0FD724(&v71, v68);
      v12 = sub_18F52163C();
      v13 = sub_18F52220C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v76 = v15;
        *v14 = 136315138;
        v16 = v69;
        v17 = v70;
        __swift_project_boxed_opaque_existential_1Tm(v68, v69);
        AppEntity.fullyQualifiedIdentifier.getter(v16, v17, &v65);
        v62 = v65;
        v63 = v66;
        v64 = v67;
        v18 = EntityIdentifier.viewDebugDescription.getter();
        v20 = v19;

        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v21 = sub_18F11897C(v18, v20, &v76);

        *(v14 + 4) = v21;
        _os_log_impl(&dword_18F0E9000, v12, v13, "Adding entity: %s to payload", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x193ADD350](v15, -1, -1);
        MEMORY[0x193ADD350](v14, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v68);
      }

      v55 = v74;
      v56 = v75;
      __swift_project_boxed_opaque_existential_1Tm(&v71, v74);
      AppEntity.asValue.getter(v55, v56);
      MEMORY[0x193ADB260]();
      sub_18F16AE80(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_18F521D6C();
      return __swift_destroy_boxed_opaque_existential_1Tm(&v71);
    }

    else
    {
      v41 = *v9;
      v40 = *(v9 + 1);
      v43 = *(v9 + 2);
      v42 = *(v9 + 3);
      if (qword_1ED6FD658 != -1)
      {
        swift_once();
      }

      v44 = sub_18F52165C();
      __swift_project_value_buffer(v44, qword_1ED707698);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v45 = sub_18F52163C();
      v46 = v42;
      v47 = sub_18F52220C();

      if (os_log_type_enabled(v45, v47))
      {
        v48 = swift_slowAlloc();
        v61 = v40;
        v49 = v48;
        v59 = swift_slowAlloc();
        v68[0] = v59;
        *v49 = 136315138;
        v71 = v41;
        v72 = v61;
        v73 = v43;
        v74 = v46;
        v60 = v46;
        v50 = EntityIdentifier.viewDebugDescription.getter();
        v52 = sub_18F11897C(v50, v51, v68);
        v58 = v43;
        v53 = v52;

        *(v49 + 4) = v53;
        _os_log_impl(&dword_18F0E9000, v45, v47, "Adding entity: %s to payload", v49, 0xCu);
        v54 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x193ADD350](v54, -1, -1);
        MEMORY[0x193ADD350](v49, -1, -1);
      }

      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
      sub_18F23311C();
      MEMORY[0x193ADB260]();
      sub_18F16AE80(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_18F521D6C();
      return sub_18F0EF1A8(&v9[v57], &qword_1EACD32D0);
    }
  }

  else
  {
    v23 = *v9;
    v22 = *(v9 + 1);
    v24 = *(v9 + 2);
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v25 = sub_18F52165C();
    __swift_project_value_buffer(v25, qword_1ED707698);
    sub_18F22D914(v24);
    v26 = sub_18F52163C();
    v27 = sub_18F52220C();
    v61 = v24;
    sub_18F0F689C(v24);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v3;
      v30 = v29;
      v68[0] = v29;
      *v28 = 136315138;
      v71 = 0x3A746E65746E493CLL;
      v72 = 0xE900000000000020;
      v31 = static AppIntent._identifier.getter(v23);
      v59 = v22;
      MEMORY[0x193ADB000](v31);

      MEMORY[0x193ADB000](62, 0xE100000000000000);
      v32 = sub_18F11897C(v71, v72, v68);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_18F0E9000, v26, v27, "Adding intent: %s to payload", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x193ADD350](v30, -1, -1);
      MEMORY[0x193ADD350](v28, -1, -1);
    }

    v33 = static AppIntent._identifier.getter(v23);
    v35 = v34;
    sub_18F166FA8();
    v36 = *(*a2 + 16);
    sub_18F167060(v36);
    result = sub_18F0F689C(v61);
    v38 = *a2;
    *(v38 + 16) = v36 + 1;
    v39 = v38 + 16 * v36;
    *(v39 + 32) = v33;
    *(v39 + 40) = v35;
  }

  return result;
}

id StandardEntityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardEntityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL StandardEntityProvider.intelligenceNeedsAppIntentsPayloadFetch(request:)()
{
  v0 = sub_18F5213DC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  (*(v2 + 104))(&v15 - v8, *MEMORY[0x1E69DBC90], v0);
  sub_18F5213BC();
  OUTLINED_FUNCTION_30_22();
  sub_18F103AFC(v10, v11);
  OUTLINED_FUNCTION_92_0();
  v12 = sub_18F52180C();
  v13 = *(v2 + 8);
  v13(v6, v0);
  v13(v9, v0);
  return (v12 & 1) == 0;
}

uint64_t StandardEntityProvider.intelligenceFetchAppIntentsPayload(request:synchronousPayload:)()
{
  v0[2] = sub_18F521EBC();
  v0[3] = sub_18F521EAC();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_18F2C9528;

  return sub_18F2C5560();
}

uint64_t sub_18F2C9528()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_18F521E1C();
  if (v0)
  {
    v9 = sub_18F2AEB70;
  }

  else
  {
    v9 = sub_18F2C9670;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_18F2C9670()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_18F2C972C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return StandardEntityProvider.intelligenceFetchAppIntentsPayload(request:synchronousPayload:)();
}

uint64_t sub_18F2C97EC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_18F522EFC();
  sub_18F0FD724(a2, v24);
  v5 = OUTLINED_FUNCTION_13_8(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  MEMORY[0x193ADC4F0](v5);
  v6 = OUTLINED_FUNCTION_165();
  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  sub_18F52178C();
  sub_18F522F4C();
  OUTLINED_FUNCTION_56_6();
  v10 = v9 & ~v8;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v8;
    do
    {
      sub_18F1A7FEC(*(v4 + 48) + 40 * v10, v24);
      sub_18F0FD724(v24, v25);
      v12 = OUTLINED_FUNCTION_13_8(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      sub_18F0FD724(a2, v25);
      __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      if (v12 == DynamicType)
      {
        sub_18F522EFC();
        sub_18F0FD724(v24, v23);
        v14 = OUTLINED_FUNCTION_13_8(v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x193ADC4F0](v14);
        __swift_project_boxed_opaque_existential_1Tm(v24, v24[3]);
        sub_18F52178C();
        v15 = sub_18F522F4C();
        sub_18F522EFC();
        sub_18F0FD724(a2, v23);
        v16 = OUTLINED_FUNCTION_13_8(v23);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x193ADC4F0](v16);
        __swift_project_boxed_opaque_existential_1Tm(a2, *(a2 + 24));
        sub_18F52178C();
        v17 = sub_18F522F4C();
        sub_18F1A8048(v24);
        if (v15 == v17)
        {
          sub_18F1A8048(a2);
          sub_18F1A7FEC(*(v4 + 48) + 40 * v10, a1);
          return 0;
        }
      }

      else
      {
        sub_18F1A8048(v24);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18F1A7FEC(a2, v25);
  v24[0] = *v21;
  sub_18F2CB2D0(v25, v10, isUniquelyReferenced_nonNull_native);
  *v21 = v24[0];
  v19 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v19;
  *(a1 + 32) = *(a2 + 32);
  return 1;
}

BOOL sub_18F2C9C00(_DWORD *a1, uint64_t a2)
{
  v7 = *v2;
  MEMORY[0x193ADC4C0](*(v7 + 40), a2, 4);
  OUTLINED_FUNCTION_72_6();
  while (1)
  {
    OUTLINED_FUNCTION_71_5();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_103_4();
  v10 = sub_18F2CB7D8(a2, v3, v9);
  OUTLINED_FUNCTION_100_5(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

void sub_18F2C9CA8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v25 = v3;
  v4 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v24 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_29_26();
  sub_18F103AFC(v12, v13);
  sub_18F52177C();
  v26 = v11;
  v27 = v11 + 56;
  OUTLINED_FUNCTION_56_6();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v27 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v28 = *v24;
      sub_18F2CB8E0(v10, v17, isUniquelyReferenced_nonNull_native);
      *v24 = v28;
      (*(v6 + 32))(v25, v2, v4);
      goto LABEL_7;
    }

    v18 = *(v6 + 72) * v17;
    v19 = *(v6 + 16);
    v19(v10, *(v26 + 48) + v18, v4);
    OUTLINED_FUNCTION_29_26();
    sub_18F103AFC(&qword_1EACCE7B8, v20);
    v21 = sub_18F52180C();
    v22 = *(v6 + 8);
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v25, *(v26 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_16();
}

BOOL sub_18F2C9F28(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_18F522EEC();
  OUTLINED_FUNCTION_72_6();
  while (1)
  {
    OUTLINED_FUNCTION_71_5();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_103_4();
  v9 = OUTLINED_FUNCTION_19_3();
  v12 = sub_18F2CBB6C(v9, v10, v11);
  OUTLINED_FUNCTION_100_5(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_18F2C9FC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B50);
    v2 = sub_18F52275C();
    v14 = v2;
    sub_18F52269C();
    while (1)
    {
      if (!sub_18F5226CC())
      {

        return v2;
      }

      sub_18F0F21A8(0, qword_1ED6FBD60);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_18F1453AC();
      }

      v2 = v14;
      result = sub_18F52242C();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_18F2CA1A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B30);
  v3 = sub_18F52274C();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v2 + 48) + 40 * (v10 | (v4 << 6));
      v14 = *(v13 + 16);
      v16[0] = *v13;
      v16[1] = v14;
      v17 = *(v13 + 32);
      sub_18F2CB134(v16, v3);
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v5[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      sub_18F128DD4(0, (v15 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v5 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v3;
}

uint64_t sub_18F2CA4BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B48);
  result = sub_18F52274C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_18F128DD4(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v17 = *v15;
    v16 = v15[1];
    sub_18F522EFC();
    sub_18F522F1C();
    if (v16)
    {
      sub_18F5219CC();
    }

    result = sub_18F522F4C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v17;
    v26[1] = v16;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18F2CA734()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B40);
  result = sub_18F52274C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_18F128DD4(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_18F522EFC();
    sub_18F5219CC();
    result = sub_18F522F4C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18F2CA990()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B78);
  result = sub_18F52274C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_18F128DD4(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
    result = MEMORY[0x193ADC4C0](*(v4 + 40), v15, 4);
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 4 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18F2CABB8()
{
  v1 = v0;
  v35 = sub_18F520C8C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B28);
  result = sub_18F52274C();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_18F128DD4(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_18F103AFC(&qword_1EACCED58, MEMORY[0x1E6968FB0]);
    result = sub_18F52177C();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18F2CAF10()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B38);
  result = sub_18F52274C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_18F128DD4(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_18F522EEC();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

__n128 sub_18F2CB134(__n128 *a1, uint64_t a2)
{
  sub_18F522EFC();
  sub_18F0FD724(a1, v9);
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  MEMORY[0x193ADC4F0](DynamicType);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[1].n128_i64[1]);
  sub_18F52178C();
  sub_18F522F4C();
  v5 = sub_18F52268C();
  *(a2 + 56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
  v6 = *(a2 + 48) + 40 * v5;
  v7 = a1[2].n128_u64[0];
  result = a1[1];
  *v6 = *a1;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_18F2CB24C(uint64_t a1, uint64_t a2)
{
  sub_18F52242C();
  result = sub_18F52268C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_18F2CB2D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F2CA1A0();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_18F2CBC70();
        goto LABEL_14;
      }

      sub_18F2CC9FC();
    }

    v8 = *v3;
    sub_18F522EFC();
    sub_18F0FD724(v5, v28);
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x193ADC4F0](DynamicType);
    __swift_project_boxed_opaque_existential_1Tm(v5, *(v5 + 24));
    sub_18F52178C();
    result = sub_18F522F4C();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        sub_18F1A7FEC(*(v8 + 48) + 40 * a2, v28);
        sub_18F0FD724(v28, v30);
        __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        v12 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        sub_18F0FD724(v5, v30);
        __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        v13 = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        if (v12 == v13)
        {
          sub_18F522EFC();
          sub_18F0FD724(v28, v26);
          __swift_project_boxed_opaque_existential_1Tm(v26, v27);
          v14 = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x193ADC4F0](v14);
          __swift_project_boxed_opaque_existential_1Tm(v28, v29);
          sub_18F52178C();
          v15 = sub_18F522F4C();
          sub_18F522EFC();
          sub_18F0FD724(v5, v26);
          __swift_project_boxed_opaque_existential_1Tm(v26, v27);
          v16 = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x193ADC4F0](v16);
          __swift_project_boxed_opaque_existential_1Tm(v5, *(v5 + 24));
          sub_18F52178C();
          v17 = sub_18F522F4C();
          result = sub_18F1A8048(v28);
          if (v15 == v17)
          {
            goto LABEL_17;
          }
        }

        else
        {
          result = sub_18F1A8048(v28);
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_14:
  v18 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48) + 40 * a2;
  v20 = *v5;
  v21 = *(v5 + 16);
  *(v19 + 32) = *(v5 + 32);
  *v19 = v20;
  *(v19 + 16) = v21;
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_17:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }

  return result;
}

uint64_t sub_18F2CB61C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_18F2CA4BC();
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_18F2CC14C();
        goto LABEL_22;
      }

      sub_18F2CCF78();
    }

    v11 = *v4;
    sub_18F522EFC();
    sub_18F522F1C();
    if (a2)
    {
      sub_18F5219CC();
    }

    result = sub_18F522F4C();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_18F522D5C();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_18F2CB7D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F2CA990();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_18F2CD1C8();
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x193ADC4C0](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_18F2CC3F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_18F2CB8E0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_18F520C8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F2CABB8();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_18F2CD3B8();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_18F103AFC(&qword_1EACCED58, MEMORY[0x1E6968FB0]);
      v13 = sub_18F52177C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_18F103AFC(&qword_1EACCE7B8, MEMORY[0x1E6968FB0]);
        v15 = sub_18F52180C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_18F2CC538();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_18F2CBB6C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F2CAF10();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_18F2CD6D0();
LABEL_10:
      v12 = *v3;
      result = sub_18F522EEC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_18F2CC8BC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_18F2CBC70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B30);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_18F1A7FEC(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CBDE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B80);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 5 * v14;
      v18 = *(v2 + 48) + 8 * v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 16);
      v21 = *(v4 + 48) + 8 * v17;
      *v21 = *v18;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CBF38()
{
  v1 = v0;
  v2 = type metadata accessor for ViewAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B70);
  v6 = *v0;
  v7 = sub_18F52273C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18F0F99B8(*(v6 + 48) + v21, v5, type metadata accessor for ViewAnnotation);
        result = sub_18F0F90A4(v5, *(v8 + 48) + v21, type metadata accessor for ViewAnnotation);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_18F2CC14C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B48);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CC2A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B40);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CC3F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B78);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CC538()
{
  v1 = v0;
  v2 = sub_18F520C8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B28);
  v6 = *v0;
  v7 = sub_18F52273C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

id sub_18F2CC76C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B50);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18F2CC8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B38);
  v2 = *v0;
  v3 = sub_18F52273C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_18F2CC9FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B30);
  v3 = sub_18F52274C();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      sub_18F1A7FEC(*(v2 + 48) + 40 * (v9 | (v4 << 6)), v12);
      sub_18F2CB134(v12, v3);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_13;
      }

      v11 = *(v2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v3;
  }
}

uint64_t sub_18F2CCCA4()
{
  v1 = v0;
  v2 = type metadata accessor for ViewAnnotation(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B70);
  result = sub_18F52274C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(v28 + 72);
        sub_18F0F99B8(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for ViewAnnotation);
        sub_18F522EFC();
        ViewAnnotation.hash(into:)();
        result = sub_18F522F4C();
        v18 = -1 << *(v7 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        result = sub_18F0F90A4(v4, *(v7 + 48) + v21 * v17, type metadata accessor for ViewAnnotation);
        ++*(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v16 = *(v5 + 56 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18F2CCF78()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B48);
  result = sub_18F52274C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_18F522EFC();
        sub_18F522F1C();
        if (v15)
        {
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F5219CC();
        }

        result = sub_18F522F4C();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v16;
        v25[1] = v15;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18F2CD1C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B78);
  result = sub_18F52274C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 4 * (v11 | (v5 << 6)));
        result = MEMORY[0x193ADC4C0](*(v4 + 40), v14, 4);
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 4 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18F2CD3B8()
{
  v1 = v0;
  v32 = sub_18F520C8C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B28);
  v6 = sub_18F52274C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_18F103AFC(&qword_1EACCED58, MEMORY[0x1E6968FB0]);
        result = sub_18F52177C();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_18F2CD6D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B38);
  result = sub_18F52274C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_18F522EEC();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18F2CD8BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v30 = a4;
  v25 = a2;
  v26 = a1;
  v5 = type metadata accessor for ViewAnnotation(0);
  v29 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = 0;
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v31 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v28;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v32 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    sub_18F0F99B8(*(v31 + 48) + *(v29 + 72) * v20, v16, type metadata accessor for ViewAnnotation);
    v21 = v33;
    v22 = v30(v16);
    result = sub_18F106ED8(v16, type metadata accessor for ViewAnnotation);
    v33 = v21;
    if (v21)
    {
      return result;
    }

    v14 = v32;
    if (v22)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_18F128E38(v26, v25, v27, v24);
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v19 = *(v10 + 8 * v8);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v32 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_18F2CDAE0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_18F2CD8BC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_18F2CDB70()
{
  OUTLINED_FUNCTION_115_2();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_113_0();
    return;
  }

  v6 = v1;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B40);
  OUTLINED_FUNCTION_55();
  v8 = sub_18F52276C();
  v9 = v8;
  if (v6 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v7;
  }

  v11 = 0;
  v12 = v8 + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v17 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v17;
    v19 = v17[1];
    sub_18F522EFC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F5219CC();
    sub_18F522F4C();
    OUTLINED_FUNCTION_37_1();
    if (((v22 << v21) & ~*(v12 + 8 * v20)) == 0)
    {
      OUTLINED_FUNCTION_35();
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        if (*(v12 + 8 * v24) != -1)
        {
          OUTLINED_FUNCTION_34_2();
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_25:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_30;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      goto LABEL_5;
    }

    ++v14;
    if (v7[v11])
    {
      OUTLINED_FUNCTION_21_24();
      v10 = v16 & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_18F2CDD38@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for ViewAnnotation(0);
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v5 = *v1;
  sub_18F522EFC();
  ViewAnnotation.hash(into:)();
  v6 = sub_18F522F4C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      v12 = 1;
      v13 = v21;
      return __swift_storeEnumTagSinglePayload(v13, v12, 1, v20);
    }

    v9 = *(v2 + 72) * v8;
    sub_18F0F99B8(*(v5 + 48) + v9, v4, type metadata accessor for ViewAnnotation);
    static ViewAnnotation.== infix(_:_:)();
    v11 = v10;
    sub_18F106ED8(v4, type metadata accessor for ViewAnnotation);
    if (v11)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v14 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v14;
  v22 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18F2CBF38();
    v16 = v22;
  }

  v17 = *(v16 + 48) + v9;
  v13 = v21;
  sub_18F0F90A4(v17, v21, type metadata accessor for ViewAnnotation);
  sub_18F2CE1DC(v8);
  v12 = 0;
  *v14 = v22;
  return __swift_storeEnumTagSinglePayload(v13, v12, 1, v20);
}

_BYTE *storeEnumTagSinglePayload for EntityProviderEvents(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2CDFF8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_18F0FC870;

  return sub_18F2C7C54(v5, v3, v7, v6);
}

unint64_t sub_18F2CE0A4()
{
  result = qword_1EACD4B60;
  if (!qword_1EACD4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4B60);
  }

  return result;
}

uint64_t sub_18F2CE0F8()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_29_1();

  return sub_18F2C86E8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F2CE1DC(int64_t a1)
{
  v29 = type metadata accessor for ViewAnnotation(0);
  v3 = *(v29 - 8);
  result = MEMORY[0x1EEE9AC00](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_18F52267C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v30 = v8;
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_18F0F99B8(*(v7 + 48) + v14 * v10, v6, type metadata accessor for ViewAnnotation);
        sub_18F522EFC();
        ViewAnnotation.hash(into:)();
        v16 = sub_18F522F4C();
        sub_18F106ED8(v6, type metadata accessor for ViewAnnotation);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          if (v17 < v13 || a1 < v17)
          {
            goto LABEL_24;
          }
        }

        else if (v17 < v13 && a1 < v17)
        {
          goto LABEL_24;
        }

        v20 = *(v7 + 48);
        v21 = v14 * a1;
        v22 = v20 + v14 * a1;
        v23 = v20 + v15 + v14;
        if (v14 * a1 < v15 || v22 >= v23)
        {
          break;
        }

        a1 = v10;
        if (v21 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v11;
        if (((*(v30 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          v8 = v30;
          goto LABEL_28;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v10;
      goto LABEL_24;
    }

LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v7 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v27;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_93_5@<X0>(void *a1@<X8>)
{

  return AppEntity.fullyQualifiedIdentifier.getter(v1, v2, a1);
}

void OUTLINED_FUNCTION_117_3()
{
}

void OUTLINED_FUNCTION_119_2()
{

  JUMPOUT(0x193ADC4F0);
}

void *OUTLINED_FUNCTION_124_3()
{
  v1 = v0[49];
  result = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v0[43] = v1;
  return result;
}

uint64_t DeferredIntentResultContainer.__allocating_init<>(dialog:progress:_:completed:cancel:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  DeferredIntentResultContainer.init<>(dialog:progress:_:completed:cancel:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DeferredIntentResultContainer.init<>(dialog:progress:_:completed:cancel:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  OUTLINED_FUNCTION_13_30(qword_1EACD4B88);
  *(v8 + qword_1EACD4B90) = xmmword_18F543360;
  OUTLINED_FUNCTION_13_30(qword_1EACD4B98);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v15 = (v8 + qword_1EACD4BA0);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v8 + qword_1EACD4BA8);
  *v16 = 0;
  v16[1] = 0;
  v17 = qword_1EAD0AC38;
  sub_18F1B8ADC(a1, v8 + qword_1EAD0AC38);
  __swift_storeEnumTagSinglePayload(v8 + v17, 0, 1, *(v14 + 96));
  *(v8 + qword_1EAD0AC50) = a2;
  v18 = (v8 + qword_1EACD4BB0);
  *v18 = a3;
  v18[1] = a4;
  *v15 = a5;
  v15[1] = a6;
  *v16 = a7;
  v16[1] = a8;
  v19 = a2;

  v20 = OUTLINED_FUNCTION_123();
  sub_18F0F693C(v20);
  sub_18F0F693C(a7);
  v21 = static IntentContext.connectionIdentifier.getter();
  sub_18F2CEC14(a1);
  sub_18F0F689C(a7);
  v22 = OUTLINED_FUNCTION_123();
  sub_18F0F689C(v22);

  *(v8 + qword_1EAD0AC58) = v21;
  *(v8 + qword_1EAD0AC40) = 1;
  return OUTLINED_FUNCTION_15_30(qword_1EAD0AC60);
}

uint64_t DeferredIntentResultContainer.__allocating_init(progress:_:completed:cancel:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  DeferredIntentResultContainer.init(progress:_:completed:cancel:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t DeferredIntentResultContainer.init(progress:_:completed:cancel:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_30(qword_1EACD4B88);
  *(v7 + qword_1EACD4B90) = xmmword_18F543360;
  OUTLINED_FUNCTION_13_30(qword_1EACD4B98);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  OUTLINED_FUNCTION_13_30(qword_1EACD4BA0);
  v15 = (v7 + qword_1EACD4BA8);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + qword_1EAD0AC50) = a1;
  v16 = (v7 + qword_1EACD4BB0);
  *v16 = a2;
  v16[1] = a3;
  *v17 = a4;
  v17[1] = a5;
  *v15 = a6;
  v15[1] = a7;
  v18 = a1;

  sub_18F0F693C(a4);
  v19 = OUTLINED_FUNCTION_123();
  sub_18F0F693C(v19);
  v20 = static IntentContext.connectionIdentifier.getter();
  v21 = OUTLINED_FUNCTION_123();
  sub_18F0F689C(v21);
  sub_18F0F689C(a4);

  *(v7 + qword_1EAD0AC58) = v20;
  v22 = qword_1EAD0AC38;
  v23 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v7 + v22, 1, 1, v23);
  *(v7 + qword_1EAD0AC40) = 1;
  return OUTLINED_FUNCTION_15_30(qword_1EAD0AC60);
}

uint64_t sub_18F2CEAC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DeferredIntentResultContainer.execute.setter(v1, v2);
}

uint64_t DeferredIntentResultContainer.execute.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EACD4B88);
  v4 = *(v2 + qword_1EACD4B88);
  *v3 = a1;
  v3[1] = a2;
  return sub_18F0F689C(v4);
}

void *sub_18F2CEB20(void *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1[10];
  *(v4 + 24) = v1[11];
  *(v4 + 32) = *(v2 + 6);
  *(v4 + 48) = v1[14];
  *(v4 + 56) = v3;
  return &unk_18F5510B8;
}

uint64_t sub_18F2CEC14(uint64_t a1)
{
  v2 = type metadata accessor for IntentDialog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F2CEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F2CEC9C, 0, 0);
}

uint64_t sub_18F2CEC9C()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v3 = *(v0 + 120);
    v4 = *(v2 + qword_1EAD0AC58);
    v5 = off_1ED6FF6C8;
    *(v0 + 80) = v2;
    v6 = qword_1EAD0AC48;

    v19 = *(v0 + 104);
    *(v0 + 16) = v19;
    *(v0 + 32) = v3;
    v18 = *(v0 + 128);
    *(v0 + 40) = v18;
    v7 = type metadata accessor for DeferredIntentResultContainer();
    WitnessTable = swift_getWitnessTable();
    sub_18F3E9CA0(v4, v0 + 80, v2 + v6, v19, v18, v5, v7, WitnessTable);

    v9 = *(v2 + qword_1EACD4BB0);
    v10 = qword_1EAD0AC50;
    *(v0 + 152) = *(v2 + qword_1EACD4BB0 + 8);
    *(v0 + 160) = v10;
    v11 = *(v2 + v10);
    *(v0 + 168) = v11;

    v12 = v11;
    v20 = (v9 + *v9);
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_18F2CEF5C;
    v14 = *(v0 + 88);

    return v20(v14, v12);
  }

  else
  {
    sub_18F133EDC();
    swift_allocError();
    *v16 = 8;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 7;
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v17();
  }
}

uint64_t sub_18F2CEF5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v7 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2CF068()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[20];
  v2 = v0[18];
  OUTLINED_FUNCTION_7_35();
  v5 = sub_18F2CF450(v3, v4, sub_18F22D914);
  v0[24] = v6;
  v7 = *(v2 + v1);
  v0[25] = v7;
  v8 = v7;
  v12 = (v5 + *v5);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_18F2CF1A8;
  v10 = v0[11];

  return v12(v8, v10);
}

uint64_t sub_18F2CF1A8()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F2CF2F8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_18F2CF350()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2CF3C0()
{
  OUTLINED_FUNCTION_69();

  v0 = OUTLINED_FUNCTION_56();
  v1(v0);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F2CF450(void *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v5 = (v3 + *a1);
  v7 = *v5;
  v6 = v5[1];
  if (*v5)
  {
    v8 = *v5;
  }

  else
  {
    v8 = a2(v3);
    *v5 = v8;
    v5[1] = v9;
  }

  a3(v7, v6);
  return v8;
}

uint64_t (*DeferredIntentResultContainer.execute.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = DeferredIntentResultContainer.execute.getter();
  a1[1] = v3;
  return sub_18F2CF524;
}

uint64_t sub_18F2CF524(uint64_t a1, char a2)
{
  if (a2)
  {

    v2 = OUTLINED_FUNCTION_80_0();
    DeferredIntentResultContainer.execute.setter(v2, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_80_0();
    return DeferredIntentResultContainer.execute.setter(v5, v6);
  }
}

void *DeferredIntentResultContainer.cancel.getter()
{
  v1 = (v0 + qword_1EACD4B90);
  v2 = *(v0 + qword_1EACD4B90);
  if (v2 == 1)
  {
    v2 = sub_18F2CF8F4(v0);
    *v1 = v2;
    v1[1] = v3;
    sub_18F0F693C(v2);
  }

  v4 = OUTLINED_FUNCTION_56();
  sub_18F2CF9E8(v4);
  return v2;
}

uint64_t sub_18F2CF604@<X0>(void *a1@<X8>)
{
  result = DeferredIntentResultContainer.cancel.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = &unk_18F551090;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_18F2CF674(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_18F0FC874;

  return v5();
}

uint64_t sub_18F2CF75C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_18F551080;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_18F0F693C(v1);
  return DeferredIntentResultContainer.cancel.setter(v4, v3);
}

uint64_t sub_18F2CF7EC(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_18F0FC870;

  return v4();
}

uint64_t DeferredIntentResultContainer.cancel.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EACD4B90);
  v4 = *(v2 + qword_1EACD4B90);
  *v3 = a1;
  v3[1] = a2;
  return sub_18F2CF9F8(v4);
}

void *sub_18F2CF8F4(void *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1[10];
  *(v4 + 24) = v1[11];
  *(v4 + 32) = *(v2 + 6);
  *(v4 + 48) = v1[14];
  *(v4 + 56) = v3;
  return &unk_18F5510A8;
}

uint64_t sub_18F2CF9E8(uint64_t result)
{
  if (result != 1)
  {
    return sub_18F0F693C(result);
  }

  return result;
}

uint64_t sub_18F2CF9F8(uint64_t result)
{
  if (result != 1)
  {
    return sub_18F0F689C(result);
  }

  return result;
}

uint64_t sub_18F2CFA28()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong + qword_1EACD4BA8;
    v3 = *(Strong + qword_1EACD4BA8);
    v0[7] = v3;
    v0[8] = *(v2 + 8);
    if (v3)
    {

      v7 = (v3 + *v3);
      v4 = swift_task_alloc();
      v0[9] = v4;
      *v4 = v0;
      v4[1] = sub_18F2CFB8C;

      return v7();
    }
  }

  OUTLINED_FUNCTION_6();

  return v6();
}

uint64_t sub_18F2CFB8C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2CFC88()
{
  OUTLINED_FUNCTION_31();
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1 = *(*(v0 + 48) + qword_1EAD0AC58);

  sub_18F3E76F8(v1);

  v2 = OUTLINED_FUNCTION_80_0();
  sub_18F0F689C(v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F2CFD58()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 56));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t (*DeferredIntentResultContainer.cancel.modify(void **a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = DeferredIntentResultContainer.cancel.getter();
  a1[1] = v3;
  return sub_18F2CFE08;
}

uint64_t sub_18F2CFE08(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_66();
    sub_18F0F693C(v2);
    v3 = OUTLINED_FUNCTION_66();
    DeferredIntentResultContainer.cancel.setter(v3, v4);
    v5 = OUTLINED_FUNCTION_66();

    return sub_18F0F689C(v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_66();
    return DeferredIntentResultContainer.cancel.setter(v7, v8);
  }
}

void *sub_18F2CFE74(void *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1[10];
  *(v4 + 24) = v1[11];
  *(v4 + 32) = *(v2 + 6);
  *(v4 + 48) = v1[14];
  *(v4 + 56) = v3;
  return &unk_18F5510C8;
}

uint64_t sub_18F2CFF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F2CFF8C, 0, 0);
}

uint64_t sub_18F2CFF8C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + qword_1EACD4BA0;
    v4 = *(Strong + qword_1EACD4BA0);
    v0[9] = v4;
    v0[10] = *(v3 + 8);
    if (v4)
    {

      v11 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = sub_18F2D0168;
      v7 = v0[5];
      v6 = v0[6];

      return v11(v7, v6);
    }

    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
      v2 = v0[8];
    }

    v9 = *(v2 + qword_1EAD0AC58);

    sub_18F3E76F8(v9);
  }

  OUTLINED_FUNCTION_6();

  return v10();
}

uint64_t sub_18F2D0168()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2D0264()
{
  OUTLINED_FUNCTION_21();
  sub_18F0F689C(*(v0 + 72));
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1 = *(*(v0 + 64) + qword_1EAD0AC58);

  sub_18F3E76F8(v1);

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_18F2D0328()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 72));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t DeferredIntentResultContainer.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EAD0AC48;
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DeferredIntentResultContainer.deinit()
{
  sub_18F0EF1A8(v0 + qword_1EAD0AC38, &qword_1EACCF7A0);
  sub_18F0EF1A8(v0 + qword_1EAD0AC60, &qword_1EACD0D70);
  v1 = OUTLINED_FUNCTION_14_32(qword_1EACD4B88);
  sub_18F0F689C(v1);
  v2 = OUTLINED_FUNCTION_14_32(qword_1EACD4B90);
  sub_18F2CF9F8(v2);
  v3 = OUTLINED_FUNCTION_14_32(qword_1EACD4B98);
  sub_18F0F689C(v3);
  v4 = qword_1EAD0AC48;
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 8))(v0 + v4);

  v6 = OUTLINED_FUNCTION_14_32(qword_1EACD4BA0);
  sub_18F0F689C(v6);
  v7 = OUTLINED_FUNCTION_14_32(qword_1EACD4BA8);
  sub_18F0F689C(v7);
  return v0;
}

uint64_t DeferredIntentResultContainer.__deallocating_deinit()
{
  DeferredIntentResultContainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F2D05F4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  *(v1 + 80) = v19;
  *(v1 + 88) = v0;
  *(v1 + 145) = v18;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 144) = v8;
  *(v1 + 56) = v9;
  v10 = sub_18F520E6C();
  *(v1 + 96) = v10;
  *(v1 + 104) = *(v10 - 8);
  *(v1 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v11 = swift_task_alloc();
  v12 = *v5;
  *(v1 + 120) = v11;
  *(v1 + 128) = v12;
  *(v1 + 136) = *v3;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F2D071C()
{
  if ((*(*(v0 + 56) + 32) & 1) == 0 && *(v0 + 144))
  {
    v1 = *(v0 + 120);
    sub_18F116970(*(v0 + 88) + qword_1EAD0AC38, v1, &qword_1EACCF7A0);
    v2 = type metadata accessor for IntentDialog(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
    v4 = *(v0 + 120);
    if (EnumTagSinglePayload == 1)
    {
      sub_18F0EF1A8(*(v0 + 120), &qword_1EACCF7A0);
    }

    else
    {
      sub_18F2E9CD0();
      sub_18F2CEC14(v4);
    }
  }

  v5 = *(v0 + 88);
  (*(*(v0 + 104) + 16))(*(v0 + 112), v5 + qword_1EAD0AC48, *(v0 + 96));
  if (*(v5 + qword_1EAD0AC40))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_18F2D10AC();
  }

  sub_18F116970(*(v0 + 88) + qword_1EAD0AC60, v0 + 16, &qword_1EACD0D70);
  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v7 = sub_18F1A0DE4(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    sub_18F0EF1A8(v0 + 16, &qword_1EACD0D70);
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 80);
  v12 = *(v0 + 145);
  v13 = objc_allocWithZone(MEMORY[0x1E69ACD48]);
  v14 = v11;
  v15 = v10;
  OUTLINED_FUNCTION_37();
  v20 = sub_18F316A78(v16, v17, v18, v19, 0, 0, v6, 0, 0, 1, v7, 0, 0, 0, v10, v12, v9, v11);

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_18F2D0994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F2D0A8C;

  return sub_18F2D05F4();
}

uint64_t sub_18F2D0A8C()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t AppIntent.deferredResult<A>(progress:_:completed:cancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for DeferredIntentResultContainer();
  v13 = [objc_opt_self() progressWithTotalUnitCount_];

  sub_18F0F693C(a4);
  sub_18F0F693C(a6);
  return DeferredIntentResultContainer.__allocating_init(progress:_:completed:cancel:)(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t AppIntent.deferredResult<A>(dialog:progress:_:completed:cancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a8;
  v26 = a3;
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_10_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a9;
  v28 = a10;
  v29 = v18;
  v30 = a11;
  v31 = a12;
  type metadata accessor for DeferredIntentResultContainer();
  sub_18F1B8ADC(a1, v20);
  v21 = [objc_opt_self() progressWithTotalUnitCount_];

  sub_18F0F693C(a5);
  v22 = v25;
  sub_18F0F693C(a7);
  return DeferredIntentResultContainer.__allocating_init<>(dialog:progress:_:completed:cancel:)(v20, v21, v26, a4, a5, a6, a7, v22);
}

void sub_18F2D0DF8()
{
  sub_18F0FDE68();
  if (v0 <= 0x3F)
  {
    sub_18F520E6C();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_18F2D0F5C()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  v3 = OUTLINED_FUNCTION_56();

  return v4(v3);
}

uint64_t sub_18F2D0FFC()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC870;

  return sub_18F2CF674(v2, v3);
}

id sub_18F2D10AC()
{
  sub_18F220C38();
  v0 = MEMORY[0x1E69E73E0];
  v14 = MEMORY[0x1E69E73E0];
  v15 = sub_18F199AE0();
  __swift_project_boxed_opaque_existential_1Tm(v13, v0);
  DynamicType = swift_getDynamicType();
  v2 = v14;
  v3 = v15;
  v4 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v5 = type metadata accessor for PreparedIntent();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v4, v2);
  v9 = *(sub_18F1194F4(v7, MEMORY[0x1E69E7CC0], v2, v3) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v10 = sub_18F33AFF4(DynamicType, v3, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

uint64_t sub_18F2D1230()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_10_34();

  return sub_18F2CFA08(v3);
}

id sub_18F2D12E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F220C38();
  v19 = &type metadata for _UndoIntent;
  v18[0] = a1;
  v18[1] = a2;
  v20 = sub_18F1B813C();
  v18[2] = a3;
  __swift_project_boxed_opaque_existential_1Tm(v18, &type metadata for _UndoIntent);
  DynamicType = swift_getDynamicType();
  v7 = v19;
  v8 = v20;
  v9 = __swift_project_boxed_opaque_existential_1Tm(v18, v19);
  v10 = type metadata accessor for PreparedIntent();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v9, v7);
  v14 = *(sub_18F1194F4(v12, MEMORY[0x1E69E7CC0], v7, v8) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v15 = sub_18F33AFF4(DynamicType, v8, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t sub_18F2D1478()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_13_1(v2);
  *v3 = v4;
  v3[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_10_34();

  return sub_18F2CEC70(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t sub_18F2D1540()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_10_34();

  return sub_18F2CFF68(v3, v4, v5);
}

uint64_t sub_18F2D16E8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Acceleration.allCases.getter();
  *a1 = result;
  return result;
}

id sub_18F2D1760()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6150);

  return v1;
}

uint64_t sub_18F2D17C8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Angle.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D17F8()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D1904()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6180);

  return v1;
}

uint64_t static IntentParameter<>.Area.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Area();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 185207048;
  *(v1 + 12) = 3340;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D19C4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Area.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D19F4()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D1AD8(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = *v4;
  v8 = objc_opt_self();
  if (v7)
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = [v8 *v9];

  return v10;
}

uint64_t sub_18F2D1B7C()
{
  v0 = OUTLINED_FUNCTION_0_72();
  v1(v0);
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v2 = sub_18F521CDC();
  *v3 = 256;

  return sub_18F129FD4(v2);
}

uint64_t sub_18F2D1BDC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.ConcentrationMass.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D1C0C()
{
  OUTLINED_FUNCTION_64_4();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  [objc_opt_self() *v3];
  sub_18F52289C();
  OUTLINED_FUNCTION_19_29();
  sub_18F5228DC();
  OUTLINED_FUNCTION_19_29();
  sub_18F5228EC();
  sub_18F5228AC();
  v4 = [objc_opt_self() *v1];
  OUTLINED_FUNCTION_17_33();
  OUTLINED_FUNCTION_1_62();
  OUTLINED_FUNCTION_2_64();
  sub_18F5228EC();
  sub_18F5228AC();
  OUTLINED_FUNCTION_65_2();
}

id sub_18F2D1D54()
{
  v0 = [objc_opt_self() partsPerMillion];

  return v0;
}

uint64_t sub_18F2D1DC4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Dispersion.allCases.getter();
  *a1 = result;
  return result;
}

id sub_18F2D1E34()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B61F0);

  return v1;
}

uint64_t static IntentParameter<>.Duration.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Duration();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 50462976;
  *(v1 + 4) = 1284;
  *(v1 + 6) = 6;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D1EF0@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Duration.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D1F20()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D1FE8()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6228);

  return v1;
}

uint64_t sub_18F2D2050()
{
  v0 = OUTLINED_FUNCTION_0_72();
  v1(v0);
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v2 = sub_18F521CDC();
  *v3 = 50462976;
  *(v3 + 4) = 1284;

  return sub_18F129FD4(v2);
}

uint64_t sub_18F2D20BC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.ElectricCharge.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D20EC()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D21B4()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6258);

  return v1;
}

uint64_t sub_18F2D221C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.ElectricCurrent.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D224C()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D2314()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6280);

  return v1;
}

uint64_t sub_18F2D237C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.ElectricPotentialDifference.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D23AC()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D2474()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B62A8);

  return v1;
}

uint64_t sub_18F2D24DC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.ElectricResistance.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D250C()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D25D4()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B62D0);

  return v1;
}

uint64_t sub_18F2D263C()
{
  v0 = OUTLINED_FUNCTION_0_72();
  v1(v0);
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v2 = sub_18F521CDC();
  *v3 = 50462976;
  *(v3 + 4) = 4;

  return sub_18F129FD4(v2);
}

uint64_t sub_18F2D26A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Energy.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D26D8()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D27A0()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B62F8);

  return v1;
}

uint64_t static IntentParameter<>.Frequency.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Frequency();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 8;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D2854@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Frequency.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D2884()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D294C()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6340);

  return v1;
}

uint64_t sub_18F2D29B4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.FuelEfficiency.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F2D2A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

id sub_18F2D2A80()
{
  v0 = [objc_opt_self() lux];

  return v0;
}

uint64_t sub_18F2D2AF0()
{
  v0 = OUTLINED_FUNCTION_0_72();
  v1(v0);
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v2 = sub_18F521CDC();

  return sub_18F129FD4(v2);
}

uint64_t sub_18F2D2B48@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Illuminance.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F2D2B78(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v3 = [objc_opt_self() *a2];
  OUTLINED_FUNCTION_17_33();
  OUTLINED_FUNCTION_1_62();
  OUTLINED_FUNCTION_2_64();
  sub_18F5228EC();
  sub_18F5228AC();
  return v5;
}

id sub_18F2D2C38(char a1)
{
  v1 = [objc_opt_self() *off_1E72B6358[a1]];

  return v1;
}

id sub_18F2D2C90()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6358);

  return v1;
}

uint64_t static IntentParameter<>.InformationStorage.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.InformationStorage();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = xmmword_18F551100;
  *(v1 + 16) = xmmword_18F551110;
  *(v1 + 32) = 8480;
  *(v1 + 34) = 34;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D2D54@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.InformationStorage.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D2D84()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v1 = 0;
  do
  {
    v2 = OUTLINED_FUNCTION_7_36(v1);
    sub_18F2D2C38(v2);
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
    v1 = v0;
  }

  while (v0 != 35);
  OUTLINED_FUNCTION_65_2();
}

id sub_18F2D2E34(char a1)
{
  v1 = [objc_opt_self() *off_1E72B6470[a1]];

  return v1;
}

id sub_18F2D2E8C()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6470);

  return v1;
}

uint64_t static IntentParameter<>.Length.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Length();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = xmmword_18F551100;
  *(v1 + 16) = 319951120;
  *(v1 + 20) = 5396;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D2F4C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Length.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D2F7C()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v1 = 0;
  do
  {
    v2 = OUTLINED_FUNCTION_7_36(v1);
    sub_18F2D2E34(v2);
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
    v1 = v0;
  }

  while (v0 != 22);
  OUTLINED_FUNCTION_65_2();
}

id sub_18F2D302C(char a1)
{
  v1 = [objc_opt_self() *off_1E72B6520[a1]];

  return v1;
}

id sub_18F2D3084()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6520);

  return v1;
}

uint64_t static IntentParameter<>.Mass.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Mass();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = xmmword_18F551100;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D3130@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Mass.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D3160()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v1 = 0;
  do
  {
    v2 = OUTLINED_FUNCTION_7_36(v1);
    sub_18F2D302C(v2);
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
    v1 = v0;
  }

  while (v0 != 16);
  OUTLINED_FUNCTION_65_2();
}

id sub_18F2D3210()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B65A0);

  return v1;
}

uint64_t static IntentParameter<>.Power.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Power();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 2312;
  *(v1 + 10) = 10;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D32CC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Power.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D32FC()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D33C4()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B65F8);

  return v1;
}

uint64_t static IntentParameter<>.Pressure.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Pressure();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 2312;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D3478@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Pressure.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D34A8()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D3570()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6648);

  return v1;
}

uint64_t static IntentParameter<>.Speed.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Speed();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = 50462976;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D361C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Speed.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D364C()
{
  OUTLINED_FUNCTION_8_34();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  while (1)
  {
    OUTLINED_FUNCTION_6_43();
    v0 = objc_opt_self();
    v1 = OUTLINED_FUNCTION_12_38(v0);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
  }
}

id sub_18F2D3714()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6668);

  return v1;
}

uint64_t sub_18F2D377C()
{
  v0 = OUTLINED_FUNCTION_0_72();
  v1(v0);
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v2 = sub_18F521CDC();
  *v3 = 256;
  *(v3 + 2) = 2;

  return sub_18F129FD4(v2);
}

uint64_t sub_18F2D37E4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Temperature.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D3814()
{
  OUTLINED_FUNCTION_64_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v6 = [objc_opt_self() *v5];
  sub_18F52289C();
  sub_18F5228DC();
  sub_18F5228EC();
  sub_18F5228AC();
  [objc_opt_self() *v3];
  sub_18F52289C();
  OUTLINED_FUNCTION_19_29();
  sub_18F5228DC();
  OUTLINED_FUNCTION_19_29();
  sub_18F5228EC();
  sub_18F5228AC();
  v7 = [objc_opt_self() *v1];
  OUTLINED_FUNCTION_17_33();
  OUTLINED_FUNCTION_1_62();
  OUTLINED_FUNCTION_2_64();
  sub_18F5228EC();
  sub_18F5228AC();
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_18F2D3984(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

id sub_18F2D39C8(char a1)
{
  v1 = [objc_opt_self() *off_1E72B6680[a1]];

  return v1;
}

id sub_18F2D3A20()
{
  v0 = objc_opt_self();
  v1 = OUTLINED_FUNCTION_11_31(v0, off_1E72B6680);

  return v1;
}

uint64_t static IntentParameter<>.Volume.allCases.getter()
{
  OUTLINED_FUNCTION_0_72();
  type metadata accessor for IntentParameter<>.Volume();
  OUTLINED_FUNCTION_3_46();
  swift_allocObject();
  v0 = sub_18F521CDC();
  *v1 = xmmword_18F551100;
  *(v1 + 16) = 0x1716151413121110;
  *(v1 + 24) = 454695192;
  *(v1 + 28) = 7452;
  *(v1 + 30) = 30;

  return sub_18F129FD4(v0);
}

uint64_t sub_18F2D3AF4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntentParameter<>.Volume.allCases.getter();
  *a1 = result;
  return result;
}

void sub_18F2D3B24()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_4_47();
  sub_18F5228CC();
  v1 = 0;
  do
  {
    v2 = OUTLINED_FUNCTION_7_36(v1);
    sub_18F2D39C8(v2);
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_1_62();
    OUTLINED_FUNCTION_2_64();
    sub_18F5228EC();
    sub_18F5228AC();
    v1 = v0;
  }

  while (v0 != 31);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_18F2D401C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F2D40A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D4170(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_16_31(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_16_31(v8);
}

_BYTE *sub_18F2D41F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_15_31(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_13_31(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_14_33(result, v6);
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
          result = OUTLINED_FUNCTION_2(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F2D42B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F2D437C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_16_31(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_16_31(v8);
}

_BYTE *sub_18F2D4400(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_15_31(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_13_31(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_14_33(result, v6);
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
          result = OUTLINED_FUNCTION_2(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D44BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_16_31(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 5);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_16_31((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_16_31(v8);
}

_BYTE *sub_18F2D4540(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_15_31(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_13_31(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_14_33(result, v6);
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
          result = OUTLINED_FUNCTION_2(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F2D45FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F2D46C8(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2D4764(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F2D47EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F2D48B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}