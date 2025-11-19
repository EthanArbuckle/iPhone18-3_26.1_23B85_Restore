uint64_t closure #1 in WFExecuteCustomIntentFlow.execute()(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WFExecuteCustomIntentFlow.execute(), 0, 0);
}

uint64_t closure #1 in WFExecuteCustomIntentFlow.execute()()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  v0[15] = v4;
  v5 = v3[16];
  v6 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v5);
  v7 = DeviceState.asSiriKitDeviceState()(v5, v6);
  v0[16] = v7;
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  v9 = *(*v4 + class metadata base offset for RunVoiceCommandCATs + 32);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = closure #1 in WFExecuteCustomIntentFlow.execute();
  v12 = v0[14];
  v13 = v0[10];

  return v15(v12, v7, v13);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[10];
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 144) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    v10 = closure #1 in WFExecuteCustomIntentFlow.execute();
  }

  else
  {
    v10 = closure #1 in WFExecuteCustomIntentFlow.execute();
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v15 = *(v0 + 88);
  v16 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_1(v5 + 13, v5[16]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v9;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_13_5();
  v12(v11);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v6 = v0[18];

  return v5();
}

uint64_t WFExecuteCustomIntentFlow.execute(completion:)()
{
  type metadata accessor for WFExecuteCustomIntentFlow();
  lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type WFExecuteCustomIntentFlow and conformance WFExecuteCustomIntentFlow, v0, type metadata accessor for WFExecuteCustomIntentFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void WFExecuteCustomIntentFlow.processDeviceUnlockResult(exitValue:)(char a1)
{
  if (*(v1 + 32) == 1)
  {
    if ((a1 & 1) == 0)
    {
      *(v1 + 32) = 2;
      return;
    }

    lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v2 = OUTLINED_FUNCTION_16_6();
    *v3 = 1;
  }

  else
  {
    lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v2 = OUTLINED_FUNCTION_16_6();
    *v4 = 0;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  v7 = *(v1 + 32);
  *(v1 + 32) = 4;

  outlined consume of WFExecuteCustomIntentFlow.State(v6, v5, v7);
}

void WFExecuteCustomIntentFlow.processCustomIntentExecutionResult(executionResult:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  OUTLINED_FUNCTION_13_1();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v11 = (&v62 - v10);
  (*(v6 + 16))(&v62 - v10, a1, v4);
  v12 = *(v6 + 88);
  v13 = OUTLINED_FUNCTION_20_4();
  v15 = v14(v13);
  if (v15 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v16 = *(v6 + 96);
    v17 = OUTLINED_FUNCTION_20_4();
    v18(v17);
    v19 = *v11;
    v20 = v11[1];
    v21 = v11[2];

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_15_6(v22, static Logger.voiceCommands);
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v24))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_21_6(&dword_0, v25, v26, "#WFExecuteCustomIntentFlow process execution result");
      OUTLINED_FUNCTION_15_0();
    }

    if ([v21 _intentResponseCode] != &dword_4 + 1)
    {
      v30 = *(v2 + 16);
      v31 = *(v2 + 24);
      *(v2 + 16) = v20;
      *(v2 + 24) = v21;
      v48 = *(v2 + 32);
      v49 = 3;
      goto LABEL_20;
    }

    v27 = [v21 _intentResponseCode];
    lazy protocol witness table accessor for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError();
    v28 = OUTLINED_FUNCTION_16_6();
    *v29 = v27;
    *(v29 + 8) = 0;

    v30 = *(v2 + 16);
    v31 = *(v2 + 24);
    *(v2 + 16) = v28;
LABEL_16:
    *(v2 + 24) = 0;
    v48 = *(v2 + 32);
    v49 = 4;
LABEL_20:
    *(v2 + 32) = v49;
    outlined consume of WFExecuteCustomIntentFlow.State(v30, v31, v48);
    return;
  }

  if (v15 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v32 = *(v6 + 96);
    v33 = OUTLINED_FUNCTION_20_4();
    v34(v33);
    v35 = *v11;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = type metadata accessor for Logger();
    v37 = OUTLINED_FUNCTION_15_6(v36, static Logger.voiceCommands);
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_52();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "#WFExecuteCustomIntentFlow process execution result state error", v39, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v40 = _convertErrorToNSError(_:)();
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63 = v44;
      *v43 = 134218242;
      *(v43 + 4) = [v40 code];
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v63);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_0, v41, v42, "#WFExecuteCustomIntentFlow error code %ld, error: %s", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v30 = *(v2 + 16);
    v31 = *(v2 + 24);
    *(v2 + 16) = v35;
    goto LABEL_16;
  }

  if (v15 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    v30 = OUTLINED_FUNCTION_18_6();
    goto LABEL_20;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = type metadata accessor for Logger();
  v51 = OUTLINED_FUNCTION_15_6(v50, static Logger.voiceCommands);
  v52 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v52))
  {
    v53 = OUTLINED_FUNCTION_52();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "#WFExecuteCustomIntentFlow process execution result state cancelled", v53, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  v54 = OUTLINED_FUNCTION_16_6();
  *v55 = 0;
  v57 = *(v2 + 16);
  v56 = *(v2 + 24);
  *(v2 + 16) = v54;
  *(v2 + 24) = 0;
  v58 = *(v2 + 32);
  *(v2 + 32) = 4;
  outlined consume of WFExecuteCustomIntentFlow.State(v57, v56, v58);
  v59 = *(v6 + 8);
  v60 = OUTLINED_FUNCTION_20_4();
  v61(v60);
}

void WFExecuteCustomIntentFlow.processParityRequestExecutionResult(flowResult:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    if (a3 == 1)
    {
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = type metadata accessor for Logger();
      v7 = OUTLINED_FUNCTION_15_6(v6, static Logger.voiceCommands);
      v8 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v8))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_21_6(&dword_0, v9, v10, "#WFExecuteCustomIntentFlow cannot create executionResult for parity intents.");
        OUTLINED_FUNCTION_15_0();
      }

      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      *(v4 + 16) = a1;
      *(v4 + 24) = 0;
      v13 = *(v4 + 32);
      v14 = 4;
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v24 = type metadata accessor for Logger();
      v25 = OUTLINED_FUNCTION_15_6(v24, static Logger.voiceCommands);
      v26 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v26))
      {
        v27 = OUTLINED_FUNCTION_52();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "#WFExecuteCustomIntentFlow parity intent is cancelled.", v27, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      v11 = OUTLINED_FUNCTION_18_6();
    }

    *(v4 + 32) = v14;

    outlined consume of WFExecuteCustomIntentFlow.State(v11, v12, v13);
  }

  else
  {
    v16 = *(v4 + 16);
    v17 = *(v4 + 24);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v18 = *(v4 + 32);
    *(v4 + 32) = 3;
    v19 = a1;
    v20 = a2;
    outlined consume of WFExecuteCustomIntentFlow.State(v16, v17, v18);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6();
    }

    (*(*static WFDialogState.shared + 224))(0);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = type metadata accessor for Logger();
    oslog = OUTLINED_FUNCTION_15_6(v21, static Logger.voiceCommands);
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = OUTLINED_FUNCTION_52();
      *v23 = 0;
      _os_log_impl(&dword_0, oslog, v22, "#WFExecuteCustomIntentFlow created executionResult for parity intents successfully.", v23, 2u);
      OUTLINED_FUNCTION_15_0();
    }
  }
}

uint64_t WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:), 0, 0);
}

uint64_t WFExecuteCustomIntentFlow.handoffToCompanionDevice(continuityId:)()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  outlined init with copy of DeviceState(v2 + 64, v0 + 16);
  outlined init with copy of DeviceState(v2 + 104, v0 + 56);
  type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy();
  v3 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync((v0 + 16), v3 + 56);
  outlined init with take of AceServiceInvokerAsync((v0 + 56), v3 + 16);
  outlined init with copy of DeviceState(v2 + 104, v0 + 16);
  outlined init with copy of DeviceState(v2 + 184, v0 + 56);
  *(v0 + 96) = v3;
  v4 = type metadata accessor for HandoffSessionToCompanionFlowAsync();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(&lazy protocol witness table cache variable for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy, 255, type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy);

  v7 = HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)();
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v10 = *(v2 + 32);
  *(v2 + 32) = 5;
  outlined consume of WFExecuteCustomIntentFlow.State(v8, v9, v10);
  *(v0 + 16) = v7;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t WFExecuteCustomIntentFlow.shouldRequestUserToUnlockDeviceBeforeRunningCustomIntent(intent:)()
{
  if (INIntent.requiresDeviceToBeUnlocked()())
  {
    v1 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
    v2 = dispatch thunk of DeviceState.isHomePod.getter() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t WFExecuteCustomIntentFlow.deinit()
{
  outlined consume of WFExecuteCustomIntentFlow.State(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  v2 = *(v0 + 280);

  return v0;
}

uint64_t WFExecuteCustomIntentFlow.__deallocating_deinit()
{
  WFExecuteCustomIntentFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance WFExecuteCustomIntentFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFExecuteCustomIntentFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 192))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INSendMessageIntent.attachments.getter(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INSendMessageAttachment();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a3;
  v50 = a2;
  v51 = a10;
  v55[3] = a13;
  v55[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a9, a13);
  v52 = a5;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  outlined init with copy of DeviceState(v21, a12 + 104);
  outlined init with copy of DeviceState(v22, a12 + 144);
  outlined init with copy of DeviceState(a7, a12 + 184);
  v24 = v50;
  *(a12 + 40) = a1;
  *(a12 + 48) = v24;
  *(a12 + 56) = v53;
  v53 = a4;
  outlined init with copy of DeviceState(a4, a12 + 64);
  *(a12 + 224) = a8;
  outlined init with copy of DeviceState(v55, a12 + 232);
  *(a12 + 272) = v51;
  *(a12 + 280) = a11;
  v25 = one-time initialization token for voiceCommands;
  v26 = a1;
  v51 = a8;

  if (v25 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_0, v29, v30, "#WFExecuteCustomIntentFlow intent: %@", v31, 0xCu);
    outlined destroy of String?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v34 = [*(a12 + 40) _metadata];
  if (v34)
  {
    v35 = v34;
    outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v34);
    if (v36)
    {
      v49[5] = a11;
      v50 = v22;
      v37 = [v28 typeName];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v54[0] = v38;
      v54[1] = v40;
      __chkstk_darwin(v41);
      v49[2] = v54;
      LOBYTE(v37) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v49, &outlined read-only object #0 of one-time initialization function for parityIntentsList);

      if ((v37 & 1) == 0)
      {
        [v35 setExecutionContext:2];
      }

      [v28 _setMetadata:v35];
      type metadata accessor for App();
      v42 = App.__allocating_init(appIdentifier:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v43 = 0;
      goto LABEL_14;
    }
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "#WFExecuteCustomIntentFlow error state because metadata or bundleid is nil", v46, 2u);
  }

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  v42 = swift_allocError();
  *v47 = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v28 = 0;
  v43 = 4;
LABEL_14:
  *(a12 + 16) = v42;
  *(a12 + 24) = v28;
  *(a12 + 32) = v43;
  return a12;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

void outlined consume of WFExecuteCustomIntentFlow.State(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      v3 = a2;

      goto LABEL_7;
    case 3:
      v3 = a2;

LABEL_7:

      break;
    case 4:

      break;
    default:
      return;
  }
}

uint64_t sub_45920()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ParityFlowExecutionResult) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

id outlined copy of WFExecuteCustomIntentFlow.State(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      v4 = a2;

      goto LABEL_7;
    case 3:
      v4 = result;
      v3 = a2;
LABEL_7:

      result = v4;
      break;
    case 4:

      result = swift_errorRetain();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned GuardFlowResult) -> ()(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in WFExecuteCustomIntentFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in WFExecuteCustomIntentFlow.execute()(v3, v0);
}

unint64_t lazy protocol witness table accessor for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError()
{
  result = lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError;
  if (!lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFExecuteCustomIntentError and conformance WFExecuteCustomIntentError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin27CustomIntentExecutionResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentExecutionResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for CustomIntentExecutionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for CustomIntentExecutionResult(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFExecuteCustomIntentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFExecuteCustomIntentError(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for WFExecuteCustomIntentError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for WFExecuteCustomIntentError(uint64_t result, int a2)
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin021WFExecuteCustomIntentC0C5State33_4CBE3C012460CCC628CB6B85AAA07635LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for WFExecuteCustomIntentFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t storeEnumTagSinglePayload for WFExecuteCustomIntentFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t destructiveInjectEnumTag for WFExecuteCustomIntentFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t lazy protocol witness table accessor for type CustomIntentExecutionFlow and conformance CustomIntentExecutionFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t type metadata accessor for INSendMessageAttachment()
{
  result = lazy cache variable for type metadata for INSendMessageAttachment;
  if (!lazy cache variable for type metadata for INSendMessageAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INSendMessageAttachment);
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

void OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 96) = a7;
  *(v8 - 88) = a8;
  *(v8 - 112) = a5;
  *(v8 - 104) = a6;
  *(v8 - 120) = a4;
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *(v17 - 120);
  v20 = *(v17 - 112);
  v21 = *(v17 - 104);
  v22 = *(v17 - 96);
  v23 = *(v17 - 88);

  return specialized WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)(v16, v15, v14, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *SiriLinkFlowPlugin.__allocating_init()()
{
  v0 = type metadata accessor for CATOption();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  OUTLINED_FUNCTION_3();
  v27 = type metadata accessor for DateTimeResolver();
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v26 = type metadata accessor for AppInstallInfoProvider();
  v25 = swift_allocObject();
  static Device.current.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  v23 = type metadata accessor for LocationProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(&v28, v10 + 24);
  DateTimeResolver.init()();
  v22 = type metadata accessor for VoiceShortcutClientWrapper();
  v21 = swift_allocObject();
  type metadata accessor for AutoShortcutCATs();
  static CATOption.defaultMode.getter();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for LinkMetadataProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  v14 = type metadata accessor for AutoShortcutProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  v16 = [objc_opt_self() sharedPreferences];
  v17 = swift_allocObject();
  v17[7] = v26;
  v17[8] = &protocol witness table for AppInstallInfoProvider;
  v17[4] = v25;
  v17[27] = v23;
  v17[28] = &protocol witness table for LocationProvider;
  v17[24] = v10;
  v17[32] = v27;
  v17[33] = &protocol witness table for DateTimeResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17 + 29);
  (*(v3 + 16))(boxed_opaque_existential_1, v9, v27);
  v17[37] = v22;
  v17[38] = &protocol witness table for VoiceShortcutClientWrapper;
  v17[34] = v21;
  v17[43] = v11;
  v17[44] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v17[40] = v20;
  v17[48] = v12;
  v17[49] = &protocol witness table for LinkMetadataProvider;
  v17[45] = v13;
  v17[53] = v14;
  v17[54] = &protocol witness table for AutoShortcutProvider;
  v17[50] = v15;
  (*(v3 + 8))(v9, v27);
  v17[2] = 0xD000000000000030;
  v17[3] = 0x800000000022F760;
  outlined init with take of AceServiceInvokerAsync(v31, (v17 + 9));
  outlined init with take of AceServiceInvokerAsync(&v30, (v17 + 14));
  outlined init with take of AceServiceInvokerAsync(&v29, (v17 + 19));
  v17[39] = v24;
  v17[55] = v16;
  return v17;
}

uint64_t SiriLinkFlowPlugin.__allocating_init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a1[3];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  OUTLINED_FUNCTION_13_1();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v74 = v21 - v20;
  (*(v22 + 16))();
  v75 = a5;
  v72 = *(a5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a5, *(a5 + 24));
  OUTLINED_FUNCTION_13_1();
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  v71 = v27 - v26;
  (*(v28 + 16))();
  v73 = a6;
  v29 = *(a6 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(a6, v29);
  OUTLINED_FUNCTION_13_1();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  v70 = v34 - v33;
  (*(v35 + 16))();
  v69 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_1(a7, a7[3]);
  OUTLINED_FUNCTION_13_1();
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  v41 = v40 - v39;
  (*(v42 + 16))(v40 - v39);
  v68 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, a9[3]);
  OUTLINED_FUNCTION_13_1();
  v44 = *(v43 + 64);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v48 = v47 - v46;
  (*(v49 + 16))(v47 - v46);
  v50 = a10[3];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v50);
  OUTLINED_FUNCTION_13_1();
  v52 = *(v51 + 64);
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_3();
  v56 = v55 - v54;
  (*(v57 + 16))(v55 - v54);
  v58 = a11[4];
  __swift_mutable_project_boxed_opaque_existential_1(a11, a11[3]);
  OUTLINED_FUNCTION_13_1();
  v60 = *(v59 + 64);
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_3();
  v64 = v63 - v62;
  (*(v65 + 16))(v63 - v62);
  v66 = a13(v74, a2, a3, a4, v71, v70, v41, a8, v48, v56, v64, a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v66;
}

uint64_t SiriLinkFlowPlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C12SearchResultVSgMd, &_s11SiriKitFlow0C12SearchResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  SiriLinkFlowPlugin.makeFlowFlowSearchResult(parse:)(a1, &v10 - v6);
  v8 = type metadata accessor for FlowSearchResult();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  outlined destroy of Any?(v7, &_s11SiriKitFlow0C12SearchResultVSgMd, &_s11SiriKitFlow0C12SearchResultVSgMR);
  return static FlowSearchResult.noFlow.getter();
}

uint64_t SiriLinkFlowPlugin.makeFlowFlowSearchResult(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a1;
  v100 = a2;
  v3 = type metadata accessor for LinkParse();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  __chkstk_darwin(v3);
  v89 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for USOParse();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  __chkstk_darwin(v6);
  v92 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NLIntent();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  __chkstk_darwin(v9);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse.DirectInvocation();
  v95 = *(v13 - 8);
  v14 = *(v95 + 64);
  __chkstk_darwin(v13);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Parse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v88 = v87 - v24;
  __chkstk_darwin(v23);
  v99 = v87 - v25;
  v26 = v2[7];
  v27 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v26);
  if ((*(v27 + 8))(v26, v27))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v87[1] = __swift_project_value_buffer(v28, static Logger.voiceCommands);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#SiriLinkFlowPlugin has Shortcuts app installed", v31, 2u);
    }

    v32 = *(v18 + 16);
    v33 = v99;
    v32(v99, v98, v17);
    v34 = (*(v18 + 88))(v33, v17);
    if (v34 == enum case for Parse.NLv3IntentOnly(_:))
    {
      (*(v18 + 96))(v33, v17);
      v36 = v96;
      v35 = v97;
      (*(v96 + 32))(v12, v33, v97);
      if (SiriLinkFlowPlugin.makeFlowFor(nlv3Intent:)(v12))
      {
        v37 = v100;
        static FlowSearchResult.flow(_:)();

        (*(v36 + 8))(v12, v35);
        v38 = type metadata accessor for FlowSearchResult();
        v39 = v37;
LABEL_9:
        v40 = 0;
        return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
      }

      (*(v36 + 8))(v12, v35);
      goto LABEL_25;
    }

    if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v18 + 96))(v33, v17);
      v48 = *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v49 = Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v53 = os_log_type_enabled(v51, v52);
      if (v50)
      {
        if (v53)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v101 = v55;
          *v54 = 136315138;
          v56 = [v49 debugDescription];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v101);

          *(v54 + 4) = v60;
          v61 = "INListShortcutsIntent is deprecated: %s";
