uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v1[33] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[34] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[35] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[36] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[37] = v11;
  v13 = *(v12 + 64);
  v1[38] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for NLContextUpdate();
  v1[39] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[40] = v15;
  v17 = *(v16 + 64);
  v1[41] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  v1[42] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v21, v22, v23);
}

{
  v2 = *(v1 + 336);
  type metadata accessor for ShortcutsLinkNLContextProvider();
  *(v1 + 344) = swift_initStackObject();
  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v4 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v1 + 352) = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v7;
  outlined init with take of AceServiceInvokerAsync((v1 + 144), (inited + 2));
  inited[7] = v3;
  inited[8] = v4;
  inited[9] = v5;
  inited[10] = v6;
  v9 = swift_task_alloc();
  *(v1 + 360) = v9;
  *v9 = v1;
  v9[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  *v4 = v7;
  v3[46] = v8;
  v3[47] = v9;
  v3[48] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = async function pointer to static LabelTemplates.cancel()[1];
    v14 = swift_task_alloc();
    v3[49] = v14;
    *v14 = v7;
    v14[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);

    return static LabelTemplates.cancel()();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = v2[49];
  v11 = *v1;
  v3[50] = v5;
  v3[51] = v6;
  v3[52] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[43];
  v2 = v0[44];

  v3 = v0[48];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v14 = v0[38];
  v15 = v0[39];
  v8 = v0[34];
  v9 = v0[35];
  v16 = v0[31];

  ShortcutsLinkNLContextProvider.makeContextForActionConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(v4, v3, v2, v1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v6 + 16))(v8, v7, v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  OutputGenerationManifest.nlContextUpdate.setter();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v0[53] = [v16 dialog];
  v10 = swift_task_alloc();
  v0[54] = v10;
  *v10 = v0;
  v10[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v11 = v0[44];
  OUTLINED_FUNCTION_6_1();

  return LinkActionDialogTemplating.actionConfirmationHeader(customDialog:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[54];
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  v3[55] = v8;
  v3[56] = v0;

  v9 = v2[53];
  if (v0)
  {
    v10 = v3[51];
    v11 = v3[47];
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = [*(v0 + 440) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = ResponseFactory.init()();
  *(v0 + 208) = v6;
  *(v0 + 216) = &protocol witness table for ResponseFactory;
  *(v0 + 184) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 456) = v10;
  *v10 = v11;
  v10[1] = ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v12 = *(v0 + 440);
  v13 = *(v0 + 368);
  v14 = *(v0 + 376);
  v15 = *(v0 + 304);
  v16 = *(v0 + 240);
  v20 = *(v0 + 408);
  v19 = *(v0 + 400);

  return static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(v16, v2 + 32, v12, v15, v4, v5, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[57];
  v7 = v5[51];
  v8 = v5[47];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 464) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 184));

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v15 = *(v0 + 272);

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();
  (*(v7 + 8))(v6, v8);
  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_20_1();
  v12(v11);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];

  v4 = v0[52];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[36];
  v8 = v0[37];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[56];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);

  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_20_1();
  v11(v10);
  v12 = *(v0 + 464);
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_6_0();

  return v13();
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v82 = v12;
  v13 = v12[34];
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = v12[43];
    v16 = v12[35];
    v17 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v18 = swift_allocObject();
    v12[46] = v18;
    *(v18 + 16) = xmmword_216010;
    *(v18 + 32) = v16;
    v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v20 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[47] = v21;
    *v21 = v22;
    v21[1] = static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:);
    v23 = v12[36];
    v24 = v12[33];
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v33 = v12[37];
    v34 = v12[38];
    v35 = v12[34];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v36 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v35, 2);
    v38 = v37;

    if (v38)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v42 = v12[38];
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v47 = v12[37];
        v46 = v12[38];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v81 = v49;
        *v48 = 136315138;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v81);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v50, v51, v52, v53, v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }
    }

    v54 = v12[42];
    v55 = v12[43];
    v56 = v12[40];
    v57 = v12[38];
    v79 = v12[39];
    v80 = v12[41];
    v58 = v12[37];
    v59 = v12[35];

    v60 = DialogExecutionResult.firstDialogFullPrint()();
    v12[2] = v58;
    v12[3] = v57;
    v12[4] = v39;
    v12[5] = v40;
    v12[6] = v79;
    v12[7] = v56;
    v12[8] = v80;
    v12[9] = v54;
    *(v12 + 5) = xmmword_21CC10;
    *(v12 + 96) = 0;
    *(v12 + 13) = v60;
    v61 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    v12[31] = type metadata accessor for WorkflowDataModels(0);
    v12[32] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 28);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x68uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v63 = swift_allocObject();
    v12[44] = v63;
    *(v63 + 16) = xmmword_216010;
    *(v63 + 32) = v59;
    outlined init with copy of WorkflowDataModels.ConfirmActionModel((v12 + 2), (v12 + 15));
    v64 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v65 = v59;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[45] = v66;
    *v66 = v67;
    v66[1] = static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:);
    v68 = v12[36];
    v69 = v12[33];
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:appBundleId:continueLabel:cancelLabel:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *(v4 + 352);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 224));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.ConfirmActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 376);
  v3 = *(v1 + 368);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

void *DescribeCustomIntentItemOutputProvider.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  return v0;
}

uint64_t DescribeCustomIntentItemOutputProvider.__deallocating_deinit()
{
  DescribeCustomIntentItemOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShortcutsLinkPromptForContinueInAppFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForContinueInAppFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShortcutsLinkPromptForContinueInAppFlowStrategy(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForContinueInAppFlowStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t sub_D4574()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)()
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

  return closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)(v3, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError()
{
  result = lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError;
  if (!lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError;
  if (!lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
}

id SiriStateObserver.init(runnerClient:)(uint64_t *a1)
{
  v1[OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner] = 1;
  outlined init with copy of DeviceState(a1, &v1[OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_runnerClient]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriStateObserver();
  v3 = objc_msgSendSuper2(&v5, "init");
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

void SiriStateObserver.notifyObserver(_:didChangeStateFrom:to:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = a3 & 2;
  v8 = a2 & 2;
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = v8 >> 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v7 >> 1;
    _os_log_impl(&dword_0, v10, v11, "#SiriStateObserver.notifyObserver has fromState: %{BOOL}d, toState: %{BOOL}d", v12, 0xEu);
  }

  if ((v8 == 0) != (v7 != 0))
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      *v14 = 0;
      v15 = "#SiriStateObserver.notifyObserver active session state didn't change, returning...";
LABEL_11:
      _os_log_impl(&dword_0, oslog, v13, v15, v14, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v7)
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      *v14 = 0;
      v15 = "#SiriStateObserver.notifyObserver still has active session, returning...";
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  v16 = OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner;
  v17 = *(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  if (v17 == 1)
  {
    if (v20)
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v21, v22, "#SiriStateObserver stopping runner client");
      OUTLINED_FUNCTION_8_15();
    }

    outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_runnerClient, v28);
    v23 = v29;
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    if (v20)
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v25, v26, "#SiriStateObserver not canceling the runner because shouldCancelRunner = false, flipping the switch...");
      OUTLINED_FUNCTION_8_15();
    }

    *(v4 + v16) = 1;
  }
}

Swift::Void __swiftcall SiriStateObserver.doNotCancelRunner()()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#SiriStateObserver resetContinuationOnAppLaunch");
    OUTLINED_FUNCTION_8_15();
  }

  *(v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin17SiriStateObserver_shouldCancelRunner) = 0;
}

id SiriStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriStateObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ContactResolving.makeRecommendations(queries:config:)()
{
  v0 = type metadata accessor for ContactResolver();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ContactResolver.init()();
  v3 = dispatch thunk of ContactResolver.makeRecommendations(queries:config:)();

  return v3;
}

uint64_t ContactResolving.contactResolverConfig(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v2 = type metadata accessor for RecommenderType();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v37 = v4;
  v38 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v36 = v8 - v7;
  v34 = type metadata accessor for SearchSuggestedContacts();
  v9 = OUTLINED_FUNCTION_7_1(v34);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for ContactResolverDomain();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  OUTLINED_FUNCTION_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v34 - v21;
  v23 = type metadata accessor for Locale();
  v24 = OUTLINED_FUNCTION_7_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowTask.getter();

  dispatch thunk of FlowTaskProvider.id.getter();

  (*(v26 + 16))(v31, v35, v23);
  v32 = type metadata accessor for ContactHandleTypePreference();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
  static ContactResolverDomain.all.getter();
  (*(v11 + 104))(v16, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v34);
  (*(v37 + 104))(v36, enum case for RecommenderType.mlRecommender(_:), v38);
  return ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:)();
}

void *WorkflowDialogTemplating.__allocating_init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_35_8();
  v17 = v16;
  v18 = swift_allocObject();
  outlined init with take of Output(v17, v18 + 2);
  v18[7] = v15;
  v18[8] = v14;
  v18[9] = v13;
  v18[10] = v12;
  v18[11] = v11;
  v18[12] = v10;
  v18[13] = v9;
  v18[14] = a9;
  return v18;
}

void *WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_35_8();
  outlined init with take of Output(v17, v10 + 2);
  v10[7] = v16;
  v10[8] = v15;
  v10[9] = v14;
  v10[10] = v13;
  v10[11] = v12;
  v10[12] = v11;
  v10[13] = v9;
  v10[14] = a9;
  return v10;
}

uint64_t WorkflowDialogTemplating.makeShowAlertPattern(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makeShowAlertPattern(request:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = *(*v2 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 16);
  OUTLINED_FUNCTION_2_26();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38_7(v8);
  *v9 = v10;
  v9[1] = WorkflowDialogTemplating.makeShowAlertPattern(request:);

  return (v12)(0, partial apply for closure #1 in WorkflowDialogTemplating.makeShowAlertPattern(request:), v3);
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

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t closure #1 in WorkflowDialogTemplating.makeShowAlertPattern(request:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(a2, &selRef_message);
  if (v8)
  {
    SpeakableString.init(print:speak:)();
    v9 = type metadata accessor for SpeakableString();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for SpeakableString();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v10, 1, v9);
  v11 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  return outlined assign with take of SpeakableString?(v7, a1 + *(v11 + 20));
}

uint64_t WorkflowDialogTemplating.makeShowAlertDialog(request:)()
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
  OUTLINED_FUNCTION_14_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v3, &selRef_message);
  v6 = v5;
  v7 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v3, &selRef_prompt);
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v4, v6, v7, v8, v1);

  v9 = *(**(v2 + 72) + class metadata base offset for WorkflowRunnerCATsSimple + 32);
  OUTLINED_FUNCTION_2_26();
  v18 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_38_7(v13);
  *v14 = v15;
  v14[1] = WorkflowDialogTemplating.makeShowAlertDialog(request:);
  v16 = v0[4];

  return v18(v16);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 56);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 112) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_27();
  v7 = swift_task_alloc();
  *(v1 + 48) = OUTLINED_FUNCTION_59_2(v7);
  *(v1 + 56) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_40_5();
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = v3[11];
  v7 = v3[10];
  *v5 = *v2;
  v4[12] = v1;

  v8 = v3[7];
  v9 = v3[6];
  v10 = v3[5];
  v11 = v3[4];
  if (!v1)
  {
    v4[13] = v0;
  }

  OUTLINED_FUNCTION_55_1(v11);
  OUTLINED_FUNCTION_55_1(v10);
  OUTLINED_FUNCTION_55_1(v9);
  OUTLINED_FUNCTION_55_1(v8);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

void WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_30();
  v1 = [*(v0 + 16) interaction];
  v2 = [v1 intentResponse];
  *(v0 + 64) = v2;

  if (v2)
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [v4 interaction];
    v6 = [v5 intent];
    *(v0 + 72) = v6;

    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v4, &selRef_prompt);
    v8 = v7;
    OUTLINED_FUNCTION_61_0();
    (*(v9 + 360))(v2, v10, v8);
    v12 = v11;

    v13 = v3[13];
    v14 = v3[5];
    v15 = v3[6];
    v16 = OUTLINED_FUNCTION_17_17(v3 + 2);
    *(v0 + 80) = DeviceState.asSiriKitDeviceState()(v16, v15);
    v17 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    WorkflowDialogTemplating.getAppName(bundleId:)(v17, v18);
    v20 = v19;

    if (v20)
    {
      v21 = *(v0 + 56);
      OUTLINED_FUNCTION_74_1();
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v30 = *(v0 + 56);
    v31 = type metadata accessor for SpeakableString();
    v32 = 1;
    OUTLINED_FUNCTION_51_3(v30, v22);
    if (v12)
    {
      v33 = *(v0 + 48);
      OUTLINED_FUNCTION_74_1();
      v32 = 0;
    }

    v34 = *(v0 + 40);
    v35 = *(v0 + 32);
    OUTLINED_FUNCTION_51_3(*(v0 + 48), v32);
    [v6 _intentCategory];
    INIntentCategory.asINPBString()();
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_34_10(v34);
    v36 = [v6 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_39_10();

    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_24_11(v35, 0, 1, v31);
    v38 = *(v37 + class metadata base offset for RunVoiceCommandCATsSimple + 96);
    OUTLINED_FUNCTION_6_17();
    v50 = v39 + *v39;
    v41 = *(v40 + 4);
    v42 = swift_task_alloc();
    *(v0 + 88) = v42;
    *v42 = v0;
    v42[1] = WorkflowDialogTemplating.confirmInteractionDialog(request:shouldShowAppAttribution:);
    v44 = *(v0 + 48);
    v43 = *(v0 + 56);
    v46 = *(v0 + 32);
    v45 = *(v0 + 40);
    v47 = *(v0 + 112);
    OUTLINED_FUNCTION_6_1();

    __asm { BRAA            X7, X16 }
  }

  lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError();
  swift_allocError();
  *v23 = 0;
  swift_willThrow();
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v27 = *(v0 + 32);
  v26 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  OUTLINED_FUNCTION_6_6();
  v6 = *(v0 + 104);
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X2, X16 }
}

uint64_t WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_27();
  *(v1 + 48) = OUTLINED_FUNCTION_59_2(v8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 104) = v0;

  outlined destroy of String?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 72);

  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

void WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_30();
  v1 = [*(v0 + 24) interaction];
  v2 = [v1 intentResponse];
  *(v0 + 72) = v2;

  if (v2)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = [v4 interaction];
    v6 = [v5 intent];
    *(v0 + 80) = v6;

    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v4, &selRef_prompt);
    v8 = v7;
    OUTLINED_FUNCTION_61_0();
    (*(v9 + 360))(v2, v10, v8);
    v12 = v11;

    v13 = v3[12];
    v14 = v3[5];
    v15 = v3[6];
    v16 = OUTLINED_FUNCTION_17_17(v3 + 2);
    *(v0 + 88) = DeviceState.asSiriKitDeviceState()(v16, v15);
    v17 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    WorkflowDialogTemplating.getAppName(bundleId:)(v17, v18);
    v20 = v19;

    if (v20)
    {
      v21 = *(v0 + 64);
      OUTLINED_FUNCTION_74_1();
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v30 = *(v0 + 64);
    v31 = type metadata accessor for SpeakableString();
    v32 = 1;
    OUTLINED_FUNCTION_51_3(v30, v22);
    if (v12)
    {
      v33 = *(v0 + 56);
      OUTLINED_FUNCTION_74_1();
      v32 = 0;
    }

    v34 = *(v0 + 48);
    v35 = *(v0 + 40);
    OUTLINED_FUNCTION_51_3(*(v0 + 56), v32);
    [v6 _intentCategory];
    INIntentCategory.asINPBString()();
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_34_10(v34);
    v36 = [v6 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_39_10();

    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_24_11(v35, 0, 1, v31);
    v38 = *(v37 + class metadata base offset for RunVoiceCommandCATs + 48);
    OUTLINED_FUNCTION_6_17();
    v51 = v39 + *v39;
    v41 = *(v40 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 96) = v42;
    *v42 = v43;
    v42[1] = WorkflowDialogTemplating.confirmInteractionDialog_prerfv2(request:shouldShowAppAttribution:);
    v45 = *(v0 + 56);
    v44 = *(v0 + 64);
    v47 = *(v0 + 40);
    v46 = *(v0 + 48);
    v48 = *(v0 + 112);
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_6_1();

    __asm { BRAA            X8, X16 }
  }

  lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError();
  swift_allocError();
  *v23 = 0;
  swift_willThrow();
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X1, X16 }
}

uint64_t WorkflowDialogTemplating.inputTextDialog_rfv1(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[5];
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v10 + 72) = v0;

  outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];
  outlined destroy of String?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v3 = v0[9];

  return v2();
}

uint64_t WorkflowDialogTemplating.inputTextDialog_rfv1(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 24) textFieldConfiguration];
  v18 = [v17 keyboardType];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v28, v29, "#WorkflowDialogTemplating.inputTextDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v30 = *(v15 + 48);
  v32 = *(v15 + 24);
  v31 = *(v15 + 32);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v32, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v32, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v33 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v33, v34, v35, v32, v36);

  v37 = *(v31 + 64);
  *(v15 + 56) = OUTLINED_FUNCTION_77_2();
  if (v14)
  {
    v38 = *(v15 + 40);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1();
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = *(v15 + 40);
  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_76_3();
  __swift_storeEnumTagSinglePayload(v41, v39, 1, v42);
  OUTLINED_FUNCTION_75_2();
  v44 = *(v43 + class metadata base offset for WorkflowRunnerCATs + 8);
  OUTLINED_FUNCTION_2_26();
  v61 = v45 + *v45;
  v47 = *(v46 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v15 + 64) = v48;
  *v48 = v49;
  v48[1] = WorkflowDialogTemplating.inputTextDialog_rfv1(request:);
  v50 = *(v15 + 40);
  v51 = *(v15 + 48);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_57_4();

  return v56(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputTextDialog(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[7];
  *v6 = *v1;
  v5[8] = v0;

  v8 = v4[6];
  v9 = v4[4];
  if (!v0)
  {
    v5[9] = v3;
  }

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v3 = v0[9];

  return v2(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v3 = v0[8];

  return v2();
}

uint64_t WorkflowDialogTemplating.inputTextDialog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 16) textFieldConfiguration];
  v18 = [v17 keyboardType];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v28, v29, "#WorkflowDialogTemplating.inputTextDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v30 = *(v15 + 40);
  v32 = *(v15 + 16);
  v31 = *(v15 + 24);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v32, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v32, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v33 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v33, v34, v35, v32, v36);

  v37 = *(v31 + 72);
  *(v15 + 48) = OUTLINED_FUNCTION_77_2();
  if (v14)
  {
    v38 = *(v15 + 32);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1();
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = *(v15 + 32);
  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_76_3();
  __swift_storeEnumTagSinglePayload(v41, v39, 1, v42);
  OUTLINED_FUNCTION_75_2();
  v44 = *(v43 + class metadata base offset for WorkflowRunnerCATsSimple + 16);
  OUTLINED_FUNCTION_2_26();
  v60 = v45 + *v45;
  v47 = *(v46 + 4);
  v48 = swift_task_alloc();
  *(v15 + 56) = v48;
  *v48 = v15;
  v48[1] = WorkflowDialogTemplating.inputTextDialog(request:);
  v49 = *(v15 + 32);
  v50 = *(v15 + 40);
  OUTLINED_FUNCTION_57_4();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, v60, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputDateDialog(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[7];
  v6 = v2[6];
  *v4 = *v1;
  v3[8] = v0;

  OUTLINED_FUNCTION_68_2();
  v8 = *(v7 + 40);
  OUTLINED_FUNCTION_82_3(v2[4]);
  OUTLINED_FUNCTION_82_3(v8);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_72_3();
    OUTLINED_FUNCTION_57();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[8];

  return v3();
}

uint64_t WorkflowDialogTemplating.inputDateDialog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 16) configuration];
  v18 = [v17 datePickerMode];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v28, v29, "#WorkflowDialogTemplating.inputDateDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v30 = *(v15 + 24);
  v31 = v30[9];
  v32 = v30[5];
  v33 = v30[6];
  v34 = OUTLINED_FUNCTION_2_29(v30);
  *(v15 + 48) = DeviceState.asSiriKitDeviceState()(v34, v33);
  if (v14)
  {
    v35 = *(v15 + 40);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v38 = *(v15 + 32);
  v37 = *(v15 + 40);
  v40 = *(v15 + 16);
  v39 = *(v15 + 24);
  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v41, v36, 1, v42);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v40, &selRef_message);
  v43 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v40, &selRef_prompt);
  OUTLINED_FUNCTION_52_4(v43, v44);

  OUTLINED_FUNCTION_75_2();
  v62 = v45 + class metadata base offset for WorkflowRunnerCATsSimple;
  v46 = *(v45 + class metadata base offset for WorkflowRunnerCATsSimple);
  OUTLINED_FUNCTION_16_1();
  v63 = v47 + *v47;
  v49 = *(v48 + 4);
  v50 = swift_task_alloc();
  *(v15 + 56) = v50;
  *v50 = v15;
  v50[1] = WorkflowDialogTemplating.inputDateDialog(request:);
  v52 = *(v15 + 32);
  v51 = *(v15 + 40);
  OUTLINED_FUNCTION_57_4();

  return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, v62, v63, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.inputDateDialog_prerfv2(request:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  v3[9] = v0;

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_71_2();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v14, v15, v16);
  }

  else
  {
    v19 = v3[5];
    v18 = v3[6];

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_57();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[9];

  return v3();
}

uint64_t WorkflowDialogTemplating.inputDateDialog_prerfv2(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_30();
  v17 = [*(v15 + 24) configuration];
  v18 = [v17 datePickerMode];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_81_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_2();
  if (OUTLINED_FUNCTION_48_5())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_31_5(4.8149e-34);
    v22 = v21 & 0xFFFF00000000FFFFLL | 0x7974700000;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    OUTLINED_FUNCTION_47_3(v25, v26, v27);
    OUTLINED_FUNCTION_62_3();

    *(v16 + 4) = v24;
    OUTLINED_FUNCTION_46(&dword_0, v28, v29, "#WorkflowDialogTemplating.inputDateDialog inputType: %s");
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_11_0();
  }

  v30 = *(v15 + 32);
  v31 = v30[8];
  v32 = v30[5];
  v33 = v30[6];
  v34 = OUTLINED_FUNCTION_2_29(v30);
  *(v15 + 56) = DeviceState.asSiriKitDeviceState()(v34, v33);
  if (v14)
  {
    v35 = *(v15 + 48);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_74_1();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v38 = *(v15 + 40);
  v37 = *(v15 + 48);
  v40 = *(v15 + 24);
  v39 = *(v15 + 32);
  type metadata accessor for SpeakableString();
  v41 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v41, v36, 1, v42);
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v40, &selRef_message);
  v43 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v40, &selRef_prompt);
  OUTLINED_FUNCTION_52_4(v43, v44);

  OUTLINED_FUNCTION_75_2();
  v64 = v45 + class metadata base offset for WorkflowRunnerCATs;
  v46 = *(v45 + class metadata base offset for WorkflowRunnerCATs);
  OUTLINED_FUNCTION_16_1();
  v65 = v47 + *v47;
  v49 = *(v48 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v15 + 64) = v50;
  *v50 = v51;
  v50[1] = WorkflowDialogTemplating.inputDateDialog_prerfv2(request:);
  v53 = *(v15 + 40);
  v52 = *(v15 + 48);
  v54 = *(v15 + 16);
  OUTLINED_FUNCTION_57_4();

  return v59(v55, v56, v57, v58, v59, v60, v61, v62, a9, v64, v65, a12, a13, a14);
}

