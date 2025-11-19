uint64_t WFConfirmInteractionFlow.buildOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = v14[52];
  v16 = v14[46];
  v18 = v14[42];
  v17 = v14[43];
  v20 = v14[40];
  v19 = v14[41];
  v21 = v14[39];
  v73 = v14[37];
  v74 = v14[50];
  static DialogPhase.confirmation.getter();
  v22 = [v15 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v19 + 16))(v18, v17, v20);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v19 + 8))(v17, v20);
  v23 = v73[14];
  v24 = [v74 interaction];
  v25 = [v24 intent];

  OUTLINED_FUNCTION_18_4();
  (*(v26 + 216))(v25);

  v27 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v27);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v28 = v73[10];
  v29 = v73[11];
  OUTLINED_FUNCTION_2_59(v73 + 7);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    goto LABEL_4;
  }

  v30 = v14[37];
  v31 = v30[10];
  v32 = v30[11];
  OUTLINED_FUNCTION_2_59(v30 + 7);
  if (dispatch thunk of DeviceState.isMac.getter() & 1) != 0 || (v33 = v14[37], v34 = v33[10], v35 = v33[11], OUTLINED_FUNCTION_2_59(v33 + 7), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
LABEL_4:
    v36 = v14[52];
    v37 = type metadata accessor for ResponseFactory();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v14[53] = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    v14[54] = v40;
    *(v40 + 16) = xmmword_216010;
    *(v40 + 32) = v36;
    OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v41 = v36;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[55] = v42;
    *v42 = v43;
    v42[1] = WFConfirmInteractionFlow.buildOutput();
    v44 = v14[46];
    v45 = v14[36];
    OUTLINED_FUNCTION_6_1();

    return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, v73, v74, a12, a13, a14);
  }

  else
  {
    v55 = v14[50];
    v56 = [v55 interaction];
    v57 = [v56 intent];
    v14[56] = v57;

    v58 = [v55 interaction];
    v14[57] = [v58 intentResponse];

    static Device.current.getter();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6();
    }

    v59 = v14[38];
    v60 = static WFDialogState.shared;
    type metadata accessor for RunCustomIntentCATs();

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v61 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v62 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v63 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v64 = CATWrapperSimple.__allocating_init(options:globals:)();
    v65 = type metadata accessor for AppNameResolver();
    v66 = swift_allocObject();
    type metadata accessor for CustomIntentsDialogTemplating();
    inited = swift_initStackObject();
    v14[58] = inited;
    *(inited + 136) = v65;
    *(inited + 144) = &protocol witness table for AppNameResolver;
    *(inited + 112) = v66;
    *(inited + 56) = v60;
    outlined init with take of Output(v14 + 21, inited + 16);
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(inited + 80) = v61;
    *(inited + 88) = v62;
    *(inited + 96) = v63;
    *(inited + 104) = v64;
    v68 = [v57 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v14[59] = v70;
    v71 = swift_task_alloc();
    v14[60] = v71;
    *v71 = v14;
    v71[1] = WFConfirmInteractionFlow.buildOutput();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_6_1();

    return CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)();
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v16 = *(v14 + 448);
  v15 = *(v14 + 456);
  v17 = *(v14 + 296);
  type metadata accessor for App();
  v18 = v17[5];
  v19 = v17[6];

  OUTLINED_FUNCTION_9_3();
  *(v14 + 528) = App.__allocating_init(appIdentifier:)();
  v20 = [v16 _title];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v14 + 536) = v23;
  v71 = [v16 _keyImage];
  *(v14 + 544) = v71;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v24 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v14 + 552) = v24;
  v25 = v17[11];
  __swift_project_boxed_opaque_existential_1(v17 + 7, v17[10]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v27 = *(v14 + 504);
    v26 = *(v14 + 512);
    v70 = *(v14 + 488);
    v28 = *(v14 + 448);

    v29 = [v28 _title];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v14 + 232) = &type metadata for WorkflowDataModels.WatchModel;
    *(v14 + 240) = &protocol witness table for WorkflowDataModels.WatchModel;
    v33 = swift_allocObject();
    *(v14 + 208) = v33;

    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    *(v33 + 32) = v70;
    *(v33 + 48) = v27;
    *(v33 + 56) = v26;
    *(v33 + 64) = 0u;
    *(v33 + 80) = 0u;
    v34 = *(v14 + 416);
    v35 = type metadata accessor for ResponseFactory();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = ResponseFactory.init()();
    *(v14 + 272) = OUTLINED_FUNCTION_20_19(v38);
    OUTLINED_FUNCTION_10_36();
    *(v14 + 280) = lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(v39, 255, v40);
    __swift_allocate_boxed_opaque_existential_1((v14 + 248));
    v41 = OUTLINED_FUNCTION_20_1();
    v23(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v42 = swift_allocObject();
    *(v14 + 616) = v42;
    *(v42 + 16) = xmmword_216010;
    *(v42 + 32) = v34;
    OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
    v43 = v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 624) = v44;
    *v44 = v45;
    OUTLINED_FUNCTION_3_58(v44);
    OUTLINED_FUNCTION_6_1();

    return v50(v46, v47, v48, v49, v50, v51, v52, v53, v70, *(&v70 + 1), v71, a12, a13, a14);
  }

  else
  {
    v56 = *(v14 + 448);
    v55 = *(v14 + 456);
    *(v14 + 560) = v21;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v57 = v56;
    v58 = v55;
    v72.value.super.isa = v55;
    isa = INInteraction.__allocating_init(intent:response:)(v57, v72).super.isa;
    *(v14 + 568) = isa;
    v60 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v14 + 576) = v60;
    *(v14 + 232) = v60;
    *(v14 + 240) = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    *(v14 + 584) = __swift_allocate_boxed_opaque_existential_1((v14 + 208));
    v61 = v24;
    CodableAceObject.init(wrappedValue:)();
    v62 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    *(v14 + 592) = v62;
    v63 = *(v62 + 20);
    v64 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v65 = *(v62 + 24);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 600) = v66;
    *v66 = v67;
    v66[1] = WFConfirmInteractionFlow.buildOutput();
    OUTLINED_FUNCTION_6_1();

    return INImage.convertToVisualProperty()(v68);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 592);
  v16 = *(v14 + 584);
  v17 = *(v14 + 576);
  v18 = *(v14 + 568);
  v19 = *(v14 + 560);
  v20 = *(v14 + 544);
  v21 = *(v14 + 536);
  v22 = *(v14 + 528);
  v49 = *(v14 + 504);
  v50 = *(v14 + 512);
  v23 = *(v14 + 488);
  v48 = *(v14 + 496);

  v24 = (v16 + *(v15 + 28));
  *v24 = v19;
  v24[1] = v21;

  v25 = (v16 + *(v17 + 20));
  *v25 = v23;
  v25[1] = v48;
  v26 = (v16 + *(v17 + 24));
  *v26 = v49;
  v26[1] = v50;
  v27 = *(v14 + 416);
  v28 = type metadata accessor for ResponseFactory();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = ResponseFactory.init()();
  *(v14 + 272) = OUTLINED_FUNCTION_20_19(v31);
  OUTLINED_FUNCTION_10_36();
  *(v14 + 280) = lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(v32, 255, v33);
  __swift_allocate_boxed_opaque_existential_1((v14 + 248));
  v34 = OUTLINED_FUNCTION_20_1();
  (v20)(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = swift_allocObject();
  *(v14 + 616) = v35;
  *(v35 + 16) = xmmword_216010;
  *(v35 + 32) = v27;
  OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v36 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v14 + 624) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_3_58(v37);
  OUTLINED_FUNCTION_6_1();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, a12, a13, a14);
}

uint64_t WFConfirmInteractionFlow.buildOutput_prerfv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for NLContextUpdate();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[13] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  v1 = v0[8];
  v2 = v1[12];
  v0[16] = v1[4];
  v3 = v1[2];
  v4 = v1[3];
  v0[17] = v1[5];
  v0[18] = v1[6];
  OUTLINED_FUNCTION_18_4();
  v6 = *(v5 + 104);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = WFConfirmInteractionFlow.buildOutput_prerfv2();
  v9 = OUTLINED_FUNCTION_9_3();

  return v11(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (specialized Array.count.getter(v0[20]))
  {
    v1 = 0;
  }

  else
  {
    v2 = v0[17];
    v3 = v0[18];
    type metadata accessor for WFDialogState();
    v1 = static WFDialogState.isAppFirstRun(appId:)(v2, v3);
  }

  v4 = *(v0[8] + 104);
  OUTLINED_FUNCTION_18_4();
  v6 = *(v5 + 184);
  v13 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[21] = v8;
  *v8 = v9;
  v8[1] = WFConfirmInteractionFlow.buildOutput_prerfv2();
  v10 = v0[15];
  v11 = v0[16];

  return (v13)(v10, v11, v1 & 1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0;
  v2 = *(v0 + 160);
  v3 = *(v1 + 96);
  v4 = *(v1 + 64);
  v5 = v4[14];
  v6 = [*(v1 + 128) interaction];
  v7 = [v6 intent];

  OUTLINED_FUNCTION_18_4();
  (*(v8 + 216))(v7);

  v9 = v4[10];
  v10 = v4[11];
  OUTLINED_FUNCTION_2_59(v4 + 7);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  if (v2 >> 62)
  {
    if (*(v1 + 160) < 0)
    {
      v24 = *(v1 + 160);
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    OUTLINED_FUNCTION_20_1();
    _bridgeCocoaArray<A>(_:)();

    v25 = *(v1 + 160);
  }

  else
  {
    v11 = *(v1 + 160);

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v12 = *(v1 + 160);
  }

  v13 = *(v1 + 112);
  v14 = *(v1 + 120);
  v15 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = *(v1 + 88);
  v18 = *(v1 + 72);
  v26 = *(v1 + 56);
  v27 = *(v1 + 104);

  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v19 = *(v17 + 16);
  v20 = OUTLINED_FUNCTION_20_1();
  v21(v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v16);
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v1 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v17 + 8))(v15, v16);
  (*(v13 + 8))(v14, v27);

  v22 = *(v1 + 8);

  return v22();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[22];

  return v4();
}

uint64_t protocol witness for Flow.execute() in conformance WFConfirmInteractionFlow(uint64_t a1)
{
  v4 = *(**v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFConfirmInteractionFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowConfirmInteractionError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C38F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin020WFConfirmInteractionC0C5State33_220071A64E3E8D776517CBE45A2C4B77LLO(uint64_t a1)
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

uint64_t lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C39A0()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];
  }

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t OUTLINED_FUNCTION_3_58(uint64_t a1)
{
  *(a1 + 8) = WFConfirmInteractionFlow.buildOutput();
  v2 = *(v1 + 368);
  return *(v1 + 288);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1)
{
  v1[76] = a1;
  v2 = v1[30];
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);
  v3 = *(v2 + 8);

  return type metadata accessor for WorkflowDataModels(0);
}

uint64_t OUTLINED_FUNCTION_29_21()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_33_12()
{
  v2 = v0[49];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
}

uint64_t OUTLINED_FUNCTION_34_16()
{
  v2 = v0[49];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
}

uint64_t static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v2);
  v10 = (*(v5 + 88))(v9, v2);
  if (v10 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v10 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v5 + 96))(v9, v2);
      v12 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v11 = Parse.ServerConversion.siriKitIntent.getter();

      v13 = type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0(v13);
      (*(v14 + 8))(v9);
      return v11;
    }

    if (v10 != enum case for Parse.directInvocation(_:))
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.voiceCommands);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Unknown parse in FlowStrategyUtils.makeIntentFromParse", v19, 2u);
      }
    }
  }

  (*(v5 + 8))(v9, v2);
  return 0;
}

uint64_t static FlowStrategyUtils.makeConfirmationStateFromInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for Parse();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = type metadata accessor for SiriKitConfirmationState();
  v15 = OUTLINED_FUNCTION_7_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v15);
  v53 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v50 - v23;
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  v56 = a1;
  Input.parse.getter();
  static VoiceCommandConfirmationUtils.getSiriKitConfirmationState(parse:)(v13, v26);
  v57 = v6;
  v52 = *(v6 + 8);
  v52(v13, v3);
  v27 = *(v17 + 104);
  v58 = enum case for SiriKitConfirmationState.unset(_:);
  v54 = v27;
  v55 = v17 + 104;
  (v27)(v24);
  lazy protocol witness table accessor for type SiriKitConfirmationState and conformance SiriKitConfirmationState();
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v17 + 8);
  v28(v24, v14);
  if ((v13 & 1) == 0)
  {
    return (*(v17 + 32))(v59, v26, v14);
  }

  v51 = v28;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.voiceCommands);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v50 = v30;
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.", v33, 2u);
  }

  Input.parse.getter();
  v34 = v57;
  if ((*(v57 + 88))(v11, v3) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v51(v26, v14);
    v52(v11, v3);
    v47 = v59;
    v48 = v58;
    return v54(v47, v48, v14);
  }

  (*(v34 + 96))(v11, v3);
  v35 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
  v36 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_23_0(v36);
  (*(v37 + 8))(v11);
  v38 = v53;
  Parse.ServerConversion.confirmationState.getter();
  v39 = (*(v17 + 88))(v38, v14);
  v40 = v51;
  v51(v38, v14);
  v41 = v58;
  if (v39 == v58)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v59;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v42, v43, "Could not find the current a server side intent confirmation. Treating input as not understood.", v46, 2u);
    }

    v51(v26, v14);
    v47 = v45;
    v48 = v41;
    return v54(v47, v48, v14);
  }

  Parse.ServerConversion.confirmationState.getter();

  return v40(v26, v14);
}