LABEL_31:
          _os_log_impl(&dword_0, v51, v52, v61, v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);

LABEL_33:
          v72 = v96;
          v73 = type metadata accessor for FlowSearchResult();
          __swift_storeEnumTagSinglePayload(v100, 1, 1, v73);
          return (*(v72 + 8))(v99, v97);
        }
      }

      else if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v101 = v55;
        *v54 = 136315138;
        v67 = [v49 debugDescription];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v101);

        *(v54 + 4) = v71;
        v61 = "Support for intent not yet implemented: %s";
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (v34 == enum case for Parse.directInvocation(_:))
    {
      (*(v18 + 96))(v33, v17);
      v62 = v95;
      (*(v95 + 32))(v16, v33, v13);
      if (SiriLinkFlowPlugin.makeFlowFor(directInvocation:)(v16))
      {
        v63 = v100;
        static FlowSearchResult.flow(_:)();

        (*(v62 + 8))(v16, v13);
        v38 = type metadata accessor for FlowSearchResult();
        v39 = v63;
        goto LABEL_9;
      }

      (*(v62 + 8))(v16, v13);
LABEL_25:
      v38 = type metadata accessor for FlowSearchResult();
      v39 = v100;
      v40 = 1;
      return __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
    }

    if (v34 == enum case for Parse.uso(_:))
    {
      (*(v18 + 96))(v33, v17);
      v65 = v92;
      v64 = v93;
      v66 = v94;
      (*(v93 + 32))(v92, v33, v94);
      SiriLinkFlowPlugin.makeFlowFor(usoParse:)(v65, v100);
      return (*(v64 + 8))(v65, v66);
    }

    if (v34 == enum case for Parse.link(_:))
    {
      (*(v18 + 96))(v33, v17);
      v65 = v89;
      v64 = v90;
      v66 = v91;
      (*(v90 + 32))(v89, v33, v91);
      v74 = v92;
      LinkParse.usoParse.getter();
      SiriLinkFlowPlugin.makeFlowFor(usoParse:)(v74, v100);
      (*(v93 + 8))(v74, v94);
      return (*(v64 + 8))(v65, v66);
    }

    v75 = v88;
    v32(v88, v98, v17);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v101 = v79;
      *v78 = 136315138;
      v32(v22, v75, v17);
      v80 = String.init<A>(describing:)();
      v81 = v75;
      v83 = v82;
      v84 = *(v18 + 8);
      v84(v81, v17);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v83, &v101);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_0, v76, v77, "Unhandled Parse type: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {

      v84 = *(v18 + 8);
      v84(v75, v17);
    }

    v86 = type metadata accessor for FlowSearchResult();
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v86);
    return (v84)(v99, v17);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "User does not have Shortcuts app installed", v44, 2u);
    }

    v45 = type metadata accessor for FlowSearchResult();
    v46 = v100;

    return __swift_storeEnumTagSinglePayload(v46, 1, 1, v45);
  }
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(directInvocation:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v112 = *(v4 - 8);
  v5 = v112[8];
  v6 = __chkstk_darwin(v4);
  v111 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v102 - v8;
  v110 = type metadata accessor for AutoShortcutInvocation();
  v10 = *(*(v110 - 1) + 64);
  __chkstk_darwin(v110);
  v12 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CATOption();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003BLL && 0x8000000000230BC0 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v18 = Parse.DirectInvocation.userData.getter();
  if (v18)
  {
    static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(v18, &v130);

    v19 = v131;
    if (v131)
    {
      v20 = v132;
      if (!*(&v130 + 1))
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Logger.voiceCommands);
        v77 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_0, v77, v86, "Cannot get workflowName from the done button", v87, 2u);
        }

        else
        {
        }

        goto LABEL_61;
      }

      v110 = v133;
      v111 = v132;
      v112 = v131;
      v135 = v130;
      v139 = 0;
      memset(__src, 0, 40);
      outlined init with copy of DeviceState((v1 + 14), v129);
      outlined init with copy of DeviceState((v1 + 9), v128);
      outlined init with copy of DeviceState((v1 + 19), v113);
      outlined init with copy of DeviceState((v1 + 24), &v125);
      outlined init with copy of DeviceState((v1 + 29), v122);
      v21 = one-time initialization token for shared;

      if (v21 != -1)
      {
        swift_once();
      }

      v109 = static WFDialogState.shared;
      type metadata accessor for RunCustomIntentCATs();

      static CATOption.defaultMode.getter();
      v108 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATs();
      static CATOption.defaultMode.getter();
      v107 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple();
      static CATOption.defaultMode.getter();
      v105 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      v103 = CATWrapper.__allocating_init(options:globals:)();
      v106 = type metadata accessor for WorkflowRunnerFlow(0);
      v22 = objc_allocWithZone(v106);
      v24 = *(&v126 + 1);
      v23 = v127;
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      v104 = &v102;
      v26 = *(*(v24 - 8) + 64);
      __chkstk_darwin(v25);
      v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      v31 = v123;
      v30 = v124;
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
      v33 = *(*(v31 - 8) + 64);
      __chkstk_darwin(v32);
      v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(&v135, __src, v109, v129, v128, v113, v108, v107, v105, v103, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v28, v99, v35, v100, v22, &type metadata for DefaultLinkHandlingFlowFactory, v24, v31, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v23, v30, &protocol witness table for DefaultTCCTemplatesCATWrapper, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      __swift_destroy_boxed_opaque_existential_1Tm(&v125);
      *&__src[0] = v38;
      lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow);
      v39 = Flow.eraseToAnyFlow()();

      return v39;
    }
  }

LABEL_14:
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x8000000000230C00 == v40)
  {
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v43 = Parse.DirectInvocation.userData.getter();
  if (v43)
  {
    v44 = v43;
    type metadata accessor for InstallVoiceShortcutInvocationData();
    InstallVoiceShortcutInvocationData.__allocating_init(invocationData:)(v44);
    outlined init with copy of DeviceState((v2 + 9), &v135);
    outlined init with copy of DeviceState((v2 + 14), __src);
    outlined init with copy of DeviceState((v2 + 34), v129);
    outlined init with copy of DeviceState((v2 + 19), v128);
    outlined init with copy of DeviceState((v2 + 24), v113);
    outlined init with copy of DeviceState((v2 + 29), &v125);
    type metadata accessor for InstallVoiceShortcutFlow();
    swift_allocObject();

    InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
    *&v135 = v45;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, 255, type metadata accessor for InstallVoiceShortcutFlow);
    v39 = Flow.eraseToAnyFlow()();

    return v39;
  }

LABEL_23:
  v109 = v4;
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000004BLL && 0x8000000000230C50 == v46)
  {

LABEL_30:
    v49 = Parse.DirectInvocation.userData.getter();
    if (v49)
    {
      v50 = v49;
      v108 = v12;
      v51 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
      if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
      {
        v88 = type metadata accessor for AutoShortcutProvider();
        v89 = swift_allocObject();
        v90 = objc_allocWithZone(LNAutoShortcutsProvider);

        *(v89 + 16) = [v90 init];
        *(&v136 + 1) = v88;
        *&v137 = &protocol witness table for AutoShortcutProvider;
        *&v135 = v89;
        v91 = [objc_opt_self() sharedPreferences];
        v92 = v108;
        AutoShortcutInvocation.init(directInvocationData:provider:preferences:)(v50, &v135, v91, v108);

        outlined init with copy of DeviceState((v2 + 14), &v135);
        outlined init with copy of DeviceState((v2 + 19), __src);
        outlined init with copy of DeviceState((v2 + 34), v129);
        outlined init with copy of DeviceState((v2 + 45), v128);
        outlined init with copy of DeviceState((v2 + 9), v113);
        type metadata accessor for AutoShortcutFlow();
        v97 = swift_allocObject();
        *(v97 + 40) = v110;
        *(v97 + 48) = &protocol witness table for AutoShortcutInvocation;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v97 + 16));
        outlined init with copy of AutoShortcutInvocation(v92, boxed_opaque_existential_1, type metadata accessor for AutoShortcutInvocation);
        outlined init with take of AceServiceInvokerAsync(&v135, v97 + 56);
        outlined init with take of AceServiceInvokerAsync(__src, v97 + 136);
        outlined init with take of AceServiceInvokerAsync(v129, v97 + 176);
        outlined init with take of AceServiceInvokerAsync(v128, v97 + 216);
        outlined init with take of AceServiceInvokerAsync(v113, v97 + 96);
        *(v97 + 272) = 0;
        *(v97 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
        *(v97 + 264) = 0;
        *&v135 = v97;
        lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow);
        v39 = Flow.eraseToAnyFlow()();

        outlined destroy of AutoShortcutInvocation(v92, type metadata accessor for AutoShortcutInvocation);
        return v39;
      }
    }

    goto LABEL_33;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_30;
  }

LABEL_33:
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003FLL && 0x8000000000230CA0 == v52)
  {

    v55 = v109;
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v55 = v109;
    if ((v54 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v56 = Parse.DirectInvocation.userData.getter();
  if (!v56)
  {
LABEL_45:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.voiceCommands);
    v75 = v112;
    v76 = v112[2];
    v76(v9, a1, v55);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v77, v78))
    {

      (v75[1])(v9, v55);
      return 0;
    }

    v79 = v75;
    v80 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v135 = v110;
    *v80 = 136315138;
    v76(v111, v9, v55);
    v81 = String.init<A>(describing:)();
    v83 = v82;
    (v79[1])(v9, v55);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v135);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_0, v77, v78, "Unhandled direct invocation type: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);

    goto LABEL_60;
  }

  static WFPausedShortcutConverter.toSiriWorkflowInput(userData:)(v56, __src);
  memcpy(v129, __src, 0x41uLL);

  if (LOBYTE(__src[4]) == 255)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.voiceCommands);
    v77 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v77, v94))
    {
      goto LABEL_61;
    }

    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_0, v77, v94, "Cannot parse WFPausedShortcutData from userData, returning nil...", v95, 2u);
LABEL_60:

LABEL_61:

    return 0;
  }

  v135 = __src[0];
  v136 = __src[1];
  v137 = __src[2];
  v138 = __src[3];
  v139 = __src[4];
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  outlined init with copy of DeviceState((v1 + 14), v122);
  outlined init with copy of DeviceState((v1 + 9), v121);
  outlined init with copy of DeviceState((v1 + 19), v120);
  outlined init with copy of DeviceState((v1 + 24), v117);
  outlined init with copy of DeviceState((v1 + 29), v114);
  memcpy(v128, v129, 0x41uLL);
  outlined init with copy of SiriWorkflowRunnerInput(v128, v113);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v112 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  v111 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v110 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v109 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v107 = CATWrapper.__allocating_init(options:globals:)();
  v57 = objc_allocWithZone(type metadata accessor for WorkflowRunnerFlow(0));
  v59 = v118;
  v58 = v119;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  v108 = &v102;
  v61 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v60);
  v63 = &v102 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v63);
  v66 = v115;
  v65 = v116;
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  v68 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = &v102 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(&v135, &v125, v112, v122, v121, v120, v111, v110, v109, v107, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v63, v99, v70, v100, v57, &type metadata for DefaultLinkHandlingFlowFactory, v59, v66, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v58, v65, &protocol witness table for DefaultTCCTemplatesCATWrapper, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
  v73 = v72;
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  *&v113[0] = v73;
  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow);
  v39 = Flow.eraseToAnyFlow()();
  outlined destroy of Any?(__src, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMR);

  return v39;
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(nlv3Intent:)(uint64_t a1)
{
  v3 = type metadata accessor for CATOption();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for VoiceCommandsNLIntent(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NLIntent();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (LOBYTE(v21[0]) == 3)
  {
    outlined init with copy of DeviceState(v1 + 72, v21);
    outlined init with copy of DeviceState(v1 + 112, v20);
    type metadata accessor for ListShortcutsCATs();
    static CATOption.defaultMode.getter();
    v10 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for ListShortcutsFlow();
    swift_allocObject();
    v21[0] = ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(v21, v20, v10);
    v11 = &lazy protocol witness table cache variable for type ListShortcutsFlow and conformance ListShortcutsFlow;
    v12 = type metadata accessor for ListShortcutsFlow;
  }

  else
  {
    outlined init with copy of DeviceState(v1 + 72, v21);
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v13 = static VoiceCommandsAppPolicyHandler.instance;
    v14 = type metadata accessor for WFRunVoiceShortcutFlow(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();

    v21[0] = specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(v21, v13, v17);
    v11 = &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow;
    v12 = type metadata accessor for WFRunVoiceShortcutFlow;
  }

  lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(v11, 255, v12);
  v18 = Flow.eraseToAnyFlow()();

  outlined destroy of AutoShortcutInvocation(v8, type metadata accessor for VoiceCommandsNLIntent);
  return v18;
}

uint64_t SiriLinkFlowPlugin.makeFlowFor(usoParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v209 = a2;
  v210 = type metadata accessor for USOParse();
  v3 = *(v210 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v210);
  v208 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v196 = &v185 - v7;
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v189 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin026AutoShortcutsSetEnablementC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin026AutoShortcutsSetEnablementC0C_Qo_MR);
  v191 = *(v11 - 8);
  v192 = v11;
  v12 = *(v191 + 64);
  __chkstk_darwin(v11);
  v190 = &v185 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin018WFRunVoiceShortcutC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0a4LinkC6Plugin018WFRunVoiceShortcutC0C_Qo_MR);
  v187 = *(v14 - 8);
  v188 = v14;
  v15 = *(v187 + 64);
  __chkstk_darwin(v14);
  v186 = &v185 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v198 = &v185 - v19;
  v199 = type metadata accessor for VoiceCommandTask(0);
  v20 = *(*(v199 - 8) + 64);
  v21 = __chkstk_darwin(v199);
  v193 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v195 = &v185 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v203 = &v185 - v26;
  v204 = type metadata accessor for AutoShortcutInvocation();
  v27 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v194 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Siri_Nlu_External_UserParse();
  v202 = *(v29 - 8);
  v30 = *(v202 + 64);
  __chkstk_darwin(v29);
  v32 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v197 = &v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v201 = &v185 - v38;
  v39 = __chkstk_darwin(v37);
  v200 = &v185 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v185 - v42;
  __chkstk_darwin(v41);
  v206 = &v185 - v44;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v45 = *(*(v207 - 8) + 64);
  v46 = __chkstk_darwin(v207);
  v47 = __chkstk_darwin(v46);
  v49 = &v185 - v48;
  __chkstk_darwin(v47);
  v51 = &v185 - v50;
  v52 = a1;
  USOParse.parserIdentifier.getter();
  v53 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  if (__swift_getEnumTagSinglePayload(v51, 1, v53) == 1)
  {
    goto LABEL_15;
  }

  v185 = v3;
  outlined init with copy of UUID?(v51, v49, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v54 = *(v53 - 8);
  v55 = (*(v54 + 88))(v49, v53);
  if (v55 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.overrides(_:) && v55 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.nlv4(_:) && v55 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.shortcutsExact(_:) && v55 != enum case for Siri_Nlu_External_Parser.ParserIdentifier.ssu(_:))
  {
    (*(v54 + 8))(v49, v53);
    v3 = v185;
LABEL_15:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.voiceCommands);
    v64 = v208;
    v65 = v210;
    (*(v3 + 16))(v208, v52, v210);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v64;
      v70 = swift_slowAlloc();
      *&__dst[0] = v70;
      *v68 = 136315138;
      USOParse.parserIdentifier.getter();
      v71 = String.init<A>(describing:)();
      v73 = v72;
      (*(v3 + 8))(v69, v210);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, __dst);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_0, v66, v67, "SiriLinkFlow plugin received NL parse from a parser it does not support: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

    else
    {

      (*(v3 + 8))(v64, v65);
    }

    v75 = v209;
    v76 = type metadata accessor for FlowSearchResult();
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v76);
    return outlined destroy of Any?(v51, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  }

  outlined destroy of Any?(v51, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  USOParse.userParse.getter();
  v59 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v202 + 8))(v32, v29);
  v60 = v206;
  specialized Collection.first.getter(v59, v206);

  outlined init with copy of UUID?(v60, v43, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v61 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v43, 1, v61) == 1)
  {
    outlined destroy of Any?(v43, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v62 = v203;
    __swift_storeEnumTagSinglePayload(v203, 1, 1, v204);
LABEL_22:
    outlined destroy of Any?(v62, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
    v79 = v205;
    goto LABEL_23;
  }

  USOParse.groupIndex.getter();
  v62 = v203;
  Siri_Nlu_External_UserDialogAct.extractAutoShortcutInvocation(groupIndex:)();
  (*(*(v61 - 8) + 8))(v43, v61);
  v78 = v204;
  if (__swift_getEnumTagSinglePayload(v62, 1, v204) == 1)
  {
    goto LABEL_22;
  }

  v95 = v194;
  outlined init with take of VoiceCommandTask(v62, v194, type metadata accessor for AutoShortcutInvocation);
  v79 = v205;
  v96 = v205[13];
  __swift_project_boxed_opaque_existential_1(v205 + 9, v205[12]);
  if ((dispatch thunk of DeviceState.isMac.getter() & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    __swift_project_value_buffer(v154, static Logger.voiceCommands);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.debug.getter();
    v157 = os_log_type_enabled(v155, v156);
    v97 = v209;
    if (v157)
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_0, v155, v156, "#SiriLinkFlowPlugin Starting AutoShortcutFlow", v158, 2u);
    }

    outlined init with copy of DeviceState((v79 + 9), __dst);
    static AceService.currentAsync.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v159 = type metadata accessor for VoiceShortcutClientWrapper();
    v160 = swift_allocObject();
    v225 = v159;
    v226 = &protocol witness table for VoiceShortcutClientWrapper;
    *&v224 = v160;
    v161 = type metadata accessor for LinkMetadataProvider();
    v162 = swift_allocObject();
    *(v162 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
    v222 = v161;
    v223 = &protocol witness table for LinkMetadataProvider;
    *&v221 = v162;
    type metadata accessor for AutoShortcutFlow();
    v163 = swift_allocObject();
    *(v163 + 40) = v78;
    *(v163 + 48) = &protocol witness table for AutoShortcutInvocation;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v163 + 16));
    outlined init with copy of AutoShortcutInvocation(v95, boxed_opaque_existential_1, type metadata accessor for AutoShortcutInvocation);
    outlined init with take of AceServiceInvokerAsync(v228, v163 + 56);
    outlined init with take of AceServiceInvokerAsync(v227, v163 + 136);
    outlined init with take of AceServiceInvokerAsync(&v224, v163 + 176);
    outlined init with take of AceServiceInvokerAsync(&v221, v163 + 216);
    outlined init with take of AceServiceInvokerAsync(__dst, v163 + 96);
    *(v163 + 272) = 0;
    *(v163 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
    *(v163 + 264) = 0;
    *&__dst[0] = v163;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    outlined destroy of AutoShortcutInvocation(v95, type metadata accessor for AutoShortcutInvocation);
LABEL_71:
    outlined destroy of Any?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v91 = type metadata accessor for FlowSearchResult();
    v92 = v97;
LABEL_72:
    v114 = 0;
    return __swift_storeEnumTagSinglePayload(v92, v114, 1, v91);
  }

  outlined destroy of AutoShortcutInvocation(v95, type metadata accessor for AutoShortcutInvocation);
LABEL_23:
  v80 = v200;
  outlined init with copy of UUID?(v60, v200, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v61);
  v82 = v201;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v80, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  }

  else
  {
    Siri_Nlu_External_UserDialogAct.convertToStarterShortcut()();
    v84 = v83;
    (*(*(v61 - 8) + 8))(v80, v61);
    if (v84)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logger.voiceCommands);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_0, v86, v87, "#SiriLinkFlowPlugin received starter shortcut", v88, 2u);
      }

      outlined init with copy of DeviceState((v79 + 9), __dst);
      outlined init with copy of DeviceState((v79 + 14), v228);
      outlined init with copy of DeviceState((v79 + 34), v227);
      outlined init with copy of DeviceState((v79 + 19), &v224);
      outlined init with copy of DeviceState((v79 + 24), &v221);
      outlined init with copy of DeviceState((v79 + 29), &v218);
      type metadata accessor for InstallVoiceShortcutFlow();
      swift_allocObject();

      InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
      *&__dst[0] = v89;
      lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, 255, type metadata accessor for InstallVoiceShortcutFlow);
      Flow.eraseToAnyFlow()();

      v90 = v209;
      static FlowSearchResult.flow(_:)();

      outlined destroy of Any?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v91 = type metadata accessor for FlowSearchResult();
      v92 = v90;
      goto LABEL_72;
    }
  }

  outlined init with copy of UUID?(v60, v82, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if (__swift_getEnumTagSinglePayload(v82, 1, v61) == 1)
  {
    outlined destroy of Any?(v82, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v93 = v198;
    __swift_storeEnumTagSinglePayload(v198, 1, 1, v199);
LABEL_34:
    outlined destroy of Any?(v93, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
    v94 = v197;
    outlined init with copy of UUID?(v60, v197, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (__swift_getEnumTagSinglePayload(v94, 1, v61) == 1)
    {
      outlined destroy of Any?(v94, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      memset(v228, 0, sizeof(v228));
LABEL_41:
      outlined destroy of Any?(v228, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMd, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMR);
      goto LABEL_42;
    }

    USOParse.groupIndex.getter();
    Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:provider:)();
    (*(*(v61 - 8) + 8))(v94, v61);
    v97 = v209;
    if (!*&v228[0])
    {
      goto LABEL_41;
    }

    memcpy(__dst, v228, sizeof(__dst));
    v98 = v79[13];
    __swift_project_boxed_opaque_existential_1(v79 + 9, v79[12]);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      outlined destroy of AppShortcutGeneralizedInvocation(__dst);
LABEL_42:
      v99 = v210;
      v100 = v185;
      v101 = v196;
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.voiceCommands);
      (*(v100 + 16))(v101, v52, v99);
      v103 = Logger.logObject.getter();
      v104 = v100;
      v105 = v101;
      v106 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&__dst[0] = v108;
        *v107 = 136315138;
        v109 = USOParse.debugDescription.getter();
        v111 = v110;
        (*(v104 + 8))(v105, v99);
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, __dst);

        *(v107 + 4) = v112;
        _os_log_impl(&dword_0, v103, v106, "Cannot find flow for the uso parse: %s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v108);

        v113 = v206;
      }

      else
      {

        (*(v100 + 8))(v105, v99);
        v113 = v60;
      }

      outlined destroy of Any?(v113, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v91 = type metadata accessor for FlowSearchResult();
      v92 = v209;
      v114 = 1;
      return __swift_storeEnumTagSinglePayload(v92, v114, 1, v91);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v179 = type metadata accessor for Logger();
    __swift_project_value_buffer(v179, static Logger.voiceCommands);
    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&dword_0, v180, v181, "#SiriLinkFlowPlugin Starting Generalized AutoShortcutFlow", v182, 2u);
    }

    outlined init with copy of DeviceState((v79 + 14), v228);
    outlined init with copy of DeviceState((v79 + 19), v227);
    outlined init with copy of DeviceState((v79 + 34), &v224);
    outlined init with copy of DeviceState((v79 + 45), &v221);
    outlined init with copy of DeviceState((v79 + 9), &v218);
    type metadata accessor for AutoShortcutFlow();
    v183 = swift_allocObject();
    *(v183 + 40) = &type metadata for AppShortcutGeneralizedInvocation;
    *(v183 + 48) = &protocol witness table for AppShortcutGeneralizedInvocation;
    v184 = swift_allocObject();
    *(v183 + 16) = v184;
    outlined init with copy of AppShortcutGeneralizedInvocation(__dst, v184 + 16);
    outlined init with take of AceServiceInvokerAsync(v228, v183 + 56);
    outlined init with take of AceServiceInvokerAsync(v227, v183 + 136);
    outlined init with take of AceServiceInvokerAsync(&v224, v183 + 176);
    outlined init with take of AceServiceInvokerAsync(&v221, v183 + 216);
    outlined init with take of AceServiceInvokerAsync(&v218, v183 + 96);
    *(v183 + 272) = 0;
    *(v183 + 256) = closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner;
    *(v183 + 264) = 0;
    *&v228[0] = v183;
    lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, 255, type metadata accessor for AutoShortcutFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    outlined destroy of AppShortcutGeneralizedInvocation(__dst);
    goto LABEL_71;
  }

  v93 = v198;
  Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()(v198);
  (*(*(v61 - 8) + 8))(v82, v61);
  if (__swift_getEnumTagSinglePayload(v93, 1, v199) == 1)
  {
    goto LABEL_34;
  }

  v115 = v195;
  outlined init with take of VoiceCommandTask(v93, v195, type metadata accessor for VoiceCommandTask);
  v116 = v193;
  outlined init with copy of AutoShortcutInvocation(v115, v193, type metadata accessor for VoiceCommandTask);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AutoShortcutInvocation(v116, type metadata accessor for VoiceCommandTask);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    __swift_project_value_buffer(v117, static Logger.voiceCommands);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_0, v118, v119, "#SiriLinkFlowPlugin Starting AutoShortcutsSetEnablementFlow", v120, 2u);
    }

    outlined init with copy of DeviceState((v79 + 9), __dst);
    outlined init with copy of DeviceState((v79 + 19), v228);
    outlined init with copy of DeviceState((v79 + 40), v227);
    v121 = v79[39];
    outlined init with copy of DeviceState((v79 + 34), &v224);
    outlined init with copy of DeviceState((v79 + 50), &v221);
    v122 = v79[55];
    type metadata accessor for AutoShortcutCATsSimple();
    v208 = v122;
    static CATOption.defaultMode.getter();
    v205 = CATWrapperSimple.__allocating_init(options:globals:)();
    v123 = type metadata accessor for AppNameResolver();
    v124 = swift_allocObject();
    v125 = type metadata accessor for UserDefaultsWrapper();
    swift_allocObject();
    v126 = UserDefaultsWrapper.init()();
    v210 = v126;
    v207 = type metadata accessor for AutoShortcutsSetEnablementFlow();
    v127 = swift_allocObject();
    v219 = v123;
    v220 = &protocol witness table for AppNameResolver;
    *&v218 = v124;
    v216 = v125;
    v217 = &protocol witness table for UserDefaultsWrapper;
    *&v215 = v126;
    type metadata accessor for WorkflowNLContextProvider();
    *(v127 + 280) = swift_allocObject();
    outlined init with copy of DeviceState(__dst, v127 + 16);
    outlined init with copy of DeviceState(v228, v127 + 56);
    outlined init with copy of DeviceState(__dst, v214);
    outlined init with copy of DeviceState(v227, v211);
    type metadata accessor for AutoShortcutDialogTemplating();
    v128 = swift_allocObject();
    v129 = v212;
    v130 = v213;
    v131 = __swift_mutable_project_boxed_opaque_existential_1(v211, v212);
    v132 = *(*(v129 - 8) + 64);
    __chkstk_darwin(v131);
    v134 = &v185 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v135 + 16))(v134);
    v136 = specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(v214, v121, v205, v134, v128, v129, v130);

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    *(v127 + 96) = v136;
    outlined init with copy of DeviceState(__dst, v214);
    outlined init with copy of DeviceState(v227, v211);
    type metadata accessor for RunLinkActionCATs();
    static CATOption.defaultMode.getter();
    v204 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATsSimple();
    static CATOption.defaultMode.getter();
    v137 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    v138 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    v139 = CATWrapperSimple.__allocating_init(options:globals:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v227);
    __swift_destroy_boxed_opaque_existential_1Tm(v228);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    type metadata accessor for LinkActionDialogTemplating();
    v140 = swift_allocObject();
    v142 = v212;
    v141 = v213;
    v143 = __swift_mutable_project_boxed_opaque_existential_1(v211, v212);
    v144 = *(*(v142 - 8) + 64);
    __chkstk_darwin(v143);
    v146 = &v185 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v147 + 16))(v146);
    v148 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v214, v204, v137, v138, v139, v146, v140, v142, v141);

    __swift_destroy_boxed_opaque_existential_1Tm(v211);
    *(v127 + 104) = v148;
    outlined init with take of AceServiceInvokerAsync(&v224, v127 + 112);
    outlined init with take of AceServiceInvokerAsync(&v221, v127 + 152);
    outlined init with take of AceServiceInvokerAsync(&v218, v127 + 192);
    *(v127 + 232) = v208;
    outlined init with take of AceServiceInvokerAsync(&v215, v127 + 240);
    *(v127 + 288) = 0u;
    *(v127 + 304) = 0u;
    *(v127 + 320) = 0u;
    *(v127 + 336) = 0u;
    *(v127 + 352) = 0x80;
    *&__dst[0] = v127;
    v149 = lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow and conformance AutoShortcutsSetEnablementFlow, 255, type metadata accessor for AutoShortcutsSetEnablementFlow);
    v150 = v190;
    v151 = v207;
    Flow.toActingFlow()();

    *&__dst[0] = v151;
    *(&__dst[0] + 1) = v149;
    swift_getOpaqueTypeConformance2();
    v152 = v209;
    v153 = v192;
    static FlowSearchResult.flow<A>(_:)();
    (*(v191 + 8))(v150, v153);
    outlined destroy of AutoShortcutInvocation(v195, type metadata accessor for VoiceCommandTask);
    outlined destroy of Any?(v206, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v91 = type metadata accessor for FlowSearchResult();
    v92 = v152;
    goto LABEL_72;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v165 = type metadata accessor for Logger();
  __swift_project_value_buffer(v165, static Logger.voiceCommands);
  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    *v168 = 0;
    _os_log_impl(&dword_0, v166, v167, "#SiriLinkFlowPlugin Starting WFRunVoiceShortcutFlow", v168, 2u);
  }

  outlined init with copy of DeviceState((v79 + 9), __dst);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v169 = static VoiceCommandsAppPolicyHandler.instance;
  v170 = type metadata accessor for WFRunVoiceShortcutFlow(0);
  v171 = *(v170 + 48);
  v172 = *(v170 + 52);
  v173 = swift_allocObject();

  *&__dst[0] = specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(__dst, v169, v173);
  v174 = lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(&lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow, 255, type metadata accessor for WFRunVoiceShortcutFlow);
  v175 = v186;
  Flow.toActingFlow()();

  *&__dst[0] = v170;
  *(&__dst[0] + 1) = v174;
  swift_getOpaqueTypeConformance2();
  v176 = v209;
  v177 = v188;
  static FlowSearchResult.flow<A>(_:)();
  (*(v187 + 8))(v175, v177);
  outlined destroy of AutoShortcutInvocation(v195, type metadata accessor for VoiceCommandTask);
  outlined destroy of Any?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v178 = type metadata accessor for FlowSearchResult();
  __swift_storeEnumTagSinglePayload(v176, 0, 1, v178);
  return outlined destroy of AutoShortcutInvocation(v116, type metadata accessor for ShortcutIdentification);
}

uint64_t SiriLinkFlowPlugin.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  v2 = *(v0 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 320));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 360));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));

  return v0;
}

uint64_t SiriLinkFlowPlugin.__deallocating_deinit()
{
  SiriLinkFlowPlugin.deinit();

  return swift_deallocClassInstance();
}

void *protocol witness for FlowPlugin.init() in conformance SiriLinkFlowPlugin@<X0>(void *a1@<X8>)
{
  result = SiriLinkFlowPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t *specialized SiriLinkFlowPlugin.__allocating_init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v100 = a4;
  v101 = a8;
  v108 = a7;
  v109 = a6;
  v110 = a5;
  v111 = a1;
  v98 = a2;
  v99 = a3;
  v95 = a22;
  v96 = a21;
  v94 = a23;
  v93 = a24;
  v97 = a12;
  v92 = a11;
  v106 = a10;
  v107 = a9;
  v104 = a17;
  v86 = a18;
  v103 = a20;
  v91 = a19;
  v90 = *(a19 - 8);
  v24 = *(v90 + 64);
  v88 = a15;
  v25 = __chkstk_darwin(a13);
  v89 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(v27 - 8);
  v28 = *(v105 + 64);
  v29 = __chkstk_darwin(v25);
  v87 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v31 - 8);
  v32 = *(v102 + 64);
  v33 = __chkstk_darwin(v29);
  v84 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v35 - 8);
  v36 = v81;
  v37 = *(v81 + 64);
  v38 = __chkstk_darwin(v33);
  v40 = &v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v40;
  v82 = *(v41 - 8);
  v42 = v82;
  v43 = *(v82 + 64);
  v44 = __chkstk_darwin(v38);
  v46 = &v74 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v46;
  v74 = a16;
  v83 = *(a16 - 8);
  v47 = v83;
  v48 = *(v83 + 64);
  v49 = __chkstk_darwin(v44);
  v51 = &v74 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v51;
  v77 = a14;
  v85 = *(a14 - 8);
  v52 = v85;
  v53 = *(v85 + 64);
  __chkstk_darwin(v49);
  v55 = &v74 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v55;
  v79 = swift_allocObject();
  (*(v52 + 16))(v55, v111, a14);
  (*(v47 + 16))(v51, v110, a16);
  v56 = v46;
  v57 = v103;
  (*(v42 + 16))(v56, v109, v103);
  v58 = *(v36 + 16);
  v59 = v104;
  v58(v40, v108, v104);
  v60 = v84;
  v61 = v86;
  (*(v102 + 16))(v84, v107, v86);
  v62 = v87;
  v63 = v88;
  (*(v105 + 16))(v87, v106, v88);
  v64 = v90;
  v65 = v89;
  v66 = v92;
  v67 = v91;
  (*(v90 + 16))(v89, v92, v91);
  v73 = v57;
  v72 = v59;
  v68 = v74;
  v69 = v77;
  v70 = specialized SiriLinkFlowPlugin.init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(v80, v98, v99, v100, v78, v76, v75, v101, v60, v62, v65, v97, v79, v77, v63, v74, v72, v61, v67, v73, v96, *(&v96 + 1), v95, *(&v95 + 1), v94, *(&v94 + 1), v93);
  (*(v64 + 8))(v66, v67);
  (*(v105 + 8))(v106, v63);
  (*(v102 + 8))(v107, v61);
  (*(v81 + 8))(v108, v104);
  (*(v82 + 8))(v109, v103);
  (*(v83 + 8))(v110, v68);
  (*(v85 + 8))(v111, v69);
  return v70;
}

uint64_t *specialized SiriLinkFlowPlugin.init(appInstallInfoProvider:deviceState:aceServiceInvoker:outputPublisher:locationProvider:dateTimeResolver:voiceShortcutsClient:autoShortcutCATs:linkActionPatterns:linkMetadataProvider:appShortcutProvider:preferences:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a13[7] = a14;
  a13[8] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a13 + 4);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a1, a14);
  a13[27] = a16;
  a13[28] = a23;
  v29 = __swift_allocate_boxed_opaque_existential_1(a13 + 24);
  (*(*(a16 - 8) + 32))(v29, a5, a16);
  a13[32] = a20;
  a13[33] = a27;
  v30 = __swift_allocate_boxed_opaque_existential_1(a13 + 29);
  (*(*(a20 - 8) + 32))(v30, a6, a20);
  a13[37] = a17;
  a13[38] = a24;
  v31 = __swift_allocate_boxed_opaque_existential_1(a13 + 34);
  (*(*(a17 - 8) + 32))(v31, a7, a17);
  a13[43] = a18;
  a13[44] = a25;
  v32 = __swift_allocate_boxed_opaque_existential_1(a13 + 40);
  (*(*(a18 - 8) + 32))(v32, a9, a18);
  a13[48] = a15;
  a13[49] = a22;
  v33 = __swift_allocate_boxed_opaque_existential_1(a13 + 45);
  (*(*(a15 - 8) + 32))(v33, a10, a15);
  a13[53] = a19;
  a13[54] = a26;
  v34 = __swift_allocate_boxed_opaque_existential_1(a13 + 50);
  (*(*(a19 - 8) + 32))(v34, a11, a19);
  a13[2] = 0xD000000000000030;
  a13[3] = 0x800000000022F760;
  outlined init with take of AceServiceInvokerAsync(a2, (a13 + 9));
  outlined init with take of AceServiceInvokerAsync(a3, (a13 + 14));
  outlined init with take of AceServiceInvokerAsync(a4, (a13 + 19));
  a13[39] = a8;
  a13[55] = a12;
  return a13;
}

uint64_t specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v19 = type metadata accessor for VoiceCommandsAppPolicyHandler();
  v20 = &protocol witness table for VoiceCommandsAppPolicyHandler;
  *&v18 = a2;
  type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a1, a3 + 32);
  outlined init with copy of DeviceState(a1, v17);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  static CATOption.defaultMode.getter();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v10 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v11 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(a3 + 16) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v17, v8, v16, v9, v10, v11, v12, v13, v14);
  type metadata accessor for WorkflowNLContextProvider();
  *(a3 + 24) = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(&v18, a3 + 72);
  return a3;
}