uint64_t WorkflowDialogTemplating.chooseFromListDialog(request:disambiguationItems:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v5, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v5, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v6 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v6, v7, v8, v5, v9);

  OUTLINED_FUNCTION_61_0();
  v11 = *(v10 + 344);
  v12 = OUTLINED_FUNCTION_73_3();
  v14 = v13(v12);
  v0[7] = v14;
  v15 = v2[11];
  v16 = v2[5];
  v17 = v2[6];
  v18 = OUTLINED_FUNCTION_17_17(v2 + 2);
  v19 = DeviceState.asSiriKitDeviceState()(v18, v17);
  v0[8] = v19;
  v20 = *(*v15 + class metadata base offset for RunCustomIntentCATsSimple + 80);
  OUTLINED_FUNCTION_2_26();
  v27 = (v21 + *v21);
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = WorkflowDialogTemplating.chooseFromListDialog(request:disambiguationItems:siriEnvironment:);
  v25 = v0[6];

  return v27(v19, v25, v14);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[9];
  *v6 = *v1;
  v5[10] = v0;

  v8 = v4[8];
  v9 = v4[7];
  if (v0)
  {
  }

  else
  {

    v5[11] = v3;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t WorkflowDialogTemplating.chooseFromListDialog_preRFv2(request:disambiguationItems:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v5, &selRef_message);
  OUTLINED_FUNCTION_39_10();
  outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v5, &selRef_prompt);
  OUTLINED_FUNCTION_74_2();
  v6 = OUTLINED_FUNCTION_75();
  WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v6, v7, v8, v5, v9);

  OUTLINED_FUNCTION_61_0();
  v11 = *(v10 + 344);
  v12 = OUTLINED_FUNCTION_73_3();
  v0[8] = v13(v12);
  v14 = v2[10];
  v15 = v2[5];
  v16 = v2[6];
  v17 = OUTLINED_FUNCTION_17_17(v2 + 2);
  v0[9] = DeviceState.asSiriKitDeviceState()(v17, v16);
  v18 = *(*v14 + class metadata base offset for RunCustomIntentCATs + 40);
  OUTLINED_FUNCTION_2_26();
  v27 = (v19 + *v19);
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v22;
  *v22 = v23;
  v22[1] = WorkflowDialogTemplating.chooseFromListDialog_preRFv2(request:disambiguationItems:siriEnvironment:);
  v24 = v0[7];
  v25 = OUTLINED_FUNCTION_9_18();

  return v27(v25);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[10];
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t WorkflowDialogTemplating.makeContinueInAppDialog(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[20] = v2;
  v1[21] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[22] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[21];
  OUTLINED_FUNCTION_7_19();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v2 = *(*v0[21] + 272);
    v38 = *v0[21] + 272;
    v40 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = WorkflowDialogTemplating.makeContinueInAppDialog(app:);
    v5 = v0[21];
    OUTLINED_FUNCTION_82_2();

    return v6(v6, v7, v8, v9, v10, v11, v12, v13, v38, v40);
  }

  else
  {
    v15 = v0[22];
    v16 = v0[20];
    outlined init with copy of DeviceState((v1 + 2), (v0 + 2));
    v17 = type metadata accessor for ContinueInAppCATWrapperSimple();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    outlined init with copy of DeviceState?((v0 + 2), (v0 + 7));
    v20 = SiriKitFlowCATWrapperSimple.init(deviceState:)((v0 + 7));
    v0[24] = v20;
    outlined destroy of String?((v0 + 2), &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
    v21 = v1[5];
    v22 = v1[6];
    v23 = OUTLINED_FUNCTION_3_11(v1 + 2);
    v0[25] = DeviceState.asSiriKitDeviceState()(v23, v22);
    v0[15] = &type metadata for AppInfoResolver;
    v0[16] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)((v1 + 2), v0 + 12, 2, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v39 = (*v20 + class metadata base offset for ContinueInAppCATWrapperSimple);
    v24 = *v39;
    OUTLINED_FUNCTION_16_1();
    v41 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = WorkflowDialogTemplating.makeContinueInAppDialog(app:);
    v29 = v0[22];
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, v39, v41);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_40_5();
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v3 + 176);

  v9 = *(v5 + 8);
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v6 = v5[26];
  v7 = v5[25];
  v8 = v5[22];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 216) = v0;

  outlined destroy of String?(v8, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[24];

  v2 = v0[18];
  v3 = v0[22];

  OUTLINED_FUNCTION_6_6();

  return v4(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[24];

  v2 = v0[27];
  v3 = v0[22];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[16] = v7;
  v8 = *(v7 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[14];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v3 = *(*v0[14] + 280);
    v17 = (v3 + *v3);
    v4 = v3[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[19] = v5;
    *v5 = v6;
    v5[1] = WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:);
    v7 = v0[14];
    v8 = v0[12];

    return v17(v8);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[13];
    v0[5] = &type metadata for AppInfoResolver;
    v0[6] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)((v1 + 2), v0 + 2, 2, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    outlined init with copy of DeviceState((v1 + 2), (v0 + 7));
    v12 = async function pointer to static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[20] = v13;
    *v13 = v14;
    v13[1] = WorkflowDialogTemplating.makeContinueInAppDialog_preRFv2(app:);
    v15 = v0[18];
    v16 = v0[15];

    return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)(v15, v16, v0 + 7);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_68_2();
  v6 = *(v5 + 144);
  v7 = *(v1 + 120);

  OUTLINED_FUNCTION_22_11();

  return v8();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *(v5 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 168) = v0;

  outlined destroy of String?(v3 + 56, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  outlined destroy of String?(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  (*(v0[17] + 32))(v0[12], v0[18], v0[16]);
  v1 = v0[18];
  v2 = v0[15];

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[6] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v14 = v4[3];
    v13 = v4[4];

    OUTLINED_FUNCTION_6_6();

    return v15(v1);
  }
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[8];
  v6 = v2[3];
  v7 = *v1;
  *v4 = *v1;
  v3[9] = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = v2[7];
  if (v0)
  {

    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[3];

    v14 = v7[1];
    OUTLINED_FUNCTION_57();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v4[7];
    v14 = v4[3];

    OUTLINED_FUNCTION_6_6();

    return v15(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[3];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[7];

  v2 = v0[11];
  v3 = v0[3];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[2];
  OUTLINED_FUNCTION_7_19();
  v11 = dispatch thunk of DeviceState.isCarPlay.getter();
  v12 = v9[2];
  if (v11)
  {
    v13 = *(v12 + 104);
    v14 = v10[5];
    v15 = v10[6];
    v16 = OUTLINED_FUNCTION_3_11(v10 + 2);
    OUTLINED_FUNCTION_48_6(v16);
    OUTLINED_FUNCTION_45_5();
    v9[4] = v17;
    v18 = *(*v13 + class metadata base offset for RunVoiceCommandCATsSimple + 160);
    OUTLINED_FUNCTION_6_17();
    v66 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_38_7(v22);
    *v23 = v24;
    v23[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_82_2();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v66);
  }

  OUTLINED_FUNCTION_7_19();
  v34 = dispatch thunk of DeviceState.isWatch.getter();
  v35 = *(v12 + 104);
  v36 = v10[5];
  v37 = v10[6];
  v38 = OUTLINED_FUNCTION_3_11(v10 + 2);
  v9[7] = OUTLINED_FUNCTION_48_6(v38);
  if ((v34 & 1) == 0)
  {
    v44 = *(*v35 + class metadata base offset for RunVoiceCommandCATsSimple + 144);
    OUTLINED_FUNCTION_6_17();
    v66 = v45 + *v45;
    v47 = *(v46 + 4);
    v48 = swift_task_alloc();
    v9[10] = v48;
    *v48 = v9;
    v48[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
    OUTLINED_FUNCTION_82_2();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v66);
  }

  v39 = v10[5];
  v40 = v10[6];
  OUTLINED_FUNCTION_17_17(v10 + 2);
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (v41)
  {
    v42 = v9[3];
    OUTLINED_FUNCTION_74_1();
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v49 = v9[3];
  v50 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v49, v43, 1, v50);
  v52 = *(v51 + class metadata base offset for RunVoiceCommandCATsSimple + 176);
  OUTLINED_FUNCTION_6_17();
  v67 = v53 + *v53;
  v55 = *(v54 + 4);
  v56 = swift_task_alloc();
  v9[8] = v56;
  *v56 = v9;
  v56[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog();
  v57 = v9[3];
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_82_2();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, v67);
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2()()
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
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_0();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[9];
  v6 = v2[4];
  *v4 = *v1;
  v3[10] = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = v2[8];
  if (!v0)
  {
    v12 = v3[4];

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
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
    v12 = v3[8];
    v13 = v3[4];

    OUTLINED_FUNCTION_6_0();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[4];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  OUTLINED_FUNCTION_7_19();
  v11 = dispatch thunk of DeviceState.isCarPlay.getter();
  v12 = v9[3];
  if (v11)
  {
    v13 = *(v12 + 96);
    v14 = v10[5];
    v15 = v10[6];
    v16 = OUTLINED_FUNCTION_3_11(v10 + 2);
    OUTLINED_FUNCTION_48_6(v16);
    OUTLINED_FUNCTION_45_5();
    v9[5] = v17;
    v18 = *(*v13 + class metadata base offset for RunVoiceCommandCATs + 80);
    OUTLINED_FUNCTION_6_17();
    v69 = v19 + *v19;
    v21 = *(v20 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[6] = v22;
    *v22 = v23;
    v22[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, v69);
  }

  OUTLINED_FUNCTION_7_19();
  v33 = dispatch thunk of DeviceState.isWatch.getter();
  v34 = *(v12 + 96);
  v35 = v10[5];
  v36 = v10[6];
  v37 = OUTLINED_FUNCTION_3_11(v10 + 2);
  v9[8] = OUTLINED_FUNCTION_48_6(v37);
  if ((v33 & 1) == 0)
  {
    v43 = *(*v34 + class metadata base offset for RunVoiceCommandCATs + 72);
    OUTLINED_FUNCTION_6_17();
    v69 = v44 + *v44;
    v46 = *(v45 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[11] = v47;
    *v47 = v48;
    v47[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
    v49 = v9[2];
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_82_2();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, v69);
  }

  v38 = v10[5];
  v39 = v10[6];
  OUTLINED_FUNCTION_17_17(v10 + 2);
  dispatch thunk of DeviceState.userAssignedDeviceName.getter();
  if (v40)
  {
    v41 = v9[4];
    OUTLINED_FUNCTION_74_1();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v50 = v9[4];
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v50, v42, 1, v51);
  v53 = *(v52 + class metadata base offset for RunVoiceCommandCATs + 88);
  OUTLINED_FUNCTION_6_17();
  v70 = v54 + *v54;
  v56 = *(v55 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v57;
  *v57 = v58;
  v57[1] = WorkflowDialogTemplating.makeOpenInteractionFailedDialog_preRFv2();
  v59 = v9[4];
  v60 = v9[2];
  OUTLINED_FUNCTION_82_2();

  return v64(v61, v62, v63, v64, v65, v66, v67, v68, a9, v70);
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v1[11];
  v3 = v1[5];
  v4 = v1[6];
  v5 = OUTLINED_FUNCTION_2_29(v1);
  OUTLINED_FUNCTION_48_6(v5);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v6;
  v7 = *(*v2 + class metadata base offset for RunCustomIntentCATsSimple + 208);
  OUTLINED_FUNCTION_2_26();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = WorkflowDialogTemplating.makeHandoffDialog();
  v12 = OUTLINED_FUNCTION_21_13();

  return v14(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makeHandoffDialog_preRFv2()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[5];
  v4 = v1[6];
  v5 = OUTLINED_FUNCTION_2_29(v1);
  OUTLINED_FUNCTION_48_6(v5);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v6;
  v7 = *(*v2 + class metadata base offset for RunCustomIntentCATs + 104);
  OUTLINED_FUNCTION_2_26();
  v15 = (v8 + *v8);
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v11;
  *v11 = v12;
  v11[1] = WorkflowDialogTemplating.makeHandoffDialog_preRFv2();
  v13 = OUTLINED_FUNCTION_9_18();

  return v15(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t WorkflowDialogTemplating.makePromptForShortcutName()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v1[13];
  v3 = v1[5];
  v4 = v1[6];
  v5 = OUTLINED_FUNCTION_2_29(v1);
  OUTLINED_FUNCTION_48_6(v5);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v6;
  v7 = *(*v2 + class metadata base offset for RunVoiceCommandCATsSimple + 192);
  OUTLINED_FUNCTION_2_26();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = WorkflowDialogTemplating.makePromptForShortcutName();
  v12 = OUTLINED_FUNCTION_21_13();

  return v14(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

uint64_t WorkflowDialogTemplating.makePromptForShortcutName_prerfv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowDialogTemplating.makePromptForShortcutName_prerfv2()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[12];
  v3 = v1[5];
  v4 = v1[6];
  v5 = OUTLINED_FUNCTION_2_29(v1);
  OUTLINED_FUNCTION_48_6(v5);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v6;
  v7 = *(*v2 + class metadata base offset for RunVoiceCommandCATs + 96);
  OUTLINED_FUNCTION_2_26();
  v15 = (v8 + *v8);
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v11;
  *v11 = v12;
  v11[1] = WorkflowDialogTemplating.makePromptForShortcutName_prerfv2();
  v13 = OUTLINED_FUNCTION_9_18();

  return v15(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t WorkflowDialogTemplating.makeFinalDonePattern()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(**(*(v0 + 16) + 112) + class metadata base offset for WorkflowRunnerCATPatternsExecutor);
  OUTLINED_FUNCTION_16_1();
  v7 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = WorkflowDialogTemplating.makeFinalDonePattern();

  return (v7)(0, CustomIntentDisambiguationItemContainer.init(items:), 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  OUTLINED_FUNCTION_6_6();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[13];
  v4 = v1[5];
  v5 = v1[6];
  v6 = OUTLINED_FUNCTION_2_29(v1);
  v0[4] = DeviceState.asSiriKitDeviceState()(v6, v5);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v7, v8, v9, v10);
  v12 = *(v11 + class metadata base offset for RunVoiceCommandCATsSimple + 64);
  OUTLINED_FUNCTION_6_17();
  v22 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_38_7(v16);
  *v17 = v18;
  v17[1] = WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog();
  v19 = v0[3];
  v20 = OUTLINED_FUNCTION_21_13();

  return v22(v20);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *(v2 + 40);
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_68_2();
  v8 = *(v7 + 32);
  outlined destroy of String?(*(v2 + 24), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (!v0)
  {

    v13 = *(v6 + 8);
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog_prerfv2()()
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
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[12];
  v4 = v1[5];
  v5 = v1[6];
  v6 = OUTLINED_FUNCTION_2_29(v1);
  v0[5] = DeviceState.asSiriKitDeviceState()(v6, v5);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v7, v8, v9, v10);
  v12 = *(v11 + class metadata base offset for RunVoiceCommandCATs + 32);
  OUTLINED_FUNCTION_6_17();
  v21 = (v13 + *v13);
  v15 = *(v14 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v16;
  *v16 = v17;
  v16[1] = WorkflowDialogTemplating.makeUnsupportedOnCarPlayErrorDialog_prerfv2();
  v18 = v0[4];
  v19 = OUTLINED_FUNCTION_9_18();

  return v21(v19);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 56) = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (!v0)
  {
    v15 = *(v3 + 32);

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t WorkflowDialogTemplating.makeErrorDialog(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  v1[6] = OUTLINED_FUNCTION_59_2(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_40_5();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[8];
  v6 = v2[7];
  *v4 = *v1;
  v3[9] = v0;

  OUTLINED_FUNCTION_68_2();
  v8 = *(v7 + 48);
  OUTLINED_FUNCTION_82_3(v2[5]);
  OUTLINED_FUNCTION_82_3(v8);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_72_3();
    OUTLINED_FUNCTION_57();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t WorkflowDialogTemplating.makeErrorDialog(customDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[3];
  v10 = v9[4];
  v12 = v10[13];
  v13 = v10[5];
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_2_29(v10);
  v9[7] = OUTLINED_FUNCTION_48_6(v15);
  if (v11)
  {
    v16 = v9[6];
    v18 = v9[2];
    v17 = v9[3];

    OUTLINED_FUNCTION_74_1();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v21 = v9[5];
  v20 = v9[6];
  v22 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v22);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v23, v24, v25, v22);
  v27 = *(v26 + class metadata base offset for RunVoiceCommandCATsSimple + 32);
  OUTLINED_FUNCTION_6_17();
  v43 = v28 + *v28;
  v30 = *(v29 + 4);
  v31 = swift_task_alloc();
  v9[8] = v31;
  *v31 = v9;
  v31[1] = WorkflowDialogTemplating.makeErrorDialog(customDialog:);
  v33 = v9[5];
  v32 = v9[6];
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_82_2();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43);
}

uint64_t WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_27();
  v1[7] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[6];
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  v3[10] = v0;

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_71_2();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v14, v15, v16);
  }

  else
  {
    v19 = v3[6];
    v18 = v3[7];

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_57();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[10];

  return v3();
}

uint64_t WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[4];
  v10 = v9[5];
  v12 = v10[12];
  v13 = v10[5];
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_2_29(v10);
  v9[8] = OUTLINED_FUNCTION_48_6(v15);
  if (v11)
  {
    v16 = v9[7];
    v18 = v9[3];
    v17 = v9[4];

    OUTLINED_FUNCTION_74_1();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v21 = v9[6];
  v20 = v9[7];
  v22 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v22);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_24_11(v23, v24, v25, v22);
  v27 = *(v26 + class metadata base offset for RunVoiceCommandCATs + 16);
  OUTLINED_FUNCTION_6_17();
  v44 = v28 + *v28;
  v30 = *(v29 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[9] = v31;
  *v31 = v32;
  v31[1] = WorkflowDialogTemplating.makeErrorDialog_prerfv2(customDialog:);
  v34 = v9[6];
  v33 = v9[7];
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_82_2();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44);
}

uint64_t WorkflowDialogTemplating.getAppName(bundleId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for App();

    OUTLINED_FUNCTION_22();
    App.__allocating_init(appIdentifier:)();
    type metadata accessor for AppNameResolver();
    swift_initStackObject();
    OUTLINED_FUNCTION_3_21();
    v2 = static SAAppInfoFactory.createAppInfo(app:)();
    AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v2);
  }

  return OUTLINED_FUNCTION_22();
}

Swift::String_optional __swiftcall WorkflowDialogTemplating.getCustomDialog(intentResponse:defaultPrompt:)(INIntentResponse intentResponse, Swift::String_optional defaultPrompt)
{
  object = defaultPrompt.value._object;
  countAndFlagsBits = defaultPrompt.value._countAndFlagsBits;
  v5 = [objc_opt_self() siriLocalizer];
  v6 = [(objc_class *)intentResponse.super.isa _renderedResponseWithLocalizer:v5 requiresSiriCompatibility:1];
  if (v6)
  {
    v7 = v6;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v8;
  }

  else if (object)
  {
    type metadata accessor for CATSpeakableString();

    v11 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(countAndFlagsBits, object);

    v12 = v11[2];

    if (v12)
    {

      countAndFlagsBits = 0;
      object = 0;
    }
  }

  else
  {

    countAndFlagsBits = 0;
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t WorkflowDialogTemplating.getCustomPrompt(message:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  WorkflowDialogTemplating.processText(text:)(a1, a2);
  v16 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    WorkflowDialogTemplating.processText(text:)(a3, a4);
    result = __swift_getEnumTagSinglePayload(v15, 1, v16);
    if (result != 1)
    {
      return outlined destroy of String?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  else
  {
    v18 = *(*(v16 - 8) + 32);
    v19 = OUTLINED_FUNCTION_22();
    v20(v19);
    return OUTLINED_FUNCTION_34_10(a5);
  }

  return result;
}

uint64_t WorkflowDialogTemplating.processText(text:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  if (a2)
  {
    v36 = a1;
    CharacterSet.init(charactersIn:)();
    lazy protocol witness table accessor for type String and conformance String();
    v10 = StringProtocol.trimmingCharacters(in:)();
    v12 = v11;
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_73_3();
    v15(v14);
    v16 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v16 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      type metadata accessor for CATSpeakableString();
      OUTLINED_FUNCTION_71_2();
      static CATSpeakableString.applyTTSHint(speak:)();
      v17 = OUTLINED_FUNCTION_71_2();
      static CATSpeakableString.stripTTSHint(print:)(v17, v18, v19, v20, v21, v22, v23, v24, v36, a2, v37);

      SpeakableString.init(print:speak:)();
      type metadata accessor for SpeakableString();
      v25 = OUTLINED_FUNCTION_27_7();
      return __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    }

    else
    {
      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_37_2();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    }
  }

  else
  {
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_27_7();
    OUTLINED_FUNCTION_37_2();

    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

Swift::String __swiftcall String.trimSpaces()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v3;
  v15[1] = v2;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  (*(v7 + 8))(v11, v4);
  v12 = OUTLINED_FUNCTION_22();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t *WorkflowDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return v0;
}

uint64_t WorkflowDialogTemplating.__deallocating_deinit()
{
  WorkflowDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError()
{
  result = lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDialogTemplatingError and conformance WorkflowDialogTemplatingError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDialogTemplatingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDD078);
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

uint64_t OUTLINED_FUNCTION_7_19()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v6 = *v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_34_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return DeviceState.asSiriKitDeviceState()(a1, v1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2)
{

  return WorkflowDialogTemplating.getCustomPrompt(message:prompt:)(v2, v4, a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  return DeviceState.asSiriKitDeviceState()(v1, v2);
}

uint64_t OUTLINED_FUNCTION_80_2()
{
}

void OUTLINED_FUNCTION_81_2()
{
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

uint64_t WorkflowHomePodSnippetProvider.__allocating_init(deviceState:)(uint64_t a1)
{
  v2 = swift_allocObject();
  outlined init with take of Output(a1, v2 + 16);
  return v2;
}

uint64_t static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OUTLINED_FUNCTION_0_23();
  v13 = static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(v11, v12, a3, a4);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = Dictionary.init(dictionaryLiteral:)();
  v16 = outlined bridged method (ob) of @objc PBCodable.data.getter([v14 backingStore]);
  if (v17 >> 60 == 15)
  {
  }

  else
  {
    outlined copy of Data._Representation(v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v15;
    v18 = OUTLINED_FUNCTION_0_23();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v19, v20, v21, v22);
    v39 = v37;
    v23 = [v14 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v24 = String.data(using:allowLossyConversion:)();
    v26 = v25;

    (*(v7 + 8))(v10, v6);
    if (v26 >> 60 == 15)
    {
      v27 = OUTLINED_FUNCTION_1_34();
      specialized Dictionary._Variant.removeValue(forKey:)(v27 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v28);
      outlined consume of Data?(v37, v38);
      v29 = OUTLINED_FUNCTION_0_23();
      outlined consume of Data?(v29, v30);

      return v39;
    }

    else
    {
      v31 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v31;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v26, 0x614E746E65746E69, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
      v33 = OUTLINED_FUNCTION_0_23();
      outlined consume of Data?(v33, v34);

      return v37;
    }
  }

  return v15;
}

uint64_t static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v30);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "SLFDisambiguationItemConverter intent: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v18 = [v8 _intentInstanceDescription];
  v19 = static SLFDisambiguationItemConverter.slotNameToSlotDescription(intentDescription:parameterNameToResolve:)(v18, a3, a4);
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  if ([v19 valueStyle] != &dword_0 + 3)
  {
    CustomIntentDisambiguationItem.getRawValue()(v30);
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v26 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(v20);
    if (v27)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    [v8 setValue:v26 forProperty:v28];
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_216850;
  CustomIntentDisambiguationItem.getRawValue()(v21 + 32);
  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  result = outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(v20);
  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();

    [v8 setValue:v22.super.isa forKey:v25];

LABEL_14:
    v29 = v8;
    return v8;
  }

  __break(1u);
  return result;
}

id static SLFDisambiguationItemConverter.toDirectInvocationPayload(intent:chosenItem:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  type metadata accessor for SKIDirectInvocationPayload();
  v6 = OUTLINED_FUNCTION_3_23();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  return v6;
}

id static SLFDisambiguationItemConverter.slotNameToSlotDescription(intentDescription:parameterNameToResolve:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    _os_log_impl(&dword_0, v7, v8, "SLFDisambiguationItemConverter.slotNameToSlotDescription parameter: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v11 = outlined bridged method (mbgnn) of @objc INIntentDescription.slot(byName:)(a2, a3, a1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    if (v11)
    {
      v14 = "SLFDisambiguationItemConverter.slotNameToSlotDescription retrieved slot name";
    }

    else
    {
      v14 = "SLFDisambiguationItemConverter.slotNameToSlotDescription cannot find slot name";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v12, v13, v14, v15, 2u);
  }

  return v11;
}

id static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  v6 = OUTLINED_FUNCTION_3_23();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  return v6;
}

id static SLFDisambiguationItemConverter.toIntent(userData:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_1_34();
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, v5 + 1017);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v6, &v24);
  if ((OUTLINED_FUNCTION_4_30() & 1) == 0)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_48_2();
  String.init(data:encoding:)();
  if (!v8)
  {
    v15 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v15, v16);
    return 0;
  }

  v9 = OUTLINED_FUNCTION_1_34();
  specialized Dictionary.subscript.getter(v9 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEA00000000006174, a1, &v24);
  if (!v25)
  {
    v17 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v17, v18);

    outlined destroy of Any?(&v24);
    return 0;
  }

  if ((OUTLINED_FUNCTION_4_30() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_48_2();
    outlined consume of Data._Representation(v19, v20);

    return 0;
  }

  OUTLINED_FUNCTION_0_23();
  v10 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  OUTLINED_FUNCTION_0_23();
  v12 = INIntentCreate();
  v13 = OUTLINED_FUNCTION_48_2();
  outlined consume of Data._Representation(v13, v14);
  outlined consume of Data._Representation(v22, v23);

  if (!v12)
  {
    return 0;
  }

  return v12;
}

uint64_t static SLFDisambiguationItemConverter.toTitle(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000);
  if (v3 & 1) != 0 && (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v6), (swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    v12 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v15 + 48) + 16 * v9 + 8);

    *a3 = *(*(v15 + 56) + 16 * v9);
    _NativeDictionary._delete(at:)();
    *v4 = v15;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_21CC10;
  }

  return result;
}

id outlined bridged method (mbgnn) of @objc INIntentDescription.slot(byName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 slotByName:v4];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc INIntentSlotDescription.facadePropertyName.getter(void *a1)
{
  v1 = [a1 facadePropertyName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  result = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
  }

  return result;
}

id OUTLINED_FUNCTION_3_23()
{

  return SKIDirectInvocationPayload.__allocating_init(identifier:)();
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return swift_dynamicCast();
}

uint64_t String.sanitized.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String.lowercased()();
  static CharacterSet.punctuationCharacters.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components(separatedBy:)();
  (*(v1 + 8))(v4, v0);

  v8._countAndFlagsBits = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v6 = BidirectionalCollection<>.joined(separator:)();

  return v6;
}

uint64_t type metadata instantiation function for MatchResult()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v3)
    {
      v7 = 28526;
    }

    else
    {
      v7 = 7562617;
    }

    if (v3)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_7(a1, a2, 0x6C65636E6163);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_46_8();
    if (v8)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 7562617;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v5 && v2 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_20();
  }

  return v12 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x7070416E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7070416E69;
  switch(v4)
  {
    case 1:
      v5 = 0x7375437070416E69;
      v3 = 0xEB000000006D6F74;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x7070416E65706FLL;
      break;
    case 3:
      v5 = 0x437070416E65706FLL;
      v3 = 0xED00006D6F747375;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7375437070416E69;
      v6 = 0xEB000000006D6F74;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x7070416E65706FLL;
      break;
    case 3:
      v2 = 0x437070416E65706FLL;
      v6 = 0xED00006D6F747375;
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
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  v2 = 0x6E756F436D657469;
  v3 = 0xE900000000000074;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656C7069746C756DLL;
    }

    else
    {
      v5 = 0x72746E49776F6873;
    }

    if (v4 == 1)
    {
      v6 = 0xED00007365676150;
    }

    else
    {
      v6 = 0xE90000000000006FLL;
    }
  }

  else
  {
    v5 = 0x6E756F436D657469;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C7069746C756DLL;
    }

    else
    {
      v2 = 0x72746E49776F6873;
    }

    if (a2 == 1)
    {
      v3 = 0xED00007365676150;
    }

    else
    {
      v3 = 0xE90000000000006FLL;
    }
  }

  if (v5 == v2 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_11();
  }

  return v8 & 1;
}

{
  v2 = 0xED00007070416E49;
  v3 = 0x65756E69746E6F63;
  v4 = a1;
  v5 = 0x65756E69746E6F63;
  v6 = 0xED00007070416E49;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6D6F74737563;
      break;
    case 2:
      v5 = 0x43746C7561666564;
      v6 = 0xEF65756E69746E6FLL;
      break;
    case 3:
      v5 = 0x45746C7561666564;
      v6 = 0xEC000000726F7272;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      OUTLINED_FUNCTION_4_31();
      break;
    case 2:
      v3 = 0x43746C7561666564;
      v2 = 0xEF65756E69746E6FLL;
      break;
    case 3:
      v3 = 0x45746C7561666564;
      v2 = 0xEC000000726F7272;
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
    v8 = OUTLINED_FUNCTION_19_11();
  }

  return v8 & 1;
}

