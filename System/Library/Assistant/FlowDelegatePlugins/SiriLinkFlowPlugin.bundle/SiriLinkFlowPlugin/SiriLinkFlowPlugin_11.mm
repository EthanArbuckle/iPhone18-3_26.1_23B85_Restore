uint64_t OUTLINED_FUNCTION_38_10()
{

  return StaticString.description.getter();
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional __swiftcall RunVoiceCommandCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t RunVoiceCommandCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
    case 6:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000002ELL;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
    case 10:
    case 13:
      result = 0xD000000000000024;
      break;
    case 7:
      result = 0xD000000000000029;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 11:
    case 12:
      result = 0xD000000000000022;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.confirmSlotValue(device:slotName:slotValue:)()
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
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3();
  v4 = OUTLINED_FUNCTION_64_3(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[7];
  OUTLINED_FUNCTION_2_34(v5);
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

  v13 = OUTLINED_FUNCTION_47_6();
  outlined init with copy of SpeakableString?(v13, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = RunVoiceCommandCATsSimple.confirmSlotValue(device:slotName:slotValue:);
  v18 = v0[5];
  OUTLINED_FUNCTION_43_7(32);
  OUTLINED_FUNCTION_87();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26);
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
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[10];

  return v4();
}

uint64_t RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 27503;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ConfirmSlotValueDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ConfirmSlotValueDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:)()
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
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3();
  v4 = OUTLINED_FUNCTION_64_3(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_218630);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[7];
  OUTLINED_FUNCTION_2_34(v5);
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

  v13 = OUTLINED_FUNCTION_47_6();
  outlined init with copy of SpeakableString?(v13, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v17 = swift_task_alloc();
  v0[9] = v17;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v17 = v18;
  v17[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  v19 = v0[5];
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(32);
  OUTLINED_FUNCTION_87();

  return v25(v20, v21, v22, v23, v24, v25, v26, v27);
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
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.disambiguateSlotValue(device:slotName:)()
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
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_32_12(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[5];
  OUTLINED_FUNCTION_2_34(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_30_3(v13);
  OUTLINED_FUNCTION_43_7(37);
  OUTLINED_FUNCTION_87();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

BOOL RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.disambiguateSlotValueAsLabels(device:slotName:)()
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

  v7 = *(v1 + 40);
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(37);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
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
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_34_11(v6);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_26_3();
  v2[16] = 0xD000000000000010;
  v2[17] = v13;
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[9] = v18;
  *v18 = v19;
  v18[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  v20 = v1[5];
  OUTLINED_FUNCTION_87();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C70784568746977;
  }

  else
  {
    return 0x6E616C7078456F6ELL;
  }
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeCustomErrorDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeCustomErrorAsLabels(device:customDialog:localizedAppName:)()
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
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_34_11(v6);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_26_3();
  v2[16] = 0xD000000000000010;
  v2[17] = v13;
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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
  v1[9] = v18;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v18 = v19;
  v18[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  v20 = v1[5];
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeCustomErrorDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodePreflightRequired(localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_26_3();
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v2[4];
  if (v8 == 1)
  {
    outlined destroy of String?(v2[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v2[6] = v13;
  *v13 = v14;
  v13[1] = RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:);
  v15 = v2[3];
  OUTLINED_FUNCTION_87();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

BOOL RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodePreflightRequiredAsLabels(localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_87_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_26_3();
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v2[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  v2[6] = v11;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v11 = v12;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodePreflightRequiredDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
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

  OUTLINED_FUNCTION_20_15();
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
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_46_10(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_58_4(v24);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656E6F68506E6FLL;
  }

  else
  {
    return 0x65446D6F74737563;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeUnsupportedOnCarPlayDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::ErrorWithCodeUnsupportedOnCarPlayDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlayAsLabels(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATsSimple.errorWithCodeUnsupportedOnCarPlayAsLabels(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  OUTLINED_FUNCTION_20_15();
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
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v25;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.ErrorWithCodeUnsupportedOnCarPlayDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupported(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATsSimple.followupNotSupported(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
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

  OUTLINED_FUNCTION_20_15();
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
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_46_10(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_58_4(v24);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:), v3);
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

uint64_t RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.rawValue.getter(char a1)
{
  result = 0x7070416E69;
  switch(a1)
  {
    case 1:
      result = 0x7375437070416E69;
      break;
    case 2:
      result = 0x7070416E65706FLL;
      break;
    case 3:
      result = 0x437070416E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::FollowupNotSupportedDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATsSimple.followupNotSupportedAsLabels(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  OUTLINED_FUNCTION_20_15();
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
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v25;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds and conformance RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_78_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_27();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
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
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v14 = v3[11];
    v13 = v3[12];
    v16 = v3[9];
    v15 = v3[10];
    v17 = v3[8];

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_6_0();
  v7 = v0[14];

  return v6();
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_76_4(v13);
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v14);
  v15 = type metadata accessor for SpeakableString();
  v16 = OUTLINED_FUNCTION_24_2(v15);
  v17 = *(v10 + 88);
  v18 = *(v10 + 16);
  if (v16 == 1)
  {
    v19 = *(v10 + 16);

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_40_8();
  outlined init with copy of SpeakableString?(v23, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = OUTLINED_FUNCTION_16_7();
  v25 = *(v10 + 80);
  if (v24 == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 192));
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  v29 = OUTLINED_FUNCTION_39_12();
  outlined init with copy of SpeakableString?(v29, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_13_2();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_24_4();
    v32();
  }

  v33 = *(v10 + 64);
  v34 = *(v10 + 48);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v35;
  *(v12 + 280) = v36;
  outlined init with copy of SpeakableString?(v37, v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v38 = OUTLINED_FUNCTION_16_7();
  v39 = *(v10 + 64);
  if (v38 == 1)
  {
    outlined destroy of String?(*(v10 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_13_2();
    v41 = *(v40 + 32);
    OUTLINED_FUNCTION_24_4();
    v42();
  }

  OUTLINED_FUNCTION_68_5(*(v10 + 121));
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v56 = v43;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 104) = v44;
  *v44 = v45;
  v44[1] = RunVoiceCommandCATsSimple.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  v46 = *(v10 + 56);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v50(v47, v48, v49, v50, v51, v52, v53, v54, a9, v56);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v1;
  }
}

uint64_t RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x6E496B63656863;
      break;
    case 2:
      result = 0x657461657263;
      break;
    case 3:
      result = 0x6441657461657263;
      break;
    case 4:
      result = 0x7543657461657263;
      break;
    case 5:
    case 6:
    case 7:
      result = 0x64616F6C6E776F64;
      break;
    case 8:
      result = 0x6B6361626C6C6166;
      break;
    case 9:
      result = 0x726564726FLL;
      break;
    case 10:
      result = 0x6F6F42726564726FLL;
      break;
    case 11:
      result = 0x797542726564726FLL;
      break;
    case 12:
      v3 = 0x43726564726FLL;
      goto LABEL_19;
    case 13:
      result = 0x796150726564726FLL;
      break;
    case 14:
      result = 0x6964654D79616C70;
      break;
    case 15:
      result = 0x74736575716572;
      break;
    case 16:
      result = 7628147;
      break;
    case 17:
      result = 0x6572616873;
      break;
    case 18:
      v3 = 0x436572616873;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7375000000000000;
      break;
    case 19:
      result = 0x736F506572616873;
      break;
    case 20:
      result = 0x6E65536572616873;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x776F6C666B726F77;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::IntentConfirmationPromptDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_78_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_27();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
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
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v14 = v3[11];
    v13 = v3[12];
    v16 = v3[9];
    v15 = v3[10];
    v17 = v3[8];

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_87();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_76_4(v13);
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v14);
  v15 = type metadata accessor for SpeakableString();
  v16 = OUTLINED_FUNCTION_24_2(v15);
  v17 = *(v10 + 88);
  v18 = *(v10 + 16);
  if (v16 == 1)
  {
    v19 = *(v10 + 16);

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_40_8();
  outlined init with copy of SpeakableString?(v23, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = OUTLINED_FUNCTION_16_7();
  v25 = *(v10 + 80);
  if (v24 == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 192));
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  v29 = OUTLINED_FUNCTION_39_12();
  outlined init with copy of SpeakableString?(v29, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_13_2();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_24_4();
    v32();
  }

  v33 = *(v10 + 64);
  v34 = *(v10 + 48);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v35;
  *(v12 + 280) = v36;
  outlined init with copy of SpeakableString?(v37, v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 64), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 288));
    OUTLINED_FUNCTION_13_2();
    v39 = *(v38 + 32);
    OUTLINED_FUNCTION_24_4();
    v40();
  }

  OUTLINED_FUNCTION_68_5(*(v10 + 121));
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v54 = v41;
  v42 = swift_task_alloc();
  *(v10 + 104) = v42;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v42 = v43;
  v42[1] = RunVoiceCommandCATsSimple.intentConfirmationPromptAsLabels(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  v44 = *(v10 + 56);
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v50(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds and conformance RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDone(device:localizedAppName:intentVerb:)()
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

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDone(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_69_3();
  v13 = OUTLINED_FUNCTION_64_3(v12);
  OUTLINED_FUNCTION_1_3(v13, xmmword_218630);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v10[7] = 0;
    v10[8] = 0;
  }

  OUTLINED_FUNCTION_49_5();
  v14 = v9[7];
  v15 = v9[3];
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v18);
  if (v19)
  {

    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_34_2();
  v10[16] = v23;
  v10[17] = v24;
  outlined init with copy of SpeakableString?(v25, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v19)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v42 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v30;
  *v30 = v31;
  v30[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  v32 = v9[5];
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

BOOL RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDoneAsLabels(device:localizedAppName:intentVerb:)()
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

uint64_t RunVoiceCommandCATsSimple.intentHandledResponseDoneAsLabels(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_69_3();
  v13 = OUTLINED_FUNCTION_64_3(v12);
  OUTLINED_FUNCTION_1_3(v13, xmmword_218630);
  if (v11)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v10[7] = 0;
    v10[8] = 0;
  }

  OUTLINED_FUNCTION_49_5();
  v14 = v9[7];
  v15 = v9[3];
  OUTLINED_FUNCTION_5_4(v16);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v18);
  if (v19)
  {

    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_34_2();
  v10[16] = v23;
  v10[17] = v24;
  outlined init with copy of SpeakableString?(v25, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v19)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v42 = v29;
  v30 = swift_task_alloc();
  v9[9] = v30;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v30 = v31;
  v30[1] = RunVoiceCommandCATsSimple.confirmSlotValueAsLabels(device:slotName:slotValue:);
  v32 = v9[5];
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds and conformance RunVoiceCommandCATsSimple.IntentHandledResponseDoneDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openApp(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATsSimple.openApp(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
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

  OUTLINED_FUNCTION_20_15();
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
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_46_10(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_58_4(v24);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

BOOL RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.OpenAppDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppAsLabels(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATsSimple.openAppAsLabels(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  OUTLINED_FUNCTION_20_15();
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
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v25;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailed(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailed(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_44_10(v6);
  OUTLINED_FUNCTION_23_8(29);
  OUTLINED_FUNCTION_87();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

BOOL RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.OpenAppFailedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedAsLabels(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v6 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(29);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlay(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlay(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_44_10(v6);
  OUTLINED_FUNCTION_23_8(36);
  OUTLINED_FUNCTION_87();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

BOOL RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlayAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedCarPlayAsLabels(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v6 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(36);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedCarPlayDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatch(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatch(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 16);
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

  OUTLINED_FUNCTION_20_15();
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
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_46_10(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_58_4(v24);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_49_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x65446D6F74737563;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::OpenAppFailedWatchDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::OpenAppFailedWatchDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatchAsLabels(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATsSimple.openAppFailedWatchAsLabels(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  OUTLINED_FUNCTION_20_15();
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
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v25;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_49_0();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds and conformance RunVoiceCommandCATsSimple.OpenAppFailedWatchDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValue(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValue(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_44_10(v6);
  OUTLINED_FUNCTION_23_8(34);
  OUTLINED_FUNCTION_87();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

BOOL RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValueAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATsSimple.promptForSlotValueAsLabels(device:)()
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v6 = v7;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(34);
  OUTLINED_FUNCTION_87();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.PromptForSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.unsupportedSlotValue(device:slotName:)()
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
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_32_12(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = v0[5];
  OUTLINED_FUNCTION_2_34(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v8);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_30_3(v13);
  OUTLINED_FUNCTION_43_7(36);
  OUTLINED_FUNCTION_87();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

BOOL RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.unsupportedSlotValueAsLabels(device:slotName:)()
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

  v7 = *(v1 + 40);
  OUTLINED_FUNCTION_2_34(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_39(v9);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_56_3(v14);
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(36);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds and conformance RunVoiceCommandCATsSimple.UnsupportedSlotValueDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.yesAndCancel(device:intentVerb:)()
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

  OUTLINED_FUNCTION_38_11(v6);
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
  *(v1 + 56) = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_30_3(v13);
  OUTLINED_FUNCTION_43_7(28);
  OUTLINED_FUNCTION_87();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional __swiftcall RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:), v3);
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

uint64_t RunVoiceCommandCATsSimple.YesAndCancelDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 7562617;
}

SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunVoiceCommandCATsSimple::YesAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = RunVoiceCommandCATsSimple.YesAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunVoiceCommandCATsSimple.YesAndCancelDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunVoiceCommandCATsSimple.yesAndCancelAsLabels(device:intentVerb:)()
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

  OUTLINED_FUNCTION_38_11(v7);
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
  lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_42_7(28);
  OUTLINED_FUNCTION_87();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.YesAndCancelDialogIds and conformance RunVoiceCommandCATsSimple.YesAndCancelDialogIds);
  }

  return result;
}

uint64_t RunVoiceCommandCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunVoiceCommandCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunVoiceCommandCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t RunVoiceCommandCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t RunVoiceCommandCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunVoiceCommandCATsSimple.Properties and conformance RunVoiceCommandCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for RunVoiceCommandCATsSimple()
{
  result = type metadata singleton initialization cache for RunVoiceCommandCATsSimple;
  if (!type metadata singleton initialization cache for RunVoiceCommandCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunVoiceCommandCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107704);
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

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.FollowupNotSupportedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107860);
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

uint64_t getEnumTagSinglePayload for RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1079ECLL);
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

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.ConfirmSlotValueDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107B30);
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

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.DisambiguateSlotValueDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x107C14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunVoiceCommandCATsSimple.YesAndCancelDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x107D18);
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

uint64_t OUTLINED_FUNCTION_1_39(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t result)
{
  v4 = *(v2 + 24);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x656D614E746F6C73;
  v3[11] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_22(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 56);
  v5 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t result)
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 24);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "customDialog");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t result)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x6556746E65746E69;
  v3[11] = 0xEA00000000006272;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_12()
{
  v2 = *(v0 + 72);
  result = *(v0 + 40);
  strcpy((v1 + 224), "intentCategory");
  *(v1 + 239) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8()
{
  v2 = *(v0 + 80);
  result = *(v0 + 32);
  strcpy((v1 + 176), "customResponse");
  *(v1 + 191) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_6()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  *(v1 + 128) = 0x756C6156746F6C73;
  *(v1 + 136) = 0xE900000000000065;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_68_5(char a1@<W8>)
{
  *(v3 + 320) = v4 + 8;
  *(v3 + 328) = (v1 - 32) | 0x8000000000000000;
  *(v3 + 360) = v2;
  *(v3 + 336) = a1;
}

void OUTLINED_FUNCTION_75_3()
{
  *(v3 + 96) = v0;
  *(v3 + 120) = v2;
  *(v3 + 128) = v4;
  *(v3 + 136) = (v1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t result)
{
  v2[9] = result;
  v2[10] = v3 | 6;
  v2[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 121) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 120) = a2;
  *(v8 + 16) = result;
  *(v8 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_83_1()
{
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
}

void OUTLINED_FUNCTION_88_1()
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 24);
  v5 = *(v1 + 120);
  *(v2 + 48) = v0;
}

uint64_t AppShortcutGeneralizedInvocation.action.getter()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v3 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 24) = v12;
  *v12 = v0;
  v12[1] = WorkflowDialogTemplating.makeFinalDonePattern();

  return v14(v4, v5, v6, v7, v8, v9, v2, v3);
}

uint64_t AppShortcutGeneralizedInvocation.init(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:provider:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  a9[5] = a1;
  a9[6] = a2;
  a9[3] = a5;
  a9[4] = a6;
  a9[1] = a3;
  a9[2] = a4;
  *a9 = a8;
  return outlined init with take of AceServiceInvokerAsync(a7, (a9 + 7));
}

uint64_t AppShortcutGeneralizedInvocation.appShortcutIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AppShortcutGeneralizedInvocation.autoShortcuts.getter()
{
  *(v1 + 24) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  v1 = [**(v0 + 24) languageCode];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 32) = v6;
    v7 = v3[10];
    v8 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
    v9 = v3[5];
    v10 = v3[6];
    v11 = *(v8 + 8);
    v20 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 40) = v13;
    *v13 = v0;
    v13[1] = AppShortcutGeneralizedInvocation.autoShortcuts.getter;

    return v20(v9, v10, v4, v6, v7, v8);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#AppShortcutGeneralizedInvocation cannot get Siri language", v18, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_6_6();

    return v19(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v8 + 48) = v7;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = AppShortcutGeneralizedInvocation.autoShortcuts.getter;
  }

  else
  {
    v9 = AppShortcutGeneralizedInvocation.autoShortcuts.getter;
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[3];
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = specialized Array.count.getter(v0[6]);
  v6 = static AppShortcutGeneralizedInvocation.extractRank(from:maxRank:)(v4, v3, v5);
  v7 = v0[6];
  if (v1)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_0, v9, v10, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_15;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v15 = v0[6];
  if (!result || (v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v0[6]);
    v15 = result;
  }

  v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  if (v6 >= v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16 - 1;
  v18 = *(&stru_20.cmd + 8 * v6 + (v15 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 40, v16 - 1 - v6, (v15 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 32);
  *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) = v17;
  v0[2] = v15;
  specialized Array._checkIndex(_:)(0, v15);
  result = specialized Array.count.getter(v15);
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = specialized Array.count.getter(v15);
  v20 = __OFADD__(v19, 1);
  result = v19 + 1;
  if (v20)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v18);
  v21 = v0[2];
LABEL_15:
  OUTLINED_FUNCTION_6_6();

  return v22();
}

{
  v1 = *(v0 + 56);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "#AppShortcutGeneralizedInvocation could not prepare App Shortcuts list. Error: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_6_6();

  return v8(_swiftEmptyArrayStorage);
}

uint64_t static AppShortcutGeneralizedInvocation.extractRank(from:maxRank:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  if (*(v8 + 16) < 2uLL)
  {

    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = 0;
LABEL_9:

LABEL_15:
    swift_willThrow();
    return v4;
  }

  v10 = specialized BidirectionalCollection.last.getter(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (!v16)
  {
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    v22 = 3;
LABEL_14:
    *(v21 + 16) = v22;
    goto LABEL_15;
  }

  if (!((v10 ^ v12) >> 14))
  {

LABEL_8:
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 1;
    goto LABEL_9;
  }

  v24 = a3;
  v17 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v10, v12, v14, v16, 10);
  if ((v18 & 0x100) != 0)
  {
    v17 = specialized _parseInteger<A, B>(ascii:radix:)(v10, v12, v14, v16, 10);
  }

  v4 = v17;
  v19 = v18;

  if (v19)
  {
    goto LABEL_8;
  }

  if (v4 < 0 || v4 >= v24)
  {
    lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError();
    swift_allocError();
    *v21 = v4;
    *(v21 + 8) = v24;
    v22 = 2;
    goto LABEL_14;
  }

  return v4;
}

uint64_t protocol witness for AppShortcutInvoking.action.getter in conformance AppShortcutGeneralizedInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation;

  return AppShortcutGeneralizedInvocation.action.getter();
}

uint64_t protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AppShortcutGeneralizedInvocation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return AppShortcutGeneralizedInvocation.autoShortcuts.getter();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t getEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AppShortcutGeneralizedInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationV15ExtractionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t lazy protocol witness table accessor for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError()
{
  result = lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError;
  if (!lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation.ExtractionError and conformance AppShortcutGeneralizedInvocation.ExtractionError);
  }

  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
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

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t LinkRCHFlow.exitValue.getter()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_85();
    v28 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_62_5();
    swift_beginAccess();
    outlined init with copy of LinkRCHFlow.State(v1 + 48, &v21);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v28);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_42_8();
    _os_log_impl(v10, v11, v12, v13, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  outlined init with copy of LinkRCHFlow.State(v1 + 48, &v21);
  result = v21;
  switch(v27)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 11:
      outlined destroy of LinkRCHFlow.State(&v21);
      goto LABEL_10;
    case 5:
    case 7:

      v15 = v23;
      goto LABEL_9;
    case 6:
    case 8:
    case 9:

      v15 = &v22;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      goto LABEL_10;
    case 10:
    case 12:
    case 13:
      return result;
    case 14:
      v18 = v23[1] | v23[0] | v22;
      if (!(v25 | v26 | v21 | v24 | v18) || v21 == &dword_0 + 1 && !(v25 | v26 | v24 | v18))
      {
        goto LABEL_10;
      }

      result = 0;
      break;
    default:
LABEL_10:
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      v19 = v21;
      v20 = v22;
      v16._object = 0x8000000000233370;
      v16._countAndFlagsBits = 0xD00000000000002ELL;
      String.append(_:)(v16);
      outlined init with copy of LinkRCHFlow.State(v1 + 48, &v21);
      _print_unlocked<A, B>(_:_:)();
      outlined destroy of LinkRCHFlow.State(&v21);
      lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
      result = OUTLINED_FUNCTION_16_6();
      *v17 = v19;
      v17[1] = v20;
      break;
  }

  return result;
}

uint64_t LinkRCHFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  return outlined init with copy of LinkRCHFlow.State(v1 + 48, a1);
}

void LinkRCHFlow.__allocating_init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_40_0();
  v50 = v28;
  v51 = v29;
  v49 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v48 = v37;
  v40 = *(v38 + 24);
  v39 = *(v38 + 32);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v38, v40);
  v42 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_3();
  v45 = v44 - v43;
  (*(v46 + 16))(v44 - v43);
  a27(v36, v34, v32, v48, v49, v45, v50, v51, a21, a22, a23, a24, a25, a26, v27, v40, v39);
  v47 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  OUTLINED_FUNCTION_42();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(*a1);
  *a2 = result;
  return result;
}

uint64_t LinkRCHFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_24_13();
  lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(v0, v1, v2);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t LinkRCHFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[95] = v0;
  v1[94] = v2;
  v1[96] = *v0;
  v3 = *(*(type metadata accessor for DurationUtil() - 8) + 64) + 15;
  v1[97] = swift_task_alloc();
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[98] = swift_task_alloc();
  v5 = type metadata accessor for ResponseMode();
  v1[99] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[100] = v6;
  v8 = *(v7 + 64) + 15;
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  v200 = v0;
  v1 = *(v0 + 760);
  OUTLINED_FUNCTION_62_5();
  swift_beginAccess();
  v2 = outlined init with copy of LinkRCHFlow.State(v1 + 48, v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  switch(*(v0 + 72))
  {
    case 1:
      v64 = *(v0 + 760);
      outlined init with take of AceServiceInvokerAsync((v0 + 16), v0 + 512);
      v65 = v64[30];
      __swift_project_boxed_opaque_existential_1(v64 + 26, v64[29]);
      OUTLINED_FUNCTION_20_1();
      if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
      {
        v66 = *(v0 + 816);
        v67 = *(v0 + 808);
        v68 = *(v0 + 800);
        v69 = *(v0 + 792);
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.responseMode.getter();

        static ResponseMode.voiceOnly.getter();
        OUTLINED_FUNCTION_20_1();
        v70 = static ResponseMode.== infix(_:_:)();
        v71 = *(v68 + 8);
        v71(v67, v69);
        if (v70)
        {
          v72 = 1;
        }

        else
        {
          v145 = *(v0 + 816);
          v146 = *(v0 + 808);
          v147 = *(v0 + 792);
          static ResponseMode.voiceForward.getter();
          v72 = static ResponseMode.== infix(_:_:)();
          v148 = OUTLINED_FUNCTION_20_1();
          (v71)(v148);
        }

        v149 = *(*(v0 + 760) + 24);
        v150 = [v149 supportedModes];
        if (![v149 authenticationPolicy] && ((LNActionModes.supportsMultiIntentMode.getter(v150) & v72 & 1) != 0 || LNActionModes.supportsBackgroundOnly.getter(v150)))
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v163 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v163, static Logger.voiceCommands);
          v164 = Logger.logObject.getter();
          v165 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v165))
          {
            v166 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_44_2(v166);
            OUTLINED_FUNCTION_42_8();
            OUTLINED_FUNCTION_81_3(v167, v168, v169, v170);
            OUTLINED_FUNCTION_19_0();
          }

          v171 = *(v0 + 816);
          v172 = *(v0 + 792);
          v173 = *(v0 + 752);

          outlined init with copy of DeviceState(v0 + 512, v0 + 144);
          *(v0 + 200) = 3;
          OUTLINED_FUNCTION_57_0();
          outlined assign with take of LinkRCHFlow.State(v0 + 144, v1 + 48);
          swift_endAccess();
          static ExecuteResponse.ongoing(requireInput:)();
        }

        else
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v151 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v151, static Logger.voiceCommands);
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_44_2(v154);
            OUTLINED_FUNCTION_81_3(&dword_0, v152, v153, "#LinkRCHFlow device is locked and the action requires authentication or open app.");
            OUTLINED_FUNCTION_19_0();
          }

          v155 = *(v0 + 816);
          v156 = *(v0 + 792);
          v157 = *(v0 + 760);
          v158 = *(v0 + 752);

          LinkRCHFlow.requestDeviceUnlock(_:)(v0 + 512);
        }

        v174 = OUTLINED_FUNCTION_20_1();
        (v71)(v174);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v99 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v99, static Logger.voiceCommands);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_38_4(v101))
        {
          v102 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_44_2(v102);
          OUTLINED_FUNCTION_42_8();
          OUTLINED_FUNCTION_81_3(v103, v104, v105, v106);
          OUTLINED_FUNCTION_19_0();
        }

        v107 = *(v0 + 752);

        outlined init with copy of DeviceState(v0 + 512, v0 + 80);
        *(v0 + 136) = 3;
        OUTLINED_FUNCTION_57_0();
        outlined assign with take of LinkRCHFlow.State(v0 + 80, v1 + 48);
        swift_endAccess();
        static ExecuteResponse.ongoing(requireInput:)();
      }

      v44 = (v0 + 512);
      goto LABEL_70;
    case 2:
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_18;
    case 3:
      v48 = *(v0 + 784);
      v49 = *(v0 + 776);
      outlined init with take of AceServiceInvokerAsync((v0 + 16), v0 + 472);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
      UUID.init()();
      v50 = SISchemaUUID.__allocating_init(nsuuid:)(v48);
      *(v0 + 848) = v50;
      static VoiceCmdsInstrumentations.emitWaitForRequestStarted(type:contextId:)(1, v50, v51, v52, v53, v54, v55, v56, v177, v178, v180, log, v184, v185, v187, v189, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
      DurationUtil.init(logMessage:)(0xD000000000000041, 0x80000000002333A0, v49);
      v57 = *(v0 + 504);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 472, *(v0 + 496));
      v58 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 856) = v59;
      *v59 = v60;
      v59[1] = LinkRCHFlow.execute();
      OUTLINED_FUNCTION_77_3();

      return dispatch thunk of AsyncIteratorProtocol.next()();
    case 4:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v31, static Logger.voiceCommands);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v33))
      {
        v34 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v34);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_17();
      }

      v40 = *(v0 + 752);

      static ExecuteResponse.ongoing(requireInput:)();
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_71;
    case 5:
      v73 = *(v0 + 760);
      v74 = *(v0 + 752);
      outlined init with take of AceServiceInvokerAsync((v0 + 32), v0 + 432);
      LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)();

      v44 = (v0 + 432);
      goto LABEL_70;
    case 6:
      v84 = *(v0 + 760);
      v85 = *(v0 + 752);
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 392);
      LinkRCHFlow.createNeedsConfirmationFlow(request:iterator:)();

      v44 = (v0 + 392);
      goto LABEL_70;
    case 7:
      v62 = *(v0 + 760);
      v63 = *(v0 + 752);
      outlined init with take of AceServiceInvokerAsync((v0 + 32), v0 + 352);
      LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)();

      v44 = (v0 + 352);
      goto LABEL_70;
    case 8:
      v97 = *(v0 + 760);
      v98 = *(v0 + 752);
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 312);
      LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)();

      v44 = (v0 + 312);
      goto LABEL_70;
    case 9:
      v42 = *(v0 + 760);
      v43 = *(v0 + 752);
      outlined init with take of AceServiceInvokerAsync((v0 + 24), v0 + 272);
      LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)();

      v44 = (v0 + 272);