uint64_t sub_4B894()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t outlined init with copy of AutoShortcutInvocation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SiriLinkFlowPlugin and conformance SiriLinkFlowPlugin(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of AutoShortcutInvocation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of VoiceCommandTask(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t RunVoiceCommandCATs.confirmSlotValue(device:slotName:slotValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[8];
  OUTLINED_FUNCTION_10_6(v3);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v5);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  v7 = v0[8];
  OUTLINED_FUNCTION_24_6();
  if (v8)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v12 = v0[7];
  v13 = v0[5];
  v2[8].n128_u64[0] = 0x756C6156746F6C73;
  v2[8].n128_u64[1] = 0xE900000000000065;
  outlined init with copy of SpeakableString?(v13, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_16_7();
  v15 = v0[7];
  if (v14 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_38_3(v19);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    OUTLINED_FUNCTION_6_7();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[11];

  return v4();
}

uint64_t RunVoiceCommandCATs.disambiguateSlotValue(device:slotName:)()
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
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_31_0(v3);
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

  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_10_6(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_12_6(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
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

uint64_t RunVoiceCommandCATs.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[8];
  v5 = v0[4];
  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  strcpy(&v2[5], "customDialog");
  v2[5].n128_u8[13] = 0;
  v2[5].n128_u16[7] = -5120;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v5);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  v7 = v0[8];
  OUTLINED_FUNCTION_24_6();
  if (v8)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v12 = v0[7];
  v13 = v0[5];
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = 0x8000000000230CE0;
  outlined init with copy of SpeakableString?(v13, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_16_7();
  v15 = v0[7];
  if (v14 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_38_3(v19);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_87();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    OUTLINED_FUNCTION_6_7();

    return v15();
  }
}

uint64_t RunVoiceCommandCATs.errorWithCodePreflightRequired(localizedAppName:)()
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v0[6] = v3;
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000230CE0;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_24_2(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[7] = v10;
  *v10 = v11;
  v10[1] = RunVoiceCommandCATs.errorWithCodePreflightRequired(localizedAppName:);
  v12 = v0[4];
  v13 = v0[2];
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_87();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
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

uint64_t RunVoiceCommandCATs.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATs.errorWithCodeUnsupportedOnCarPlay(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_42_2();
  v14 = OUTLINED_FUNCTION_31_0(v13);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v15);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v16);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v17);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_13_6(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_12_6(v24);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATs.followupNotSupported(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATs.followupNotSupported(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_42_2();
  v14 = OUTLINED_FUNCTION_31_0(v13);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v15);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v16);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v17);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_13_6(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_12_6(v24);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 129) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 128) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_27();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[12];
    v12 = v3[13];
    v15 = v3[10];
    v14 = v3[11];
    v16 = v3[9];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v7 = v0[15];

  return v6();
}

uint64_t RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 104) = v12;
  v13 = OUTLINED_FUNCTION_1_3(v12, xmmword_218640);
  if (v11)
  {
    v13 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v14 = *(v10 + 96);
  v15 = *(v10 + 32);
  v16 = *(v10 + 128);
  *(v12 + 48) = v11;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0xD000000000000016;
  *(v12 + 88) = 0x8000000000230D20;
  *(v12 + 96) = v16;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = 0x8000000000230CE0;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v15);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v17);
  v18 = *(v10 + 96);
  OUTLINED_FUNCTION_24_6();
  if (v19)
  {

    outlined destroy of String?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v23 = *(v10 + 88);
  v24 = *(v10 + 40);
  strcpy((v12 + 176), "customResponse");
  *(v12 + 191) = -18;
  outlined init with copy of SpeakableString?(v24, v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 88), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 192));
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = *(v10 + 80);
  v29 = *(v10 + 48);
  strcpy((v12 + 224), "intentCategory");
  *(v12 + 239) = -18;
  outlined init with copy of SpeakableString?(v29, v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v10 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v33 = *(v10 + 72);
  v34 = *(v10 + 56);
  OUTLINED_FUNCTION_34_2();
  *(v12 + 272) = v35;
  *(v12 + 280) = v36;
  outlined init with copy of SpeakableString?(v37, v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v38 = OUTLINED_FUNCTION_16_7();
  v39 = *(v10 + 72);
  if (v38 == 1)
  {
    outlined destroy of String?(*(v10 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v43 = *(v10 + 129);
  *(v12 + 320) = 0xD000000000000018;
  *(v12 + 328) = 0x8000000000230D40;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v43;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v58 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 112) = v45;
  *v45 = v46;
  v45[1] = RunVoiceCommandCATs.intentConfirmationPrompt(device:customResponsesEnabled:localizedAppName:customResponse:intentCategory:intentVerb:shouldShowAppAttribution:);
  v47 = *(v10 + 64);
  v48 = *(v10 + 16);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58);
}

uint64_t RunVoiceCommandCATs.intentHandledResponseDone(device:localizedAppName:intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_39_3(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_27();
  *(v0 + 64) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t RunVoiceCommandCATs.intentHandledResponseDone(device:localizedAppName:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  v9[9] = v11;
  v12 = OUTLINED_FUNCTION_1_3(v11, xmmword_218630);
  if (v10)
  {
    v12 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[3].n128_u64[1] = 0;
    v11[4].n128_u64[0] = 0;
  }

  v13 = v9[8];
  v14 = v9[4];
  OUTLINED_FUNCTION_5_4(v12);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v15);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v16);
  v17 = v9[8];
  OUTLINED_FUNCTION_24_6();
  if (v18)
  {

    outlined destroy of String?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v22 = v9[7];
  v23 = v9[5];
  OUTLINED_FUNCTION_34_2();
  v11[8].n128_u64[0] = v24;
  v11[8].n128_u64[1] = v25;
  outlined init with copy of SpeakableString?(v26, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v27 = OUTLINED_FUNCTION_16_7();
  v28 = v9[7];
  if (v27 == 1)
  {
    outlined destroy of String?(v9[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_24_4();
    v31();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v44 = v32;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[10] = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_38_3(v33);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44);
}

uint64_t RunVoiceCommandCATs.openApp(device:localizedAppName:)()
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

uint64_t RunVoiceCommandCATs.openApp(device:localizedAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_42_2();
  v14 = OUTLINED_FUNCTION_31_0(v13);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v15);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v16);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v17);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_13_6(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_12_6(v24);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATs.openAppFailed(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.openAppFailed(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v0[5] = v2;
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t RunVoiceCommandCATs.openAppFailedCarPlay(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.openAppFailedCarPlay(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v0[5] = v2;
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t RunVoiceCommandCATs.openAppFailedWatch(device:userAssignedDeviceName:)()
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

uint64_t RunVoiceCommandCATs.openAppFailedWatch(device:userAssignedDeviceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_42_2();
  v14 = OUTLINED_FUNCTION_31_0(v13);
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

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_5_4(v15);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v16);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v17);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_13_6(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_12_6(v24);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_49_0();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t RunVoiceCommandCATs.promptForSlotValue(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunVoiceCommandCATs.promptForSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v0[5] = v2;
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t RunVoiceCommandCATs.unsupportedSlotValue(device:slotName:)()
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
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_31_0(v3);
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

  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_10_6(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_12_6(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunVoiceCommandCATs.yesAndCancel(device:intentVerb:)()
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
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_31_0(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
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
  v7 = v0[4];
  v1[6] = v2;
  v1[9] = v5;
  v1[10] = 0x6556746E65746E69;
  v1[11] = 0xEA00000000006272;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_12_6(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
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

  OUTLINED_FUNCTION_6_0();
  v4 = v0[9];

  return v3();
}

uint64_t RunVoiceCommandCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunVoiceCommandCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunVoiceCommandCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for RunVoiceCommandCATs()
{
  result = type metadata singleton initialization cache for RunVoiceCommandCATs;
  if (!type metadata singleton initialization cache for RunVoiceCommandCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 48);
  v5 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t result)
{
  v4 = *(v2 + 32);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x656D614E746F6C73;
  v3[11] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

double OUTLINED_FUNCTION_26_5()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = result;
  v4[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(a3, v3, a1, a2);
}

uint64_t *OUTLINED_FUNCTION_36_2()
{
  *(v1 + 120) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_43_2()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_46_1()
{
  *(v1 + 168) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 144));
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_allocObject();
}

void WorkflowRunnerFlow.__allocating_init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  OUTLINED_FUNCTION_40_0();
  v81 = v31;
  v82 = v32;
  v79 = v33;
  v80 = v34;
  v77 = v35;
  v78 = v36;
  v75 = v37;
  v76 = v38;
  v74 = objc_allocWithZone(v28);
  v39 = a25[3];
  v73 = a25[4];
  __swift_mutable_project_boxed_opaque_existential_1(a25, v39);
  OUTLINED_FUNCTION_13_1();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_3();
  v44 = OUTLINED_FUNCTION_77_0(v43);
  v45(v44);
  v46 = *(a26 + 24);
  v70 = *(a26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a26, *(a26 + 24));
  OUTLINED_FUNCTION_13_1();
  v48 = *(v47 + 64);
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_3();
  v52 = v51 - v50;
  (*(v53 + 16))(v51 - v50);
  v54 = *(a27 + 24);
  v68 = *(a27 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a27, v54);
  OUTLINED_FUNCTION_13_1();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_3();
  v59 = OUTLINED_FUNCTION_94(v58);
  v60(v59);
  v61 = a28[3];
  v62 = a28[4];
  __swift_mutable_project_boxed_opaque_existential_1(a28, v61);
  OUTLINED_FUNCTION_13_1();
  v64 = *(v63 + 64);
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  (*(v66 + 16))(a26);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v75, v76, v77, v78, v79, v80, v81, v82, a21, a22, a23, a24, v30, v52, v29, a26, v74, v61, v39, v54, v46, v62, v73, v68, v70, v67, v68, a27, v70, a26, v73, v74, a24, a23, a21, a22, v75);
  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(a25);
  OUTLINED_FUNCTION_42();
}

void WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  OUTLINED_FUNCTION_40_0();
  v76 = v28;
  v77 = v32;
  v82 = v33;
  v83 = v34;
  v80 = v35;
  v81 = v36;
  v78 = v37;
  v79 = v38;
  v84 = v39;
  v40 = a25[3];
  v74 = a25[4];
  __swift_mutable_project_boxed_opaque_existential_1(a25, v40);
  OUTLINED_FUNCTION_13_1();
  v42 = *(v41 + 64);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_3();
  v45 = OUTLINED_FUNCTION_77_0(v44);
  v46(v45);
  v47 = *(a26 + 24);
  v72 = *(a26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a26, v47);
  OUTLINED_FUNCTION_13_1();
  v49 = *(v48 + 64);
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_3();
  v52 = OUTLINED_FUNCTION_94(v51);
  v53(v52);
  v54 = *(a27 + 24);
  v70 = *(a27 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a27, v54);
  OUTLINED_FUNCTION_13_1();
  v56 = *(v55 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_3();
  v60 = v59 - v58;
  (*(v61 + 16))(v59 - v58);
  v62 = a28[3];
  v63 = a28[4];
  __swift_mutable_project_boxed_opaque_existential_1(a28, v62);
  OUTLINED_FUNCTION_13_1();
  v65 = *(v64 + 64);
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  (*(v67 + 16))(v29);
  specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v77, v78, v79, v80, v81, v82, v83, v84, a21, a22, a23, a24, v31, v30, v60, v29, v76, v62, v40, v54, v47, v63, v74, v70, v72, v68, v69, v70, a27, v72, a26, v74, a24, a23, a21, a22, v75);
  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(a25);
  OUTLINED_FUNCTION_42();
}

void WorkflowRunnerFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v72 = v0;
  v1 = OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for WorkflowRunnerFlow.State(v1);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_50_0();
  v75 = (v13 - v14);
  __chkstk_darwin(v15);
  v76 = &v69 - v16;
  v77 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_13_1();
  v74 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v29, static Logger.voiceCommands);
  v30 = *(v25 + 16);
  v31 = OUTLINED_FUNCTION_48_2();
  v32(v31);
  v71 = v0;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  v35 = os_log_type_enabled(v33, v34);
  v73 = v23;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_48();
    v70 = v8;
    v37 = v36;
    v69 = OUTLINED_FUNCTION_85();
    v80 = v69;
    *v37 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v25 + 8);
    v42 = OUTLINED_FUNCTION_95();
    v43(v42);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v80);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_0, v33, v34, "WorkflowRunnerFlow received input: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    OUTLINED_FUNCTION_15_0();
    v8 = v70;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v45 = *(v25 + 8);
    v46 = OUTLINED_FUNCTION_95();
    v47(v46);
  }

  v48 = v76;
  Input.parse.getter();
  v50 = v78;
  v49 = v79;
  v51 = (*(v78 + 88))(v48, v79);
  v52 = v77;
  if (v51 == enum case for Parse.directInvocation(_:))
  {
    (*(v50 + 96))(v48, v49);
    v53 = v48;
    v54 = v73;
    v55 = v74;
    (*(v74 + 32))(v73, v53, v52);
    if (Parse.DirectInvocation.identifier.getter() != 0xD00000000000003FLL || 0x8000000000230CA0 != v56)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_80_0();
    }

    (*(v55 + 8))(v54, v52);
  }

  else
  {
    (*(v50 + 8))(v48, v49);
    v58 = v75;
    Input.parse.getter();
    v59 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v58);
    v60 = *(v50 + 8);
    v61 = OUTLINED_FUNCTION_20_1();
    v62(v61);
    switch(v59)
    {
      case 2:

        goto LABEL_18;
      case 3:
        break;
      default:
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
LABEL_18:
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = OUTLINED_FUNCTION_52();
            OUTLINED_FUNCTION_45(v66);
            _os_log_impl(&dword_0, v64, v65, "WorkflowRunnerFlow received cancel signal, cancelling execution...", v58, 2u);
            OUTLINED_FUNCTION_17();
          }

          swift_storeEnumTagMultiPayload();
          v67 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
          v68 = v72;
          OUTLINED_FUNCTION_57_0();
          outlined assign with take of WorkflowRunnerFlow.State(v8, v68 + v67);
          swift_endAccess();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WorkflowRunnerFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[31] = v2;
  v1[32] = v0;
  v3 = type metadata accessor for AceOutput();
  v1[33] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[34] = v4;
  v6 = *(v5 + 64);
  v1[35] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v1[36] = v7;
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_27();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = type metadata accessor for DurationUtil();
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v1[40] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  v1[42] = OUTLINED_FUNCTION_27();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v1[46] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[47] = v20;
  v22 = *(v21 + 64);
  v1[48] = OUTLINED_FUNCTION_27();
  v1[49] = swift_task_alloc();
  v23 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v1[50] = v23;
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  v1[51] = OUTLINED_FUNCTION_27();
  v1[52] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v26, v27, v28);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[54];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[32];
  outlined assign with take of SiriWorkflowRunnerEvent?(v0[44], v2);
  v7 = DurationUtil.computeDuration()();
  outlined destroy of WorkflowRunnerFlow.State();
  BYTE4(v47) = 0;
  specialized static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v1, LODWORD(v7), v6, v2, v8, v9, v10, v11, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v0, v57, v58);

  v12 = OUTLINED_FUNCTION_20_1();
  outlined init with copy of SiriWorkflowRunnerEvent?(v12, v13, v14, v15);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    v16 = v0[53];
    v18 = v0[50];
    v17 = v0[51];
    v19 = v0[49];
    v20 = v0[46];
    v21 = v0[47];
    v46 = v0[45];
    v23 = v0[31];
    v22 = v0[32];
    outlined destroy of Any?(v0[43], &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v24 = OUTLINED_FUNCTION_16_6();
    *v25 = 0xD00000000000002BLL;
    v25[1] = 0x8000000000230E10;
    *v17 = v24;
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WorkflowRunnerFlow.State(v17, v22 + v16);
    swift_endAccess();
    static ExecuteResponse.complete()();
    v26 = *(v21 + 8);
    v27 = OUTLINED_FUNCTION_9_3();
    v28(v27);
    outlined destroy of Any?(v46, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_17_5();

    OUTLINED_FUNCTION_6_0();

    return v29();
  }

  else
  {
    v31 = v0[43];
    v32 = v0[39];
    OUTLINED_FUNCTION_35_3();
    outlined init with take of SiriWorkflowRunnerEvent(v33, v34);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[56] = v35;
    *v35 = v36;
    v35[1] = WorkflowRunnerFlow.execute();
    v37 = v0[49];
    v38 = v0[39];
    v39 = v0[31];
    v40 = v0[32];

    return WorkflowRunnerFlow.responseFrom(event:iterator:)(v39, v38, v37);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 464);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 488) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[10] = v3;
  v0[11] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  v7 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[62] = v8;
  *v8 = v9;
  v8[1] = WorkflowRunnerFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 504) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t WorkflowRunnerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = v16[49];
  v18 = v16[46];
  v19 = v16[47];
  v20 = v16[45];
  v21 = v16[39];
  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State();
  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_22_4();
  v24(v23);
  outlined destroy of Any?(v20, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = v16[42];
  if (__swift_getEnumTagSinglePayload(v17, 1, v16[36]) == 1)
  {
    v18 = v16[57];
    v19 = v16[53];
    v21 = v16[50];
    v20 = v16[51];
    v22 = v16[32];
    outlined destroy of Any?(v17, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v23 = OUTLINED_FUNCTION_16_6();
    *v24 = 0xD00000000000002BLL;
    v24[1] = 0x8000000000230D90;
    *v20 = v23;
    OUTLINED_FUNCTION_20_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WorkflowRunnerFlow.State(v20, v22 + v19);
    swift_endAccess();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v26))
    {
      v27 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v27);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_17();
    }

    v34 = v16[47];
    v33 = v16[48];
    v35 = v16[46];
    v36 = v16[31];

    static ExecuteResponse.complete()();
    v37 = *(v34 + 8);
    v38 = OUTLINED_FUNCTION_9_3();
    v39(v38);
    goto LABEL_14;
  }

  v41 = v16[37];
  v40 = v16[38];
  OUTLINED_FUNCTION_35_3();
  v42 = OUTLINED_FUNCTION_9_3();
  outlined init with take of SiriWorkflowRunnerEvent(v42, v43);
  OUTLINED_FUNCTION_10_7();
  v44 = OUTLINED_FUNCTION_20_1();
  outlined init with copy of WorkflowRunnerFlow.State(v44, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v60 = v16[47];
    v59 = v16[48];
    v61 = v16[46];
    v62 = v16[37];
    v63 = v16[38];
    v64 = v16[31];
    outlined destroy of WorkflowRunnerFlow.State();
    static ExecuteResponse.complete()();
    outlined destroy of WorkflowRunnerFlow.State();
    v65 = *(v60 + 8);
    v66 = OUTLINED_FUNCTION_22_4();
    v67(v66);
LABEL_14:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_17_5();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (EnumCaseMultiPayload != 9)
  {
    v68 = v16[57];
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v70))
    {
      v71 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v71);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v72, v73, v74, v75, v76, 2u);
      OUTLINED_FUNCTION_17();
    }

    v78 = v16[47];
    v77 = v16[48];
    v79 = v16[46];
    v81 = v16[37];
    v80 = v16[38];
    v82 = v16[31];

    static ExecuteResponse.complete()();
    outlined destroy of WorkflowRunnerFlow.State();
    v83 = *(v78 + 8);
    v84 = OUTLINED_FUNCTION_9_3();
    v85(v84);
    outlined destroy of WorkflowRunnerFlow.State();
    goto LABEL_14;
  }

  v47 = v16[37];
  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v16[59] = v48;
  *v48 = v49;
  v48[1] = WorkflowRunnerFlow.execute();
  v50 = v16[48];
  v51 = v16[38];
  v52 = v16[31];
  v53 = v16[32];
  OUTLINED_FUNCTION_58();

  return WorkflowRunnerFlow.responseFrom(event:iterator:)(v54, v55, v56);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v18 = v16[47];
  v17 = v16[48];
  v19 = v16[46];
  v20 = v16[38];
  OUTLINED_FUNCTION_3_9();
  outlined destroy of WorkflowRunnerFlow.State();
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_22_4();
  v23(v22);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v17 = v16[53];
  v18 = v16[50];
  v19 = v16[51];
  v20 = v16[32];
  (*(v16[34] + 8))(v16[35], v16[33]);
  __swift_destroy_boxed_opaque_existential_1Tm(v16 + 2);
  OUTLINED_FUNCTION_22_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v19, v20 + v17);
  swift_endAccess();
  v21 = v16[31];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_72_0(*(v19 + 488));
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v16);
  swift_endAccess();
  v20 = *(v19 + 248);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  (*(v19[34] + 8))(v19[35], v19[33]);
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v19 + 2);
  OUTLINED_FUNCTION_72_0(v19[63]);
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v17, v18 + v16);
  swift_endAccess();
  v20 = v19[31];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