{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v5 = 0x6D69547473726966;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x6C62616E45736177;
      v3 = 0xEA00000000006465;
      break;
    case 3:
      v5 = 0x7361576863746177;
      v3 = 0xEF64656C62616E45;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_41_6();
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x6C62616E45736177;
      v6 = 0xEA00000000006465;
      break;
    case 3:
      v2 = 0x7361576863746177;
      v6 = 0xEF64656C62616E45;
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
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  v2 = 0x64656C62616E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C62616E45736177;
    }

    else
    {
      v4 = 0x6863746177;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x64656C62616E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C62616E45736177;
    }

    else
    {
      v2 = 0x6863746177;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 27503;
  }

  else
  {
    v3 = 0x6D7269666E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 27503;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x4E707041776F6873;
  }

  if (v2)
  {
    v4 = 0xEB00000000656D61;
  }

  else
  {
    v4 = 0x800000000022F170;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x4E707041776F6873;
  }

  if (a2)
  {
    v6 = 0x800000000022F170;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20();
  }

  return v11 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6974736567677573;
  }

  else
  {
    v3 = 0x7470697263736564;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x6974736567677573;
  }

  else
  {
    v5 = 0x7470697263736564;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  v2 = 0x6D7269666E6F63;
  if (a1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v3)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0x62726556736168;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
    if (v7)
    {
      v2 = 0x6D6F74737563;
    }

    else
    {
      v2 = 0x62726556736168;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20();
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xEF6E6F6974616E61;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xEC0000007473614CLL;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000656D61;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v2)
    {
      v6 = 0x7265626D756ELL;
    }

    else
    {
      v6 = 7107189;
    }

    if (v2)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_29_11();
  }

  if (v3)
  {
    OUTLINED_FUNCTION_28_8();
    if (v7)
    {
      v4 = 0x7265626D756ELL;
    }

    else
    {
      v4 = 7107189;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v4 && v1 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20();
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2, uint64_t (*a3)(void))
{
  v5 = a3(a1 & 1);
  v7 = v6;
  if (v5 == a3(a2 & 1) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    v10 = OUTLINED_FUNCTION_7_20();
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    v10 = OUTLINED_FUNCTION_7_20();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WFInputTextFlowError()
{
  Hasher.init(_seed:)();
  WFInputTextFlowError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t WFInputTextFlow.exitValue.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  if (v2 == 2)
  {
    v4 = *(v0 + 160);
    swift_errorRetain();
  }

  else if (v2 == 1)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError();
    return swift_allocError();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError()
{
  result = lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError;
  if (!lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError;
  if (!lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextFlowError and conformance WFInputTextFlowError);
  }

  return result;
}

void WFInputTextFlow.__allocating_init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_40_0();
  swift_allocObject();
  WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)();
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for CATOption();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 16) = v17;
  *(v1 + 24) = v15;
  *(v1 + 32) = v13;
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  outlined init with copy of DeviceState(v5, v1 + 56);
  if (v7)
  {
    v22 = v13;
  }

  else
  {
    outlined init with copy of DeviceState(v5, v34);
    v23 = one-time initialization token for shared;
    v24 = v13;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = static WFDialogState.shared;
    v26 = type metadata accessor for WorkflowRunnerCATs();

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_10_8();
    v33 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATsSimple();
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    v32 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATs();
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    v31 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple();
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    v27 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    v28 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    v29 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_10_8();
    CATWrapper.__allocating_init(options:globals:)();
    OUTLINED_FUNCTION_88_0();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    v7 = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v34, v25, v33, v32, v31, v27, v28, v29, v26);
  }

  *(v1 + 96) = v7;
  type metadata accessor for WorkflowSnippetProvider();
  v30 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  *(v1 + 104) = v30;
  type metadata accessor for WorkflowNLContextProvider();
  *(v1 + 112) = swift_allocObject();
  outlined init with take of Output(v3, v1 + 120);
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 3;
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Input();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);
  (*(v7 + 16))(v12, v3, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = Input.description.getter();
    v20 = v19;
    (*(v7 + 8))(v12, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "#WFInputTextFlow on input: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  if (*(v1 + 176) == 3 && !*(v1 + 168) && *(v1 + 160) == 1)
  {
    WFInputTextFlow.processTextResponse(input:)();
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WFInputTextFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t WFInputTextFlow.execute()()
{
  v68 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0x7974706D65;
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *(v6 + 32);
    v9 = [v8 message];
    if (v9)
    {
      v10 = v9;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v12, &v67);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = [v8 prompt];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE500000000000000;
      v16 = 0x7974706D65;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v67);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_0, v3, v4, "#WFInputTextFlow begins execution, message: %s, prompt: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17();
  }

  v20 = v0[8];
  v21 = *(v20 + 160);
  v22 = *(v20 + 168);
  switch(*(v20 + 176))
  {
    case 1:
      v34 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_30_1(v47))
      {
        goto LABEL_25;
      }

      v48 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v48);
      v39 = "#WFInputTextFlow completed";
      goto LABEL_24;
    case 2:
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_30_1(v35))
      {
        v36 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v36);
        v39 = "#WFInputTextFlow error state";
LABEL_24:
        OUTLINED_FUNCTION_26(&dword_0, v37, v38, v39);
        OUTLINED_FUNCTION_17();
      }

LABEL_25:
      v49 = v0[7];

      static ExecuteResponse.complete()();
      goto LABEL_35;
    case 3:
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      v42 = OUTLINED_FUNCTION_30_1(v41);
      if (v21 | v22)
      {
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v43);
          OUTLINED_FUNCTION_26(&dword_0, v44, v45, "#WFInputTextFlow waiting for response");
          OUTLINED_FUNCTION_17();
        }

        v46 = v0[7];

        goto LABEL_34;
      }

      if (v42)
      {
        v50 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v50);
        OUTLINED_FUNCTION_26(&dword_0, v51, v52, "#WFInputTextFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[10] = v53;
      *v53 = v54;
      v53[1] = WFInputTextFlow.execute();
      v55 = v0[8];

      result = WFInputTextFlow.buildOutput()();
      break;
    default:
      v23 = *(v20 + 168);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_52();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "#WFInputTextFlow responseReceived", v26, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      if (v22)
      {
        v27 = v0[7];
        v28 = objc_allocWithZone(WFInputTextDialogResponse);
        v29 = @nonobjc WFInputTextDialogResponse.init(inputtedText:cancelled:)(v21, v22, 0);
        v31 = *(v20 + 160);
        v30 = *(v20 + 168);
        *(v20 + 160) = v29;
        *(v20 + 168) = 0;
        v32 = *(v20 + 176);
        *(v20 + 176) = 1;
        v33 = v29;
        outlined consume of WFInputTextFlow.State(v31, v30, v32);
        static ExecuteResponse.ongoing(requireInput:)();
      }

      else
      {
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v58))
        {
          v59 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v59);
          OUTLINED_FUNCTION_26(&dword_0, v60, v61, "#WFInputTextFlow received empty text");
          OUTLINED_FUNCTION_17();
        }

        v62 = v0[7];

        v63 = *(v20 + 160);
        v64 = *(v20 + 168);
        *(v20 + 160) = 0;
        *(v20 + 168) = 0;
        v65 = *(v20 + 176);
        *(v20 + 176) = 3;
        outlined consume of WFInputTextFlow.State(v63, v64, v65);
LABEL_34:
        static ExecuteResponse.ongoing(requireInput:)();
      }