LABEL_70:
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      goto LABEL_71;
    case 0xA:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v86 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v86, static Logger.voiceCommands);
      swift_errorRetain();
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = OUTLINED_FUNCTION_48();
        v191 = OUTLINED_FUNCTION_85();
        *v89 = 136315138;
        swift_getErrorValue();
        v90 = *(v0 + 576);
        v91 = *(v0 + 584);
        v92 = *(v0 + 592);
        v93 = Error.localizedDescription.getter();
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v191);

        *(v89 + 4) = v95;
        _os_log_impl(&dword_0, v87, v88, "Exiting due to previously handled error %s", v89, 0xCu);
        OUTLINED_FUNCTION_28_11();
        OUTLINED_FUNCTION_15_0();
      }

      v96 = *(v0 + 752);
      static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(v11);
      static ExecuteResponse.complete()();

      goto LABEL_71;
    case 0xB:
      v26 = *(v0 + 760);
      v27 = *(v0 + 752);
      static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(*(v0 + 16));
      v28 = *(v26 + 32);
      OUTLINED_FUNCTION_18_4();
      *(v0 + 720) = (*(v29 + 216))(v11);
      OUTLINED_FUNCTION_26_1();
      v30 = swift_allocObject();
      *(v30 + 16) = v26;
      *(v30 + 24) = v11;

      swift_errorRetain();
      type metadata accessor for AnyFlow();
      static ExecuteResponse.complete<A>(next:childCompletion:)();

      goto LABEL_71;
    case 0xC:
      v41 = *(v0 + 752);
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      goto LABEL_35;
    case 0xD:
      outlined destroy of LinkRCHFlow.State(v0 + 16);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v75 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v75, static Logger.voiceCommands);
      v46 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v76))
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    case 0xE:
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      v24 = *(v0 + 32);
      if (v10 | v11 | v20 | v21 | v23 | v22 | v24)
      {
        if (v11 == 1 && !(v20 | v10 | v21 | v23 | v22 | v24))
        {
LABEL_18:
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v45 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v45, static Logger.voiceCommands);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_50(v47))
          {
LABEL_33:
            v77 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_45(v77);
            OUTLINED_FUNCTION_9_8();
            _os_log_impl(v78, v79, v80, v81, v82, 2u);
            OUTLINED_FUNCTION_17();
          }

