uint64_t *ShowOutputAndCloseFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t ShowOutputAndCloseFlow.__deallocating_deinit()
{
  ShowOutputAndCloseFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance ShowOutputAndCloseFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return ShowOutputAndCloseFlow.execute()(a1);
}

uint64_t OUTLINED_FUNCTION_6_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

INImage_optional __swiftcall WFImage.convertToINImage()()
{
  v1 = outlined bridged method (pb) of @objc WFImage.pngRepresentation.getter(v0);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    type metadata accessor for INImage();
    outlined copy of Data._Representation(v4, v5);
    v3 = @nonobjc INImage.__allocating_init(imageData:)(v4, v5);
    [v0 sizeInPoints];
    v7 = v6;
    [v0 sizeInPoints];
    [v3 _setImageSize:v7];
    [v3 _setRenderingMode:WFImage.getRenderingMode()()];
    outlined consume of Data?(v4, v5);
  }

  v8 = v3;
  result.is_nil = v2;
  result.value.super.isa = v8;
  return result;
}

id @nonobjc INImage.__allocating_init(imageData:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData:isa];

  outlined consume of Data._Representation(a1, a2);
  return v5;
}

id WFImage.getRenderingMode()()
{
  result = [v0 renderingMode];
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc WFImage.pngRepresentation.getter(void *a1)
{
  v1 = [a1 PNGRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INImage()
{
  result = lazy cache variable for type metadata for INImage;
  if (!lazy cache variable for type metadata for INImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INImage);
  }

  return result;
}

unint64_t RunLinkActionCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
    case 9:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional __swiftcall RunLinkActionCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmation(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  v12 = OUTLINED_FUNCTION_39_5();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = swift_task_alloc();
  *(v1 + 64) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_30_3(v16);
  v17 = OUTLINED_FUNCTION_15_9(32);

  return v18(v17);
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
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_63_2();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional __swiftcall RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:), v3);
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

uint64_t RunLinkActionCATsSimple.ActionConfirmationDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x6D6F74737563;
  }

  return 0x62726556736168;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ActionConfirmationDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationAsLabels(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v21 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  v12 = OUTLINED_FUNCTION_39_5();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = swift_task_alloc();
  *(v1 + 64) = v16;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v16 = v17;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v18 = OUTLINED_FUNCTION_14_7(32);

  return v19(v18);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationHeader(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v6);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(38);

  return v15(v14);
}

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
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

BOOL RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationHeaderAsLabels(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(38);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.actionPerformed(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v6);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(29);

  return v15(v14);
}

BOOL RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionPerformedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionPerformedAsLabels(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(29);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.confirmationButtonLabel(confirmationVerb:)()
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
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000231530;
  OUTLINED_FUNCTION_54_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v5);
  if (v6)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_57_1(v10);
  *v11 = v12;
  v11[1] = RunLinkActionCATsSimple.actionConfirmationHeader(customDialog:);
  v13 = *(v1 + 24);
  OUTLINED_FUNCTION_87();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

BOOL RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.confirmationButtonLabelAsLabels(confirmationVerb:)()
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
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000231530;
  OUTLINED_FUNCTION_54_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v5);
  if (v6)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v10 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v10);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v11;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.continueInApp(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v6);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(27);

  return v15(v14);
}

uint64_t RunLinkActionCATsSimple.ContinueInAppDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLinkActionCATsSimple.ContinueInAppDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ContinueInAppDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ContinueInAppDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ContinueInAppDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ContinueInAppDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ContinueInAppDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ContinueInAppDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.continueInAppAsLabels(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(27);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v21 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
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

  v13 = *(v1 + 64);
  OUTLINED_FUNCTION_51_0("nonOptionalParameterIsNil");
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v14;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_57_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_17_8(v16);
  v18 = OUTLINED_FUNCTION_15_9(25);

  return v19(v18);
}

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
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional __swiftcall RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:), v3);
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

uint64_t RunLinkActionCATsSimple.ErrorDialogDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_5();
  }

  if (a1 == 1)
  {
    return 0x726F727265;
  }

  return 0x6D617261506C696ELL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLinkActionCATsSimple.ErrorDialogDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ErrorDialogDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ErrorDialogDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ErrorDialogDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.errorDialogAsLabels(customDialog:nonOptionalParameterIsNil:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v21 = v4;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2();
  v6 = OUTLINED_FUNCTION_26_6(v5);
  v7 = OUTLINED_FUNCTION_0_14(v6, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v9);
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v2 + 64);
  OUTLINED_FUNCTION_51_0("nonOptionalParameterIsNil");
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v15;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v16);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v17;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v18 = OUTLINED_FUNCTION_14_7(25);

  return v19(v18);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:)()
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
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v0[6] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_12();
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_36_3();
  v3[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:);
  v12 = v0[4];
  OUTLINED_FUNCTION_23_8(33);
  OUTLINED_FUNCTION_87();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
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

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

BOOL RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:)()
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
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v0[6] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_12();
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_36_3();
  v3[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v11 = swift_task_alloc();
  v0[7] = v11;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v11 = v12;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23_8(33);
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

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_67(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_64_0();
  v24 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_52_2(v12);
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = *(v1 + 81);
  v18 = *(v1 + 80);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_31_2(v19);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v20 = swift_task_alloc();
  *(v1 + 64) = v20;
  *v20 = v1;
  OUTLINED_FUNCTION_30_3(v20);
  v21 = OUTLINED_FUNCTION_15_9(24);

  return v22(v21);
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
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_63_2();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[9];

  return v4();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional __swiftcall RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:), v3);
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

uint64_t RunLinkActionCATsSimple.NeedsValueDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_5();
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x6341686372616573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLinkActionCATsSimple.NeedsValueDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.NeedsValueDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.NeedsValueDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.NeedsValueDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.needsValueAsLabels(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_67(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_64_0();
  v25 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_52_2(v12);
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = *(v1 + 81);
  v18 = *(v1 + 80);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_31_2(v19);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v20 = swift_task_alloc();
  *(v1 + 64) = v20;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v20 = v21;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v22 = OUTLINED_FUNCTION_14_7(24);

  return v23(v22);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.parameterConfirmation(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v21 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_56(v12);
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v17 = swift_task_alloc();
  *(v1 + 64) = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_30_3(v17);
  v18 = OUTLINED_FUNCTION_15_9(35);

  return v19(v18);
}

uint64_t RunLinkActionCATsSimple.ContinueInAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  OUTLINED_FUNCTION_48_3();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RunLinkActionCATsSimple.ParameterConfirmationDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ParameterConfirmationDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ParameterConfirmationDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ParameterConfirmationDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ParameterConfirmationDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.parameterConfirmationAsLabels(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v22 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
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

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_56(v12);
  outlined init with copy of SpeakableString?(v13, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v17 = swift_task_alloc();
  *(v1 + 64) = v17;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v17 = v18;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v19 = OUTLINED_FUNCTION_14_7(35);

  return v20(v19);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatform(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatform(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = RunLinkActionCATsSimple.unsupportedOnPlatform(device:);
  v5 = v0[3];
  OUTLINED_FUNCTION_23_8(35);
  OUTLINED_FUNCTION_87();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
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
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 48);

  return v2();
}

BOOL RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatformAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatformAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v4 = v5;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(35);
  OUTLINED_FUNCTION_87();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13);
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
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunLinkActionCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunLinkActionCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t RunLinkActionCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t RunLinkActionCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for RunLinkActionCATsSimple()
{
  result = type metadata singleton initialization cache for RunLinkActionCATsSimple;
  if (!type metadata singleton initialization cache for RunLinkActionCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x791D4);
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

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x79360);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ContinueInAppDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x79460);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds(unsigned __int8 *a1, int a2)
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

  return getEnumTag for AutoShortcutFlow.State(a1);
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x79580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0_14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "customDialog");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_8@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

double OUTLINED_FUNCTION_22_6()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_31_2(char a1@<W8>)
{
  *(v4 + 144) = v1;
  *(v4 + 168) = v2;
  *(v4 + 176) = 0x6574656C65447369;
  *(v4 + 184) = v3;
  *(v4 + 216) = v2;
  *(v4 + 192) = a1;
}

void OUTLINED_FUNCTION_36_3()
{
  v2 = *(v0 + 24);
  *(v1 + 80) = 0x736D657469;
  *(v1 + 88) = 0xE500000000000000;
}

uint64_t *OUTLINED_FUNCTION_37_4()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_39_5()
{
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 80) = 1651664246;
  *(v1 + 88) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_3()
{
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_67(uint64_t result, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 81) = a4;
  *(v5 + 80) = a3;
  *(v5 + 16) = result;
  return result;
}

uint64_t one-time initialization function for usoTaskTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.usoTaskTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.usoTaskTransformer);
  type metadata accessor for UsoTask();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.usoTaskTransformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v11[3])
  {
    outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v8 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v9 = 0xD000000000000034;
    v9[1] = 0x80000000002315B0;
    (*(*(v8 - 8) + 104))(v9, enum case for TransformationError.cannotTransform(_:), v8);
    return swift_willThrow();
  }

  if (one-time initialization token for workflowNameTransformer != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_project_value_buffer(v5, static Transformer<>.workflowNameTransformer);
  v6 = Transformer.transform.getter();
  v6(v11, &v12);

  if (!v2)
  {
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
  }

  return result;
}

uint64_t Transformer<>.workflowNameTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for workflowNameTransformer != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.workflowNameTransformer);
}

uint64_t Transformer<>.usoTaskTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for usoTaskTransformer != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.usoTaskTransformer);
}

uint64_t static Transformer<>.usoTaskTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for usoTaskTransformer != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);
  __swift_project_value_buffer(v2, static Transformer<>.usoTaskTransformer);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t one-time initialization function for workflowNameTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.workflowNameTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.workflowNameTransformer);
  type metadata accessor for UsoTask_run_common_VoiceCommand();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.workflowNameTransformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v14 && (, v4 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter(), v6 = v5, , v6))
  {

    *a2 = v4;
    a2[1] = v6;
  }

  else
  {
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
      _os_log_impl(&dword_0, v9, v10, "Shortcut name could not be retrieved from USOGraph", v11, 2u);
    }

    v12 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v13 = 0xD000000000000020;
    v13[1] = 0x80000000002315F0;
    (*(*(v12 - 8) + 104))(v13, enum case for TransformationError.cannotTransform(_:), v12);
    swift_willThrow();
  }

  return result;
}

uint64_t static Transformer<>.workflowNameTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for workflowNameTransformer != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_project_value_buffer(v2, static Transformer<>.workflowNameTransformer);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  result = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    type metadata accessor for TransformationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_once();
}

Swift::String_optional __swiftcall DialogExecutionResult.firstDialogFullPrint()()
{
  v1 = [v0 dialog];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);
  if (v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_10;
      }

      v5 = *(v2 + 32);
    }

    v6 = v5;

    v7 = [v6 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v3 = OUTLINED_FUNCTION_22();
LABEL_10:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_50_0();
  v8 = v6 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v88 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v88 - v14;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_8();
  v88 = v16;
  v95 = String._bridgeToObjectiveC()();
  v17 = objc_allocWithZone(NSRegularExpression);
  v18 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000001DLL, 0x8000000000231620, 0);
  v94 = 0;
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = &selRef_stringValueType;
  v21 = [v95 length];
  v22 = &off_2B4000;
  v93 = v18;
  v23 = [v18 matchesInString:v19 options:0 range:{0, v21}];

  v8 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSTextCheckingResult, NSTextCheckingResult_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = specialized Array.count.getter(v24);
  v89 = v15;
  if (!v25)
  {

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v26 = v25;
  OUTLINED_FUNCTION_11_7(_swiftEmptyArrayStorage);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v90 = v8;
    v91 = a1;
    v92 = a2;
    v27 = 0;
    v28 = v96[0];
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 range];
      v33 = [v95 substringWithRange:{v31, v32}];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v96[0] = v28;
      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_14_8(v37);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v96[0];
      }

      ++v27;
      v28[2] = v38 + 1;
      v39 = &v28[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
    }

    while (v26 != v27);

    v20 = &selRef_stringValueType;
    v22 = &off_2B4000;
    v8 = v90;