LABEL_35:
      OUTLINED_FUNCTION_6_0();

      result = v66();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    v9 = WFInputTextFlow.execute();
  }

  else
  {
    v9 = WFInputTextFlow.execute();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = WFInputTextFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = WFInputTextFlow.execute();
  }

  else
  {
    v9 = WFInputTextFlow.execute();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  *(v1 + 160) = xmmword_21D190;
  v5 = *(v1 + 176);
  *(v1 + 176) = 3;
  outlined consume of WFInputTextFlow.State(v3, v4, v5);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[11];
  v3 = v0[9];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_38_4(v5))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v6, v7, "#WFInputTextFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v8 = v0[7];
  v9 = v0[8];

  OUTLINED_FUNCTION_31_6();
  v10 = OUTLINED_FUNCTION_51_4();
  outlined consume of WFInputTextFlow.State(v10, v11, v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[13];
  v3 = v0[9];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_38_4(v5))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v6, v7, "#WFInputTextFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v8 = v0[7];
  v9 = v0[8];

  OUTLINED_FUNCTION_31_6();
  v10 = OUTLINED_FUNCTION_51_4();
  outlined consume of WFInputTextFlow.State(v10, v11, v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t WFInputTextFlow.execute(completion:)()
{
  type metadata accessor for WFInputTextFlow();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(&lazy protocol witness table cache variable for type WFInputTextFlow and conformance WFInputTextFlow, v0, type metadata accessor for WFInputTextFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFInputTextFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for DialogPhase();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[6] = v7;
  v9 = *(v8 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for NLContextUpdate();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[15] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v22 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v22, v23, v24);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v7))
    {
      v8 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v8);
      OUTLINED_FUNCTION_26(&dword_0, v9, v10, "#WFInputTextFlow: building rfv2 snippet");
      OUTLINED_FUNCTION_17();
    }

    v11 = v0[3];

    v12 = *(v11 + 96);
    v13 = *(v11 + 32);
    v0[19] = v13;
    OUTLINED_FUNCTION_18_4();
    v15 = *(v14 + 200);
    v29 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = WFInputTextFlow.buildOutput();

    return v29(v13);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.voiceCommands);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v21))
    {
      v22 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v22);
      OUTLINED_FUNCTION_26(&dword_0, v23, v24, "#WFInputTextFlow: building rfv1 snippet");
      OUTLINED_FUNCTION_17();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[18] = v25;
    *v25 = v26;
    v25[1] = WFInputTextFlow.buildOutput();
    v27 = v0[2];
    v28 = v0[3];

    return WFInputTextFlow.buildOutput_rfv1()();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[8];
  v9 = v1[7];
  v10 = v1[4];

  v11 = *(v3 + 8);

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[17];
    v12 = v5[14];
    v13 = v5[11];
    v15 = v5[7];
    v14 = v5[8];
    v16 = v5[4];

    OUTLINED_FUNCTION_6_0();

    return v17();
  }

  else
  {
    v5[21] = v3;
    v19 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v19, v20, v21);
  }
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[11];
  v25 = v0[12];
  v27 = v1;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v23 = v0[14];
  v24 = v0[4];
  v9 = *(v0[3] + 112);
  OUTLINED_FUNCTION_18_4();
  (*(v10 + 224))();
  static DialogPhase.confirmed.getter();
  v11 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 16))(v6, v5, v7);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v8 + 8))(v5, v7);
  (*(v3 + 16))(v24, v23, v25);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v12 = type metadata accessor for ResponseFactory();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[22] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v0[23] = v15;
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = v27;
  v16 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v26 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v17 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[24] = v18;
  *v18 = v19;
  v18[1] = WFInputTextFlow.buildOutput();
  v20 = v0[11];
  v21 = v0[2];

  return v26(v21, v15, v20);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[24];
  v3 = v1[23];
  v4 = v1[22];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

uint64_t WFInputTextFlow.buildOutput_rfv1()()
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
  v2 = *(v1 + 96);
  v3 = *(v1 + 32);
  v0[16] = v3;
  OUTLINED_FUNCTION_18_4();
  v5 = *(v4 + 192);
  v11 = (v5 + *v5);
  v6 = v5[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[17] = v7;
  *v7 = v8;
  v7[1] = WFInputTextFlow.buildOutput_rfv1();
  v9 = v0[15];

  return v11(v9, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = WFInputTextFlow.buildOutput_rfv1();
  }

  else
  {
    v9 = WFInputTextFlow.buildOutput_rfv1();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 104);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v16 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = v6[14];
  OUTLINED_FUNCTION_18_4();
  (*(v9 + 224))();
  v10 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  (*(v4 + 16))(v5, v3, v16);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
  v11 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v7[3] = v11;
  v7[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v4 + 8))(v3, v16);
  (*(v14 + 8))(v2, v15);

  OUTLINED_FUNCTION_6_0();

  return v12();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[18];

  return v4();
}

void WFInputTextFlow.processTextResponse(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  OUTLINED_FUNCTION_88_0();
  v2 = type metadata accessor for USOParse();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v74 = v4;
  v76 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for VoiceCommandsNLIntent(0);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for NLIntent();
  v18 = OUTLINED_FUNCTION_7_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = type metadata accessor for Parse();
  v27 = OUTLINED_FUNCTION_7_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  Input.parse.getter();
  v35 = v29[11];
  v36 = OUTLINED_FUNCTION_20_4();
  v38 = v37(v36);
  if (v38 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v39 = v29[12];
    v40 = OUTLINED_FUNCTION_20_4();
    v41(v40);
    (*(v20 + 32))(v25, v34, v17);
    (*(v20 + 16))(v16, v25, v17);
    WFInputTextFlow.getTextFromIntent(intent:)();
    v78 = v42;
    v44 = v43;
    v45 = one-time initialization token for voiceCommands;

    v46 = v0;
    if (v45 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.voiceCommands);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v75 = v17;
      v50 = OUTLINED_FUNCTION_48();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136315138;
      v77 = v46;
      if (v44)
      {
        v52 = v78;
      }

      else
      {
        v52 = 0x7974706D65;
      }

      if (v44)
      {
        v53 = v44;
      }

      else
      {
        v53 = 0xE500000000000000;
      }

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v79);

      *(v50 + 4) = v54;
      v46 = v77;
      _os_log_impl(&dword_0, v48, v49, "#WFInputTextFlow received text: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();

      outlined destroy of VoiceCommandsNLIntent(v16);
      (*(v20 + 8))(v25, v75);
    }

    else
    {

      outlined destroy of VoiceCommandsNLIntent(v16);
      (*(v20 + 8))(v25, v17);
    }

    if (v44)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v38 != enum case for Parse.uso(_:))
    {
      v71 = v29[1];
      v72 = OUTLINED_FUNCTION_20_4();
      v73(v72);
      goto LABEL_30;
    }

    v55 = v29[12];
    v56 = OUTLINED_FUNCTION_20_4();
    v57(v56);
    (*(v74 + 32))(v9, v34, v76);
    if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
    {
      (*(v74 + 8))(v9, v76);
      goto LABEL_30;
    }

    v46 = v0;
    v78 = WFInputTextFlow.parseUSOInput(usoParse:)();
    v44 = v58;
    v59 = one-time initialization token for voiceCommands;

    if (v59 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.voiceCommands);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v61, v62))
    {

      (*(v74 + 8))(v9, v76);
      if (!v44)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    v63 = OUTLINED_FUNCTION_48();
    v64 = swift_slowAlloc();
    v79 = v64;
    *v63 = 136315138;
    if (v44)
    {
      v65 = v78;
    }

    else
    {
      v65 = 0x7974706D65;
    }

    if (v44)
    {
      v66 = v44;
    }

    else
    {
      v66 = 0xE500000000000000;
    }

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v79);

    *(v63 + 4) = v67;
    v46 = v1;
    _os_log_impl(&dword_0, v61, v62, "#WFInputTextFlow received text from usoParse: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

    (*(v74 + 8))(v9, v76);
    if (v44)
    {
LABEL_27:
      v68 = *(v46 + 160);
      v69 = *(v46 + 168);
      *(v46 + 160) = v78;
      *(v46 + 168) = v44;
      v70 = *(v46 + 176);
      *(v46 + 176) = 0;
      outlined consume of WFInputTextFlow.State(v68, v69, v70);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_42();
}

void WFInputTextFlow.getTextFromIntent(intent:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  v8 = OUTLINED_FUNCTION_7_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v41 - v13;
  v15 = [*(v0 + 32) textFieldConfiguration];
  v16 = [v15 keyboardType];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {
      goto LABEL_14;
    }

    v22 = OUTLINED_FUNCTION_36_6();

    if (v22)
    {
      goto LABEL_15;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
LABEL_14:
    }

    else
    {
      v28 = OUTLINED_FUNCTION_36_6();

      if ((v28 & 1) == 0)
      {
        if (one-time initialization token for voiceCommandTextNode == -1)
        {
LABEL_13:
          type metadata accessor for VoiceCommandsNLIntent(0);
          OUTLINED_FUNCTION_2_30();
          lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v29, 255, v30);
          IntentNodeTraversable.value<A>(forNode:)();

          goto LABEL_31;
        }

LABEL_35:
        OUTLINED_FUNCTION_14_15();
        goto LABEL_13;
      }
    }

LABEL_15:
    if (one-time initialization token for voiceCommandScalarNode != -1)
    {
      swift_once();
    }

    type metadata accessor for VoiceCommandsNLIntent(0);
    OUTLINED_FUNCTION_2_30();
    lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v31, 255, v32);
    IntentNodeTraversable.value<A>(forNode:)();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      outlined destroy of String?(v6, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
      goto LABEL_31;
    }

    (*(v10 + 32))(v14, v6, v7);
    Scalar.value.getter();
    if (v42)
    {
      v35 = *(v10 + 8);
      v36 = OUTLINED_FUNCTION_20_4();
      v37(v36);

      goto LABEL_31;
    }

    if (floor(v41) != v41)
    {
      Double.description.getter();
      goto LABEL_30;
    }

    if ((~*&v41 & 0x7FF0000000000000) != 0)
    {
      if (v41 > -9.22337204e18)
      {
        if (v41 < 9.22337204e18)
        {
          *&v41 = v41;
          dispatch thunk of CustomStringConvertible.description.getter();
LABEL_30:

          v38 = *(v10 + 8);
          v39 = OUTLINED_FUNCTION_20_4();
          v40(v39);
          goto LABEL_31;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_2_30();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(v33, 255, v34);
  IntentNodeTraversable.value<A>(forNode:)();
LABEL_31:
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_42();
}

uint64_t WFInputTextFlow.parseUSOInput(usoParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v89 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v89 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v89 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v25 = OUTLINED_FUNCTION_7_1(v24);
  v93 = v26;
  v94 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  v90 = v30 - v29;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.voiceCommands);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_52();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "parsing uso input", v34, 2u);
    OUTLINED_FUNCTION_8_15();
  }

  USOParse.userParse.getter();
  v35 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v36 = *(v16 + 8);
  v36(v23, v13);
  specialized Collection.first.getter(v35, v12);

  v37 = v94;
  if (__swift_getEnumTagSinglePayload(v12, 1, v94) != 1)
  {
    (*(v93 + 32))(v90, v12, v37);
    USOParse.userParse.getter();
    v41 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    v36(v21, v13);
    v42 = *(v41 + 16);

    v43 = v92;
    if (v42 >= 2)
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v45))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v46, v47, v48, v49, v50, 2u);
        OUTLINED_FUNCTION_8_15();
      }
    }

    v51 = [*(v91 + 32) textFieldConfiguration];
    v52 = [v51 keyboardType];

    if (v52)
    {
      v53 = WFTextFieldKeyboardType.toInputType()();

      if (v53 - 1 < 2)
      {
        v54 = Siri_Nlu_External_UserDialogAct.intValue.getter();
        if (v55)
        {
          v56 = Siri_Nlu_External_UserDialogAct.doubleValue.getter();
          if (v57)
          {
            v67 = OUTLINED_FUNCTION_40_6();
            v68(v67);
            return OUTLINED_FUNCTION_51_4();
          }

          v58 = v56;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v60))
          {
            v61 = OUTLINED_FUNCTION_48();
            *v61 = 134217984;
            *(v61 + 4) = v58;
            OUTLINED_FUNCTION_4_20();
            _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
            OUTLINED_FUNCTION_8_15();
          }

          Double.description.getter();
        }

        else
        {
          v70 = v54;
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_38_4(v72))
          {
            v73 = OUTLINED_FUNCTION_48();
            *v73 = 134217984;
            *(v73 + 4) = v70;
            OUTLINED_FUNCTION_4_20();
            _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
            OUTLINED_FUNCTION_8_15();
          }

          v95 = v70;
          dispatch thunk of CustomStringConvertible.description.getter();
        }

        goto LABEL_28;
      }

      if (v53)
      {
        Siri_Nlu_External_UserDialogAct.urlValue.getter(v43);
        v81 = v89;
        outlined init with copy of URL?(v43, v89);
        v82 = type metadata accessor for URL();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v82);
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of String?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v84 = OUTLINED_FUNCTION_40_6();
          v85(v84, v37);
          outlined destroy of String?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          return OUTLINED_FUNCTION_51_4();
        }

        URL.absoluteString.getter();
        outlined destroy of String?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v86 = OUTLINED_FUNCTION_40_6();
        v87(v86, v37);
        v88 = *(*(v82 - 8) + 8);
        v79 = OUTLINED_FUNCTION_20_4();
        goto LABEL_29;
      }
    }

    Siri_Nlu_External_UserDialogAct.stringValue.getter();
LABEL_28:
    v79 = OUTLINED_FUNCTION_40_6();
LABEL_29:
    v80(v79);
    return OUTLINED_FUNCTION_51_4();
  }

  outlined destroy of String?(v12, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v40);
    _os_log_impl(&dword_0, v38, v39, "#WFInputTextFlow: missing UDA", v21, 2u);
    OUTLINED_FUNCTION_17();
  }

  return OUTLINED_FUNCTION_51_4();
}

SiriLinkFlowPlugin::WFInputTextTypes __swiftcall WFTextFieldKeyboardType.toInputType()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 1;
  }

  OUTLINED_FUNCTION_20_4();
  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    return 2;
  }

  OUTLINED_FUNCTION_20_4();
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 2;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 3;
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    v17 = OUTLINED_FUNCTION_19_11();

    if (v17)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t WFInputTextFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  outlined consume of WFInputTextFlow.State(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v6 = *(v0 + 192);

  return v0;
}

uint64_t WFInputTextFlow.__deallocating_deinit()
{
  WFInputTextFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFInputTextFlow(uint64_t a1)
{
  v4 = *(**v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFInputTextFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 208))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

id @nonobjc WFInputTextDialogResponse.init(inputtedText:cancelled:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithInputtedText:v5 cancelled:a3 & 1];

  return v6;
}