LABEL_34:
          v83 = *(v0 + 752);
        }

        else
        {
          v25 = *(v0 + 752);
        }

LABEL_35:
        static ExecuteResponse.complete()();
      }

      else
      {
        v108 = *(v0 + 832);
        v109 = *(v0 + 768);
        v110 = [*(*(v0 + 760) + 24) supportedModes];
        OUTLINED_FUNCTION_24_13();
        lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(v111, v112, v113);
        SiriEnvironmentLocating<>.siriEnvironment.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.responseMode.getter();

        v186 = v110;
        v190 = ResponseMode.toLinkInteractionMode(supportedModes:)(v110);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v114 = *(v0 + 832);
        v115 = *(v0 + 824);
        v116 = *(v0 + 800);
        v117 = *(v0 + 792);
        v118 = *(v0 + 760);
        v119 = type metadata accessor for Logger();
        __swift_project_value_buffer(v119, static Logger.voiceCommands);
        (*(v116 + 16))(v115, v114, v117);
        swift_retain_n();
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.debug.getter();
        v122 = OUTLINED_FUNCTION_50(v121);
        v123 = *(v0 + 824);
        v124 = *(v0 + 800);
        v188 = *(v0 + 792);
        v125 = *(v0 + 760);
        if (v122)
        {
          v179 = *(v0 + 824);
          v126 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v126 = 136316162;
          loga = v120;
          v127 = *(v125 + 16);
          v128 = [v127 identifier];
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v121;
          v131 = v130;

          v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v191);

          *(v126 + 4) = v132;
          *(v126 + 12) = 2080;
          v133 = LNActionModes.asString.getter(v186);
          v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v191);

          *(v126 + 14) = v135;
          *(v126 + 22) = 1024;
          LODWORD(v131) = [v127 openAppWhenRun];

          *(v126 + 24) = v131;

          *(v126 + 28) = 2080;
          lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, 255, &type metadata accessor for ResponseMode);
          dispatch thunk of CustomStringConvertible.description.getter();
          v136 = *(v124 + 8);
          v136(v179, v188);
          v137 = OUTLINED_FUNCTION_20_1();
          v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v139);

          *(v126 + 30) = v140;
          *(v126 + 38) = 2080;
          v141 = v190;
          v142 = LNInteractionMode.asString.getter(v190);
          v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v191);

          *(v126 + 40) = v144;
          _os_log_impl(&dword_0, loga, v181, "#LinkRCHFlow execute .initializing - action %s\nsupportedModes: %s\nopenAppWhenRun=%{BOOL}d\nresponseMode=%s\ninteractionMode=%s", v126, 0x30u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
          v159 = *(v0 + 760);

          v136 = *(v124 + 8);
          v136(v123, v188);
          v141 = v190;
        }

        v160 = *(v0 + 832);
        v161 = *(v0 + 792);
        v162 = *(v0 + 752);
        *(v0 + 208) = v141;
        *(v0 + 264) = 0;
        OUTLINED_FUNCTION_57_0();
        outlined assign with take of LinkRCHFlow.State(v0 + 208, v1 + 48);
        swift_endAccess();
        static ExecuteResponse.ongoing(requireInput:)();
        v136(v160, v161);
      }

LABEL_71:
      OUTLINED_FUNCTION_8_23();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_77_3();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v12 = *(v0 + 760);
      static InstrumentationUtils.emitActionExecutionStartedInstrumentation()(v2, v3, v4, v5, v6, v7, v8, v9, v177, v178, v180, log, v184, v185, v187, v189, v191, v192, v193, v194, v195, v196);
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 840) = v13;
      *v13 = v14;
      v13[1] = LinkRCHFlow.execute();
      v15 = *(v0 + 760);
      OUTLINED_FUNCTION_77_3();

      return LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)(v16, v17);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 840);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 752);
  static ExecuteResponse.ongoing(requireInput:)();
  OUTLINED_FUNCTION_8_23();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 856);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 864) = v0;

  if (v0)
  {
    v7 = LinkRCHFlow.execute();
  }

  else
  {
    v7 = LinkRCHFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 888);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  outlined consume of LinkConnectionEvent?(*(v0 + 872), *(v0 + 880), *(v0 + 73));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  OUTLINED_FUNCTION_8_23();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy18SiriLinkFlowPlugin0B15ConnectionEventOs5Error_pGMd, &_sScsy18SiriLinkFlowPlugin0B15ConnectionEventOs5Error_pGMR);
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(LinkRCHFlow.initializeLinkConnection(connection:interactionMode:), 0, 0);
}