unint64_t lazy protocol witness table accessor for type SiriKitConfirmationState and conformance SiriKitConfirmationState()
{
  result = lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState;
  if (!lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState)
  {
    type metadata accessor for SiriKitConfirmationState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState);
  }

  return result;
}

uint64_t static InputCompletionConverter.toUserData(state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    if (a3 != 1)
    {
      v71 = &type metadata for String;
      *&v70 = 0x6C65636E6163;
      *(&v70 + 1) = 0xE600000000000000;
      OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v59, v63, v67, v68, v69, v70);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_48();
      OUTLINED_FUNCTION_5_37(v54, v55, v56, v57);
      return v66;
    }

    *&v70 = 0x497375636F666E75;
    *(&v70 + 1) = 0xEF786F427475706ELL;
    OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v59, v63, v67, v68, v69, v70);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_5_37(v14, v15, v16, v17);
    v18 = v64;
    v71 = &type metadata for String;
    OUTLINED_FUNCTION_8_34();
    *&v70 = v19;
    *(&v70 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v20, v21, v22, v23, v24, v25, v26, v27, v60, v64, v67, v68, v69, v70);
    v28 = a1;
    v29 = a2;
    v30 = 1;
  }

  else
  {
    *&v70 = 1701736292;
    *(&v70 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v59, v63, v67, v68, v69, v70);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_5_37(v31, v32, v33, v34);
    v18 = v65;
    v71 = &type metadata for String;
    OUTLINED_FUNCTION_8_34();
    *&v70 = v35;
    *(&v70 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v36, v37, v38, v39, v40, v41, v42, v43, v62, v65, v67, v68, v69, v70);
    v28 = a1;
    v29 = a2;
    v30 = 0;
  }

  outlined copy of InputCompletionState(v28, v29, v30);
  swift_isUniquelyReferenced_nonNull_native();
  v44 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v67, 1701869940, 0xE400000000000000);
  v71 = &type metadata for String;
  *&v70 = a1;
  *(&v70 + 1) = a2;
  OUTLINED_FUNCTION_4_25(v44, v45, v46, v47, v48, v49, v50, v51, v61, v18, v67, v68, v69, v70);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v18;
  OUTLINED_FUNCTION_5_37(isUniquelyReferenced_nonNull_native, 0x7475706E69, v53, isUniquelyReferenced_nonNull_native);
  return v66;
}