void outlined consume of WFInputTextFlow.State(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

unint64_t lazy protocol witness table accessor for type WFInputTextTypes and conformance WFInputTextTypes()
{
  result = lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes;
  if (!lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputTextTypes and conformance WFInputTextTypes);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputTextFlowError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xE3ECCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputTextTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE3FD0);
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin011WFInputTextC0C5State33_F998A202CF45E799BDA497C0F5296CDBLLO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for WFInputTextFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for WFInputTextFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for WFInputTextFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_20()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  *(v1 + 160) = v0;
  *(v1 + 168) = 0;
  v5 = *(v1 + 176);
  *(v1 + 176) = 2;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForMakeChoice(options:)(uint64_t a1)
{
  VoiceCommandNLContextProvider.makeContextForMultiChoice(options:)(a1);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  VoiceCommandNLContextProvider.getDisplayHints(options:)();
  return NLContextUpdate.displayHints.setter();
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForNeedsValue(valueType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLContextUpdate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && a1)
  {
    v10 = a1;
    v11 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v10);
    if (v13)
    {
      if (v13 != 1 && !(v11 ^ 2 | v12))
      {
        type metadata accessor for WorkflowNLContextProvider();
        swift_allocObject();
        VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)();
      }
    }

    else
    {
      outlined consume of VoiceCommandIntentValueType(v11, v12, 0);
    }

    v9 = LNValueType.executeCommonVoiceCommandTaskBuilder.getter();
  }

  VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v9);

  if (a1)
  {
    v15 = a1;
    v16 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v15);
    if (v18 == 2 && v16 <= 0x12 && ((1 << v16) & 0x50401) != 0)
    {
      OUTLINED_FUNCTION_0_24();
      NLContextUpdate.dictationPromptTargetDomain.setter();
      LNValueType.toPromptTargetType()();
      NLContextUpdate.dictationPromptTargetNodes.setter();
    }

    else
    {
      outlined consume of VoiceCommandIntentValueType(v16, v17, v18);
      OUTLINED_FUNCTION_0_24();
      NLContextUpdate.weightedPromptTargetDomain.setter();
      LNValueType.toPromptTargetType()();
      NLContextUpdate.weightedPromptResponseTargets.setter();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    NLContextUpdate.dictationPromptTargetDomain.setter();
    NLContextUpdate.dictationPromptTargetNodes.setter();
  }

  return (*(v5 + 32))(a2, v8, v4);
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForActionConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  result = NLContextUpdate.weightedPromptResponseTargets.setter();
  if (a2 && a4)
  {

    v14 = NLContextUpdate.weightedPromptResponseTargets.modify();
    if (*v13)
    {
      v15 = v13;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(*v15 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
      v17 = *v15;
      *(v17 + 16) = v16 + 1;
      v18 = v17 + 16 * v16;
      *(v18 + 32) = 0xD000000000000022;
      *(v18 + 40) = 0x800000000022D5D0;
    }

    v14(v24, 0);
    v19 = *(a5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = a5;
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(a5 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a5 = v21;
      v24[0] = v21;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a1, a2);
    v22 = *(a6 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || v22 >= *(a6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      a6 = v23;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, a3, a4);
    ShortcutsLinkNLContextProvider.getDisplayHints(acceptList:denyList:)(a5, a6);

    return NLContextUpdate.displayHints.setter();
  }

  return result;
}

uint64_t ShortcutsLinkNLContextProvider.makeContextForDisambiguation(disambiguationItems:)(uint64_t a1)
{
  v2 = specialized _arrayForceCast<A, B>(_:)(a1);
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v2);

  NLContextUpdate.weightedPromptResponseTargets.setter();
  specialized _arrayForceCast<A, B>(_:)(a1);
  VoiceCommandNLContextProvider.getDisplayHints(items:)();

  return NLContextUpdate.displayHints.setter();
}

void *ShortcutsLinkNLContextProvider.getDisplayHints(acceptList:denyList:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v45 - v5;
  v58 = type metadata accessor for DisplayHint();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v58);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for SemanticValue();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v56 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v18;
  v21 = *(a1 + 16);
  v46 = v19;
  v55 = v6;
  if (v21)
  {
    v50 = (v19 + 16);
    v51 = "voiceCommandReference";
    v48 = v6 + 32;
    v49 = (v19 + 8);
    v22 = (a1 + 40);
    v23 = _swiftEmptyArrayStorage;
    v52 = &v45 - v18;
    do
    {
      v24 = *(v22 - 1);
      v25 = *v22;

      SemanticValue.init(string:label:)();
      v26 = *v50;
      v27 = v57;
      (*v50)(v57, v20, v12);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v12);
      v26(v56, v20, v12);
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
        v23 = v30;
      }

      v29 = v23[2];
      v28 = v23[3];
      v6 = v55;
      if (v29 >= v28 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v23);
        v23 = v31;
      }

      v20 = v52;
      (*v49)(v52, v12);
      v23[2] = v29 + 1;
      (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v11, v58);
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v32 = *(v47 + 16);
  if (v32)
  {
    v51 = (v46 + 16);
    v52 = "voiceCommandReference";
    v49 = (v6 + 32);
    v50 = (v46 + 8);
    v33 = (v47 + 40);
    v34 = v53;
    do
    {
      v35 = *(v33 - 1);
      v36 = *v33;

      SemanticValue.init(string:label:)();
      v37 = *v51;
      v38 = v57;
      (*v51)(v57, v34, v12);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v12);
      v37(v56, v34, v12);
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
        v23 = v42;
      }

      v40 = v23[2];
      v39 = v23[3];
      v34 = v53;
      v41 = v55;
      if (v40 >= v39 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v23);
        v23 = v43;
      }

      (*v50)(v34, v12);
      v23[2] = v40 + 1;
      (*(v41 + 32))(v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v54, v58);
      v33 += 2;
      --v32;
    }

    while (v32);
  }

  return v23;
}

uint64_t LNValue.localizedEnumCaseName(metadataProvider:enumIdentifier:bundleIdentifier:localeIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v13 = [v7 value];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_48:
      OUTLINED_FUNCTION_0();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to localize enum case name because value is not a String.";
LABEL_7:
      _os_log_impl(&dword_0, v18, v19, v21, v20, 2u);
    }

LABEL_8:

    return 0;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(a4, a5, v14, v15);
  if (!v6)
  {
    v22 = v16;
    v23 = specialized Array.count.getter(v16);
    for (i = 0; v23 != i; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v27 = [v25 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v28 == a2 && v30 == a3)
      {

LABEL_24:

        v33 = [v26 cases];

        type metadata accessor for LNEnumCaseMetadata();
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = specialized Array.count.getter(v34);
        for (j = 0; v35 != j; ++j)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (j >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_47;
            }

            v37 = *(v34 + 8 * j + 32);
          }

          v38 = v37;
          if (__OFADD__(j, 1))
          {
            goto LABEL_46;
          }

          v39 = [v37 identifier];
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          if (v40 == v52 && v42 == v53)
          {

LABEL_42:

            v46 = v38;
            v47 = [v46 displayRepresentation];
            v48 = [v47 title];

            v49 = String._bridgeToObjectiveC()();
            v50 = [v48 localizedStringForLocaleIdentifier:v49];

            a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            return a4;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {
            goto LABEL_42;
          }
        }

        break;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_24;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Failed to find matching enum case.";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  return a4;
}

unint64_t type metadata accessor for LNEnumCaseMetadata()
{
  result = lazy cache variable for type metadata for LNEnumCaseMetadata;
  if (!lazy cache variable for type metadata for LNEnumCaseMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnumCaseMetadata);
  }

  return result;
}

uint64_t static InputUtils.getText(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getText");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  return v10;
}

uint64_t static InputUtils.getBool(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getBool");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  return 0x2000001u >> (8 * v10);
}

uint64_t static InputUtils.getDouble(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
  v11 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v12 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_68_3(&dword_0, v14, v15, "#InputUtils getDouble");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v16, v17);
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_35_10(v5, 1, v6);
  if (v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    return 0;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_52_5();
    v20(v19);
    Scalar.value.getter();
    v21 = OUTLINED_FUNCTION_50_3();
    v22(v21, v6);
    return v24;
  }
}

uint64_t static InputUtils.getMeasurement(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_21_2(v8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
  outlined init with copy of VoiceCommandsNLIntent(a1, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    OUTLINED_FUNCTION_1_35();
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v20, v21);
    v22 = NLIntentWrapper.description.getter();
    v24 = v23;
    outlined destroy of VoiceCommandsNLIntent(v14);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v37);

    *(v18 + 4) = v25;
    OUTLINED_FUNCTION_66_2(&dword_0, v26, v27, "#InputUtils getMeasurement %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    outlined destroy of VoiceCommandsNLIntent(v14);
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v28, v29);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_35_10(v7, 1, v30);
  if (v31)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    v32 = 0;
    v33 = 1;
  }

  else
  {
    Scalar.value.getter();
    v32 = v37;
    v33 = v38;
    OUTLINED_FUNCTION_21_2(v30);
    (*(v34 + 8))(v7, v30);
  }

  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    OUTLINED_FUNCTION_25_8();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v37 == 88)
  {
    v35 = 0;
    if ((v33 & 1) == 0)
    {
      return v32;
    }
  }

  else
  {
    v35 = VoiceCommandsNLIntent.VoiceCommandUnit.unitType.getter(v37);
    if ((v33 & 1) == 0)
    {
      return v32;
    }
  }

  return 0;
}

NSAttributedString static InputUtils.getAttributedText(from:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_18_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_11(v4);
    OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#InputUtils getAttributedText");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v7, v8);
  OUTLINED_FUNCTION_12_12();
  IntentNodeTraversable.value<A>(forNode:)();
  if (!v10._object)
  {
    return 0;
  }

  type metadata accessor for NSAttributedString();
  return NSAttributedString.__allocating_init(string:)(v10);
}

uint64_t static InputUtils.getDate(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v0[22] = v6;
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v0[23] = OUTLINED_FUNCTION_27();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Identifier();
  v0[26] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[27] = v10;
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Calendar();
  v0[29] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[30] = v14;
  v16 = *(v15 + 64);
  v0[31] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for DateComponents();
  v0[32] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v0[33] = v18;
  v20 = *(v19 + 64);
  v0[34] = OUTLINED_FUNCTION_27();
  v0[35] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDate");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[37] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  *(v1 + 304) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (v0[38])
  {
    v1 = v0[35];
    v2 = v0[33];
    v3 = v0[34];
    v5 = v0[31];
    v4 = v0[32];
    v6 = v0[27];
    v7 = v0[28];
    v8 = v0[26];
    v48 = v0[25];
    v50 = v0[24];
    v52 = v0[36];

    dispatch thunk of DateTime.dateComponents.getter();

    (*(v2 + 32))(v1, v3, v4);
    (*(v6 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v8);
    Calendar.init(identifier:)();
    (*(v6 + 8))(v7, v8);
    Calendar.date(from:)();
    outlined init with copy of LocationProviding?(v48, v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[35];
    v13 = v0[33];
    v15 = v0[30];
    v14 = v0[31];
    v16 = v0[29];
    v17 = v0[24];
    if (v11)
    {
      v53 = v0[32];
      v18 = v0[23];
      v49 = v0[22];
      v51 = v0[29];
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = OUTLINED_FUNCTION_12_12();
      outlined init with copy of LocationProviding?(v20, v21, v22, v23);
      String.init<A>(describing:)();
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v24 = OUTLINED_FUNCTION_20_1();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_0, v9, v10, "#InputUtils.getDate() returned %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_15_1();

      OUTLINED_FUNCTION_15_1();

      (*(v15 + 8))(v14, v51);
      (*(v13 + 8))(v12, v53);
    }

    else
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v33 = OUTLINED_FUNCTION_50_3();
      v34(v33, v16);
      v35 = *(v13 + 8);
      v36 = OUTLINED_FUNCTION_9_3();
      v38(v36, v37);
    }

    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    outlined init with take of Date?(v0[25], v0[17], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v28 = v0[17];
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  v40 = v0[34];
  v39 = v0[35];
  v41 = v0[31];
  v42 = v0[28];
  v44 = v0[24];
  v43 = v0[25];
  v45 = v0[23];

  OUTLINED_FUNCTION_6_0();

  return v46();
}

uint64_t static InputUtils.getDateComponents(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t static InputUtils.getDateComponents(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDateComponents");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 176);
  *v2 = *v0;
  *(v1 + 184) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  if (*(v0 + 184))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 184);

    dispatch thunk of DateTime.dateComponents.getter();
  }

  v3 = *(v0 + 136);
  outlined destroy of InputUtils.DateTimeHydrator(v0 + 16);
  type metadata accessor for DateComponents();
  v4 = OUTLINED_FUNCTION_61_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t static InputUtils.getDateInterval(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v0[22] = OUTLINED_FUNCTION_27();
  v0[23] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v0[24] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[25] = v10;
  v12 = *(v11 + 64);
  v0[26] = OUTLINED_FUNCTION_27();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v13 = type metadata accessor for DateComponents();
  v0[32] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[33] = v14;
  v16 = *(v15 + 64);
  v0[34] = OUTLINED_FUNCTION_27();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v17 = type metadata accessor for Calendar.Identifier();
  v0[38] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v0[39] = v18;
  v20 = *(v19 + 64);
  v0[40] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for Calendar();
  v0[41] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v0[42] = v22;
  v24 = *(v23 + 64);
  v0[43] = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getDateInterval");
    OUTLINED_FUNCTION_15_1();
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];

  outlined init with copy of LocationProviding?(v10, (v0 + 2), &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined init with copy of DeviceState(v9, (v0 + 7));
  outlined init with copy of DeviceState(v8, (v0 + 12));
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_19_12(v11);

  return InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v150 = v0;
  if (!v0[46])
  {
    goto LABEL_10;
  }

  v1 = v0[43];
  v2 = v0[39];
  (*(v2 + 104))(v0[40], enum case for Calendar.Identifier.gregorian(_:), v0[38]);
  Calendar.init(identifier:)();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  if (!DateTime.occurringIn.getter() || (v6 = DateTime.DateTimeRange.start.getter(), , !v6))
  {
    v36 = v0[42];
    v35 = v0[43];
    v37 = v0[41];

    v38 = *(v36 + 8);
    v39 = OUTLINED_FUNCTION_12_12();
    v40(v39);
LABEL_10:
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
LABEL_11:
    v52 = 1;
    goto LABEL_12;
  }

  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[32];
  v10 = v0[33];
  dispatch thunk of DateTime.dateComponents.getter();

  v11 = *(v10 + 32);
  v12 = OUTLINED_FUNCTION_20_1();
  v11(v12);
  if (!DateTime.occurringIn.getter() || (v13 = DateTime.DateTimeRange.end.getter(), , !v13))
  {
    v42 = v0[42];
    v41 = v0[43];
    v43 = v0[41];
    v44 = v0[37];
    v45 = v0[32];
    v46 = v0[33];

    v47 = OUTLINED_FUNCTION_50_3();
    v48(v47, v45);
    v49 = *(v42 + 8);
    v50 = OUTLINED_FUNCTION_12_12();
    v51(v50);
    goto LABEL_10;
  }

  v14 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[32];
  v18 = v0[23];
  v142 = v0[43];
  v146 = v0[24];
  dispatch thunk of DateTime.dateComponents.getter();

  v19 = OUTLINED_FUNCTION_13_5();
  v11(v19);
  Calendar.date(from:)();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v146);
  v21 = v0[43];
  if (EnumTagSinglePayload == 1)
  {
    v22 = v0[41];
    v23 = v0[42];
    v24 = v0[37];
    v25 = v0[35];
    v26 = v0[32];
    v27 = v0[33];
    v28 = v0[23];

    v29 = *(v27 + 8);
    v30 = OUTLINED_FUNCTION_13_5();
    v29(v30);
    (v29)(v24, v26);
    v31 = *(v23 + 8);
    v32 = OUTLINED_FUNCTION_12_12();
    v33(v32);
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    v34 = v28;
LABEL_18:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v64 = v0[35];
  v65 = v0[24];
  v66 = v0[22];
  v67 = *(v0[25] + 32);
  v67(v0[31], v0[23], v65);
  Calendar.date(from:)();
  v68 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v68, v69, v65);
  if (v70)
  {
    v71 = v0[42];
    v139 = v0[41];
    v144 = v0[43];
    v72 = v0[37];
    v73 = v0[35];
    v75 = v0[32];
    v74 = v0[33];
    v76 = v0[31];
    v78 = v0[24];
    v77 = v0[25];
    v148 = v0[22];

    (*(v77 + 8))(v76, v78);
    v79 = *(v74 + 8);
    v80 = OUTLINED_FUNCTION_13_5();
    v79(v80);
    (v79)(v72, v75);
    (*(v71 + 8))(v144, v139);
    outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
    v34 = v148;
    goto LABEL_18;
  }

  v140 = v0[44];
  v81 = v0[31];
  v82 = v0[28];
  v83 = v0[29];
  v85 = v0[24];
  v84 = v0[25];
  v67(v0[30], v0[22], v85);
  v86 = *(v84 + 16);
  (v86)(v83, v81, v85);
  v87 = OUTLINED_FUNCTION_51_4();
  v145 = v86;
  (v86)(v87);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  v90 = os_log_type_enabled(v88, v89);
  v92 = v0[28];
  v91 = v0[29];
  v94 = v0[24];
  v93 = v0[25];
  if (v90)
  {
    v134 = v89;
    v128 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v128 = 136315394;
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    v95 = v92;
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    logb = v88;
    v98 = v97;
    v99 = *(v93 + 8);
    v99(v91, v94);
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v149);

    *(v128 + 4) = v100;
    *(v128 + 12) = 2080;
    dispatch thunk of CustomStringConvertible.description.getter();
    v141 = v99;
    v99(v95, v94);
    v101 = OUTLINED_FUNCTION_51_4();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v103);

    *(v128 + 14) = v104;
    _os_log_impl(&dword_0, logb, v134, "#InputUtils.getDateInterval() returned %s and %s", v128, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v105 = *(v93 + 8);
    v105(v92, v94);
    v141 = v105;
    v105(v91, v94);
  }

  v106 = v0[42];
  v107 = v0[33];
  v109 = v0[30];
  v108 = v0[31];
  v110 = v0[25];
  v111 = static Date.< infix(_:_:)();
  v129 = (v107 + 8);
  log = v0[41];
  v135 = (v106 + 8);
  v137 = v0[43];
  v124 = v0[35];
  v113 = v0[31];
  v112 = v0[32];
  v125 = v112;
  v126 = v0[37];
  v114 = v0[30];
  v116 = v0[26];
  v115 = v0[27];
  v117 = v0[24];
  v118 = v0[17];
  if (v111)
  {
    v119 = v0[27];
    OUTLINED_FUNCTION_54_4();
    v120 = v145;
    v145();
    v121 = v116;
    v122 = v114;
  }

  else
  {
    v120 = v145;
    (v145)(v0[27], v0[30], v0[24]);
    v121 = v116;
    v122 = v113;
  }

  (v120)(v121, v122, v117);
  OUTLINED_FUNCTION_12_12();
  DateInterval.init(start:end:)();

  v141(v114, v117);
  v141(v113, v117);
  v123 = *v129;
  (*v129)(v124, v125);
  v123(v126, v125);
  (*v135)(v137, log);
  outlined destroy of InputUtils.DateTimeHydrator((v0 + 2));
  v52 = 0;
LABEL_12:
  v53 = v0[43];
  v54 = v0[40];
  v56 = v0[36];
  v55 = v0[37];
  v57 = v0[34];
  v58 = v0[35];
  v59 = v0[31];
  v127 = v0[30];
  loga = v0[29];
  v133 = v0[28];
  v136 = v0[27];
  v138 = v0[26];
  v143 = v0[23];
  v147 = v0[22];
  v60 = v0[17];
  v61 = type metadata accessor for DateInterval();
  __swift_storeEnumTagSinglePayload(v60, v52, 1, v61);

  OUTLINED_FUNCTION_6_0();

  return v62();
}

uint64_t static InputUtils.getDuration(from:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_18_1();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#InputUtils getDuration", v6, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v9, v10);
  IntentNodeTraversable.value<A>(forNode:)();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
  v13 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    goto LABEL_10;
  }

  Scalar.value.getter();
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_21_2(v11);
  (*(v16 + 8))(v13, v11);
  if (v15)
  {
LABEL_10:
    v17 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v18 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_18_1();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v20);
      OUTLINED_FUNCTION_26(&dword_0, v21, v22, "#InputUtils.getDuration() unable to extract unit and value from parse");
      OUTLINED_FUNCTION_15_1();
    }