uint64_t LinkRCHFlow.initializeLinkConnection(connection:interactionMode:)()
{
  v47 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);
  outlined init with copy of DeviceState(v2, (v0 + 10));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [*(v6 + 16) identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v46);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    outlined init with copy of DeviceState((v0 + 10), (v0 + 15));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0B10Connection_pMd, &_s18SiriLinkFlowPlugin0B10Connection_pMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v46);

    *(v7 + 14) = v16;
    OUTLINED_FUNCTION_42_8();
    _os_log_impl(v17, v18, v19, v20, v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v21 = v0[32];
  v22 = v0[24];
  v23 = [objc_allocWithZone(LNActionExecutorOptions) init];
  v0[33] = v23;
  outlined bridged method (mbnn) of @objc LNActionExecutorOptions.clientLabel.setter(1769105747, 0xE400000000000000, v23);
  [v23 setInteractionMode:v22];
  [v23 setSource:3];
  static InstrumentationUtils.createFlowUUID()(v21);
  v24 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v24);
  v26 = v0[32];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0[32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v27 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(*(v24 - 8) + 8))(v26, v24);
    v27 = String._bridgeToObjectiveC()();
  }

  v29 = v0[30];
  v28 = v0[31];
  v30 = v0[29];
  v31 = v0[25];
  v32 = OUTLINED_FUNCTION_73_4();
  [v32 v33];

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnvironment, LNEnvironment_ptr);
  v34 = *(v31 + 240);
  __swift_project_boxed_opaque_existential_1((v31 + 208), *(v31 + 232));
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v35 = *(v29 + 8);
  v36 = OUTLINED_FUNCTION_20_1();
  v37(v36);
  v38 = LNEnvironment.__allocating_init(localeIdentifier:)();
  v39 = OUTLINED_FUNCTION_73_4();
  [v39 v40];

  v41 = [*(v31 + 24) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  OUTLINED_FUNCTION_71();
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[34] = v42;

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[35] = v43;
  *v43 = v44;
  v43[1] = LinkRCHFlow.initializeLinkConnection(connection:interactionMode:);

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v31 + 208, v31 + 128, v42);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v12 = *(v0 + 248);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 8))(*(v6 + 16), v2, v8, v9);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  *(v0 + 48) = lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<LinkConnectionEvent, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs8IteratorVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  AsyncThrowingStream.makeAsyncIterator()();

  (*(v4 + 8))(v3, v5);
  *(v0 + 72) = 1;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of LinkRCHFlow.State(v0 + 16, v6 + 48);
  swift_endAccess();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t LinkRCHFlow.requestDeviceUnlock(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  outlined init with copy of DeviceState(v1 + 208, &v22);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = type metadata accessor for AppNameResolver();
  v12 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v13 = swift_allocObject();
  *(v13 + 136) = v11;
  *(v13 + 144) = &protocol witness table for AppNameResolver;
  *(v13 + 112) = v12;
  *(v13 + 56) = v6;
  outlined init with take of AceServiceInvokerAsync(&v22, v13 + 16);
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 80) = v7;
  *(v13 + 88) = v8;
  *(v13 + 96) = v9;
  *(v13 + 104) = v10;
  outlined init with copy of DeviceState(v2 + 208, &v22);
  type metadata accessor for ShortcutsUnlockDeviceStrategy();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  outlined init with take of AceServiceInvokerAsync(&v22, v14 + 24);
  v15 = *(v2 + 288);
  v16 = *(v2 + 296);

  v17 = v15(v14);
  outlined init with copy of DeviceState(a1, &v22);
  v25 = 2;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v22, v2 + 48);
  swift_endAccess();
  outlined init with copy of SpeakableString?(v2 + 168, &v22, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  v18 = v23;
  if (v23)
  {
    v19 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    (*(v19 + 16))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    outlined destroy of SpeakableString?(&v22, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  }

  *&v22 = v17;
  type metadata accessor for GuardFlow();
  *&v22 = Flow.eraseToAnyValueFlow()();
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #2 in implicit closure #1 in LinkRCHFlow.requestDeviceUnlock(_:);
  *(v20 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  static ExecuteResponse.replan<A>(next:childCompletion:)();
}

uint64_t LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 33) = a4;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7, v8, v9);
}

uint64_t LinkRCHFlow.responseFrom(event:iterator:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *(v2 + 128);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = LinkRCHFlow.responseFrom(event:iterator:);
  }

  else
  {
    v8 = *(v3 + 104);

    v7 = LinkRCHFlow.responseFrom(event:iterator:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v22 = v0;
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_85();
    *v7 = 136315138;
    v0[7] = v3;
    v0[8] = v2;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "#LinkRCHFlow retrieved session id: %s", v7, 0xCu);
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v11 = v0[15];
  v12 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v16 = *(v12 + 32);
  OUTLINED_FUNCTION_18_4();
  (*(v17 + 200))();
  OUTLINED_FUNCTION_1_18();

  OUTLINED_FUNCTION_26_1();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  outlined copy of LinkConnectionEvent(v14, v13, 7);

  OUTLINED_FUNCTION_22_13();
  static ExecuteResponse.ongoing(next:childCompletion:)();

  OUTLINED_FUNCTION_6_0();

  return v19();
}

{
  v1 = v0[13];
  v2 = v0[14];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_38_4(v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v7);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_81_3(v8, v9, v10, v11);
    OUTLINED_FUNCTION_19_0();
  }

  v12 = v0[15];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];
  v17 = *(v13 + 32);
  OUTLINED_FUNCTION_18_4();
  v19 = *(v18 + 200);
  OUTLINED_FUNCTION_62_5();
  v20();
  OUTLINED_FUNCTION_88_0();

  OUTLINED_FUNCTION_26_1();
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = v15;
  outlined copy of LinkConnectionEvent(v15, v14, 7);

  OUTLINED_FUNCTION_22_13();
  static ExecuteResponse.ongoing(next:childCompletion:)();

  OUTLINED_FUNCTION_6_0();

  return v22();
}

uint64_t closure #3 in LinkRCHFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6[0] = a3;
  v7 = a4;
  OUTLINED_FUNCTION_57_0();
  swift_errorRetain();
  outlined assign with take of LinkRCHFlow.State(v6, a2 + 48);
  return swift_endAccess();
}

void LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v67 = v1;
  v68 = v3;
  v62 = v4;
  v64 = v5;
  OUTLINED_FUNCTION_88_0();
  v60 = type metadata accessor for OSSignpostID();
  v6 = OUTLINED_FUNCTION_7_1(v60);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for OSSignposter();
  v15 = OUTLINED_FUNCTION_7_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v15);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v21;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_44_8();
  v22 = v1;
  v23 = [v1 parameterName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  static InstrumentationUtils.emitActionParameterDisambiguationStartedInstrumentation(parameterName:)(v24, v26, v27, v28, v29, v30, v31, v32, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v33 = __swift_project_value_buffer(v14, static Signposter.voiceCommands);
  v65 = v17;
  v66 = v14;
  v59 = *(v17 + 16);
  v59(v0, v33, v14);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v34 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5())
  {
    v35 = v0;
    v36 = OUTLINED_FUNCTION_52();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v34, v26, v37, "LinkRCHFlowNeedsDisambiguation", "", v36, 2u);
    v0 = v35;
    OUTLINED_FUNCTION_15_0();
  }

  v57 = v0;

  v38 = v60;
  (*(v8 + 16))(v2, v13, v60);
  v39 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v39);
  v58 = OUTLINED_FUNCTION_36_7();
  (*(v8 + 8))(v13, v38);
  v40 = v67;
  v41 = v67[4];
  v42 = v67[2];
  OUTLINED_FUNCTION_18_4();
  v44 = *(v43 + 176);
  v56 = v22;
  v62 = v44();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(v71, v40 + 48);
  swift_endAccess();
  v45 = v63;
  v46 = v0;
  v47 = v66;
  v59(v63, v46, v66);
  outlined init with copy of DeviceState(v41, v71);
  v48 = v65;
  v49 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  OUTLINED_FUNCTION_39_13();
  v50 = OUTLINED_FUNCTION_79_2();
  v51 = OUTLINED_FUNCTION_16_22(v50);
  v52(v51, v45, v47);
  *(v41 + v8 + 8) = v58;
  *(v41 + v26) = v40;
  outlined init with take of AceServiceInvokerAsync(v71, &v13[v41]);
  v53 = v56;
  *(v41 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8)) = v56;

  v54 = v53;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v48 + 8))(v57, v47);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsConfirmationFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v71 = v1;
  v72 = v3;
  v69 = v4;
  OUTLINED_FUNCTION_88_0();
  v5 = type metadata accessor for OSSignpostID();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44_8();
  v12 = type metadata accessor for OSSignposter();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_20(v18, v19, v20, v21, v22, v23, v24, v25, v62);
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  v73 = v1;
  v29 = [v1 parameterName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  static InstrumentationUtils.emitActionParameterConfirmationStartedInstrumentation(parameterName:)(v30, v32, v33, v34, v35, v36, v37, v38, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77[0]);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v39 = __swift_project_value_buffer(v12, static Signposter.voiceCommands);
  v70 = v15;
  v66 = *(v15 + 16);
  v66(v28, v39, v12);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v40 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5())
  {
    v41 = OUTLINED_FUNCTION_52();
    v65 = v2;
    v42 = OUTLINED_FUNCTION_67_5(v41);
    OUTLINED_FUNCTION_46_11(&dword_0, v43, v44, v42, "LinkRCHFlowNeedsConfirmation", "");
    OUTLINED_FUNCTION_15_0();
  }

  v63 = v28;

  v45 = OUTLINED_FUNCTION_29_13(v8);
  v46(v45);
  v47 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v47);
  v64 = OUTLINED_FUNCTION_36_7();
  v49 = *(v8 + 8);
  v48 = (v8 + 8);
  v49(v0, v5);
  v50 = v71;
  v51 = v71[3];
  v52 = v71[4];
  v53 = v71[2];
  OUTLINED_FUNCTION_18_4();
  v65 = (*(v54 + 160))();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(v77, (v50 + 6));
  swift_endAccess();
  v55 = v68;
  v66(v68, v28, v12);
  outlined init with copy of DeviceState(v52, v77);
  OUTLINED_FUNCTION_6_24(*(v70 + 80));
  v56 = OUTLINED_FUNCTION_79_2();
  v57 = OUTLINED_FUNCTION_16_22(v56);
  v58(v57, v55, v12);
  *&v48[v52] = v64;
  *(v52 + v32) = v50;
  OUTLINED_FUNCTION_40_9();

  v59 = v48;
  OUTLINED_FUNCTION_73_4();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v60 = OUTLINED_FUNCTION_76_5();
  v61(v60);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v89 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for OSSignpostID();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v83 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_44_8();
  v91 = type metadata accessor for OSSignposter();
  v14 = OUTLINED_FUNCTION_7_1(v91);
  v87 = v15;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v84 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v81 - v19;
  v20 = *(v2 + 24);
  v92 = v5;
  LNActionMetadata.firstParameterMetadata(from:)(v5);
  if (!v21)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v38, static Logger.voiceCommands);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v40))
    {
      v41 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v41);
      OUTLINED_FUNCTION_25(&dword_0, v42, v43, "#LinkRCHFlow Could not find matching parameter data for LNNeedsValueRequest");
      OUTLINED_FUNCTION_15_0();
    }

    lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v44 = OUTLINED_FUNCTION_16_6();
    *v45 = 0xD00000000000001DLL;
    v45[1] = 0x8000000000233430;
    *&v96[0] = v44;
    v97 = 11;
    OUTLINED_FUNCTION_15_20();
    outlined assign with take of LinkRCHFlow.State(v96, v2 + 48);
    swift_endAccess();
    static ExecuteResponse.complete()();
    goto LABEL_23;
  }

  v22 = v21;
  v85 = v2;
  v86 = v7;
  v23 = [v21 valueType];
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    v25 = swift_dynamicCastObjCClass();

    if (v25)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v28))
      {
        v29 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v29);
        OUTLINED_FUNCTION_25(&dword_0, v30, v31, "#LinkRCHFlow LNNeedsValueRequest has parameter value type LNArrayValueType, punching out to Shortcuts jr");
        OUTLINED_FUNCTION_17();
      }

      v32 = [objc_opt_self() wfSiriExecutionRequiresShortcutsJrError];
      *&v96[0] = v32;
      v97 = 10;
      v33 = v85;
      OUTLINED_FUNCTION_15_20();
      v34 = v32;
      outlined assign with take of LinkRCHFlow.State(v96, v33 + 48);
      swift_endAccess();
      static ExecuteResponse.complete()();