void closure #2 in WorkflowRunnerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_92();
  v8 = type metadata accessor for SiriWorkflowRunnerEvent(v7);
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_93();
  v12 = (a2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput);
  v13 = *(a2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8);
  if (*(v12 + 64) == 3)
  {
    v15 = v12[2];

    if (v15)
    {
      goto LABEL_5;
    }
  }

  else if (!*(v12 + 64))
  {
    v14 = *v12;

LABEL_5:
    v16 = String._bridgeToObjectiveC()();

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
  [v3 setShortcutName:v16];

  if (__swift_getEnumTagSinglePayload(a3, 1, v8))
  {
    v17 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    outlined init with copy of WorkflowRunnerFlow.State(a3, v4);
    SiriWorkflowRunnerEvent.name.getter();
    OUTLINED_FUNCTION_3_9();
    outlined destroy of WorkflowRunnerFlow.State();
    v17 = String._bridgeToObjectiveC()();
  }

  [v3 setWfRunnerEventName:v17];
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.responseFrom(event:iterator:), 0, 0);
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = v14[9];
  v16 = v14[10];
  v17 = v14[3];
  OUTLINED_FUNCTION_10_7();
  outlined init with copy of WorkflowRunnerFlow.State(v18, v16);
  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v14[10];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v83 = *v20;
      v14[15] = v20[1];
      v84 = v20[2];
      v14[16] = v20[3];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[17] = v85;
      *v85 = v86;
      v85[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      v87 = v14[4];
      v88 = v14[5];
      v89 = v14[2];
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(v90, v91, v92, v93, v94, v95);
    case 2:
      v62 = v14[7];
      v61 = v14[8];
      v63 = v14[6];
      a10 = v14[4];
      a11 = v14[5];
      v64 = v14[2];
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
      v66 = (v20 + *(v65 + 48));
      v67 = *v66;
      v68 = v66[1];
      v69 = (v20 + *(v65 + 64));
      v71 = *v69;
      v70 = v69[1];
      (*(v62 + 32))(v61, v20, v63);
      WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:)(v61, v67, v68, a10, v71, v70, v64);

      v72 = *(v62 + 8);
      v73 = OUTLINED_FUNCTION_9_3();
      v74(v73);
      goto LABEL_27;
    case 3:
      v75 = v14[5];
      v76 = v14[2];
      v15 = *v20;
      WorkflowRunnerFlow.createHandleUserActivityFlow(userActivity:bundleId:iterator:_:)(*v20, v20[1], v20[2], v14[4], v20[3], v20[4]);

      goto LABEL_24;
    case 4:
      v51 = OUTLINED_FUNCTION_62_1();
      WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:)(v51, v52, v53, v54, v55);
      goto LABEL_23;
    case 5:
      v14[18] = *v20;
      v97 = v20[1];
      v14[19] = v20[2];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[20] = v98;
      *v98 = v99;
      v98[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      v100 = v14[4];
      v101 = v14[5];
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(v102, v103, v104, v105, v106);
    case 6:
      v108 = OUTLINED_FUNCTION_62_1();
      WorkflowRunnerFlow.createOpenInteractionInAppFlow(interaction:iterator:_:)(v108, v109, v110, v111, v112);
LABEL_23:

LABEL_24:

      goto LABEL_27;
    case 7:
      v77 = OUTLINED_FUNCTION_63_1();
      WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:)(v77, v78, v79, v80, v81, v82);
      goto LABEL_26;
    case 8:
      v126 = *v20;
      v127 = v20[1];
      v14[21] = v127;
      v128 = *(v20 + 16);

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v129 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v129, static Logger.voiceCommands);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 67109120;
        *(v132 + 4) = v128;
        _os_log_impl(&dword_0, v130, v131, "#WorkflowRunnerFlow cancelled: %{BOOL}d", v132, 8u);
        OUTLINED_FUNCTION_11_0();
      }

      if (v127)
      {
        swift_errorRetain();
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        v14[22] = v133;
        *v133 = v134;
        v133[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
        v135 = v14[5];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_6_1();

        return WorkflowRunnerFlow.handleDidFinishWithError(error:)(v136, v137);
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        v14[23] = v139;
        *v139 = v140;
        v139[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
        v141 = v14[5];
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_6_1();

        return WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(v142, v143);
      }

    case 9:
      v60 = v14[5];
      WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(v14[4], *v20, v20[1], v14[2]);

      goto LABEL_27;
    case 10:
      v113 = OUTLINED_FUNCTION_63_1();
      WorkflowRunnerFlow.createAppProtectionRequestFlow(bundleId:iterator:_:)(v113, v114, v115, v116, v117);
LABEL_26:

      goto LABEL_27;
    case 11:
      v39 = *v20;
      v40 = v20[1];
      v14[24] = v20[2];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[25] = v41;
      *v41 = v42;
      v41[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      v43 = v14[4];
      v44 = v14[5];
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_6_1();

      return WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(v45, v46, v47, v48, v49);
    case 12:
      v56 = v14[5];
      LOBYTE(v56) = WorkflowRunnerFlow.isActionable(actionID:)(*v20, v20[1]);

      if (v56)
      {
        v57 = *(v14[5] + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState);
        OUTLINED_FUNCTION_18_4();
        (*(v58 + 232))();
      }

      v59 = v14[2];
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_27:
      OUTLINED_FUNCTION_82_0();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_1();

      result = v119(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14);
      break;
    default:
      v14[11] = *v20;
      v21 = v20[1];
      v14[12] = v20[2];
      v22 = *(v20 + 24);
      v23 = v20[4];
      v14[13] = v20[5];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v14[14] = v24;
      *v24 = v25;
      v24[1] = WorkflowRunnerFlow.responseFrom(event:iterator:);
      v26 = v14[4];
      v27 = v14[5];
      v28 = v14[2];
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_6_1();

      result = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(v29, v30, v31, v32, v33, v34, v35, v36);
      break;
  }

  return result;
}

uint64_t WorkflowRunnerFlow.responseFrom(event:iterator:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 136);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.buildCancelledOutput(), 0, 0);
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 224);
  static Device.current.getter();
  type metadata accessor for AutoShortcutCATs();
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AutoShortcutCATsSimple();
  static CATOption.defaultMode.getter();
  v3 = CATWrapperSimple.__allocating_init(options:globals:)();
  v4 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_92();
  type metadata accessor for AutoShortcutDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  inited[12] = v4;
  inited[13] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[9] = v1;
  outlined init with take of AceServiceInvokerAsync((v0 + 128), (inited + 2));
  inited[7] = v2;
  inited[8] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 264) = v6;
  *v6 = v7;
  v6[1] = WorkflowRunnerFlow.buildCancelledOutput();
  v8 = *(v0 + 248);
  OUTLINED_FUNCTION_87();

  return AutoShortcutDialogTemplating.makeUserDeniedDialog_rfv1()(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v9 = *(v3 + 256);
    swift_setDeallocating();
    AutoShortcutDialogTemplating.deinit();
    swift_deallocClassInstance();
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  swift_setDeallocating();
  AutoShortcutDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();
  v5 = v0[34];

  return v4();
}

uint64_t WorkflowRunnerFlow.buildCancelledOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);
  v15 = *(v12 + 224);
  v16 = *(v12 + 232);
  v17 = *(v12 + 208);
  v18 = *(v12 + 216) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState;
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  v21 = OUTLINED_FUNCTION_75();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_60_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0;
  *(v12 + 168) = 0u;
  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();
  outlined destroy of Any?(v12 + 168, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  v23 = *(v14 + 8);
  v24 = OUTLINED_FUNCTION_20_1();
  v25(v24);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.execute(completion:)()
{
  swift_getObjectType();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, type metadata accessor for WorkflowRunnerFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 432) = a8;
  *(v9 + 440) = v8;
  *(v9 + 416) = a6;
  *(v9 + 424) = a7;
  *(v9 + 129) = a5;
  *(v9 + 400) = a3;
  *(v9 + 408) = a4;
  *(v9 + 384) = a1;
  *(v9 + 392) = a2;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v9 + 448) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06ActingC0PAAE12onCompletionyQry9ValueTypeQzcFQOyAA08ReactiveC0Cy0A12MailInternal04SendJ4PlanCG_Qo_Md, &_s11SiriKitFlow06ActingC0PAAE12onCompletionyQry9ValueTypeQzcFQOyAA08ReactiveC0Cy0A12MailInternal04SendJ4PlanCG_Qo_MR);
  *(v9 + 464) = v12;
  v13 = *(v12 - 8);
  *(v9 + 472) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 480) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:), 0, 0);
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 392);
  v2 = type metadata accessor for Logger();
  *(v0 + 488) = OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 392);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_83();
    *v3 = 138412290;
    *(v3 + 1) = v6;
    *v7 = v6;
    v8 = v6;
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v14 = *(v0 + 392);

  v15 = [v14 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != 0x6C69614D646E6553 || v18 != 0xE800000000000000)
  {
    OUTLINED_FUNCTION_54_1();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_80_0();
  }

  if (SiriLinkFlowFeatureFlags.isEnabled.getter(3u))
  {
    v20 = *(v0 + 392);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 392);
      v24 = OUTLINED_FUNCTION_48();
      v106 = OUTLINED_FUNCTION_85();
      *v24 = 136315138;
      v25 = [v23 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = OUTLINED_FUNCTION_75();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);

      *(v24 + 4) = v29;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_17();
    }

    v35 = *(v0 + 472);
    v36 = *(v0 + 480);
    v37 = *(v0 + 456);
    v38 = *(v0 + 440);
    v96 = v38;
    v97 = *(v0 + 464);
    v103 = *(v0 + 432);
    v101 = *(v0 + 408);
    v102 = *(v0 + 424);
    v98 = *(v0 + 416);
    v99 = *(v0 + 400);
    v100 = *(v0 + 392);
    v104 = *(v0 + 384);
    v39 = type metadata accessor for SendMailPlan();
    OUTLINED_FUNCTION_66(v39);
    *(v0 + 368) = SendMailPlan.init()();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMd, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMR);
    OUTLINED_FUNCTION_66(v40);
    *(v0 + 376) = ReactiveFlow.init(plan:)();
    OUTLINED_FUNCTION_21();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMd, &_s11SiriKitFlow08ReactiveC0Cy0A12MailInternal04SendE4PlanCGMR);
    ActingFlow.onCompletion(_:)();

    *(v0 + 336) = v40;
    *(v0 + 344) = v41;
    swift_getOpaqueTypeConformance2();
    ActingFlow.toAnyFlow()();
    (*(v35 + 8))(v36, v97);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
    v43 = (v37 + v42[12]);
    v44 = v42[16];
    v45 = (v37 + v42[20]);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11(v46);
    (*(v47 + 16))(v37, v98);
    *v43 = v99;
    v43[1] = v101;
    *(v37 + v44) = v100;
    *v45 = v102;
    v45[1] = v103;
    swift_storeEnumTagMultiPayload();
    v48 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();
    v49 = v100;

    outlined assign with take of WorkflowRunnerFlow.State(v37, v96 + v48);
    swift_endAccess();
    static ExecuteResponse.ongoing(next:)();

    OUTLINED_FUNCTION_108();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X1, X16 }
  }

  v52 = *(v0 + 129);
  v54 = *(v0 + 400);
  v53 = *(v0 + 408);
  v55 = *(v0 + 392);
  outlined init with copy of DeviceState(*(v0 + 440) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner, v0 + 48);
  *(v0 + 16) = v54;
  *(v0 + 24) = v53;
  *(v0 + 32) = v55;
  *(v0 + 40) = v52;
  v56 = v55;

  v57 = [v56 outputType];
  if (!v57)
  {
    goto LABEL_24;
  }

  v58 = *(v0 + 392);

  v59 = [v58 systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  OUTLINED_FUNCTION_48_2();
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = [objc_opt_self() sessionStartingProtocol];
  *(v0 + 360) = v61;
  v62 = swift_task_alloc();
  *(v62 + 16) = v0 + 360;
  specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v62, v60);
  v56 = v63;

  if ((v56 & 1) == 0 || (v64 = [*(v0 + 392) systemProtocols], v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v64, v56 = Array<A>.isAudioStarting.getter(v65), , (v56 & 1) == 0))
  {
LABEL_24:
    v84 = *(v0 + 440);
    OUTLINED_FUNCTION_42_3((v84 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory));
    v85 = *(v84 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate);
    v86 = type metadata accessor for LinkMetadataProvider();
    OUTLINED_FUNCTION_21();
    v87 = swift_allocObject();
    *(v87 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
    *(v0 + 160) = v86;
    *(v0 + 168) = &protocol witness table for LinkMetadataProvider;
    *(v0 + 136) = v87;
    v88 = *(v56 + 8);
    OUTLINED_FUNCTION_16_1();
    v105 = v89 + *v89;
    v91 = *(v90 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 520) = v92;
    *v92 = v93;
    v92[1] = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:);
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X8, X16 }
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v67))
  {
    v68 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v68);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v69, v70, v71, v72, v73, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v74 = *(v0 + 440);
  v75 = *(v0 + 392);

  *(v0 + 496) = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker;
  v76 = [v75 systemProtocols];
  *(v0 + 504) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 512) = v77;
  *v77 = v78;
  v77[1] = WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:);
  OUTLINED_FUNCTION_100();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v79, v80, v81);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 512);
  v3 = *(v1 + 504);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 520);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 528) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = v14[57];
  v17 = v14[54];
  v16 = v14[55];
  v18 = v14[53];
  v38 = v14[52];
  v39 = v14[56];
  v40 = v14[48];
  v19 = (v16 + v14[62]);
  v20 = [objc_opt_self() wfSiriExecutionRequiresShortcutsJrError];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v22 = [objc_allocWithZone(SAUICloseAssistant) init];
  AceServiceInvokerAsync.submitAndForget(_:)();

  v23 = v20;
  v18(0, v20);

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v15 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11(v25);
  (*(v26 + 16))(&v15[v24], v38);
  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0();
  v28 = v23;
  outlined assign with take of WorkflowRunnerFlow.State(v15, v16 + v27);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  outlined destroy of LinkHandlingFlowType.GetFlowConfig((v14 + 2));
  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, a12, a13, a14);
}

uint64_t WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v18 = *(v16 + 448);
  v17 = *(v16 + 456);
  v19 = *(v16 + 440);
  if (*(v16 + 128) == 1)
  {
    v20 = *(v16 + 384);
    outlined init with take of AceServiceInvokerAsync((v16 + 88), v16 + 176);
    OUTLINED_FUNCTION_97();
    swift_storeEnumTagMultiPayload();
    v21 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WorkflowRunnerFlow.State(v17, v19 + v21);
    swift_endAccess();
    v22 = *(v16 + 208);
    __swift_project_boxed_opaque_existential_1((v16 + 176), *(v16 + 200));
    static ExecuteResponse.ongoing<A>(next:)();
    outlined destroy of LinkHandlingFlowType.GetFlowConfig(v16 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 176));
  }

  else
  {
    a10 = *(v16 + 424);
    a11 = *(v16 + 432);
    v23 = *(v16 + 408);
    v24 = *(v16 + 416);
    v25 = *(v16 + 392);
    a9 = *(v16 + 400);
    a12 = *(v16 + 88);
    a13 = *(v16 + 384);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
    v27 = (v17 + v26[12]);
    v28 = v26[16];
    v29 = (v17 + v26[20]);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11(v30);
    (*(v31 + 16))(v17, v24);
    *v27 = a9;
    v27[1] = v23;
    *(v17 + v28) = v25;
    *v29 = a10;
    v29[1] = a11;
    OUTLINED_FUNCTION_97();
    swift_storeEnumTagMultiPayload();
    v32 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();
    v33 = v25;

    outlined assign with take of WorkflowRunnerFlow.State(v17, v19 + v32);
    swift_endAccess();
    *(v16 + 352) = a12;
    OUTLINED_FUNCTION_21();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for LinkRCHFlow();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type LinkRCHFlow and conformance LinkRCHFlow, type metadata accessor for LinkRCHFlow);
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    outlined destroy of LinkHandlingFlowType.GetFlowConfig(v16 + 16);
  }

  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_45_1();
  v18 = v17[61];
  outlined destroy of LinkHandlingFlowType.GetFlowConfig((v17 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v17 + 17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v21);
    _os_log_impl(&dword_0, v19, v20, "#WorkflowRunnerFlow error constructing LinkRCHFlow", v16, 2u);
    OUTLINED_FUNCTION_17();
  }

  v23 = v17[56];
  v22 = v17[57];
  v25 = v17[54];
  v24 = v17[55];
  v27 = v17[52];
  v26 = v17[53];
  v44 = v17[48];
  v45 = v17[66];

  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v28 = OUTLINED_FUNCTION_16_6();
  *v29 = xmmword_218710;
  v26(0, v28);

  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v22 = OUTLINED_FUNCTION_16_6();
  *v31 = xmmword_218710;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11(v32);
  (*(v33 + 16))(v22 + v30, v27);
  swift_storeEnumTagMultiPayload();
  v34 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v22, v24 + v34);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_108();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, 0, 4, a11, v44, v45, a14, a15, a16);
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v7[41] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[42] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v7[43] = swift_task_alloc();
  v11 = type metadata accessor for AceOutput();
  v7[44] = v11;
  v12 = *(v11 - 8);
  v7[45] = v12;
  v13 = *(v12 + 64) + 15;
  v7[46] = swift_task_alloc();
  v14 = type metadata accessor for TemplatingResult();
  v7[47] = v14;
  v15 = *(v14 - 8);
  v7[48] = v15;
  v16 = *(v15 + 64) + 15;
  v7[49] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:), 0, 0);
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_17();
  }

  v10 = *(v0 + 392);
  v11 = *(v0 + 360);
  v12 = *(v0 + 344);
  v33 = *(v0 + 368);
  v34 = *(v0 + 352);
  v13 = *(v0 + 320);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_216850;
  *(v17 + 32) = v15;
  *(v17 + 40) = v14;
  swift_bridgeObjectRetain_n();
  TemplatingResult.init(dialogId:print:speak:)(0xD000000000000019, 0x8000000000231030, inited, v17, v10);
  v18 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24);
  v19 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 32);
  v20 = OUTLINED_FUNCTION_75();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_60_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v0 + 144) = 0;
  *(v0 + 128) = 0u;
  *(v0 + 112) = 0u;
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 112, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v26 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher + 24);
  v27 = *(v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher + 32);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher), v26);
  *(v0 + 176) = v34;
  *(v0 + 184) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  (*(v11 + 16))(boxed_opaque_existential_1, v33, v34);
  v29 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 408) = v30;
  *v30 = v31;
  v30[1] = WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 152, v26, v27);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 416) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 152));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
  v8 = *(v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState);
  OUTLINED_FUNCTION_18_4();
  (*(v9 + 224))(0);
  (v7)(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11(v10);
  (*(v11 + 16))(v2, v6);
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v2, v5 + v12);
  swift_endAccess();
  OUTLINED_FUNCTION_73_0();
  v13 = *(v1 + 8);
  v14 = OUTLINED_FUNCTION_20_1();
  v15(v14);
  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_22_4();
  v18(v17);

  OUTLINED_FUNCTION_6_0();

  return v19();
}