uint64_t static InputCompletionConverter.toInputCompletionState(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574617473, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, &v55);
  if ((OUTLINED_FUNCTION_1_63() & 1) == 0)
  {
    return 0;
  }

  v4 = v47 == 1701736292 && v52 == 0xE400000000000000;
  if (!v4 && (OUTLINED_FUNCTION_7_36() & 1) == 0)
  {
    v24 = v47 == 0x6C65636E6163 && v52 == 0xE600000000000000;
    if (v24 || (OUTLINED_FUNCTION_7_36() & 1) != 0)
    {

      return 0;
    }

    if (v47 == 0x497375636F666E75 && v52 == 0xEF786F427475706ELL)
    {
    }

    else
    {
      v27 = OUTLINED_FUNCTION_7_36();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3_59(v28, v29, v30, v31, v32, v33, v34, v35, v47, v52, v55);
    if (v56)
    {
      if ((OUTLINED_FUNCTION_1_63() & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_8_34();
      if (v50 == v36 && v54 == 0xE400000000000000)
      {
      }

      else
      {
        v38 = OUTLINED_FUNCTION_6_35();

        if ((v38 & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_2_60(v39, v40, v41, v42, v43, v44, v45, v46, v50, v54, v55);
      if (v56)
      {
        if (OUTLINED_FUNCTION_1_63())
        {
          return v51;
        }

        return 0;
      }
    }

LABEL_46:
    outlined destroy of Any?(&v55);
    return 0;
  }

  OUTLINED_FUNCTION_3_59(v5, v6, v7, v8, v9, v10, v11, v12, v47, v52, v55);
  if (!v56)
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_1_63())
  {
    OUTLINED_FUNCTION_8_34();
    if (v48 == v13 && v53 == 0xE400000000000000)
    {
    }

    else
    {
      v15 = OUTLINED_FUNCTION_6_35();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_2_60(v16, v17, v18, v19, v20, v21, v22, v23, v48, v53, v55);
    if (v56)
    {
      if (OUTLINED_FUNCTION_1_63())
      {
        return v49;
      }

      return 0;
    }

    goto LABEL_46;
  }

  return 0;
}

uint64_t outlined copy of InputCompletionState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_63()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(0x7475706E69, 0xE500000000000000, v11, &a11);
}

double OUTLINED_FUNCTION_3_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, v11, &a11);
}

_OWORD *OUTLINED_FUNCTION_5_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_36()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.__allocating_init(appPolicyHandler:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of Output(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.bundleId.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with take of Output(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v0[12] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v0[13] = swift_task_alloc();
  v3 = type metadata accessor for TemplatingResult();
  v0[14] = v3;
  v4 = *(v3 - 8);
  v0[15] = v4;
  v5 = *(v4 + 64) + 15;
  v0[16] = swift_task_alloc();

  return _swift_task_switch(VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse(), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  static Device.current.getter();
  v1 = async function pointer to static ResponseTemplates.appDisabledByScreenTime()[1];
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  v3 = *(v0 + 128);

  return static ResponseTemplates.appDisabledByScreenTime()(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  else
  {
    v3 = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v5[3] = v8;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

{
  return _swift_unexpectedError(*(v0 + 144), "SiriLinkFlowPlugin/VoiceCommandScreentimeCheckFlowStrategy.swift", 64, 1, 25);
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance VoiceCommandsScreentimeCheckFlowStrategy(uint64_t a1)
{
  v4 = *(**v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return v8(a1);
}

uint64_t OutputGenerationManifest.init(dialogPhase:responseViewId:)(uint64_t a1)
{
  v2 = type metadata accessor for DialogPhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t RunLinkActionCATs.actionConfirmation(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v22 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[7];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v0[8] = v4;
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v11 = v0[6];
  v12 = v0[4];
  *(v4 + 80) = 1651664246;
  *(v4 + 88) = 0xE400000000000000;
  outlined init with copy of SpeakableString?(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v13)
  {
    outlined destroy of String?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v17;
  *v17 = v18;
  v17[1] = RunLinkActionCATs.actionConfirmation(customDialog:verb:);
  v19 = v0[5];
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v20();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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
    v14 = v3[6];

    OUTLINED_FUNCTION_6_7();

    return v15();
  }
}

uint64_t RunLinkActionCATs.actionConfirmationHeader(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_32_15(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
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
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_46_10(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_4_43(v12);
  OUTLINED_FUNCTION_10_33();

  return v14();
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

uint64_t RunLinkActionCATs.actionPerformed(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_32_15(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
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
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_46_10(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_4_43(v12);
  OUTLINED_FUNCTION_10_33();

  return v14();
}

uint64_t RunLinkActionCATs.confirmationButtonLabel(confirmationVerb:)()
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
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_32_15(v3);
  *(v4 + 16) = xmmword_216850;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000000231530;
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
  v18 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_46_10(v12);
  *v13 = v14;
  v13[1] = RunLinkActionCATs.actionConfirmationHeader(customDialog:);
  v15 = *(v1 + 32);
  v16 = *(v1 + 16);

  return v18(v16, 0xD000000000000025, 0x800000000022DF00, v2);
}

uint64_t RunLinkActionCATs.continueInApp(customDialog:)()
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
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_32_15(v2);
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216850);
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
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_46_10(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_4_43(v12);
  OUTLINED_FUNCTION_10_33();

  return v14();
}

uint64_t RunLinkActionCATs.errorDialog(customDialog:nonOptionalParameterIsNil:)()
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
  v19 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_32_15(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
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
  *(v2 + 80) = 0xD000000000000019;
  *(v2 + 88) = 0x8000000000231550;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v13;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_46_10(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_4_43(v15);
  OUTLINED_FUNCTION_10_33();

  return v17();
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

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t RunLinkActionCATs.needsDisambiguation(customDialog:items:)()
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
  OUTLINED_FUNCTION_15_2();
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v0[7] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  OUTLINED_FUNCTION_28_16();
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

  v11 = v0[4];
  v3[5].n128_u64[0] = 0x736D657469;
  v3[5].n128_u64[1] = 0xE500000000000000;
  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  }

  else
  {
    v12 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v11;
  v3[7].n128_u64[1] = v12;
  v13 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v19 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[8] = v14;
  *v14 = v15;
  v14[1] = RunLinkActionCATs.needsDisambiguation(customDialog:items:);
  v16 = v0[5];
  v17 = v0[2];

  return v19(v17, 0xD000000000000021, 0x800000000022DF70, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t RunLinkActionCATs.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 89) = v1;
  *(v0 + 88) = v2;
  OUTLINED_FUNCTION_32_4(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_64_0();
  v26 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = *(v0 + 56);
  if (v8 == 1)
  {
    outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v13 = OUTLINED_FUNCTION_22_25();
  *(v4 + 80) = v14;
  *(v4 + 88) = 0xED0000656D614E72;
  outlined init with copy of SpeakableString?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v15)
  {
    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = *(v0 + 89);
  v20 = *(v0 + 88);
  strcpy((v4 + 128), "isSearchAction");
  *(v4 + 143) = -18;
  *(v4 + 144) = v20;
  *(v4 + 168) = &type metadata for Bool;
  strcpy((v4 + 176), "isDeleteAction");
  *(v4 + 191) = -18;
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 192) = v19;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 72) = v21;
  *v21 = v22;
  v21[1] = RunLinkActionCATs.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:);
  v23 = *(v0 + 40);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v24();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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
    v14 = v3[6];

    OUTLINED_FUNCTION_6_7();

    return v15();
  }
}

uint64_t RunLinkActionCATs.parameterConfirmation(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  v24 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[7];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v0[8] = v4;
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[7];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v13 = OUTLINED_FUNCTION_22_25();
  *(v4 + 80) = v14;
  *(v4 + 88) = 0xEE0065756C615672;
  outlined init with copy of SpeakableString?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v15)
  {
    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v19;
  *v19 = v20;
  v19[1] = RunLinkActionCATs.actionConfirmation(customDialog:verb:);
  v21 = v0[5];
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v22();
}

uint64_t RunLinkActionCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunLinkActionCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunLinkActionCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for RunLinkActionCATs()
{
  result = type metadata singleton initialization cache for RunLinkActionCATs;
  if (!type metadata singleton initialization cache for RunLinkActionCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PartialMatcher.match(term:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *v3;
  v84 = type metadata accessor for CharacterSet();
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  v8 = __chkstk_darwin(v84);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v8);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v63 = v19;
  __chkstk_darwin(v16);
  v71 = &v62 - v20;
  v79 = String.sanitized.getter();
  v22 = v21;
  v23._rawValue = Array.init()();
  rawValue = v23._rawValue;
  v24 = Array.startIndex.getter();
  after = v24;
  v25 = Array.endIndex.getter();
  v64 = v6;
  if (v24 == v25)
  {

LABEL_25:
    v87._countAndFlagsBits = v23._rawValue;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      return 0;
    }

    else
    {
      v61 = *(v64 + 88);
      return CustomIntentDisambiguationItemContainer.init(items:)(v23).items._rawValue;
    }
  }

  else
  {
    v26 = v18;
    v75 = v22;
    v27 = *(v6 + 88);
    v74 = *(v27 + 8);
    v77 = (v12 + 16);
    v70 = (v12 + 32);
    v83 += 8;
    v67 = (v12 + 8);
    v72 = v27;
    v78 = v27 + 8;
    v28 = v12;
    v65 = v11;
    v69 = a3;
    v68 = v12;
    v73 = v26;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v30 = a3 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
        v31 = v71;
        v76 = *(v28 + 16);
        v76(v71, v30, v11);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v63 != 8)
        {
          goto LABEL_29;
        }

        v87._countAndFlagsBits = result;
        v31 = v71;
        v76 = *v77;
        v76(v71, &v87, v11);
        swift_unknownObjectRelease();
      }

      Array.formIndex(after:)(&after);
      v32 = v11;
      (*v70)(v26, v31, v11);
      v74(&v90, v11, v27);
      v103 = v91;
      outlined destroy of String?(&v103, &_sSSSgMd, &_sSSSgMR);
      v102 = v92;
      outlined destroy of String?(&v102, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
      v101 = v93;
      outlined destroy of String?(&v101, &_sSaySSGMd, &_sSaySSGMR);
      v33 = String.lowercased()();

      v87 = v33;
      static CharacterSet.punctuationCharacters.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v34 = StringProtocol.components(separatedBy:)();
      v82 = *v83;
      v82(v10, v84);

      v87._countAndFlagsBits = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v36 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v81 = v35;
      v80 = v36;
      v37 = BidirectionalCollection<>.joined(separator:)();
      v39 = v38;

      v87._countAndFlagsBits = v37;
      v87._object = v39;
      OUTLINED_FUNCTION_0_49();
      v86 = v75;
      LOBYTE(v34) = StringProtocol.contains<A>(_:)();

      if ((v34 & 1) == 0)
      {
        break;
      }

LABEL_19:
      v59 = v73;
      v76(v66, v73, v32);
      type metadata accessor for Array();
      Array.append(_:)();
LABEL_21:
      v26 = v59;
      (*v67)(v59, v32);
      a3 = v69;
      v60 = Array.endIndex.getter();
      v24 = after;
      v27 = v72;
      v11 = v32;
      v28 = v68;
      if (after == v60)
      {

        v23._rawValue = rawValue;
        goto LABEL_25;
      }
    }

    v74(v94, v11, v72);
    v40 = v96;
    v100 = v96;
    v99 = v94[0];

    outlined destroy of String(&v99);
    v98 = v94[1];
    outlined destroy of String?(&v98, &_sSSSgMd, &_sSSSgMR);
    v97 = v95;
    outlined destroy of String?(&v97, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
    outlined destroy of String?(&v100, &_sSaySSGMd, &_sSaySSGMR);
    v41 = *(v40 + 16);
    if (v41)
    {
      v85 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v85;
      v43 = (v40 + 40);
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;
        v87 = String.lowercased()();

        static CharacterSet.punctuationCharacters.getter();
        v46 = StringProtocol.components(separatedBy:)();
        v82(v10, v84);

        v87._countAndFlagsBits = v46;
        v47 = BidirectionalCollection<>.joined(separator:)();
        v49 = v48;

        v85 = v42;
        v50 = v42[2];
        if (v50 >= v42[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v85;
        }

        v42[2] = v50 + 1;
        v51 = &v42[2 * v50];
        v51[4] = v47;
        v51[5] = v49;
        v43 += 2;
        --v41;
      }

      while (v41);
      result = outlined destroy of String?(&v100, &_sSaySSGMd, &_sSaySSGMR);
      v32 = v65;
    }

    else
    {
      result = outlined destroy of String?(&v100, &_sSaySSGMd, &_sSaySSGMR);
      v42 = _swiftEmptyArrayStorage;
    }

    v53 = (v42 + 5);
    v54 = -v42[2];
    v55 = -1;
    v56 = v75;
    while (1)
    {
      if (v54 + v55 == -1)
      {

        v59 = v73;
        goto LABEL_21;
      }

      if (++v55 >= v42[2])
      {
        break;
      }

      v57 = v53 + 2;
      v58 = *v53;
      v87._countAndFlagsBits = *(v53 - 1);
      v87._object = v58;
      OUTLINED_FUNCTION_0_49();
      v86 = v56;
      result = StringProtocol.contains<A>(_:)();
      v53 = v57;
      if (result)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, void *a2, char a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);

  return specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a1, v8, a3, v3, v6, v7);
}

uint64_t App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(v5, a1, v9, v10);
  if (v11)
  {
    if (a3 == 2)
    {
      App.appIdentifier.getter();
      if (v12)
      {
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        BidirectionalCollection<>.starts<A>(with:)();
      }
    }

    AppDisplayInfo.init(displayName:isFirstParty:)();
    v15 = type metadata accessor for AppDisplayInfo();
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v15);
  }

  else
  {
    v13 = type metadata accessor for AppDisplayInfo();

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v13);
  }
}

uint64_t specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20[-1] - v13;
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(a1, v20, a3, v14);
  v16 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    outlined destroy of AppDisplayInfo?(v14);
    v17 = 0;
  }

  else
  {
    v17 = AppDisplayInfo.displayName.getter();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v17;
}

uint64_t outlined destroy of AppDisplayInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkflowRunnerCATs.inputDate(device:inputType:message:)()
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
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_60(v4);
  outlined init with copy of SpeakableString?(v5, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_16_7();
  v8 = v1[8];
  v9 = v1[3];
  if (v7 == 1)
  {
    v10 = v1[3];

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = v1[7];
  v15 = v1[5];
  OUTLINED_FUNCTION_1_61();
  *(v3 + 128) = v16;
  *(v3 + 136) = v17;
  outlined init with copy of SpeakableString?(v18, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v27 = v22;
  v23 = swift_task_alloc();
  v1[10] = v23;
  *v23 = v1;
  v23[1] = WorkflowRunnerCATs.inputDate(device:inputType:message:);
  v24 = v1[6];
  v25 = OUTLINED_FUNCTION_1_64();

  return v27(v25);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v2[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = v2[8];
    v11 = v2[9];
    v13 = v2[7];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t WorkflowRunnerCATs.inputText(device:inputType:message:)()
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
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_60(v4);
  outlined init with copy of SpeakableString?(v5, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_16_7();
  v8 = v1[8];
  v9 = v1[3];
  if (v7 == 1)
  {
    v10 = v1[3];

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = v1[7];
  v15 = v1[5];
  OUTLINED_FUNCTION_1_61();
  *(v3 + 128) = v16;
  *(v3 + 136) = v17;
  outlined init with copy of SpeakableString?(v18, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_13_2();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_24_4();
    v21();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v27 = v22;
  v23 = swift_task_alloc();
  v1[10] = v23;
  *v23 = v1;
  v23[1] = WorkflowRunnerCATs.inputText(device:inputType:message:);
  v24 = v1[6];
  v25 = OUTLINED_FUNCTION_1_64();

  return v27(v25);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v2[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = v2[8];
    v11 = v2[9];
    v13 = v2[7];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

uint64_t WorkflowRunnerCATs.showAlert(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v16 = v11;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = WorkflowRunnerCATs.showAlert(message:);
  v13 = v0[4];
  v14 = OUTLINED_FUNCTION_1_64();

  return v16(v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v2[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = v2[5];
    v11 = v2[6];

    OUTLINED_FUNCTION_6_7();

    return v13();
  }
}

uint64_t WorkflowRunnerCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return WorkflowRunnerCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t WorkflowRunnerCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for WorkflowRunnerCATs()
{
  result = type metadata singleton initialization cache for WorkflowRunnerCATs;
  if (!type metadata singleton initialization cache for WorkflowRunnerCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t result)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 32);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x7079547475706E69;
  v3[11] = 0xE900000000000065;
  return result;
}

void static CustomIntentPlatformSpecificSnippets.buildIntentsSnippet(app:intent:intentResponse:isForConfirmation:vcShortcut:device:)()
{
  OUTLINED_FUNCTION_5_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0[3];
  v9 = v0[4];
  OUTLINED_FUNCTION_17_17(v0);
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (v10 = v1[3], v11 = v1[4], OUTLINED_FUNCTION_17_17(v1), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = OUTLINED_FUNCTION_64();
    *(v12 + 16) = xmmword_216010;
    v13 = static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)();
LABEL_4:
    *(v12 + 32) = v13;
    goto LABEL_5;
  }

  v14 = v1[3];
  v15 = v1[4];
  OUTLINED_FUNCTION_17_17(v1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = OUTLINED_FUNCTION_64();
    *(v12 + 16) = xmmword_216010;
    OUTLINED_FUNCTION_24_4();
    static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)();
    goto LABEL_4;
  }

  v16 = [v7 _metadata];
  if (!v16 || (v17 = v16, v18 = [v16 showsWhenRun], v17, v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_64();
    *(v19 + 16) = xmmword_216010;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    OUTLINED_FUNCTION_24_4();
    v20 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v21 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

    v22 = static CasinoFactory.makePlaceholderCardSection()();
    v23 = OUTLINED_FUNCTION_64();
    *(v23 + 16) = xmmword_216010;
    *(v23 + 32) = v21;
    v24 = v21;
    outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v23, v22);
    if (!v5 || (v25 = [v5 _code], v25 > 99) || v25 < 0) && (v3)
    {
      v26 = [v5 backingStore];
      v5 = [objc_allocWithZone(INIntentResponse) initWithBackingStore:v26];

      if (v5)
      {
        [v5 _setCode:8];
      }
    }

    else
    {
      v27 = v5;
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v28 = OUTLINED_FUNCTION_64();
    *(v28 + 16) = xmmword_216010;
    *(v28 + 32) = v22;
    v29 = v22;
    OUTLINED_FUNCTION_24_4();
    v30 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

    v31 = OUTLINED_FUNCTION_64();
    *(v31 + 16) = xmmword_216010;
    *(v31 + 32) = v20;
    v32 = v20;
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v31, v30, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setReferencedCommands_);

    *(v19 + 32) = v30;
  }

LABEL_5:
  OUTLINED_FUNCTION_3_61();
}

void static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)()
{
  OUTLINED_FUNCTION_5_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v5;
    v8 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v7, &selRef_templateItems, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v9 = v8;
    }

    v36 = v9;
    v10 = OUTLINED_FUNCTION_63_6();
    static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(v10, v11, v3);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_11_36();
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      OUTLINED_FUNCTION_14_8(v13);
      OUTLINED_FUNCTION_11_26();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    OUTLINED_FUNCTION_24_4();
    static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(v15, v16, v17);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_11_36();
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_14_8(v19);
      OUTLINED_FUNCTION_11_26();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v36, v7, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  }

  else
  {
    v21 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    if (dispatch thunk of DeviceState.isCarPlay.getter())
    {
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_10_37();
      static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(v22, v23, v24, v25, v26, v27);
    }

    else
    {
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_10_37();
      static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(v28, v29, v30, v31, v32, v33);
    }

    [v5 setConfirmationOptions:?];
  }

  OUTLINED_FUNCTION_3_61();
}

void static CustomIntentPlatformSpecificSnippets.buildConfirmationSnippet(app:yes:no:device:)()
{
  OUTLINED_FUNCTION_5_38();
  v1 = v0;
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    OUTLINED_FUNCTION_63_6();
    OUTLINED_FUNCTION_8_35();
    v9 = static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(v3, v4, v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
    OUTLINED_FUNCTION_8_35();
    v9 = static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(v10, v11, v12, v13, v14, v15);
  }

  v26 = v9;
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    [objc_allocWithZone(SASTItemGroup) init];
    static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)();
    v17 = v26;
  }

  else
  {
    v18 = [objc_allocWithZone(SAUIConfirmationView) init];
    v17 = v26;
    v19 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v26, &selRef_confirmText);
    if (v20)
    {
      String._bridgeToObjectiveC()();
      v19 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v1 = 0;
    }

    OUTLINED_FUNCTION_12_31(v19, "setConfirmText:");

    v21 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v26, &selRef_confirmCommands, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      Array._bridgeToObjectiveC()();
      v21 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v1 = 0;
    }

    OUTLINED_FUNCTION_12_31(v21, "setConfirmCommands:");

    v22 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v26, &selRef_denyText);
    if (v23)
    {
      String._bridgeToObjectiveC()();
      v22 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v1 = 0;
    }

    OUTLINED_FUNCTION_12_31(v22, "setDenyText:");

    v24 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v26, &selRef_denyCommands, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      Array._bridgeToObjectiveC()();
      v24 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v1 = 0;
    }

    OUTLINED_FUNCTION_12_31(v24, "setDenyCommands:");

    if (outlined bridged method (pb) of @objc SAUIConfirmationOptions.allConfirmationOptions.getter(v26))
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
      v25.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v25.super.isa = 0;
    }

    [v18 setAllConfirmationOptions:v25.super.isa];
  }

  OUTLINED_FUNCTION_3_61();
}

id static CustomIntentPlatformSpecificSnippets.makeDialogFromUtteranceView(utteranceViews:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [objc_allocWithZone(SADialog) init];
  outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_dialogIdentifier);
  if (v6)
  {
    String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_6_36();
  }

  else
  {
    v1 = 0;
  }

  [v5 setDialogIdentifier:v1];

  [v5 setSpokenOnly:1];
  v7 = [objc_allocWithZone(SADialogText) init];
  outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_text);
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = v4;
  outlined bridged method (ob) of @objc SAAceView.speakableText.getter(v10);
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v7 setSpeakableTextOverride:v12];

  [v5 setContent:v7];
  v13 = [v10 canUseServerTTS];

  [v5 setCanUseServerTTS:v13];
  return v5;
}

id static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)()
{
  v0 = [objc_allocWithZone(SAIntentGroupSnippet) init];
  App.appIdentifier.getter();
  if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v0 setAppId:v2];

  return v0;
}