LABEL_23:
      OUTLINED_FUNCTION_42();
      return;
    }
  }

  v88 = v22;
  v35 = [v88 valueType];
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastObjCClass())
  {

    v46 = [v92 parameterName];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(v47, v49, v50, v51, v52, v53, v54, v55, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, *&v96[0]);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_4_4();
    }

    v56 = v91;
    v57 = __swift_project_value_buffer(v91, static Signposter.voiceCommands);
    v82 = *(v87 + 16);
    (v82)(v90, v57, v56);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v58 = OSSignposter.logHandle.getter();
    v59 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v60 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v60);
      v61 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v58, v59, v61, "LinkRCHFlowNeedsValue", "", v56, 2u);
      OUTLINED_FUNCTION_17();
    }

    v62 = v83;
    v63 = OUTLINED_FUNCTION_29_13(v83);
    v64(v63);
    v65 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_66(v65);
    v81 = OUTLINED_FUNCTION_36_7();
    (*(v62 + 8))(v0, v8);
    v66 = v85;
    v67 = *(v85 + 32);
    v68 = *(v85 + 16);
    OUTLINED_FUNCTION_18_4();
    v83 = (*(v69 + 144))();
    v70 = v89;
    outlined init with copy of DeviceState(v89, v96);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_15_20();
    outlined assign with take of LinkRCHFlow.State(v96, v66 + 48);
    swift_endAccess();
    v71 = v84;
    (v82)(v84, v90, v91);
    outlined init with copy of DeviceState(v70, v96);
    v72 = v87;
    v73 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v74 = (v17 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v91;
    (*(v72 + 32))(v77 + v73, v71, v91);
    *(v77 + v74) = v81;
    *(v77 + v75) = v66;
    v79 = v92;
    *(v77 + v76) = v92;
    outlined init with take of AceServiceInvokerAsync(v96, v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));

    v80 = v79;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v72 + 8))(v90, v78);
    goto LABEL_23;
  }

  LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)();
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v1;
  v6 = OUTLINED_FUNCTION_78_2(v4, v5);
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_44_8();
  v13 = type metadata accessor for OSSignposter();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_20(v17, v18, v19, v20, v21, v22, v23, v24, v57);
  v26 = __chkstk_darwin(v25);
  v28 = &v57 - v27;
  static InstrumentationUtils.emitActionConfirmationStartedInstrumentation()(v26, v29, v30, v31, v32, v33, v34, v35, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  __swift_project_value_buffer(v13, static Signposter.voiceCommands);
  v36 = OUTLINED_FUNCTION_58_5();
  v59 = v37;
  (v37)(v36);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v65 = v28;
  v38 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5())
  {
    v39 = OUTLINED_FUNCTION_52();
    v58 = v6;
    v40 = OUTLINED_FUNCTION_67_5(v39);
    OUTLINED_FUNCTION_46_11(&dword_0, v41, v42, v40, "LinkRCHFlowNeedsActionConfirmation", "");
    v6 = v58;
    OUTLINED_FUNCTION_15_0();
  }

  v43 = OUTLINED_FUNCTION_29_13(v9);
  v44(v43);
  v45 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v45);
  v57 = OUTLINED_FUNCTION_36_7();
  v47 = *(v9 + 8);
  v46 = (v9 + 8);
  v47(v0, v6);
  v48 = v3[3];
  v49 = v3[4];
  v50 = v3[2];
  OUTLINED_FUNCTION_18_4();
  v58 = (*(v51 + 168))();
  OUTLINED_FUNCTION_80_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(&v70, (v3 + 6));
  swift_endAccess();
  v52 = v61;
  v53 = v63;
  v59(v61, v65, v63);
  OUTLINED_FUNCTION_80_3();
  v54 = v62;
  OUTLINED_FUNCTION_6_24(*(v62 + 80));
  v55 = OUTLINED_FUNCTION_79_2();
  (*(v54 + 32))(&v38[v55], v52, v53);
  *&v46[v55] = v57;
  *(v55 + v2) = v3;
  OUTLINED_FUNCTION_40_9();

  v56 = v46;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v54 + 8))(v65, v53);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v62 = v1;
  v5 = OUTLINED_FUNCTION_78_2(v3, v4);
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44_8();
  v12 = type metadata accessor for OSSignposter();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_20(v18, v19, v20, v21, v22, v23, v24, v25, v58);
  __chkstk_darwin(v26);
  v28 = &v58 - v27;
  static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(0, 0, v29, v30, v31, v32, v33, v34, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *&v73[0]);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  __swift_project_value_buffer(v12, static Signposter.voiceCommands);
  v35 = OUTLINED_FUNCTION_58_5();
  v61 = v36;
  (v36)(v35);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v68 = v28;
  v37 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5())
  {
    v38 = OUTLINED_FUNCTION_52();
    v39 = OUTLINED_FUNCTION_67_5(v38);
    OUTLINED_FUNCTION_46_11(&dword_0, v40, v41, v39, "LinkRCHFlowNeedsChoice", "");
    OUTLINED_FUNCTION_15_0();
  }

  v42 = OUTLINED_FUNCTION_29_13(v8);
  v43(v42);
  v44 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v44);
  v59 = OUTLINED_FUNCTION_36_7();
  (*(v8 + 8))(v0, v5);
  v45 = v62;
  v46 = *(v62 + 32);
  v47 = *(v62 + 16);
  OUTLINED_FUNCTION_18_4();
  v60 = (*(v48 + 184))();
  OUTLINED_FUNCTION_80_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(v73, v45 + 48);
  swift_endAccess();
  v49 = v64;
  v50 = v66;
  v61(v64, v68, v66);
  OUTLINED_FUNCTION_80_3();
  v51 = v65;
  v52 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  OUTLINED_FUNCTION_39_13();
  v53 = swift_allocObject();
  v54 = OUTLINED_FUNCTION_16_22(v53);
  v55(v54, v49, v50);
  *(v46 + v8 + 8) = v59;
  *(v46 + v2) = v45;
  v56 = v69;
  *(v46 + v15) = v69;
  outlined init with take of AceServiceInvokerAsync(v73, v46 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));

  v57 = v56;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v51 + 8))(v68, v50);
  OUTLINED_FUNCTION_42();
}

uint64_t LinkRCHFlow.createContinueInAppFlow(request:iterator:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  OUTLINED_FUNCTION_18_4();
  (*(v9 + 192))();
  outlined init with copy of DeviceState(a2, v13);
  v14 = 4;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of LinkRCHFlow.State(v13, v3 + 48);
  swift_endAccess();
  outlined init with copy of DeviceState(a2, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  outlined init with take of AceServiceInvokerAsync(v13, v10 + 24);
  *(v10 + 64) = a1;

  v11 = a1;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LinkRCHFlow.responseFrom(event:iterator:), 0, 0);
}

uint64_t closure #1 in LinkRCHFlow.responseFrom(event:iterator:)()
{
  v1 = *(v0[3] + 40);
  if (v1)
  {
    v2 = *(*v1 + 192);
    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = closure #1 in LinkRCHFlow.responseFrom(event:iterator:);

    return v8();
  }

  else
  {
    v6 = v0[2];
    *v6 = 0;
    v6[1] = 0;
    OUTLINED_FUNCTION_6_0();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *(v1 + 32);
  v10 = *v0;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_6_0();
  return v1();
}

uint64_t closure #2 in LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = 13;
  swift_beginAccess();
  v4 = a2;
  outlined assign with take of LinkRCHFlow.State(&v6, a1 + 48);
  return swift_endAccess();
}

uint64_t LinkRCHFlow.runAppProtectionCheckFlow(completionHandler:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 14;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v14, v3 + 48);
  swift_endAccess();
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#LinkRCHFlow runAppProtectionCheckFlow - resolving...", v11, 2u);
  }

  (*(**(v4 + 32) + 208))();
  outlined init with copy of DeviceState(a3, &v14);
  v12 = swift_allocObject();
  v12[2] = v4;
  outlined init with take of AceServiceInvokerAsync(&v14, (v12 + 3));
  v12[8] = a1;
  v12[9] = a2;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

void LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v74 = v1;
  v75 = v2;
  v72 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_88_0();
  v69 = type metadata accessor for OSSignpostID();
  v6 = OUTLINED_FUNCTION_7_1(v69);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  v68 = v11 - v12;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_44_8();
  v14 = type metadata accessor for OSSignposter();
  v15 = OUTLINED_FUNCTION_7_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_20(v20, v21, v22, v23, v24, v25, v26, v27, v65);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v76 = v1;
  v31 = [v1 parameterName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(v32, v34, v35, v36, v37, v38, v39, v40, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80[0]);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v41 = __swift_project_value_buffer(v14, static Signposter.voiceCommands);
  v73 = v17;
  v67 = *(v17 + 16);
  v67(v30, v41, v14);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v42 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5())
  {
    v43 = OUTLINED_FUNCTION_52();
    v65 = v5;
    v44 = v30;
    v45 = v14;
    v46 = v43;
    *v43 = 0;
    v47 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v42, v34, v47, "LinkRCHFlowNeedsValue", "", v46, 2u);
    v14 = v45;
    v30 = v44;
    OUTLINED_FUNCTION_15_0();
  }

  v66 = v30;

  v49 = v68;
  v48 = v69;
  (*(v8 + 16))(v68, v0, v69);
  v50 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v50);
  v68 = OSSignpostIntervalState.init(id:isOpen:)();
  v52 = *(v8 + 8);
  v51 = (v8 + 8);
  v52(v0, v48);
  v53 = v74;
  v54 = v74[3];
  v55 = v74[4];
  v56 = v74[2];
  OUTLINED_FUNCTION_18_4();
  v69 = (*(v57 + 152))();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(v80, (v53 + 6));
  swift_endAccess();
  v58 = v71;
  v67(v71, v30, v14);
  outlined init with copy of DeviceState(v55, v80);
  OUTLINED_FUNCTION_6_24(*(v73 + 80));
  v59 = OUTLINED_FUNCTION_79_2();
  v60 = OUTLINED_FUNCTION_16_22(v59);
  v61(v60, v58, v14);
  *&v51[v55] = v68;
  *(v55 + v49) = v53;
  OUTLINED_FUNCTION_40_9();

  v62 = v51;
  OUTLINED_FUNCTION_73_4();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v63 = OUTLINED_FUNCTION_76_5();
  v64(v63);
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v99 = a6;
  v100 = a5;
  v108 = a4;
  v102 = a3;
  v101 = a2;
  v98 = type metadata accessor for OSSignpostError();
  v97 = *(v98 - 8);
  v7 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v107 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v110 = &v94 - v19;
  __chkstk_darwin(v18);
  v21 = &v94 - v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.voiceCommands);
  v24 = *(v14 + 16);
  v24(v21, a1, v13);
  v95 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v111 = v14;
  v106 = a1;
  v103 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v112[0] = v29;
    *v28 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNValue> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v24;
    v33 = v32;
    v109 = *(v111 + 8);
    v109(v21, v13);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, v112);
    v24 = v31;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "PromptForConfirmationFlow.createNeedsValueFlow received %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v14 = v111;
    v12 = v103;

    a1 = v106;
  }

  else
  {

    v109 = *(v14 + 8);
    v109(v21, v13);
  }

  v35 = v110;
  v24(v110, a1, v13);
  v36 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v101) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v94 = v24;

    v37 = v96;
    checkForErrorAndConsumeState(state:)();

    v38 = v97;
    v39 = v98;
    if ((*(v97 + 88))(v37, v98) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v40 = 0;
      v41 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v37, v39);
      v42 = "exitValue: %s";
      v41 = 2;
      v40 = 1;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v112[0] = v44;
    *v43 = v41;
    *(v43 + 1) = v40;
    *(v43 + 2) = 2080;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNValue> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
    v45 = v110;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = v111;
    v109(v45, v13);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v112);
    v14 = v49;

    *(v43 + 4) = v50;
    v51 = v103;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v36, v101, v52, "LinkRCHFlowNeedsValue", v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);

    (*(v104 + 8))(v51, v105);
    a1 = v106;
    v24 = v94;
  }

  else
  {

    (*(v104 + 8))(v12, v105);
    v109(v35, v13);
  }

  v53 = v107;
  v24(v107, a1, v13);
  v54 = (*(v14 + 88))(v53, v13);
  if (v54 == enum case for PromptResult.answered<A>(_:))
  {
    v62 = (*(v14 + 96))(v53, v13);
    v63 = *v53;
    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v62, v64, v65, v66, v67, v68, v69, v70, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    [v100 respondWithValue:v63];

    outlined init with copy of DeviceState(v99, v112);
    v71 = 3;
LABEL_14:
    v113 = v71;
    v72 = v108;
    swift_beginAccess();
LABEL_15:
    outlined assign with take of LinkRCHFlow.State(v112, v72 + 48);
    return swift_endAccess();
  }

  if (v54 == enum case for PromptResult.error<A>(_:))
  {
    (*(v14 + 96))(v53, v13);
    v74 = *v53;
    if (*(v53 + 8) == 1)
    {
      v112[0] = *v53;
      v71 = 10;
    }

    else
    {
      v112[0] = *v53;
      v71 = 11;
    }

    goto LABEL_14;
  }

  if (v54 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v55, v56, v57, v58, v59, v60, v61, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    v112[0] = 2;
    memset(&v112[1], 0, 48);
    v71 = 14;
    goto LABEL_14;
  }

  if (v54 == enum case for PromptResult.unanswered<A>(_:))
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "PromptForValueFlow received an .unanswered result, reprompting...", v77, 2u);
    }

    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v78, v79, v80, v81, v82, v83, v84, v85, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    v86 = v100;
    v112[0] = v100;
    v112[1] = 0;
    outlined init with copy of DeviceState(v99, &v112[2]);
    v113 = 7;
    v72 = v108;
    swift_beginAccess();
    v87 = v86;
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
  v88 = swift_allocError();
  *v89 = 0xD000000000000022;
  v89[1] = 0x80000000002335B0;
  v112[0] = v88;
  v113 = 11;
  v90 = v108;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(v112, v90 + 48);
  swift_endAccess();
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_0, v91, v92, "Unexpected result", v93, 2u);
  }

  return (v109)(v53, v13);
}