LABEL_13:
    v40 = objc_allocWithZone(NSRegularExpression);
    v41 = v94;
    v42 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000001CLL, 0x80000000002316A0, 0);
    if (v41)
    {
    }

    else
    {
      v12 = v42;
      if (v42)
      {
        v43 = String._bridgeToObjectiveC()();
        v44 = [v12 v22[438]];

        v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = specialized Array.count.getter(v45);
        if (!v46)
        {

          v49 = _swiftEmptyArrayStorage;
LABEL_26:
          v96[0] = v28;
          specialized Array.append<A>(contentsOf:)(v49);

          return v96[0];
        }

        v47 = v46;
        OUTLINED_FUNCTION_11_7(_swiftEmptyArrayStorage);
        if ((v47 & 0x8000000000000000) == 0)
        {
          v92 = v12;
          v48 = 0;
          v49 = v96[0];
          v94 = v45 & 0xC000000000000001;
          v50 = v45;
          v51 = v47;
          do
          {
            if (v94)
            {
              v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v52 = *(v45 + 8 * v48 + 32);
            }

            v53 = v52;
            v54 = [v52 range];
            v56 = [v95 substringWithRange:{v54, v55}];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v96[0] = v49;
            v61 = v49[2];
            v60 = v49[3];
            if (v61 >= v60 >> 1)
            {
              OUTLINED_FUNCTION_14_8(v60);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v49 = v96[0];
            }

            ++v48;
            v49[2] = v61 + 1;
            v62 = &v49[2 * v61];
            v62[4] = v57;
            v62[5] = v59;
            v45 = v50;
          }

          while (v51 != v48);

          v12 = v92;
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.voiceCommands);
    OUTLINED_FUNCTION_13_1();
    v76 = v75;
    v78 = v88;
    (*(v77 + 16))(v88);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v74);
    v79 = v78;
    v80 = v89;
    outlined init with copy of Logger?(v79, v89);
    v81 = v80;
    if (__swift_getEnumTagSinglePayload(v80, 1, v74) == 1)
    {
      outlined destroy of Any?(v80, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v96[0] = OUTLINED_FUNCTION_20_6();
        *v84 = 136315650;
        v85 = StaticString.description.getter();
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v96);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2048;
        *(v84 + 14) = 122;
        *(v84 + 22) = 2080;
        *(v84 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265206C61746166, 0xEB00000000726F72, v96);
        _os_log_impl(&dword_0, v82, v83, "FatalError at %s:%lu - %s", v84, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      (*(v76 + 8))(v81, v74);
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_28:
  __break(1u);

LABEL_29:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.voiceCommands);
  OUTLINED_FUNCTION_13_1();
  v66 = v65;
  (*(v67 + 16))(v12);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v64);
  outlined init with copy of Logger?(v12, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v64) == 1)
  {
    outlined destroy of Any?(v8, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v96[0] = OUTLINED_FUNCTION_20_6();
      *v70 = 136315650;
      v71 = StaticString.description.getter();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v96);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2048;
      *(v70 + 14) = 115;
      *(v70 + 22) = 2080;
      *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265206C61746166, 0xEB00000000726F72, v96);
      _os_log_impl(&dword_0, v68, v69, "FatalError at %s:%lu - %s", v70, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    (*(v66 + 8))(v8, v64);
  }

LABEL_44:
  OUTLINED_FUNCTION_19_4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static CATSpeakableString.applyPronunciationHints(template:variablesWithWrapper:intent:intentResponse:tokens:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = *(a3 + 16);

  v10 = (a3 + 40);
  if (!v9)
  {
    return a1;
  }

  while (1)
  {
    v11 = *(v10 - 1);
    v12 = *v10;

    v13 = static CATSpeakableString.unwrapProperty(propertyName:)();
    static CATSpeakableString.resolveVariable(variable:intent:intentResponse:tokens:)(v13, v14, a4, a5, a6, &v28);

    if (!v29)
    {

      outlined destroy of Any?(&v28, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v15 = v27;
    v16 = outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(v27);
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

LABEL_10:
      *&v28 = a1;
      *(&v28 + 1) = a2;
      v27 = v11;
      v21 = [v15 displayString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      a1 = OUTLINED_FUNCTION_2_18();
      v20 = v22;

      goto LABEL_11;
    }

    *&v28 = a1;
    *(&v28 + 1) = a2;
    v27 = v11;
    lazy protocol witness table accessor for type String and conformance String();
    a1 = OUTLINED_FUNCTION_2_18();
    v20 = v19;

LABEL_11:

    v10 += 2;
    --v9;
    a2 = v20;
    if (!v9)
    {
      return a1;
    }
  }

  return 0;
}

uint64_t CATSpeakableString.__allocating_init(_:speak:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v8 = swift_allocObject();
  CATSpeakableString.init(_:speak:)(a1, a2, a3, a4);
  return v8;
}

void *static CATSpeakableString.getPropertiesInTemplateString(templateString:)(uint64_t a1, char *a2)
{
  v2 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = static CATSpeakableString.unwrapProperty(propertyName:)();
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_14_8(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  result = OUTLINED_FUNCTION_10_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DisplayHint();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  specialized Sequence._copySequenceContents(initializing:)();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v28;
  if (v9 != v8)
  {
LABEL_7:
    outlined consume of Set<String>.Iterator._Variant();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v29;
  v10 = v30;
  v4 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  v14 = (v32 - 1) & v32;
  v15 = __clz(__rbit64(v32)) | (v31 << 6);
  v16 = (v30 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v27 = *(v1 + 24) >> 1;
  if (v27 < v3 + 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1 = v26;
    v27 = *(v26 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v27)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t TemplatingResult.init(dialogId:print:speak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v87 = a1;
  v88 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v86 = &v70 - v10;
  v11 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_13_1();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v92 = v17 - v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_8();
  v91 = v20;
  v90 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_13_1();
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_50_0();
  v85 = v26 - v27;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_12_8();
  v89 = v29;
  v30 = type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_13_1();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_50_0();
  v73 = v36 - v37;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_12_8();
  v74 = v39;
  v84 = *(a3 + 16);
  if (v84)
  {
    v70 = v32;
    v71 = v30;
    v72 = a5;
    type metadata accessor for CATSpeakableString();
    v40 = 0;
    v41 = 0;
    v83 = *(v88 + 16);
    v79 = (v13 + 16);
    v80 = (v22 + 16);
    v77 = (v22 + 8);
    v78 = v13 + 8;
    v76 = v13 + 32;
    v42 = _swiftEmptyArrayStorage;
    v43 = a3;
    v81 = v11;
    v82 = v13;
    v75 = a3;
    while (1)
    {
      v44 = *(v43 + v40 + 32);
      v45 = *(v43 + v40 + 40);

      v46 = OUTLINED_FUNCTION_22();
      static CATSpeakableString.stripTTSHint(print:)(v46, v47, v48, v49, v50, v51, v52, v53, v70, v71, v72);

      if (v41 < v83)
      {
        if (v41 >= *(v88 + 16))
        {
          __break(1u);
          return result;
        }

        v55 = a2;
        v56 = *(v88 + v40 + 32);
        v57 = *(v88 + v40 + 40);

        static CATSpeakableString.applyTTSHint(speak:)();
        a2 = v55;
        v43 = v75;
      }

      v58 = v89;
      TemplatingText.init(text:speakableTextOverride:)();
      v59 = v90;
      (*v80)(v85, v58, v90);
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v59);

      v60 = v91;
      TemplatingSection.init(id:content:caption:spokenOnly:)();
      v61 = v81;
      (*v79)(v92, v60, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        v42 = v65;
      }

      v62 = v82;
      v64 = v42[2];
      v63 = v42[3];
      if (v64 >= v63 >> 1)
      {
        v66 = OUTLINED_FUNCTION_14_8(v63);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66, v64 + 1, 1, v42);
        v42 = v67;
      }

      ++v41;
      (*(v62 + 8))(v91, v61);
      (*v77)(v89, v90);
      v42[2] = v64 + 1;
      (*(v62 + 32))(v42 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, v92, v61);
      v40 += 16;
      if (v84 == v41)
      {

        v30 = v71;
        v32 = v70;
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v69 = v73;
  v68 = v74;
  (*(v32 + 104))(v73, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v30);
  static TemplatingResult.getBehaviorAfterSpeaking(behavior:)(v68);
  (*(v32 + 8))(v69, v30);
  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

void *CATSpeakableString.init(_:speak:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = &qword_216000;
  if (os_log_type_enabled(v10, v11))
  {
    v39 = a1;
    v13 = 0x7974706D65;
    v14 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_20_6();
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v41);
    *(v14 + 12) = 2080;
    if (a4)
    {
      v13 = a3;
      v15 = a4;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v41);

    *(v14 + 14) = v16;
    a1 = v39;
    _os_log_impl(&dword_0, v10, v11, "CATSpeakableString print: %s, speak: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    v12 = &qword_216000;
    OUTLINED_FUNCTION_15_0();
  }

  type metadata accessor for CATSpeakableString();
  static CATSpeakableString.stripTTSHint(print:)(a1, a2, v17, v18, v19, v20, v21, v22, v38, v39, a3);
  v4[2] = v23;
  v4[3] = v24;
  if (a4)
  {
  }

  v25 = static CATSpeakableString.applyTTSHint(speak:)();
  v27 = v26;

  v4[4] = v25;
  v4[5] = v27;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_20_6();
    *v30 = v12[341];
    v31 = v5[2];
    v32 = v5[3];

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v41);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    if (v5[5])
    {
      v34 = v5[4];
      v35 = v5[5];
    }

    else
    {
      v34 = 0x7974706D65;
      v35 = 0xE500000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v41);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_0, v28, v29, "CATSpeakableString new print: %s, new speak: %s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  return v5;
}

void static CATSpeakableString.stripTTSHint(print:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  OUTLINED_FUNCTION_16_10();
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 parseAnnotatedString:v12];

  v14 = [v13 components];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20WFTTSStringComponent_pMd, &_sSo20WFTTSStringComponent_pMR);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    OUTLINED_FUNCTION_18_9();
    v30 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v15 = v30;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    if (swift_dynamicCastMetatype() || (v28 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8))) == 0)
    {
LABEL_3:
    }

    else
    {
      v29 = (v16 + 32);
      while (*v29)
      {
        ++v29;
        if (!--v28)
        {
          goto LABEL_3;
        }
      }

      v15 = v16 | 1;
    }
  }

  v17 = specialized Array.count.getter(v15);
  if (v17)
  {
    v18 = v17;
    if (v17 >= 1)
    {
      v19 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v15 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          break;
        }

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (!v22)
        {
          goto LABEL_14;
        }

        v23 = [v22 displayString];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27._countAndFlagsBits = v24;
        v27._object = v26;
        String.append(_:)(v27);
        swift_unknownObjectRelease();

LABEL_15:
        if (v18 == ++v19)
        {
          goto LABEL_16;
        }
      }

      v21._countAndFlagsBits = a10;
      v21._object = a11;
      String.append(_:)(v21);

LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_15_10();
  }
}

uint64_t static CATSpeakableString.applyTTSHint(speak:)()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 parseAnnotatedString:v1];

  v3 = [v2 components];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20WFTTSStringComponent_pMd, &_sSo20WFTTSStringComponent_pMR);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = &type metadata for Swift.AnyObject;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFF8;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  if (swift_dynamicCastMetatype() || (v33 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8))) == 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  v34 = (v6 + 32);
  while (*v34)
  {
    ++v34;
    if (!--v33)
    {
      goto LABEL_3;
    }
  }

  v4 = v6 | 1;