void static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_5_38();
  v1 = v0;
  v2 = [objc_allocWithZone(SASTItemGroup) init];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v3 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v4 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  v5 = [objc_allocWithZone(SASTApplicationBannerItem) init];
  v6 = [objc_allocWithZone(SAUIDecoratedText) init];
  v7 = [objc_allocWithZone(SASTLineDetailItem) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_64();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v3;
  v9 = v3;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v8, v4);
  App.appIdentifier.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v5 setBundleId:v11];

  [v5 setAction:v4];
  v12 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_11_36();
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    OUTLINED_FUNCTION_14_8(v14);
    OUTLINED_FUNCTION_11_26();
  }

  OUTLINED_FUNCTION_63_6();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v16 = [v1 _codableDescription];
  v17 = [v16 localizedTitle];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v18, v20, v6);
  [v7 setTitle:v6];
  v21 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_11_36();
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  if (v24 >= v23 >> 1)
  {
    OUTLINED_FUNCTION_14_8(v23);
    OUTLINED_FUNCTION_11_26();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(_swiftEmptyArrayStorage, v2, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);

  OUTLINED_FUNCTION_3_61();
}

id static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(SASTButtonItem) init];
  v7 = [objc_allocWithZone(SAUIDecoratedText) init];
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(a1, a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = a3;
  v10 = a3;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v9, v8);
  [v6 setDecoratedLabel:v7];
  [v6 setCentered:1];
  [v6 setAction:v8];

  return v6;
}

id static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  v13 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v14 = [objc_allocWithZone(SAUIConfirmationOption) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a1, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = a3;
  v16 = a3;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOption.commands.setter(v15, v13);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a4, a5, v14);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_216010;
  *(v17 + 32) = a6;
  v18 = a6;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOption.commands.setter(v17, v14);
  outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v13);
  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v12 setConfirmText:{v20, 1, 3}];

  if (outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v13))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [v12 setConfirmCommands:v21.super.isa];

  outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v14);
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v12 setDenyText:v23];

  if (outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v24.super.isa = 0;
  }

  [v12 setDenyCommands:v24.super.isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_224CE0;
  *(v25 + 32) = v13;
  *(v25 + 40) = v14;
  v26 = v13;
  v27 = v14;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v25, v12);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.cancelTrigger.setter(2037278020, 0xE400000000000000, v12);

  return v12;
}

id static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(a1, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_216010;
  *(v13 + 32) = a3;
  v14 = a3;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.confirmCommands.setter(v13, v12);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(a4, a5, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = a6;
  v16 = a6;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.denyCommands.setter(v15, v12);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.cancelTrigger.setter(2037278020, 0xE400000000000000, v12);
  return v12;
}

id static CustomIntentPlatformSpecificSnippets.makeDisambiguationSnippet(intent:app:disambiguationItems:parameterName:isSilentMode:canUseServerTTS:utteranceView:vcShortcut:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, void *a10)
{
  v68 = a5;
  v67 = a4;
  v66 = a2;
  v65 = a1;
  v70 = type metadata accessor for ImageSize();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v70);
  v69 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  v17 = dispatch thunk of DeviceState.isWatch.getter();
  v18 = a10[3];
  v19 = a10[4];
  v64 = a10;
  OUTLINED_FUNCTION_17_17(a10);
  dispatch thunk of DeviceState.isLockedWithPasscode.getter();
  if (v17)
  {
    v20 = static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(a3);
    v21 = [objc_allocWithZone(SASTItemGroup) init];

    if (v20 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
      v22 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v22 = v20;
    }

    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v22, v21, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    [v21 setCanUseServerTTS:a7 & 1];
  }

  else
  {
    v75 = _swiftEmptyArrayStorage;
    v76 = _swiftEmptyArrayStorage;
    if (a8)
    {
      v23 = a8;
      outlined bridged method (pb) of @objc INIntent.identifier.getter(v23, &selRef_text);
      (*(v13 + 104))(v69, enum case for ImageSize.original(_:), v70);
      OUTLINED_FUNCTION_9_30();
      static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

      v24 = *(v13 + 8);
      v25 = OUTLINED_FUNCTION_63_6();
      v26(v25);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(&dword_18 + (v75 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)) >= v27 >> 1)
      {
        OUTLINED_FUNCTION_14_8(v27);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v28 = *(a3 + 16);
    v29 = _swiftEmptyArrayStorage;
    if (v28)
    {
      HIDWORD(v57) = a7;
      v74 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v30 = a3 + 32;
      v62 = type metadata accessor for CATSpeakableString();
      v31 = 0;
      v61 = enum case for ImageSize.original(_:);
      v60 = (v13 + 104);
      v59 = (v13 + 8);
      v58 = xmmword_216010;
      v63 = v28;
      v32 = v69;
      v33 = v70;
      do
      {
        outlined init with copy of CustomIntentDisambiguationItem(v30, v73);
        v71 = v31;
        memcpy(v72, v73, 0x51uLL);
        v34 = v72[0];
        v35 = v72[1];
        static CATSpeakableString.stripTTSHint(print:)(v72[0], v72[1], v36, v37, v38, v39, v40, v41, v56, v57, v58);
        (*v60)(v32, v61, v33);
        OUTLINED_FUNCTION_9_30();
        v42 = static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

        v43 = *v59;
        v44 = OUTLINED_FUNCTION_63_6();
        v45(v44);
        v46 = static CustomIntentPlatformSpecificSnippets.makeCommandsForDisambiguationItem(intent:rawItem:app:parameterName:title:deviceState:)(v65, v30, v66, v67, v68, v34, v35, v64);
        v47 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v48 = OUTLINED_FUNCTION_64();
        *(v48 + 16) = v58;
        *(v48 + 32) = v47;
        v49 = v47;
        outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v48, v42);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v50 = *(&dword_18 + (v76 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)) >= v50 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v50);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v31;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v51 = v76;

        outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(&v71);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = v74[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v30 += 88;
      }

      while (v63 != v31);
      v29 = v74;
      LOBYTE(a7) = BYTE4(v57);
    }

    else
    {
      v51 = _swiftEmptyArrayStorage;
    }

    specialized Array.append<A>(contentsOf:)(v29);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v53 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v51, v53, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setReferencedCommands_);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v21 = v53;
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v21 setListenAfterSpeaking:isa];

    [v21 setCanUseServerTTS:a7 & 1];
  }

  return v21;
}

void *static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      outlined init with copy of CustomIntentDisambiguationItem(v5, v9);
      v7 = v4;
      memcpy(v8, v9, 0x51uLL);
      closure #1 in static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(v4, v8);
      outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(&v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v10[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 88;
      ++v4;
    }

    while (v2 != v4);
    return v10;
  }

  return result;
}

id static CustomIntentPlatformSpecificSnippets.makeCommandsForDisambiguationItem(intent:rawItem:app:parameterName:title:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(intent:chosenItem:parameterName:)(a1, a2, a4, a5);
  if (v11)
  {
    v12 = v11;
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "CustomIntentPlatformSpecificSnippet.makeCommandsForDisambiguationItem constructed payload", v16, 2u);
    }

    v17 = App.appIdentifier.getter();
    v19 = static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(v12, v17, v18, a8);

    v20 = [objc_opt_self() wrapCommandInStartLocalRequest:v19];
  }

  else
  {
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
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "CustomIntentPlatformSpecificSnippet.makeCommandsForDisambiguationItem unable to construct payload", v24, 2u);
    }

    v25 = [objc_allocWithZone(SAStartRequest) init];
    outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(a6, a7, v25);
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SAStartRequest.origin.setter(v26, v27, v25);
    v20 = [objc_allocWithZone(SASendCommands) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_216010;
    *(v28 + 32) = v25;
    outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(v28, v20);
  }

  return v20;
}

uint64_t closure #1 in static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(unint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  v5 = specialized DisambiguationItemProtocol.toDisplayString()();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v5, v6, v4);
  v7 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  result = outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_text);
  if (v9)
  {
    v10 = static OutputUtils.machineUtteranceForDisambiguationItemIndex(index:fallbackString:)(a1, result);
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_216850;
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    v14 = static OutputUtils.makeSendCommandsFromUtterance(utterances:)(inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v14;
    swift_unknownObjectRetain();
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v15, v7);
    v16 = [objc_allocWithZone(SASTColumnDataListItem) init];
    [v16 setTitle:v4];
    [v16 setAction:v7];
    v17 = *(a2 + 32);
    if (v17)
    {
      v18 = v17;
      v19 = static OutputUtils.buildNanoImage(from:)(v18);
      [v16 setImageResource:v19];
    }

    swift_unknownObjectRelease();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

uint64_t outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(void *a1, SEL *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (pb) of @objc SAUIConfirmationOptions.allConfirmationOptions.getter(void *a1)
{
  v1 = [a1 allConfirmationOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SAAceView.speakableText.getter(void *a1)
{
  v2 = [a1 speakableText];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemV7elementtMd, _sSi6offset_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemV7elementtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentButton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CustomIntentButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_36()
{
}

id OUTLINED_FUNCTION_12_31(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

NSMeasurement __swiftcall ParsedMeasurement.toNSMeasurement(defaultUnit:)(NSUnit defaultUnit)
{
  symbol = defaultUnit._symbol;
  if (v2)
  {
    isa = v1;
  }

  else
  {
    isa = defaultUnit.super.isa;
  }

  v5 = objc_allocWithZone(NSMeasurement);

  v6 = [v5 initWithDoubleValue:isa unit:*&symbol];
  result._doubleValue = v8;
  result._unit = v7;
  result.super.isa = v6;
  return result;
}

uint64_t ParsedMeasurement.toMeasurement(unitType:parameterMetadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    LNActionParameterMetadata.measurementDefaultUnitSymbol.getter();
    if (!v7)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
      v11 = a4;
      v12 = 1;
      goto LABEL_12;
    }

    v8 = String._bridgeToObjectiveC()();

    v9 = LNMeasurementUnitTypeToUnit();

LABEL_6:
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSUnit, NSUnit_ptr);
    Measurement.init(value:unit:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
    v11 = a4;
    v12 = 0;
LABEL_12:

    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  v6 = a2;
  if (LNMeasurementUnitTypeOfUnit() == a1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);
  v14 = v6;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_1_65();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v17 = 136315394;
    LNMeasurementUnitTypeOfUnit();
    type metadata accessor for LNMeasurementUnitType(0);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_0, v15, v16, "#ParsedMeasurement: Measurement unit type %s does not match requested %s.", v17, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_1_65();
  }

  else
  {

    OUTLINED_FUNCTION_1_65();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v25);
}

uint64_t outlined destroy of Measurement<NSUnit>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGSgMd, &_s10Foundation11MeasurementVySo6NSUnitCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall ParsedMeasurement.toDouble()()
{
  if (v0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.voiceCommands);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#ParsedMeasurement: has a unit, should be Measurement not Double", v4, 2u);
    }

    v6 = 0;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t static ParsedMeasurement.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) != 0 && *&a1 == *&a4)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a6 & 1) == 0 && *&a1 == *&a4;
  }
}

uint64_t getEnumTagSinglePayload for ParsedMeasurement(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParsedMeasurement(uint64_t result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_1_65()
{

  outlined consume of ParsedMeasurement(v0, v1, 1);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.__allocating_init(deviceState:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(a1);
  return v2;
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  outlined init with copy of DeviceState(a1, v1 + 16);
  outlined init with copy of DeviceState(a1, v15);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v11 = type metadata accessor for AppNameResolver();
  v12 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v13 = swift_allocObject();
  *(v13 + 136) = v11;
  *(v13 + 144) = &protocol witness table for AppNameResolver;
  *(v13 + 112) = v12;
  *(v13 + 56) = v6;
  outlined init with take of Output(v15, v13 + 16);
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 80) = v7;
  *(v13 + 88) = v8;
  *(v13 + 96) = v9;
  *(v13 + 104) = v10;
  *(v2 + 56) = v13;
  return v2;
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[6] = v1;
  v2 = type metadata accessor for ParameterIdentifier();
  v0[7] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v0[8] = v3;
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v0[10] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[11] = v7;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v47 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  if (v10)
  {
    v43 = *(v0 + 72);
    v44 = *(v0 + 64);
    v45 = *(v0 + 56);
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = ParameterResolutionRecord.intent.getter();
    v17 = [v16 typeName];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v9;
    v20 = v19;

    v21 = *(v14 + 8);
    v21(v11, v13);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v23 = ParameterIdentifier.name.getter();
    v25 = v24;
    (*(v44 + 8))(v43, v45);
    v21(v12, v13);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v46);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_0, v8, v42, "CustomIntentUnsupportedValueFlowStrategy removing parameter value for %s:%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = *(v14 + 8);
    v27(v12, v13);
    v27(v11, v13);
  }

  v28 = *(v0 + 96);
  v29 = *(v0 + 104);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 56);
  v33 = *(v0 + 64);
  v34 = *(v0 + 48);
  v35 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v36 = ParameterIdentifier.name.getter();
  v38 = v37;
  (*(v33 + 8))(v30, v32);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v39 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v35, v36, v38, v0 + 16, 0, 1);

  outlined destroy of String?(v0 + 16, &_sypSgMd, &_sypSgMR);

  v40 = *(v0 + 8);

  return v40(v39);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for DialogPhase();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for ParameterIdentifier();
  v1[12] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[15] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[16] = v17;
  v19 = *(v18 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v20 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[8];
  v9 = v1[7];

  v10 = *(v3 + 8);

  return v10();
}