uint64_t WorkflowRunnerFlow.createSpeakTextWithUtterance(utterance:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_99();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  v24 = v20[52];
  v25 = v20[50];
  __swift_destroy_boxed_opaque_existential_1Tm(v20 + 19);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[52];
    v29 = OUTLINED_FUNCTION_48();
    v30 = OUTLINED_FUNCTION_85();
    a10 = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v32 = v20[27];
    v31 = v20[28];
    v33 = v20[29];
    v34 = Error.localizedDescription.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &a10);

    *(v29 + 4) = v36;
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v42 = v20[52];
  v44 = v20[41];
  v43 = v20[42];
  v45 = v20[39];
  v46 = v20[40];
  v47 = v20[37];
  v48 = v20[38];
  swift_errorRetain();
  (v48)(v42);

  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
  *v43 = v42;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_4_11(v50);
  (*(v51 + 16))(v43 + v49, v47);
  swift_storeEnumTagMultiPayload();
  v52 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v43, v46 + v52);
  swift_endAccess();
  OUTLINED_FUNCTION_73_0();
  v53 = *(v21 + 8);
  v54 = OUTLINED_FUNCTION_20_1();
  v55(v54);
  v56 = *(v48 + 8);
  v57 = OUTLINED_FUNCTION_22_4();
  v58(v57);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_78();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12);
}

void WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v64 = a4;
  v62 = a3;
  v61 = a2;
  v60 = a1;
  v63 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v12 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CATOption();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#WorkflowRunnerFlow createOpenURLFlow", v20, 2u);
  }

  v21 = &v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v22 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v24 = v21[2];

    if (v24)
    {
      goto LABEL_9;
    }
  }

  else if (!v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v23 = *v21;
    v24 = *&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v22 = v23;
LABEL_9:
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    v25 = NSUserActivity.__allocating_init(activityType:)(0xD000000000000017, 0x8000000000231050, &selRef_initWithActivityType_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation3URLVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation3URLVtGMR);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
    v59 = a7;
    v27 = v26 - 8;
    v28 = *(*(v26 - 8) + 72);
    v29 = *(*(v26 - 8) + 80);
    v58 = a6;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_216850;
    v32 = (v31 + v30);
    v57 = a5;
    v33 = *(v27 + 56);
    *v32 = 0xD00000000000001DLL;
    *(v32 + 1) = 0x8000000000231070;
    v34 = type metadata accessor for URL();
    (*(*(v34 - 8) + 16))(&v32[v33], v60, v34);
    v35 = Dictionary.init(dictionaryLiteral:)();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v35);
    v37 = v36;

    outlined bridged method (mbnn) of @objc NSUserActivity.userInfo.setter(v37, v25);
    if (v62)
    {
      v38 = v61;
    }

    else
    {
      v38 = 0xD000000000000013;
    }

    if (v62)
    {
      v39 = v62;
    }

    else
    {
      v39 = 0x800000000022F740;
    }

    v40 = v25;

    v41 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v22, v24, v25, v38, v39);

    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v68);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v67);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v66);
    outlined init with copy of DeviceState(&v8[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v65);
    type metadata accessor for RunVoiceCommandCATs();
    v42 = v41;
    static CATOption.defaultMode.getter();
    v43 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    v44 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v45 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v42, v68, v67, v43, v44, v66, v65);
    v46 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v47 - 8) + 16))(v14, v64, v47);
    v48 = v58;
    *v46 = v57;
    *(v46 + 1) = v48;
    swift_storeEnumTagMultiPayload();
    v49 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v14, &v8[v49]);
    swift_endAccess();
    v68[0] = v45;
    v50 = swift_allocObject();
    *(v50 + 16) = v8;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
    *(v51 + 24) = v50;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow);
    v52 = v8;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "#WorkflowRunnerFlow does not have shortcutName for open url action", v55, 2u);
  }

  static ExecuteResponse.complete()();
}

void WorkflowRunnerFlow.createHandleUserActivityFlow(userActivity:bundleId:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v11 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CATOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v17;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#WorkflowRunnerFlow createHandleUserActivityFlow", v21, 2u);
  }

  v22 = &v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v23 = *&v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v25 = v22[2];

    if (v25)
    {
      goto LABEL_9;
    }
  }

  else if (!v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v24 = *v22;
    v25 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v23 = v24;
LABEL_9:
    v26 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v23, v25, a1, a2, a3);

    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v49);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v48);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v47);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v46);
    type metadata accessor for RunVoiceCommandCATs();
    v27 = v26;
    static CATOption.defaultMode.getter();
    v28 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    v29 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v30 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v27, v49, v48, v28, v29, v47, v46);
    v31 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v32 - 8) + 16))(v13, v43, v32);
    v33 = v45;
    *v31 = v44;
    *(v31 + 1) = v33;
    swift_storeEnumTagMultiPayload();
    v34 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v13, &v7[v34]);
    swift_endAccess();
    v49[0] = v30;
    v35 = swift_allocObject();
    *(v35 + 16) = v7;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
    *(v36 + 24) = v35;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow);
    v37 = v7;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "#WorkflowRunnerFlow does not have shortcutName for handle UserActivity action", v40, 2u);
  }

  static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v68 = a3;
  v66 = a2;
  v67 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v10 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v14, v15, "#WorkflowRunnerFlow createExecuteIntentFlow", v16, 2u);
  }

  v17 = &v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v18 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v20 = *(v17 + 2);

    if (v20)
    {
LABEL_9:
      v65 = a4;
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v74);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v73);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v72);
      outlined init with copy of DeviceState(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v71);
      v21 = [objc_allocWithZone(AFPreferences) init];
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      v22 = static VoiceCommandsAppPolicyHandler.instance;
      v64 = type metadata accessor for WFExecuteCustomIntentFlow();
      v23 = swift_allocObject();
      v24 = type metadata accessor for VoiceCommandsAppPolicyHandler();
      v70[4] = &protocol witness table for VoiceCommandsAppPolicyHandler;
      v70[3] = v24;
      v70[0] = v22;
      outlined init with copy of DeviceState(v73, v23 + 104);
      outlined init with copy of DeviceState(v72, v23 + 144);
      outlined init with copy of DeviceState(v71, v23 + 184);
      *(v23 + 40) = a1;
      *(v23 + 48) = v18;
      *(v23 + 56) = v20;
      outlined init with copy of DeviceState(&v74, v23 + 64);
      *(v23 + 224) = v21;
      outlined init with copy of DeviceState(v70, v23 + 232);
      *(v23 + 272) = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:);
      *(v23 + 280) = 0;
      v25 = a1;

      v26 = v21;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v63 = v12;
        v30 = a5;
        v31 = v26;
        v32 = v29;
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v25;
        *v33 = v25;
        v34 = v25;
        _os_log_impl(&dword_0, v27, v28, "#WFExecuteCustomIntentFlow intent: %@", v32, 0xCu);
        outlined destroy of Any?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v26 = v31;
        a5 = v30;
        v12 = v63;
      }

      v35 = [*(v23 + 40) _metadata];
      if (v35)
      {
        v36 = v35;
        v37 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v35, &selRef_launchId);
        if (v38)
        {
          v61[1] = v37;
          v62 = v26;
          v63 = a5;
          v39 = [v25 typeName];
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v69[0] = v40;
          v69[1] = v42;
          __chkstk_darwin(v43);
          v61[-2] = v69;
          LOBYTE(v39) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v61[-4], &outlined read-only object #0 of one-time initialization function for parityIntentsList);

          if ((v39 & 1) == 0)
          {
            [v36 setExecutionContext:2];
          }

          [v25 _setMetadata:v36];
          type metadata accessor for App();
          v44 = App.__allocating_init(appIdentifier:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          v45 = 0;
LABEL_27:
          v54 = v65;
          *(v23 + 16) = v44;
          *(v23 + 24) = v25;
          *(v23 + 32) = v45;
          v55 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
          (*(*(v56 - 8) + 16))(v12, v66, v56);
          *v55 = v68;
          *(v55 + 1) = v54;
          swift_storeEnumTagMultiPayload();
          v57 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
          swift_beginAccess();

          outlined assign with take of WorkflowRunnerFlow.State(v12, v6 + v57);
          swift_endAccess();
          v74 = v23;
          v58 = swift_allocObject();
          *(v58 + 16) = v6;
          v59 = swift_allocObject();
          *(v59 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createExecuteIntentFlow(intent:iterator:_:);
          *(v59 + 24) = v58;
          _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFExecuteCustomIntentFlow and conformance WFExecuteCustomIntentFlow, type metadata accessor for WFExecuteCustomIntentFlow);
          v60 = v6;
          static ExecuteResponse.ongoing<A>(next:childCompletion:)();
        }
      }

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "#WFExecuteCustomIntentFlow error state because metadata or bundleid is nil", v52, 2u);
      }

      lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v44 = swift_allocError();
      *v53 = 0;

      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      v25 = 0;
      v45 = 4;
      goto LABEL_27;
    }
  }

  else if (!v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v19 = *v17;
    v20 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v18 = v19;
    goto LABEL_9;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "#WorkflowRunnerFlow does not have shortcutName for ExecuteIntent action", v48, 2u);
  }

  return static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[30] = a5;
  v6[31] = v5;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v6[32] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[33] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:), 0, 0);
}

uint64_t WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v18);
    OUTLINED_FUNCTION_68_0();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v24 = *(v14 + 248);

  v25 = (v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput);
  v26 = *(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8);
  if (*(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64) == 3)
  {
    v28 = v25[2];

    if (v28)
    {
      goto LABEL_9;
    }
  }

  else if (!*(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64))
  {
    v27 = *v25;
    v28 = *(v24 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8);

    v26 = v27;
LABEL_9:
    v29 = *(v14 + 264);
    v31 = *(v14 + 240);
    v30 = *(v14 + 248);
    v32 = *(v14 + 224);
    a9 = *(v14 + 232);
    a10 = *(v14 + 256);
    v33 = *(v14 + 216);
    a11 = *(v14 + 208);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState, v14 + 16);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v14 + 56);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider, v14 + 96);
    outlined init with copy of DeviceState(v30 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver, v14 + 136);
    type metadata accessor for RouteDialogRequestResponseFlow();
    swift_allocObject();
    v34 = RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(v26, v28, v33, (v14 + 16), (v14 + 56), (v14 + 96), (v14 + 136));
    v35 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11(v36);
    v38 = *(v37 + 16);
    v39 = OUTLINED_FUNCTION_97();
    v40(v39);
    *v35 = a9;
    v35[1] = v31;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();

    outlined assign with take of WorkflowRunnerFlow.State(v29, v30 + v41);
    swift_endAccess();
    *(v14 + 200) = v34;
    OUTLINED_FUNCTION_21();
    v42 = swift_allocObject();
    *(v42 + 16) = v30;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createShowDialogFlow(dialogRequest:iterator:_:);
    *(v43 + 24) = v42;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow, type metadata accessor for RouteDialogRequestResponseFlow);
    v44 = v30;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    goto LABEL_13;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v46))
  {
    v47 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v47);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_17();
  }

  v53 = *(v14 + 208);

  static ExecuteResponse.complete()();
LABEL_13:
  v54 = *(v14 + 264);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

uint64_t WorkflowRunnerFlow.createOpenInteractionInAppFlow(interaction:iterator:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v31 = a3;
  v32 = a5;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CATOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#WorkflowRunnerFlow createOpenInteractionInAppFlow", v19, 2u);
  }

  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner, v36);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState, v35);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker, v34);
  outlined init with copy of DeviceState(v6 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v33);
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WFOpenInteractionFlow();
  swift_allocObject();
  v22 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(a1, v36, v35, v20, v21, v34, v33);
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v24 - 8) + 16))(v13, a2, v24);
  *v23 = v31;
  *(v23 + 1) = a4;
  swift_storeEnumTagMultiPayload();
  v25 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();

  outlined assign with take of WorkflowRunnerFlow.State(v13, v6 + v25);
  swift_endAccess();
  v36[0] = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WorkflowRunnerFlow.createOpenURLFlow(url:bundleId:iterator:_:);
  *(v27 + 24) = v26;
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow);
  v28 = v6;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

void WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v42 = a5;
  v41 = a4;
  v40 = a3;
  v43 = a6;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CATOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#WorkflowRunnerFlow createOpenAppFlow", v19, 2u);
  }

  v20 = &v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput];
  v21 = *&v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];
  if (v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64] == 3)
  {
    v23 = v20[2];

    if (v23)
    {
      goto LABEL_9;
    }
  }

  else if (!v6[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 64])
  {
    v22 = *v20;
    v23 = *&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput + 8];

    v21 = v22;
LABEL_9:
    v24 = WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(v21, v23, 0, a1, a2);

    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v47);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], v46);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], v45);
    outlined init with copy of DeviceState(&v7[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher], v44);
    type metadata accessor for RunVoiceCommandCATs();
    v25 = v24;
    static CATOption.defaultMode.getter();
    v26 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    v27 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WFOpenInteractionFlow();
    swift_allocObject();
    v28 = WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(v25, v47, v46, v26, v27, v45, v44);
    v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    (*(*(v30 - 8) + 16))(v13, v40, v30);
    v31 = v42;
    *v29 = v41;
    *(v29 + 1) = v31;
    swift_storeEnumTagMultiPayload();
    v32 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    swift_beginAccess();

    outlined assign with take of WorkflowRunnerFlow.State(v13, &v7[v32]);
    swift_endAccess();
    v47[0] = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createOpenAppFlow(bundleId:iterator:_:);
    *(v34 + 24) = v33;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, type metadata accessor for WFOpenInteractionFlow);
    v35 = v7;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    return;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "#WorkflowRunnerFlow does not have shortcutName for Open App action", v38, 2u);
  }

  static ExecuteResponse.complete()();
}

uint64_t WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39[0] = a2;
  v39[1] = a4;
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#WorkflowRunnerFlow createPunchoutRequestedFlow", v15, 2u);
  }

  v16 = &v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState];
  v17 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState], *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24]);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v18 = v39[0];

    return WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(a1, v18, a3);
  }

  else
  {
    v20 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24];
    v21 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32];
    __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v20);
    (*(v21 + 16))(v20, v21);
    v22 = *(v16 + 4);
    __swift_project_boxed_opaque_existential_1(v16, *(v16 + 3));
    if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v5;
      v24 = v5;
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      static AceService.currentAsync.getter();
      type metadata accessor for ShowOutputAndCloseFlow();
      swift_allocObject();
      v25 = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, &v41, &v40, &async function pointer to partial apply for closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:), v23);
      v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
      (*(*(v27 - 8) + 16))(v11, a1, v27);
      *v26 = v39[0];
      *(v26 + 1) = a3;
      swift_storeEnumTagMultiPayload();
      v28 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
      swift_beginAccess();

      outlined assign with take of WorkflowRunnerFlow.State(v11, &v24[v28]);
      swift_endAccess();
      *&v41 = v25;
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      v30 = swift_allocObject();
      *(v30 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:);
      *(v30 + 24) = v29;
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow);
      v31 = v24;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }

    else
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
      (*(*(v32 - 8) + 16))(v11, a1, v32);
      swift_storeEnumTagMultiPayload();
      v33 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
      swift_beginAccess();
      outlined assign with take of WorkflowRunnerFlow.State(v11, &v5[v33]);
      swift_endAccess();
      (v39[0])(1);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "dismissing Siri after punchout request", v36, 2u);
      }

      v37 = *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 32];
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker], *&v5[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24]);
      v38 = [objc_allocWithZone(SAUICloseAssistant) init];
      AceServiceInvokerAsync.submitAndForget(_:)();

      return static ExecuteResponse.complete()();
    }
  }
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for DialogPhase();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.handleDidFinishWithError(error:), 0, 0);
}