LABEL_4:
  result = specialized Array.count.getter(v4);
  if (!result)
  {

    return 0;
  }

  v8 = result;
  if (result >= 1)
  {
    v36 = v2;
    v9 = 0;
    v10 = &type metadata for String;
    v11 = v4 & 0xC000000000000001;
    v2 = &_s12SiriOntology39UsoEntityBuilder_common_MeasurementUnitCAA0cde9Protocol_f1_gH0AAWP_ptr;
    v37 = result;
    while (1)
    {
      if (v11)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v4 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        String.append(_:)(v38);
      }

      else
      {
        v13 = v2[496];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [v14 seconds];
          [v15 doubleValue];
          v17 = v16;

          v18 = round(v17 * 1000.0);
          if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            OUTLINED_FUNCTION_18_9();
            v35 = _bridgeCocoaArray<A>(_:)();
            swift_bridgeObjectRelease_n();
            v4 = v35;
            goto LABEL_4;
          }

          if (v18 <= -9.22337204e18)
          {
            goto LABEL_31;
          }

          if (v18 >= 9.22337204e18)
          {
            goto LABEL_32;
          }

          v38._countAndFlagsBits = 0x3D65737561705C1BLL;
          v38._object = 0xE800000000000000;
          v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v19);

          v20._countAndFlagsBits = 92;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);
          v21._countAndFlagsBits = 0x3D65737561705C1BLL;
          v21._object = 0xE800000000000000;
          String.append(_:)(v21);
          swift_unknownObjectRelease();
          goto LABEL_20;
        }

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = [v22 spokenString];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v11;
          v26 = v4;
          v27 = v10;
          v28 = v5;
          v29 = v2;
          v31 = v30;

          v32._countAndFlagsBits = v24;
          v32._object = v31;
          String.append(_:)(v32);
          swift_unknownObjectRelease();
          v2 = v29;
          v5 = v28;
          v10 = v27;
          v4 = v26;
          v11 = v25;
          v8 = v37;
LABEL_20:

          goto LABEL_21;
        }
      }

      swift_unknownObjectRelease();
LABEL_21:
      if (v8 == ++v9)
      {

        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall CATSpeakableString.toString()()
{
  v1 = v0[5];
  if (!v1)
  {
    v4 = v0[2];
    v2 = v0[3];
LABEL_9:

    goto LABEL_10;
  }

  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  if (v4 == v3 && v1 == v2)
  {
    goto LABEL_9;
  }

  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_9;
  }

  v10._countAndFlagsBits = v4;
  v10._object = v2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x3A7374742FLL;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v3;
  v12._object = v1;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v4 = 5985107;
  v2 = 0xE300000000000000;
LABEL_10:
  v14 = v4;
  v15 = v2;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t CATSpeakableString.asSpeakableString.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return SpeakableString.init(print:speak:)();
}

double static CATSpeakableString.resolveVariable(variable:intent:intentResponse:tokens:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (a5)
  {
    if (*(a5 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v13)
      {
        outlined init with copy of Any(*(a5 + 56) + 32 * v12, &v22);
LABEL_13:
        outlined init with take of Any(&v22, v21);
        v16 = v21;
        goto LABEL_14;
      }
    }
  }

  if (a4)
  {
    v14 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(a4);
    if (v14)
    {
      v15 = v14;
      *&v19 = a1;
      *(&v19 + 1) = a2;

      AnyHashable.init<A>(_:)();
      specialized Dictionary.subscript.getter(v21, v15, &v19);

      outlined destroy of AnyHashable(v21);
      if (v20)
      {
        outlined init with take of Any(&v19, &v22);
        v16 = &v22;
LABEL_14:
        outlined init with take of Any(v16, a6);
        return result;
      }

      outlined destroy of Any?(&v19, &_sypSgMd, &_sypSgMR);
    }
  }

  if (a3)
  {
    v17 = outlined bridged method (pb) of @objc INIntent.parametersByName.getter(a3);
    if (v17)
    {
      specialized Dictionary.subscript.getter(a1, a2, v17, &v22);

      if (v23)
      {
        goto LABEL_13;
      }

      outlined destroy of Any?(&v22, &_sypSgMd, &_sypSgMR);
    }
  }

  result = 0.0;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}

uint64_t CATSpeakableString.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CATSpeakableString.__deallocating_deinit()
{
  CATSpeakableString.deinit();

  return swift_deallocClassInstance();
}

uint64_t static TemplatingResult.getBehaviorAfterSpeaking(behavior:)@<X0>(uint64_t a1@<X8>)
{
  if (static TemplatingResult.getListenAfterSpeakingDisabled()())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "ListenAfterSpeakingDisabled is set to true", v5, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v6 = enum case for BehaviorAfterSpeaking.continueWithoutListening(_:);
    v7 = type metadata accessor for BehaviorAfterSpeaking();
    v8 = OUTLINED_FUNCTION_7(v7);
    v10 = *(v9 + 104);

    return v10(a1, v6, v8);
  }

  else
  {
    v12 = type metadata accessor for BehaviorAfterSpeaking();
    OUTLINED_FUNCTION_7(v12);
    v14 = *(v13 + 16);
    v15 = OUTLINED_FUNCTION_22();

    return v16(v15);
  }
}

id static TemplatingResult.getListenAfterSpeakingDisabled()()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001BLL, 0x80000000002316C0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
    v5 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v5];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
  }

  return v4;
}

Swift::String_optional __swiftcall TemplatingResult.firstSectionContentText()()
{
  v0 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v12, v11);

  v13 = type metadata accessor for TemplatingSection();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    outlined destroy of Any?(v11, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    TemplatingSection.content.getter();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = TemplatingText.text.getter();
    v15 = v16;
    (*(v2 + 8))(v7, v0);
  }

  v17 = v14;
  v18 = v15;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [SFCardSection] and conformance [A](&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [SFCardSection] and conformance [A](&lazy protocol witness table cache variable for type [SFCardSection] and conformance [A], &_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [SFCardSection] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void OUTLINED_FUNCTION_11_7(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_9()
{
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return static SiriKitLifecycle._logCrashToEventBus(_:)();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

BOOL static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ResponseMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.responseMode.getter();

  static ResponseMode.voiceOnly.getter();
  v14 = static ResponseMode.== infix(_:_:)();
  v40 = *(v4 + 8);
  v40(v11, v3);
  if (v14)
  {
    v39 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_21();
    v39 = dispatch thunk of DeviceState.isHomePod.getter();
  }

  OUTLINED_FUNCTION_1_21();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_1_21(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_1_21(), (dispatch thunk of DeviceState.isPod.getter()))
  {
    v38 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_21();
    v38 = dispatch thunk of DeviceState.isXRDevice.getter();
  }

  v15 = [a2 _metadata];
  if (v15)
  {
    v16 = v15;
    LODWORD(v17) = [v15 showsWhenRun];
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  (*(v4 + 16))(v8, v13, v3);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315906;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v8;
    v26 = v17;
    v17 = v27;
    v40(v25, v3);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v17, &v41);
    LOBYTE(v17) = v26;

    *(v22 + 4) = v28;
    *(v22 + 12) = 1024;
    v29 = v39;
    *(v22 + 14) = v39 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v26;
    *(v22 + 24) = 1024;
    v30 = v38;
    *(v22 + 26) = v38 & 1;
    _os_log_impl(&dword_0, v19, v20, "#CustomIntentSnippetProvider responseMode: %s, isVox: %{BOOL}d, showsWhenRun: %{BOOL}d, userCanInteractWithButton: %{BOOL}d", v22, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_0();
    v13 = v37;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v40(v8, v3);
    v30 = v38;
    v29 = v39;
  }

  v31 = v29 | v17 ^ 1 | v30 ^ 1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    if (v31)
    {
      v34 = "#CustomIntentSnippetProvider isDoneButtonEligible - NOT eligible";
    }

    else
    {
      v34 = "#CustomIntentSnippetProvider isDoneButtonEligible returning true";
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v40(v13, v3);
  return (v31 & 1) == 0;
}

uint64_t AppShortcutGeneralizedInvocation.parameterIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *CustomIntentSnippetProvider.__allocating_init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[3] = a1;
  v10[4] = a2;
  v10[2] = a3;
  outlined init with take of Output(a4, v10 + 5);
  v10[10] = a5;
  return v10;
}

void *CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = a3;
  outlined init with take of Output(a4, v5 + 5);
  v5[10] = a5;
  return v5;
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[98] = v8;
  v9[97] = v11;
  v9[96] = a8;
  v9[95] = a7;
  v9[94] = a6;
  v9[93] = a5;
  v9[92] = a4;
  v9[91] = a3;
  v9[90] = a2;
  v9[89] = a1;
  return _swift_task_switch(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:), 0, 0);
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[98];
  type metadata accessor for VoiceShortcutClientWrapper();
  v2 = swift_allocObject();
  v0[99] = v2;
  v3 = swift_task_alloc();
  v0[100] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15VCVoiceShortcutCSgMd, &_sSo15VCVoiceShortcutCSgMR);
  swift_asyncLet_begin();
  v0[88] = _swiftEmptyArrayStorage;
  v4 = OUTLINED_FUNCTION_12_9();

  return _swift_asyncLet_get(v4);
}

{
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

{
  v1 = *(v0 + 784);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 696);
  OUTLINED_FUNCTION_48_2();
  static CustomIntentPlatformSpecificSnippets.buildIntentsSnippet(app:intent:intentResponse:isForConfirmation:vcShortcut:device:)();
  v7 = v6;

  if (specialized Array.count.getter(v7))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 32);
    }

    OUTLINED_FUNCTION_4_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    [objc_allocWithZone(SAUISnippet) init];
  }

  static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 704) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 704) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_48_2();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 808) = *(v0 + 704);
  v9 = OUTLINED_FUNCTION_12_9();

  return _swift_asyncLet_finish(v9);
}

{
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[100];
  v2 = v0[99];

  OUTLINED_FUNCTION_6_6();
  v4 = v0[101];

  return v3(v4);
}

uint64_t implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:), 0, 0);
}

uint64_t implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[4];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:);
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_48_2();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  return _swift_task_switch(implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:));
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[8];
  type metadata accessor for VoiceShortcutClientWrapper();
  v0[10] = swift_initStackObject();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  return _swift_task_switch(CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_3_13();
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_3_13(), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    v3 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64();
    *(v4 + 16) = xmmword_216010;
    v5 = static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)();