{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
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
    _os_log_impl(&dword_0, v16, v17, "CustomIntentUnsupportedValueFlowStrategy: Starting unsupported slot value", v18, 2u);
  }

  v20 = v14[16];
  v19 = v14[17];
  v21 = v14[15];

  (*(v20 + 104))(v19, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v21);
  v22 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v20 + 8))(v19, v21);
  if (v22)
  {
    v24 = v14[13];
    v23 = v14[14];
    v50 = v14[12];
    v25 = v14[3];
    v26 = v14[4];
    type metadata accessor for WFDialogState();
    v14[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
    ParameterResolutionRecord.app.getter();
    v27 = App.appIdentifier.getter();
    v29 = v28;

    HIDWORD(a11) = static WFDialogState.isAppFirstRun(appId:)(v27, v29);

    v30 = *(v26 + 56);
    OUTLINED_FUNCTION_10_38();
    v14[19] = ParameterResolutionRecord.app.getter();
    ParameterResolutionRecord.parameter.getter();
    ParameterIdentifier.name.getter();
    v14[20] = v31;
    (*(v24 + 8))(v23, v50);
    OUTLINED_FUNCTION_10_38();
    v14[21] = ParameterResolutionRecord.result.getter();
    v14[22] = ParameterResolutionRecord.intent.getter();
    v49 = (*v30 + 304);
    v51 = *v49 + **v49;
    v32 = (*v49)[1];
    v33 = swift_task_alloc();
    v14[23] = v33;
    *v33 = v14;
    v33[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_6_1();

    return v40(v34, v35, v36, v37, v38, v39, v40, v41, v49, v51, a11, a12, a13, a14);
  }

  else
  {
    v44 = swift_task_alloc();
    v14[29] = v44;
    *v44 = v14;
    v44[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v45 = v14[3];
    v46 = v14[4];
    v47 = v14[2];
    OUTLINED_FUNCTION_6_1();

    return CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)();
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[25];
  v16 = v14[11];
  v17 = v14[7];
  v18 = v14[8];
  v20 = v14[5];
  v19 = v14[6];
  v41 = v14[3];
  v42 = v14[18];
  static DialogPhase.clarification.getter();
  v21 = [v15 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v19 + 16))(v17, v18, v20);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v19 + 8))(v18, v20);
  v22 = ParameterResolutionRecord.intent.getter();
  INIntent.isRestricted()();

  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v23 = type metadata accessor for ResponseFactory();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v14[26] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  v14[27] = v26;
  *(v26 + 16) = xmmword_216010;
  *(v26 + 32) = v15;
  v27 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v43 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v28 = v15;
  v29 = swift_task_alloc();
  v14[28] = v29;
  *v29 = v14;
  v29[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v30 = v14[11];
  v31 = v14[2];
  OUTLINED_FUNCTION_6_1();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v43, a12, a13, a14);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[23];
  *v6 = *v2;
  v5[24] = v1;

  v8 = v4[22];
  v9 = v4[21];
  v10 = v4[20];
  v11 = v4[19];
  if (v1)
  {

    v12 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v13 = v4[19];

    v5[25] = a1;
    v12 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for ParameterIdentifier();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for TemplatingResult();
  v1[14] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];
  v6 = v2[20];
  v7 = v2[19];
  v8 = v2[18];
  if (v0)
  {

    v9 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  }

  else
  {
    v10 = v2[18];

    v9 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[23];

  return v4();
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[12];
  v15 = v14[13];
  v38 = v14[11];
  v17 = v14[8];
  v18 = v14[9];
  type metadata accessor for WFDialogState();
  v14[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v19 = App.appIdentifier.getter();
  v21 = v20;

  HIDWORD(a11) = static WFDialogState.isAppFirstRun(appId:)(v19, v21);

  v22 = *(v18 + 56);
  OUTLINED_FUNCTION_10_38();
  v14[18] = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v14[19] = v23;
  (*(v16 + 8))(v15, v38);
  OUTLINED_FUNCTION_10_38();
  v14[20] = ParameterResolutionRecord.result.getter();
  v14[21] = ParameterResolutionRecord.intent.getter();
  v37 = (*v22 + 312);
  v39 = *v37 + **v37;
  v24 = (*v37)[1];
  v25 = swift_task_alloc();
  v14[22] = v25;
  *v25 = v14;
  v25[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  v26 = v14[16];
  OUTLINED_FUNCTION_6_1();

  return v34(v27, v28, v29, v30, v31, v32, v33, v34, v37, v39, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v14 + 128);
  v15 = *(v14 + 136);
  v17 = *(v14 + 120);
  v35 = *(v14 + 112);
  v36 = *(v14 + 104);
  v19 = *(v14 + 72);
  v18 = *(v14 + 80);
  v21 = *(v14 + 56);
  v20 = *(v14 + 64);
  v22 = ParameterResolutionRecord.intent.getter();
  INIntent.isRestricted()();

  v23 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v19[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v24 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v24);
  v25 = type metadata accessor for AceOutput();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0u;
  v21[3] = v25;
  v21[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v21);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v14 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v17 + 8))(v16, v35);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v14 + 16, v35, v36, a12, a13, a14);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1)
{
  v4 = *(**v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AutoShortcutCATsSimple.userDenied();

  return v8(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v10, a4);
}

void *ShortcutsLinkDisambiguationFlowStrategy.__allocating_init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v14 = swift_allocObject();
  v16 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  OUTLINED_FUNCTION_13_1();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, v22, a6, a7, a8, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v24;
}

void *ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v16 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  OUTLINED_FUNCTION_13_1();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, v22, a6, a7, a8, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v24;
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_13_1();
  v68 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v72 = v13;
  v73 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v12);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v66 - v18;
  v19 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v66 - v32;
  v34 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
  OUTLINED_FUNCTION_27_6();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.voiceCommands);
  v37 = *(v21 + 16);
  v74 = a1;
  v37(v27, a1, v19);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v67 = v4;
    v42 = v41;
    v75 = v41;
    *v40 = 136315138;
    v43 = Input.description.getter();
    v66 = v11;
    v45 = v44;
    (*(v21 + 8))(v27, v19);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v75);
    v11 = v66;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_0, v38, v39, "#ShortcutsLinkDisambiguationFlowStrategy actionForInput: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v4 = v67;
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17();
  }

  else
  {

    (*(v21 + 8))(v27, v19);
  }

  v47 = v71;
  Input.parse.getter();
  v48 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v47);
  v49 = v72;
  v50 = *(v72 + 8);
  v51 = OUTLINED_FUNCTION_62();
  v50(v51);
  switch(v48)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v53 = v69;
      Input.parse.getter();
      v54 = *(v49 + 88);
      v55 = OUTLINED_FUNCTION_62();
      v57 = v56(v55);
      if (v57 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v57 != enum case for Parse.directInvocation(_:))
      {
        if (v57 != enum case for Parse.uso(_:))
        {
          static ActionForInput.ignore()();
          goto LABEL_10;
        }

LABEL_9:
        static ActionForInput.handle()();
LABEL_10:
        v58 = OUTLINED_FUNCTION_62();
        return (v50)(v58);
      }

      v60 = *(v49 + 96);
      v61 = OUTLINED_FUNCTION_62();
      v62(v61);
      (*(v68 + 32))(v11, v53, v4);
      if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v63)
      {
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v65 & 1) == 0)
        {
          static ActionForInput.ignore()();
          return (*(v68 + 8))(v11, v4);
        }
      }

      static ActionForInput.handle()();
      return (*(v68 + 8))(v11, v4);
  }
}

uint64_t closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)()
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
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v4, v5, "#ShortcutsLinkDisambiguationFlowStrategy submitting empty output to clear screen and prevent double-taps");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[12];

  outlined init with copy of DeviceState(v6 + 168, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  v9 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v10;
  *v10 = v11;
  v10[1] = closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v7, v8);
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
  OUTLINED_FUNCTION_12_0();
  v1 = v0[15];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkDisambiguationFlowStrategy failed to submit empty output to clear screen", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = type metadata accessor for USOParse();
  v1[17] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[18] = v6;
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Parse.DirectInvocation();
  v1[20] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[21] = v10;
  v12 = *(v11 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v13 = type metadata accessor for NLIntent();
  v1[24] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[25] = v14;
  v16 = *(v15 + 64);
  v1[26] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for Parse();
  v1[27] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[28] = v18;
  v20 = *(v19 + 64);
  v1[29] = OUTLINED_FUNCTION_28();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[16];
  v2 = [*(v1 + 160) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[30] = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[31] = v4;
  *v4 = v5;
  v4[1] = ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:);

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v1 + 40, v1 + 120, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v97 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 112);
  Input.parse.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = *(v0 + 120);
    (*(*(v0 + 224) + 96))(*(v0 + 232), *(v0 + 216));
    v10 = *(v8 + 32);
    v11 = OUTLINED_FUNCTION_62();
    v12(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
    PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
    OUTLINED_FUNCTION_27_6();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_26_25();
    v14 = (*(*v13 + 160))(v6);

    v15 = *(v14 + 16);
    if (v15)
    {
      v96 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v16 = 80;
      do
      {
        v17 = *(v14 + v16);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v96[2];
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 += 56;
        --v15;
      }

      while (v15);

      v19 = v96;
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 192);
    v45 = *(v0 + 104);
    *(v0 + 96) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
LABEL_19:
    static DisambiguationResult.chosenItem(_:)();
    (*(v43 + 8))(v42, v44);

    goto LABEL_35;
  }

  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);
    (*(*(v0 + 224) + 96))(v20, *(v0 + 216));
    (*(v23 + 32))(v21, v20, v22);
    v24 = Parse.DirectInvocation.userData.getter();
    if (v24)
    {
      specialized Dictionary.subscript.getter(0x65756C6176, 0xE500000000000000, v24, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v26 = *(v0 + 48);
          v25 = *(v0 + 56);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
          v27 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
          v86 = v27;
          if (v27)
          {
            v87 = *(v0 + 184);
            v88 = *(v0 + 160);
            v89 = *(v0 + 168);
            v90 = *(v0 + 104);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            OUTLINED_FUNCTION_27_6();
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_216010;
            *(v91 + 32) = v86;
            *(v0 + 88) = v91;
            v92 = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
            static DisambiguationResult.chosenItem(_:)();
            outlined consume of Data._Representation(v26, v25);

            (*(v89 + 8))(v87, v88);
            goto LABEL_35;
          }

          outlined consume of Data._Representation(v26, v25);
        }

        goto LABEL_27;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    outlined destroy of Any?(v0 + 16);
LABEL_27:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v55 = *(v0 + 176);
    v56 = *(v0 + 184);
    v57 = *(v0 + 160);
    v58 = *(v0 + 168);
    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.voiceCommands);
    (*(v58 + 16))(v55, v56, v57);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 176);
    if (v62)
    {
      v64 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96 = v93;
      buf = v64;
      *v64 = 136315138;
      v95 = v61;
      if (!Parse.DirectInvocation.userData.getter())
      {
        Dictionary.init(dictionaryLiteral:)();
      }

      v66 = *(v0 + 168);
      v65 = *(v0 + 176);
      v67 = *(v0 + 160);
      v68 = Dictionary.description.getter();
      v70 = v69;

      v71 = *(v66 + 8);
      v71(v65, v67);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v96);

      *(buf + 4) = v72;
      _os_log_impl(&dword_0, v60, v95, "#ShortcutsLinkDisambiguationFlowStrategy could not get value from direct invocation. %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_17();
    }

    else
    {
      v73 = *(v0 + 160);
      v74 = *(v0 + 168);

      v71 = *(v74 + 8);
      v71(v63, v73);
    }

    v75 = *(v0 + 184);
    v76 = *(v0 + 160);
    v77 = *(v0 + 104);
    *(v0 + 80) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
    static DisambiguationResult.chosenItem(_:)();
    v71(v75, v76);
    goto LABEL_35;
  }

  if (v5 == enum case for Parse.uso(_:))
  {
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);
    (*(*(v0 + 224) + 96))(*(v0 + 232), *(v0 + 216));
    v32 = *(v29 + 32);
    v33 = OUTLINED_FUNCTION_62();
    v34(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
    PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
    OUTLINED_FUNCTION_27_6();
    swift_allocObject();
    v35 = OUTLINED_FUNCTION_26_25();
    v36 = (*(*v35 + 136))(v28);

    v37 = *(v36 + 16);
    if (v37)
    {
      v96 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v38 = 80;
      do
      {
        v39 = *(v36 + v38);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = v96[2];
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v38 += 56;
        --v37;
      }

      while (v37);

      v41 = v96;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v44 = *(v0 + 136);
    v85 = *(v0 + 104);
    *(v0 + 72) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
    goto LABEL_19;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.voiceCommands);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v48))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v49, v50, "#ShortcutsLinkDisambiguationFlowStrategy unexpected input type");
    OUTLINED_FUNCTION_17();
  }

  v52 = *(v0 + 224);
  v51 = *(v0 + 232);
  v53 = *(v0 + 216);
  v54 = *(v0 + 104);

  *(v0 + 64) = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
  static DisambiguationResult.chosenItem(_:)();
  (*(v52 + 8))(v51, v53);