void WorkflowRunnerFlow.handleDidFinishWithError(error:)()
{
  OUTLINED_FUNCTION_24_1();
  v59 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v0[29] = v3;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_85();
    v58 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[12];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v58);

    *(v7 + 4) = v14;
    OUTLINED_FUNCTION_101(&dword_0, v15, v16, "#WorkflowRunnerFlow did finish with output has error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_11_0();
  }

  v17 = v0[20];
  swift_getErrorValue();
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[9];
  v0[13] = Error.localizedDescription.getter();
  v0[14] = v21;
  v0[15] = 0xD000000000000020;
  v0[16] = 0x8000000000231090;
  lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v19) = StringProtocol.contains<A>(_:)();

  if (v19)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v23))
    {
      v24 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v24);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_17();
    }

    v30 = v0[19];

    static ExecuteResponse.complete()();
  }

  else
  {
    v31 = v0[20];
    v32 = _convertErrorToNSError(_:)();
    v0[30] = v32;
    v33 = [v32 domain];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v39 = v0[21];
        NSError.filteredLocalizedDescription.getter();
        v0[31] = v40;
        v41 = *(**(v39 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating) + 328);
        v57 = v41 + *v41;
        v42 = v41[1];
        v43 = swift_task_alloc();
        v0[32] = v43;
        *v43 = v0;
        v43[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_103();

        __asm { BRAA            X2, X16 }
      }
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v47))
    {
      v48 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_2(v48);
      _os_log_impl(&dword_0, v46, v3, "#WorkflowRunnerFlow skipping general error dialog for WFSiriExecutionErrorDomain", v34, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v49 = v0[21];
    v50 = v0[19];

    v51 = (v49 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker);
    v52 = *(v49 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24);
    v53 = *(v49 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 32);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v54 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();

    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_103();

  __asm { BRAA            X1, X16 }
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *(v4 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v10 + 264) = v9;
  *(v10 + 272) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[37];
  v3 = v1[36];
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_42_3((*(v0 + 168) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  v1 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v2;
  *v2 = v3;
  v2[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v7 = *(v0 + 240);
  v8 = *(v0 + 152);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[34];
  v2 = v0[29];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v11 = v0[30];
  v12 = v0[19];
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v7 = *(v0 + 312);
  v8 = *(v0 + 232);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v10))
  {
    v11 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v11);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v17 = *(v0 + 240);
  v18 = *(v0 + 152);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_6_0();

  return v19();
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithError(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[33];
  v14 = v12[28];
  v16 = v12[24];
  v15 = v12[25];
  v17 = v12[22];
  v18 = v12[23];
  static DialogPhase.summary.getter();
  v19 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = OUTLINED_FUNCTION_69_0(v18);
  v21(v20);
  OUTLINED_FUNCTION_1_14();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v18 + 8))(v15, v17);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v22 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v22);
  v12[35] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_64();
  v12[36] = v23;
  *(v23 + 16) = xmmword_216010;
  *(v23 + 32) = v13;
  OUTLINED_FUNCTION_59_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[37] = v24;
  *v24 = v25;
  v24[1] = WorkflowRunnerFlow.handleDidFinishWithError(error:);
  v26 = v12[28];
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_27_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v9 = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v3 + 192) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:), 0, 0);
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = type metadata accessor for Logger();
  *(v12 + 208) = __swift_project_value_buffer(v13, static Logger.voiceCommands);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v15))
  {
    v16 = *(v12 + 288);
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    v17[1] = v16;
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v18, v19, v20, v21, v22, 8u);
    OUTLINED_FUNCTION_19_0();
  }

  v23 = *(v12 + 136);

  v24 = *(v23 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState);
  if ((*(*v24 + 272))())
  {
    v25 = *(v12 + 192);
    v26 = *(v12 + 200);
    v27 = *(v12 + 136);
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v82 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WorkflowRunnerFlow.State(v26, v27 + v82);
    swift_endAccess();
    OUTLINED_FUNCTION_23_5();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78();

    return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12);
  }

  v28 = *(v12 + 288);
  OUTLINED_FUNCTION_18_4();
  if (((*(v29 + 240))() & 1) != 0 || v28)
  {
    v62 = (*(*v24 + 256))();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v65 = OUTLINED_FUNCTION_38_4(v64);
    if (v62)
    {
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_44_2(v66);
        OUTLINED_FUNCTION_4_7();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        OUTLINED_FUNCTION_19_0();
      }

      v72 = *(v12 + 192);
      v26 = *(v12 + 200);
      v27 = *(v12 + 136);

      v73 = *(v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 32);
      __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker), *(v27 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24));
      v74 = [objc_allocWithZone(SAUICloseAssistant) init];
      AceServiceInvokerAsync.submitAndForget(_:)();
    }

    else
    {
      if (v65)
      {
        v75 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_44_2(v75);
        OUTLINED_FUNCTION_4_7();
        _os_log_impl(v76, v77, v78, v79, v80, 2u);
        OUTLINED_FUNCTION_19_0();
      }

      v81 = *(v12 + 192);
      v26 = *(v12 + 200);
      v27 = *(v12 + 136);
    }

    OUTLINED_FUNCTION_20_1();
    goto LABEL_20;
  }

  v30 = *(v12 + 184);
  v32 = *(v12 + 152);
  v31 = *(v12 + 160);
  v34 = *(v12 + 136);
  v33 = *(v12 + 144);
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  v35 = *(v34 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple);
  v36 = (v34 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState);
  v37 = *(v34 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24);
  v38 = *(v34 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 32);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  *(v12 + 216) = DeviceState.asSiriKitDeviceState()(v37, v38);
  v39 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  v46 = *(*v35 + class metadata base offset for RunVoiceCommandCATsSimple + 112);
  v91 = *v35 + class metadata base offset for RunVoiceCommandCATsSimple + 112;
  OUTLINED_FUNCTION_16_1();
  v92 = v47 + *v47;
  v49 = *(v48 + 4);
  v50 = swift_task_alloc();
  *(v12 + 224) = v50;
  *v50 = v12;
  v50[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
  v52 = *(v12 + 144);
  v51 = *(v12 + 152);
  OUTLINED_FUNCTION_78();

  return v56(v53, v54, v55, v56, v57, v58, v59, v60, v91, v92, a11, a12);
}

uint64_t WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[28];
  v6 = v4[27];
  v7 = v4[19];
  v8 = v4[18];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v12 + 232) = v11;
  *(v12 + 240) = v0;

  v13 = OUTLINED_FUNCTION_54_1();
  outlined destroy of Any?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_48_2();
  outlined destroy of Any?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[29];
  v2 = v0[23];
  v3 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  v4 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v4);
  v0[31] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64();
  v0[32] = v5;
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v1;
  OUTLINED_FUNCTION_59_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[33] = v6;
  *v6 = v7;
  v6[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
  v8 = v0[23];
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_87();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_42_3((*(v0 + 136) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  v1 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 272) = v2;
  *v2 = v3;
  v2[1] = WorkflowRunnerFlow.handleDidFinishWithOutput(cancelled:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[30];
  v2 = v0[26];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *(v0 + 280);
  v8 = *(v0 + 208);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v10))
  {
    v11 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v11);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_23_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t WorkflowRunnerFlow.createAppProtectionRequestFlow(bundleId:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25[2] = a1;
  v11 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25[1] = a2;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#WorkflowRunnerFlow createAppProtectionRequestFlow", v18, 2u);
  }

  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  v19 = static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)();
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v21 - 8) + 16))(v14, a3, v21);
  *v20 = a4;
  *(v20 + 1) = a5;
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();

  outlined assign with take of WorkflowRunnerFlow.State(v14, v6 + v22);
  swift_endAccess();
  v25[3] = v19;
  *(swift_allocObject() + 16) = v6;
  v23 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a3;
  *(v6 + 240) = a4;
  *(v6 + 320) = a2;
  *(v6 + 224) = a1;
  v7 = type metadata accessor for WorkflowRunnerFlow.State(0);
  *(v6 + 264) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 272) = swift_task_alloc();

  return _swift_task_switch(WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:), 0, 0);
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 256) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider;
  v15 = *(v14 + 8);
  (*v14)(*(v13 + 320));
  if (*(v13 + 80))
  {
    outlined init with take of AceServiceInvokerAsync((v13 + 56), v13 + 16);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_52();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#WorkflowRunnerFlow guardLocationAccess", v19, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v21 = *(v13 + 264);
    v20 = *(v13 + 272);
    v22 = *(v13 + 248);
    v23 = *(v13 + 256);
    v24 = *(v13 + 232);
    v25 = *(v13 + 240);
    v26 = *(v13 + 224);

    v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    OUTLINED_FUNCTION_4_11(v28);
    (*(v29 + 16))(v20, v24);
    *v27 = v25;
    v27[1] = v22;
    swift_storeEnumTagMultiPayload();
    v30 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
    OUTLINED_FUNCTION_57_0();

    outlined assign with take of WorkflowRunnerFlow.State(v20, v23 + v30);
    swift_endAccess();
    v31 = *(v13 + 48);
    __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
    outlined init with copy of DeviceState(v13 + 16, v13 + 136);
    v32 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync((v13 + 136), v32 + 16);
    *(v32 + 56) = v23;
    v33 = *(v31 + 8);
    v34 = v23;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v13 + 16));
    v35 = *(v13 + 272);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  else
  {
    outlined destroy of Any?(v13 + 56, &_s18SiriLinkFlowPlugin0A22LocationAccessGuarding_pSgMd, &_s18SiriLinkFlowPlugin0A22LocationAccessGuarding_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = type metadata accessor for Logger();
    *(v13 + 280) = __swift_project_value_buffer(v45, static Logger.voiceCommands);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v47))
    {
      v48 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v48);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_17();
    }

    v54 = *(v13 + 256);

    OUTLINED_FUNCTION_42_3((v54 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper));
    v55 = *(v12 + 8);
    OUTLINED_FUNCTION_16_1();
    v69 = v56 + *v56;
    v58 = *(v57 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 288) = v59;
    *v59 = v60;
    v59[1] = WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:);
    OUTLINED_FUNCTION_78();

    return v66(v61, v62, v63, v64, v65, v66, v67, v68, v12 + 8, v69, a11, a12);
  }
}

uint64_t WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_42_3((*(v0 + 256) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher));
  v1 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v2;
  *v2 = v3;
  v2[1] = WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v7 = OUTLINED_FUNCTION_16_6();
  *v8 = 0;
  v8[1] = 0;
  *v1 = v7;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WorkflowRunnerFlow.State(v1, v4 + v9);
  swift_endAccess();
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v10 = OUTLINED_FUNCTION_16_6();
  v12 = OUTLINED_FUNCTION_46_2(v10, v11);
  v5(v12);

  v13 = v0[34];

  OUTLINED_FUNCTION_6_0();

  return v14();
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[37];
  v4 = v1[35];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v5, v0))
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    *v2 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v7;
    *v6 = v7;
    OUTLINED_FUNCTION_102(&dword_0, v8, v9, "#WorkflowRunnerFlow guardLocationAccess - error with failure output: %@");
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v11 = v1[30];
  v10 = v1[31];
  v12 = v1[28];

  static ExecuteResponse.ongoing(requireInput:)();

  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v13 = OUTLINED_FUNCTION_16_6();
  v15 = OUTLINED_FUNCTION_46_2(v13, v14);
  v11(v15);

  v16 = v1[34];

  OUTLINED_FUNCTION_6_0();

  return v17();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 12);
  v3 = v1[39];
  v4 = v1[35];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v5, v0))
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    *v2 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v7;
    *v6 = v7;
    OUTLINED_FUNCTION_102(&dword_0, v8, v9, "#WorkflowRunnerFlow guardLocationAccess - error with failure output: %@");
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v11 = v1[30];
  v10 = v1[31];
  v12 = v1[28];

  static ExecuteResponse.ongoing(requireInput:)();

  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v13 = OUTLINED_FUNCTION_16_6();
  v15 = OUTLINED_FUNCTION_46_2(v13, v14);
  v11(v15);

  v16 = v1[34];

  OUTLINED_FUNCTION_6_0();

  return v17();
}

BOOL WorkflowRunnerFlow.isActionable(actionID:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_218720;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000000002310C0;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000000002310F0;
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x8000000000231110;
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x8000000000231140;
  *(inited + 96) = 0xD00000000000001BLL;
  *(inited + 104) = 0x8000000000231160;
  v7[0] = a1;
  v7[1] = a2;
  v6[2] = v7;
  LOBYTE(a2) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v6, inited);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return (a2 & 1) == 0;
}

void closure #1 in WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  outlined init with copy of SiriWorkflowRunnerEvent?(a1, v10, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v25 = a2;
    v26 = v15;
    outlined init with copy of SiriWorkflowRunnerEvent?(v10, v8, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of Any?(v10, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "#WorkflowRunnerFlow SendMailPlan completed with %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {

    outlined destroy of Any?(v10, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = specialized Result<>.linkExitValue.getter();
    v24 = v23;
    WorkflowRunnerFlow.handleLinkExitValue(_:)(v22, v23);
    outlined consume of LinkExitValue(v22, v24);
  }
}

uint64_t specialized Result<>.linkExitValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SendMailResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v22 - v12);
  outlined init with copy of SiriWorkflowRunnerEvent?(v1, v22 - v12, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMd, &_ss6ResultOy16SiriMailInternal04SendcA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v22[1] = *v13;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = _getErrorEmbeddedNSError<A>(_:)();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = swift_allocError();
      *v18 = v14;
    }
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    v17 = (*(v3 + 88))(v7, v2);
    if (v17 == enum case for SendMailResult.success(_:) || v17 == enum case for SendMailResult.failure(_:))
    {
      (*(v3 + 8))(v9, v2);
      (*(v3 + 96))(v7, v2);
      return *v7;
    }

    else if (v17 == enum case for SendMailResult.rejected(_:))
    {
      (*(v3 + 8))(v9, v2);
      return 1;
    }

    else if (v17 == enum case for SendMailResult.done(_:))
    {
      (*(v3 + 8))(v9, v2);
      return 2;
    }

    else
    {
      lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
      v16 = swift_allocError();
      *v20 = xmmword_218730;
      v21 = *(v3 + 8);
      v21(v9, v2);
      v21(v7, v2);
    }
  }

  return v16;
}

void Result<>.linkExitValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = *(v22 + 24);
  OUTLINED_FUNCTION_13_1();
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_50_0();
  v32 = (v30 - v31);
  v34 = __chkstk_darwin(v33);
  v36 = &a9 - v35;
  v37 = *(v34 + 16);
  OUTLINED_FUNCTION_13_1();
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_50_0();
  v45 = (v43 - v44);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_13_1();
  v48 = *(v47 + 64);
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_3();
  v52 = v51 - v50;
  (*(v53 + 16))(v51 - v50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *(v26 + 32);
    v54(v36, v52, v24);
    (*(v26 + 16))(v32, v36, v24);
    v55 = *(v23 + 32);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      v56 = *(v26 + 8);
      v56(v32, v24);
      v56(v36, v24);
    }

    else
    {
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_16_6();
      v54(v81, v32, v24);
      (*(v26 + 8))(v36, v24);
    }
  }

  else
  {
    v57 = v39[4];
    v58 = OUTLINED_FUNCTION_97();
    v59(v58);
    v60 = v39[2];
    v61 = OUTLINED_FUNCTION_20_1();
    v62(v61);
    v63 = v39[11];
    v64 = OUTLINED_FUNCTION_48_2();
    v66 = v65(v64);
    if (v66 == enum case for SendMailResult.success(_:))
    {
      v67 = v39[1];
      v68 = OUTLINED_FUNCTION_54_1();
      v69(v68);
      v70 = v39[12];
      v71 = OUTLINED_FUNCTION_48_2();
      v72(v71);
      v73 = *v45;
    }

    else if (v66 == enum case for SendMailResult.failure(_:))
    {
      v74 = v39[1];
      v75 = OUTLINED_FUNCTION_54_1();
      v76(v75);
      v77 = v39[12];
      v78 = OUTLINED_FUNCTION_48_2();
      v79(v78);
      v80 = *v45;
    }

    else if (v66 == enum case for SendMailResult.rejected(_:))
    {
      v82 = v39[1];
      v83 = OUTLINED_FUNCTION_54_1();
      v84(v83);
    }

    else if (v66 == enum case for SendMailResult.done(_:))
    {
      v85 = v39[1];
      v86 = OUTLINED_FUNCTION_54_1();
      v87(v86);
    }

    else
    {
      lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
      OUTLINED_FUNCTION_16_6();
      *v88 = xmmword_218730;
      v89 = v39[1];
      v90 = OUTLINED_FUNCTION_54_1();
      v89(v90);
      v91 = OUTLINED_FUNCTION_48_2();
      v89(v91);
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t WorkflowRunnerFlow.handleLinkExitValue(_:)(void *a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v108 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v94 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v16 = *(v112 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v112);
  v111 = &v94 - v18;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.voiceCommands);
  outlined copy of LinkExitValue(a1, a2);
  *&v110 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  outlined consume of LinkExitValue(a1, a2);
  v23 = os_log_type_enabled(v21, v22);
  LODWORD(v109) = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v107 = v15;
    v25 = v24;
    v106 = swift_slowAlloc();
    v114 = v106;
    *v25 = 136315138;
    v116 = a1;
    v117 = a2;
    outlined copy of LinkExitValue(a1, a2);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v114);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "#WorkflowRunnerFlow handleLinkExitValue received: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v106);

    v15 = v107;
  }

  v29 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v29, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of WorkflowRunnerFlow.State();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "#WorkflowRunnerFlow handleLinkExitValue received unexpected state", v48, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v49 = swift_allocError();
    *v50 = xmmword_218740;
    *v13 = v49;
    goto LABEL_18;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_SS8bundleIdSo8LNActionC6actionyyc17completionHandlertMR);
  v31 = &v15[v30[12]];
  v32 = *v31;
  v33 = v31[1];

  v34 = &v15[v30[20]];
  v35 = *v34;
  v106 = *(v34 + 1);
  v107 = v35;
  v105 = *(v16 + 32);
  v105(v111, v15, v112);
  if (v109)
  {
    if (v109 == 1)
    {

      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = a1;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v108 = v40;
        v109 = swift_slowAlloc();
        *&v110 = v13;
        v113 = v109;
        *v39 = 138412546;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v41;
        *v40 = v41;
        *(v39 + 12) = 2080;
        v114 = v38;
        v115 = 1;
        swift_errorRetain();
        v42 = String.init<A>(describing:)();
        v44 = v3;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v113);

        *(v39 + 14) = v45;
        v3 = v44;
        _os_log_impl(&dword_0, v36, v37, "#WorkflowRunnerFlow.handleSuccessfulOutput received error %@ for %s", v39, 0x16u);
        outlined destroy of Any?(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        v13 = v110;

        a1 = v38;
      }

      swift_errorRetain();
      (v107)(0, a1);
      outlined consume of LinkExitValue(a1, 1);

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      *v13 = a1;
      v105(v13 + v70, v111, v112);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v71 = v3 + v29;
      goto LABEL_19;
    }

    v108 = v3;
    v109 = (v16 + 32);

    outlined copy of LinkExitValue(a1, 2);
    v62 = Logger.logObject.getter();
    v63 = a1;
    v64 = static os_log_type_t.error.getter();
    outlined consume of LinkExitValue(v63, 2);
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v113 = v66;
      v114 = v63;
      *v65 = 136315138;
      v115 = 2;
      outlined copy of LinkExitValue(v63, 2);
      v67 = String.init<A>(describing:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v113);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_0, v62, v64, "#WorkflowRunnerFlow.handleSuccessfulOutput %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v77 = swift_allocError();
    v110 = xmmword_218730;
    *v78 = xmmword_218730;
    (v107)(0, v77);

    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    *v13 = swift_allocError();
    *v80 = v110;

    v105(v13 + v79, v111, v112);
    swift_storeEnumTagMultiPayload();
    v81 = v108;
    swift_beginAccess();
    v71 = v81 + v29;
  }

  else
  {
    v109 = (v16 + 32);
    v104 = v16;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNActionOutput, LNActionOutput_ptr);
    v51 = a1;
    v52 = static LNActionOutput.shouldSuppressOpensIntent(bundleId:)(v32, v33);

    if (v52)
    {
      v53 = [v51 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v103 = [v51 dialog];
      v102 = [v51 viewSnippet];
      v101 = [v51 snippetAction];
      v100 = [v51 attribution];
      v99 = [v51 value];
      v98 = [v51 showOutputActionHint];
      v97 = [v51 isDeferred];
      v96 = [v51 nextAction];
      v95 = outlined bridged method (pb) of @objc LNActionOutput.suggestedFollowUpActions.getter(v51);
      v94 = outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(v51, &selRef_activityIdentifier);
      v55 = v54;
      v56 = v3;
      v57 = [v51 confirmationActionName];
      v58 = [v51 shouldShowPrompt];
      v59 = [v51 confirmationConditions];
      v60 = [v51 undoContext];
      v61 = objc_allocWithZone(LNActionOutput);
      v93 = v57;
      v3 = v56;
      v51 = @nonobjc LNActionOutput.init(identifier:dialog:viewSnippet:snippetAction:attribution:value:showOutputAction:showOutputActionHint:showOutputActionOptions:deferred:nextAction:suggestedFollowUp:activityIdentifier:confirmationActionName:showPrompt:confirmationConditions:undoContext:)(v108, v103, v102, v101, v100, v99, 0, v98, 0, v97, v96, v95, v94, v55, v93, v58, v59, v60);
      outlined consume of LinkExitValue(a1, 0);
    }

    (v107)(v51, 0);
    v73 = v3;
    v74 = (v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner);
    v75 = *(v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24);
    v76 = *(v3 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32);
    __swift_project_boxed_opaque_existential_1(v74, v75);
    if (((*(v76 + 24))(v75, v76) & 1) != 0 && !LNActionOutput.hasCustomOutput()())
    {
      v82 = *(v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 32);
      __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState), *(v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24));
      v83 = dispatch thunk of DeviceState.isHomePod.getter();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();
      v86 = os_log_type_enabled(v84, v85);
      if (v83)
      {
        if (v86)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v114 = v88;
          *v87 = 136315138;
          *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x8000000000230FD0, &v114);
          _os_log_impl(&dword_0, v84, v85, "%s: concluding flow", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
        }

        else
        {
        }
      }

      else
      {
        if (v86)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v114 = v90;
          *v89 = 136315138;
          *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x8000000000230FD0, &v114);
          _os_log_impl(&dword_0, v84, v85, "%s: dismissing Siri", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v90);
        }

        v91 = *(v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 32);
        __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker), *(v73 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker + 24));
        v92 = [objc_allocWithZone(SAUICloseAssistant) init];
        AceServiceInvokerAsync.submitAndForget(_:)();
      }

      (*(v104 + 8))(v111, v112);
    }

    else
    {

      v105(v13, v111, v112);
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v71 = v73 + v29;
  }