LABEL_4:
    *(v4 + 32) = v5;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_13();
  v21 = dispatch thunk of DeviceState.isWatch.getter();
  v22 = *(v0 + 48);
  if (v21)
  {
    v23 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64();
    *(v4 + 16) = xmmword_216010;
    static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)();
    goto LABEL_4;
  }

  v24 = [*(v0 + 48) _metadata];
  if (v24 && (v25 = v24, v26 = [v24 showsWhenRun], v25, !v26))
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    v27 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64();
    *(v4 + 16) = xmmword_216010;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v28 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v29 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

    v30 = static CasinoFactory.makePlaceholderCardSection()();
    v31 = OUTLINED_FUNCTION_64();
    *(v31 + 16) = xmmword_216010;
    *(v31 + 32) = v29;
    v32 = v29;
    outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v31, v30);
    [v38 _code];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v33 = OUTLINED_FUNCTION_64();
    *(v33 + 16) = xmmword_216010;
    *(v33 + 32) = v30;
    v34 = v30;
    v35 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

    v36 = OUTLINED_FUNCTION_64();
    *(v36 + 16) = xmmword_216010;
    *(v36 + 32) = v28;
    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v36, v35);

    *(v4 + 32) = v35;
  }

LABEL_5:
  if (v4 >> 62)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v6 = v4;
  }

  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);

  *(v0 + 32) = v6;
  v9 = *(v7 + 80);
  if (static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(v2 + 40, v8) && (v10 = (*(**(v0 + 64) + 144))(*(v0 + 48), *(v0 + 56), *(v0 + 40)), (*(v0 + 112) = v10) != 0))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.voiceCommands);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "CustomIntentSnippetProvider makeAceViewsForHandleIntentWithUser - Creating done button in the handle view", v14, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v15 = *(v0 + 64);

    v16 = *(**(v15 + 16) + 400);
    v39 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 120) = v18;
    *v18 = v0;
    v18[1] = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);

    return v39();
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v20(v6);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = [objc_allocWithZone(SAUIButton) init];
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v2, v1, v4, &selRef_setText_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64();
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v3;
  v6 = v3;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v5, v4);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = v4;
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v7, v9, v10, &selRef_setItemType_);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v11 = *(v0 + 112);
  OUTLINED_FUNCTION_48_2();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = *(v0 + 32);

  OUTLINED_FUNCTION_6_6();

  return v13(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v10 = *(v9 + 120);
  v11 = *v3;
  OUTLINED_FUNCTION_3_0();
  *v12 = v11;
  v7[16] = v2;

  if (v2)
  {
    v13 = v7[13];

    v14 = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);
  }

  else
  {
    v7[17] = a2;
    v7[18] = a1;
    v14 = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:));
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  static CustomIntentPlatformSpecificSnippets.buildConfirmationSnippet(app:yes:no:device:)();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = OUTLINED_FUNCTION_64();
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v10;
  OUTLINED_FUNCTION_6_6();

  return v12();
}

id CustomIntentSnippetProvider.makeDirectInvocation(customIntent:intentResponse:app:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4[4];
  v25[0] = v4[3];
  v25[1] = v7;
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;

  v8 = a1;
  v9 = a2;

  v10 = static ShortcutDoneButtonConverter.toUserData(shortcutDoneButton:)(v25);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v24 = v9;
    v12 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
    v14 = v13;

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v14, v12);
    v15 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    v16 = DeviceState.asInvocationContext.getter();
    [v16 setInputOrigin:SAInputOriginDialogButtonTapValue];
    v17 = objc_opt_self();
    v18 = [v17 runSiriKitExecutorCommandWithContext:v16 payload:v12];
    v19 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
    v20 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
    v21 = String._bridgeToObjectiveC()();
    [v20 setBundleId:v21];

    [v19 setRequestedApp:v20];
    [v18 setAppSelectionState:v19];

    v22 = [v17 wrapCommandInStartLocalRequest:v18];

    v9 = v24;
  }

  else
  {

    v22 = 0;
  }

  return v22;
}

id SKIDirectInvocationPayload.__allocating_init(identifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_48_2();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

void *CustomIntentSnippetProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[10];

  return v0;
}

uint64_t CustomIntentSnippetProvider.__deallocating_deinit()
{
  CustomIntentSnippetProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode()
{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    type metadata accessor for ResponseMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    type metadata accessor for ResponseMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:);

  return implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(v3, v5, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserData:isa];
}

void outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SAUIButton.text.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_13()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_18()
{
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[92];
}

uint64_t AppShortcutGeneralizedInvocation.bundleId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t *ShortcutsLinkPromptForConfirmationFlowStrategy.__allocating_init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  swift_allocObject();
  v12 = a7[3];
  v48 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_1(a7, v12);
  OUTLINED_FUNCTION_13_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v17 = OUTLINED_FUNCTION_20_7(v16);
  v18(v17);
  v19 = a9[3];
  v47 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  OUTLINED_FUNCTION_13_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v24 = OUTLINED_FUNCTION_19_5(v23);
  v25(v24);
  v27 = a10[3];
  v26 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v27);
  OUTLINED_FUNCTION_13_1();
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  OUTLINED_FUNCTION_17_10();
  v41 = OUTLINED_FUNCTION_30_4(a1, a2, v35, v36, v37, v38, v39, v40, v10, v33, v43, v44, v45, v46, v19, v27, v12, v47, v26, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v41;
}

uint64_t *ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v12 = a7[3];
  v48 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_1(a7, v12);
  OUTLINED_FUNCTION_13_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v17 = OUTLINED_FUNCTION_20_7(v16);
  v18(v17);
  v19 = a9[3];
  v47 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  OUTLINED_FUNCTION_13_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v24 = OUTLINED_FUNCTION_19_5(v23);
  v25(v24);
  v27 = a10[3];
  v26 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v27);
  OUTLINED_FUNCTION_13_1();
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  OUTLINED_FUNCTION_17_10();
  v41 = OUTLINED_FUNCTION_30_4(a1, a2, v35, v36, v37, v38, v39, v40, v10, v33, v43, v44, v45, v46, v19, v27, v12, v47, v26, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v41;
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  OUTLINED_FUNCTION_27_6();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  Input.parse.getter();
  v18 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v9);
  (*(v3 + 8))(v9, v1);
  if (v18 == 3)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v9 = v0[12];

  outlined init with copy of DeviceState(v9 + 272, (v0 + 2));
  v10 = v0[5];
  v11 = v0[6];
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  v12 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v13;
  *v13 = v14;
  v13[1] = closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[15];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkPromptForConfirmationFlowStrategy failed to submit empty output to clear screen", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for Parse();
  v1[8] = v10;
  v11 = *(v10 - 8);
  v1[9] = v11;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v0 = OUTLINED_FUNCTION_52();
    *v0 = 0;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v4, v5, v6, v7, v0, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_29_5();
  v8 = enum case for ConfirmationResponse.confirmed(_:);
  v9 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_26_7(v9);
  (*(v10 + 104))(v0, v8, v1);
  v11 = OUTLINED_FUNCTION_16_11();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  SimpleConfirmationResponseProvider.init(_:)();

  OUTLINED_FUNCTION_6_7();

  return v14();
}

void ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v27 = v22[9];
  v26 = v22[10];
  v28 = v22[8];
  v29 = v22[3];
  Input.parse.getter();
  LOBYTE(v29) = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v26);
  v30 = *(v27 + 8);
  v31 = OUTLINED_FUNCTION_9_3();
  v32(v31);
  switch(v29)
  {
    case 1:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.voiceCommands);
      Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_30_1(v48))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    case 2:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.voiceCommands);
      Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v41))
      {
LABEL_17:
        v49 = OUTLINED_FUNCTION_52();
        *v49 = 0;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v50, v51, v52, v28, v49, 2u);
        OUTLINED_FUNCTION_15_0();
      }

LABEL_18:
      OUTLINED_FUNCTION_29_5();
      v53 = enum case for ConfirmationResponse.rejected(_:);
      v54 = type metadata accessor for ConfirmationResponse();
      OUTLINED_FUNCTION_26_7(v54);
      (*(v55 + 104))(v28, v53, v23);
      v56 = OUTLINED_FUNCTION_16_11();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v23);
      SimpleConfirmationResponseProvider.init(_:)();

      OUTLINED_FUNCTION_6_7();
      OUTLINED_FUNCTION_6_1();

      v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
      break;
    case 3:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v43 = v22[5];
      v42 = v22[6];
      v44 = type metadata accessor for Logger();
      v45 = __swift_project_value_buffer(v44, static Logger.voiceCommands);
      v46 = *(v44 - 8);
      (*(v46 + 16))(v42, v45, v44);
      __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
      outlined init with copy of Logger?(v42, v43);
      if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
      {
        outlined destroy of Logger?(v22[5]);
      }

      else
      {
        v67 = v22[5];
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          a11 = swift_slowAlloc();
          *v70 = 136315650;
          v71 = StaticString.description.getter();
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &a11);

          *(v70 + 4) = v73;
          *(v70 + 12) = 2048;
          *(v70 + 14) = 80;
          *(v70 + 22) = 2080;
          *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x80000000002317D0, &a11);
          _os_log_impl(&dword_0, v68, v69, "FatalError at %s:%lu - %s", v70, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        (*(v46 + 8))(v22[5], v44);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      _assertionFailure(_:_:file:line:flags:)();
      OUTLINED_FUNCTION_6_1();
      break;
    default:
      v33 = [*(v22[4] + 32) systemProtocols];
      type metadata accessor for LNSystemProtocol();
      v22[11] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v22[12] = v34;
      *v34 = v35;
      v34[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:);
      OUTLINED_FUNCTION_6_1();

      static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v36, v37, v38);
      break;
  }
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[41] = v2;
  v1[42] = v0;
  v1[40] = v3;
  v1[43] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[44] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[45] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[46] = v10;
  v11 = *(v10 - 8);
  v1[47] = v11;
  v12 = *(v11 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v13 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v1[50] = OUTLINED_FUNCTION_28();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_21_1();
  v1 = *(v0 + 400);
  v2 = *(v0 + 352);
  v20 = *(v0 + 360);
  v21 = *(v0 + 392);
  v3 = *(v0 + 336);
  outlined init with copy of DeviceState(v3 + 192, v0 + 144);
  v4 = *(v3 + 56);
  type metadata accessor for RunLinkActionCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v7 = CATWrapperSimple.__allocating_init(options:globals:)();
  v8 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 408) = inited;
  inited[14] = v8;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v9;
  outlined init with take of AceServiceInvokerAsync((v0 + 144), (inited + 2));
  inited[7] = v5;
  inited[8] = v4;
  inited[9] = v6;
  inited[10] = v7;
  v11 = *(v3 + 24);
  *(v0 + 416) = v11;
  *(v0 + 424) = [v11 dialog];
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for WorkflowNLContextProvider();
  swift_initStackObject();
  OUTLINED_FUNCTION_11_1();
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  type metadata accessor for NLContextUpdate();
  v12 = OUTLINED_FUNCTION_16_11();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OutputGenerationManifest.nlContextUpdate.setter();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v16 = swift_task_alloc();
  *(v0 + 432) = v16;
  *v16 = v0;
  v16[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v17 = *(v0 + 328);
  OUTLINED_FUNCTION_6_1();

  return LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  *v3 = *v1;
  *(v2 + 440) = v6;
  *(v2 + 448) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 416);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = [*(v0 + 440) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  outlined init with copy of DeviceState(v6 + 192, v0 + 184);
  outlined init with copy of DeviceState(v6 + 152, v0 + 224);
  (*(v5 + 16))(v3, v2, v4);
  outlined init with copy of DeviceState(v6 + 112, v0 + 264);
  v8 = [v1 viewSnippet];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 viewData];

    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  *(v0 + 456) = v9;
  *(v0 + 464) = v12;
  v13 = *(v0 + 424);
  v14 = *(v0 + 336);
  v15 = *(v14 + 40);
  v16 = *(v14 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 472) = v17;
  *v17 = v18;
  v17[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v19 = *(v0 + 440);
  v20 = *(v0 + 384);
  v21 = *(v0 + 320);

  return static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(v21, v0 + 184, v0 + 224, v19, v20, v0 + 264, v9, v12);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = v5[59];
  v7 = v5[58];
  v8 = v5[57];
  v9 = v5[48];
  v10 = v5[47];
  v11 = v5[46];
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;
  v3[60] = v0;

  outlined consume of Data?(v8, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 33);
  v14 = *(v10 + 8);
  v3[61] = v14;
  v3[62] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 23);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v15, v16, v17);
}