LABEL_35:
  v78 = *(v0 + 232);
  v79 = *(v0 + 208);
  v81 = *(v0 + 176);
  v80 = *(v0 + 184);
  v82 = *(v0 + 152);

  OUTLINED_FUNCTION_6_0();

  return v83();
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = *(v0[9] + 16);
  type metadata accessor for RunLinkActionCATsSimple();
  static CATOption.defaultMode.getter();
  v0[12] = CATWrapperSimple.__allocating_init(options:globals:)();
  v4 = type metadata accessor for ResponseFactory();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = ResponseFactory.init()();
  v0[5] = v4;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v8;
  *v8 = v9;
  v8[1] = ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  v10 = v0[7];
  v11 = v0[8];

  return static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *(v5 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[14] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[11];

    OUTLINED_FUNCTION_6_0();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v1[25] = v7;
  v8 = type metadata accessor for SpeakableString();
  v1[32] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[33] = v9;
  v11 = *(v10 + 64);
  v1[34] = OUTLINED_FUNCTION_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v15);
  v17 = *(v16 + 64);
  v1[36] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for OutputGenerationManifest();
  v1[37] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v1[38] = v19;
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v22);
  v24 = *(v23 + 64);
  v1[40] = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ShortcutsLinkDisambiguationFlowStrategy makePromptForDisambiguation - make prompt for disambiguation item", v4, 2u);
    OUTLINED_FUNCTION_17();
  }

  v5 = v0[26];

  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
  v0[42] = PaginatedItemContainer.items.getter();
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);

  return Array<A>.toDisambiguationItemModels()();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 344);
  v5 = *(v3 + 336);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 352) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = *(v1 + 352);
  v3 = *(v1 + 320);
  v4 = *(v1 + 264);
  v5 = *(v1 + 232);
  outlined init with copy of DeviceState(*(v1 + 216), v1 + 144);
  type metadata accessor for RunLinkActionCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v1 + 360) = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v9;
  outlined init with take of AceServiceInvokerAsync((v1 + 144), (inited + 2));
  inited[7] = v6;
  inited[8] = v5;
  inited[9] = v7;
  inited[10] = v8;
  type metadata accessor for ShortcutsLinkNLContextProvider();
  *(v1 + 368) = swift_initStackObject();
  v11 = specialized Array.count.getter(v2);
  v37 = v2 & 0xC000000000000001;
  v12 = v2 & 0xFFFFFFFFFFFFFF8;
  v13 = v2 + 32;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v1 + 376) = v16;
    if (v11 == v15)
    {
      break;
    }

    if (v37)
    {
      v25 = *(v1 + 352);
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = result;
    }

    else
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_17;
      }

      v17 = *(v13 + 8 * v15);
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v18 = *(v1 + 272);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    String.toSpeakableString.getter();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      v16 = v26;
    }

    v22 = v16[2];
    v21 = v16[3];
    if (v22 >= v21 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v16);
      v16 = v27;
    }

    v23 = *(v1 + 272);
    v24 = *(v1 + 256);
    v16[2] = v22 + 1;
    result = (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v23, v24);
    ++v15;
  }

  v28 = *(v1 + 328);
  v29 = *(v1 + 312);
  v31 = *(v1 + 280);
  v30 = *(v1 + 288);
  v32 = *(v1 + 208);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v33 = PaginatedItemContainer.items.getter();
  ShortcutsLinkNLContextProvider.makeContextForDisambiguation(disambiguationItems:)(v33);

  v34 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v34);
  OutputGenerationManifest.nlContextUpdate.setter();
  v35 = swift_task_alloc();
  *(v1 + 384) = v35;
  *v35 = v1;
  v35[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);
  v36 = *(v1 + 224);

  return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[48];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  v3[49] = v8;
  v3[50] = v0;

  v9 = v2[47];
  if (v0)
  {
    v10 = v3[44];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[49];
  v2 = v0[39];
  v3 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  v4 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[51] = v5;
  *v5 = v6;
  v5[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);
  v7 = v0[44];
  v8 = v0[39];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[25];

  return static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(v11, v10, v1, v9, v8, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[51];
  *v4 = *v1;
  *(v3 + 416) = v0;

  v6 = v2[49];
  v7 = v2[44];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = v12[49];
  v14 = v12[45];
  v16 = v12[39];
  v15 = v12[40];
  v17 = v12[37];
  v18 = v12[38];
  v20 = v12[35];
  v19 = v12[36];
  v21 = v12[34];
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  (*(v18 + 8))(v16, v17);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  v16 = *(v12 + 400);
  OUTLINED_FUNCTION_19_20();

  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();

  v16 = *(v12 + 416);
  OUTLINED_FUNCTION_19_20();

  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7, v8, v9);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = _swiftEmptyArrayStorage;
  *(v13 + 56) = _swiftEmptyArrayStorage;
  v16 = (v13 + 56);
  countAndFlagsBits = *(v13 + 80);
  if (countAndFlagsBits)
  {
    v18 = countAndFlagsBits;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = *(&dword_10 + (*v16 & 0xFFFFFFFFFFFFFF8));
    if (v12 >= *(&dword_18 + (*v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = *v16;
  }

  *(v13 + 112) = v15;
  OUTLINED_FUNCTION_28_17(*(v13 + 72));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    OUTLINED_FUNCTION_28_17(*(v13 + 88));
    v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 128) = v23;
    *v23 = v24;
    v23[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:);
    v25 = *(v13 + 96);
    v26 = *(v13 + 64);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v26, v15, v25, v12, v14, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    if (countAndFlagsBits)
    {
      v27 = *(v13 + 80);
      v28 = DialogExecutionResult.firstDialogFullPrint()();
      countAndFlagsBits = v28.value._countAndFlagsBits;
      object = v28.value._object;
    }

    else
    {
      object = 0;
    }

    v30 = *(v13 + 104);
    OUTLINED_FUNCTION_28_17(*(v13 + 88));
    *(v13 + 40) = type metadata accessor for WorkflowDataModels(0);
    *(v13 + 48) = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 16));
    *boxed_opaque_existential_1 = countAndFlagsBits;
    boxed_opaque_existential_1[1] = object;
    boxed_opaque_existential_1[2] = v30;
    swift_storeEnumTagMultiPayload();
    v32 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 120) = v35;
    *v35 = v36;
    v35[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:);
    v37 = *(v13 + 96);
    v38 = *(v13 + 64);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v38, v13 + 16, v15, v37, v12, v14, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_6_0();
  return v0();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  return v0;
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:)();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

void *specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8, void *a9, uint64_t a10, uint64_t a11)
{
  a9[13] = a10;
  a9[14] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9 + 10);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  a9[3] = a1;
  a9[4] = a2;
  a9[20] = a3;
  a9[2] = a4;
  outlined init with take of AceServiceInvokerAsync(a6, (a9 + 5));
  outlined init with take of AceServiceInvokerAsync(a7, (a9 + 15));
  outlined init with take of AceServiceInvokerAsync(a8, (a9 + 21));
  return a9;
}

uint64_t sub_1D0704()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_19_20()
{
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[34];
}

void *OUTLINED_FUNCTION_26_25()
{

  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v0, 0);
}

id static SLFConfirmationItemConverter.toDirectInvocationCommand(confirmation:appBundleId:deviceState:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xE200000000000000;
      v6 = 28526;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x6C65636E6163;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7562617;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "confirmation");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  v8 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  v11 = v10;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v11, v9);
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v13 = DeviceState.asInvocationContext.getter();
  [v13 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v14 = objc_opt_self();
  v15 = [v14 runSiriKitExecutorCommandWithContext:v13 payload:v9];
  v16 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v17 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBundleId:v18];

  [v16 setRequestedApp:v17];
  [v15 setAppSelectionState:v16];

  v19 = [v14 wrapCommandInStartLocalRequest:v15];
  return v19;
}

uint64_t static SLFConfirmationItemConverter.toVoiceCommandConfirmation(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 3;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x616D7269666E6F63, 0xEC0000006E6F6974);
  if ((v3 & 1) == 0)
  {
    return 3;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  v4 = v9 == 7562617 && v10 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v9 == 28526 && v10 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_50() & 1) != 0)
    {

      return 1;
    }

    else if (v9 == 0x6C65636E6163 && v10 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_50();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional __swiftcall RunLinkActionCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t RunLinkActionCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = RunLinkActionCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = RunLinkActionCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t RunLinkActionActionConfirmationParameters.verb.setter()
{
  return RunLinkActionActionConfirmationParameters.verb.setter();
}

{
  v2 = OUTLINED_FUNCTION_92();
  v4 = v1 + *(v3(v2) + 24);

  return outlined assign with take of SpeakableString?(v0, v4);
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionActionConfirmationParameters.verb.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for RunLinkActionActionConfirmationParameters(v0) + 24);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionActionPerformedParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_216840;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  outlined init with copy of AppDisplayInfo?(v3, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    __swift_allocate_boxed_opaque_existential_1((v13 + 48));
    OUTLINED_FUNCTION_21_2(v14);
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_15_27();
  *(v13 + 80) = v17;
  *(v13 + 88) = v16;
  v18 = a3(0);
  OUTLINED_FUNCTION_58_9(v18);
  *(v13 + 120) = &type metadata for Bool;
  *(v13 + 96) = v19;
  return v13;
}

uint64_t RunLinkActionActionPerformedParameters.init(customDialog:executeSashGroupOnWatch:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, a3);
  result = a2(0);
  *(v4 + *(result + 20)) = v3;
  return result;
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.device.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0) + 20));
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_92();
  v3 = *(type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionAutoShortcutAppEnabledParameters.device.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v0) + 20);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_31_17(v6, xmmword_21A520);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v7);
  if (v8)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_21_2(&_s16SiriDialogEngine15SpeakableStringVSgMd);
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_41_14();
    v11();
  }

  *(v6 + 80) = 0x656369766564;
  *(v6 + 88) = 0xE600000000000000;
  v12 = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0);
  v13 = *(v0 + v12[5]);
  if (v13)
  {
    v14 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v14 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v13;
  *(v6 + 120) = v14;
  *(v6 + 128) = 0xD000000000000017;
  *(v6 + 136) = 0x80000000002349D0;
  *(v6 + 144) = *(v0 + v12[6]);
  *(v6 + 168) = &type metadata for Bool;
  *(v6 + 176) = 0xD000000000000011;
  *(v6 + 184) = 0x8000000000233600;
  v15 = *(v0 + v12[7]);
  *(v6 + 216) = &type metadata for Bool;
  *(v6 + 192) = v15;

  return v6;
}

int *RunLinkActionAutoShortcutAppEnabledParameters.init(appName:device:executeSashGroupOnWatch:wasAlreadyEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  result = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t RunLinkActionConfirmChangeEnablementParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_31_17(v6, xmmword_218630);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v7);
  if (v8)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_21_2(&_s16SiriDialogEngine15SpeakableStringVSgMd);
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_41_14();
    v11();
  }

  OUTLINED_FUNCTION_15_27();
  *(v6 + 80) = v13;
  *(v6 + 88) = v12;
  v14 = type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(0);
  v15 = OUTLINED_FUNCTION_58_9(v14);
  *(v6 + 96) = v16;
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0x696C62616E457369;
  *(v6 + 136) = 0xEA0000000000676ELL;
  v17 = *(v0 + *(v15 + 24));
  *(v6 + 168) = &type metadata for Bool;
  *(v6 + 144) = v17;
  return v6;
}

uint64_t RunLinkActionConfirmChangeEnablementParameters.init(appName:executeSashGroupOnWatch:isEnabling:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, a3);
  result = type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(0);
  *(v4 + *(result + 20)) = v3;
  *(v4 + *(result + 24)) = a2;
  return result;
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionParameterConfirmationParameters.parameterValue.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for RunLinkActionParameterConfirmationParameters(v0) + 24);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionActionConfirmationParameters.asKeyValuePairs()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_29_22(v16, xmmword_218630);
  outlined init with copy of AppDisplayInfo?(v17, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
  }

  else
  {
    *(v16 + 72) = v18;
    __swift_allocate_boxed_opaque_existential_1((v16 + 48));
    OUTLINED_FUNCTION_21_2(v18);
    (*(v19 + 32))();
  }

  OUTLINED_FUNCTION_15_27();
  *(v16 + 80) = v21;
  *(v16 + 88) = v20;
  v22 = a1(0);
  v23 = OUTLINED_FUNCTION_58_9(v22);
  *(v16 + 96) = v24;
  *(v16 + 120) = &type metadata for Bool;
  *(v16 + 128) = a2;
  *(v16 + 136) = a3;
  outlined init with copy of AppDisplayInfo?(v3 + *(v23 + 24), v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
  }

  else
  {
    *(v16 + 168) = v18;
    __swift_allocate_boxed_opaque_existential_1((v16 + 144));
    OUTLINED_FUNCTION_21_2(v18);
    (*(v25 + 32))();
  }

  return v16;
}