void closure #1 in LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, char a22)
{
  OUTLINED_FUNCTION_40_0();
  v155 = v22;
  v160 = v23;
  v161 = v24;
  v26 = v25;
  v168 = v27;
  v163 = v28;
  v162 = v29;
  v172 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  OUTLINED_FUNCTION_50_0();
  v151 = v33 - v34;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_14(&v147 - v36);
  v158 = type metadata accessor for SimpleConfirmationResponseProvider();
  v37 = OUTLINED_FUNCTION_7_1(v158);
  v157 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v42 - v41);
  v154 = type metadata accessor for OSSignpostError();
  v43 = OUTLINED_FUNCTION_7_1(v154);
  v45 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v49 - v48);
  v50 = type metadata accessor for OSSignpostID();
  v51 = OUTLINED_FUNCTION_7_1(v50);
  v165 = v52;
  v166 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_3();
  v57 = v56 - v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v59 = OUTLINED_FUNCTION_7_1(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_50_0();
  v167 = (v64 - v65);
  OUTLINED_FUNCTION_25_4();
  v67 = __chkstk_darwin(v66);
  v69 = &v147 - v68;
  __chkstk_darwin(v67);
  v71 = &v147 - v70;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v153 = v45;
  v170 = v69;
  v72 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v72, static Logger.voiceCommands);
  v171 = v61[2];
  v171(v71, v172, v58);
  v150 = v69;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v75 = os_log_type_enabled(v73, v74);
  v164 = v57;
  if (v75)
  {
    v76 = OUTLINED_FUNCTION_48();
    v148 = OUTLINED_FUNCTION_85();
    v173 = v148;
    *v76 = 136315138;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v26;
    v79 = v78;
    v80 = OUTLINED_FUNCTION_60_4();
    v81(v80);
    v82 = OUTLINED_FUNCTION_75_4();
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v79, v83);

    *(v76 + 4) = v84;
    _os_log_impl(&dword_0, v73, v74, v160, v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    OUTLINED_FUNCTION_15_0();
    v57 = v164;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    v77 = v26;

    v85 = OUTLINED_FUNCTION_60_4();
    v86(v85);
  }

  v160 = a21;
  v87 = v170;
  v171(v170, v172, v58);
  v88 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v89 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v162 = v77;

    v90 = v152;
    checkForErrorAndConsumeState(state:)();

    v91 = v153;
    v92 = v154;
    v93 = (*(v153 + 88))(v90, v154);
    v149 = v61 + 2;
    if (v93 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v99 = 0;
      v98 = 0;
      v97 = "[Error] Interval already ended";
    }

    else
    {
      (*(v91 + 8))(v90, v92);
      v97 = "exitValue: %s";
      v98 = 2;
      v99 = 1;
    }

    v100 = v170;
    v101 = OUTLINED_FUNCTION_48();
    v173 = OUTLINED_FUNCTION_85();
    *v101 = v98;
    *(v101 + 1) = v99;
    *(v101 + 2) = 2080;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    v169(v100, v58);
    v104 = OUTLINED_FUNCTION_75_4();
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, v105);

    *(v101 + 4) = v106;
    v107 = v164;
    v108 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v88, v89, v108, v155, v97, v101, 0xCu);
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_15_0();

    OUTLINED_FUNCTION_71_4();
    v109(v107);
    v96 = v162;
    v95 = v167;
  }

  else
  {

    OUTLINED_FUNCTION_71_4();
    v94(v57);
    v169(v87, v58);
    v95 = v167;
    v96 = v77;
  }

  outlined init with copy of DeviceState(v96, &v173);
  v175 = 3;
  v110 = v168;
  OUTLINED_FUNCTION_15_20();
  outlined assign with take of LinkRCHFlow.State(&v173, v110 + 48);
  swift_endAccess();
  v171(v95, v172, v58);
  v111 = v61[11];
  v112 = OUTLINED_FUNCTION_72_4();
  v114 = v113(v112);
  if (v114 != enum case for PromptResult.answered<A>(_:))
  {
    if (v114 == enum case for PromptResult.error<A>(_:))
    {
      v131 = v61[12];
      v132 = OUTLINED_FUNCTION_72_4();
      v133(v132);
      v134 = *v95;
      if (v95[8] == 1)
      {
        v173 = *v95;
        v135 = 10;
      }

      else
      {
        v173 = *v95;
        v135 = 11;
      }
    }

    else
    {
      if (v114 != enum case for PromptResult.cancelled<A>(_:))
      {
        if (v114 != enum case for PromptResult.unanswered<A>(_:))
        {
          [v161 respondWithConfirmation:0];
          v146 = OUTLINED_FUNCTION_72_4();
          (v169)(v146);
          goto LABEL_26;
        }

        (v160)(0);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v140))
        {
          v141 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v141);
          OUTLINED_FUNCTION_25(&dword_0, v142, v143, "PromptForConfirmationFlow received an .unanswered result, reprompting...");
          OUTLINED_FUNCTION_17();
        }

        v144 = v161;
        v173 = v161;
        outlined init with copy of DeviceState(v96, &v174);
        v175 = a22;
        OUTLINED_FUNCTION_15_20();
        v145 = v144;
        goto LABEL_25;
      }

      static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v115, v116, v117, v118, v119, v120, v121, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
      OUTLINED_FUNCTION_49_6();
    }

    v175 = v135;
    OUTLINED_FUNCTION_15_20();
LABEL_25:
    outlined assign with take of LinkRCHFlow.State(&v173, v110 + 48);
    swift_endAccess();
    goto LABEL_26;
  }

  v122 = v61[12];
  v123 = OUTLINED_FUNCTION_72_4();
  v124(v123);
  v125 = v157;
  v126 = v156;
  v127 = v158;
  (*(v157 + 32))(v156, v95, v158);
  v128 = v159;
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v129 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v128, 1, v129) != 1)
  {
    v136 = v151;
    outlined init with copy of SpeakableString?(v128, v151, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v137 = *(v129 - 8);
    v138 = (*(v137 + 88))(v136, v129);
    if (v138 == enum case for ConfirmationResponse.confirmed(_:))
    {
      v130 = 1;
      goto LABEL_20;
    }

    if (v138 != enum case for ConfirmationResponse.rejected(_:))
    {
      (*(v137 + 8))(v136, v129);
    }
  }

  v130 = 0;
LABEL_20:
  (v160)(v130);
  [v161 respondWithConfirmation:v130];
  (*(v125 + 8))(v126, v127);
  outlined destroy of SpeakableString?(v128, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_26:
  OUTLINED_FUNCTION_42();
}

void closure #1 in LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  HIDWORD(v153) = v1;
  v154 = v2;
  v158 = v3;
  v166 = v4;
  v6 = v5;
  v161 = v7;
  v160 = v8;
  v10 = v9;
  v157 = type metadata accessor for OSSignpostError();
  v11 = OUTLINED_FUNCTION_7_1(v157);
  v156 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v16 - v15);
  v17 = type metadata accessor for OSSignpostID();
  v18 = OUTLINED_FUNCTION_7_1(v17);
  v163 = v19;
  v164 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
  v26 = OUTLINED_FUNCTION_7_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_50_0();
  v165 = (v31 - v32);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v33);
  v169 = &v151 - v34;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v35);
  v37 = &v151 - v36;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v38 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v38, static Logger.voiceCommands);
  v170 = *(v28 + 2);
  v170(v37, v10, v25);
  v159 = v0;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v167 = v6;
  v162 = v28 + 16;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_48();
    v43 = OUTLINED_FUNCTION_85();
    v151 = v24;
    v44 = v43;
    v171 = v43;
    *v42 = 136315138;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<[LNValue]> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v10;
    v46 = v28;
    v48 = v47;
    v49 = *(v46 + 1);
    v50 = OUTLINED_FUNCTION_51_6();
    v168 = v51;
    (v51)(v50);
    v52 = OUTLINED_FUNCTION_75_4();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v48, v53);
    v28 = v46;
    v10 = v45;

    *(v42 + 4) = v54;
    _os_log_impl(&dword_0, v39, v40, v154, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v24 = v151;
    OUTLINED_FUNCTION_15_0();
    v6 = v167;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v55 = *(v28 + 1);
    v56 = OUTLINED_FUNCTION_51_6();
    v168 = v57;
    (v57)(v56);
  }

  v58 = v169;
  v170(v169, v10, v25);
  v59 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v160) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v154 = v28;

    v60 = v155;
    checkForErrorAndConsumeState(state:)();

    v61 = v156;
    v62 = v157;
    v63 = (*(v156 + 88))(v60, v157);
    v152 = v10;
    v64 = v24;
    if (v63 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v68 = 0;
      v67 = 0;
      v66 = "[Error] Interval already ended";
    }

    else
    {
      (*(v61 + 8))(v60, v62);
      v66 = "exitValue: %s";
      v67 = 2;
      v68 = 1;
    }

    v69 = OUTLINED_FUNCTION_48();
    v70 = OUTLINED_FUNCTION_85();
    v171 = v70;
    *v69 = v67;
    *(v69 + 1) = v68;
    *(v69 + 2) = 2080;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<[LNValue]> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
    v71 = v169;
    dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = v154;
    v168(v71, v25);
    v75 = OUTLINED_FUNCTION_75_4();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v73, v76);
    v28 = v74;

    *(v69 + 4) = v77;
    v78 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v59, v160, v78, "LinkRCHFlowNeedsDisambiguation", v66, v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_19_0();

    OUTLINED_FUNCTION_71_4();
    v79(v64);
    v6 = v167;
    v10 = v152;
  }

  else
  {

    OUTLINED_FUNCTION_71_4();
    v65(v24);
    v168(v58, v25);
  }

  v80 = v166;
  outlined init with copy of DeviceState(v166, &v171);
  OUTLINED_FUNCTION_11_20(3);
  outlined assign with take of LinkRCHFlow.State(&v171, v6 + 48);
  swift_endAccess();
  v81 = v165;
  v170(v165, v10, v25);
  v82 = *(v28 + 11);
  v83 = OUTLINED_FUNCTION_51_6();
  v85 = v84(v83);
  if (v85 == enum case for PromptResult.answered<A>(_:))
  {
    v93 = *(v28 + 12);
    v94 = OUTLINED_FUNCTION_51_6();
    v96 = v95(v94);
    v97 = *v81;
    static InstrumentationUtils.emitActionParameterDisambiguationEndedInstrumentation()(v96, v98, v99, v100, v101, v102, v103, v104, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
    if (specialized Array.count.getter(v97))
    {
      if (specialized Array.count.getter(v97) == 1)
      {

        v105 = OUTLINED_FUNCTION_68_6();
        v106 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = OUTLINED_FUNCTION_48();
          v108 = OUTLINED_FUNCTION_85();
          v171 = v108;
          *v107 = 136315138;
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
          v109 = Array.description.getter();
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v171);

          *(v107 + 4) = v111;
          OUTLINED_FUNCTION_42_8();
          _os_log_impl(v112, v113, v114, v115, v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_15_0();
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v97 & 0xC000000000000001) == 0, v97);
        if ((v97 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v116 = *(v97 + 32);
        }

        OUTLINED_FUNCTION_1_18();

        [v158 respondWithValue:v97 & 0xC000000000000001];

        goto LABEL_34;
      }

      v129 = OUTLINED_FUNCTION_68_6();
      v130 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_38_4(v130))
      {
        v131 = OUTLINED_FUNCTION_52();
        *v131 = 0;
        OUTLINED_FUNCTION_42_8();
        _os_log_impl(v132, v133, v134, v135, v131, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      v136 = v158;
      v171 = v158;
      v172 = v97;
      outlined init with copy of DeviceState(v80, v173);
      OUTLINED_FUNCTION_11_20(SBYTE4(v153));
      v137 = v136;
    }

    else
    {

      v122 = OUTLINED_FUNCTION_68_6();
      v123 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v123))
      {
        v124 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v124);
        OUTLINED_FUNCTION_25(&dword_0, v125, v126, "PromptForDisambiguationFlow did not receive any valid input, reprompting...");
        OUTLINED_FUNCTION_17();
      }

      v127 = v158;
      v171 = v158;
      v172 = 0;
      outlined init with copy of DeviceState(v80, v173);
      OUTLINED_FUNCTION_11_20(SBYTE4(v153));
      v128 = v127;
    }