{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v12 = *(v0 + 352);

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();
  v2(v6, v8);

  OUTLINED_FUNCTION_6_7();

  return v10();
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_9_3();
  v7(v6);
  v8 = *(v0 + 448);
  v10 = *(v0 + 392);
  v9 = *(v0 + 400);
  v11 = *(v0 + 384);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);

  OUTLINED_FUNCTION_6_0();

  return v14();
}

{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 368);

  v7 = OUTLINED_FUNCTION_9_3();
  v2(v7);
  v8 = *(v0 + 480);
  v10 = *(v0 + 392);
  v9 = *(v0 + 400);
  v11 = *(v0 + 384);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);

  OUTLINED_FUNCTION_6_0();

  return v14();
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 280) = a3;
  *(v8 + 288) = a4;
  *(v8 + 264) = a1;
  *(v8 + 272) = a2;
  v9 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[34];
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = v12[35];
    v17 = v12[36];
    v18 = v16[3];
    v19 = v16[4];
    OUTLINED_FUNCTION_47(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v20 = swift_allocObject();
    v12[51] = v20;
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v17;
    v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[52] = v26;
    *v26 = v27;
    v26[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
    v28 = v12[37];
    v29 = v12[33];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v29, v20, v28, v18, v19, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v30 = v12[38];
    v31 = v30[3];
    v32 = v30[4];
    OUTLINED_FUNCTION_47(v30);
    v33 = *(v32 + 8);
    v38 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    v12[44] = v35;
    *v35 = v12;
    v35[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
    v36 = OUTLINED_FUNCTION_9_3();

    return v38(v36);
  }
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 352);
  *v3 = *v1;
  v2[45] = v6;
  v2[46] = v7;
  v2[47] = v8;
  v2[48] = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_6_0();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 224));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.ConfirmActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 416);
  v3 = *(v1 + 408);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_7();

  return v6();
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[42];
  v26 = v22[43];
  v27 = v22[34];
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v28 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v27, 2);
  v30 = v29;

  if (v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = v22[43];
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.voiceCommands);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v39 = v22[42];
      v38 = v22[43];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      a11 = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &a11);
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v42, v43, v44, v45, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }
  }

  if (v22[41])
  {
    v46 = v22[36];
    v49 = DialogExecutionResult.firstDialogFullPrint()();
    object = v49.value._object;
    countAndFlagsBits = v49.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v51 = v22[47];
  v50 = v22[48];
  v52 = *(v22 + 45);
  v53 = v22[43];
  v55 = v22[39];
  v54 = v22[40];
  v56 = v22[35];
  v57 = v22[36];
  v22[2] = v22[42];
  v22[3] = v53;
  v22[4] = v31;
  v22[5] = v32;
  *(v22 + 3) = v52;
  v22[8] = v51;
  v22[9] = v50;
  v22[10] = v55;
  v22[11] = v54;
  *(v22 + 96) = 0;
  v22[13] = countAndFlagsBits;
  v22[14] = object;
  v58 = v56[3];
  v76 = v56[4];
  OUTLINED_FUNCTION_47(v56);
  v22[31] = type metadata accessor for WorkflowDataModels(0);
  v22[32] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 28);
  memcpy(boxed_opaque_existential_1, v22 + 2, 0x68uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_27_6();
  v60 = swift_allocObject();
  v22[49] = v60;
  *(v60 + 16) = xmmword_216010;
  *(v60 + 32) = v57;

  outlined copy of Data?(v55, v54);
  outlined init with copy of WorkflowDataModels.ConfirmActionModel((v22 + 2), (v22 + 15));
  v61 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v62 = v57;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v22[50] = v63;
  *v63 = v64;
  v63[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
  v65 = v22[37];
  v66 = v22[33];
  OUTLINED_FUNCTION_6_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v67, v68, v69, v70, v71, v72, v73, v74, a9, v76, a11, a12);
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v3 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  return v0;
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t *specialized ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a14[11] = a17;
  a14[12] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a14 + 8);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a7, a17);
  a14[17] = a15;
  a14[18] = a18;
  v23 = __swift_allocate_boxed_opaque_existential_1(a14 + 14);
  (*(*(a15 - 8) + 32))(v23, a9, a15);
  a14[22] = a16;
  a14[23] = a19;
  v24 = __swift_allocate_boxed_opaque_existential_1(a14 + 19);
  (*(*(a16 - 8) + 32))(v24, a10, a16);
  a14[2] = a1;
  a14[3] = a2;
  a14[4] = a3;
  a14[5] = a4;
  a14[6] = a5;
  a14[7] = a6;
  a14[13] = a8;
  outlined init with take of AceServiceInvokerAsync(a11, (a14 + 24));
  outlined init with take of AceServiceInvokerAsync(a12, (a14 + 29));
  outlined init with take of AceServiceInvokerAsync(a13, (a14 + 34));
  return a14;
}

uint64_t sub_82014()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_29_5()
{
  v3 = v1[10];
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[5];
  v7 = v1[2];
}

uint64_t *OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *(v21 - 120);
  v24 = *(v21 - 112);
  v25 = *(v21 - 104);
  v26 = *(v21 - 96);
  v27 = *(v21 - 88);

  return specialized ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(a1, a2, v23, v24, v25, v26, v20, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t *VoiceCommandsAppPolicyHandler.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  return &static VoiceCommandsAppPolicyHandler.instance;
}

void *one-time initialization function for instance()
{
  type metadata accessor for VoiceCommandsAppPolicyHandler();
  OUTLINED_FUNCTION_27_6();
  swift_allocObject();
  result = VoiceCommandsAppPolicyHandler.().init()();
  static VoiceCommandsAppPolicyHandler.instance = result;
  return result;
}

uint64_t static VoiceCommandsAppPolicyHandler.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }
}

void *VoiceCommandsAppPolicyHandler.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v1[2] = 0;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = &_swiftEmptyDictionarySingleton;
  v11 = objc_allocWithZone(DMFApplicationPolicyMonitor);

  v12 = @nonobjc DMFApplicationPolicyMonitor.init(policyChangeHandler:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.().init(), v1);
  v13 = v1[2];
  v1[2] = v12;

  return v1;
}

Swift::Bool __swiftcall VoiceCommandsAppPolicyHandler.isAllowedByScreenTime(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v27 = v7;
    *v6 = 136315138;
    *(v6 + 4) = OUTLINED_FUNCTION_10_13(v7);
    _os_log_impl(&dword_0, v4, v5, "VoiceCommandsAppPolicyHandler isAllowedByScreenTime called for : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v8 = VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(countAndFlagsBits, object);
  v10 = v9;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_48();
      v15 = OUTLINED_FUNCTION_85();
      v27 = v15;
      *v14 = 136315138;
      *(v14 + 4) = OUTLINED_FUNCTION_10_13(v15);
      _os_log_impl(&dword_0, v11, v12, "VoiceCommandsAppPolicyHandler isAllowedByScreenTime, policy undefined for app. Default to enabled. %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    return 1;
  }

  else
  {
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = OUTLINED_FUNCTION_10_13(v18);
      *(v17 + 12) = 2080;
      v19 = DMFPolicy.debugDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

      *(v17 + 14) = v21;
      OUTLINED_FUNCTION_8_14();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_0();
    }

    return v8 == 0;
  }
}

uint64_t VoiceCommandsAppPolicyHandler.executeWithApps(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 24);
  static DispatchWorkItemFlags.barrier.getter();
  OUTLINED_FUNCTION_21();
  v11 = swift_allocObject();
  swift_weakInit();
  v14 = v11;
  v15 = a1;
  v16 = a2;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in VoiceCommandsAppPolicyHandler.executeWithApps(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    a2(v4 + 32);
    swift_endAccess();
  }

  return result;
}

uint64_t VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v16 = OUTLINED_FUNCTION_85();
    *(v7 + 4) = OUTLINED_FUNCTION_13_10(4.8149e-34, v16);
    OUTLINED_FUNCTION_8_14();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_11_0();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.register(bundleIdentifier:), v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_216850;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(v14);
}

void closure #1 in VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(*a1 + 16))
  {
    v6 = *a1;

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    if (v8)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v8)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    _os_log_impl(&dword_0, v10, v11, "VoiceCommandsAppPolicyHandler isRegistered, %s %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if ((v8 & 1) == 0)
  {
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, a2, a3);
    *a1 = v17;
  }
}

uint64_t VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(a1, a2);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v18 = OUTLINED_FUNCTION_85();
    *(v7 + 4) = OUTLINED_FUNCTION_13_10(4.8149e-34, v18);
    OUTLINED_FUNCTION_8_14();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_11_0();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  OUTLINED_FUNCTION_27_6();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;

  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:), v14);

  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);

  return v15;
}

void closure #1 in VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized Dictionary.subscript.getter(a3, a4, *a1);
  v7 = v6;
  swift_beginAccess();
  *(a2 + 16) = v5;
  *(a2 + 24) = v7 & 1;
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
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v13 = *(a2 + 24);
    v20[1] = *(a2 + 16);
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9DMFPolicyVSgMd, &_sSo9DMFPolicyVSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "VoiceCommandsAppPolicyHandler getDMFPolicy, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  swift_beginAccess();
  if (*(a2 + 24) == 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "VoiceCommandsAppPolicyHandler checkPolicy, app policy undefined", v19, 2u);
    }
  }
}

uint64_t VoiceCommandsAppPolicyHandler.refreshAllAppsAsync()()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.refreshAllAppsAsync(), v0);
  swift_beginAccess();
  VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(*v1);
}

uint64_t closure #1 in VoiceCommandsAppPolicyHandler.refreshAllAppsAsync()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(*a1 + 16), 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v9, v5 + 4, v4, v3);

  outlined consume of Set<String>.Iterator._Variant();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
}

void VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v5, v6, "VoiceCommandsAppPolicyHandler refreshApps : %ld", v7, 0xCu);
    OUTLINED_FUNCTION_11_0();
  }

  else
  {
  }

  if (*(a1 + 16))
  {
    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = v8;
      isa = Array._bridgeToObjectiveC()().super.isa;
      aBlock[4] = partial apply for closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:);
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String : NSNumber]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_4;
      v11 = _Block_copy(aBlock);

      [v9 requestPoliciesForBundleIdentifiers:isa completionHandler:v11];
      _Block_release(v11);

      return;
    }

    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "VoiceCommandsAppPolicyHandler appPolicyMonitor not initialized";
      goto LABEL_13;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "VoiceCommandsAppPolicyHandler refreshApps, no apps registered";
LABEL_13:
      _os_log_impl(&dword_0, oslog, v12, v14, v13, 2u);
      OUTLINED_FUNCTION_15_0();
    }
  }
}

void closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "VoiceCommandsAppPolicyHandler requestPolicies completion returned", v7, 2u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "VoiceCommandsAppPolicyHandler refreshApps appPolicyMonitor requestPolicies has an error : %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
    }

    return;
  }

  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;

    VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:), v15);

    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "VoiceCommandsAppPolicyHandler refreshApps complete";
