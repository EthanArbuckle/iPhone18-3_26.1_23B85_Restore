uint64_t OUTLINED_FUNCTION_23_13()
{
  v2 = v0[39];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
}

void OUTLINED_FUNCTION_24_17()
{
  v2 = v0[49];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[34];
  v8 = v0[35];
}

uint64_t OUTLINED_FUNCTION_27_16()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

unint64_t RunCustomIntentCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 8:
    case 14:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
    case 16:
      result = 0xD000000000000025;
      break;
    case 5:
    case 11:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0xD000000000000033;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
    case 25:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD000000000000035;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD000000000000034;
      break;
    case 17:
      result = 0xD000000000000031;
      break;
    case 18:
      result = 0xD00000000000002BLL;
      break;
    case 19:
      result = 0xD00000000000002FLL;
      break;
    case 20:
      result = 0xD00000000000002CLL;
      break;
    case 21:
      result = 0xD00000000000001ELL;
      break;
    case 22:
      result = 0xD000000000000022;
      break;
    case 23:
      result = 0xD000000000000030;
      break;
    case 24:
      result = 0xD000000000000027;
      break;
    case 26:
      result = 0xD000000000000032;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::Properties_optional __swiftcall RunCustomIntentCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.confirmSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_12(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_76_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_30_3(v14);
  OUTLINED_FUNCTION_43_7(32);
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

BOOL RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.confirmSlotValueAsLabels(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(32);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.confirmSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_64_3(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_4_40(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v13, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = *(v0 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_63_8(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_97_0(v19);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x4E707041776F6873;
  }

  else
  {
    return 0x6D614E7070416F6ELL;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::ConfirmSlotValueWithCustomTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::ConfirmSlotValueWithCustomTextDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.confirmSlotValueWithCustomTextAsLabels(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v1 + 56);
  OUTLINED_FUNCTION_4_40(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
  if (v10)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v1 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_131_0(v19);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.describeCustomIntentItem(device:item:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_12(v4);
  OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_134_0(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_76_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_30_3(v14);
  OUTLINED_FUNCTION_43_7(40);
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

BOOL RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.describeCustomIntentItemAsLabels(device:item:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_32_12(v5);
  OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v4)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_134_0(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(40);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds and conformance RunCustomIntentCATsSimple.DescribeCustomIntentItemDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.deviceUnlock(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.deviceUnlock(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(28);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.DeviceUnlockDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DeviceUnlockDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.DeviceUnlockDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.deviceUnlockAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.deviceUnlockAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(28);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DeviceUnlockDialogIds and conformance RunCustomIntentCATsSimple.DeviceUnlockDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValue(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(37);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(37);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueItems(device:customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3();
  v4 = OUTLINED_FUNCTION_31_0(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = v0[6];
  OUTLINED_FUNCTION_4_40(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_47_7();
  if (v8)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = v0[4];
  OUTLINED_FUNCTION_81_5();
  v1[16] = v13;
  v1[17] = 0xE500000000000000;
  v1[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v1[18] = v12;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_43_7(42);
  OUTLINED_FUNCTION_87();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

BOOL RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueItemsAsLabels(device:customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3();
  v4 = OUTLINED_FUNCTION_31_0(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = v0[6];
  OUTLINED_FUNCTION_4_40(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_47_7();
  if (v8)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = v0[4];
  OUTLINED_FUNCTION_81_5();
  v1[16] = v13;
  v1[17] = 0xE500000000000000;
  v1[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v1[18] = v12;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v14 = swift_task_alloc();
  v0[8] = v14;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_42_7(42);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueItemsDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueWithCustomText(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_147(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_71_3(v9);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v10);
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_136_0();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueWithCustomText(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_157();
  v15 = OUTLINED_FUNCTION_116(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_218720);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = *(v10 + 64);
  v24 = *(v10 + 32);
  OUTLINED_FUNCTION_26_3();
  *(v11 + 128) = v12 - 3;
  *(v11 + 136) = v25;
  outlined init with copy of SpeakableString?(v26, v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v19)
  {
    outlined destroy of String?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v28 = *(v27 + 32);
    OUTLINED_FUNCTION_24_4();
    v29();
  }

  v30 = *(v10 + 56);
  v31 = *(v10 + 40);
  OUTLINED_FUNCTION_26_3();
  *(v11 + 176) = v12 - 8;
  *(v11 + 184) = v32;
  outlined init with copy of SpeakableString?(v33, v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v35 = *(v34 + 32);
    OUTLINED_FUNCTION_24_4();
    v36();
  }

  v37 = *(v10 + 104);
  OUTLINED_FUNCTION_79_3();
  *(v11 + 224) = v12;
  *(v11 + 232) = v38;
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 240) = v39;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v52 = v40;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 88) = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_143_0(v41);
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_49_0();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::DisambiguateSlotValueWithCustomTextDialogIds_optional __swiftcall RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x4E707041776F6873;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x72746E49776F6873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::DisambiguateSlotValueWithCustomTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::DisambiguateSlotValueWithCustomTextDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueWithCustomTextAsLabels(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_147(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_71_3(v9);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v10);
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_136_0();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_6_0();
  v6 = v0[12];

  return v5();
}

uint64_t RunCustomIntentCATsSimple.disambiguateSlotValueWithCustomTextAsLabels(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_157();
  v15 = OUTLINED_FUNCTION_116(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_218720);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v18);
  if (v19)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = *(v10 + 64);
  v24 = *(v10 + 32);
  OUTLINED_FUNCTION_26_3();
  *(v11 + 128) = v12 - 3;
  *(v11 + 136) = v25;
  outlined init with copy of SpeakableString?(v26, v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v19)
  {
    outlined destroy of String?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v28 = *(v27 + 32);
    OUTLINED_FUNCTION_24_4();
    v29();
  }

  v30 = *(v10 + 56);
  v31 = *(v10 + 40);
  OUTLINED_FUNCTION_26_3();
  *(v11 + 176) = v12 - 8;
  *(v11 + 184) = v32;
  outlined init with copy of SpeakableString?(v33, v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v35 = *(v34 + 32);
    OUTLINED_FUNCTION_24_4();
    v36();
  }

  v37 = *(v10 + 104);
  OUTLINED_FUNCTION_79_3();
  *(v11 + 224) = v12;
  *(v11 + 232) = v38;
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 240) = v39;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v52 = v40;
  v41 = swift_task_alloc();
  *(v10 + 88) = v41;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v41 = v42;
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_49_0();

  return v48(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.doneButton()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AutoShortcutCATsSimple.userDenied();

  return v4(0xD00000000000001ALL, 0x800000000022EAA0, _swiftEmptyArrayStorage);
}

BOOL RunCustomIntentCATsSimple.DoneButtonDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.DoneButtonDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.DoneButtonDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.DoneButtonDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.doneButtonAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  OUTLINED_FUNCTION_32_7();

  return v5(0xD00000000000001ALL);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.DoneButtonDialogIds and conformance RunCustomIntentCATsSimple.DoneButtonDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_106_0(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_63_8(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_97_0(v18);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional __swiftcall RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(char a1)
{
  result = 0x65756E69746E6F63;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_34_5();
      break;
    case 2:
      result = 0x43746C7561666564;
      break;
    case 3:
      result = 0x45746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.errorWithCodeCustomErrorAsLabels(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3();
  v6 = OUTLINED_FUNCTION_64_3(v5);
  OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v4)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_106_0(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v14, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_131_0(v18);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v19;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v25(v20, v21, v22, v23, v24, v25, v26, v27);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunCustomIntentCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.extensionTimedOut(device:actionName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_12(v4);
  OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_88_3(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_76_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_30_3(v14);
  OUTLINED_FUNCTION_43_7(33);
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

BOOL RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.extensionTimedOutAsLabels(device:actionName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_32_12(v5);
  OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v4)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_88_3(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(33);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds and conformance RunCustomIntentCATsSimple.ExtensionTimedOutDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.followupNotSupported(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t RunCustomIntentCATsSimple.followupNotSupported(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_42_2();
  v14 = OUTLINED_FUNCTION_32_12(v13);
  OUTLINED_FUNCTION_1_3(v14, xmmword_216840);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_5_4(v15);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v16);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v17);
  if (v18)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v35 = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[7] = v23;
  *v23 = v24;
  v23[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  v25 = v10[4];
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_49_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

BOOL RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t RunCustomIntentCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_42_2();
  v15 = OUTLINED_FUNCTION_32_12(v14);
  OUTLINED_FUNCTION_1_3(v15, xmmword_216840);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v18);
  if (v19)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v35 = v23;
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v24);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v25;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_49_0();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds and conformance RunCustomIntentCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessage(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(42);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(42);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageHomePodOnly(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageHomePodOnly(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(53);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageHomePodOnlyAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.handoffNotificationMessageHomePodOnlyAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(53);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds and conformance RunCustomIntentCATsSimple.HandoffNotificationMessageHomePodOnlyDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.initiateHandoff(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.initiateHandoff(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(31);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.InitiateHandoffDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.InitiateHandoffDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.InitiateHandoffDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.initiateHandoffAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.initiateHandoffAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(31);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.InitiateHandoffDialogIds and conformance RunCustomIntentCATsSimple.InitiateHandoffDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.intentConfirmationPrompt(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_71_3(v8);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_116(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[9];
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[8];
  v14 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v18, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_143_0(v22);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptDialogIds_optional __swiftcall RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_151();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t RunCustomIntentCATsSimple.intentConfirmationPromptAsLabels(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_71_3(v8);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_116(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[9];
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[8];
  v14 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v18, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v22 = swift_task_alloc();
  v0[11] = v22;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v22 = v23;
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_54_8(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_47_0(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_152(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = *(v0 + 88);
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  v9 = *(v0 + 88);
  OUTLINED_FUNCTION_47_7();
  if (v10)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v0 + 80);
  v15 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v15, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_149();
  if (v10)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v19, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_22_17() == 1)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_44_9();
  v1[28] = v23;
  v1[29] = v24;
  outlined init with copy of SpeakableString?(v25, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v10)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  v29 = *(v0 + 120);
  OUTLINED_FUNCTION_34_14();
  v1[34] = v31;
  v1[35] = v30;
  OUTLINED_FUNCTION_148(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 104) = v32;
  *v32 = v33;
  v32[1] = RunCustomIntentCATsSimple.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:);
  v34 = *(v0 + 56);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_110();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptWithTemplateDialogIds_optional __swiftcall RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_151();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptWithTemplateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentConfirmationPromptWithTemplateDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t RunCustomIntentCATsSimple.intentConfirmationPromptWithTemplateAsLabels(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_54_8(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_47_0(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_152(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = *(v0 + 88);
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  v9 = *(v0 + 88);
  OUTLINED_FUNCTION_47_7();
  if (v10)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v0 + 80);
  v15 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v15, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_149();
  if (v10)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v19, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_22_17() == 1)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_44_9();
  v1[28] = v23;
  v1[29] = v24;
  outlined init with copy of SpeakableString?(v25, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v10)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  v29 = *(v0 + 120);
  OUTLINED_FUNCTION_34_14();
  v1[34] = v31;
  v1[35] = v30;
  OUTLINED_FUNCTION_148(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v32 = swift_task_alloc();
  *(v0 + 104) = v32;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v32 = v33;
  v32[1] = RunCustomIntentCATsSimple.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:);
  v34 = *(v0 + 56);
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v40(v35, v36, v37, v38, v39, v40, v41, v42);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.intentHandledResponse(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_71_3(v8);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_116(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[9];
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[8];
  v14 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v18, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_143_0(v22);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_151();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t _s18SiriLinkFlowPlugin25RunCustomIntentCATsSimpleC0G39ConfirmationPromptWithTemplateDialogIdsOSYAASY8rawValue03RawQ0QzvgTW_0()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.intentHandledResponseAsLabels(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_71_3(v8);
  *(v0 + 72) = OUTLINED_FUNCTION_49(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_116(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[9];
  OUTLINED_FUNCTION_3_36(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_16(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[8];
  v14 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_49_10("localizedAppName");
  outlined init with copy of SpeakableString?(v18, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v22 = swift_task_alloc();
  v0[11] = v22;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v22 = v23;
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_54_8(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_47_0(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_152(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216FA0);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_3_36(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  v10 = *(v0 + 88);
  OUTLINED_FUNCTION_47_7();
  if (v11)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = *(v0 + 80);
  v16 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v16, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_149();
  if (v11)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_44_9();
  v2[22] = v20;
  v2[23] = v21;
  outlined init with copy of SpeakableString?(v22, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_22_17() == 1)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_24_4();
    v25();
  }

  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_26_3();
  v2[28] = v1;
  v2[29] = v26;
  outlined init with copy of SpeakableString?(v27, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v11)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_24_4();
    v30();
  }

  v31 = *(v0 + 120);
  OUTLINED_FUNCTION_34_14();
  v2[34] = v33;
  v2[35] = v32;
  OUTLINED_FUNCTION_148(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 104) = v34;
  *v34 = v35;
  v34[1] = RunCustomIntentCATsSimple.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:);
  v36 = *(v0 + 56);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_110();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseWithTemplateDialogIds_optional __swiftcall RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_151();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      v3 = 1466197089;
      return v3 | 0x4168746900000000;
    case 2:
      return 1802465122;
    case 3:
      v4 = 1802465122;
      goto LABEL_40;
    case 4:
      v5 = 30050;
      return v5 | 0x790000u;
    case 5:
      v6 = 30050;
      goto LABEL_25;
    case 6:
      return 0x616D7269666E6F63;
    case 7:
      return 0x657461657263;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x64616F6C6E776F64;
    case 10:
      return 0xD000000000000013;
    case 11:
      return 7628135;
    case 12:
      v3 = 1467245927;
      return v3 | 0x4168746900000000;
    case 13:
      return 0x616964656DLL;
    case 14:
    case 18:
    case 34:
      return 0xD000000000000010;
    case 15:
      return 1852141679;
    case 16:
      v4 = 1852141679;
      goto LABEL_40;
    case 17:
      return 0x726564726FLL;
    case 19:
      v5 = 24944;
      return v5 | 0x790000u;
    case 20:
      v6 = 24944;
LABEL_25:
      v3 = v6 | 0x57790000;
      return v3 | 0x4168746900000000;
    case 21:
      return 0x6C6143656E6F6870;
    case 22:
      return 0xD000000000000014;
    case 23:
      return 1953722224;
    case 24:
      v4 = 1953722224;
      goto LABEL_40;
    case 25:
      return 0x74736575716572;
    case 26:
    case 38:
      return 0xD000000000000012;
    case 27:
      return 0x686372616573;
    case 28:
      return 0xD000000000000011;
    case 29:
      return 1684956531;
    case 30:
      v4 = 1684956531;
      goto LABEL_40;
    case 31:
      return 0x6765746143746573;
    case 32:
      return 0xD000000000000016;
    case 33:
      return 0x6572616873;
    case 35:
      return 0x656C67676F74;
    case 36:
      return 0xD000000000000011;
    case 37:
      return 0x66664F6E727574;
    case 39:
      return 0x6E4F6E727574;
    case 40:
      return 0xD000000000000011;
    case 41:
      return 2003134838;
    case 42:
      v4 = 2003134838;
LABEL_40:
      result = v4 | 0x6874695700000000;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseWithTemplateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntentHandledResponseWithTemplateDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t RunCustomIntentCATsSimple.intentHandledResponseWithTemplateAsLabels(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_54_8(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  *(v0 + 88) = OUTLINED_FUNCTION_47_0(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_152(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216FA0);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  v7 = *(v0 + 88);
  OUTLINED_FUNCTION_3_36(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  v10 = *(v0 + 88);
  OUTLINED_FUNCTION_47_7();
  if (v11)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = *(v0 + 80);
  v16 = OUTLINED_FUNCTION_5_26();
  outlined init with copy of SpeakableString?(v16, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_149();
  if (v11)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_44_9();
  v2[22] = v20;
  v2[23] = v21;
  outlined init with copy of SpeakableString?(v22, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_22_17() == 1)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_24_4();
    v25();
  }

  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_26_3();
  v2[28] = v1;
  v2[29] = v26;
  outlined init with copy of SpeakableString?(v27, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v11)
  {
    outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_24_4();
    v30();
  }

  v31 = *(v0 + 120);
  OUTLINED_FUNCTION_34_14();
  v2[34] = v33;
  v2[35] = v32;
  OUTLINED_FUNCTION_148(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v34 = v35;
  v34[1] = RunCustomIntentCATsSimple.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:);
  v36 = *(v0 + 56);
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v42(v37, v38, v39, v40, v41, v42, v43, v44);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds and conformance RunCustomIntentCATsSimple.IntentHandledResponseWithTemplateDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.introduceDisambiguationList(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_120_0(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

uint64_t RunCustomIntentCATsSimple.introduceDisambiguationList(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v13 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_157();
  v15 = OUTLINED_FUNCTION_64_3(v14);
  v16 = OUTLINED_FUNCTION_1_3(v15, xmmword_218720);
  if (v13)
  {
    v16 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_78_3(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_85_5();
  }

  else
  {
    v19 = v10[3];
    v18 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_84_1(v18);
  if (v20)
  {
    OUTLINED_FUNCTION_68_4();
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  else
  {
    v21 = v10[4];
  }

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_79_3();
  *(v11 + 168) = v22;
  *(v11 + 176) = v12;
  *(v11 + 184) = v23;
  *(v11 + 192) = v24;
  OUTLINED_FUNCTION_79_3();
  *(v11 + 216) = v25;
  *(v11 + 224) = v12 | 8;
  *(v11 + 232) = v26;
  outlined init with copy of SpeakableString?(v27, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v28);
  if (v29)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_24_4();
    v32();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v46 = v33;
  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_63_8(v34);
  *v35 = v36;
  OUTLINED_FUNCTION_143_0(v35);
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_49_0();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntroduceDisambiguationListDialogIds_optional __swiftcall RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E756F436D657469;
  }

  if (a1 == 1)
  {
    return 0x656C7069746C756DLL;
  }

  return 0x72746E49776F6873;
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntroduceDisambiguationListDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::IntroduceDisambiguationListDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.introduceDisambiguationListAsLabels(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_120_0(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

uint64_t RunCustomIntentCATsSimple.introduceDisambiguationListAsLabels(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v14 = v11[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_157();
  v16 = OUTLINED_FUNCTION_64_3(v15);
  v17 = OUTLINED_FUNCTION_1_3(v16, xmmword_218720);
  if (v14)
  {
    v17 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_78_3(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_85_5();
  }

  else
  {
    v20 = v11[3];
    v19 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_84_1(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_68_4();
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  else
  {
    v22 = v11[4];
  }

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_79_3();
  *(v12 + 168) = v23;
  *(v12 + 176) = v13;
  *(v12 + 184) = v24;
  *(v12 + 192) = v25;
  OUTLINED_FUNCTION_79_3();
  *(v12 + 216) = v26;
  *(v12 + 224) = v13 | 8;
  *(v12 + 232) = v27;
  outlined init with copy of SpeakableString?(v28, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v29);
  if (v30)
  {

    outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_109_0();
  }

  else
  {
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_13_2();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_24_4();
    v33();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v46 = v34;
  v35 = swift_task_alloc();
  OUTLINED_FUNCTION_131_0(v35);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v36;
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_49_0();

  return v42(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds and conformance RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.introduceNextDisambiguationPage(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.introduceNextDisambiguationPage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_7(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_44_10(v7);
  OUTLINED_FUNCTION_41_11(47);
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.introduceNextDisambiguationPageAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.introduceNextDisambiguationPageAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_111(v6);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v2 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(47);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds and conformance RunCustomIntentCATsSimple.IntroduceNextDisambiguationPageDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.offerMoreDisambiguationItems(device:remainingPages:customSelectionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t RunCustomIntentCATsSimple.offerMoreDisambiguationItems(device:remainingPages:customSelectionPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_69_3();
  v14 = OUTLINED_FUNCTION_31_0(v13);
  v15 = OUTLINED_FUNCTION_1_3(v14, xmmword_218630);
  if (v12)
  {
    v15 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_66_7(v15);
  if (v16)
  {
    OUTLINED_FUNCTION_85_5();
  }

  else
  {
    v17 = v10[3];
  }

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_133_0(v18);
  outlined init with copy of SpeakableString?(v19, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_47_7();
  if (v20)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v36 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[8] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_97_0(v25);
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_49_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36);
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::OfferMoreDisambiguationItemsDialogIds_optional __swiftcall RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_5();
  }

  if (a1 == 1)
  {
    return 0x656761507473616CLL;
  }

  return 0x726F4D726566666FLL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::OfferMoreDisambiguationItemsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::OfferMoreDisambiguationItemsDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.offerMoreDisambiguationItemsAsLabels(device:remainingPages:customSelectionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t RunCustomIntentCATsSimple.offerMoreDisambiguationItemsAsLabels(device:remainingPages:customSelectionPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_69_3();
  v14 = OUTLINED_FUNCTION_31_0(v13);
  v15 = OUTLINED_FUNCTION_1_3(v14, xmmword_218630);
  if (v12)
  {
    v15 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_66_7(v15);
  if (v16)
  {
    OUTLINED_FUNCTION_85_5();
  }

  else
  {
    v17 = v10[3];
  }

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_133_0(v18);
  outlined init with copy of SpeakableString?(v19, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_15_24();
  OUTLINED_FUNCTION_47_7();
  if (v20)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v36 = v24;
  v25 = swift_task_alloc();
  v10[8] = v25;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v25 = v26;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_49_0();

  return v32(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreDisambiguationItemsDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.offerMoreItems(device:remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.offerMoreItems(device:remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_69_3();
  v0[6] = v2;
  OUTLINED_FUNCTION_1_49(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_65_7(v3, v4);
  if (v5)
  {
    OUTLINED_FUNCTION_68_4();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  else
  {
    v7 = v0[3];
    v6 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_72_6(v6);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = v0[4];
    v10 = &type metadata for Double;
  }

  v2[9].n128_u64[0] = v9;
  v2[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_76_2(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_97_0(v12);
  OUTLINED_FUNCTION_41_11(30);
  OUTLINED_FUNCTION_87();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

uint64_t RunCustomIntentCATsSimple.OfferMoreItemsDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F4D726566666FLL;
  }

  else
  {
    return 0x656761507478656ELL;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::OfferMoreItemsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::OfferMoreItemsDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.OfferMoreItemsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.OfferMoreItemsDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.offerMoreItemsAsLabels(device:remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATsSimple.offerMoreItemsAsLabels(device:remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_69_3();
  v0[6] = v2;
  OUTLINED_FUNCTION_1_49(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_65_7(v3, v4);
  if (v5)
  {
    OUTLINED_FUNCTION_68_4();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  else
  {
    v7 = v0[3];
    v6 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_72_6(v6);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = v0[4];
    v10 = &type metadata for Double;
  }

  v2[9].n128_u64[0] = v9;
  v2[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v11);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v1 = v12;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_42_10(30);
  OUTLINED_FUNCTION_87();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.OfferMoreItemsDialogIds and conformance RunCustomIntentCATsSimple.OfferMoreItemsDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.promptForSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_12(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_76_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_30_3(v14);
  OUTLINED_FUNCTION_43_7(34);
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

BOOL RunCustomIntentCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.PromptForSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.promptForSlotValueAsLabels(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(34);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.promptForSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_64_3(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_4_40(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v13, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = *(v0 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_63_8(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_97_0(v19);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x4E707041776F6873;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::PromptForSlotValueWithCustomTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::PromptForSlotValueWithCustomTextDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.promptForSlotValueWithCustomTextAsLabels(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v1 + 56);
  OUTLINED_FUNCTION_4_40(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
  if (v10)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v1 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_131_0(v19);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.PromptForSlotValueWithCustomTextDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.readDisambiguationItems(device:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_42_2();
  v10[5] = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_216840);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[3].n128_u64[1] = 0;
    v12[4].n128_u64[0] = 0;
  }

  v13 = v10[3];
  v12[3].n128_u64[0] = v11;
  OUTLINED_FUNCTION_81_5();
  v12[4].n128_u64[1] = v14;
  v12[5].n128_u64[0] = v15;
  v12[5].n128_u64[1] = 0xE500000000000000;
  v12[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v12[6].n128_u64[0] = v13;
  OUTLINED_FUNCTION_135(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v16 = swift_task_alloc();
  v10[6] = v16;
  *v16 = v10;
  v16[1] = RunCustomIntentCATsSimple.readDisambiguationItems(device:items:);
  v17 = v10[4];
  OUTLINED_FUNCTION_49_0();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t RunCustomIntentCATsSimple.readDisambiguationItems(device:items:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

BOOL RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunCustomIntentCATsSimple.readDisambiguationItemsAsLabels(device:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_42_2();
  v10[5] = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_216840);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[3].n128_u64[1] = 0;
    v12[4].n128_u64[0] = 0;
  }

  v13 = v10[3];
  v12[3].n128_u64[0] = v11;
  OUTLINED_FUNCTION_81_5();
  v12[4].n128_u64[1] = v14;
  v12[5].n128_u64[0] = v15;
  v12[5].n128_u64[1] = 0xE500000000000000;
  v12[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v12[6].n128_u64[0] = v13;
  OUTLINED_FUNCTION_135(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v16 = swift_task_alloc();
  v10[6] = v16;
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v16 = v17;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_49_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t RunCustomIntentCATsSimple.readDisambiguationItemsAsLabels(device:items:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds and conformance RunCustomIntentCATsSimple.ReadDisambiguationItemsDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.unsupportedSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_12(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_76_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_30_3(v14);
  OUTLINED_FUNCTION_43_7(36);
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x50746C7561666564;
  }

  else
  {
    return 0x61506D6F74737563;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::UnsupportedSlotValueDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::UnsupportedSlotValueDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunCustomIntentCATsSimple.unsupportedSlotValueAsLabels(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_216840);
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_7_26(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
  if (v10)
  {

    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(36);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.unsupportedSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v4 = OUTLINED_FUNCTION_64_3(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_21A520);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = *(v0 + 56);
  OUTLINED_FUNCTION_4_40(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v13, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = *(v0 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_63_8(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_97_0(v19);
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_87();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds.rawValue.getter()
{
  OUTLINED_FUNCTION_26_3();
  if (v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x4E707041776F6873;
  }
}

SiriLinkFlowPlugin::RunCustomIntentCATsSimple::UnsupportedSlotValueWithCustomTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunCustomIntentCATsSimple::UnsupportedSlotValueWithCustomTextDialogIds_optional *a2@<X8>)
{
  result.value = RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds()
{
  OUTLINED_FUNCTION_46_3();
  result = RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds.rawValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t RunCustomIntentCATsSimple.unsupportedSlotValueWithCustomTextAsLabels(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_50_7(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v1 + 56);
  OUTLINED_FUNCTION_4_40(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v9);
  if (v10)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_36_11("localizedAppName");
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_24() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v1 + 88);
  OUTLINED_FUNCTION_32_14("shouldShowAppAttribution");
  OUTLINED_FUNCTION_121(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_131_0(v19);
  lazy protocol witness table accessor for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v20;
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds and conformance RunCustomIntentCATsSimple.UnsupportedSlotValueWithCustomTextDialogIds);
  }

  return result;
}

uint64_t RunCustomIntentCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunCustomIntentCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunCustomIntentCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_39_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of SpeakableString?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

uint64_t RunCustomIntentCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_58_0();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  return v7;
}

uint64_t RunCustomIntentCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_58_0();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_63_0();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type RunCustomIntentCATsSimple.Properties and conformance RunCustomIntentCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.Properties and conformance RunCustomIntentCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.Properties and conformance RunCustomIntentCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunCustomIntentCATsSimple.Properties and conformance RunCustomIntentCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for RunCustomIntentCATsSimple()
{
  result = type metadata singleton initialization cache for RunCustomIntentCATsSimple;
  if (!type metadata singleton initialization cache for RunCustomIntentCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
        JUMPOUT(0x162D30);
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_115_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_115_0(v8);
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x162F3CLL);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_115_0(-1);
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 43);
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

      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 43);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 43);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_115_0(v8);
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.IntentConfirmationPromptDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD5)
  {
    v6 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x16313CLL);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 42);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_115_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_115_0(v8);
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.IntroduceDisambiguationListDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1632DCLL);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.ConfirmSlotValueDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1633E0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_115_0(-1);
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
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_115_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_115_0(v8);
}

_BYTE *storeEnumTagSinglePayload for RunCustomIntentCATsSimple.ConfirmSlotValueWithCustomTextDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x163568);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_1_49(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t result)
{
  v4 = *(v2 + 24);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "intentCategory");
  *(v3 + 95) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_40(uint64_t result)
{
  v4 = *(v2 + 24);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "customPrompt");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_26()
{
  result = *(v0 + 32);
  strcpy((v1 + 128), "categoryVerb");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_26(uint64_t result)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "parameterName");
  *(v3 + 94) = -4864;
  return result;
}

void OUTLINED_FUNCTION_11_23()
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 24);
  *(v2 + 48) = v0;
}

uint64_t OUTLINED_FUNCTION_15_24()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_16(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 72);
  v5 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 72);
  return result;
}

void OUTLINED_FUNCTION_35_14()
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  *(v2 + 48) = v0;
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = result;
  *(v5 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 120) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = result;
  *(v7 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 72);
  *(v3 + 48) = a2;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "remainingPages");
  *(v3 + 95) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_7(uint64_t result)
{
  v4 = *(v2 + 80);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "remainingPages");
  *(v3 + 95) = -18;
  return result;
}

void OUTLINED_FUNCTION_72_6(uint64_t a1@<X8>)
{
  v4 = *(v2 + 73);
  *(v3 + 96) = v1;
  *(v3 + 120) = a1;
  strcpy((v3 + 128), "nextPageSize");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t result)
{
  v4 = *(v2 + 88);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x6E756F436D657469;
  v3[11] = 0xE900000000000074;
  return result;
}

void OUTLINED_FUNCTION_84_1(uint64_t a1@<X8>)
{
  v4 = *(v2 + 89);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 0x657A695365676170;
  v3[17] = 0xE800000000000000;
}

uint64_t OUTLINED_FUNCTION_88_3(uint64_t result)
{
  v1[9] = result;
  v1[10] = 0x614E6E6F69746361;
  v1[11] = 0xEA0000000000656DLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t result)
{
  v2[9] = result;
  v2[10] = v1 & 0xFFFFFFFFFFFFLL | 0x6944000000000000;
  v2[11] = 0xEC000000676F6C61;
  return result;
}

double OUTLINED_FUNCTION_109_0()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_110()
{
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  v3 = *(v1 + 56);
  result = *(v1 + 40);
  v5 = *(v1 + 90);
  *(v2 + 144) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 90) = a6;
  *(v8 + 89) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 88) = a3;
  *(v8 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_133_0(uint64_t a1@<X8>)
{
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = v4;
  v3[17] = (v2 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_134_0(uint64_t result)
{
  v1[9] = result;
  v1[10] = 1835365481;
  v1[11] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_135@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_136_0()
{
  v3 = v0[9];
  v2 = v0[10];
  v6 = v0 + 7;
  v4 = v0[7];
  v5 = v6[1];
}

uint64_t *OUTLINED_FUNCTION_138_0()
{
  *(v1 + 264) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 240));
}

uint64_t OUTLINED_FUNCTION_143_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_147(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 104) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_157()
{

  return swift_allocObject();
}

uint64_t LinkMetadataProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  return v0;
}

id LinkMetadataProvider.actionMetadata(bundleId:actionId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v59 = a3;
  v55 = a1;
  v54 = type metadata accessor for OSSignpostID();
  v6 = OUTLINED_FUNCTION_7_1(v54);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = type metadata accessor for OSSignposter();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, static Signposter.voiceCommands);
  v57 = v18;
  v58 = v15;
  (*(v18 + 16))(v22, v23, v15);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();

  v26 = a2;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v51 = a4;
    v52 = v26;
    v62 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v52, &v62);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v51, &v62);
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v29, "LinkFetchActionMetadata", "BundleId: %s, ActionId: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v30 = v54;
  (*(v8 + 16))(v53, v14, v54);
  v31 = type metadata accessor for OSSignpostIntervalState();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v14, v30);
  v34 = *(v56 + 16);
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v62 = 0;
  v37 = [v34 actionForBundleIdentifier:v35 andActionIdentifier:v36 error:&v62];

  if (v37)
  {
    v38 = v62;
    $defer #1 () in LinkMetadataProvider.actionMetadata(bundleId:actionId:)();

    (*(v57 + 8))(v22, v58);
  }

  else
  {
    v39 = v62;
    v40 = _convertNSErrorToError(_:)();

    v60 = v40;
    swift_willThrow();
    $defer #1 () in LinkMetadataProvider.actionMetadata(bundleId:actionId:)();

    (*(v57 + 8))(v22, v58);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = v45;
      *v44 = 136315138;
      v61 = v60;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v62);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "LinkMetadataProvider error %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    swift_willThrow();
  }

  return v37;
}

uint64_t $defer #1 () in LinkMetadataProvider.actionMetadata(bundleId:actionId:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "LinkFetchActionMetadata", v12, v13, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LinkMetadataProvider.enums(forBundleIdentifier:)()
{
  v2 = *(v0 + 16);
  v3 = String._bridgeToObjectiveC()();
  v9 = 0;
  v4 = [v2 enumsForBundleIdentifier:v3 error:&v9];

  v5 = v9;
  if (v4)
  {
    type metadata accessor for LNEnumMetadata();
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

unint64_t type metadata accessor for LNEnumMetadata()
{
  result = lazy cache variable for type metadata for LNEnumMetadata;
  if (!lazy cache variable for type metadata for LNEnumMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnumMetadata);
  }

  return result;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.recurrenceRuleTaskBuilder()()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_RecurringDateTime();
  OUTLINED_FUNCTION_66(v0);
  UsoEntityBuilder_common_RecurringDateTime.init()();
  OUTLINED_FUNCTION_92();
  v1 = type metadata accessor for UsoEntityBuilder_common_RecurringDateTimeRange();
  OUTLINED_FUNCTION_66(v1);
  UsoEntityBuilder_common_RecurringDateTimeRange.init()();
  OUTLINED_FUNCTION_10_31();
  dispatch thunk of UsoEntityBuilder_common_RecurringDateTimeRange.setRecurrencePattern(value:)();

  v2 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v2);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();

  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setDateTimeRange(value:)();

  v3 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v4 = OUTLINED_FUNCTION_66(v3);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_14_13();

  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  return v4;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v0);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_92();
  v1 = type metadata accessor for UsoPrimitiveStringBuilder();
  OUTLINED_FUNCTION_66(v1);
  OUTLINED_FUNCTION_3_21();

  UsoPrimitiveStringBuilder.init(value:)();
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  v2 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v3 = OUTLINED_FUNCTION_66(v2);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_6_28();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();
  OUTLINED_FUNCTION_5_27();
  return v3;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.entityTaskBuilder()()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v0);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_92();
  v1 = type metadata accessor for UsoEntityBuilder_common_AppEntity();
  OUTLINED_FUNCTION_66(v1);
  UsoEntityBuilder_common_AppEntity.init()();
  OUTLINED_FUNCTION_7_27();
  v2 = type metadata accessor for UsoPrimitiveStringBuilder();
  OUTLINED_FUNCTION_66(v2);
  UsoPrimitiveStringBuilder.init(value:)();
  OUTLINED_FUNCTION_4_41();
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setAppEntity(value:)();

  v3 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v4 = OUTLINED_FUNCTION_66(v3);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_6_28();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  OUTLINED_FUNCTION_5_27();
  return v4;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v0);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_92();
  v1 = type metadata accessor for UsoEntityBuilder_common_Uri();
  OUTLINED_FUNCTION_66(v1);
  UsoEntityBuilder_common_Uri.init()();
  OUTLINED_FUNCTION_7_27();
  v2 = type metadata accessor for UsoPrimitiveStringBuilder();
  OUTLINED_FUNCTION_66(v2);
  OUTLINED_FUNCTION_14_13();

  UsoPrimitiveStringBuilder.init(value:)();
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setContactAddress(value:)();

  v3 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v4 = OUTLINED_FUNCTION_66(v3);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_6_28();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  OUTLINED_FUNCTION_5_27();
  return v4;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.currencyTaskBuilder(value:currencyCode:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_27();
  v6 = type metadata accessor for UsoIdentifier();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
  OUTLINED_FUNCTION_66(v14);
  UsoEntityBuilder_common_CurrencyAmount.init()();
  if (a4)
  {
    v15 = type metadata accessor for UsoEntityBuilder_common_Currency();
    OUTLINED_FUNCTION_66(v15);

    UsoEntityBuilder_common_Currency.init()();
    dispatch thunk of UsoEntityBuilder_common_Currency.setName(value:)();
    if (dispatch thunk of UsoEntityBuilder_common_Currency.name.getter())
    {
      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

      (*(v9 + 8))(v13, v6);
    }

    else
    {
    }

    dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setCurrency(value:)();
  }

  if ((a2 & 1) == 0)
  {
    v16 = type metadata accessor for UsoEntityBuilder_common_Integer();
    OUTLINED_FUNCTION_66(v16);
    UsoEntityBuilder_common_Integer.init()();
    dispatch thunk of UsoEntityBuilder_common_Integer.setIntegerValue(value:)();

    dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setAmount(value:)();
  }

  v17 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v17);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_10_31();
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setCurrency(value:)();

  v18 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v19 = OUTLINED_FUNCTION_66(v18);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_3_21();

  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  return v19;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.unitTaskBuilder(value:symbol:unitName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for UsoIdentifier();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3_37();
  v16 = type metadata accessor for UsoEntityBuilder_common_Measurement();
  OUTLINED_FUNCTION_66(v16);
  UsoEntityBuilder_common_Measurement.init()();
  if ((a2 & 1) == 0)
  {
    v17 = type metadata accessor for UsoEntityBuilder_common_MeasurementComponent();
    OUTLINED_FUNCTION_66(v17);
    UsoEntityBuilder_common_MeasurementComponent.init()();
    v18 = type metadata accessor for UsoEntityBuilder_common_Integer();
    OUTLINED_FUNCTION_66(v18);
    UsoEntityBuilder_common_Integer.init()();
    dispatch thunk of UsoEntityBuilder_common_Integer.setIntegerValue(value:)();

    dispatch thunk of UsoEntityBuilder_common_MeasurementComponent.setValue(value:)();

    if (a4 && a6)
    {
      v19 = type metadata accessor for UsoEntityBuilder_common_MeasurementUnit();
      OUTLINED_FUNCTION_66(v19);
      OUTLINED_FUNCTION_14_13();

      UsoEntityBuilder_common_MeasurementUnit.init()();
      dispatch thunk of UsoEntityBuilder_common_MeasurementUnit.setName(value:)();
      if (dispatch thunk of UsoEntityBuilder_common_MeasurementUnit.name.getter())
      {
        UsoIdentifier.init(value:appBundleId:namespace:)();
        dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

        (*(v13 + 8))(v6, v10);
      }

      else
      {
      }

      dispatch thunk of UsoEntityBuilder_common_MeasurementComponent.setUnit(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_Measurement.addComponents(value:)();
  }

  v20 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v20);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_10_31();
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setMeasurement(value:)();

  v21 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v22 = OUTLINED_FUNCTION_66(v21);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_3_21();

  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  return v22;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.dateIntervalTaskBuilder()(uint64_t (*a1)(uint64_t), void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v7);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  v8 = OUTLINED_FUNCTION_92();
  v9 = a1(v8);
  OUTLINED_FUNCTION_66(v9);
  a2();
  a4();
  v10 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v11 = OUTLINED_FUNCTION_66(v10);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_6_28();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  OUTLINED_FUNCTION_5_27();
  return v11;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.personTaskBuilder(value:)()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v0);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_92();
  v1 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_66(v1);
  UsoEntityBuilder_common_Person.init()();
  OUTLINED_FUNCTION_7_27();
  v2 = type metadata accessor for UsoPrimitiveStringBuilder();
  OUTLINED_FUNCTION_66(v2);
  OUTLINED_FUNCTION_14_13();

  UsoPrimitiveStringBuilder.init(value:)();
  OUTLINED_FUNCTION_4_41();
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setAgent(value:)();

  v3 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v4 = OUTLINED_FUNCTION_66(v3);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_6_28();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  OUTLINED_FUNCTION_5_27();
  return v4;
}

uint64_t static UsoTaskBuilder_execute_common_VoiceCommand.smartPromptTaskBuilder(value:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3_37();
  v13 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandConfirmation();
  OUTLINED_FUNCTION_66(v13);
  UsoEntityBuilder_common_VoiceCommandConfirmation.init()();
  outlined init with copy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(v6);
  }

  else
  {
    (*(v10 + 32))(v1, v6, v7);
    dispatch thunk of UsoEntityBuilder_common_VoiceCommandConfirmation.setDefinedValue(value:)();
    (*(v10 + 8))(v1, v7);
  }

  v14 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v14);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  OUTLINED_FUNCTION_10_31();
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setVoiceCommandConfirmation(value:)();

  v15 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v16 = OUTLINED_FUNCTION_66(v15);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  OUTLINED_FUNCTION_3_21();

  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();

  return v16;
}

uint64_t outlined destroy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_27()
{
}

uint64_t OUTLINED_FUNCTION_6_28()
{
}

uint64_t OUTLINED_FUNCTION_10_31()
{
}

uint64_t CustomIntentContinueInAppFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)()
{
  OUTLINED_FUNCTION_71_1();
  swift_allocObject();
  v1 = v0[4];
  __swift_mutable_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_79_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_51_1(v5, v18);
  v8 = v7(v6);
  v16 = OUTLINED_FUNCTION_2_43(v8, v9, v10, v11, v12, v13, v14, v15, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v16;
}

uint64_t CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)()
{
  OUTLINED_FUNCTION_71_1();
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_79_1();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_51_1(v6, v19);
  v9 = v8(v7);
  v17 = OUTLINED_FUNCTION_2_43(v9, v10, v11, v12, v13, v14, v15, v16, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v17;
}

BOOL CustomIntentContinueInAppFlowStrategy.requireUnlock(intentResolutionRecord:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return (dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0;
}

uint64_t CustomIntentContinueInAppFlowStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentContinueInAppFlowStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v4 = IntentResolutionRecord.app.getter();
  v5 = IntentResolutionRecord.intent.getter();
  v6 = IntentResolutionRecord.intentResponse.getter();
  v7 = *(*v3 + 192);
  v2[3] = type metadata accessor for AceOutput();
  v2[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v2);
  v7(v4, v5, v6);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t CustomIntentContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  v1 = v0[3];
  v2 = *(v0[4] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v0[5] = v3;
  v4 = IntentResolutionRecord.intent.getter();
  v0[6] = v4;
  v5 = *(*v2 + 200);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = CustomIntentContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v8 = v0[2];

  return v10(v8, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0, 0);
  }

  else
  {
    v4 = *(v2 + 40);

    OUTLINED_FUNCTION_6_0();

    return v5();
  }
}

{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance CustomIntentContinueInAppFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance CustomIntentContinueInAppFlowStrategy;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance CustomIntentContinueInAppFlowStrategy()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a5;
  v37 = a3;
  v34 = a1;
  v35 = a2;
  v33 = a9;
  v13 = type metadata accessor for CATOption();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = *(a8 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  (*(v16 + 32))(&v31 - v21, a6, a8);
  outlined init with copy of DeviceState(a4, a7 + 16);
  outlined init with copy of DeviceState(a4, v38);
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v32 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentContinueInAppResponseGenerator();
  v26 = swift_allocObject();
  (*(v16 + 16))(v20, v22, a8);
  specialized CustomIntentContinueInAppResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v34, v35, v37, v38, v32, v23, v24, v25, v36, v20, v26, a8, v33, v30, v31, v32, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3]);
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(v22, a8);
  *(a7 + 56) = v28;
  return a7;
}

uint64_t lazy protocol witness table accessor for type CustomIntentContinueInAppFlowStrategy and conformance CustomIntentContinueInAppFlowStrategy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomIntentContinueInAppFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(v14, v13, v12, v11, v10, v16, v9, v15, a9);
}

uint64_t static RCHChildFlowProducersAsync.forCustomIntents(voiceCommandName:originDevice:runner:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for ModeInfoProvider();
  swift_allocObject();
  v60 = ModeInfoProvider.init()();
  outlined init with copy of DeviceState(a6, &v72);
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v12 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  swift_allocObject();
  v13 = CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(&v72, v11, v12);
  OUTLINED_FUNCTION_8_27(v13);
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy, type metadata accessor for CustomIntentNeedsValueFlowStrategy);
  OUTLINED_FUNCTION_3_38();
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMR);
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v58 = a6;
  outlined init with copy of DeviceState(a6, &v72);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v57 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v14, v71);
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v15, v70);
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v16, &v69);
  v17 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_46_9(v17);
  swift_allocObject();
  v18 = ResponseFactory.init()();
  v19 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  OUTLINED_FUNCTION_46_9(v19);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName);
  *v21 = a1;
  v21[1] = a2;
  outlined init with copy of DeviceState(&v72, v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState);
  v22 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v23 = enum case for SiriKitConfirmationState.unset(_:);
  v24 = type metadata accessor for SiriKitConfirmationState();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  outlined init with copy of DeviceState(&v72, v71);
  v25 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  v52 = OUTLINED_FUNCTION_46_9(v25);
  swift_allocObject();
  outlined init with copy of DeviceState?(v68, v67);

  v26 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v67);
  outlined destroy of DeviceState?(v68);
  type metadata accessor for CustomIntentNeedsConfirmIntentResponseGenerator();
  v27 = swift_allocObject();
  outlined init with copy of DeviceState(v71, v68);
  v67[3] = v17;
  v67[4] = &protocol witness table for ResponseFactory;
  v59 = v17;
  v67[0] = v18;
  v61 = a1;
  v27[10] = a1;
  v27[11] = a2;
  outlined init with copy of DeviceState(v68, (v27 + 2));
  v27[9] = a5;
  v27[12] = v26;
  outlined init with copy of DeviceState(v67, (v27 + 13));
  outlined init with copy of DeviceState(v68, v66);
  v28 = one-time initialization token for shared;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v29 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  v30 = type metadata accessor for AppNameResolver();
  v31 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v32 = OUTLINED_FUNCTION_11_24();
  v64 = v30;
  v65 = &protocol witness table for AppNameResolver;

  *&v63 = v31;
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  *(v32 + 56) = v29;
  outlined init with take of AceServiceInvokerAsync(v66, v32 + 16);
  *(v32 + 64) = 0;
  *(v32 + 72) = 1;
  *(v32 + 80) = v57;
  *(v32 + 88) = v56;
  *(v32 + 96) = v55;
  *(v32 + 104) = v54;
  outlined init with take of AceServiceInvokerAsync(&v63, v32 + 112);
  v27[7] = v32;
  v33 = v27[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v27[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v61, a2, v32, v68, v33);
  *(v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) = v27;
  *&v72 = v20;
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentNeedsConfirmationFlowStrategy and conformance CustomIntentNeedsConfirmationFlowStrategy, type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy);

  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  outlined init with copy of DeviceState(v58, &v72);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v34 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  v35 = OUTLINED_FUNCTION_11_24();

  *&v72 = specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(v61, a2, &v72, v60, a5, v34, v35);
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentNeedsDisambiguationFlowStrategy and conformance CustomIntentNeedsDisambiguationFlowStrategy, type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy);
  OUTLINED_FUNCTION_3_38();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  OUTLINED_FUNCTION_1_50();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  OUTLINED_FUNCTION_10_32();
  type metadata accessor for CustomIntentUnsupportedValueFlowStrategy();
  swift_allocObject();
  v36 = CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(&v72);
  OUTLINED_FUNCTION_8_27(v36);
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentUnsupportedValueFlowStrategy and conformance CustomIntentUnsupportedValueFlowStrategy, type metadata accessor for CustomIntentUnsupportedValueFlowStrategy);
  OUTLINED_FUNCTION_3_38();
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_1_50();
  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  OUTLINED_FUNCTION_10_32();
  v37 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  OUTLINED_FUNCTION_46_9(v37);
  swift_allocObject();

  v38 = CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v61, a2, a5, &v72);
  OUTLINED_FUNCTION_8_27(v38);
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentConfirmIntentFlowStrategy and conformance CustomIntentConfirmIntentFlowStrategy, type metadata accessor for CustomIntentConfirmIntentFlowStrategy);
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_1_50();
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  OUTLINED_FUNCTION_10_32();
  type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  swift_allocObject();

  v39 = CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v61, a2, a5, &v72);
  OUTLINED_FUNCTION_8_27(v39);
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy, type metadata accessor for CustomIntentHandleIntentFlowStrategy);
  OUTLINED_FUNCTION_3_38();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_1_50();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v40 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    outlined init with copy of DeviceState(a4, &v72);
    outlined init with copy of DeviceState(v58, v71);
    type metadata accessor for CustomIntentContinueInAppWithDialogStrategy();
    swift_allocObject();
    *&v72 = CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(&v72, v71);
    lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy, type metadata accessor for CustomIntentContinueInAppWithDialogStrategy);
    OUTLINED_FUNCTION_3_38();
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffToCompanionProducer<A>(strategy:)();

    v41 = v59;
  }

  else
  {
    outlined init with copy of DeviceState(v58, &v72);
    memset(v71, 0, sizeof(v71));
    OUTLINED_FUNCTION_46_9(v52);
    swift_allocObject();
    outlined init with copy of DeviceState?(v71, v68);

    v42 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v68);
    outlined destroy of DeviceState?(v71);
    v41 = v59;
    v43 = *(v59 + 48);
    v44 = *(v59 + 52);
    swift_allocObject();
    v45 = ResponseFactory.init()();
    type metadata accessor for CustomIntentContinueInAppFlowStrategy();
    v46 = swift_allocObject();

    *&v72 = specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(v61, a2, a5, &v72, v42, v45, v46);
    lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentContinueInAppFlowStrategy and conformance CustomIntentContinueInAppFlowStrategy, type metadata accessor for CustomIntentContinueInAppFlowStrategy);
    OUTLINED_FUNCTION_3_38();
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  }

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  OUTLINED_FUNCTION_10_32();
  v47 = *(v41 + 48);
  v48 = *(v41 + 52);
  swift_allocObject();
  v49 = ResponseFactory.init()();
  type metadata accessor for CustomIntentTCCFlowStrategy();
  v50 = swift_allocObject();
  v50[10] = &type metadata for EnableTCCLabelsProvider;
  v50[11] = &protocol witness table for EnableTCCLabelsProvider;
  v50[15] = v41;
  v50[16] = &protocol witness table for ResponseFactory;
  v50[12] = v49;
  outlined init with take of AceServiceInvokerAsync(&v72, (v50 + 2));
  *&v72 = v50;
  lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentTCCFlowStrategy and conformance CustomIntentTCCFlowStrategy, type metadata accessor for CustomIntentTCCFlowStrategy);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

id closure #1 in static RCHChildFlowProducersAsync.forCustomIntents(voiceCommandName:originDevice:runner:siriEnvironment:deviceState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v0 = IntentResolutionRecord.intent.getter();
  v1 = INIntent.showsWhenRun.getter();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = IntentResolutionRecord.intent.getter();
  v3 = [v2 _isUserConfirmationRequired];

  return v3;
}

uint64_t specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for CATOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_3();
  v26 = type metadata accessor for ModeInfoProvider();
  v27 = &protocol witness table for ModeInfoProvider;
  *&v25 = a4;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 128) = a1;
  *(a7 + 136) = a2;
  outlined init with copy of DeviceState(a3, a7 + 16);
  outlined init with copy of DeviceState(a7 + 16, v24);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v16 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v20 = type metadata accessor for AppNameResolver();
  v21 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v22 = OUTLINED_FUNCTION_11_24();
  *(v22 + 136) = v20;
  *(v22 + 144) = &protocol witness table for AppNameResolver;
  *(v22 + 112) = v21;
  *(v22 + 56) = v16;
  outlined init with take of AceServiceInvokerAsync(v24, v22 + 16);
  *(v22 + 64) = 0;
  *(v22 + 72) = 1;
  *(v22 + 80) = v17;
  *(v22 + 88) = a6;
  *(v22 + 96) = v18;
  *(v22 + 104) = v19;
  *(a7 + 80) = v22;
  outlined init with take of AceServiceInvokerAsync(&v25, a7 + 88);
  *(a7 + 144) = a5;
  *(a7 + 72) = 1;
  return a7;
}

uint64_t specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for CATOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_3();
  outlined init with copy of DeviceState(a4, a7 + 16);
  outlined init with copy of DeviceState(a4, v38);
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_9_25();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v16, &v41);
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_9_25();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v17, &v40);
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_9_25();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v18, &v39);
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_9_25();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentContinueInAppResponseGenerator();
  v20 = swift_allocObject();
  outlined init with copy of DeviceState(v38, v37);
  v36[3] = type metadata accessor for ResponseFactory();
  v36[4] = &protocol witness table for ResponseFactory;
  v36[0] = a6;
  v21 = a1;
  v20[10] = a1;
  v20[11] = a2;
  outlined init with copy of DeviceState(v37, (v20 + 2));
  v20[9] = a3;
  v20[12] = a5;
  outlined init with copy of DeviceState(v36, (v20 + 13));
  outlined init with copy of DeviceState(v37, v35);
  v22 = one-time initialization token for shared;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v23 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v24 = type metadata accessor for AppNameResolver();
  v25 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v26 = OUTLINED_FUNCTION_11_24();
  v34 = &protocol witness table for AppNameResolver;
  v33 = v24;
  *&v32 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  *(v26 + 56) = v23;
  outlined init with take of AceServiceInvokerAsync(v35, v26 + 16);
  *(v26 + 64) = 0;
  *(v26 + 72) = 1;
  *(v26 + 80) = v31;
  *(v26 + 88) = v30;
  *(v26 + 96) = v29;
  *(v26 + 104) = v19;
  outlined init with take of AceServiceInvokerAsync(&v32, v26 + 112);
  v20[7] = v26;
  v27 = v20[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v20[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v21, a2, v26, v37, v27);
  *(a7 + 56) = v20;

  return a7;
}

uint64_t lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_28()
{
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return outlined init with copy of DeviceState(v0, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return static CATOption.defaultMode.getter();
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional UsoEntity_common_MeasurementUnit.unitType.getter()
{
  value = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_MeasurementUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_MeasurementUnitC13DefinedValuesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v68 - v4;
  v6 = type metadata accessor for UsoEntity_common_MeasurementUnit.DefinedValues();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UsoEntity_common_MeasurementUnit.definedValue.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    (*(v9 + 32))(v13, v5, v6);
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_55:
      OUTLINED_FUNCTION_0();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.voiceCommands);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Using definedValue to create measurement unit", v27, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v28 = UsoEntity_common_MeasurementUnit.DefinedValues.unitType.getter();
    (*(v9 + 8))(v13, v6);
    return v28;
  }

  outlined destroy of UsoEntity_common_MeasurementUnit.DefinedValues?(v5);
  v14 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!v14)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "No uso identifiers for measurement", v32, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    return 0;
  }

  v6 = v14;
  v15 = 0;
  v9 = *(v14 + 16);
  v13 = 0x80000000002321C0;
  while (1)
  {
    if (v9 == v15)
    {
      v15 = v9;
      goto LABEL_23;
    }

    v16 = type metadata accessor for UsoIdentifier();
    OUTLINED_FUNCTION_5_0(v16);
    v19 = v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v15;
    v20 = UsoIdentifier.namespace.getter();
    if (v21)
    {
      break;
    }

LABEL_11:
    ++v15;
  }

  if (v20 != 0xD000000000000010 || v21 != 0x80000000002321C0)
  {
    v23 = OUTLINED_FUNCTION_4_42();

    if (v23)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

LABEL_23:
  v33 = *(v6 + 16);
LABEL_24:
  if (v15 != v33)
  {
    if (v15 >= v33)
    {
      __break(1u);
      goto LABEL_55;
    }

    v34 = type metadata accessor for UsoIdentifier();
    OUTLINED_FUNCTION_5_0(v34);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = *(v37 + 72);
    v39._countAndFlagsBits = UsoIdentifier.value.getter();
    if (VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(v39).value != SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandUnit_unknownDefault)
    {
      v33 = v15;
      goto LABEL_39;
    }

    ++v15;
    for (i = v6 + v36 + v38 * v15; ; i += v38)
    {
      if (v33 == v15)
      {
        v15 = v33;
        goto LABEL_24;
      }

      v41 = UsoIdentifier.namespace.getter();
      if (v42)
      {
        if (v41 == 0xD000000000000010 && v42 == 0x80000000002321C0)
        {

          goto LABEL_24;
        }

        v9 = OUTLINED_FUNCTION_4_42();

        if (v9)
        {
          goto LABEL_24;
        }
      }

      ++v15;
    }
  }

LABEL_39:
  v44 = *(v6 + 16);
  if (v33 == v44)
  {

    CodeGenBase.entity.getter();
    static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

    v45 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v47 = v46;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.voiceCommands);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69 = v52;
      *v51 = 136315138;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v69);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_0, v49, v50, "Unable to create measurement unit from %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    else
    {
    }

    return 0;
  }

  if (v33 >= v44)
  {
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_0();
LABEL_47:
    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.voiceCommands);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v63 = 136315138;
      VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter(value);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v69);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_0, v61, v62, "Using uso identifier to create measurement unit: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    return VoiceCommandsNLIntent.VoiceCommandUnit.unitType.getter(value);
  }

  v54 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_5_0(v54);
  v57 = v6 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v56 + 72) * v33;
  v58._countAndFlagsBits = UsoIdentifier.value.getter();
  result.value = VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(v58).value;
  if (result.value != SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandUnit_unknownDefault)
  {
    value = result.value;

    if (one-time initialization token for voiceCommands == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of UsoEntity_common_MeasurementUnit.DefinedValues?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_MeasurementUnitC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_MeasurementUnitC13DefinedValuesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id UsoEntity_common_MeasurementUnit.DefinedValues.unitType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UsoEntity_common_MeasurementUnit.DefinedValues();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_MegaHertz(_:))
  {
    v11 = [objc_opt_self() megahertz];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Gram(_:))
  {
    v11 = [objc_opt_self() grams];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilometer(_:))
  {
    v11 = [objc_opt_self() kilometers];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Inch(_:))
  {
    v11 = [objc_opt_self() inches];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Centimeter(_:))
  {
    v11 = [objc_opt_self() centimeters];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Mile(_:))
  {
    v11 = [objc_opt_self() miles];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Microgram(_:))
  {
    v11 = [objc_opt_self() micrograms];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Calorie(_:))
  {
    v11 = [objc_opt_self() calories];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Pound(_:))
  {
    v11 = [objc_opt_self() poundsMass];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_MeterPerSecond(_:))
  {
    v11 = [objc_opt_self() metersPerSecond];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Meter(_:))
  {
    v11 = [objc_opt_self() meters];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_KiloHertz(_:))
  {
    v11 = [objc_opt_self() kilohertz];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_MilePerHour(_:))
  {
    v11 = [objc_opt_self() milesPerHour];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Yard(_:))
  {
    v11 = [objc_opt_self() yards];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilocalorie(_:))
  {
    v11 = [objc_opt_self() kilocalories];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_KilometerPerHour(_:))
  {
    v11 = [objc_opt_self() kilometersPerHour];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Milligram(_:))
  {
    v11 = [objc_opt_self() milligrams];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Milliliter(_:))
  {
    v11 = [objc_opt_self() milliliters];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Stone(_:))
  {
    v11 = [objc_opt_self() stones];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Liter(_:))
  {
    v11 = [objc_opt_self() liters];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilogram(_:))
  {
    v11 = [objc_opt_self() kilograms];
  }

  else if (v10 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Foot(_:))
  {
    v11 = [objc_opt_self() feet];
  }

  else
  {
    if (v10 != enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilojoule(_:))
    {
      (*(v5 + 8))(v9, v2);
      return 0;
    }

    v11 = [objc_opt_self() kilojoules];
  }

  return v11;
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t WorkflowNLContextProvider.makeContextForConfirmInteraction(intent:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v35 = type metadata accessor for DisplayHint();
  v7 = OUTLINED_FUNCTION_7_1(v35);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for SemanticValue();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v34 - v24;
  (*(*v1 + 80))(0, 0, 0, 0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  WorkflowNLContextProvider.getNLInput(intentCategory:)([a1 _intentCategory], 0);
  NLContextUpdate.nlInput.setter();
  v26 = INIntent.verb()();
  v27 = (v26._object >> 56) & 0xF;
  if ((v26._object & 0x2000000000000000) == 0)
  {
    v27 = v26._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    SemanticValue.init(string:label:)();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
    (*(v18 + 16))(v23, v25, v15);
    DisplayHint.init(idValue:displayValue:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
    v28 = *(v9 + 72);
    v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_216850;
    v31 = v30 + v29;
    v32 = v35;
    (*(v9 + 16))(v31, v14, v35);
    NLContextUpdate.displayHints.setter();
    (*(v9 + 8))(v14, v32);
    return (*(v18 + 8))(v25, v15);
  }

  else
  {
  }
}

uint64_t WorkflowNLContextProvider.makeContextForInputText(request:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for NLContextUpdate();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = [a1 textFieldConfiguration];
  v18 = [v17 keyboardType];

  if (v18)
  {
    v19 = WFTextFieldKeyboardType.toInputType()();

    NLContextUpdate.init()();
    if (v19 - 1 >= 2)
    {
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      if (v19)
      {
        v20 = static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)();
      }

      else
      {
        v20 = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
      }
    }

    else
    {
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v20 = static UsoTaskBuilder_execute_common_VoiceCommand.numberTaskBuilder()();
    }

    (*(*v3 + 144))(v20);

    (*(v9 + 8))(v16, v6);
    v22 = *(v9 + 32);
    v22(v16, v14, v6);
    NLContextUpdate.dictationPromptTargetNodes.setter();
    OUTLINED_FUNCTION_4_28();
    NLContextUpdate.dictationPromptTargetDomain.setter();
    return (v22)(a2, v16, v6);
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    OUTLINED_FUNCTION_1_5();
    static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
    (*(*v3 + 144))();

    NLContextUpdate.dictationPromptTargetNodes.setter();
    OUTLINED_FUNCTION_4_28();
    return NLContextUpdate.dictationPromptTargetDomain.setter();
  }
}

uint64_t WorkflowNLContextProvider.makeContextForInputDate()()
{
  type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  static UsoTaskBuilder_execute_common_VoiceCommand.dateTaskBuilder()();
  (*(*v0 + 144))();

  NLContextUpdate.dictationPromptTargetNodes.setter();
  OUTLINED_FUNCTION_4_28();
  return NLContextUpdate.dictationPromptTargetDomain.setter();
}

uint64_t WorkflowNLContextProvider.makeContextForChooseFromList(items:)(uint64_t a1)
{
  specialized _arrayForceCast<A, B>(_:)(a1);
  (*(*v1 + 88))();

  NLContextUpdate.weightedPromptResponseTargets.setter();
  specialized _arrayForceCast<A, B>(_:)(a1);
  (*(*v1 + 104))();

  return NLContextUpdate.displayHints.setter();
}

uint64_t WorkflowNLContextProvider.makeContextForPrompt()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  OUTLINED_FUNCTION_3();
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.dictationPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.currentDomainName.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  Siri_Nlu_External_SystemPrompted.init()();
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v9 = *(v3 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_216850;
  (*(v4 + 16))(v11 + v10, v8, v2);
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v4 + 8))(v8, v2);
}

uint64_t WorkflowNLContextProvider.getNLInput(intentCategory:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  INIntentCategory.asINPBString()();
  v3 = type metadata accessor for MachineUtteranceBuilder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  v2 = dispatch thunk of MachineUtteranceBuilder.build()();

  return v2;
}

SiriLinkFlowPlugin::AutoShortcutCATs::Properties_optional __swiftcall AutoShortcutCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATs.Properties.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t AutoShortcutCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 7:
    case 9:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::AutoShortcutCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATs.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATs::Properties_optional *a2@<X8>)
{
  result.value = AutoShortcutCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AutoShortcutCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AutoShortcutCATs.appDisabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[7] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  OUTLINED_FUNCTION_14_23(v5);
  outlined init with copy of SpeakableString?(v6, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v2[6];
  v10 = v2[3];
  if (v8 == 1)
  {
    v11 = v2[3];

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_23_14("wasAlreadyEnabled");
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v15;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v2[8] = v16;
  *v16 = v17;
  v16[1] = RunVoiceCommandCATs.disambiguateSlotValue(device:slotName:);
  v18 = v2[5];
  v19 = v2[2];
  OUTLINED_FUNCTION_30_13();

  return v20();
}

uint64_t AutoShortcutCATs.appEnabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[7] = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  OUTLINED_FUNCTION_14_23(v5);
  outlined init with copy of SpeakableString?(v6, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v2[6];
  v10 = v2[3];
  if (v8 == 1)
  {
    v11 = v2[3];

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_23_14("wasAlreadyEnabled");
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v15;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v2[8] = v16;
  *v16 = v17;
  v16[1] = RunVoiceCommandCATs.yesAndCancel(device:intentVerb:);
  v18 = v2[5];
  v19 = v2[2];
  OUTLINED_FUNCTION_30_13();

  return v20();
}

uint64_t AutoShortcutCATs.confirmChangeEnablement(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_32_15(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = *(v1 + 72);
  OUTLINED_FUNCTION_31_13();
  *(v2 + 80) = v14 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
  *(v2 + 88) = 0xEA0000000000676ELL;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v15;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 56) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_4_43(v16);
  OUTLINED_FUNCTION_10_33();

  return v18();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

uint64_t AutoShortcutCATs.confirmChangeEnablementDeclined(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_32_15(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = *(v1 + 72);
  OUTLINED_FUNCTION_31_13();
  *(v2 + 80) = v14 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
  *(v2 + 88) = 0xE900000000000064;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v15;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 56) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_4_43(v16);
  OUTLINED_FUNCTION_10_33();

  return v18();
}

uint64_t AutoShortcutCATs.disableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_29_16();

  return v3();
}

uint64_t AutoShortcutCATs.enableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_29_16();

  return v3();
}

uint64_t AutoShortcutCATs.firstRun(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_32_15(v3);
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 56) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_4_43(v12);
  OUTLINED_FUNCTION_10_33();

  return v14();
}

uint64_t AutoShortcutCATs.firstRunHomePod(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_64_0();
  v27 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[9];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v0[10] = v4;
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_218630);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = v0[8];
  v12 = v0[4];
  *(v4 + 80) = 0x7268507473726966;
  *(v4 + 88) = 0xEB00000000657361;
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    outlined destroy of String?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = v0[7];
  v17 = v0[5];
  strcpy((v4 + 128), "secondPhrase");
  *(v4 + 141) = 0;
  *(v4 + 142) = -5120;
  outlined init with copy of SpeakableString?(v17, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_13_2();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v21;
  *v21 = v22;
  v21[1] = AutoShortcutCATs.firstRunHomePod(app:firstPhrase:secondPhrase:);
  v23 = v0[6];
  v24 = v0[2];
  OUTLINED_FUNCTION_10_33();

  return v25();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];
    v16 = v3 + 7;
    v14 = v3[7];
    v15 = v16[1];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

uint64_t AutoShortcutCATs.moreShortcuts(numberOfShortcuts:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t AutoShortcutCATs.moreShortcuts(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_64_0();
  v14 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = v3;
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000000233620;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = &type metadata for Double;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v6;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v8;
  *v8 = v9;
  v8[1] = RunVoiceCommandCATs.openAppFailed(device:);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return v13(v11, 0xD00000000000001ALL, 0x800000000022E770, v4);
}

uint64_t AutoShortcutCATs.openInShortcuts()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_29_16();

  return v3();
}

uint64_t AutoShortcutCATs.shortcutPhrases(phrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v15 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_32_15(v3);
  *(v4 + 16) = xmmword_216850;
  *(v4 + 32) = 0x657361726870;
  *(v4 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v6);
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 56) = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_4_43(v11);
  OUTLINED_FUNCTION_10_33();

  return v13();
}

uint64_t AutoShortcutCATs.userDenied()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_29_16();

  return v3();
}

uint64_t AutoShortcutCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return AutoShortcutCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t AutoShortcutCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATs.Properties and conformance AutoShortcutCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATs.Properties and conformance AutoShortcutCATs.Properties;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATs.Properties and conformance AutoShortcutCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATs.Properties and conformance AutoShortcutCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AutoShortcutCATs()
{
  result = type metadata singleton initialization cache for AutoShortcutCATs;
  if (!type metadata singleton initialization cache for AutoShortcutCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x16A90CLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}