LABEL_33:
    outlined assign with take of LinkRCHFlow.State(&v171, v6 + 48);
    swift_endAccess();
    goto LABEL_34;
  }

  if (v85 == enum case for PromptResult.error<A>(_:))
  {
    v117 = *(v28 + 12);
    v118 = OUTLINED_FUNCTION_51_6();
    v119(v118);
    v120 = *v81;
    if (v81[8] == 1)
    {
      v171 = *v81;
      v121 = 10;
    }

    else
    {
      v171 = *v81;
      v121 = 11;
    }

    goto LABEL_32;
  }

  if (v85 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v86, v87, v88, v89, v90, v91, v92, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
    OUTLINED_FUNCTION_49_6();
LABEL_32:
    OUTLINED_FUNCTION_11_20(v121);
    goto LABEL_33;
  }

  if (v85 == enum case for PromptResult.unanswered<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v86, v87, v88, v89, v90, v91, v92, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
    v138 = OUTLINED_FUNCTION_68_6();
    v139 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v139))
    {
      v140 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v140);
      OUTLINED_FUNCTION_25(&dword_0, v141, v142, "Unexpected .unanswered result from a disambiguation request.");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v143 = OUTLINED_FUNCTION_16_6();
    *v144 = 0xD00000000000002BLL;
    v144[1] = 0x8000000000233550;
    v171 = v143;
    OUTLINED_FUNCTION_11_20(11);
    outlined assign with take of LinkRCHFlow.State(&v171, v6 + 48);
    swift_endAccess();
    v145 = OUTLINED_FUNCTION_68_6();
    v146 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v146))
    {
      v147 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v147);
      OUTLINED_FUNCTION_25(&dword_0, v148, v149, "Unexpected result");
      OUTLINED_FUNCTION_17();
    }

    v150 = OUTLINED_FUNCTION_51_6();
    (v168)(v150);
  }

LABEL_34:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v96 = a6;
  v97 = a5;
  v106 = a4;
  v100 = a3;
  v99 = a2;
  v95 = type metadata accessor for OSSignpostError();
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  __chkstk_darwin(v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v105 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v108 = &v92 - v19;
  __chkstk_darwin(v18);
  v21 = &v92 - v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.voiceCommands);
  v24 = *(v14 + 16);
  v24(v21, a1, v13);
  v98 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v109 = v14;
  v104 = a1;
  v101 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v110 = v29;
    *v28 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNChoiceOption> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v24;
    v33 = v32;
    v107 = *(v109 + 8);
    v107(v21, v13);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v110);
    v24 = v31;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "PromptForConfirmationFlow.createNeedsChoiceFlow received %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v14 = v109;
    v12 = v101;

    a1 = v104;
  }

  else
  {

    v107 = *(v14 + 8);
    v107(v21, v13);
  }

  v35 = v108;
  v24(v108, a1, v13);
  v36 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v99) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v92 = v24;

    v37 = v93;
    checkForErrorAndConsumeState(state:)();

    v38 = v94;
    v39 = v95;
    if ((*(v94 + 88))(v37, v95) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v40 = 0;
      v41 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v37, v39);
      v42 = "exitValue: %s";
      v41 = 2;
      v40 = 1;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v110 = v44;
    *v43 = v41;
    *(v43 + 1) = v40;
    *(v43 + 2) = 2080;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNChoiceOption> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
    v45 = v108;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = v109;
    v107(v45, v13);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v110);
    v14 = v49;

    *(v43 + 4) = v50;
    v51 = v101;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v36, v99, v52, "LinkRCHFlowNeedsChoice", v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);

    (*(v102 + 8))(v51, v103);
    a1 = v104;
    v24 = v92;
  }

  else
  {

    (*(v102 + 8))(v12, v103);
    v107(v35, v13);
  }

  v53 = v105;
  v24(v105, a1, v13);
  v54 = (*(v14 + 88))(v53, v13);
  if (v54 == enum case for PromptResult.answered<A>(_:))
  {
    v62 = (*(v14 + 96))(v53, v13);
    v63 = *v53;
    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v62, v64, v65, v66, v67, v68, v69, v70, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    v71 = v63;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v71;
      *v75 = v71;
      v76 = v71;
      _os_log_impl(&dword_0, v72, v73, "PromptForMultiChoiceFlow selected value: %@.", v74, 0xCu);
      outlined destroy of SpeakableString?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    [v97 respondWithOption:v71];
    outlined init with copy of DeviceState(v96, &v110);
    v77 = 3;
    goto LABEL_16;
  }

  if (v54 == enum case for PromptResult.error<A>(_:))
  {
    (*(v14 + 96))(v53, v13);
    v80 = *v53;
    if (*(v53 + 8) == 1)
    {
      v110 = *v53;
      v77 = 10;
    }

    else
    {
      v110 = *v53;
      v77 = 11;
    }

    goto LABEL_16;
  }

  if (v54 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v55, v56, v57, v58, v59, v60, v61, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    v110 = (&dword_0 + 2);
    memset(v111, 0, sizeof(v111));
    v77 = 14;
LABEL_16:
    v112 = v77;
    v78 = v106;
    swift_beginAccess();
LABEL_17:
    outlined assign with take of LinkRCHFlow.State(&v110, v78 + 48);
    return swift_endAccess();
  }

  if (v54 == enum case for PromptResult.unanswered<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v55, v56, v57, v58, v59, v60, v61, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "Unexpected .unanswered result from a needs choice request.", v83, 2u);
    }

    v84 = v97;
    v110 = v97;
    outlined init with copy of DeviceState(v96, v111);
    v112 = 9;
    v78 = v106;
    swift_beginAccess();
    v85 = v84;
    goto LABEL_17;
  }

  lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
  v86 = swift_allocError();
  *v87 = 0xD000000000000028;
  v87[1] = 0x8000000000233580;
  v110 = v86;
  v112 = 11;
  v88 = v106;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v110, v88 + 48);
  swift_endAccess();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_0, v89, v90, "Unexpected result", v91, 2u);
  }

  return (v107)(v53, v13);
}

void closure #1 in LinkRCHFlow.createContinueInAppFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v94 = a2;
  v95 = a4;
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v84 - v9;
  v11 = type metadata accessor for SimpleConfirmationResponseProvider();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v84 - v21;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.voiceCommands);
  v25 = *(v17 + 16);
  v93 = a1;
  v91 = v25;
  v25(v22, a1, v16);
  v97 = v17;
  v90 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v87 = v10;
    v29 = v28;
    v85 = swift_slowAlloc();
    v98 = v85;
    *v29 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v15;
    v31 = v12;
    v32 = v11;
    v34 = v33;
    v89 = *(v97 + 8);
    v89(v22, v16);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v34, &v98);
    v11 = v32;
    v12 = v31;
    v15 = v86;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_0, v26, v27, "PromptForConfirmationFlow.createContinueInAppFlow received %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);

    v10 = v87;

    v36 = v97;
  }

  else
  {

    v37 = v97;
    v89 = *(v97 + 8);
    v89(v22, v16);
    v36 = v37;
  }

  v38 = v96;
  outlined init with copy of DeviceState(v92, &v98);
  v102 = 3;
  v39 = v94;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v98, v39 + 48);
  swift_endAccess();
  v91(v38, v93, v16);
  v40 = (*(v36 + 88))(v38, v16);
  if (v40 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v36 + 96))(v38, v16);
    (*(v12 + 32))(v15, v38, v11);
    SimpleConfirmationResponseProvider.confirmationResponse.getter();
    v48 = type metadata accessor for ConfirmationResponse();
    if (__swift_getEnumTagSinglePayload(v10, 1, v48) != 1)
    {
      v56 = v88;
      outlined init with copy of SpeakableString?(v10, v88, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v57 = *(v48 - 8);
      if ((*(v57 + 88))(v56, v48) == enum case for ConfirmationResponse.confirmed(_:))
      {
        static InstrumentationUtils.emitActionConfirmationEndedInstrumentation(isCorrectAction:)(1, v58, v59, v60, v61, v62, v63, v64, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
        [v95 respondWithSuccess];
LABEL_18:
        (*(v12 + 8))(v15, v11);
        outlined destroy of SpeakableString?(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        return;
      }

      (*(v57 + 8))(v56, v48);
    }

    static InstrumentationUtils.emitActionParameterConfirmationEndedInstrumentation(isCorrectParameter:)(0, v49, v50, v51, v52, v53, v54, v55, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v74 = static NSError.userCancelled.getter();
    v75 = _convertErrorToNSError(_:)();

    [v95 respondWithError:v75];
    goto LABEL_18;
  }

  v65 = v40;
  if (v40 == enum case for PromptResult.error<A>(_:))
  {
    v89(v38, v16);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "PromptForConfirmationFlow.createContinueInAppFlow received an .error result, returning error", v68, 2u);
    }

LABEL_13:

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v69 = static NSError.userCancelled.getter();
    static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)();

    v70 = v69;
    v71 = _convertErrorToNSError(_:)();

    [v95 respondWithError:v71];
    return;
  }

  if (v40 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v41, v42, v43, v44, v45, v46, v47, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v72 = static NSError.userCancelled.getter();
    v73 = _convertErrorToNSError(_:)();

    [v95 respondWithError:v73];
    v98 = (&dword_0 + 2);
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 14;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(&v98, v39 + 48);
    swift_endAccess();
    return;
  }

  v76 = enum case for PromptResult.unanswered<A>(_:);
  v66 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  v78 = os_log_type_enabled(v66, v77);
  if (v65 == v76)
  {
    if (v78)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v66, v77, "PromptForConfirmationFlow.createContinueInAppFlow received an .unanswered result, returning error", v79, 2u);
    }

    goto LABEL_13;
  }

  if (v78)
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_0, v66, v77, "PromptForConfirmationFlow.createContinueInAppFlow received an unknown result, returning error", v80, 2u);
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
  v81 = static NSError.userCancelled.getter();
  static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)();

  v82 = v81;
  v83 = _convertErrorToNSError(_:)();

  [v95 respondWithError:v83];
  v89(v96, v16);
}

id static NSError.userCancelled.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(NSError);
  return @nonobjc NSError.init(domain:code:userInfo:)(v0, v2, 3072, 0);
}