LABEL_16:
      _os_log_impl(&dword_0, oslog, v16, v18, v17, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "VoiceCommandsAppPolicyHandler refreshApps policies not set";
      goto LABEL_16;
    }
  }
}

uint64_t closure #1 in closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v39 = v2;
  v40 = v7;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(v2 + 48) + 16 * v10);
      v12 = v11[1];
      v44 = *v11;
      v13 = *(*(v2 + 56) + 8 * v10);
      swift_bridgeObjectRetain_n();
      v41 = v13;
      v43 = static DMFPolicy.from(number:)(v41);
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.voiceCommands);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v12, &v45);
        *(v17 + 12) = 2080;
        v18 = 0xEC0000004B4F2E79;
        v19 = 0x63696C6F50464D44;
        switch(v43)
        {
          case 1uLL:
            v18 = 0xEE006E7261772E79;
            break;
          case 2uLL:
            v18 = 0xED00006B73612E79;
            break;
          case 3uLL:
            v19 = 0xD000000000000014;
            v18 = 0x80000000002319C0;
            break;
          case 4uLL:
            v19 = 0xD000000000000011;
            v18 = 0x80000000002319A0;
            break;
          default:
            break;
        }

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v45);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_0, v15, v16, "VoiceCommandsAppPolicyHandler refreshApps, %s to %s", v17, 0x16u);
        swift_arrayDestroy();

        v2 = v39;
      }

      else
      {
      }

      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *a1;
      v23 = v45;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v12);
      v26 = *(v23 + 16);
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      v30 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9DMFPolicyVGMd, &_ss17_NativeDictionaryVySSSo9DMFPolicyVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v12);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_34;
        }

        v29 = v31;
      }

      if (v30)
      {

        v33 = v45;
        *(v45[7] + 8 * v29) = v43;
      }

      else
      {
        v33 = v45;
        v45[(v29 >> 6) + 8] |= 1 << v29;
        v34 = (v33[6] + 16 * v29);
        *v34 = v44;
        v34[1] = v12;
        *(v33[7] + 8 * v29) = v43;

        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_33;
        }

        v33[2] = v37;
      }

      v6 &= v6 - 1;
      *a1 = v33;
      v7 = v40;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    JUMPOUT(0x83EACLL);
  }

  while (1)
  {
LABEL_4:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }
}

id static DMFPolicy.from(number:)(void *a1)
{
  result = [a1 integerValue];
  if (result >= 5)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.voiceCommands);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_48();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_0, v5, v6, "DMFPolicy parse unknown number %@, default to OK", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    return 0;
  }

  return result;
}

uint64_t VoiceCommandsAppPolicyHandler.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t VoiceCommandsAppPolicyHandler.__deallocating_deinit()
{
  VoiceCommandsAppPolicyHandler.deinit();
  OUTLINED_FUNCTION_27_6();

  return swift_deallocClassInstance();
}

id @nonobjc DMFApplicationPolicyMonitor.init(policyChangeHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed () -> ();
    v6[3] = &block_descriptor_25_0;
    v3 = _Block_copy(v6);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPolicyChangeHandler:v3];
  _Block_release(v3);
  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo23INIntentSlotDescriptionC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Sd5valuet_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = a1;
  v6[3] = 2 * ((v7 - 32) / 24);
  return v6;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_84584()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v2, v3, v4);
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_7_10();
  v6 = *(v2 + 56);
  v5 = v2 + 56;
  v7 = *(v5 - 24);
  OUTLINED_FUNCTION_1_22();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      v15 = (*(v0 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v3)))));
      v16 = v15[1];
      v3 &= v3 - 1;
      *v1 = *v15;
      v1[1] = v16;
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v1 += 2;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_7_10();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_1_22();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v3)) | (v14 << 6);
      v16 = (*(v0 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v0 + 56) + 8 * v15);
      v3 &= v3 - 1;
      *v1 = *v16;
      v1[1] = v17;
      v1[2] = v18;
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v1 += 3;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_7_10();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_1_22();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(*(v0 + 48) + 8 * v16);
      v18 = (*(v0 + 56) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      *v1 = v17;
      v1[1] = v20;
      v1[2] = v19;
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v1 += 3;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_20:
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
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
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
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_84958()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_84998()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_84B18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_3_14@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, ...)
{
  va_start(va, a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, va);
}

uint64_t OUTLINED_FUNCTION_13_10(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, va);
}

void Siri_Nlu_External_UserDialogAct.extractAutoShortcutInvocation(groupIndex:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v80 - v8;
  v10 = type metadata accessor for UsoIdentifier();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0);
  if (!v19)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v52, static Logger.voiceCommands);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v54))
    {
      v55 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v55);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    type metadata accessor for AutoShortcutInvocation();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    return;
  }

  v20 = v19;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v101[3])
  {

    outlined destroy of Any?(v101, &_sypSgMd, &_sypSgMR);
LABEL_53:
    type metadata accessor for AutoShortcutInvocation();
    OUTLINED_FUNCTION_37_2();
    goto LABEL_54;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

    goto LABEL_53;
  }

  v21 = v100;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v22 = v101[0];
  if (!v101[0])
  {
LABEL_51:

    goto LABEL_52;
  }

  OUTLINED_FUNCTION_7_11();
  v23 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v23)
  {

    goto LABEL_51;
  }

  v87 = v22;
  v24 = *(v23 + 16);
  if (!v24)
  {

    goto LABEL_51;
  }

  v82 = v20;
  v85 = v21;
  v81 = v9;
  v84 = v3;
  v88 = 0;
  countAndFlagsBits = 0;
  v94 = 0;
  object = 0;
  v86 = 0;
  v91 = 0;
  v96 = 0;
  v99 = 0;
  v26 = v13 + 16;
  v25 = *(v13 + 16);
  v27 = *(v13 + 80);
  OUTLINED_FUNCTION_21_8();
  v83 = v28;
  v30 = v28 + v29;
  v31 = *(v13 + 72);
  v97 = 0x8000000000231AA0;
  v90 = 0x8000000000231A80;
  v92 = IdentifierNamespaceItemId;
  v32 = (v26 - 8);
  v93 = v1;
  v98 = v26;
  do
  {
    v25(v18, v30, v10);
    v33 = UsoIdentifier.groupIndex.getter();
    if ((v33 & 0x100000000) == 0 && v33 == v1)
    {
      v35 = UsoIdentifier.namespace.getter();
      v36 = v34;
      if (v34)
      {
        v37 = v35 == 0xD000000000000018 && v97 == v34;
        if (v37 || (OUTLINED_FUNCTION_20_8() & 1) != 0)
        {

          v96 = UsoIdentifier.value.getter();
          v99 = v38;
          goto LABEL_34;
        }

        v39 = v35 == 0xD000000000000014 && v90 == v36;
        if (v39 || (OUTLINED_FUNCTION_20_8() & 1) != 0)
        {

          v86 = UsoIdentifier.value.getter();
          v91 = v40;
          goto LABEL_34;
        }
      }

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v36)
      {
        if (v41 == v35 && v36 == v42)
        {
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_8();

          if ((v44 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        UsoIdentifier.value.getter();
        v45 = String.extractActionIdentifier()();
        countAndFlagsBits = v45.value._countAndFlagsBits;
        object = v45.value._object;

        v88 = UsoIdentifier.appBundleId.getter();
        v94 = v46;
      }

      else
      {
      }

LABEL_33:
      v1 = v93;
    }

LABEL_34:
    (*v32)(v18, v10);
    v30 += v31;
    --v24;
  }

  while (v24);

  v47 = v99;
  if (!v99)
  {

    goto LABEL_53;
  }

  v48 = v84;
  v50 = v94;
  v49 = object;
  if (!object)
  {

LABEL_58:

    goto LABEL_52;
  }

  if (!v94)
  {

    goto LABEL_58;
  }

  if (v91)
  {

    v51 = v81;
    UUID.init(uuidString:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    type metadata accessor for UUID();
    v51 = v81;
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  }

  v74 = type metadata accessor for AutoShortcutProvider();
  v75 = swift_allocObject();
  *(v75 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  v76 = type metadata accessor for AutoShortcutInvocation();
  v77 = (v48 + v76[8]);
  v77[3] = v74;
  v77[4] = &protocol witness table for AutoShortcutProvider;
  *v77 = v75;
  v78 = [objc_opt_self() sharedPreferences];

  v79 = countAndFlagsBits;
  *v48 = v88;
  v48[1] = v50;
  v48[2] = v79;
  v48[3] = v49;
  v48[4] = v96;
  v48[5] = v47;
  outlined init with take of UUID?(v51, v48 + v76[7], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v48 + v76[9]) = v78;
  v66 = v48;
  v67 = 0;
  v68 = 1;
  v69 = v76;
LABEL_54:
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_42();
}

void Siri_Nlu_External_UserDialogAct.convertToStarterShortcut()()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgSgMd, &_s10Foundation3URLVSgSgMR);
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_50_0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = OUTLINED_FUNCTION_7_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_50_0();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  if (!specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v41, static Logger.voiceCommands);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v43))
    {
      v44 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v44);
      OUTLINED_FUNCTION_25(&dword_0, v45, v46, "can't extract UsoTask for starterShortcut");
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_30;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v75[3])
  {

    v47 = &_sypSgMd;
    v48 = &_sypSgMR;
    v49 = v75;
LABEL_23:
    outlined destroy of Any?(v49, v47, v48);
    goto LABEL_30;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_26_8() & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v68 = v19;
  v28 = v74;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v29 = v75[0];
  if (!v75[0])
  {
LABEL_26:

    goto LABEL_29;
  }

  v69 = v28;

  v66 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter();
  v31 = v30;

  v67 = v31;
  if (!v31)
  {

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_11();
  v32 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v32)
  {

    goto LABEL_28;
  }

  v65 = v29;
  v73 = *(v32 + 16);
  if (!v73)
  {
LABEL_17:

LABEL_28:

    goto LABEL_29;
  }

  v61 = v15;
  v62 = v6;
  v63 = v12;
  v64 = v5;
  v33 = 0;
  v34 = v68;
  v35 = *(v68 + 80);
  OUTLINED_FUNCTION_21_8();
  v72 = v32 + v36;
  v70 = 0x800000000022FDA0;
  v71 = v34 + 16;
  while (1)
  {
    if (v33 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    (*(v34 + 16))(v24, v72 + *(v34 + 72) * v33, v16);
    v37 = UsoIdentifier.namespace.getter();
    if (!v38)
    {
      goto LABEL_16;
    }

    if (v37 == 0xD000000000000010 && v38 == v70)
    {
      break;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_32;
    }

LABEL_16:
    ++v33;
    (*(v34 + 8))(v24, v16);
    if (v73 == v33)
    {
      goto LABEL_17;
    }
  }

LABEL_32:

  (*(v34 + 32))(v27, v24, v16);
  v50 = UsoIdentifier.value.getter();
  v52 = v51;
  (*(v34 + 8))(v27, v16);
  v54 = v61;
  v53 = v62;
  if (one-time initialization token for semanticToURL != -1)
  {
    swift_once();
  }

  v55 = v64;
  specialized Dictionary.subscript.getter(v50, v52, static TopLevelStarterShortcuts.semanticToURL, v64);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v53);
  v57 = v63;
  if (EnumTagSinglePayload == 1)
  {

    v47 = &_s10Foundation3URLVSgSgMd;
    v48 = &_s10Foundation3URLVSgSgMR;
    v49 = v55;
    goto LABEL_23;
  }

  outlined init with take of UUID?(v55, v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with take of UUID?(v54, v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v58 = type metadata accessor for InstallVoiceShortcutInvocationData();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(v50, v52, v57, v66, v67);
LABEL_30:
  OUTLINED_FUNCTION_42();
}

uint64_t Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMd, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for ShortcutIdentification(0);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  if (!specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0))
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v56)
  {

    outlined destroy of Any?(v55, &_sypSgMd, &_sypSgMR);
LABEL_8:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v24, static Logger.voiceCommands);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v26))
    {
      v27 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v27);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    goto LABEL_13;
  }

  outlined init with take of Any(v55, v57);
  OUTLINED_FUNCTION_22_7();
  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if (swift_dynamicCast())
  {
    ShortcutIdentification.init(runTask:)(v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_30_5(v11);
    if (!v22)
    {
      outlined init with take of ShortcutIdentification(v11, v21, type metadata accessor for ShortcutIdentification);
      v38 = v21;
      v39 = a1;
LABEL_22:
      outlined init with take of ShortcutIdentification(v38, v39, type metadata accessor for ShortcutIdentification);
      v43 = type metadata accessor for VoiceCommandTask(0);
      swift_storeEnumTagMultiPayload();
      v33 = a1;
      v34 = 0;
      v35 = 1;
      v36 = v43;
      return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    }

    v23 = v11;
LABEL_19:
    outlined destroy of Any?(v23, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMd, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMR);
LABEL_13:
    type metadata accessor for VoiceCommandTask(0);
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  OUTLINED_FUNCTION_22_7();
  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if (OUTLINED_FUNCTION_5_9())
  {
    ShortcutIdentification.init(exeTask:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_30_5(v8);
    if (!v22)
    {
      outlined init with take of ShortcutIdentification(v8, v18, type metadata accessor for ShortcutIdentification);
      v38 = v18;
      v39 = a1;
      goto LABEL_22;
    }

    v23 = v8;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_7();
  type metadata accessor for UsoTask_enable_common_Setting();
  if (OUTLINED_FUNCTION_5_9())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

    v40 = v55[0];
    v41 = a1;
    v42 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22_7();
    type metadata accessor for UsoTask_disable_common_Setting();
    if (OUTLINED_FUNCTION_5_9())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

      v40 = v55[0];
      v41 = a1;
      v42 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7();
      type metadata accessor for UsoTask_toggle_common_Setting();
      if (!OUTLINED_FUNCTION_5_9())
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v44 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v44, static Logger.voiceCommands);
        OUTLINED_FUNCTION_22_7();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = OUTLINED_FUNCTION_48();
          v48 = swift_slowAlloc();
          v54 = v48;
          *v47 = 136315138;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          swift_getDynamicType();
          v49 = _typeName(_:qualified:)();
          v51 = v50;
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v54);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_0, v45, v46, "unknown task type: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_8_15();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v55);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        goto LABEL_13;
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

      v40 = v55[0];
      v41 = a1;
      v42 = 2;
    }
  }

  VoiceCommandTask.init(mode:reference:)(v42, v40, v41);

  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

void Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:provider:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v122 = v2;
  v4 = v3;
  v5 = type metadata accessor for UsoIdentifier();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  v120 = v11 - v12;
  OUTLINED_FUNCTION_25_4();
  v14 = __chkstk_darwin(v13);
  v16 = &v110 - v15;
  __chkstk_darwin(v14);
  v18 = &v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_50_0();
  v117 = v23 - v24;
  OUTLINED_FUNCTION_25_4();
  v26 = __chkstk_darwin(v25);
  v28 = &v110 - v27;
  __chkstk_darwin(v26);
  v30 = &v110 - v29;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v31);
  v33 = &v110 - v32;
  v34 = specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0);
  if (!v34)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_30;
  }

  v35 = v34;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v123[3])
  {
    outlined destroy of Any?(v123, &_sypSgMd, &_sypSgMR);
LABEL_34:
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_35:
      v58 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v58, static Logger.voiceCommands);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v60))
      {
        v61 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v61);
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v62, v63, v64, v65, v66, 2u);
        OUTLINED_FUNCTION_8_15();
      }

      goto LABEL_38;
    }

LABEL_91:
    OUTLINED_FUNCTION_0();
    goto LABEL_35;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_26_8() & 1) == 0)
  {
    goto LABEL_34;
  }

  v114 = v35;
  v116 = v28;
  v112 = v1;

  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();
  v121 = v5;
  if (!v123[0])
  {
    v37 = v30;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_11();
  v36 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  v37 = v30;
  if (!v36)
  {
LABEL_41:
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v5);
    goto LABEL_47;
  }

  v110 = v16;
  v111 = v4;
  v113 = v33;
  v4 = 0;
  v38 = *(v36 + 16);
  v118 = v8 + 16;
  v119 = v38;
  while (1)
  {
    if (v119 == v4)
    {

      v33 = v113;
      v70 = v113;
      v71 = 1;
      goto LABEL_46;
    }

    if (v4 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    v39 = *(v8 + 80);
    OUTLINED_FUNCTION_21_8();
    (*(v8 + 16))(v18, v36 + v40 + *(v8 + 72) * v4, v5);
    v41 = UsoIdentifier.namespace.getter();
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v122 & 0x100000000) != 0)
    {
      break;
    }

    if (!v43)
    {
      goto LABEL_24;
    }

    if (v41 == v44 && v43 == v45)
    {
    }

    else
    {
      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_6();

      if ((v41 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v48 = UsoIdentifier.groupIndex.getter();
    if ((v48 & 0x100000000) == 0 && v48 == v122)
    {
      goto LABEL_45;
    }

LABEL_28:
    v5 = v121;
    (*(v8 + 8))(v18, v121);
    ++v4;
    v37 = v30;
  }

  if (!v43)
  {
LABEL_24:

    goto LABEL_28;
  }

  if (v41 != v44 || v43 != v45)
  {
    OUTLINED_FUNCTION_11_8();
    OUTLINED_FUNCTION_29_6();

    if (v41)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

LABEL_45:

  v37 = v30;
  v33 = v113;
  v5 = v121;
  (*(v8 + 32))(v113, v18, v121);
  v70 = v33;
  v71 = 0;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v70, v71, 1, v5);
  v16 = v110;
  v4 = v111;
LABEL_47:
  v72 = v116;
  outlined init with copy of UsoIdentifier?(v33, v37);
  if (__swift_getEnumTagSinglePayload(v37, 1, v5) == 1)
  {

    outlined destroy of Any?(v37, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v73, static Logger.voiceCommands);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_38_4(v75))
    {
      v76 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v76);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v77, v78, v79, v80, v81, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    else
    {
    }

    outlined destroy of Any?(v33, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    goto LABEL_39;
  }

  v119 = *(v8 + 32);
  v119(v16, v37, v5);
  v82 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
  static Siri_Nlu_External_UserDialogAct.logVoiceCommandTaskPayload(_:)(v82);

  v83 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

  v113 = v33;
  if (!v83 || (v84 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter(), , !v84))
  {
    v98 = 1;
LABEL_86:
    __swift_storeEnumTagSinglePayload(v72, v98, 1, v5);
    v99 = UsoIdentifier.appBundleId.getter();
    v122 = v100;
    v101 = UsoIdentifier.value.getter();
    v120 = v102;
    v121 = v101;
    v103 = v117;
    outlined init with copy of UsoIdentifier?(v72, v117);
    if (__swift_getEnumTagSinglePayload(v103, 1, v5) == 1)
    {
      outlined destroy of Any?(v103, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v104 = 0;
      v105 = 0;
    }

    else
    {
      v104 = UsoIdentifier.value.getter();
      v105 = v106;
      (*(v8 + 8))(v103, v5);
    }

    outlined init with copy of DeviceState(v112, v4 + 56);
    v107 = [objc_opt_self() sharedPreferences];

    outlined destroy of Any?(v116, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    (*(v8 + 8))(v16, v5);
    outlined destroy of Any?(v113, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v108 = v122;
    *(v4 + 40) = v99;
    *(v4 + 48) = v108;
    *(v4 + 24) = v104;
    *(v4 + 32) = v105;
    v109 = v120;
    *(v4 + 8) = v121;
    *(v4 + 16) = v109;
    *v4 = v107;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_7_11();
  v85 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v85)
  {
    v98 = 1;
    goto LABEL_86;
  }

  v118 = v8 + 32;
  v110 = v16;
  v111 = v4;
  v86 = 0;
  v4 = *(v85 + 16);
  v87 = v120;
  while (1)
  {
    if (v4 == v86)
    {

      v98 = 1;
      v16 = v110;
      v4 = v111;
      v72 = v116;
      goto LABEL_86;
    }

    if (v86 >= *(v85 + 16))
    {
      break;
    }

    v88 = *(v8 + 80);
    OUTLINED_FUNCTION_21_8();
    (*(v8 + 16))(v87, v85 + v89 + *(v8 + 72) * v86, v5);
    v90 = UsoIdentifier.namespace.getter();
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v122 & 0x100000000) != 0)
    {
      if (!v92)
      {
LABEL_73:

        v87 = v120;
        goto LABEL_77;
      }

      if (v90 == v93 && v92 == v94)
      {

        v87 = v120;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_11_8();
      OUTLINED_FUNCTION_29_6();

      v87 = v120;
      if (v90)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (!v92)
      {
        goto LABEL_73;
      }

      if (v90 == v93 && v92 == v94)
      {

        v87 = v120;
      }

      else
      {
        OUTLINED_FUNCTION_11_8();
        OUTLINED_FUNCTION_29_6();

        v87 = v120;
        if ((v90 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v97 = UsoIdentifier.groupIndex.getter();
      if ((v97 & 0x100000000) == 0 && v97 == v122)
      {
LABEL_83:

LABEL_85:
        v72 = v116;
        v5 = v121;
        v119(v116, v87, v121);
        v98 = 0;
        v16 = v110;
        v4 = v111;
        goto LABEL_86;
      }
    }

LABEL_77:
    v5 = v121;
    (*(v8 + 8))(v87, v121);
    ++v86;
  }

  __break(1u);
LABEL_93:
  OUTLINED_FUNCTION_0();
LABEL_30:
  v49 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v49, static Logger.voiceCommands);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v51))
  {
    v52 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_18_11(v52);
    OUTLINED_FUNCTION_4_20();
    _os_log_impl(v53, v54, v55, v56, v57, 2u);
    OUTLINED_FUNCTION_8_15();
  }

LABEL_38:
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
LABEL_39:
  OUTLINED_FUNCTION_42();
}

uint64_t ShortcutIdentification.init(runTask:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ShortcutIdentification(0);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v20)
  {
    v9 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter();
    v11 = v10;

    if (v11)
    {
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {

        *v8 = v9;
        v8[1] = v11;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_11();
        outlined init with take of ShortcutIdentification(v8, a1, v13);
        v14 = 0;
        return __swift_storeEnumTagSinglePayload(a1, v14, 1, v2);
      }
    }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_52();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "reference-name NOT found in run VoiceCommand task", v18, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v14 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v2);
}

void ShortcutIdentification.init(exeTask:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ShortcutIdentification(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v70 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v74 = &v63 - v14;
  v73 = type metadata accessor for UUID();
  v15 = OUTLINED_FUNCTION_7_1(v73);
  v69 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v68 = v20 - v19;
  v21 = type metadata accessor for UsoIdentifier();
  v22 = OUTLINED_FUNCTION_7_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_50_0();
  v72 = (v27 - v28);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v29);
  v31 = &v63 - v30;
  v75 = v1;
  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();
  v32 = v80;
  if (!v80)
  {
LABEL_23:
    v33 = static ShortcutIdentification.extractShortcutId(identifiers:)(v32);
    v34 = v48;

    v50 = v73;
    v49 = v74;
    if (v34)
    {

      UUID.init(uuidString:)();

      OUTLINED_FUNCTION_30_5(v49);
      if (!v41)
      {

        v58 = v68;
        v59 = *(v69 + 32);
        v59(v68, v49, v50);
        v60 = v70;
        v59(v70, v58, v50);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_11();
        outlined init with take of ShortcutIdentification(v60, v3, v61);
        v62 = 0;
        goto LABEL_37;
      }

      outlined destroy of Any?(v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_11();
  v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v33)
  {
    v32 = 0;
    goto LABEL_23;
  }

  v64 = v4;
  v65 = v3;
  v34 = 0;
  v79 = *(v33 + 16);
  v77 = IdentifierNamespaceSemanticValue;
  v78 = v24 + 16;
  v67 = (v24 + 32);
  v76 = (v24 + 8);
  v71 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v79 == v34)
    {

      v4 = v64;
      v3 = v65;
      v32 = v71;
      goto LABEL_23;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = *(v24 + 72);
    v4 = v21;
    (*(v24 + 16))(v31, v33 + v35 + v36 * v34, v21);
    v37 = UsoIdentifier.namespace.getter();
    v3 = v38;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v3)
    {

      goto LABEL_14;
    }

    v41 = v37 == v39 && v3 == v40;
    if (v41)
    {

      goto LABEL_16;
    }

    v42 = OUTLINED_FUNCTION_20_8();

    if (v42)
    {
LABEL_16:
      v66 = *v67;
      v66(v72, v31, v4);
      v43 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = *(v43 + 16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v80;
      }

      v46 = *(v43 + 16);
      v3 = v46 + 1;
      if (v46 >= *(v43 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v80;
      }

      ++v34;
      *(v43 + 16) = v3;
      v71 = v43;
      v47 = v43 + v35 + v46 * v36;
      v21 = v4;
      v66(v47, v72, v4);
    }

    else
    {
LABEL_14:
      v21 = v4;
      (*v76)(v31, v4);
      ++v34;
    }
  }

  __break(1u);
LABEL_39:
  OUTLINED_FUNCTION_0();
LABEL_28:
  v51 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v51, static Logger.voiceCommands);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_48();
    v55 = swift_slowAlloc();
    v80 = v55;
    *v54 = 136315138;
    if (v34)
    {
      v56 = v33;
    }

    else
    {
      v56 = 63;
    }

    if (!v34)
    {
      v34 = 0xE100000000000000;
    }

    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v34, &v80);

    *(v54 + 4) = v57;
    _os_log_impl(&dword_0, v52, v53, "UUID NOT found in execute VoiceCommand task; idString=%s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v62 = 1;
LABEL_37:
  __swift_storeEnumTagSinglePayload(v3, v62, 1, v4);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandTask.init(mode:reference:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VoiceCommandTask(0);
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = static VoiceCommandTask.extractAssociatedAppId(reference:)(a2);
  v15 = v14;

  if (v15)
  {
    *v12 = a1;
    *(v12 + 8) = v13;
    *(v12 + 16) = v15;
    swift_storeEnumTagMultiPayload();
    outlined init with take of ShortcutIdentification(v12, a3, type metadata accessor for VoiceCommandTask);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {
    OUTLINED_FUNCTION_37_2();

    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
  }
}

Swift::String_optional __swiftcall String.extractActionIdentifier()()
{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v0);

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v1 = StringProtocol.components<A>(separatedBy:)();

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v2;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

void static Siri_Nlu_External_UserDialogAct.logVoiceCommandTaskPayload(_:)(uint64_t a1)
{
  if (a1)
  {

    if (!dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.voiceCommands);
      v2 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v2, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v2, v14, "logVoiceCommandTaskPayload - no UsoEntity_common_VoiceCommandPayload appEntity", v15, 2u);
      }

      goto LABEL_26;
    }

    if (dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.voiceCommands);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v2, v3))
      {

        goto LABEL_25;
      }

      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136315138;
      type metadata accessor for UsoIdentifier();
      v6 = Array.description.getter();
      v8 = v7;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v20);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_0, v2, v3, "logVoiceCommandTaskPayload - usoIdentifiers=%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.voiceCommands);
      v2 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v2, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v2, v17, "logVoiceCommandTaskPayload - no UsoEntity_common_AppEntity usoIdentifiers for name", v18, 2u);
    }