uint64_t RunLinkActionActionConfirmationParameters.init(customDialog:executeSashGroupOnWatch:verb:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  v9 = a4(0);
  *(a5 + *(v9 + 20)) = a2;
  v10 = a5 + *(v9 + 24);

  return outlined init with take of SpeakableString?(a3, v10);
}

uint64_t RunLinkActionParameterValueDisambiguationParameters.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0) + 24));
}

uint64_t RunLinkActionParameterValueDisambiguationParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_29_22(v6, xmmword_218630);
  OUTLINED_FUNCTION_41_14();
  outlined init with copy of AppDisplayInfo?(v7, v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v10);
  if (v11)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v6 + 48));
    OUTLINED_FUNCTION_21_2(&_s16SiriDialogEngine15SpeakableStringVSgMd);
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_41_14();
    v14();
  }

  OUTLINED_FUNCTION_15_27();
  *(v6 + 80) = v16;
  *(v6 + 88) = v15;
  v17 = type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  v18 = OUTLINED_FUNCTION_58_9(v17);
  *(v6 + 96) = v19;
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0x736D657469;
  *(v6 + 136) = 0xE500000000000000;
  v20 = *(v0 + *(v18 + 24));
  *(v6 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v6 + 144) = v20;

  return v6;
}

uint64_t RunLinkActionParameterValueDisambiguationParameters.init(customDialog:executeSashGroupOnWatch:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, a3);
  result = type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  *(v4 + *(result + 20)) = v3;
  *(v4 + *(result + 24)) = a2;
  return result;
}