uint64_t closure #1 in LinkRCHFlow.runAppProtectionCheckFlow(completionHandler:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v56 = a4;
  v7 = type metadata accessor for AppResolutionFlowResult();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  outlined init with copy of DeviceState(a3, v58);
  v59 = 3;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(v58, a2 + 48);
  swift_endAccess();
  v18 = *(v8 + 16);
  v18(v17, a1, v7);
  v19 = (*(v8 + 88))(v17, v7);
  if (v19 == enum case for AppResolutionFlowResult.resolved(_:))
  {
    (*(v8 + 96))(v17, v7);
    v20 = *v17;
LABEL_5:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.voiceCommands);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58[0] = v25;
      *v24 = 136315138;
      v57 = v20;
      type metadata accessor for App();
      lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(&lazy protocol witness table cache variable for type App and conformance App, 255, &type metadata accessor for App);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v58);

      *(v24 + 4) = v28;

      _os_log_impl(&dword_0, v22, v23, "#LinkRCHFlow runAppProtectionCheckFlow - resolved app: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {
    }

    v29 = 1;
    return v56(v29);
  }

  if (v19 == enum case for AppResolutionFlowResult.resolvedWithIntent(_:))
  {
    (*(v8 + 96))(v17, v7);
    v20 = *v17;

    goto LABEL_5;
  }

  if (v19 == enum case for AppResolutionFlowResult.error(_:))
  {
    (*(v8 + 96))(v17, v7);
    v31 = *v17;
    v32 = v17[8];
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.voiceCommands);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412546;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      *(v36 + 12) = 1024;
      *(v36 + 14) = v32;
      _os_log_impl(&dword_0, v34, v35, "#LinkRCHFlow runAppProtectionCheckFlow - error: %@; \n\t handled=%{BOOL}d", v36, 0x12u);
      outlined destroy of SpeakableString?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v56(0);
  }

  else
  {
    if (v19 == enum case for AppResolutionFlowResult.cancelled(_:))
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.voiceCommands);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "#LinkRCHFlow runAppProtectionCheckFlow - cancelled", v42, 2u);
      }

      v29 = 0;
      return v56(v29);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.voiceCommands);
    v18(v15, a1, v7);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v54 = v45;
      v47 = v46;
      v55 = swift_slowAlloc();
      v58[0] = v55;
      *v47 = 136315138;
      v18(v12, v15, v7);
      v53 = String.init<A>(describing:)();
      v49 = v48;
      v50 = *(v8 + 8);
      v50(v15, v7);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v49, v58);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_0, v44, v54, "#LinkRCHFlow runAppProtectionCheckFlow - received unexpected appResolutionFlowResult: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
    }

    else
    {

      v50 = *(v8 + 8);
      v50(v15, v7);
    }

    v56(0);
    return (v50)(v17, v7);
  }
}

id LNEnvironment.__allocating_init(localeIdentifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithLocaleIdentifier:v1];

  return v2;
}

uint64_t LinkRCHFlow.processDeviceUnlockResult(exitValue:)(char a1)
{
  swift_beginAccess();
  outlined init with copy of LinkRCHFlow.State(v1 + 48, v9);
  if (v10 == 2)
  {
    outlined init with take of AceServiceInvokerAsync(v9, v11);
    if (a1)
    {
      lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
      v3 = swift_allocError();
      *v4 = 0x64656B636F6C6E55;
      v4[1] = 0xEF64656C69616620;
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      *&v9[0] = v3;
      v5 = 11;
    }

    else
    {
      outlined init with take of AceServiceInvokerAsync(v11, v9);
      v5 = 3;
    }

    v10 = v5;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(v9, v1 + 48);
  }

  else
  {
    outlined destroy of LinkRCHFlow.State(v9);
    lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v6 = swift_allocError();
    *v7 = 0xD00000000000001BLL;
    v7[1] = 0x80000000002335E0;
    *&v9[0] = v6;
    v10 = 11;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(v9, v1 + 48);
  }

  return swift_endAccess();
}

uint64_t LinkRCHFlow.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  outlined destroy of LinkRCHFlow.State(v0 + 48);
  v3 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  outlined destroy of SpeakableString?(v0 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  v4 = *(v0 + 296);

  return v0;
}

uint64_t LinkRCHFlow.__deallocating_deinit()
{
  LinkRCHFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance LinkRCHFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance LinkRCHFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return LinkRCHFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance LinkRCHFlow@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = LinkRCHFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

void outlined bridged method (mbnn) of @objc LNActionExecutorOptions.clientLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setClientLabel:v4];
}

uint64_t specialized LinkRCHFlow.__allocating_init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = a7;
  v31 = a8;
  v29 = a5;
  v27 = a3;
  v28 = a4;
  v25 = a10;
  v26 = a9;
  v18 = *(a14 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(a13);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a6, a14);
  v23 = specialized LinkRCHFlow.init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(a1, a2, v27, v28, v29, v21, v30, v31, v26, *(&v26 + 1), v25, *(&v25 + 1), a11, a12, v22, a14, a15);
  (*(v18 + 8))(a6, a14);
  return v23;
}

unint64_t lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError()
{
  result = lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError;
  if (!lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError);
  }

  return result;
}

uint64_t specialized LinkRCHFlow.init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v98 = a8;
  v100 = a7;
  v85 = a5;
  v92 = a4;
  v84 = a3;
  v97 = a14;
  v96 = a11;
  v99 = a10;
  v20 = type metadata accessor for CATOption();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v86 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113[3] = a16;
  v113[4] = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
  (*(*(a16 - 8) + 32))(boxed_opaque_existential_1, a6, a16);
  *(a15 + 16) = a1;
  *(a15 + 24) = a2;
  v24 = *(a17 + 16);
  v25 = a1;
  v26 = v99;
  v94 = v25;
  v27 = a2;
  v89 = boxed_opaque_existential_1;
  v90 = a16;
  v91 = a17;
  v87 = a17 + 16;
  v88 = v24;
  *(a15 + 112) = v24(a16, a17);
  *(a15 + 120) = v28;
  outlined init with copy of SpeakableString?(v100, a15 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  outlined init with copy of DeviceState(a9, a15 + 208);
  v95 = a9;
  v93 = v27;
  if (v26)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = v27;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v30, v31, "#LinkRCHFlow init - overriding strategy", v33, 2u);
    }

    v34 = v26;
  }

  else
  {
    outlined init with copy of DeviceState(a9, v101);
    outlined init with copy of DeviceState(v97, v112);
    outlined init with copy of DeviceState(v98, v111);
    type metadata accessor for RunLinkActionCATs();
    v35 = v27;
    static CATOption.defaultMode.getter();
    v83 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATsSimple();
    static CATOption.defaultMode.getter();
    v82 = CATWrapperSimple.__allocating_init(options:globals:)();
    v36 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    v37 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for ShortcutsLinkRCHFlowStrategy();
    v34 = swift_allocObject();
    v110[3] = v36;
    v110[4] = &protocol witness table for RunLinkActionCATPatternsExecutor;
    v110[0] = v37;
    v38 = v92;
    *(v34 + 16) = v84;
    *(v34 + 24) = v38;
    *(v34 + 32) = v35;
    outlined init with copy of DeviceState(v101, v34 + 40);
    *(v34 + 80) = v85 & 1;
    outlined init with copy of DeviceState(v112, v34 + 88);
    outlined init with copy of DeviceState(v111, v34 + 128);
    outlined init with copy of DeviceState(v101, v109);
    outlined init with copy of DeviceState(v110, v107);
    type metadata accessor for RunVoiceCommandCATs();
    v39 = v35;

    static CATOption.defaultMode.getter();
    v92 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    v86 = CATWrapperSimple.__allocating_init(options:globals:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    type metadata accessor for LinkActionDialogTemplating();
    v40 = swift_allocObject();
    v41 = v108;
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
    v43 = *(*(v41 - 8) + 64);
    __chkstk_darwin(v42);
    v45 = (&v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = v93;
    (*(v46 + 16))(v45);
    v47 = *v45;
    v105 = v36;
    v106 = &protocol witness table for RunLinkActionCATPatternsExecutor;

    *&v104 = v47;
    outlined init with take of AceServiceInvokerAsync(v109, (v40 + 2));
    v48 = v82;
    v40[7] = v83;
    v40[8] = v48;
    v49 = v86;
    v40[9] = v92;
    v40[10] = v49;
    outlined init with take of AceServiceInvokerAsync(&v104, (v40 + 11));
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    *(v34 + 168) = v40;
  }

  *(a15 + 32) = v34;
  v50 = [v32 systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = [objc_opt_self() sessionStartingProtocol];
  *&v101[0] = v52;
  __chkstk_darwin(v52);
  *(&v81 - 2) = v101;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v81 - 4), v51);
  v54 = v53;

  v55 = 0;
  if (v54)
  {
    v56 = v88(v90, v91);
    v58 = v57;
    type metadata accessor for LinkActivityManager();
    swift_allocObject();
    v55 = LinkActivityManager.init(bundleId:)(v56, v58);
  }

  *(a15 + 40) = v55;
  v59 = v98;
  outlined init with copy of DeviceState(v98, a15 + 128);
  outlined init with copy of DeviceState(v113, a15 + 248);
  v60 = v96;
  outlined init with copy of SpeakableString?(v96, v101, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
  v61 = v103;
  v62 = v97;
  if (v103 == 255)
  {
    v66 = 0;
    v63 = 0uLL;
    v61 = 14;
    v64 = 0uLL;
    v65 = 0uLL;
  }

  else
  {
    v63 = v101[0];
    v64 = v101[1];
    v65 = v101[2];
    v66 = v102;
  }

  v67 = a12;
  *(a15 + 48) = v63;
  *(a15 + 64) = v64;
  *(a15 + 80) = v65;
  *(a15 + 96) = v66;
  *(a15 + 104) = v61;
  if (*(v60 + 56) != 255)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.voiceCommands);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v92 = a12;
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "#LinkRCHFlow init - overriding Flow state", v71, 2u);
      v67 = v92;
    }
  }

  if (v67)
  {
    v72 = swift_allocObject();
    *(v72 + 16) = v67;
    *(v72 + 24) = a13;
    v73 = swift_allocObject();
    *(v73 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow);
    *(v73 + 24) = v72;
    *(a15 + 288) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow);
    *(a15 + 296) = v73;
    v74 = one-time initialization token for voiceCommands;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.voiceCommands);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "#LinkRCHFlow init - overriding UnlockFlowProvider", v78, 2u);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow))?(v67);
    v32 = v93;
  }

  else
  {
    v79 = swift_allocObject();
    *(v79 + 16) = specialized thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow);
    *(v79 + 24) = 0;
    *(a15 + 288) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow);
    *(a15 + 296) = v79;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  outlined destroy of SpeakableString?(v100, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  outlined destroy of SpeakableString?(v60, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  return a15;
}

uint64_t outlined destroy of DurationUtil(uint64_t a1)
{
  v2 = type metadata accessor for DurationUtil();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v3, v4, v5);
}

void outlined consume of LinkConnectionEvent?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of LinkConnectionEvent(a1, a2, a3);
  }
}

void outlined consume of LinkConnectionEvent(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:

      break;
    case 6:

      break;
    default:
      return;
  }
}

id outlined copy of LinkConnectionEvent(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
      result = result;
      break;
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t partial apply for closure #1 in LinkRCHFlow.responseFrom(event:iterator:)()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in LinkRCHFlow.responseFrom(event:iterator:)(v3, v0);
}

uint64_t sub_113FA8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v2, v3, v4);
}

void partial apply for closure #1 in LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)()
{
  partial apply for closure #1 in LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)();
}

{
  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_56_4();
  v9 = *(v0 + v8);
  closure #1 in LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)();
}

uint64_t objectdestroy_13Tm()
{
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_23_0(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  OUTLINED_FUNCTION_38_12();
  v9 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11(v0 + v10);
  v12 = *(v0 + v1);

  v13 = *(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));

  return _swift_deallocObject(v0, v9 + 8, v7 | 7);
}

uint64_t objectdestroy_19Tm()
{
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_23_0(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  OUTLINED_FUNCTION_38_12();
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11(v0 + v10);
  v12 = *(v0 + v1);

  v13 = *(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v9));

  return _swift_deallocObject(v0, v9 + 40, v7 | 7);
}

uint64_t partial apply for closure #1 in LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_5_0(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_56_4();
  v13 = *(v2 + v12);

  return a2(a1, v2 + v11);
}

uint64_t sub_11435C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B13RCHFlowResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B7RCHFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 0xD)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkRCHFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 57))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xF)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkRCHFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkRCHFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkRCHFlowError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for LinkRCHFlowError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}