LABEL_25:

LABEL_26:

    return;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, oslog, v11, "logVoiceCommandTaskPayload - no Uso_VerbTemplate_ReferenceVoiceCommandPayload payload", v12, 2u);
  }
}

uint64_t Siri_Nlu_External_UserDialogAct.getFirstTask()()
{
  v8 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array.count.getter(v8))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v8 + 32);
    }

    v9 = specialized Array.count.getter(v8);

    if (v9 >= 2)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v12))
      {
        v13 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v13);
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_8_15();
      }
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v0 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v2))
    {
      v3 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v3);
      OUTLINED_FUNCTION_25(&dword_0, v4, v5, "No tasks found in UDA");
      OUTLINED_FUNCTION_15_0();
    }

    return 0;
  }

  return v6;
}

uint64_t specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(char a1)
{
  v2 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter(v2))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "dialogAct has no task", v12, 2u);
    }

    return 0;
  }

  if (specialized Array.count.getter(v2) > 1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.voiceCommands);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "dialogAct has more than 1 task", v6, 2u);
    }

    if (a1)
    {

      return 0;
    }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v2 + 32);
  }

  return v7;
}

uint64_t static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a2);
  if (!specialized Array.count.getter(v4))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v11, static Logger.voiceCommands);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v14);
      OUTLINED_FUNCTION_25(&dword_0, v15, v16, "dialogAct has no task");
      OUTLINED_FUNCTION_15_0();
    }

    return 0;
  }

  if (specialized Array.count.getter(v4) >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_38_4(v7))
    {
      v8 = OUTLINED_FUNCTION_52();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "dialogAct has more than 1 task", v8, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    if (a1)
    {

      return 0;
    }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v4 + 32);
  }

  return v9;
}

uint64_t static ShortcutIdentification.extractShortcutId(identifiers:)(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1 >= 2)
    {
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
        v6 = swift_slowAlloc();
        v25 = v6;
        *v5 = 136315138;
        type metadata accessor for UsoIdentifier();
        v7 = Array.description.getter();
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v25);

        *(v5 + 4) = v9;
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v6);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_8_15();
      }

      goto LABEL_14;
    }

    if (v1)
    {
LABEL_14:
      v21 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_14(v21);
      v23 = *(v22 + 80);
      OUTLINED_FUNCTION_21_8();
      return UsoIdentifier.value.getter();
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v17))
    {
      v18 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v18);
      OUTLINED_FUNCTION_15_0();
    }
  }

  return 0;
}

uint64_t static VoiceCommandTask.extractAssociatedAppId(reference:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v76 - v7;
  v9 = type metadata accessor for UsoIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v84 = (&v76 - v17);
  __chkstk_darwin(v16);
  v20 = &v76 - v19;
  if (!a1)
  {
LABEL_24:
    v24 = 0;
    v22 = 0;
    goto LABEL_26;
  }

  v83 = v18;
  v21 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v22 = v21;
  if (!v21)
  {
    goto LABEL_25;
  }

  v78 = a1;
  v79 = v8;
  v76 = v6;
  v77 = v14;
  v23 = 0;
  v85 = *(v21 + 16);
  v24 = IdentifierNamespaceShortcutSetting;
  v81 = (v10 + 32);
  v86 = (v10 + 8);
  v87 = v10 + 16;
  v82 = _swiftEmptyArrayStorage;
  v88 = v9;
  while (v85 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      swift_once();
LABEL_27:
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.voiceCommands);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v89 = v43;
        *v42 = 136315138;
        if (v22)
        {
          v44 = v24;
        }

        else
        {
          v44 = 63;
        }

        if (!v22)
        {
          v22 = 0xE100000000000000;
        }

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v22, &v89);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_0, v40, v41, "ignoring non-enablement common_Setting; parse identifier value=%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
      }

      else
      {
      }

      return 0;
    }

    v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v26 = *(v10 + 72);
    (*(v10 + 16))(v20, v22 + v25 + v26 * v23, v9);
    v27 = UsoIdentifier.namespace.getter();
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v29)
    {

      goto LABEL_14;
    }

    if (v27 == v30 && v29 == v31)
    {

      goto LABEL_16;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
LABEL_16:
      v80 = *v81;
      (v80)(v84, v20, v88);
      v34 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v34[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v89;
      }

      v37 = v34[2];
      if (v37 >= v34[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v89;
      }

      ++v23;
      v34[2] = v37 + 1;
      v82 = v34;
      v9 = v88;
      (v80)(v34 + v25 + v37 * v26, v84, v88);
    }

    else
    {
LABEL_14:
      v9 = v88;
      (*v86)(v20, v88);
      ++v23;
    }
  }

  v22 = v82;
  if (!v82)
  {
LABEL_25:
    v24 = 0;
    goto LABEL_26;
  }

  v38 = v79;
  specialized Collection.first.getter(v82, v79);

  if (__swift_getEnumTagSinglePayload(v38, 1, v9) == 1)
  {
    outlined destroy of Any?(v38, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    goto LABEL_24;
  }

  v24 = UsoIdentifier.value.getter();
  v22 = v48;
  v85 = *v86;
  v85(v38, v9);
  v49 = v24 == 0x74756374726F6873 && v22 == 0xE900000000000073;
  if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_26:
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_27;
  }

  if (!dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter() || (v22 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v22))
  {
LABEL_70:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.voiceCommands);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "associatedApp-ID NOT found", v75, 2u);
    }

    return 0;
  }

  v50 = 0;
  v51 = *(v22 + 16);
  v24 = IdentifierNamespaceItemId;
  v84 = _swiftEmptyArrayStorage;
  v52 = v83;
  while (v51 != v50)
  {
    if (v50 >= *(v22 + 16))
    {
      goto LABEL_76;
    }

    v53 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v54 = *(v10 + 72);
    (*(v10 + 16))(v52, v22 + v53 + v54 * v50, v9);
    v55 = UsoIdentifier.namespace.getter();
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v57)
    {

LABEL_56:
      v52 = v83;
      v9 = v88;
      v85(v83, v88);
      ++v50;
      continue;
    }

    if (v55 == v58 && v57 == v59)
    {
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v61 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v62 = *v81;
    v52 = v83;
    (*v81)(v77, v83, v88);
    v63 = v84;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v63;
    v89 = v63;
    v82 = v62;
    if ((v64 & 1) == 0)
    {
      v66 = v63[2];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v52 = v83;
      v65 = v89;
    }

    v67 = v65[2];
    if (v67 >= v65[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v52 = v83;
      v65 = v89;
    }

    ++v50;
    v65[2] = v67 + 1;
    v84 = v65;
    v9 = v88;
    (v82)(v65 + v53 + v67 * v54, v77, v88);
  }

  if (!v84)
  {
    goto LABEL_70;
  }

  v68 = v76;
  specialized Collection.first.getter(v84, v76);

  if (__swift_getEnumTagSinglePayload(v68, 1, v9) == 1)
  {
    outlined destroy of Any?(v68, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    goto LABEL_70;
  }

  v46 = UsoIdentifier.value.getter();
  v70 = v69;
  v85(v68, v9);
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {

    goto LABEL_70;
  }

  return v46;
}