LABEL_19:
  outlined assign with take of WorkflowRunnerFlow.State(v13, v71);
  return swift_endAccess();
}

uint64_t LinkHandlingFlowType.GetFlowConfig.init(bundleId:action:showWhenRun:workflowRunner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return outlined init with take of AceServiceInvokerAsync(a5, a6 + 32);
}

void closure #2 in WorkflowRunnerFlow.createExecuteLinkActionFlow(action:bundleId:showWhenRun:iterator:_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((v2 - 1) >= 2)
    {
      if (v2)
      {
        v1 = 0;
        v2 = 2;
      }

      else
      {
        v1 = [v1 output];
      }
    }

    else
    {
      outlined copy of LinkRCHFlowResult(v1, v2);
      v2 = 1;
    }

    WorkflowRunnerFlow.handleLinkExitValue(_:)(v1, v2);
    outlined consume of LinkExitValue(v1, v2);
  }
}

id LinkRCHFlowResult.linkExitValue.getter(id a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      return 0;
    }

    else
    {
      return [a1 output];
    }
  }

  else
  {
    outlined copy of LinkRCHFlowResult(a1, a2);
  }

  return v2;
}

Class WorkflowRunnerFlow.getINInteractionFromNSUserActivity(shortcutName:userActivity:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INSpeakableString, INSpeakableString_ptr);

  v10 = NSUserActivity.__allocating_init(activityType:)(a1, a2, &selRef_initWithSpokenPhrase_);
  v11 = [objc_allocWithZone(INRunWorkflowIntent) initWithWorkflow:v10];
  outlined bridged method (mbgnn) of @objc INIntent.launchId.setter(a4, a5, v11);
  v12 = [objc_allocWithZone(INRunWorkflowIntentResponse) initWithCode:2 userActivity:a3];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
  v13 = v12;
  v16.value.super.isa = v12;
  isa = INInteraction.__allocating_init(intent:response:)(v11, v16).super.isa;

  return isa;
}

uint64_t WorkflowRunnerFlow.onOpenInteractionFinished(exitValue:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v2 + v16, v10);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v18 = *v17;
    v49 = *(v17 + 1);
    v19 = *(v12 + 32);
    v47 = v18;
    v48 = v19;
    v19(v15, v10, v11);
    if (a1 >> 62)
    {
      if (a1 >> 62 == 1)
      {
        v46 = v4;
        v20 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 24);
        v21 = *(v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner), v20);
        (*(v21 + 16))(v20, v21);
        v47(a1 & 1, 0);

        v48(v8, v15, v11);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.voiceCommands);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v38, v39, "#WorkflowRunnerFlow onOpenInteractionFinished needs handoff, completing the flow...", v40, 2u);
        }

        (*(v12 + 8))(v15, v11);
      }
    }

    else
    {
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.voiceCommands);
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      outlined consume of WFOpenInteractionResponse(a1);
      LODWORD(v46) = v30;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v31;
        v44 = swift_slowAlloc();
        v50 = v44;
        *v31 = 136315138;
        swift_getErrorValue();
        v43 = v29;
        v32 = Error.localizedDescription.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);

        v35 = v45;
        *(v45 + 1) = v34;
        v29 = v43;
        _os_log_impl(&dword_0, v43, v46, "#WorkflowRunnerFlow onOpenInteractionFinished hitting error: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      swift_errorRetain();
      v47(0, a1);
      outlined consume of WFOpenInteractionResponse(a1);

      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      *v8 = a1;
      v48((v8 + v36), v15, v11);
    }
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State();
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#WorkflowRunnerFlow onOpenInteractionFinished received unexpected state", v25, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v26 = swift_allocError();
    *v27 = xmmword_218740;
    *v8 = v26;
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v8, v2 + v16);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.onExecuteCustomIntentFinished(exitValue:)(void *a1, void *a2, char a3)
{
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMd, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v68 - v8;
  v10 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v74 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v68 - v19;
  v21 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v75 = v21;
  v76 = v3;
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v21, v15);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v23 = *v22;
    v71 = *(v22 + 1);
    v72 = v20;
    v25 = *(v17 + 32);
    v24 = v17 + 32;
    v26 = v20;
    v27 = v25;
    v25(v26, v15, v16);
    if (!a3)
    {
      *&v68 = v23;
      v70 = v24;
      v40 = a1;
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.voiceCommands);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v44 = v73;
      outlined consume of CustomIntentExecutionResult(v40, v73, 0);
      v45 = os_log_type_enabled(v42, v43);
      v69 = v10;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        swift_errorRetain();
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&dword_0, v42, v43, "#WorkflowRunnerFlow onExecuteCustomIntentFinished received error: %@", v46, 0xCu);
        outlined destroy of Any?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v77 = v40;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v49 = type metadata accessor for ConfirmIntentResponseError();
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v49);
        v50 = *(v49 - 8);
        v51 = (*(v50 + 88))(v9, v49);
        v52 = enum case for ConfirmIntentResponseError.continueInApp(_:);
        (*(v50 + 8))(v9, v49);
        if (v51 == v52)
        {
          (v68)(0, 0);
          outlined consume of CustomIntentExecutionResult(v40, v44, 0);

          goto LABEL_5;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v49);
        outlined destroy of Any?(v9, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMd, &_s11SiriKitFlow26ConfirmIntentResponseErrorOSgMR);
      }

      swift_errorRetain();
      (v68)(0, v40);
      outlined consume of CustomIntentExecutionResult(v40, v44, 0);

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
      v33 = v74;
      *v74 = v40;
      v27(v33 + v64, v72, v16);
      goto LABEL_25;
    }

    if (a3 == 1)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
      v28 = v23;
      v29 = v73;
      v30 = v73;
      v31 = a1;
      v78.value.super.isa = v29;
      isa = INInteraction.__allocating_init(intent:response:)(v31, v78).super.isa;
      v28(isa, 0);

LABEL_5:
      v33 = v74;
      v27(v74, v72, v16);
      goto LABEL_25;
    }

    v73 = v16;
    v70 = v24;
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.voiceCommands);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v72;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v54, v55, "#WorkflowRunnerFlow onExecuteCustomIntentFinished cancelled", v58, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v59 = swift_allocError();
    v68 = xmmword_218730;
    *v60 = xmmword_218730;
    v23(0, v59);

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    v62 = swift_allocError();
    v33 = v74;
    *v74 = v62;
    *v63 = v68;

    v27(v33 + v61, v57, v73);
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State();
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.voiceCommands);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "#WorkflowRunnerFlow onExecuteCustomIntentFinished received unexpected state", v37, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v38 = swift_allocError();
    *v39 = xmmword_218740;
    v33 = v74;
    *v74 = v38;
  }

LABEL_25:
  swift_storeEnumTagMultiPayload();
  v66 = v75;
  v65 = v76;
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v33, v65 + v66);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.onExecuteDialogRequestFinished(exitValue:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v3 + v18, v12);
  v44 = v6;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of WorkflowRunnerFlow.State();
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.voiceCommands);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#WorkflowRunnerFlow onExecuteDialogRequestFinished received unexpected state", v33, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v34 = swift_allocError();
    *v35 = xmmword_218740;
    *v10 = v34;
    goto LABEL_13;
  }

  v42 = v3;
  v43 = a1;
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v41 = *(v14 + 32);
  v41(v17, v12, v13);
  if (a2)
  {
    v39 = v21;
    v40 = v20;
    v22 = objc_allocWithZone(WFDialogResponse);
    swift_errorRetain();
    v23 = [v22 initWithResponseCode:1];
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.voiceCommands);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v3 = v42;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v25, v26, "#WorkflowRunnerFlow onExecuteDialogRequest received error", v28, 2u);
    }

    v40(v23);

    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMd, &_ss5Error_p_ScS8IteratorVy18SiriLinkFlowPlugin0C19WorkflowRunnerEventO_G8iteratortMR) + 48);
    *v10 = v43;
    v41(v10 + v29, v17, v13);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  v36 = v43;
  v20(v43);
  v37 = [v36 isCancelled];

  if (v37)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v41(v10, v17, v13);
  }

  swift_storeEnumTagMultiPayload();
  v3 = v42;
LABEL_18:
  swift_beginAccess();
  outlined assign with take of WorkflowRunnerFlow.State(v10, v3 + v18);
  return swift_endAccess();
}

uint64_t WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#WorkflowRunnerFlow createUnsupportedPunchOutOnCarPlayFlow", v15, 2u);
  }

  outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher, v27);
  outlined init with copy of DeviceState(v4 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker, v26);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  type metadata accessor for ShowOutputAndCloseFlow();
  swift_allocObject();
  v17 = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, v27, v26, &async function pointer to partial apply for closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:), v16);
  v18 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v19 - 8) + 16))(v11, a1, v19);
  *v18 = a2;
  *(v18 + 1) = a3;
  swift_storeEnumTagMultiPayload();
  v20 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v21 = v4;

  outlined assign with take of WorkflowRunnerFlow.State(v11, v4 + v20);
  swift_endAccess();
  *&v27[0] = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);
  *(v23 + 24) = v22;
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow);
  v24 = v21;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DialogPhase();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:), 0, 0);
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating);
  OUTLINED_FUNCTION_18_4();
  v6 = (*(v2 + 312) + **(v2 + 312));
  v3 = *(*(v2 + 312) + 4);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[10];
    v14 = v5 + 6;
    v13 = v5[6];
    v12 = v14[1];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    v5[12] = v3;
    v17 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[12];
  v14 = v12[10];
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[4];
  v18 = v12[5];
  static DialogPhase.clarification.getter();
  v19 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = OUTLINED_FUNCTION_69_0(v18);
  v21(v20);
  OUTLINED_FUNCTION_1_14();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v18 + 8))(v15, v17);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v22 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v22);
  v12[13] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_64();
  v12[14] = v23;
  *(v23 + 16) = xmmword_216010;
  *(v23 + 32) = v13;
  OUTLINED_FUNCTION_59_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[15] = v24;
  *v24 = v25;
  v24[1] = closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:);
  v26 = v12[10];
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t WorkflowRunnerFlow.punchOutCompletion()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(v1 + v14, v8);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v35 = v2;
    v36 = v6;
    v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v16 = *(v15 + 1);
    v33 = *v15;
    v17 = *(v10 + 32);
    v17(v13, v8, v9);
    v18 = (v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState);
    v34 = v1;
    v19 = *(v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState + 24);
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
    {
      v33(1);

      v30 = v36;
      v17(v36, v13, v9);
      swift_storeEnumTagMultiPayload();
      v31 = v34;
      swift_beginAccess();
      v22 = v31 + v14;
      v29 = v30;
      goto LABEL_11;
    }

    v33(0);

    (*(v10 + 8))(v13, v9);
    v6 = v36;
    swift_storeEnumTagMultiPayload();
    v21 = v34;
    swift_beginAccess();
    v22 = v21 + v14;
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State();
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.voiceCommands);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#WorkflowRunnerFlow punchOutCompletion received unexpected state", v26, 2u);
    }

    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v27 = swift_allocError();
    *v28 = xmmword_218740;
    *v6 = v27;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v22 = v1 + v14;
  }

  v29 = v6;
LABEL_11:
  outlined assign with take of WorkflowRunnerFlow.State(v29, v22);
  return swift_endAccess();
}

uint64_t closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:), 0, 0);
}

uint64_t closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for ShortcutsUnlockDeviceStrategy();
  static Device.current.getter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = static WFDialogState.shared;
  v4 = type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_88_0();
  v8 = type metadata accessor for AppNameResolver();
  v9 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v10 = swift_allocObject();
  *(v0 + 80) = v10;
  *(v10 + 136) = v8;
  *(v10 + 144) = &protocol witness table for AppNameResolver;
  *(v10 + 112) = v9;
  *(v10 + 56) = v3;
  outlined init with take of AceServiceInvokerAsync((v0 + 16), v10 + 16);
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 80) = v5;
  *(v10 + 88) = v6;
  *(v10 + 96) = v7;
  *(v10 + 104) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 88) = v11;
  *v11 = v12;
  v11[1] = closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:);
  v13 = *(v0 + 56);
  OUTLINED_FUNCTION_27_0();

  return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)();
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
    v13 = v3[9];
    v12 = v3[10];

    OUTLINED_FUNCTION_6_0();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[12];

  return v3();
}

uint64_t WorkflowRunnerFlow.onAppResolutionFlowResult(exitValue:)(uint64_t *a1)
{
  v2 = v1;
  v89 = a1;
  v3 = type metadata accessor for AppResolutionFlowResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v88 = &v79 - v9;
  __chkstk_darwin(v8);
  v11 = &v79 - v10;
  v12 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v91 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v79 - v21;
  v23 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  v90 = v23;
  outlined init with copy of WorkflowRunnerFlow.State(v2 + v23, v17);
  v92 = v12;
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v86 = v2;
    v24 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v25 = *(v24 + 1);
    v82 = *v24;
    v26 = *(v19 + 32);
    v84 = v25;
    v85 = v26;
    v26(v22, v17, v18);
    v27 = *(v4 + 16);
    v28 = v89;
    v27(v11, v89, v3);
    v29 = (*(v4 + 88))(v11, v3);
    v83 = v18;
    v30 = v22;
    if (v29 == enum case for AppResolutionFlowResult.resolved(_:))
    {
      (*(v4 + 96))(v11, v3);
      v31 = *v11;
    }

    else
    {
      if (v29 != enum case for AppResolutionFlowResult.resolvedWithIntent(_:))
      {
        if (v29 == enum case for AppResolutionFlowResult.error(_:))
        {
          (*(v4 + 96))(v11, v3);
          v54 = *v11;
          v55 = v11[8];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.voiceCommands);
          swift_errorRetain();
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412546;
            swift_errorRetain();
            v61 = _swift_stdlib_bridgeErrorToNSError();
            *(v59 + 4) = v61;
            *v60 = v61;
            *(v59 + 12) = 1024;
            *(v59 + 14) = v55;
            _os_log_impl(&dword_0, v57, v58, "#WorkflowRunnerFlow onAppResolutionFlowResult w/ error: %@; \n\t handled=%{BOOL}d", v59, 0x12u);
            outlined destroy of Any?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          }

          swift_errorRetain();
          v82(0, v54);
        }

        else
        {
          if (v29 != enum case for AppResolutionFlowResult.cancelled(_:))
          {
            v81 = v4;
            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            __swift_project_value_buffer(v66, static Logger.voiceCommands);
            v67 = v88;
            v27(v88, v28, v3);
            v68 = v3;
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v80 = v71;
              v89 = swift_slowAlloc();
              v94[0] = v89;
              *v71 = 136315138;
              v27(v87, v67, v68);
              v72 = String.init<A>(describing:)();
              v74 = v73;
              LODWORD(v87) = v70;
              v75 = *(v81 + 8);
              v75(v67, v68);
              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v94);

              v77 = v80;
              *(v80 + 1) = v76;
              v78 = v75;
              _os_log_impl(&dword_0, v69, v87, "#WorkflowRunnerFlow onAppResolutionFlowResult received unexpected exitValue: %s", v77, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v89);
            }

            else
            {

              v78 = *(v81 + 8);
              v78(v67, v68);
            }

            v50 = v86;
            v82(0, 0);

            v78(v11, v68);
            goto LABEL_17;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for Logger();
          __swift_project_value_buffer(v62, static Logger.voiceCommands);
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_0, v63, v64, "#WorkflowRunnerFlow onAppResolutionFlowResult cancelled", v65, 2u);
          }

          v82(0, 0);
        }

        v50 = v86;
LABEL_17:
        v51 = v91;
        v85(v91, v30, v83);
        swift_storeEnumTagMultiPayload();
        v52 = v90;
        swift_beginAccess();
        v40 = v50 + v52;
        v41 = v51;
        goto LABEL_18;
      }

      (*(v4 + 96))(v11, v3);
      v31 = *v11;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.voiceCommands);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v31;
      v94[0] = v46;
      *v45 = 136315138;
      type metadata accessor for App();
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v94);

      *(v45 + 4) = v49;

      _os_log_impl(&dword_0, v43, v44, "#WorkflowRunnerFlow onAppResolutionFlowResult resolved app: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
    }

    else
    {
    }

    v50 = v86;
    v82(1, 0);

    goto LABEL_17;
  }

  outlined destroy of WorkflowRunnerFlow.State();
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.voiceCommands);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "#WorkflowRunnerFlow onAppResolutionFlowResult received unexpected state", v35, 2u);
  }

  lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
  v36 = swift_allocError();
  *v37 = xmmword_218740;
  v38 = v91;
  *v91 = v36;
  swift_storeEnumTagMultiPayload();
  v39 = v90;
  swift_beginAccess();
  v40 = v2 + v39;
  v41 = v38;
LABEL_18:
  outlined assign with take of WorkflowRunnerFlow.State(v41, v40);
  return swift_endAccess();
}