LABEL_13:
    v23 = 0;
    v24 = 0;
    v25 = 1;
    goto LABEL_14;
  }

  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    OUTLINED_FUNCTION_25_8();
  }

  v29 = *(v0 + 32);
  IntentNodeTraversable.value<A>(forNode:)();
  switch(*(v0 + 25))
  {
    case 'Q':
      v30 = static Duration.milliseconds(_:)();
      goto LABEL_32;
    case 'R':
      goto LABEL_25;
    case 'S':
      if ((~*&v14 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_34;
      }

      if (v14 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_26_14();
      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 'T':
      if (COERCE_UNSIGNED_INT64(fabs(v14 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0xE77A0);
      }

      if (v14 / 1000.0 <= -9.22337204e18)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_26_14();
      if (v33)
      {
LABEL_30:
        v30 = _ss8DurationV11nanosecondsyABxSzRzlFZSi_Tt0g5(v32);
      }

      else
      {
        __break(1u);
LABEL_25:
        v30 = static Duration.microseconds(_:)();
      }

LABEL_32:
      v23 = v30;
      v24 = v31;
      v25 = 0;
LABEL_14:
      v26 = *(v0 + 40);

      v27 = *(v0 + 8);

      return v27(v23, v24, v25);
    case 'U':
    case 'V':
    case 'W':
      v30 = static Duration.seconds(_:)();
      goto LABEL_32;
    case 'X':
      goto LABEL_10;
    default:
      goto LABEL_13;
  }
}

uint64_t static InputUtils.getRecurrenceRule(dateTimeValue:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Calendar.MatchingPolicy();
  v0[7] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Calendar.RecurrenceRule.End();
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  v0[10] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for Calendar.Identifier();
  v0[11] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  v0[14] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for OSSignpostError();
  v0[15] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v0[16] = v22;
  v24 = *(v23 + 64);
  v0[17] = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for Calendar.RecurrenceRule.Frequency();
  v0[18] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v0[19] = v26;
  v28 = *(v27 + 64);
  v0[20] = OUTLINED_FUNCTION_27();
  v0[21] = swift_task_alloc();
  v29 = type metadata accessor for OSSignpostID();
  v0[22] = v29;
  OUTLINED_FUNCTION_5_0(v29);
  v0[23] = v30;
  v32 = *(v31 + 64);
  v0[24] = OUTLINED_FUNCTION_27();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v33 = type metadata accessor for OSSignposter();
  v0[27] = v33;
  OUTLINED_FUNCTION_5_0(v33);
  v0[28] = v34;
  v36 = *(v35 + 64);
  v0[29] = OUTLINED_FUNCTION_28();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0D4UnitOSgMd, &_s13SiriInference8DateTimeC0D4UnitOSgMR);
  OUTLINED_FUNCTION_14(v37);
  v39 = *(v38 + 64);
  v0[30] = OUTLINED_FUNCTION_28();
  v40 = type metadata accessor for DateTime.TimeUnit();
  v0[31] = v40;
  OUTLINED_FUNCTION_5_0(v40);
  v0[32] = v41;
  v43 = *(v42 + 64);
  v0[33] = OUTLINED_FUNCTION_27();
  v0[34] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v44);
  v46 = *(v45 + 64);
  v0[35] = OUTLINED_FUNCTION_28();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV10RecurrenceVSgMd, &_s12SiriOntology15TerminalElementV10RecurrenceVSgMR);
  OUTLINED_FUNCTION_14(v47);
  v49 = *(v48 + 64);
  v0[36] = OUTLINED_FUNCTION_28();
  v50 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v50, v51, v52);
}

void static InputUtils.getRecurrenceRule(dateTimeValue:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getRecurrenceRule");
    OUTLINED_FUNCTION_15_1();
  }

  v8 = v0[35];
  v9 = v0[3];

  v10 = OUTLINED_FUNCTION_9_3();
  outlined init with copy of LocationProviding?(v10, v11, v12, v13);
  v14 = type metadata accessor for TerminalElement.DateTimeValue();
  OUTLINED_FUNCTION_35_10(v8, 1, v14);
  if (!v15)
  {
    v19 = v0[35];
    v20 = v0[36];
    TerminalElement.DateTimeValue.recurrence.getter();
    OUTLINED_FUNCTION_21_2(v14);
    (*(v21 + 8))(v19, v14);
    v22 = type metadata accessor for TerminalElement.Recurrence();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v22);
    v24 = v0[36];
    if (EnumTagSinglePayload == 1)
    {
      v17 = &_s12SiriOntology15TerminalElementV10RecurrenceVSgMd;
      v18 = &_s12SiriOntology15TerminalElementV10RecurrenceVSgMR;
LABEL_10:
      v16 = v24;
      goto LABEL_11;
    }

    v40 = TerminalElement.Recurrence.toRecurrence()();
    OUTLINED_FUNCTION_21_2(v22);
    v42 = *(v41 + 8);
    v43 = OUTLINED_FUNCTION_12_12();
    v44(v43);
    if (!v40)
    {
      goto LABEL_12;
    }

    if (!DateTime.RecurrencePattern.recurrencePeriod.getter())
    {

      goto LABEL_12;
    }

    v46 = v0[30];
    v45 = v0[31];
    DateTime.Interval.timeUnit.getter();
    OUTLINED_FUNCTION_35_10(v46, 1, v45);
    if (v15)
    {
      v24 = v0[30];

      v17 = &_s13SiriInference8DateTimeC0D4UnitOSgMd;
      v18 = &_s13SiriInference8DateTimeC0D4UnitOSgMR;
      goto LABEL_10;
    }

    (*(v0[32] + 32))(v0[34], v0[30], v0[31]);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v47 = v0[28];
    v48 = v0[29];
    v49 = v0[27];
    v50 = __swift_project_value_buffer(v49, static Signposter.voiceCommands);
    (*(v47 + 16))(v48, v50, v49);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v51 = OSSignposter.logHandle.getter();
    static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v52 = v0[26];
      OUTLINED_FUNCTION_18_1();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_7(v53);
      OSSignpostID.rawValue.getter();
      OUTLINED_FUNCTION_47_4();
      _os_signpost_emit_with_name_impl(v54, v55, v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_15_1();
    }

    v62 = v0[25];
    v63 = v0[26];
    v65 = v0[22];
    v64 = v0[23];

    v66 = *(v64 + 16);
    v67 = OUTLINED_FUNCTION_51_4();
    v68(v67);
    v69 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_46_9(v69);
    swift_allocObject();
    v70 = 1;
    OUTLINED_FUNCTION_55_2();
    OSSignpostIntervalState.init(id:isOpen:)();
    v71 = *(v64 + 8);
    v71(v63, v65);
    v72 = COERCE_DOUBLE(DateTime.Interval.quantity.getter());
    v151 = v71;
    if (v73)
    {
      goto LABEL_33;
    }

    if ((~*&v72 & 0x7FF0000000000000) != 0)
    {
      if (v72 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_26_14();
        if (!v75)
        {
          goto LABEL_59;
        }

        v70 = v74;
LABEL_33:
        v76 = v0[32];
        (*(v76 + 16))(v0[33], v0[34], v0[31]);
        v77 = *(v76 + 88);
        v78 = OUTLINED_FUNCTION_12_12();
        v80 = v79(v78);
        if (v80 == enum case for DateTime.TimeUnit.day(_:))
        {
          v81 = &enum case for Calendar.RecurrenceRule.Frequency.daily(_:);
        }

        else
        {
          if (v80 == enum case for DateTime.TimeUnit.fortnight(_:))
          {
            (*(v0[19] + 104))(v0[21], enum case for Calendar.RecurrenceRule.Frequency.weekly(_:), v0[18]);
            if (v70 + 0x4000000000000000 < 0)
            {
LABEL_60:
              __break(1u);
              return;
            }

LABEL_38:
            v84 = v0[29];
            v85 = v0[24];
            v86 = OSSignposter.logHandle.getter();
            OSSignpostIntervalState.signpostID.getter();
            static os_signpost_type_t.end.getter();
            if (OS_os_log.signpostsEnabled.getter())
            {
              v87 = v0[16];
              v88 = v0[17];
              v89 = v0[15];

              checkForErrorAndConsumeState(state:)();

              v90 = *(v87 + 88);
              v91 = OUTLINED_FUNCTION_51_4();
              if (v92(v91) != enum case for OSSignpostError.doubleEnd(_:))
              {
                (*(v0[16] + 8))(v0[17], v0[15]);
              }

              v93 = v0[24];
              OUTLINED_FUNCTION_18_1();
              v94 = swift_slowAlloc();
              OUTLINED_FUNCTION_41_7(v94);
              OSSignpostID.rawValue.getter();
              OUTLINED_FUNCTION_47_4();
              _os_signpost_emit_with_name_impl(v95, v96, v97, v98, v99, v100, v101, v102);
              OUTLINED_FUNCTION_15_1();
            }

            v144 = v0[31];
            v146 = v0[34];
            v141 = v0[29];
            v142 = v0[32];
            v139 = v0[28];
            v140 = v0[27];
            v103 = v0[24];
            v104 = v0[22];
            v105 = v0[19];
            v132 = v0[18];
            v133 = v0[21];
            v106 = v0[13];
            v107 = v0[14];
            v108 = v0[11];
            v109 = v0[12];
            v130 = v0[10];
            v131 = v0[20];
            v134 = v0[9];
            v110 = v0[8];
            v135 = v0[7];
            v136 = v0[6];
            v111 = v86;
            v112 = v0[5];
            v137 = v0[4];
            v138 = v0[2];

            v151(v103, v104);
            (*(v109 + 104))(v106, enum case for Calendar.Identifier.gregorian(_:), v108);
            Calendar.init(identifier:)();
            (*(v109 + 8))(v106, v108);
            (*(v105 + 16))(v131, v133, v132);
            static Calendar.RecurrenceRule.End.never.getter();
            (*(v110 + 104))(v134, enum case for Calendar.MatchingPolicy.nextTimePreservingSmallerComponents(_:), v135);
            (*(v112 + 104))(v136, enum case for Calendar.RepeatedTimePolicy.first(_:), v137);
            Calendar.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)();

            v113 = *(v105 + 8);
            v114 = OUTLINED_FUNCTION_9_3();
            v115(v114);
            (*(v139 + 8))(v141, v140);
            (*(v142 + 8))(v146, v144);
            v28 = type metadata accessor for Calendar.RecurrenceRule();
            v26 = v138;
            v27 = 0;
            goto LABEL_13;
          }

          if (v80 == enum case for DateTime.TimeUnit.hour(_:))
          {
            v81 = &enum case for Calendar.RecurrenceRule.Frequency.hourly(_:);
          }

          else if (v80 == enum case for DateTime.TimeUnit.minute(_:))
          {
            v81 = &enum case for Calendar.RecurrenceRule.Frequency.minutely(_:);
          }

          else
          {
            v81 = &enum case for Calendar.RecurrenceRule.Frequency.monthly(_:);
            if (v80 != enum case for DateTime.TimeUnit.month(_:))
            {
              if (v80 == enum case for DateTime.TimeUnit.quarterOfYear(_:))
              {
                v116 = OUTLINED_FUNCTION_65_2(&enum case for Calendar.RecurrenceRule.Frequency.monthly(_:));
                v80 = v117(v116);
                if ((v70 * 3) >> 64 == (3 * v70) >> 63)
                {
                  goto LABEL_38;
                }

                __break(1u);
              }

              if (v80 == enum case for DateTime.TimeUnit.week(_:))
              {
                v81 = &enum case for Calendar.RecurrenceRule.Frequency.weekly(_:);
              }

              else
              {
                if (v80 != enum case for DateTime.TimeUnit.year(_:))
                {
                  v118 = v0[34];
                  v119 = v0[31];
                  v120 = v0[32];
                  v121 = v0[28];
                  v122 = v0[29];
                  v123 = v0[27];
                  v152 = v0[2];
                  v154 = v0[33];

                  (*(v121 + 8))(v122, v123);
                  v124 = *(v120 + 8);
                  v125 = OUTLINED_FUNCTION_51_4();
                  v124(v125);
                  type metadata accessor for Calendar.RecurrenceRule();
                  OUTLINED_FUNCTION_37_2();
                  __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
                  (v124)(v154, v119);
                  goto LABEL_14;
                }

                v81 = &enum case for Calendar.RecurrenceRule.Frequency.yearly(_:);
              }
            }
          }
        }

        v82 = OUTLINED_FUNCTION_65_2(v81);
        v83(v82);
        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v16 = v0[35];
  v17 = &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd;
  v18 = &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR;
LABEL_11:
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, v17, v18);
LABEL_12:
  v25 = v0[2];
  type metadata accessor for Calendar.RecurrenceRule();
  v26 = OUTLINED_FUNCTION_55_2();