uint64_t RunLinkActionCATPatternsExecutor.actionConfirmation(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionConfirmationParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_41_3();
  v13 = v1;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_11_37();
  v5 = OUTLINED_FUNCTION_45_10(v2, v3, v4);
  v0(v5);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionConfirmationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  v10 = OUTLINED_FUNCTION_17_32(32);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_23();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_23();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.actionPerformed(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionPerformedParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionPerformedParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(29);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_27_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_27_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t outlined destroy of RunLinkActionActionConfirmationParameters()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t RunLinkActionCATPatternsExecutor.actionPerformedUseSonicStatus(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionPerformedUseSonicStatusParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionPerformedUseSonicStatusParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(43);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_17();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_17();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.autoShortcutAppEnabled(executeSashGroupOnWatch:wasAlreadyEnabled:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v5 = OUTLINED_FUNCTION_51_11(v1, v2, v3, v4);
  v6 = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v5);
  OUTLINED_FUNCTION_12_32(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41_3();
  v15 = v4;
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_3_62(v5);
  *(v0 + v6) = 0;
  *(v0 + *(v1 + 24)) = v3;
  v7 = OUTLINED_FUNCTION_44_16(*(v1 + 28));
  v2(v7);
  OUTLINED_FUNCTION_34_17();
  v8 = RunLinkActionAutoShortcutAppEnabledParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v8);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_85_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_1_66(v10);
  v12 = OUTLINED_FUNCTION_17_32(36);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22_26();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.autoShortcutFirstRun(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  RunParameters = type metadata accessor for RunLinkActionAutoShortcutFirstRunParameters(v4);
  OUTLINED_FUNCTION_12_32(RunParameters);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  Run = RunLinkActionAutoShortcutFirstRunParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(Run);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_85_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_1_66(v6);
  OUTLINED_FUNCTION_33_13(34);
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_26_26();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_26_26();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.confirmChangeEnablement(executeSashGroupOnWatch:isEnabling:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v5 = OUTLINED_FUNCTION_51_11(v1, v2, v3, v4);
  v6 = type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(v5);
  OUTLINED_FUNCTION_12_32(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41_3();
  v15 = v4;
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_3_62(v5);
  *(v0 + v6) = v3;
  v7 = OUTLINED_FUNCTION_44_16(*(v1 + 24));
  v2(v7);
  OUTLINED_FUNCTION_34_17();
  v8 = RunLinkActionConfirmChangeEnablementParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v8);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_85_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_1_66(v10);
  v12 = OUTLINED_FUNCTION_17_32(37);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_23_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_23_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.continueInApp(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionContinueInAppParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionContinueInAppParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(27);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_24_24();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_24_24();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.parameterConfirmation(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionParameterConfirmationParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_41_3();
  v13 = v1;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_11_37();
  v5 = OUTLINED_FUNCTION_45_10(v2, v3, v4);
  v0(v5);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionParameterConfirmationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  v10 = OUTLINED_FUNCTION_17_32(35);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_20_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_20_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 96) = v5;
  v6 = type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_41_3();
  v17 = v1;
  OUTLINED_FUNCTION_14_0();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 96);
  type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_11_37();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  *(v2 + *(v3 + 20)) = v7;
  *(v2 + *(v3 + 24)) = v6;

  v5(v2);
  OUTLINED_FUNCTION_34_17();
  *(v0 + 64) = RunLinkActionParameterValueDisambiguationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = RunLinkActionCATPatternsExecutor.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:);
  v13 = *(v0 + 40);
  v14 = OUTLINED_FUNCTION_17_32(42);

  return v15(v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_28_18();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_28_18();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t RunLinkActionCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return RunLinkActionCATPatternsExecutor.init(templateDir:options:globals:)(a1, a2);
}

uint64_t RunLinkActionCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_92();
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  outlined init with copy of AppDisplayInfo?(v2, &v16 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v5 + 16);
  OUTLINED_FUNCTION_41_14();
  v13();
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionConfirmation(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionPerformed(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionPerformedUseSonicStatus(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.autoShortcutAppEnabled(executeSashGroupOnWatch:wasAlreadyEnabled:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.autoShortcutFirstRun(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.userDenied();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.confirmChangeEnablement(executeSashGroupOnWatch:isEnabling:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.continueInApp(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 48);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.parameterConfirmation(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 64);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v14(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for RunLinkActionCATPatternsIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D4B00);
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

void type metadata completion function for RunLinkActionActionPerformedParameters()
{
  OUTLINED_FUNCTION_19_21();
  type metadata accessor for SpeakableString?(319, v0, v1, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D4C64()
{
  OUTLINED_FUNCTION_49_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_59_10(*(v1 + 20));
    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D4D1C()
{
  OUTLINED_FUNCTION_32_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_60_7(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_35_18();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

void type metadata completion function for RunLinkActionAutoShortcutAppEnabledParameters()
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for RunLinkActionConfirmChangeEnablementParameters()
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_49_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_32_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_60_7(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_35_18();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

void type metadata completion function for RunLinkActionActionConfirmationParameters()
{
  OUTLINED_FUNCTION_19_21();
  type metadata accessor for SpeakableString?(319, v0, v1, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D51F4()
{
  OUTLINED_FUNCTION_49_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_59_10(*(v1 + 24));
    return (v8 + 1);
  }
}

uint64_t sub_1D52A0()
{
  OUTLINED_FUNCTION_32_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_60_7(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_35_18();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

void type metadata completion function for RunLinkActionParameterValueDisambiguationParameters()
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for [SpeakableString], &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SpeakableString?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_66(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_62(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v4 = *(v2 + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_32(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_20_20()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_21_23()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_23_20()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_24_24()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_25_17()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_27_20()
{
  v2 = *(v0 + 48);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_28_18()
{
  v2 = *(v0 + 56);

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_29_22(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "customDialog");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;
  return v2;
}

uint64_t OUTLINED_FUNCTION_30_16()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 88);

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_31_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_45_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);
  __swift_storeEnumTagSinglePayload(v3 + *(v5 + 24), 1, 1, v4);
  *(v3 + *(v5 + 20)) = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_51_11(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_53_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return outlined init with take of SpeakableString?(a1, a2);
}

uint64_t OUTLINED_FUNCTION_54_11()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_60_8()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 88);

  return type metadata accessor for SpeakableString();
}

void *WorkflowDataModels.LinkPromptForValueModel.init(linkModel:options:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OUTLINED_FUNCTION_149_0(a1, a2);
  *(v3 + 80) = v2;
  return result;
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v3, v4);
}

uint64_t WorkflowDataModels.EnableTCCModel.asSnippetPluginModel()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v8 = *v1;
  v6 = v1[2];
  v3 = v6;
  v7 = v2;
  *a1 = v8;
  a1[1] = v2;
  a1[2] = v3;
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of String(&v8, v5);
  outlined init with copy of String(&v7, v5);
  return outlined init with copy of DeviceState?();
}

uint64_t WorkflowDataModels.LinkPromptForValueModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 160) = v21;
  *(v0 + 96) = v20;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v10 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  *(v0 + 120) = v10;
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64) + 15;
  *(v0 + 128) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  v1 = *(v0 + 56);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v3 = *(v0 + 16);
    v4 = [*(v0 + 32) _title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v3[3] = &type metadata for WorkflowDataModels.WatchModel;
    v3[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v8 = swift_allocObject();
    *v3 = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v19 = v16;
    OUTLINED_FUNCTION_51_4();
    v20 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v0 + 136) = v20;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v21 = v17;
    v30.value.super.isa = v16;
    isa = INInteraction.__allocating_init(intent:response:)(v21, v30).super.isa;
    *(v0 + 144) = isa;
    v23 = v20;
    CodableAceObject.init(wrappedValue:)();
    v24 = *(v15 + 20);
    v25 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v26 = *(v15 + 24);
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:);
    v28 = *(v0 + 80);

    return INImage.convertToVisualProperty()(v14 + v26);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = (*(v0 + 128) + *(*(v0 + 120) + 28));
  *v4 = *(v0 + 64);
  v4[1] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  if (v3)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAStartLocalRequest, SAStartLocalRequest_ptr);

    v12 = v11;
    CodableAceObject.init(wrappedValue:)();

    outlined destroy of Any?(v8, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  }

  else
  {
    v13 = *(v0 + 72);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 160);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 16);
  v20 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v19[3] = v20;
  v19[4] = &protocol witness table for WorkflowDataModels.CustomIntentHandledModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_51_4();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v22 = (boxed_opaque_existential_1 + v20[5]);
  *v22 = v18;
  v22[1] = v17;
  v23 = v20[6];
  outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  *(boxed_opaque_existential_1 + v20[7]) = v16;
  v24 = *(v0 + 128);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);

  OUTLINED_FUNCTION_6_0();

  return v27();
}

uint64_t WorkflowDataModels.ConfirmActionModel.init(appBundleId:appDisplayName:confirmLabel:noLabel:archivedViewData:isDestructive:prompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  return result;
}

uint64_t WorkflowDataModels.ConfirmActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x68uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.ConfirmActionModel(v3, v4);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__allocating_init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  return WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()(a1, a2, a3, a4);
}

{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for WorkflowDataModels(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.init(openAppButtonLabel:appPunchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.asSnippetPluginModel()()
{
  return WorkflowDataModels.CustomIntentErrorModel.asSnippetPluginModel()();
}

{
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
  type metadata accessor for WorkflowDataModels(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WorkflowDataModels.LinkActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.LinkActionModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForShowAlert(deviceState:shortcutName:confirmLabel:cancelLabel:title:message:)()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = (v0 + 40);
    v18 = *(v0 + 32);
    v20 = *(v0 + 48);
    v6 = *(v0 + 16);
    v6[3] = &type metadata for WorkflowDataModels.WatchModel;
    v6[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v7 = swift_allocObject();
    *v6 = v7;
    *(v7 + 16) = v18;
    *(v7 + 32) = v20;
    *(v7 + 48) = v4;
    *(v7 + 56) = v3;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
  }

  else
  {
    v5 = (v0 + 104);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v19 = *(v0 + 48);
    v21 = *(v0 + 64);
    v12 = *(v0 + 16);
    v12[3] = &type metadata for WorkflowDataModels.ShowAlertModel;
    v12[4] = &protocol witness table for WorkflowDataModels.ShowAlertModel;
    v13 = swift_allocObject();
    *v12 = v13;
    *(v13 + 16) = v19;
    *(v13 + 32) = v21;
    *(v13 + 48) = v11;
    *(v13 + 56) = v9;
    *(v13 + 64) = v10;
    *(v13 + 72) = v8;
  }

  v14 = *v5;
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t static WorkflowDataModels.getThumbnail(imageData:)()
{
  v3 = type metadata accessor for ImageElement.ImageStyle();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_29_17();
  v30 = type metadata accessor for ImageElement();
  v13 = OUTLINED_FUNCTION_7_1(v30);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  (*(v6 + 104))(v0, enum case for ImageElement.ImageStyle.default(_:), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v22 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_7_1(v22);
  v24 = v23;
  v26 = *(v25 + 72);
  v27 = *(v23 + 80);
  OUTLINED_FUNCTION_83_5();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_216850;
  (*(v24 + 104))(v28 + v1, enum case for _ProtoIdiom.default(_:), v22);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v28);
  static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();

  (*(v6 + 8))(v0, v3);
  outlined destroy of Any?(v2, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  ImageElement.convertToVisualProperty()();
  return (*(v15 + 8))(v20, v30);
}

void __swiftcall WorkflowDataModels.AutoShortcutFirstRunModel.init(viewModel:confirmLabel:cancelLabel:)(SiriLinkFlowPlugin::WorkflowDataModels::AutoShortcutFirstRunModel *__return_ptr retstr, SiriLinkFlowPlugin::AutoShortcutAppPhrasesViewModel *viewModel, Swift::String confirmLabel, Swift::String cancelLabel)
{
  object = cancelLabel._object;
  OUTLINED_FUNCTION_40_11();
  v9 = v8;
  memcpy(v8, v10, 0x50uLL);
  v9[10] = v6;
  v9[11] = v5;
  v9[12] = v4;
  v9[13] = object;
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x70uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v5 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v0 + 112) = v5;
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 16);
    v12 = [*(v0 + 32) _title];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v11[3] = &type metadata for WorkflowDataModels.WatchModel;
    v11[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v16 = swift_allocObject();
    *v11 = v16;

    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v9;
    *(v16 + 48) = v8;
    *(v16 + 56) = v7;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    OUTLINED_FUNCTION_6_0();

    return v17();
  }

  else
  {
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 16);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v22 = v19;
    v23 = v20;
    v35.value.super.isa = v19;
    isa = INInteraction.__allocating_init(intent:response:)(v23, v35).super.isa;
    *(v0 + 120) = isa;
    v25 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v0 + 128) = v25;
    v21[3] = v25;
    v21[4] = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    *(v0 + 136) = boxed_opaque_existential_1;
    v27 = v5;
    CodableAceObject.init(wrappedValue:)();
    v28 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    *(v0 + 144) = v28;
    v29 = *(v28 + 20);
    v30 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v31 = *(v28 + 24);
    v32 = swift_task_alloc();
    *(v0 + 152) = v32;
    *v32 = v0;
    v32[1] = static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:);
    v33 = *(v0 + 104);

    return INImage.convertToVisualProperty()(boxed_opaque_existential_1 + v31);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = (v2 + *(v1 + 28));
  *v10 = v6;
  v10[1] = v5;
  v11 = (v2 + *(v3 + 20));
  *v11 = v9;
  v11[1] = v8;
  v12 = (v2 + *(v3 + 24));
  *v12 = v15;
  v12[1] = v7;
  OUTLINED_FUNCTION_6_0();
  v16 = v13;

  return v16();
}

void *WorkflowDataModels.LinkConfirmationModel.init(linkModel:confirmLabel:cancelLabel:isDestructive:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = memcpy(a7, __src, 0x50uLL);
  *(a7 + 80) = a2;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t WorkflowDataModels.LinkConfirmationModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x71uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v3, v4);
}

uint64_t AutoShortcutAppPhrasesViewModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of AutoShortcutAppPhrasesViewModel(v3, v4);
}

uint64_t WorkflowDataModels.ShowAlertModel.asSnippetPluginModel()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v1[3];
  a1[2] = v1[2];
  a1[3] = v3;
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.ShowAlertModel(v4, v5);
}

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x614C6C65636E6163;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ShowAlertModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_25_18();
  v15(v14);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void __swiftcall WorkflowDataModels.ShowAlertModel.init(confirmLabel:cancelLabel:title:message:)(SiriLinkFlowPlugin::WorkflowDataModels::ShowAlertModel *__return_ptr retstr, Swift::String confirmLabel, Swift::String cancelLabel, Swift::String_optional title, Swift::String message)
{
  retstr->confirmLabel = confirmLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->title = title;
  retstr->message = message;
}

void WorkflowDataModels.ShowAlertModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_17();
  v12 = v3[4];
  OUTLINED_FUNCTION_53_9(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_113_0();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v14;
    OUTLINED_FUNCTION_113_0();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v16;
    v24 = v15;
    LOBYTE(v32[0]) = 2;
    OUTLINED_FUNCTION_113_0();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v17;
    OUTLINED_FUNCTION_113_0();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    (*(v8 + 8))(v1, v6);
    *&v28 = v13;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v18;
    *(&v31 + 1) = v20;
    outlined init with copy of WorkflowDataModels.ShowAlertModel(&v28, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v32[0] = v13;
    v32[1] = v27;
    v32[2] = v24;
    v32[3] = v26;
    v32[4] = v23;
    v32[5] = v25;
    v32[6] = v18;
    v32[7] = v20;
    outlined destroy of WorkflowDataModels.ShowAlertModel(v32);
    v21 = v29;
    *v5 = v28;
    v5[1] = v21;
    v22 = v31;
    v5[2] = v30;
    v5[3] = v22;
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t protocol witness for SnippetPluginModelProviding.asSnippetPluginModel() in conformance WorkflowDataModels.ShowAlertModel@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return WorkflowDataModels.ShowAlertModel.asSnippetPluginModel()(a1);
}

double protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ShowAlertModel@<D0>(_OWORD *a1@<X8>)
{
  WorkflowDataModels.ShowAlertModel.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4C6D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x614C6C65636E6163;
  }

  return 0x74706D6F7270;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.EnableTCCModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.EnableTCCModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v12 = OUTLINED_FUNCTION_25_18();
  v13(v12);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.EnableTCCModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_56_7();
  v9 = v2[4];
  OUTLINED_FUNCTION_53_9(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v11;
    OUTLINED_FUNCTION_49_13();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v12;
    OUTLINED_FUNCTION_91_2();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = OUTLINED_FUNCTION_90_2();
    v16 = v15;
    v17(v14, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    *v4 = v10;
    v4[1] = v20;
    v4[2] = v18;
    v4[3] = v19;
    v4[4] = v13;
    v4[5] = v16;
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

double protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.EnableTCCModel@<D0>(_OWORD *a1@<X8>)
{
  WorkflowDataModels.EnableTCCModel.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void WorkflowDataModels.WatchModel.viewType.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_154();
  outlined copy of WatchViewType(v5, v6);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_154();
}

uint64_t WorkflowDataModels.WatchModel.confirmLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WorkflowDataModels.WatchModel.cancelLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t WorkflowDataModels.WatchModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.WatchModel(v3, v4);
}

uint64_t WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEC000000656D614ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t WorkflowDataModels.WatchModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0x6570795477656976;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x614C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.WatchModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.WatchModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    v14 = *(v1 + 1);
    v15 = *(v1 + 2);
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[6];
    v9 = v1[7];
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[8];
    v11 = v1[9];
    OUTLINED_FUNCTION_9_31(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v12 = OUTLINED_FUNCTION_25_18();
  v13(v12);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.WatchModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_30_14();
  v12 = v3[4];
  OUTLINED_FUNCTION_53_9(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v14;
    LOBYTE(v30[0]) = 1;
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v32;
    v27 = v33;
    LOBYTE(v31[0]) = 2;
    OUTLINED_FUNCTION_130_0();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_130_0();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v1;
    v18 = v17;
    (*(v8 + 8))(v16, v6);
    v30[0] = v13;
    v30[1] = v29;
    OUTLINED_FUNCTION_168();
    v30[2] = v20;
    v30[3] = v19;
    v30[4] = v32;
    v30[5] = v33;
    OUTLINED_FUNCTION_166();
    v30[6] = v22;
    v30[7] = v21;
    v30[8] = v15;
    v30[9] = v18;
    outlined init with copy of WorkflowDataModels.WatchModel(v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v31[0] = v13;
    v31[1] = v29;
    OUTLINED_FUNCTION_168();
    v32 = v24;
    v33 = v23;
    v34 = v28;
    v35 = v27;
    OUTLINED_FUNCTION_166();
    v36 = v26;
    v37 = v25;
    v38 = v15;
    v39 = v18;
    outlined destroy of WorkflowDataModels.WatchModel(v31);
    memcpy(v5, v30, 0x50uLL);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.WatchModel(void *a1@<X8>)
{
  WorkflowDataModels.WatchModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, v3, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.CustomIntentModel.appPunchOut.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t WorkflowDataModels.CustomIntentModel.interaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentModel(0) + 20);
  v4 = type metadata accessor for CodableINInteraction();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WorkflowDataModels.CustomIntentModel.title.getter()
{
  v0 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_141_0(*(v0 + 28));
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v5 = OUTLINED_FUNCTION_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_21_24();
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v7);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v8 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_49_13();
    type metadata accessor for CodableINInteraction();
    OUTLINED_FUNCTION_73_7();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v10);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v8[6];
    OUTLINED_FUNCTION_91_2();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v12);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_153(v8[7]);
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = OUTLINED_FUNCTION_25_18();
  v14(v13);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

uint64_t WorkflowDataModels.CustomIntentModel.init(appPunchOut:interaction:image:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40_11();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7(v10);
  v12 = *(v11 + 32);
  v13 = OUTLINED_FUNCTION_1_31();
  v14(v13);
  v15 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v16 = v15[5];
  v17 = type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_7(v17);
  (*(v18 + 32))(v9 + v16, v6);
  v19 = v15[6];
  result = outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  v21 = (v9 + v15[7]);
  *v21 = v5;
  v21[1] = a5;
  return result;
}

void WorkflowDataModels.CustomIntentModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_22_10();
  v46 = type metadata accessor for CodableINInteraction();
  v7 = OUTLINED_FUNCTION_7_1(v46);
  v44 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7_1(v14);
  v45 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_9();
  v47 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_29();
  v24 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v25 = OUTLINED_FUNCTION_7(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = v2[4];
  OUTLINED_FUNCTION_53_9(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v32);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 32))(v30, v47);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_73_7();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v33);
    OUTLINED_FUNCTION_172();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v44 + 32))(v30 + v24[5], v13, v46);
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v34);
    OUTLINED_FUNCTION_154();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v24[6];
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    OUTLINED_FUNCTION_137();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v37;
    v38 = v36;
    v39 = OUTLINED_FUNCTION_124();
    v40(v39);
    v41 = (v30 + v24[7]);
    *v41 = v38;
    v41[1] = v43;
    OUTLINED_FUNCTION_68_12();
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_19_22();
    outlined destroy of WorkflowDataModels.CustomIntentModel(v30, v42);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.cancelLabel.getter()
{
  v0 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  OUTLINED_FUNCTION_141_0(*(v0 + 24));
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4D746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_4_54();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v5);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_23_21();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v6 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    OUTLINED_FUNCTION_153(*(v6 + 20));
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_153(*(v6 + 24));
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v7 = OUTLINED_FUNCTION_25_18();
  v8(v7);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.CustomIntentConfirmationModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v2 = v1;
  v3 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_29_17();
  v11 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = v2[4];
  OUTLINED_FUNCTION_53_9(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v19);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_67();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_113_0();
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = (v17 + *(v11 + 20));
    *v21 = v20;
    v21[1] = v22;
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_113_0();
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v24;
    v25 = v23;
    v26 = OUTLINED_FUNCTION_82_9();
    v27(v26);
    v28 = (v17 + *(v11 + 24));
    *v28 = v25;
    v28[1] = v29;
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v17, type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.init(intentModel:confirmLabel:cancelLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40_11();
  v8 = v7;
  OUTLINED_FUNCTION_1_67();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  result = OUTLINED_FUNCTION_158(v9);
  v12 = (v8 + v11);
  *v12 = v5;
  v12[1] = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.confirmLabel.getter(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_141_0(*(v1 + 20));
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74747542656E6F64 && a2 == 0xEF6C6562614C6E6FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000235120 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000000235140 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F4D746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x74747542656E6F64;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentHandledModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_4_54();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v8);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_23_21();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    OUTLINED_FUNCTION_153(v9[5]);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v9[6];
    OUTLINED_FUNCTION_91_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
    OUTLINED_FUNCTION_21_24();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v11);
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v1 + v9[7]);
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_52_11();
  v15(v14);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.CustomIntentHandledModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_8_20();
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v32);
  v31 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_29_17();
  v17 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  v21 = v4[4];
  OUTLINED_FUNCTION_53_9(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v22);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_67();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49_13();
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = (v1 + v17[5]);
    *v24 = v23;
    v24[1] = v25;
    v26 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v28);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v17[6];
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    OUTLINED_FUNCTION_137();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v31 + 8))(v2, v32);
    *(v1 + v17[7]) = v30 & 1;
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v1, type metadata accessor for WorkflowDataModels.CustomIntentHandledModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.init(intentModel:doneButtonLabel:doneButtonCommand:shouldShowDoneButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_40_11();
  v7 = v6;
  OUTLINED_FUNCTION_1_67();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v8 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  OUTLINED_FUNCTION_158(v8);
  result = outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  *(v7 + *(v8 + 28)) = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000000235160 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x68636E7550707061;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}