LABEL_13:
  __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
LABEL_14:
  v30 = v0[35];
  v29 = v0[36];
  v32 = v0[33];
  v31 = v0[34];
  v34 = v0[29];
  v33 = v0[30];
  v35 = v0[25];
  v36 = v0[26];
  v37 = v0[24];
  v38 = v0[21];
  v143 = v0[20];
  v145 = v0[17];
  v147 = v0[14];
  v148 = v0[13];
  v149 = v0[10];
  v150 = v0[9];
  v153 = v0[6];

  OUTLINED_FUNCTION_6_0();

  v39();
}

uint64_t static InputUtils.getPlacemark(from:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[4] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v0[5] = v6;
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getPlacemark");
    OUTLINED_FUNCTION_15_1();
  }

  v8 = v0[2];

  v0[7] = static InputUtils.getPlacemarkQueryText(_:)();
  v0[8] = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_64_2(v10);

    return static InputUtils.getPlacemarkQueryLatLong()();
  }

  else
  {
    v12 = v0[6];
    v13 = v0[3];

    OUTLINED_FUNCTION_6_6();

    return v14(0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  if (!v1)
  {
    v10 = *(v0 + 64);

    goto LABEL_7;
  }

  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  [*(v0 + 80) lat];
  [v1 lng];
  OUTLINED_FUNCTION_57_5();

  v6 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v6, v7, v4);
  if (v8)
  {
    v9 = *(v0 + 24);

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = *(v0 + 40);
  (*(v11 + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
  v12 = static InputUtils.getPlacemark(_:)();

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_20_1();
  v15(v14);
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = *(v0 + 48);
  v17 = *(v0 + 24);

  OUTLINED_FUNCTION_6_6();

  return v18(v12);
}

uint64_t static InputUtils.getPlaceDescriptor(from:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v0[5] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[6] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v0[7] = v10;
  v12 = *(v11 + 64);
  v0[8] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v5);
    OUTLINED_FUNCTION_26(&dword_0, v6, v7, "#InputUtils getPlaceDescriptor");
    OUTLINED_FUNCTION_15_1();
  }

  v8 = v0[3];

  v0[9] = static InputUtils.getPlacemarkQueryText(_:)();
  v0[10] = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_64_2(v10);

    return static InputUtils.getPlacemarkQueryLatLong()();
  }

  else
  {
    type metadata accessor for PlaceDescriptor();
    v12 = v0[8];
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);

    OUTLINED_FUNCTION_6_0();

    return v20();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  if (!v1)
  {
    v13 = *(v0 + 80);

LABEL_12:
    v20 = type metadata accessor for PlaceDescriptor();
    v25 = 1;
    goto LABEL_13;
  }

  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  [*(v0 + 96) lat];
  [v1 lng];
  OUTLINED_FUNCTION_57_5();

  v6 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v6, v7, v4);
  if (v8)
  {
    v9 = *(v0 + 40);

    v10 = &_s13SiriInference14RecommendationOyAA8LocationVGSgMd;
    v11 = &_s13SiriInference14RecommendationOyAA8LocationVGSgMR;
    v12 = v9;
LABEL_11:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, v10, v11);
    goto LABEL_12;
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  if (static InputUtils.getPlacemark(_:)())
  {
    v14 = *(v0 + 32);
    PlaceDescriptor.init(placemark:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = *(v0 + 32);
  v20 = type metadata accessor for PlaceDescriptor();
  __swift_storeEnumTagSinglePayload(v19, v15, 1, v20);

  v21 = OUTLINED_FUNCTION_50_3();
  v22(v21, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v24 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {
    v10 = &_s10GeoToolbox15PlaceDescriptorVSgMd;
    v11 = &_s10GeoToolbox15PlaceDescriptorVSgMR;
    v12 = *(v0 + 32);
    goto LABEL_11;
  }

  (*(*(v20 - 8) + 32))(*(v0 + 16), *(v0 + 32), v20);
  v25 = 0;
LABEL_13:
  v26 = *(v0 + 64);
  v28 = *(v0 + 32);
  v27 = *(v0 + 40);
  __swift_storeEnumTagSinglePayload(*(v0 + 16), v25, 1, v20);

  OUTLINED_FUNCTION_6_0();

  return v29();
}

Class static InputUtils.getPerson(from:contactResolver:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v223 = a3;
  v229 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  v211 = &v208 - v9;
  OUTLINED_FUNCTION_22_10();
  v10 = type metadata accessor for Contact();
  v218 = OUTLINED_FUNCTION_7_1(v10);
  v219 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v218);
  OUTLINED_FUNCTION_50_0();
  v212 = v14 - v15;
  __chkstk_darwin(v16);
  v217 = &v208 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_50_0();
  v216 = (v22 - v23);
  __chkstk_darwin(v24);
  v222 = &v208 - v25;
  OUTLINED_FUNCTION_22_10();
  v26 = type metadata accessor for OSSignpostError();
  v27 = OUTLINED_FUNCTION_7_1(v26);
  v214 = v28;
  v215 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_3();
  v213 = v32 - v31;
  OUTLINED_FUNCTION_22_10();
  v33 = type metadata accessor for ContactResolverConfig();
  v34 = OUTLINED_FUNCTION_7_1(v33);
  v224 = v35;
  v225 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_3();
  v226 = v39 - v38;
  OUTLINED_FUNCTION_22_10();
  v233 = type metadata accessor for ContactQuery();
  v40 = OUTLINED_FUNCTION_7_1(v233);
  v227 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v44);
  v228 = &v208 - v45;
  OUTLINED_FUNCTION_22_10();
  v232 = type metadata accessor for OSSignpostID();
  v46 = OUTLINED_FUNCTION_7_1(v232);
  v48 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_50_0();
  v220 = v51 - v52;
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_63_4();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_44_8();
  v55 = type metadata accessor for OSSignposter();
  v56 = OUTLINED_FUNCTION_7_1(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_3();
  v63 = v62 - v61;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v64 = __swift_project_value_buffer(v55, static Signposter.voiceCommands);
  v230 = v55;
  v231 = v58;
  (*(v58 + 16))(v63, v64, v55);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v234 = v63;
  v65 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_18_1();
    v66 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v66);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v67, v68, v69, v70, v71, v72, v73, v74);
    OUTLINED_FUNCTION_15_1();
  }

  v75 = OUTLINED_FUNCTION_60_3();
  v76 = v232;
  v77(v75);
  v78 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_46_9(v78);
  swift_allocObject();
  v79 = OSSignpostIntervalState.init(id:isOpen:)();
  v81 = (v48 + 8);
  v80 = *(v48 + 8);
  v221 = v81;
  v80(v3, v76);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  v83 = __swift_project_value_buffer(v82, static Logger.voiceCommands);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  v86 = OUTLINED_FUNCTION_17_18();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v233;
  if (v88)
  {
    OUTLINED_FUNCTION_18_1();
    v90 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v90);
    _os_log_impl(&dword_0, v84, v85, "#InputUtils getPerson", v81, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (!VoiceCommandsNLIntent.voiceCommandContact.getter())
  {
    v107 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v108 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v108, v109))
    {
      OUTLINED_FUNCTION_18_1();
      v110 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v110);
      OUTLINED_FUNCTION_24_12(&dword_0, v111, v112, "#InputUtils: Did not receive valid voiceCommandContact from server");
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    (*(v231 + 8))(v234, v230);
    return 0;
  }

  v209 = v80;
  v210 = v83;
  v229 = v79;
  VoiceCommandsNLIntent.VoiceCommandContactIntentNode.toContactQuery()();

  v91 = v227;
  v92 = v228;
  v93 = *(v227 + 32);
  OUTLINED_FUNCTION_54_4();
  v94();
  v95 = a2[3];
  v96 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v95);
  v97 = v226;
  (*(v96 + 8))(v223, v95, v96);
  v98 = a2[3];
  v99 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v100 = *(v91 + 72);
  v101 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_216850;
  (*(v91 + 16))(v102 + v101, v92, v89);
  v103 = v235;
  v104 = (*(v99 + 16))(v102, v97, v98, v99);
  if (v103)
  {

    (*(v224 + 8))(v97, v225);
    v106 = *(v91 + 8);
    isa = (v91 + 8);
    v106(v92, v89);
    (*(v231 + 8))(v234, v230);
    return isa;
  }

  v113 = v104;
  v235 = 0;

  v114 = OSSignposter.logHandle.getter();
  v115 = v220;
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v116 = v213;
    checkForErrorAndConsumeState(state:)();

    v118 = v214;
    v117 = v215;
    if ((*(v214 + 88))(v116, v215) != enum case for OSSignpostError.doubleEnd(_:))
    {
      (*(v118 + 8))(v116, v117);
    }

    OUTLINED_FUNCTION_18_1();
    v119 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v119);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v120, v121, v122, v123, v124, v125, v126, v127);
    OUTLINED_FUNCTION_15_1();
  }

  v209(v115, v232);
  v128 = v222;
  specialized Collection.first.getter(v113, v222);

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v130 = OUTLINED_FUNCTION_48_8();
  if (__swift_getEnumTagSinglePayload(v130, v131, v129) == 1)
  {
LABEL_22:
    v132 = OUTLINED_FUNCTION_69_2();
    static os_log_type_t.info.getter();
    v133 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v133, v134))
    {
      OUTLINED_FUNCTION_18_1();
      v135 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v135);
      OUTLINED_FUNCTION_24_12(&dword_0, v136, v137, "#InputUtils ContactResolver could not recommend a contact");
      OUTLINED_FUNCTION_15_1();
    }

    v138 = OUTLINED_FUNCTION_28_9();
    v139(v138);
    v140 = OUTLINED_FUNCTION_29_12();
    v141(v140);
    v142 = OUTLINED_FUNCTION_15_17();
    v143(v142);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v128, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
    return 0;
  }

  v145 = v216;
  outlined init with copy of LocationProviding?(v128, v216, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  v146 = *(v129 - 8);
  v147 = v146[11];
  v148 = OUTLINED_FUNCTION_22();
  v150 = v149(v148);
  if (v150 == enum case for Recommendation.confident<A>(_:))
  {
    v151 = v146[12];
    v152 = OUTLINED_FUNCTION_22();
    v153(v152);
    (*(v219 + 32))(v217, v145, v218);
    v154 = OUTLINED_FUNCTION_69_2();
    static os_log_type_t.debug.getter();
    v155 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v155, v156))
    {
      OUTLINED_FUNCTION_18_1();
      v157 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v157);
      OUTLINED_FUNCTION_24_12(&dword_0, v158, v159, "#InputUtils ContactResolver confidently recommended a contact");
      OUTLINED_FUNCTION_15_1();
    }

LABEL_34:

    isa = Contact.toINPerson()().super.isa;

    v168 = OUTLINED_FUNCTION_62_4();
    v169(v168);
    v170 = OUTLINED_FUNCTION_28_9();
    v171(v170);
    v172 = OUTLINED_FUNCTION_29_12();
    v173(v172);
    v174 = OUTLINED_FUNCTION_15_17();
    v175(v174);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v128, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
    return isa;
  }

  if (v150 == enum case for Recommendation.needsConfirmation<A>(_:))
  {
    v160 = v146[12];
    v161 = OUTLINED_FUNCTION_22();
    v162(v161);
    (*(v219 + 32))(v212, v145, v218);
    v154 = OUTLINED_FUNCTION_69_2();
    static os_log_type_t.info.getter();
    v163 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v163, v164))
    {
      OUTLINED_FUNCTION_18_1();
      v165 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_11(v165);
      OUTLINED_FUNCTION_24_12(&dword_0, v166, v167, "#InputUtils ContactResolver call returned needsConfirmation which is unsupported, returning contact");
      OUTLINED_FUNCTION_15_1();
    }

    goto LABEL_34;
  }

  if (v150 != enum case for Recommendation.needsDisambiguation<A>(_:))
  {
    v197 = v146[1];
    v198 = OUTLINED_FUNCTION_22();
    v199(v198);
    goto LABEL_22;
  }

  v176 = v146[12];
  v177 = OUTLINED_FUNCTION_22();
  v178(v177);
  v179 = *v145;
  v180 = OUTLINED_FUNCTION_69_2();
  static os_log_type_t.info.getter();
  v181 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v181, v182))
  {
    OUTLINED_FUNCTION_18_1();
    v183 = swift_slowAlloc();
    *v183 = 0;
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v184, v185, v186, v187, v183, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  v188 = v211;
  specialized Collection.first.getter(v179, v211);

  v189 = OUTLINED_FUNCTION_55_2();
  if (__swift_getEnumTagSinglePayload(v189, v190, v218) == 1)
  {

    v191 = OUTLINED_FUNCTION_28_9();
    v192(v191);
    v193 = OUTLINED_FUNCTION_29_12();
    v194(v193);
    v195 = OUTLINED_FUNCTION_15_17();
    v196(v195);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v188, &_s13SiriInference7ContactVSgMd, &_s13SiriInference7ContactVSgMR);
    isa = 0;
  }

  else
  {
    isa = Contact.toINPerson()().super.isa;

    v200 = OUTLINED_FUNCTION_28_9();
    v201(v200);
    v202 = OUTLINED_FUNCTION_29_12();
    v203(v202);
    v204 = OUTLINED_FUNCTION_15_17();
    v205(v204);
    v206 = OUTLINED_FUNCTION_62_4();
    v207(v206);
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v128, &_s13SiriInference14RecommendationOyAA7ContactVGSgMd, &_s13SiriInference14RecommendationOyAA7ContactVGSgMR);
  return isa;
}