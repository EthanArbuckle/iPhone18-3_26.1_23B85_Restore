uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 240);
  v16 = *(v14 + 248);
  v17 = *(v14 + 232);
  v18 = *(v14 + 120);
  v39 = *(v14 + 128);
  v41 = *(v14 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  *(v14 + 256) = ParameterResolutionRecord.app.getter();
  v19 = ParameterResolutionRecord.intent.getter();
  *(v14 + 264) = v19;
  ParameterResolutionRecord.parameter.getter();
  v38 = ParameterIdentifier.name.getter();
  v21 = v20;
  *(v14 + 272) = v20;
  (*(v15 + 8))(v16, v17);
  *(v14 + 280) = ParameterResolutionRecord.result.getter();
  type metadata accessor for WFDialogState();
  v22 = App.appIdentifier.getter();
  static WFDialogState.isAppFirstRun(appId:)(v22, v23);

  outlined init with copy of DeviceState(v39 + 16, v14 + 72);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v14 + 288) = inited;
  outlined init with take of Output(v14 + 72, inited + 16);
  CustomIntentNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:)(v19, v38, v21);
  *(v14 + 344) = INIntent.isRestricted()();
  v25 = *(v39 + 56);
  *(v14 + 296) = v25;
  v40 = (*v25 + 288);
  v42 = *v40 + **v40;
  v26 = (*v40)[1];
  v27 = swift_task_alloc();
  *(v14 + 304) = v27;
  *v27 = v14;
  v27[1] = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  OUTLINED_FUNCTION_6_1();

  return v34(v28, v29, v30, v31, v32, v33, v34, v35, v38, v40, v42, a12, a13, a14);
}

uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  v18 = *(v16 + 280);
  v17 = *(v16 + 288);
  v19 = *(v16 + 256);
  v20 = *(v16 + 264);
  v21 = *(v16 + 216);
  v22 = *(v16 + 224);
  v23 = *(v16 + 200);
  v35 = *(v16 + 208);
  v36 = *(v16 + 248);
  v25 = *(v16 + 184);
  v24 = *(v16 + 192);
  v37 = *(v16 + 176);
  v38 = *(v16 + 168);
  v39 = *(v16 + 144);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v17 + 16));

  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v22, v35);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[13];
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = v12[14];
    v16 = v12[15];
    v17 = v15[3];
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    v12[38] = v19;
    *(v19 + 16) = xmmword_216010;
    *(v19 + 32) = v16;
    v20 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v21 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[39] = v25;
    *v25 = v26;
    v25[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
    v27 = v12[16];
    v28 = v12[12];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v28, v19, v27, v17, v18, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v29 = v12[17];
    v30 = v12[18];
    v31 = INIntent.verb()();
    v12[20] = v31._object;
    v32 = *(*v30 + 152);
    v37 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v12[21] = v34;
    *v34 = v12;
    v34[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
    v35 = v12[18];

    return v37(v31._countAndFlagsBits, v31._object);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v13 = *(v12 + 152);
  v14 = *(v12 + 136);
  v15 = *(v12 + 104);
  v16 = [v14 _title];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v12 + 216) = v19;
  v20 = [v14 _keyImage];
  *(v12 + 224) = v20;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v21 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v12 + 232) = v21;
  v22 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v24 = *(v12 + 192);
    v23 = *(v12 + 200);
    v60 = *(v12 + 176);
    v25 = *(v12 + 136);

    v26 = [v25 _title];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v12 + 40) = &type metadata for WorkflowDataModels.WatchModel;
    *(v12 + 48) = &protocol witness table for WorkflowDataModels.WatchModel;
    v30 = swift_allocObject();
    *(v12 + 16) = v30;

    *(v30 + 16) = v27;
    *(v30 + 24) = v29;
    *(v30 + 32) = v60;
    *(v30 + 48) = v24;
    *(v30 + 56) = v23;
    *(v30 + 64) = 0u;
    *(v30 + 80) = 0u;
    *(v12 + 80) = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_10_40();
    *(v12 + 88) = lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v31, v32);
    __swift_allocate_boxed_opaque_existential_1((v12 + 56));
    v22(v29, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v33 = swift_allocObject();
    *(v12 + 288) = v33;
    *(v33 + 16) = xmmword_216010;
    *(v33 + 32) = v24;
    v34 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v35 = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 296) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_6_38(v36);
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v38, v39, v40, v41, v42, v43, v44, v45, v60, *(&v60 + 1), a11, a12);
  }

  else
  {
    v46 = *(v12 + 136);
    *(v12 + 240) = v17;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v47 = v46;
    v61.value.super.isa = 0;
    isa = INInteraction.__allocating_init(intent:response:)(v47, v61).super.isa;
    *(v12 + 248) = isa;
    v49 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v12 + 256) = v49;
    *(v12 + 40) = v49;
    *(v12 + 48) = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    *(v12 + 264) = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    v50 = v21;
    CodableAceObject.init(wrappedValue:)();
    v51 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    *(v12 + 272) = v51;
    v52 = *(v51 + 20);
    v53 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v54 = *(v51 + 24);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 280) = v55;
    *v55 = v56;
    v55[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
    OUTLINED_FUNCTION_6_1();

    return INImage.convertToVisualProperty()(v57);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v13 = *(v12 + 264);
  v14 = *(v12 + 272);
  v16 = *(v12 + 248);
  v15 = *(v12 + 256);
  v17 = *(v12 + 240);
  v19 = *(v12 + 216);
  v18 = *(v12 + 224);
  v41 = *(v12 + 192);
  v42 = *(v12 + 200);
  v21 = *(v12 + 176);
  v20 = *(v12 + 184);

  v22 = (v13 + *(v14 + 28));
  *v22 = v17;
  v22[1] = v19;
  v23 = (v13 + *(v15 + 20));
  *v23 = v21;
  v23[1] = v20;
  v24 = (v13 + *(v15 + 24));
  *v24 = v41;
  v24[1] = v42;
  *(v12 + 80) = OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_10_40();
  *(v12 + 88) = lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v25, v26);
  __swift_allocate_boxed_opaque_existential_1((v12 + 56));
  v21(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v12 + 288) = v27;
  *(v27 + 16) = xmmword_216010;
  *(v27 + 32) = v19;
  v28 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v29 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 296) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_6_38(v30);
  OUTLINED_FUNCTION_6_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, a12);
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  v3[22] = v7;
  v3[23] = v8;
  v3[24] = v9;
  v3[25] = v10;
  v3[26] = v0;

  if (v0)
  {
    v11 = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
  }

  else
  {
    v12 = v3[20];

    v11 = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 280);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *(v4 + 288);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 312);
  v3 = *(v1 + 304);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 208);

  return v2();
}

void CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_40_0();
  v42 = v24;
  v43 = v25;
  v40 = v26;
  v41 = v27;
  OUTLINED_FUNCTION_5_40();
  v28 = a22[3];
  v29 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v28);
  OUTLINED_FUNCTION_13_1();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  v34 = OUTLINED_FUNCTION_25_19(v33);
  v35(v34);
  v36 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v36, v37, v38, v39, v40, v41, v42, v43, a21, v23, v22, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

uint64_t specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a3;
  v34 = a12;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(a1);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  (*(v15 + 32))(&v33 - v20);
  v22 = (a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName);
  *v22 = a1;
  v22[1] = a2;
  outlined init with copy of DeviceState(a4, a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState);
  v23 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v24 = enum case for SiriKitConfirmationState.unset(_:);
  v25 = type metadata accessor for SiriKitConfirmationState();
  (*(*(v25 - 8) + 104))(a10 + v23, v24, v25);
  outlined init with copy of DeviceState(a4, v43);
  v26 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  outlined init with copy of DeviceState?(v41, v40);

  v29 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v40);
  outlined destroy of SpeakableString?(v41, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  type metadata accessor for CustomIntentNeedsConfirmIntentResponseGenerator();
  v30 = swift_allocObject();
  (*(v15 + 16))(v19, v21, a11);
  v31 = specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v35, v43, v36, v37, v38, v39, v29, v19, v30, a11, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v15 + 8))(v21, a11);
  *(a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) = v31;
  return a10;
}

void *specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v16 = *(a12 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v25 - v21;
  (*(v16 + 32))(&v25 - v21);
  outlined init with copy of DeviceState(a4, v30);
  (*(v16 + 16))(v20, v22, a12);
  v23 = specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v25, v30, v26, v27, v28, v29, a9, v20, a11, a12, a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(v22, a12);
  return v23;
}

uint64_t sub_1F1910()
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

uint64_t type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy()
{
  result = type metadata singleton initialization cache for CustomIntentNeedsConfirmationFlowStrategy;
  if (!type metadata singleton initialization cache for CustomIntentNeedsConfirmationFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CustomIntentNeedsConfirmationFlowStrategy()
{
  result = type metadata accessor for SiriKitConfirmationState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_38(uint64_t a1)
{
  *(a1 + 8) = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
  v2 = *(v1 + 128);
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_17_34()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = *(v0[27] + 8);
  return v0[28];
}

uint64_t OUTLINED_FUNCTION_18_31()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = *(v4 + 8);

  return type metadata accessor for WorkflowDataModels(0);
}

uint64_t OUTLINED_FUNCTION_19_24()
{

  return CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(-1, v0, v1, 0, 0, 0);
}

void OUTLINED_FUNCTION_36_17()
{

  _StringGuts.grow(_:)(77);
}

uint64_t EmptyOutputAndCloseFlow.__allocating_init(shouldClose:aceServiceInvoker:applicationSessionID:)(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(a1, a2, a3, a4);
  return v8;
}

uint64_t EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  outlined init with take of AceServiceInvokerAsync(a2, v4 + 24);
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return v4;
}

uint64_t EmptyOutputAndCloseFlow.execute(completion:)()
{
  v1 = *v0;
  lazy protocol witness table accessor for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow()
{
  result = lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow;
  if (!lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow)
  {
    type metadata accessor for EmptyOutputAndCloseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow);
  }

  return result;
}

uint64_t EmptyOutputAndCloseFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(EmptyOutputAndCloseFlow.execute(), 0, 0);
}

uint64_t EmptyOutputAndCloseFlow.execute()()
{
  v1 = static OutputUtils.makeEmptySnippet(correspondingSessionID:)(*(v0[3] + 64), *(v0[3] + 72));
  v0[4] = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[5] = __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v5, v6, "Submitting empty output");
  }

  v7 = v0[3];

  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v8);
  v10 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[6] = v11;
  v12 = type metadata accessor for SABaseCommand();
  *v11 = v0;
  v11[1] = EmptyOutputAndCloseFlow.execute();

  return AceServiceInvokerAsync.submit<A>(_:)(v1, v8, v12, v9);
}

{
  if (*(v0[3] + 16) == 1)
  {
    v1 = v0[5];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Dismissing Siri for Empty Output", v4, 2u);
    }

    v5 = v0[3];

    v6 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    v7 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v8 = v0[4];
  v9 = v0[2];
  static ExecuteResponse.complete()();

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v6, v7, "Error submitting empty dialog");
  }

  v8 = v0[4];
  v9 = v0[2];
  static ExecuteResponse.complete()();

  v10 = v0[1];

  return v10();
}

uint64_t EmptyOutputAndCloseFlow.execute()(void *a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 56) = v1;

  if (v1)
  {
    v8 = EmptyOutputAndCloseFlow.execute();
  }

  else
  {

    v8 = EmptyOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t EmptyOutputAndCloseFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  return v0;
}

uint64_t EmptyOutputAndCloseFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow;

  return EmptyOutputAndCloseFlow.execute()(a1);
}

uint64_t protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t VoiceCommandsNLIntent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLIntent();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandConfirmation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return OUTLINED_FUNCTION_12_34();
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_28;
    case 13:
      v6 = 1920298854;
      goto LABEL_28;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_28;
    case 18:
      v6 = 1701734766;
LABEL_28:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

void VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      OUTLINED_FUNCTION_38_17();
      break;
    default:
      return;
  }
}

uint64_t VoiceCommandsNLIntent.voiceCommandContact.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for NonTerminalIntentNode();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  if (one-time initialization token for voiceCommandContactNode != -1)
  {
    OUTLINED_FUNCTION_9_33();
  }

  v17 = static VoiceCommandsNLIntent.voiceCommandContactNode;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v18, v19);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of Any?(v5, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    return 0;
  }

  else
  {
    v21 = *(v9 + 32);
    v21(v16, v5, v6);
    (*(v9 + 16))(v14, v16, v6);
    v22 = *(v9 + 8);

    v22(v16, v6);
    v23 = type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
    v20 = OUTLINED_FUNCTION_66(v23);
    v21((v20 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode), v14, v6);
    *(v20 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = v17;
  }

  return v20;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x58)
  {
    return 88;
  }

  else
  {
    return v1;
  }
}

void VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case '2':
    case '3':
    case '@':
    case 'A':
      OUTLINED_FUNCTION_38_17();
      break;
    case 'U':
      OUTLINED_FUNCTION_12_34();
      break;
    default:
      return;
  }
}

uint64_t VoiceCommandsNLIntent.voiceCommandConfirmation.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_37(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v4, v5);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v7;
}

uint64_t one-time initialization function for voiceCommandVerbNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandVerbNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandVerbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandVerbNode;
}

uint64_t one-time initialization function for voiceCommandConfirmationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22();
  static VoiceCommandsNLIntent.voiceCommandConfirmationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandConfirmationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandConfirmationNode;
}

uint64_t one-time initialization function for voiceCommandNameNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandNameNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandNameNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandNameNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandNameNode;
}

uint64_t one-time initialization function for voiceCommandNounNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandNounNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandNounNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandNounNode != -1)
  {
    OUTLINED_FUNCTION_7_38();
  }

  return &static VoiceCommandsNLIntent.voiceCommandNounNode;
}

uint64_t one-time initialization function for voiceCommandCategoryNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandCategoryNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandCategoryNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandCategoryNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandCategoryNode;
}

uint64_t one-time initialization function for voiceCommandDateTimeNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22();
  static VoiceCommandsNLIntent.voiceCommandDateTimeNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandDateTimeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandDateTimeNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandDateTimeNode;
}

uint64_t one-time initialization function for voiceCommandLocationValueNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandLocationValueNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationValueNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationValueNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationValueNode;
}

uint64_t one-time initialization function for voiceCommandLocationIdNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandLocationIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationIdNode;
}

uint64_t one-time initialization function for voiceCommandLocationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216840;
  if (one-time initialization token for voiceCommandLocationValueNode != -1)
  {
    swift_once();
  }

  v1 = static VoiceCommandsNLIntent.voiceCommandLocationValueNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  v3 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = one-time initialization token for voiceCommandLocationIdNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceCommandsNLIntent.voiceCommandLocationIdNode;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static VoiceCommandsNLIntent.voiceCommandLocationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationNode;
}

uint64_t one-time initialization function for voiceCommandReferenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22();
  static VoiceCommandsNLIntent.voiceCommandReferenceNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandReferenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandReferenceNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandReferenceNode;
}

uint64_t one-time initialization function for voiceCommandIdNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandIdNode;
}

uint64_t one-time initialization function for voiceCommandPaginationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22();
  static VoiceCommandsNLIntent.voiceCommandPaginationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandPaginationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandPaginationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandPaginationNode;
}

uint64_t one-time initialization function for voiceCommandTextNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandTextNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandTextNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandTextNode;
}

uint64_t one-time initialization function for voiceCommandScalarNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22();
  static VoiceCommandsNLIntent.voiceCommandScalarNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandScalarNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandScalarNode;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandUnitNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandUnitNode;
}

uint64_t one-time initialization function for voiceCommandUnitNode(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_66(v5);
  result = OUTLINED_FUNCTION_20_22();
  *a4 = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandCurrencyUnitNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode;
}

uint64_t one-time initialization function for voiceCommandContactNode()
{
  v0 = type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactOntologyNode(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandContactNode = result;
  return result;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.__allocating_init(name:multicardinal:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)();
}

uint64_t *VoiceCommandsNLIntent.voiceCommandContactNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactNode != -1)
  {
    OUTLINED_FUNCTION_9_33();
  }

  return &static VoiceCommandsNLIntent.voiceCommandContactNode;
}

uint64_t one-time initialization function for voiceCommandsDomainNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F00;
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  v1 = static VoiceCommandsNLIntent.voiceCommandVerbNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.Verb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR);
  *(v0 + 32) = v1;
  v2 = one-time initialization token for voiceCommandConfirmationNode;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static VoiceCommandsNLIntent.voiceCommandConfirmationNode;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR);
  *(v0 + 104) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandConfirmation> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR);
  *(v0 + 72) = v3;
  v4 = one-time initialization token for voiceCommandNameNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceCommandsNLIntent.voiceCommandNameNode;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 136) = v6;
  v7 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = one-time initialization token for voiceCommandNounNode;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static VoiceCommandsNLIntent.voiceCommandNounNode;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR);
  *(v0 + 184) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandNoun> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR);
  *(v0 + 152) = v9;
  v10 = one-time initialization token for voiceCommandCategoryNode;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static VoiceCommandsNLIntent.voiceCommandCategoryNode;
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 192) = v11;
  v12 = one-time initialization token for voiceCommandDateTimeNode;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static VoiceCommandsNLIntent.voiceCommandDateTimeNode;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  *(v0 + 264) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<TerminalElement.DateTimeValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  *(v0 + 232) = v13;
  v14 = one-time initialization token for voiceCommandLocationNode;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static VoiceCommandsNLIntent.voiceCommandLocationNode;
  *(v0 + 296) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 304) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 272) = v15;
  v16 = one-time initialization token for voiceCommandReferenceNode;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static VoiceCommandsNLIntent.voiceCommandReferenceNode;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR);
  *(v0 + 344) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandReference> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR);
  *(v0 + 312) = v17;
  v18 = one-time initialization token for voiceCommandIdNode;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static VoiceCommandsNLIntent.voiceCommandIdNode;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  *(v0 + 352) = v19;
  v20 = one-time initialization token for voiceCommandPaginationNode;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static VoiceCommandsNLIntent.voiceCommandPaginationNode;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR);
  *(v0 + 424) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandPagination> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR);
  *(v0 + 392) = v21;
  v22 = one-time initialization token for voiceCommandTextNode;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static VoiceCommandsNLIntent.voiceCommandTextNode;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  *(v0 + 432) = v23;
  v24 = one-time initialization token for voiceCommandScalarNode;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static VoiceCommandsNLIntent.voiceCommandScalarNode;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR);
  *(v0 + 504) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<Scalar<Double, VoiceCommandsNLIntent.VoiceCommandScalarUnit>> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR);
  *(v0 + 472) = v25;
  v26 = one-time initialization token for voiceCommandUnitNode;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = static VoiceCommandsNLIntent.voiceCommandUnitNode;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMR);
  *(v0 + 544) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandUnit> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMR);
  *(v0 + 512) = v27;
  v28 = one-time initialization token for voiceCommandCurrencyUnitNode;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMR);
  *(v0 + 584) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandCurrencyUnit> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMR);
  *(v0 + 552) = v29;
  v30 = one-time initialization token for voiceCommandContactNode;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static VoiceCommandsNLIntent.voiceCommandContactNode;
  *(v0 + 616) = type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactOntologyNode(0);
  *(v0 + 624) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 592) = v31;
  v32 = type metadata accessor for DomainOntologyNode();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static VoiceCommandsNLIntent.voiceCommandsDomainNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandsDomainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandsDomainNode != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }

  return &static VoiceCommandsNLIntent.voiceCommandsDomainNode;
}

uint64_t static VoiceCommandsNLIntent.voiceCommandVerbNode.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_37(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
}

uint64_t VoiceCommandsNLIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NLIntent();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t VoiceCommandsNLIntent.domainOntologyNode.getter()
{
  if (one-time initialization token for voiceCommandsDomainNode != -1)
  {
    OUTLINED_FUNCTION_6_39();
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional __swiftcall VoiceCommandsNLIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.Verb.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t VoiceCommandsNLIntent.Verb.rawValue.getter(char a1)
{
  result = 0x796669646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 7239026;
      break;
    case 3:
      result = 1684957542;
      break;
    case 4:
      v3 = 1634038371;
      goto LABEL_7;
    case 5:
      v3 = 1701602660;
LABEL_7:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      result = 7827304;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoiceCommandsNLIntent.Verb(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.Verb@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.Verb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.Verb()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.Verb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandUnit@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandUnit()
{
  v1 = OUTLINED_FUNCTION_46_3();
  VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x59)
  {
    return 89;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit()
{
  v1 = OUTLINED_FUNCTION_46_3();
  VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:), v2);
  OUTLINED_FUNCTION_48_3();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandNoun@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:)();
  *a2 = result;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandReference@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandReference()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:), v3);
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

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandConfirmation@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandConfirmation()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.VoiceCommandConfirmation.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance VoiceCommandsNLIntent.Verb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a4();
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

uint64_t VoiceCommandsNLIntent.voiceCommandDateTime.getter(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v5, v6);
  v7 = OUTLINED_FUNCTION_95();

  return a3(v7);
}

uint64_t VoiceCommandsNLIntent.voiceCommandNoun.getter()
{
  if (one-time initialization token for voiceCommandNounNode != -1)
  {
    OUTLINED_FUNCTION_7_38();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v0, v1);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3;
}

uint64_t VoiceCommandsNLIntent.voiceCommandName.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_37(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v4, v5);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v7;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.__allocating_init(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  v9 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v9);
  (*(v10 + 32))(v7 + v8, a1);
  *(v7 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = a2;
  return v7;
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216850;
  v1 = type metadata accessor for PersonOntologyNode();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = PersonOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v4;
  v5 = type metadata accessor for NonTerminalOntologyNode();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode.unsafeMutableAddressor()
{
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode;
}

uint64_t one-time initialization function for voiceCommandContactIdNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode;
}

uint64_t one-time initialization function for voiceCommandContactName()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactName != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName;
}

uint64_t one-time initialization function for voiceCommandContactReference()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactReference != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216850;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63();
  }

  v1 = static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode;
  *(v0 + 56) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.__deallocating_deinit()
{
  NonTerminalOntologyNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path setter for VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode : VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalIntentNode();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 104))(v7);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  swift_beginAccess();
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  swift_beginAccess();
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t key path setter for VoiceCommandsNLIntent.VoiceCommandContactIntentNode.ontologyNode : VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.ontologyNode.getter()
{
  v1 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.ontologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.init(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  v6 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = a2;
  return v2;
}

uint64_t static VoiceCommandsNLIntent.VoiceCommandContactIntentNode.from(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NonTerminalIntentNode();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  v12 = *(v2 + 144);

  return v12(v10, a2);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for NonTerminalIntentNode();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v28 = v1;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63();
  }

  type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
  OUTLINED_FUNCTION_4_56();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v20, v21);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_43_12(v8);
  if (v22)
  {
    outlined destroy of Any?(v8, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v24 = 1;
  }

  else
  {
    (*(v12 + 32))(v19, v8, v9);
    (*(v12 + 16))(v17, v19, v9);
    v23 = type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_66(v23);
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v12 + 8))(v19, v9);
    v24 = 0;
  }

  v25 = type metadata accessor for PersonIntentNode();
  return __swift_storeEnumTagSinglePayload(a1, v24, 1, v25);
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.contactId.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
  OUTLINED_FUNCTION_4_56();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v4, v5);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v7;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.firstName.getter(uint64_t (*a1)(uint64_t, void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_48_12();
  VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter(v1);
  v8 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v8);
  if (v9)
  {
    outlined destroy of Any?(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    return 0;
  }

  else
  {
    v10 = a1(v2, &protocol witness table for PersonIntentNode);
    OUTLINED_FUNCTION_21_2(v2);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_95();
    v14(v13);
  }

  return v10;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.namePrefix.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_48_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_41_15();
  v11 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v11);
  if (v20)
  {
    v12 = &_s12SiriOntology16PersonIntentNodeVSgMd;
    v13 = &_s12SiriOntology16PersonIntentNodeVSgMR;
    v14 = v1;
LABEL_7:
    outlined destroy of Any?(v14, v12, v13);
    return 0;
  }

  PersonIntentNodeContaining.namePrefix.getter();
  OUTLINED_FUNCTION_21_2(v2);
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_95();
  v18(v17);
  v19 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  OUTLINED_FUNCTION_43_12(v0);
  if (v20)
  {
    v12 = &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd;
    v13 = &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR;
    v14 = v0;
    goto LABEL_7;
  }

  v21 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
  OUTLINED_FUNCTION_21_2(v19);
  v23 = *(v22 + 8);
  v24 = OUTLINED_FUNCTION_9_3();
  v25(v24);
  return v21;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.nameSuffix.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_48_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_41_15();
  v11 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v11);
  if (v20)
  {
    v12 = &_s12SiriOntology16PersonIntentNodeVSgMd;
    v13 = &_s12SiriOntology16PersonIntentNodeVSgMR;
    v14 = v1;
LABEL_7:
    outlined destroy of Any?(v14, v12, v13);
    return 0;
  }

  PersonIntentNodeContaining.namePostfix.getter();
  OUTLINED_FUNCTION_21_2(v2);
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_95();
  v18(v17);
  v19 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  OUTLINED_FUNCTION_43_12(v0);
  if (v20)
  {
    v12 = &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd;
    v13 = &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR;
    v14 = v0;
    goto LABEL_7;
  }

  v21 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
  OUTLINED_FUNCTION_21_2(v19);
  v23 = *(v22 + 8);
  v24 = OUTLINED_FUNCTION_9_3();
  v25(v24);
  return v21;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.deinit()
{
  v1 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  v2 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode);

  return v0;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  v2 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

uint64_t protocol witness for static NonTerminalIntentNodeWrapper.from(intentNode:ontologyNode:) in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static VoiceCommandsNLIntent.VoiceCommandContactIntentNode.from(intentNode:ontologyNode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance VoiceCommandsNLIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NLIntent();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceCommandsNLIntent()
{
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);

  return NLIntentWrapper.description.getter();
}

uint64_t sub_1F8870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1F88D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLIntent();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1F8930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLIntent();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata completion function for VoiceCommandsNLIntent()
{
  result = type metadata accessor for NLIntent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1F8AB4);
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

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA9)
  {
    if (a2 + 87 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 87) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 88;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x58;
  v5 = v6 - 88;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 87 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 87) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA8)
  {
    v6 = ((a2 - 169) >> 8) + 1;
    *result = a2 + 87;
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
        JUMPOUT(0x1F8C50);
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
          *result = a2 + 87;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandCurrencyUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA8)
  {
    if (a2 + 88 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 88) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 89;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v5 = v6 - 89;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandCurrencyUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA7)
  {
    v6 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
        JUMPOUT(0x1F8DECLL);
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
          *result = a2 + 88;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandNoun(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1F8EC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandReference(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandReference(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1F904CLL);
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

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1F9164);
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

uint64_t type metadata completion function for VoiceCommandsNLIntent.VoiceCommandContactIntentNode()
{
  result = type metadata accessor for NonTerminalIntentNode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_41()
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_41_15()
{

  return VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter(v0);
}

uint64_t OUTLINED_FUNCTION_42_15()
{

  return swift_beginAccess();
}

uint64_t CustomIntentStateAttachment.init(customIntent:isConfirming:appBundleId:parameterName:selectionItems:customIntentResponse:pageSize:pageIndex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
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
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  return result;
}

id CustomIntentStateAttachment.asAttachment()()
{
  CustomIntentStateAttachment.asDictionary()();
  v0 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v1);
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomIntentStateAttachment.parameterName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CustomIntentStateAttachment.selectionItems.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t CustomIntentStateAttachment.pageSize.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t CustomIntentStateAttachment.pageSize.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t CustomIntentStateAttachment.pageIndex.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t CustomIntentStateAttachment.pageIndex.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t CustomIntentStateAttachment.asDictionary()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_218720;
  *(inited + 32) = 0x70756F726724;
  *(inited + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v3[6] = 0xD000000000000026;
  v3[7] = v4;
  v3[9] = &type metadata for String;
  v3[10] = 0x7373616C6324;
  OUTLINED_FUNCTION_26_3();
  v5[11] = 0xE600000000000000;
  v5[12] = 0xD00000000000001ALL;
  v5[13] = v6;
  v5[15] = &type metadata for String;
  v5[16] = 0x656D614E65707974;
  v5[17] = 0xE800000000000000;
  v139 = *v1;
  v7 = [*v1 typeName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 144) = v8;
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "integrationApp");
  *(inited + 191) = -18;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_218630;
  *(v11 + 32) = 0x70756F726724;
  *(v11 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v12[6] = 0xD000000000000014;
  v12[7] = v13;
  v12[9] = &type metadata for String;
  v12[10] = 0x7373616C6324;
  v12[11] = 0xE600000000000000;
  v12[12] = 0x6F666E49707041;
  v12[13] = 0xE700000000000000;
  v12[15] = &type metadata for String;
  v12[16] = 0xD000000000000012;
  v12[17] = 0x8000000000235840;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A520;
  *(v14 + 32) = 0x70756F726724;
  *(v14 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v15[6] = 0xD000000000000012;
  v15[7] = v16;
  v15[8] = 0x7373616C6324;
  v15[9] = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v17[10] = 0xD000000000000012;
  v17[11] = v18;
  v17[12] = 30244;
  v17[13] = 0xE200000000000000;
  v17[14] = 808333361;
  v17[15] = 0xE400000000000000;
  v17[16] = 0x6449656C646E7562;
  v17[17] = 0xE800000000000000;
  v19 = *(v1 + 24);
  *(v14 + 144) = *(v1 + 16);
  *(v14 + 152) = v19;

  v20 = Dictionary.init(dictionaryLiteral:)();
  *(v11 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *(v11 + 144) = v20;
  OUTLINED_FUNCTION_26_9();
  v21 = Dictionary.init(dictionaryLiteral:)();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  *(inited + 192) = v21;
  *(inited + 216) = v22;
  *(inited + 224) = 0x696D7269666E6F63;
  *(inited + 232) = 0xEA0000000000676ELL;
  v23 = *(v1 + 8);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = v23;
  v24 = Dictionary.init(dictionaryLiteral:)();
  v32 = v24;
  v33 = *(v1 + 40);
  if (v33)
  {
    *&v155 = *(v1 + 32);
    *(&v155 + 1) = v33;
    OUTLINED_FUNCTION_4_57(v24, v25, v26, v27, v28, v29, v30, v31, v132, v139, v146, v152, v153, v154, v155);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v41 = OUTLINED_FUNCTION_6_40(v34, v35, 0x656D614E72, v36, v37, v38, v39, v40, v133, v140, v147, v152);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, 0x6574656D61726170, v42);
    v43 = v148;
    v44 = CustomIntentStateAttachment.parameterType()();
    OUTLINED_FUNCTION_3_64(v44._countAndFlagsBits, v44._object, v45, v46, v47, v48, v49, v50, v134, v141, v148, v152, v153, v154, v155);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v52, 0x6570795472, isUniquelyReferenced_nonNull_native, v53, v54, v55, v56, v135, v142, v43, v152);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 0x6574656D61726170, v58);
    v59 = CustomIntentStateAttachment.isMulticardinal()();
    v156 = &type metadata for Bool;
    LOBYTE(v155) = v59;
    OUTLINED_FUNCTION_4_57(v59, v60, v61, v62, v63, v64, v65, v66, v136, v143, v149, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v73 = OUTLINED_FUNCTION_6_40(v67, 0x72614369746C756DLL, 0x6C616E6964, v68, v69, v70, v71, v72, v137, v144, v150, v152);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v74, v75);
    v32 = v146;
  }

  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v76 = [v139 _JSONDictionaryRepresentation];
  v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v77);
  v79._rawValue = v78;

  v80 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v79);

  if (v80.value._object)
  {
    v156 = &type metadata for String;
    OUTLINED_FUNCTION_4_57(v81, v82, v83, v84, v85, v86, v87, v88, v132, v139, v146, v152, v153, v154, *&v80);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, 0xD000000000000011, 0x8000000000235900);
    v32 = v146;
  }

  v95 = CustomIntentStateAttachment.intentDefinitionAsJsonString()();
  if (v95.value._object)
  {
    v156 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v95.value._countAndFlagsBits, v95.value._object, v89, v90, v91, v92, v93, v94, v132, v139, v146, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, 0xD00000000000001BLL, 0x80000000002358E0);
    v32 = v146;
  }

  v102 = CustomIntentStateAttachment.intentResponseAsJsonString()();
  if (v102.value._object)
  {
    v156 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v102.value._countAndFlagsBits, v102.value._object, v96, v97, v98, v99, v100, v101, v132, v139, v146, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_9_34(v103, v104, v105);
    v32 = v146;
  }

  v114 = CustomIntentStateAttachment.selectionItemsAsJsonString()();
  object = v114.value._object;
  countAndFlagsBits = v114.value._countAndFlagsBits;
  if (v114.value._object)
  {
    v156 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v114.value._countAndFlagsBits, v114.value._object, v108, v109, v110, v111, v112, v113, v132, v139, v146, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    countAndFlagsBits = OUTLINED_FUNCTION_9_34(v115, v116, v117);
    v32 = v146;
  }

  if ((*(v1 + 72) & 1) == 0 && (*(v1 + 88) & 1) == 0)
  {
    v118 = *(v1 + 64);
    v119 = *(v1 + 80);
    v156 = &type metadata for Int;
    *&v155 = v118;
    OUTLINED_FUNCTION_4_57(countAndFlagsBits, object, v108, v109, v110, v111, v112, v113, v132, v139, v146, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v120 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, 0x657A695365676170, 0xE800000000000000);
    v121 = v151;
    v156 = &type metadata for Int;
    *&v155 = v119;
    OUTLINED_FUNCTION_4_57(v120, v122, v123, v124, v125, v126, v127, v128, v138, v145, v151, v152, v153, v154, v155);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v152, 0x65646E4965676170, 0xE900000000000078);
    v32 = v121;
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v32);
  v130 = v129;

  return v130;
}

Swift::String __swiftcall CustomIntentStateAttachment.parameterType()()
{
  v1 = [*v0 _codableDescription];
  if (*(v0 + 40))
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
  }

  v4 = OUTLINED_FUNCTION_22();
  v6 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v4, v5, v1);

  if (v6)
  {
    if ([v6 valueType] || (v12 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v6)) == 0)
    {
      v23 = static CustomTypeReference.fromSlotValueType(valueType:)([v6 valueType]);
      v24 = v7;

      v8._countAndFlagsBits = 46;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);

      v9._countAndFlagsBits = OUTLINED_FUNCTION_26_9();
      String.append(_:)(v9);
    }

    else
    {
      v13 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v23 = v13;
      v24 = v15;

      v20._countAndFlagsBits = 46;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);

      v21._countAndFlagsBits = v17;
      v21._object = v19;
      String.append(_:)(v21);
    }

    v10 = v23;
    v11 = v24;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Bool __swiftcall CustomIntentStateAttachment.isMulticardinal()()
{
  v1 = [*v0 _codableDescription];
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v3, v4, v1);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 modifier];

  return v6 == 0;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentAsJsonString()()
{
  v1 = *v0;
  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v2 = [v1 _JSONDictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5._rawValue = v4;

  v6 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v5);

  countAndFlagsBits = v6.value._countAndFlagsBits;
  object = v6.value._object;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentDefinitionAsJsonString()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v3 = [*v0 _codableDescription];
  INCodableDescription.asCustomIntentDescription()();

  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMd, &_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMR);
  lazy protocol witness table accessor for type CustomIntentDefinition? and conformance <A> A?();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  outlined consume of Data._Representation(v7, v9);
  v10 = OUTLINED_FUNCTION_22();
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentResponseAsJsonString()()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    countAndFlagsBits = 0;
LABEL_6:
    object = 0;
    goto LABEL_7;
  }

  v2 = objc_allocWithZone(INJSONEncoder);
  v3 = v1;
  v4 = [v2 init];
  v5 = v3;
  v6 = [v5 _codableDescription];
  countAndFlagsBits = [v4 encodeObject:v5 withCodableDescription:v6];

  if (!countAndFlagsBits)
  {

    goto LABEL_6;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  v10._rawValue = v9;

  v11 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v10);
  countAndFlagsBits = v11.value._countAndFlagsBits;
  object = v11.value._object;

LABEL_7:
  v13 = countAndFlagsBits;
  v14 = object;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.selectionItemsAsJsonString()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v3 = [*v0 _codableDescription];
  if (*(v0 + 40))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v4, v5, v3);

  if (!v6)
  {
LABEL_20:
    if (*(v0 + 48))
    {
      v17 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v29[0] = 0;
      v19 = [v17 dataWithJSONObject:isa options:0 error:v29];

      v20 = v29[0];
      if (v19)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_26_9();
        String.init(data:encoding:)();
        v21 = OUTLINED_FUNCTION_26_9();
        outlined consume of Data._Representation(v21, v22);
      }

      else
      {
        v23 = v20;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    goto LABEL_26;
  }

  if ([v6 valueType] != &stru_20.vmsize + 1 || (v7 = *(v0 + 48)) == 0)
  {

    goto LABEL_20;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = (v7 + 32);
    while (1)
    {
      v10 = *v9;

      AnyHashable.init<A>(_:)();
      if (!*(v10 + 16))
      {
        break;
      }

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if ((v12 & 1) == 0)
      {
        break;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v11, v30);
      outlined destroy of AnyHashable(v29);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v13 = 0x616C756261636F76;
      v14 = 0xEF65756C61567972;
LABEL_15:
      v15 = _swiftEmptyArrayStorage[2];
      if (v15 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v13;
      v16[5] = v14;
      ++v9;
      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    outlined destroy of AnyHashable(v29);
LABEL_14:

    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_15;
  }

LABEL_25:
  v29[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v29[0] = &stru_20 + 59;
  v29[1] = 0xE100000000000000;
  v24._countAndFlagsBits = OUTLINED_FUNCTION_26_9();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);

LABEL_26:
  v26 = OUTLINED_FUNCTION_22();
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

id CustomIntentStateAttachment.asAceSerializable(hash:)()
{
  v0 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.dictionaryAsString(hash:)(Swift::OpaquePointer hash)
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v3 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = 0;
  v5 = [v3 dataWithJSONObject:isa options:2 error:&v14];

  v6 = v14;
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    outlined consume of Data._Representation(v7, v9);
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = OUTLINED_FUNCTION_22();
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMd, &_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMR);
    lazy protocol witness table accessor for type CustomIntentDefinition and conformance CustomIntentDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition and conformance CustomIntentDefinition()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentStateAttachment(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for CustomIntentStateAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_3_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *&a15 = a1;
  *(&a15 + 1) = a2;

  return outlined init with take of Any(&a15, &a12);
}

_OWORD *OUTLINED_FUNCTION_4_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return outlined init with take of Any(&a15, &a12);
}

_OWORD *OUTLINED_FUNCTION_9_34(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, v4 + 7, v3 | 0x8000000000000000);
}

uint64_t Signposter.voiceCommands.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static Signposter.voiceCommands);
}

uint64_t static Signposter.voiceCommands.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposter.voiceCommands);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return OUTLINED_FUNCTION_37_15();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_38();
}

{
  OUTLINED_FUNCTION_20_23();
  if (v0)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (v0)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_2_64();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (v0)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_21();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_69();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_3_65();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_38();
}

{
  return OUTLINED_FUNCTION_2_64();
}

{
  return OUTLINED_FUNCTION_3_65();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_38();
}

{
  return OUTLINED_FUNCTION_3_65();
}

{
  return OUTLINED_FUNCTION_2_64();
}

{
  return OUTLINED_FUNCTION_2_64();
}

{
  return OUTLINED_FUNCTION_19_25();
}

{
  OUTLINED_FUNCTION_20_23();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_19_25();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_19_25();
}

{
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_37_15();
}

{
  OUTLINED_FUNCTION_34_19();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23();
  if (v0)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_29_25();
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_26_29();
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_11_39();
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_34_19();
  if (!a1)
  {
    OUTLINED_FUNCTION_28_21();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_34_19();
  OUTLINED_FUNCTION_0_53();
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_34_19();
  a2(a1 & 1);
  OUTLINED_FUNCTION_23_23();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_34_19();
  a2(a1);
  OUTLINED_FUNCTION_23_23();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_49_14();
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  OUTLINED_FUNCTION_29_25();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  return OUTLINED_FUNCTION_17_35();
}

{
  return OUTLINED_FUNCTION_17_35();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_4_58();
}

{
  return OUTLINED_FUNCTION_9_35();
}

{
  OUTLINED_FUNCTION_0_53();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_11_39();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_17_35();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_0_53();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_0_53();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_30_20();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_9_35();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_9_35();
}

{
  OUTLINED_FUNCTION_26_29();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_4_58();
}

{
  return OUTLINED_FUNCTION_4_58();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_35_21();
}

{
  return OUTLINED_FUNCTION_35_21();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_21();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_69();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_25_21();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF18SiriLinkFlowPlugin21SuggestionsCATsSimpleC17PreviousDialogIdsO_Tgq5_0()
{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_38_18();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  if (v0)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  if (v0)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_36_19();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_36_19();
}

{
  OUTLINED_FUNCTION_38_18();
  if (v0)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_39();
}

{
  return OUTLINED_FUNCTION_5_41();
}

{
  OUTLINED_FUNCTION_38_18();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_21();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_5_41();
}

{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_26_29();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_10_42();
}

{
  OUTLINED_FUNCTION_38_18();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_69();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_10_42();
}

{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_0_53();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_18_32();
}

{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_11_39();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_10_42();
}

{
  return OUTLINED_FUNCTION_5_41();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_39();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_18_32();
}

{
  OUTLINED_FUNCTION_38_18();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_18_32();
}

{
  return OUTLINED_FUNCTION_7_39();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  if (v0)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_29_25();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_39();
}

{
  OUTLINED_FUNCTION_49_14();
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  Hasher.init(_seed:)();
  if (!a2)
  {
    OUTLINED_FUNCTION_28_21();
  }

  OUTLINED_FUNCTION_31_21();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2, void (*a3)(void))
{
  Hasher.init(_seed:)();
  a3(a2 & 1);
  OUTLINED_FUNCTION_23_23();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  OUTLINED_FUNCTION_23_23();

  return Hasher._finalize()();
}

SiriLinkFlowPlugin::AskForInputType_optional __swiftcall AskForInputType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AskForInputType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AskForInputType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  OUTLINED_FUNCTION_28_8();
  if (v1)
  {
    return 0x7265626D756ELL;
  }

  else
  {
    return 7107189;
  }
}

unint64_t lazy protocol witness table accessor for type AskForInputType and conformance AskForInputType()
{
  result = lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType;
  if (!lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType;
  if (!lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType);
  }

  return result;
}

SiriLinkFlowPlugin::AskForInputType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AskForInputType@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AskForInputType_optional *a2@<X8>)
{
  result.value = AskForInputType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AskForInputType@<X0>(uint64_t *a1@<X8>)
{
  result = AskForInputType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AskForInputType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1FF4D0);
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

uint64_t OUTLINED_FUNCTION_20_23()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_23_23()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_31_21()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_34_19()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_38_18()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_48_14()
{

  return Hasher.init(_seed:)();
}

uint64_t CustomIntentNeedsValueFlowStrategy.__allocating_init(deviceState:catWrapper:catWrapperSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(a1, a2, a3);
  return v6;
}

void *CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  outlined init with take of Output(a1, v3 + 3);
  v3[8] = a2;
  v3[9] = a3;
  return v3;
}

void CustomIntentNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a3;
  v4 = type metadata accessor for ParameterIdentifier();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v74 = v6;
  v75 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v73 - v19;
  v21 = type metadata accessor for SiriKitConfirmationState();
  v22 = OUTLINED_FUNCTION_7_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(a1, v28);
  v29 = (*(v24 + 88))(v28, v21);
  v30 = enum case for SiriKitConfirmationState.cancelled(_:);
  (*(v24 + 8))(v28, v21);
  if (v29 == v30)
  {
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
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_79(&dword_0, v34, v35, "User cancelled the prompt");
      OUTLINED_FUNCTION_15_0();
    }

    static ActionForInput.cancel()();
  }

  else
  {
    Input.parse.getter();
    v36 = v13[11];
    v37 = OUTLINED_FUNCTION_20_24();
    v39 = v38(v37);
    if (v39 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v40 = v13[1];
      v41 = OUTLINED_FUNCTION_20_24();
      v42(v41);
    }

    else
    {
      if (v39 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v39 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
        {
          static ActionForInput.handle()();
        }

        else
        {
          static ActionForInput.ignore()();
        }

        v63 = v13[1];
        v64 = OUTLINED_FUNCTION_20_24();
        v65(v64);
        return;
      }

      v43 = v13[12];
      v44 = OUTLINED_FUNCTION_20_24();
      v45(v44);
      v46 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

      v47 = type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0(v47);
      (*(v48 + 8))(v20);
    }

    Input.parse.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
    v49 = ParameterResolutionRecord.intent.getter();
    v50 = static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(v18);

    (v13[1])(v18, v10);
    v51 = v76;
    v52 = *(v76 + 16);
    *(v76 + 16) = v50;
    v53 = v50;

    if (v50)
    {
      v54 = v73;
      ParameterResolutionRecord.parameter.getter();
      v55 = ParameterIdentifier.name.getter();
      v57 = v56;
      (*(v74 + 8))(v54, v75);
      static INIntentParameterHelper.extractParameterValue(_:_:)(v53, v55, v57, &v79);
      if (v80)
      {

        outlined destroy of SpeakableString?(&v79, &_sypSgMd, &_sypSgMR);
        static ActionForInput.handle()();
      }

      else
      {
        outlined destroy of SpeakableString?(&v79, &_sypSgMd, &_sypSgMR);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Logger.voiceCommands);

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = OUTLINED_FUNCTION_48();
          v70 = OUTLINED_FUNCTION_85();
          *&v79 = v70;
          *v69 = 136315138;
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v79);

          *(v69 + 4) = v71;
          _os_log_impl(&dword_0, v67, v68, "Updated intent still contains a nil value for %s. Assuming that the user did not answer the prompt and ignoring the input", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
        }

        v72 = *(v51 + 16);
        *(v51 + 16) = 0;

        static ActionForInput.ignore()();
      }
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.voiceCommands);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_79(&dword_0, v61, v62, "CustomIntentNeedsValueFlowStrategy was not able to update intent from parse");
        OUTLINED_FUNCTION_15_0();
      }

      static ActionForInput.ignore()();
    }
  }
}

uint64_t CustomIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v5 = type metadata accessor for Locale();
  v1[46] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[47] = v6;
  v8 = *(v7 + 64);
  v1[48] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for USOParse();
  v1[49] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[50] = v10;
  v12 = *(v11 + 64);
  v1[51] = OUTLINED_FUNCTION_28();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v1[52] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[53] = v14;
  v16 = *(v15 + 64);
  v1[54] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for Parse();
  v1[55] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[56] = v18;
  v20 = *(v19 + 64);
  v1[57] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for ParameterIdentifier();
  v1[58] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v1[59] = v22;
  v24 = *(v23 + 64);
  v1[60] = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for Input();
  v1[61] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v1[62] = v26;
  v28 = *(v27 + 64);
  v1[63] = OUTLINED_FUNCTION_28();
  v29 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v29, v30, v31);
}

{
  v145 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 344);
  v5 = type metadata accessor for Logger();
  *(v0 + 512) = __swift_project_value_buffer(v5, static Logger.voiceCommands);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 496);
  v10 = *(v0 + 504);
  v11 = *(v0 + 488);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_85();
    *&v144[0] = v13;
    *v12 = 136315138;
    v14 = Input.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v144);

    *(v12 + 4) = v17;
    OUTLINED_FUNCTION_101(&dword_0, v18, v19, "CustomIntentNeedsValueFlowStrategy on input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = *(v0 + 472);
  v21 = *(v0 + 480);
  v23 = *(v0 + 456);
  v22 = *(v0 + 464);
  v25 = *(v0 + 440);
  v24 = *(v0 + 448);
  v26 = *(v0 + 416);
  v28 = *(v0 + 344);
  v27 = *(v0 + 352);
  ParameterResolutionRecord.parameter.getter();
  v29 = ParameterIdentifier.name.getter();
  v31 = v30;
  v143 = v29;
  *(v0 + 520) = v29;
  *(v0 + 528) = v30;
  v142 = *(v20 + 8);
  v142(v21, v22);
  Input.parse.getter();
  v32 = (*(v24 + 88))(v23, v25);
  if (v32 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
LABEL_10:
    v37 = *(*(v0 + 360) + 16);
    if (v37)
    {
      v38 = v37;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_48();
        v42 = OUTLINED_FUNCTION_85();
        *&v144[0] = v42;
        *v41 = 136315138;
        v43 = INIntent.debugDescriptionLite.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v144);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_0, v39, v40, "IntentFromParse: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      static INIntentParameterHelper.extractParameterValue(_:_:)(v38, v143, v31, (v0 + 240));
      if (*(v0 + 264))
      {
        outlined init with take of Any((v0 + 240), (v0 + 208));
        outlined init with copy of Any(v0 + 208, v0 + 272);
        v46 = v38;
        v47 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v38, v143, v31, v0 + 272, 0, 1);

        outlined destroy of SpeakableString?(v0 + 272, &_sypSgMd, &_sypSgMR);
        v48 = v47;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_48();
          v52 = OUTLINED_FUNCTION_85();
          *&v144[0] = v52;
          *v51 = 136315138;
          v53 = INIntent.debugDescriptionLite.getter();
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v144);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_0, v49, v50, "Applying value to intent was successful. Transitioning to complete. Updated intent: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        v56 = *(v0 + 336);
        outlined init with copy of Any(v0 + 208, v0 + 304);
        type metadata accessor for INIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      }

      else
      {
        v90 = v38;
        v91 = *(v0 + 424);
        v92 = *(v0 + 432);
        v93 = *(v0 + 416);
        v94 = *(v0 + 352);

        outlined destroy of SpeakableString?(v0 + 240, &_sypSgMd, &_sypSgMR);
        (*(v91 + 16))(v92, v94, v93);
        v95 = v90;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = *(v0 + 480);
          v140 = *(v0 + 464);
          v99 = *(v0 + 424);
          v100 = *(v0 + 432);
          v101 = *(v0 + 416);
          v102 = swift_slowAlloc();
          *&v144[0] = swift_slowAlloc();
          *v102 = 136315394;
          v141 = v97;
          v103 = INIntent.debugDescriptionLite.getter();
          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v144);

          *(v102 + 4) = v105;
          *(v102 + 12) = 2080;
          ParameterResolutionRecord.parameter.getter();
          v106 = ParameterIdentifier.name.getter();
          v108 = v107;
          v142(v98, v140);
          (*(v99 + 8))(v100, v101);
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v144);

          *(v102 + 14) = v109;
          _os_log_impl(&dword_0, v96, v141, "Unable to extract parameter value. Intent: %s, parameterName: %s", v102, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
          v124 = *(v0 + 424);
          v123 = *(v0 + 432);
          v125 = *(v0 + 416);

          (*(v124 + 8))(v123, v125);
        }

        v56 = *(v0 + 336);
        type metadata accessor for INIntent();
        memset(v144, 0, sizeof(v144));
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      }

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
      v67 = v56;
      v68 = 0;
      goto LABEL_34;
    }

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v58))
    {
      v59 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v59);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_17();
    }

    v65 = *(v0 + 336);

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v67 = v65;
LABEL_20:
    v68 = 1;
LABEL_34:
    __swift_storeEnumTagSinglePayload(v67, v68, 1, v66);
    goto LABEL_35;
  }

  if (v32 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v33 = *(v0 + 456);
    (*(*(v0 + 448) + 96))(v33, *(v0 + 440));
    v34 = *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    v35 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_0(v35);
    (*(v36 + 8))(v33);
    goto LABEL_10;
  }

  if (v32 != enum case for Parse.uso(_:))
  {

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v111))
    {
      v112 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v112);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v113, v114, v115, v116, v117, 2u);
      OUTLINED_FUNCTION_17();
    }

    v119 = *(v0 + 448);
    v118 = *(v0 + 456);
    v120 = *(v0 + 440);
    v121 = *(v0 + 336);

    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v122);
    (*(v119 + 8))(v118, v120);
LABEL_35:
    OUTLINED_FUNCTION_18_33();

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v69 = *(v0 + 456);
  v70 = *(v0 + 400);
  v71 = *(v0 + 408);
  v72 = *(v0 + 392);
  (*(*(v0 + 448) + 96))(v69, *(v0 + 440));
  (*(v70 + 32))(v71, v69, v72);
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v129))
    {
      v130 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v130);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v131, v132, v133, v134, v135, 2u);
      OUTLINED_FUNCTION_17();
    }

    v137 = *(v0 + 400);
    v136 = *(v0 + 408);
    v138 = *(v0 + 392);
    v139 = *(v0 + 336);

    (*(v137 + 8))(v136, v138);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v67 = v139;
    goto LABEL_20;
  }

  v73 = *(v0 + 416);
  v74 = *(v0 + 384);
  v75 = *(v0 + 352);
  v76 = *(v0 + 360);
  *(v0 + 536) = ParameterResolutionRecord.intent.getter();
  v77 = v76[7];
  __swift_project_boxed_opaque_existential_1(v76 + 3, v76[6]);
  dispatch thunk of DeviceState.siriLocale.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 544) = v78;
  *v78 = v79;
  v78[1] = CustomIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  v80 = *(v0 + 408);
  v81 = *(v0 + 384);
  OUTLINED_FUNCTION_35_4();

  return static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:)(v82, v83, v84, v85, v86, v87);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1[68];
  v3 = v1[48];
  v4 = v1[47];
  v5 = v1[46];
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  v55 = v1;
  if (*(v1 + 72))
  {
    v2 = *(v1 + 512);
    outlined init with take of Any((v1 + 48), (v1 + 16));
    outlined init with copy of Any(v1 + 16, v1 + 80);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v4))
    {
      v5 = OUTLINED_FUNCTION_48();
      v6 = OUTLINED_FUNCTION_85();
      *&v54[0] = v6;
      *v5 = 136315138;
      outlined init with copy of Any(v1 + 80, v1 + 176);
      v7 = String.init<A>(describing:)();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v54);

      *(v5 + 4) = v10;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_17();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
    }

    v33 = *(v1 + 536);
    v34 = *(v1 + 528);
    v35 = *(v1 + 520);
    v36 = *(v1 + 512);
    outlined init with copy of Any(v1 + 16, v1 + 112);
    v37 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v33, v35, v34, v1 + 112, 0, 1);

    outlined destroy of SpeakableString?(v1 + 112, &_sypSgMd, &_sypSgMR);
    v38 = v37;
    v39 = Logger.logObject.getter();
    LOBYTE(v33) = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v33))
    {
      v40 = OUTLINED_FUNCTION_48();
      v41 = OUTLINED_FUNCTION_85();
      *&v54[0] = v41;
      *v40 = 136315138;
      v42 = INIntent.debugDescriptionLite.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v54);

      *(v40 + 4) = v44;
      OUTLINED_FUNCTION_101(&dword_0, v45, v46, "Applying value to intent was successful. Transitioning to complete. Updated intent: updatedIntent: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v47 = *(v1 + 536);
    v49 = *(v1 + 400);
    v48 = *(v1 + 408);
    v50 = *(v1 + 392);
    v51 = *(v1 + 336);
    outlined init with copy of Any(v1 + 16, v1 + 144);
    type metadata accessor for INIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    (*(v49 + 8))(v48, v50);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v32 = v51;
  }

  else
  {
    v16 = *(v1 + 528);
    v17 = *(v1 + 512);

    outlined destroy of SpeakableString?(v1 + 48, &_sypSgMd, &_sypSgMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v20);
      _os_log_impl(&dword_0, v18, v19, "Could not extract parameter value from USO parse and apply it to INIntent", v0, 2u);
      OUTLINED_FUNCTION_17();
    }

    v21 = *(v1 + 536);
    v23 = *(v1 + 408);
    v22 = *(v1 + 416);
    v24 = *(v1 + 392);
    v25 = *(v1 + 400);
    v26 = *(v1 + 352);
    v27 = *(v1 + 336);

    memset(v54, 0, sizeof(v54));
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for INIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    v28 = *(v25 + 8);
    v29 = OUTLINED_FUNCTION_20_1();
    v30(v29);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v32 = v27;
  }

  __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
  OUTLINED_FUNCTION_18_33();

  OUTLINED_FUNCTION_6_7();

  return v52();
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[17] = v6;
  v8 = *(v7 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[21] = v10;
  v12 = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[23] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for NLContextUpdate();
  v1[26] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[27] = v18;
  v20 = *(v19 + 64);
  v1[28] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for ParameterIdentifier();
  v1[29] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v1[30] = v22;
  v24 = *(v23 + 64);
  v1[31] = OUTLINED_FUNCTION_28();
  v25 = *(*(type metadata accessor for CATOption() - 8) + 64);
  v1[32] = OUTLINED_FUNCTION_28();
  v26 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v26, v27, v28);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  type metadata accessor for WFDialogState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v3 = App.appIdentifier.getter();
  v5 = v4;

  *(v0 + 392) = static WFDialogState.isAppFirstRun(appId:)(v3, v5) & 1;

  outlined init with copy of DeviceState(v2 + 24, v0 + 16);
  v6 = *(v2 + 72);
  v7 = one-time initialization token for shared;
  v28 = *(v2 + 64);

  v27 = v6;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  v29 = *(v0 + 232);
  v11 = *(v0 + 104);
  v12 = static WFDialogState.shared;
  type metadata accessor for RunVoiceCommandCATs();

  static CATOption.defaultMode.getter();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  v14 = type metadata accessor for AppNameResolver();
  v15 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v16 = swift_allocObject();
  *(v0 + 264) = v16;
  *(v16 + 136) = v14;
  *(v16 + 144) = &protocol witness table for AppNameResolver;
  *(v16 + 112) = v15;
  *(v16 + 56) = v12;
  outlined init with take of Output(v0 + 16, v16 + 16);
  *(v16 + 64) = 0;
  *(v16 + 72) = 1;
  *(v16 + 80) = v28;
  *(v16 + 88) = v27;
  *(v16 + 96) = v26;
  *(v16 + 104) = v13;
  outlined init with copy of DeviceState(v2 + 24, v0 + 56);
  type metadata accessor for CustomIntentNLContextProvider();
  v17 = swift_allocObject();
  *(v0 + 272) = v17;
  outlined init with take of Output(v0 + 56, v17 + 16);
  *(v0 + 280) = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v18 = ParameterIdentifier.name.getter();
  v20 = v19;
  *(v0 + 288) = v18;
  *(v0 + 296) = v19;
  (*(v10 + 8))(v8, v29);
  v21 = ParameterResolutionRecord.intent.getter();
  *(v0 + 304) = v21;
  *(v0 + 393) = INIntent.isRestricted()();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 312) = v22;
  *v22 = v23;
  v22[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v24 = *(v0 + 224);

  return CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)(v24, v21, v18, v20);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (v0)
  {
    v9 = *(v3 + 296);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 328) = v5;
    *v5 = v0;
    v5[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v10 = *(v0 + 264);
    v11 = *(v0 + 392);

    return CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)();
  }

  else
  {
    v13 = *(v0 + 393);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 376) = v14;
    *v14 = v15;
    v14[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = *(v0 + 280);
    v19 = *(v0 + 288);
    v20 = *(v0 + 264);
    v21 = *(v0 + 392);
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);
    v25 = *(v0 + 224);

    return CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)(v23, v20, v18, v19, v16, v17, v21, (v13 & 1) == 0);
  }
}

{
  v1 = *(v0 + 344);
  v24 = *(v0 + 393);
  v2 = *(v0 + 216);
  v26 = *(v0 + 224);
  v28 = v1;
  v25 = *(v0 + 208);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v23 = *(v0 + 120);
  static DialogPhase.clarification.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v6 + 16);
  v10 = OUTLINED_FUNCTION_20_24();
  v11(v10);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v7);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v2 + 16))(v23, v26, v25);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v25);
  OutputGenerationManifest.nlContextUpdate.setter();
  v12 = type metadata accessor for ResponseFactory();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 352) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v0 + 360) = v15;
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = v28;
  v16 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v27 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v17 = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 368) = v18;
  *v18 = v19;
  v18[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v20 = *(v0 + 176);
  v21 = *(v0 + 96);

  return v27(v21, v15, v20);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[46];
  v3 = v1[45];
  v4 = v1[44];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[43];
  v2 = v0[38];
  OUTLINED_FUNCTION_19_26();
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_20_1();
  v9(v8);
  v10 = v0[31];
  v11 = v0[32];
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  OUTLINED_FUNCTION_4_59();
  (*(v3 + 8))(v12);

  OUTLINED_FUNCTION_6_7();

  return v15();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *(v4 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 384) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *(v7 + 296);
  v10 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v5 + 336) = v1;

  if (!v1)
  {
    *(v5 + 344) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  OUTLINED_FUNCTION_19_26();

  v12 = v10[31];
  v13 = v10[32];
  v14 = v10[27];
  v15 = v10[28];
  v17 = v10[25];
  v16 = v10[26];
  OUTLINED_FUNCTION_4_59();
  (*(v18 + 8))(v15);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_25_2();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  OUTLINED_FUNCTION_19_26();

  v12 = v10[40];
  v14 = v10[31];
  v13 = v10[32];
  v15 = v10[28];
  v16 = v10[25];
  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  OUTLINED_FUNCTION_19_26();
  v13 = v10[27];
  v12 = v10[28];
  v14 = v10[26];

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_20_1();
  v17(v16);
  v18 = v10[48];
  v20 = v10[31];
  v19 = v10[32];
  v21 = v10[28];
  v22 = v10[25];
  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  OUTLINED_FUNCTION_19_26();
  v13 = v10[27];
  v12 = v10[28];
  v14 = v10[26];

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_20_1();
  v17(v16);
  v18 = v10[42];
  v20 = v10[31];
  v19 = v10[32];
  v21 = v10[28];
  v22 = v10[25];
  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 64) = v33;
  *(v9 + 72) = v8;
  *(v9 + 152) = a8;
  *(v9 + 56) = a1;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  *(v9 + 80) = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for AceOutput();
  *(v9 + 88) = v17;
  OUTLINED_FUNCTION_5_0(v17);
  *(v9 + 96) = v18;
  v20 = *(v19 + 64);
  *(v9 + 104) = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for TemplatingResult();
  *(v9 + 112) = v21;
  OUTLINED_FUNCTION_5_0(v21);
  *(v9 + 120) = v22;
  v24 = *(v23 + 64);
  v25 = OUTLINED_FUNCTION_28();
  *(v9 + 128) = v25;
  v26 = *(*a2 + 184);
  v31 = (v26 + *v26);
  v27 = v26[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v9 + 136) = v28;
  *v28 = v29;
  v28[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:);

  return v31(v25, a3, a4, a5, a6, a7);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)()
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

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[18];

  return v4();
}

void CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v20 = *(v0 + 152);
  v5 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v22 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v22);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = AceOutput.commands.getter();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v10 = *(v0 + 120);
  v19 = *(v0 + 112);
  v21 = *(v0 + 128);
  v18 = *(v0 + 104);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(*(v22 - 8) + 16))(v13, v15, v22);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  v14[3] = v12;
  v14[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v14);
  AceOutput.init(commands:flowActivity:nlContextUpdate:)();

  (*(v11 + 8))(v18, v12);
  (*(v10 + 8))(v21, v19);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentNeedsValueFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t CustomIntentNeedsValueFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsValueFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v13 = v6;
  v13[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v15 = v7;
  v15[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

unint64_t lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy()
{
  result = lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy)
  {
    type metadata accessor for CustomIntentNeedsValueFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy);
  }

  return result;
}

void OUTLINED_FUNCTION_4_59()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
}

uint64_t OUTLINED_FUNCTION_18_33()
{
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[54];
  v6 = v0[51];
  v7 = v0[48];
}

uint64_t OUTLINED_FUNCTION_19_26()
{
  result = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  return result;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(a1, a2, a3, a4);
  return v11;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  v13 = enum case for SiriKitConfirmationState.unset(_:);
  v14 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7(v14);
  (*(v15 + 104))(v5 + v12, v13);
  outlined init with copy of DeviceState(a4, v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_deviceState);
  outlined init with copy of DeviceState(a4, v48);
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_31_1();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v16, &v52);
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_31_1();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v17, &v51);
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_31_1();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v18, &v50);
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_31_1();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v19, &v49);
  v20 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  outlined init with copy of DeviceState?(v46, v45);
  v23 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v45);
  outlined destroy of DeviceState?(v46);
  v24 = type metadata accessor for ResponseFactory();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = ResponseFactory.init()();
  type metadata accessor for CustomIntentConfirmIntentResponseGenerator();
  v28 = swift_allocObject();
  outlined init with copy of DeviceState(v48, v46);
  v45[3] = v24;
  v45[4] = &protocol witness table for ResponseFactory;
  v45[0] = v27;
  v29 = a1;
  v28[10] = a1;
  v28[11] = a2;
  outlined init with copy of DeviceState(v46, (v28 + 2));
  v28[9] = a3;
  v28[12] = v23;
  outlined init with copy of DeviceState(v45, (v28 + 13));
  outlined init with copy of DeviceState(v46, v44);
  v30 = one-time initialization token for shared;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v32 = type metadata accessor for AppNameResolver();
  v33 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v34 = swift_allocObject();
  v42 = v32;
  v43 = &protocol witness table for AppNameResolver;

  *&v41 = v33;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  *(v34 + 56) = v31;
  outlined init with take of AceServiceInvokerAsync(v44, v34 + 16);
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  *(v34 + 80) = v40;
  *(v34 + 88) = v39;
  *(v34 + 96) = v38;
  *(v34 + 104) = v37;
  outlined init with take of AceServiceInvokerAsync(&v41, v34 + 112);
  v28[7] = v34;
  v35 = v28[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v28[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v29, a2, v34, v46, v35);
  *(v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator) = v28;

  return v5;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.actionForInput(_:confirmParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriKitConfirmationState();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v41 - v12;
  v13 = type metadata accessor for Input();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.voiceCommands);
  (*(v16 + 16))(v20, a1, v13);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v44 = a2;
    v42 = v26;
    v48 = v26;
    *v25 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v7;
    v29 = v4;
    v31 = v30;
    (*(v16 + 8))(v20, v13);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v31, &v48);
    v4 = v29;
    v7 = v28;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_0, v22, v23, "#CustomIntentConfirmIntentFlowStrategy actionForInput: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    a1 = v43;
  }

  else
  {

    (*(v16 + 8))(v20, v13);
  }

  v33 = v45;
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(a1, v45);
  v34 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  v35 = v46;
  swift_beginAccess();
  (*(v7 + 40))(v35 + v34, v33, v4);
  swift_endAccess();
  v36 = v47;
  (*(v7 + 16))(v47, v35 + v34, v4);
  v37 = (*(v7 + 88))(v36, v4);
  if (v37 == enum case for SiriKitConfirmationState.unset(_:))
  {
    return static ActionForInput.ignore()();
  }

  v39 = v37;
  if (v37 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    return static ActionForInput.cancel()();
  }

  if (v37 == enum case for SiriKitConfirmationState.confirmed(_:))
  {
    return static ActionForInput.handle()();
  }

  v40 = enum case for SiriKitConfirmationState.rejected(_:);
  result = static ActionForInput.handle()();
  if (v39 != v40)
  {
    return (*(v7 + 8))(v36, v4);
  }

  return result;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for SiriKitConfirmationState();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:), 0, 0);
}

uint64_t CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v6(v1, v4 + v5, v3);
  v7 = (*(v2 + 88))(v1, v3);
  if (v7 == enum case for SiriKitConfirmationState.confirmed(_:))
  {
    v8 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_5:
    v9 = v0[11];
    v10 = v0[8];
    v12 = v0[5];
    v11 = v0[6];
    v13 = *v8;
    v14 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_7(v14);
    (*(v15 + 104))(v10, v13, v14);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
    IntentResolutionRecord.intent.getter();
    type metadata accessor for INIntent();
    ConfirmIntentAnswer.init(confirmationResponse:intent:)();

    OUTLINED_FUNCTION_6_7();
    goto LABEL_7;
  }

  if (v7 == enum case for SiriKitConfirmationState.rejected(_:))
  {
    v8 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_5;
  }

  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[9];
  v22 = v0[8];
  type metadata accessor for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(0);
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors and conformance CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors, type metadata accessor for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors);
  swift_allocError();
  v6(v20, v4 + v5, v19);
  swift_willThrow();
  (*(v18 + 8))(v17, v19);

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v4 = OUTLINED_FUNCTION_8_21(v3);
  v5 = OUTLINED_FUNCTION_8_39(v4);
  OUTLINED_FUNCTION_9_20(v5);
  v7 = *(v6 + 192);
  v15 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_6(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1_70(v10);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:), 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v4 = OUTLINED_FUNCTION_8_21(v3);
  v5 = OUTLINED_FUNCTION_8_39(v4);
  OUTLINED_FUNCTION_9_20(v5);
  v7 = *(v6 + 200);
  v15 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_6(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1_70(v10);

  return v13(v12);
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v4 = OUTLINED_FUNCTION_8_21(v3);
  v5 = OUTLINED_FUNCTION_8_39(v4);
  OUTLINED_FUNCTION_9_20(v5);
  v7 = *(v6 + 200);
  v15 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_6(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1_70(v10);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:), 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v4 = OUTLINED_FUNCTION_8_21(v3);
  v5 = OUTLINED_FUNCTION_8_39(v4);
  OUTLINED_FUNCTION_9_20(v5);
  v7 = *(v6 + 144);
  v15 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_6(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1_70(v10);

  return v13(v12);
}

uint64_t CustomIntentConfirmIntentFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  v2 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_deviceState));
  v4 = *(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator);

  return v0;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.__deallocating_deinit()
{
  CustomIntentConfirmIntentFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  *v9 = v4;
  v9[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  *v9 = v4;
  v9[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v12(a1, a2, a3);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for CustomIntentConfirmIntentFlowStrategy()
{
  result = type metadata accessor for SiriKitConfirmationState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitConfirmationState();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriKitConfirmationState();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t type metadata completion function for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitConfirmationState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_8_39(uint64_t a1)
{
  *(v1 + 48) = a1;

  return IntentResolutionRecord.intentResponse.getter();
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return static CATOption.defaultMode.getter();
}

void OUTLINED_FUNCTION_17_36()
{
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
}

uint64_t AutoShortcutFirstRunWatchVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[69] = v0;
  v1[68] = v2;
  v3 = *(*(type metadata accessor for Separators() - 8) + 64);
  v1[70] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for ComponentWrapper();
  v1[71] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[72] = v5;
  v7 = *(v6 + 64);
  v1[73] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for BinaryButton();
  v1[74] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[75] = v9;
  v11 = *(v10 + 64);
  v1[76] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for Button.LabelStyle();
  v1[77] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[78] = v13;
  v15 = *(v14 + 64);
  v1[79] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for _ProtoButton.FormAction();
  v1[80] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[81] = v17;
  v19 = *(v18 + 64);
  v1[82] = OUTLINED_FUNCTION_28();
  v20 = type metadata accessor for ButtonRole();
  v1[83] = v20;
  OUTLINED_FUNCTION_5_0(v20);
  v1[84] = v21;
  v23 = *(v22 + 64);
  v1[85] = OUTLINED_FUNCTION_28();
  v24 = type metadata accessor for Button();
  v1[86] = v24;
  OUTLINED_FUNCTION_5_0(v24);
  v1[87] = v25;
  v27 = *(v26 + 64) + 15;
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v28 = type metadata accessor for Command();
  v1[92] = v28;
  OUTLINED_FUNCTION_5_0(v28);
  v1[93] = v29;
  v31 = *(v30 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v32 = type metadata accessor for CustomCanvas();
  v1[96] = v32;
  OUTLINED_FUNCTION_5_0(v32);
  v1[97] = v33;
  v35 = *(v34 + 64);
  v1[98] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(AutoShortcutFirstRunWatchVisual.response.getter, 0, 0);
}

{
  v1 = *(v0 + 552);
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  *(v0 + 312) = *v1;
  *(v0 + 320) = 3;
  *(v0 + 328) = v2;
  *(v0 + 336) = v3;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  *(v0 + 360) = v6;
  *(v0 + 368) = v7;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0;
  v8 = one-time initialization token for encoder;

  if (v8 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 224), (v0 + 312), 0x50uLL);
  *(v0 + 304) = 2;
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v63 = *(v0 + 776);
  v61 = *(v0 + 784);
  v62 = *(v0 + 768);
  v9 = *(v0 + 760);
  v52 = *(v0 + 752);
  v10 = *(v0 + 744);
  v42 = v10;
  v11 = *(v0 + 736);
  v66 = *(v0 + 728);
  v53 = *(v0 + 720);
  v57 = *(v0 + 712);
  v58 = *(v0 + 704);
  v54 = *(v0 + 696);
  v55 = *(v0 + 688);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v47 = *(v0 + 664);
  v50 = *(v0 + 656);
  v64 = *(v0 + 648);
  v48 = *(v0 + 640);
  v51 = *(v0 + 632);
  v65 = *(v0 + 624);
  v56 = *(v0 + 608);
  v43 = *(v0 + 600);
  v40 = *(v0 + 616);
  v41 = *(v0 + 592);
  v60 = *(v0 + 584);
  v45 = *(v0 + 576);
  v44 = *(v0 + 568);
  v59 = *(v0 + 560);
  v14 = *(v0 + 552);
  v46 = *(v0 + 544);
  CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_3(inited, xmmword_216850);
  *(v0 + 512) = v16;
  *(v0 + 520) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  inited[6].n128_u64[0] = &type metadata for String;
  inited[4].n128_u64[1] = 7562617;
  inited[5].n128_u64[0] = 0xE300000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  v49 = v11;
  *(v0 + 416) = v11;
  *(v0 + 424) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 392));
  v38 = *(v10 + 16);
  v38(boxed_opaque_existential_1, v9, v11);
  v18 = v14[2];
  v19 = OUTLINED_FUNCTION_5_32(v14[1]);
  v39 = *(v13 + 104);
  v39(v12, enum case for ButtonRole.preferred(_:), v47, v19);
  v36 = enum case for _ProtoButton.FormAction.none(_:);
  v37 = *(v64 + 104);
  v37(v50);
  v20 = enum case for Button.LabelStyle.automatic(_:);
  v21 = *(v65 + 104);
  v21(v51, enum case for Button.LabelStyle.automatic(_:), v40);

  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v22 = swift_initStackObject();
  OUTLINED_FUNCTION_6_3(v22, xmmword_216850);
  *(v0 + 528) = v23;
  *(v0 + 536) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v22[6].n128_u64[0] = &type metadata for String;
  v22[4].n128_u64[1] = 28526;
  v22[5].n128_u64[0] = 0xE200000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 456) = v49;
  *(v0 + 464) = &protocol witness table for Command;
  v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  v38(v24, v52, v49);
  v25 = v14[4];
  v26 = OUTLINED_FUNCTION_5_32(v14[3]);
  (v37)(v50, v36, v48, v26);
  v21(v51, v20, v40);
  (v39)(v12, enum case for ButtonRole.standard(_:), v47);

  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v27 = *(v54 + 16);
  v27(v57, v66, v55);
  v27(v58, v53, v55);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 496) = v41;
  *(v0 + 504) = &protocol witness table for BinaryButton;
  v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 472));
  (*(v43 + 16))(v28, v56, v41);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_216840;
  *(v29 + 56) = v62;
  *(v29 + 64) = &protocol witness table for CustomCanvas;
  v30 = __swift_allocate_boxed_opaque_existential_1((v29 + 32));
  (*(v63 + 16))(v30, v61, v62);
  *(v29 + 96) = v44;
  *(v29 + 104) = &protocol witness table for ComponentWrapper;
  v31 = __swift_allocate_boxed_opaque_existential_1((v29 + 72));
  (*(v45 + 16))(v31, v60, v44);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  outlined destroy of AutoShortcutAppPhrasesViewModel(v0 + 312);
  (*(v45 + 8))(v60, v44);
  (*(v43 + 8))(v56, v41);
  v32 = *(v54 + 8);
  v32(v53, v55);
  v33 = *(v42 + 8);
  v33(v52, v49);
  v32(v66, v55);
  v33(v9, v49);
  (*(v63 + 8))(v61, v62);

  OUTLINED_FUNCTION_6_0();

  return v34();
}

uint64_t AutoShortcutFirstRunWatchVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_28();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = DisambiguationVisual.data.getter;

  return AutoShortcutFirstRunWatchVisual.response.getter();
}

uint64_t RouteDialogRequestResponseFlow.__allocating_init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = swift_allocObject();
  RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t RouteDialogRequestResponseFlow.exitValue.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v3 = v1;
    }

    else
    {
      lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError();
      v3 = swift_allocError();
      *v4 = 0;
    }
  }

  else
  {
    v3 = v1;
  }

  outlined copy of RouteDialogRequestResponseFlow.State(v1, v2);
  return v3;
}

uint64_t RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v8 = v7;
  v13 = type metadata accessor for CATOption();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  outlined init with copy of DeviceState(a4, v8 + 32);
  *(v8 + 72) = a3;
  outlined init with copy of DeviceState(a4, v30);
  v15 = one-time initialization token for shared;
  v26 = a3;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v25 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(v8 + 80) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v30, v16, v25, v17, v18, v19, v20, v21, v22);
  type metadata accessor for WorkflowSnippetProvider();
  v23 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a4);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  *(v8 + 88) = v23;
  outlined init with take of AceServiceInvokerAsync(a5, v8 + 96);
  outlined init with take of AceServiceInvokerAsync(a6, v8 + 136);
  outlined init with take of AceServiceInvokerAsync(a7, v8 + 176);
  *(v8 + 216) = 0;
  *(v8 + 224) = 0x80;
  return v8;
}

unint64_t lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError()
{
  result = lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError;
  if (!lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError;
  if (!lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError);
  }

  return result;
}

id outlined copy of RouteDialogRequestResponseFlow.State(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return swift_errorRetain();
  }

  if (!(a2 >> 6))
  {
    return outlined copy of Result<INIntent, Error>(result, a2 & 1);
  }

  return result;
}

uint64_t RouteDialogRequestResponseFlow.execute(completion:)()
{
  type metadata accessor for RouteDialogRequestResponseFlow();
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow, v0, type metadata accessor for RouteDialogRequestResponseFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RouteDialogRequestResponseFlow.execute()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.execute()()
{
  v29 = v0;
  v1 = v0[7];
  v2 = *(v1 + 224);
  if (!(v2 >> 6))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v18))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v19, v20, "#RouteDialogRequestResponseFlow completed");
      OUTLINED_FUNCTION_15_0();
    }

    v21 = v0[6];

    static ExecuteResponse.complete()();
    goto LABEL_13;
  }

  if (v2 >> 6 == 1)
  {
    v3 = *(v1 + 216);
    swift_errorRetain();
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v4, static Logger.voiceCommands);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    outlined consume of RouteDialogRequestResponseFlow.State(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v10 = v0[2];
      v9 = v0[3];
      v11 = v0[4];
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v28);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_0, v5, v6, "#RouteDialogRequestResponseFlow in error state: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v15 = v0[6];
    static ExecuteResponse.complete()();
    outlined consume of RouteDialogRequestResponseFlow.State(v3, v2);
LABEL_13:
    OUTLINED_FUNCTION_6_0();

    return v22();
  }

  v24 = *(v1 + 72);
  v25 = swift_task_alloc();
  v0[8] = v25;
  *v25 = v0;
  v25[1] = RouteDialogRequestResponseFlow.execute();
  v26 = v0[6];
  v27 = v0[7];

  return RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)(v26, v24);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

void outlined consume of RouteDialogRequestResponseFlow.State(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
    outlined consume of DialogResponse(a1, a2 & 1);
  }
}

void outlined consume of DialogResponse(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)()
{
  v2 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_7_40();
    OUTLINED_FUNCTION_4_60();
    RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)();
    goto LABEL_5;
  }

  v3 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_7_40();
    OUTLINED_FUNCTION_4_60();
    RouteDialogRequestResponseFlow.handleConfirmInteraction(request:)();
    goto LABEL_5;
  }

  v6 = *(v0 + 24);
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_40();
      OUTLINED_FUNCTION_4_60();
      RouteDialogRequestResponseFlow.handleChooseFromList(request:)();
    }

    else
    {
      v11 = *(v0 + 24);
      objc_opt_self();
      OUTLINED_FUNCTION_71();
      if (swift_dynamicCastObjCClass())
      {
        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_4_60();
        RouteDialogRequestResponseFlow.handleInputDate(request:)();
      }

      else
      {
        v12 = *(v0 + 24);
        objc_opt_self();
        OUTLINED_FUNCTION_71();
        if (!swift_dynamicCastObjCClass())
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v13 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v13, static Logger.voiceCommands);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_30_1(v15))
          {
            *OUTLINED_FUNCTION_52() = 0;
            OUTLINED_FUNCTION_26(&dword_0, v16, v17, "#RouteDialogRequestResponseFlow Cannot convert WFDialogRequest to known types");
            OUTLINED_FUNCTION_15_0();
          }

          v18 = *(v0 + 32);
          v19 = *(v0 + 16);

          lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError();
          v20 = swift_allocError();
          *v21 = 1;
          v22 = *(v18 + 216);
          *(v18 + 216) = v20;
          LOBYTE(v21) = *(v18 + 224);
          *(v18 + 224) = 64;
          outlined consume of RouteDialogRequestResponseFlow.State(v22, v21);
          static ExecuteResponse.complete()();
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_4_60();
        RouteDialogRequestResponseFlow.handleInputText(request:)();
      }
    }

LABEL_5:

LABEL_6:
    OUTLINED_FUNCTION_6_0();

    return v4();
  }

  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return RouteDialogRequestResponseFlow.handleHandleInteraction(request:)(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return _swift_task_switch(RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFShowAlertDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  v8 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v9 = dispatch thunk of DeviceState.isWatch.getter();
  if (v9)
  {
    v10 = 0xD000000000000019;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (v9)
  {
    v11 = "CHFlowStrategy.swift";
  }

  else
  {
    v11 = "rCodeUnsupportedInCarPlay";
  }

  v12 = v0[2];
  v13 = v0[3];
  outlined init with copy of DeviceState((v0 + 4), v15);
  type metadata accessor for WFShowAlertFlow();
  swift_allocObject();

  *v15 = WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(v12, v13, v1, v10, v11 | 0x8000000000000000, 0, v15);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFShowAlertFlow and conformance WFShowAlertFlow, 255, type metadata accessor for WFShowAlertFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66();
}

uint64_t RouteDialogRequestResponseFlow.handleConfirmInteraction(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFConfirmInteractionDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 32, v18);
  type metadata accessor for WFConfirmInteractionFlow();
  swift_allocObject();

  v10 = v1;
  v11 = OUTLINED_FUNCTION_22_30();
  v18[0] = WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(v11, v12, v13, v14, v15, v16);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow, 255, type metadata accessor for WFConfirmInteractionFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66();
}

uint64_t RouteDialogRequestResponseFlow.handleHandleInteraction(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.handleHandleInteraction(request:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v4, v5, "#RouteDialogRequestResponseFlow Handling WFHandleInteractionDialogRequest");
    OUTLINED_FUNCTION_15_0();
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8 = [objc_allocWithZone(WFHandleInteractionDialogResponse) initWithInteractionResponseCode:0];
  v9 = *(v7 + 216);
  *(v7 + 216) = v8;
  v10 = *(v7 + 224);
  *(v7 + 224) = 0;
  v11 = v8;
  outlined consume of RouteDialogRequestResponseFlow.State(v9, v10);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t RouteDialogRequestResponseFlow.handleChooseFromList(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFChooseFromListDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 32, v11);
  type metadata accessor for WFChooseFromListFlow();
  swift_allocObject();

  v11[0] = WFChooseFromListFlow.init(shortcutName:request:deviceState:)(v8, v9, v1, v11);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFChooseFromListFlow and conformance WFChooseFromListFlow, 255, type metadata accessor for WFChooseFromListFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66();
}

uint64_t RouteDialogRequestResponseFlow.handleInputDate(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFInputDateDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  outlined init with copy of DeviceState(v0 + 32, v15);
  outlined init with copy of DeviceState(v0 + 96, v14);
  outlined init with copy of DeviceState(v0 + 136, v13);
  outlined init with copy of DeviceState(v0 + 176, v12);
  v8 = type metadata accessor for WFInputDateFlow(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v15[0] = WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(v1, v15, v14, v13, v12);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFInputDateFlow and conformance WFInputDateFlow, 255, type metadata accessor for WFInputDateFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66();
}

uint64_t RouteDialogRequestResponseFlow.handleInputText(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFInputTextDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 32, v14);
  outlined init with copy of DeviceState(v0 + 96, &v13);
  type metadata accessor for WFInputTextFlow();
  swift_allocObject();

  v10 = v1;
  OUTLINED_FUNCTION_22_30();
  WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)();
  v14[0] = v11;
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFInputTextFlow and conformance WFInputTextFlow, 255, type metadata accessor for WFInputTextFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66();
}

void closure #1 in RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 216);
  *(a2 + 216) = *a1;
  v5 = *(a2 + 224);
  *(a2 + 224) = v3;
  outlined copy of Result<INIntent, Error>(v2, v3);

  outlined consume of RouteDialogRequestResponseFlow.State(v4, v5);
}

uint64_t RouteDialogRequestResponseFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  outlined consume of RouteDialogRequestResponseFlow.State(*(v0 + 216), *(v0 + 224));
  return v0;
}

uint64_t RouteDialogRequestResponseFlow.__deallocating_deinit()
{
  RouteDialogRequestResponseFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RouteDialogRequestResponseFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.exitValue.getter in conformance RouteDialogRequestResponseFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for DialogResponse(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DialogResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RouteDialogRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x207A24);
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin026RouteDialogRequestResponseC0C5State33_DC87C00F65912B4D4F384B0FA0B01CC5LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for RouteDialogRequestResponseFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
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

uint64_t storeEnumTagSinglePayload for RouteDialogRequestResponseFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RouteDialogRequestResponseFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66()
{

  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

id OUTLINED_FUNCTION_7_40()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_26()
{
}

uint64_t static OutputUtils.makeTemporaryOutput()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v15 - v4;
  v6 = [objc_allocWithZone(SAUIAddViews) init];
  v7 = [objc_allocWithZone(SAAceView) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v7;
  v9 = v7;
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v8, v6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v10, v11, v6, &selRef_setDialogPhase_);
  [v6 setTemporary:1];
  v12 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  v13 = type metadata accessor for AceOutput();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  a1[3] = v13;
  a1[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(a1);
  static AceOutputHelper.makeAceOutput(addViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v15, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of String?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id static OutputUtils.makeRequestFromDirectInvocation(payload:appId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(a1, a2, a3, a4);
  v5 = [objc_opt_self() wrapCommandInStartLocalRequest:v4];

  return v5;
}

id static OutputUtils.makeEmptySnippet(correspondingSessionID:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  if (a2)
  {
    outlined bridged method (mbgnn) of @objc SAAceView.correspondingSessionID.setter(a1, a2, v4);
  }

  v5 = [objc_allocWithZone(SAUIAddViews) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v4;
  v7 = v4;
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v6, v5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v8, v9, v5, &selRef_setDialogPhase_);

  return v5;
}

uint64_t static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)()
{
  v0 = type metadata accessor for ResponseMode();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.responseMode.getter();
  static ResponseMode.voiceOnly.getter();
  v8 = static ResponseMode.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {

    v10 = 1;
  }

  else
  {
    CurrentRequest.responseMode.getter();
    static ResponseMode.voiceForward.getter();
    v10 = static ResponseMode.== infix(_:_:)();

    v9(v5, v0);
    v9(v7, v0);
  }

  return v10 & 1;
}

id static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(uint64_t a1, uint64_t a2, NSString a3, void *a4)
{
  v6 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v7 = DeviceState.asInvocationContext.getter();
  [v7 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v8 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v7 payload:a1];
  v9 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v10 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v10 setBundleId:a3];

  [v9 setRequestedApp:v10];
  [v8 setAppSelectionState:v9];

  return v8;
}

id static OutputUtils.buildNanoImage(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = [objc_allocWithZone(SAUINanoImageResource) init];
  v7 = outlined bridged method (pb) of @objc INImage._imageData.getter(a1);
  if (v8 >> 60 != 15)
  {
    v9 = v7;
    v10 = v8;
    v11 = v6;
    outlined bridged method (mbgnn) of @objc SAUIImageResource.imageData.setter(v9, v10, v11);

    outlined consume of Data?(v9, v10);
  }

  outlined bridged method (pb) of @objc INImage._identifier.getter(a1);
  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v13, v14, v6, &selRef_setImageDownloadType_);
    v15 = v6;
    URL.init(string:)();

    v16 = type metadata accessor for URL();
    v18 = 0;
    if (__swift_getEnumTagSinglePayload(v5, 1, v16) != 1)
    {
      URL._bridgeToObjectiveC()(v17);
      v18 = v19;
      (*(*(v16 - 8) + 8))(v5, v16);
    }

    [v15 setResourceUrl:v18];
  }

  OUTLINED_FUNCTION_0_54();
  if (v20 <= 0.0 || (OUTLINED_FUNCTION_0_54(), v21 <= 0.0))
  {
    v24 = 30.0;
    [v6 setPixelWidth:30.0];
  }

  else
  {
    v22 = v6;
    OUTLINED_FUNCTION_0_54();
    [v22 setPixelWidth:?];
    OUTLINED_FUNCTION_0_54();
    v24 = v23;
  }

  [v6 setPixelHeight:v24];

  [v6 setBackgroundNeeded:0];
  return v6;
}

uint64_t static OutputUtils.machineUtteranceForDisambiguationItemIndex(index:fallbackString:)(unint64_t a1, uint64_t a2)
{
  if (a1 > 0x18)
  {
    v8 = a2;
  }

  else
  {
    v2 = &outlined read-only object #0 of one-time initialization function for NUMBERICREFERENCENODEVALUES + 2 * a1;
    v3 = v2[4];
    v4 = v2[5];
    v5 = type metadata accessor for MachineUtteranceBuilder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    MachineUtteranceBuilder.init()();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    v8 = dispatch thunk of MachineUtteranceBuilder.build()();
  }

  return v8;
}

id static OutputUtils.makeSendCommandsFromUtterance(utterances:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = objc_allocWithZone(SAStartRequest);

      v7 = [v6 init];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v8, v9, v7, &selRef_setOrigin_);
      outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(v4, v5, v7);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  v11 = [objc_allocWithZone(SASendCommands) init];

  if (_swiftEmptyArrayStorage >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, _sSo20SAServerBoundCommand_pMR);
    v12 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v12 = _swiftEmptyArrayStorage;
  }

  outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(v12, v11);
  return v11;
}

void outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(uint64_t a1, void *a2)
{
  type metadata accessor for SAAceView();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setViews:isa];
}

void outlined bridged method (mbgnn) of @objc SAAceView.correspondingSessionID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setCorrespondingSessionID:v4];
}

uint64_t outlined bridged method (pb) of @objc INImage._identifier.getter(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbgnn) of @objc SAUIImageResource.imageData.setter(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setImageData:isa];
}

void outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setUtterance:v4];
}

void outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, _sSo20SAServerBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

id OUTLINED_FUNCTION_0_54()
{
  v3 = *(v1 + 2528);

  return [v0 v3];
}

uint64_t WFOpenInteractionFlow.__allocating_init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t WFOpenInteractionFlow.exitValue.getter()
{
  v1 = *(v0 + 208);
  if (!(v1 >> 62))
  {
    return *(v0 + 208) & 1 | 0x4000000000000000;
  }

  if (v1 >> 62 == 1)
  {
    v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    swift_errorRetain();
  }

  else
  {
    v2 = 0x8000000000000000;
    if (v1 == 0x8000000000000000)
    {
      lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
      v2 = OUTLINED_FUNCTION_16_6();
      *v3 = 3;
    }
  }

  return v2;
}

void *WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v20))
  {
    v21 = OUTLINED_FUNCTION_52();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#WFOpenInteractionFlow initiated", v21, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v37 = a7;

  v8[2] = a1;
  outlined init with copy of DeviceState(a2, (v8 + 21));
  outlined init with copy of DeviceState(a3, (v8 + 6));
  v35 = a2;
  outlined init with copy of DeviceState(a6, (v8 + 16));
  outlined init with copy of DeviceState(a7, (v8 + 11));
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v36 = a1;
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v23 = type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_66(v23);
  v8[3] = ViewFactory.init(ttsEnabled:)();
  outlined init with copy of DeviceState(a3, v40);
  v24 = one-time initialization token for shared;

  v25 = a4;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v26 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v27 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v29 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v30 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v8[4] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v40, v26, v27, v28, v29, v30, v25, a5, v31);
  type metadata accessor for WorkflowSnippetProvider();
  v32 = OUTLINED_FUNCTION_3_21();
  v33 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v32);

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v8[5] = v33;
  v8[26] = 0x8000000000000000;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v8;
}

unint64_t lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError()
{
  result = lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError;
  if (!lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError;
  if (!lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError);
  }

  return result;
}

uint64_t WFOpenInteractionFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[35] = v2;
  v1[36] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[37] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_22_31(&dword_0, v5, v3, "#WFOpenInteractionFlow execute");
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v0 + 288);

  v7 = *(v6 + 16);
  v8 = [v7 intent];
  *(v0 + 304) = v8;
  outlined bridged method (pb) of @objc INIntent.launchId.getter(v8);
  if (!v9)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v26))
    {
      v27 = OUTLINED_FUNCTION_52();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#WFOpenInteractionFlow do not have app bundle id", v27, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v28 = *(v0 + 280);
    v29 = *(v0 + 288);

    lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v30 = OUTLINED_FUNCTION_16_6();
    *v31 = 0;
    v32 = v30 | 0x4000000000000000;
    v33 = *(v29 + 208);
    *(v29 + 208) = v32;
    outlined consume of WFOpenInteractionFlow.State(v33);
    static ExecuteResponse.complete()();

LABEL_27:
    v57 = *(v0 + 296);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 288);
  type metadata accessor for App();
  OUTLINED_FUNCTION_38_19();
  *(v0 + 312) = App.__allocating_init(appIdentifier:)();
  v11 = [v7 intentResponse];
  *(v0 + 320) = v11;
  v12 = v10[10];
  __swift_project_boxed_opaque_existential_1(v10 + 6, v10[9]);
  OUTLINED_FUNCTION_37_16();
  if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
  {
    v13 = v10[10];
    __swift_project_boxed_opaque_existential_1(v10 + 6, v10[9]);
    OUTLINED_FUNCTION_37_16();
    if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v45))
      {
        v46 = OUTLINED_FUNCTION_52();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "#WFOpenInteractionFlow unlock device", v46, 2u);
        OUTLINED_FUNCTION_24_28();
      }

      v68 = v11;

      static Device.current.getter();
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_6();
      }

      v47 = *(v0 + 296);
      v65 = *(v0 + 288);
      v66 = *(v0 + 280);
      v48 = static WFDialogState.shared;
      type metadata accessor for RunCustomIntentCATs();

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v64 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunCustomIntentCATsSimple();
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v49 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATs();
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v50 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple();
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v51 = CATWrapperSimple.__allocating_init(options:globals:)();
      v52 = type metadata accessor for AppNameResolver();
      v53 = swift_allocObject();
      type metadata accessor for CustomIntentsDialogTemplating();
      v54 = swift_allocObject();
      *(v54 + 136) = v52;
      *(v54 + 144) = &protocol witness table for AppNameResolver;
      *(v54 + 112) = v53;
      *(v54 + 56) = v48;
      outlined init with take of AceServiceInvokerAsync((v0 + 176), v54 + 16);
      *(v54 + 64) = 0;
      *(v54 + 72) = 1;
      *(v54 + 80) = v64;
      *(v54 + 88) = v49;
      *(v54 + 96) = v50;
      *(v54 + 104) = v51;
      outlined init with copy of DeviceState((v10 + 6), v0 + 216);
      type metadata accessor for ShortcutsUnlockDeviceStrategy();
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      outlined init with take of AceServiceInvokerAsync((v0 + 216), v55 + 24);
      *(v0 + 272) = ShortcutsUnlockDeviceStrategy.makeShortcutsUnlockDeviceFlow()();
      v56 = swift_allocObject();
      *(v56 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WFOpenInteractionFlow.execute();
      *(v56 + 24) = v65;
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_26;
    }
  }

  v14 = v10[10];
  __swift_project_boxed_opaque_existential_1(v10 + 6, v10[9]);
  OUTLINED_FUNCTION_3_21();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v67 = v11;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v16))
    {
      v17 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v17);
      OUTLINED_FUNCTION_22_31(&dword_0, v18, v16, "#WFOpenInteractionFlow handoff for HomePod");
      OUTLINED_FUNCTION_17();
    }

    v20 = *(v0 + 280);
    v19 = *(v0 + 288);

    outlined init with copy of DeviceState(v19 + 168, v0 + 16);
    outlined init with copy of DeviceState((v10 + 6), v0 + 56);
    type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy();
    v21 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync((v0 + 16), v21 + 56);
    outlined init with take of AceServiceInvokerAsync((v0 + 56), v21 + 16);
    outlined init with copy of DeviceState((v10 + 6), v0 + 96);
    outlined init with copy of DeviceState(v19 + 88, v0 + 136);
    *(v0 + 256) = v21;
    v22 = type metadata accessor for HandoffSessionToCompanionFlowAsync();
    OUTLINED_FUNCTION_66(v22);
    lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy, 255, type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy);

    v23 = HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)();
    v24 = *(v19 + 208);
    *(v19 + 208) = 0x8000000000000001;
    outlined consume of WFOpenInteractionFlow.State(v24);
    *(v0 + 264) = v23;
    static ExecuteResponse.complete<A>(next:)();

LABEL_26:

    goto LABEL_27;
  }

  v34 = v10[10];
  __swift_project_boxed_opaque_existential_1(v10 + 6, v10[9]);
  OUTLINED_FUNCTION_3_21();
  v35 = dispatch thunk of DeviceState.isCarPlay.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v38 = OUTLINED_FUNCTION_50(v37);
  if (v35)
  {
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v39);
      OUTLINED_FUNCTION_22_31(&dword_0, v40, v37, "#WFOpenInteractionFlow launch app in Carplay");
      OUTLINED_FUNCTION_17();
    }

    v41 = swift_task_alloc();
    *(v0 + 328) = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_33_17(v41);
    OUTLINED_FUNCTION_58();

    return WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)();
  }

  else
  {
    if (v38)
    {
      v60 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v60);
      OUTLINED_FUNCTION_22_31(&dword_0, v61, v37, "#WFOpenInteractionFlow automatic punch out");
      OUTLINED_FUNCTION_17();
    }

    v62 = swift_task_alloc();
    *(v0 + 336) = v62;
    *v62 = v0;
    OUTLINED_FUNCTION_33_17(v62);
    OUTLINED_FUNCTION_58();

    return WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[35];
  static ExecuteResponse.complete()();

  v5 = v0[37];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

unint64_t WFOpenInteractionFlow.onUnlockFinished(exitValue:)(char a1)
{
  if (a1)
  {
    lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v2 = OUTLINED_FUNCTION_16_6();
    *v3 = 6;
    v4 = v2 | 0x4000000000000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 208);
  *(v1 + 208) = v4;

  return outlined consume of WFOpenInteractionFlow.State(v5);
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_15_2();
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = *v0;
  v3 = type metadata accessor for SubmitCommandError();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[15] = v4;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[20] = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_44_18(v7);

  return WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 160);
  *v3 = *v1;
  *(v2 + 168) = v6;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[12];
  v3 = v1[19];
  v2 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v4 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v5 = v0;
  v5[1] = WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:);
  v7 = v0[21];

  return AceServiceInvokerAsync.submit<A>(_:)(v7, v3, v6, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v10 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 96);

  v2 = *(v1 + 208);
  *(v1 + 208) = 1;
  outlined consume of WFOpenInteractionFlow.State(v2);
  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
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
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_22_31(&dword_0, v5, v3, "#WFOpenInteractionFlow makeUnlockForCarplay error code 1305");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[25];

  lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v7 = OUTLINED_FUNCTION_16_6();
  *v8 = 5;

  v9 = v0[12];
  (*(v0[15] + 8))(v0[18], v0[14]);
  v10 = *(v9 + 208);
  *(v9 + 208) = v7 | 0x4000000000000000;
  outlined consume of WFOpenInteractionFlow.State(v10);
  v11 = v0[8];

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

{
  OUTLINED_FUNCTION_14_0();
  v25 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v24 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_25_0(&dword_0, v14, v15, "#WFOpenInteractionFlow makeUnlockForCarplay submit error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v16 = *(v0 + 216);
  lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v17 = OUTLINED_FUNCTION_16_6();
  *v18 = 2;

  v19 = *(v0 + 96);
  (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
  v20 = *(v19 + 208);
  *(v19 + 208) = v17 | 0x4000000000000000;
  outlined consume of WFOpenInteractionFlow.State(v20);
  v21 = *(v0 + 64);

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v22();
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v29;
  a22 = v30;
  a20 = v24;
  v31 = v24[22];
  OUTLINED_FUNCTION_50_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_38_19();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_67_10();
    v32 = OUTLINED_FUNCTION_47_10();
    v28(v32);
    v33 = *(v27 + 16);
    v34 = OUTLINED_FUNCTION_21_27();
    v33(v34);
    v35 = (*(v27 + 88))(v25, v26);
    v36 = v24[17];
    v37 = v24[14];
    v38 = v24[15];
    if (v35 == enum case for SubmitCommandError.failedResponse(_:))
    {
      (*(v38 + 96))(v24[17], v37);
      v39 = *v36;
      v24[25] = v39;
      if ([v39 errorCode] == &stru_518.sectname[1])
      {
        v40 = *(v24[12] + 32);
        v41 = swift_task_alloc();
        v24[26] = v41;
        *v41 = v24;
        OUTLINED_FUNCTION_11_40(v41);
        OUTLINED_FUNCTION_6_1();

        return static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)();
      }
    }

    else
    {
      (*(v38 + 8))(v24[17], v37);
    }

    a9 = v28;
    a10 = v31;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v62 = OUTLINED_FUNCTION_63_11();
    __swift_project_value_buffer(v62, static Logger.voiceCommands);
    v63 = OUTLINED_FUNCTION_57_8();
    v33(v63);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    v66 = os_log_type_enabled(v64, v65);
    v68 = v24[15];
    v67 = v24[16];
    v69 = v24[14];
    if (v66)
    {
      v70 = OUTLINED_FUNCTION_48();
      v71 = OUTLINED_FUNCTION_85();
      a11 = v71;
      *v70 = 136315138;
      OUTLINED_FUNCTION_1_71();
      lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v72, 255, v73);
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_55_6();
      v74 = OUTLINED_FUNCTION_18_34();
      v75(v74);
      v76 = OUTLINED_FUNCTION_60_0();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v78);

      *(v70 + 4) = v79;
      OUTLINED_FUNCTION_25_0(&dword_0, v80, v81, "#WFOpenInteractionFlow makeUnlockForCarplay generic error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_18_34();
      v83(v82);
    }

    v84 = v24[18];
    v85 = v24[14];
    v86 = v24[12];
    OUTLINED_FUNCTION_1_71();
    lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v87, 255, v88);
    v89 = OUTLINED_FUNCTION_16_6();
    v91 = OUTLINED_FUNCTION_48_15(v89, v90);
    v92(v91);
    v93 = *(v86 + 208);
    *(v86 + 208) = v65 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v93);
    v94 = v24[8];
  }

  else
  {
    v44 = *v23;

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_48();
      v49 = OUTLINED_FUNCTION_85();
      a11 = v49;
      OUTLINED_FUNCTION_65_11(4.8149e-34);
      v51 = v24[2];
      v50 = v24[3];
      v52 = v24[4];
      v53 = Error.localizedDescription.getter();
      v22 = v54;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &a11);

      *(v48 + 4) = v55;
      OUTLINED_FUNCTION_66_10(&dword_0, v56, v57, "#WFOpenInteractionFlow makeUnlockForCarplay unknown error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_24_28();
    }

    v58 = v24[12];
    lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v59 = OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_16_37(v59, v60);
    v61 = *(v58 + 208);
    *(v58 + 208) = v22 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v61);
  }

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14);
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v29;
  a22 = v30;
  a20 = v24;

  v31 = *(v24 + 192);
  OUTLINED_FUNCTION_50_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_38_19();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_67_10();
    v32 = OUTLINED_FUNCTION_47_10();
    v28(v32);
    v33 = *(v27 + 16);
    v34 = OUTLINED_FUNCTION_21_27();
    v33(v34);
    v35 = (*(v27 + 88))(v25, v26);
    v36 = *(v24 + 136);
    v37 = *(v24 + 112);
    v38 = *(v24 + 120);
    if (v35 == enum case for SubmitCommandError.failedResponse(_:))
    {
      (*(v38 + 96))(*(v24 + 136), v37);
      v39 = *v36;
      *(v24 + 200) = v39;
      if ([v39 errorCode] == &stru_518.sectname[1])
      {
        v40 = *(*(v24 + 96) + 32);
        v41 = swift_task_alloc();
        *(v24 + 208) = v41;
        *v41 = v24;
        OUTLINED_FUNCTION_11_40(v41);
        OUTLINED_FUNCTION_6_1();

        return static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)();
      }
    }

    else
    {
      (*(v38 + 8))(*(v24 + 136), v37);
    }

    a9 = v28;
    a10 = v31;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v62 = OUTLINED_FUNCTION_63_11();
    __swift_project_value_buffer(v62, static Logger.voiceCommands);
    v63 = OUTLINED_FUNCTION_57_8();
    v33(v63);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    v66 = os_log_type_enabled(v64, v65);
    v68 = *(v24 + 120);
    v67 = *(v24 + 128);
    v69 = *(v24 + 112);
    if (v66)
    {
      v70 = OUTLINED_FUNCTION_48();
      v71 = OUTLINED_FUNCTION_85();
      a11 = v71;
      *v70 = 136315138;
      OUTLINED_FUNCTION_1_71();
      lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v72, 255, v73);
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_55_6();
      v74 = OUTLINED_FUNCTION_18_34();
      v75(v74);
      v76 = OUTLINED_FUNCTION_60_0();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v78);

      *(v70 + 4) = v79;
      OUTLINED_FUNCTION_25_0(&dword_0, v80, v81, "#WFOpenInteractionFlow makeUnlockForCarplay generic error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_18_34();
      v83(v82);
    }

    v84 = *(v24 + 144);
    v85 = *(v24 + 112);
    v86 = *(v24 + 96);
    OUTLINED_FUNCTION_1_71();
    lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v87, 255, v88);
    v89 = OUTLINED_FUNCTION_16_6();
    v91 = OUTLINED_FUNCTION_48_15(v89, v90);
    v92(v91);
    v93 = *(v86 + 208);
    *(v86 + 208) = v65 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v93);
    v94 = *(v24 + 64);
  }

  else
  {
    v44 = *v23;

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_48();
      v49 = OUTLINED_FUNCTION_85();
      a11 = v49;
      OUTLINED_FUNCTION_65_11(4.8149e-34);
      v51 = *(v24 + 16);
      v50 = *(v24 + 24);
      v52 = *(v24 + 32);
      v53 = Error.localizedDescription.getter();
      v22 = v54;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &a11);

      *(v48 + 4) = v55;
      OUTLINED_FUNCTION_66_10(&dword_0, v56, v57, "#WFOpenInteractionFlow makeUnlockForCarplay unknown error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_24_28();
    }

    v58 = *(v24 + 96);
    lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v59 = OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_16_37(v59, v60);
    v61 = *(v58 + 208);
    *(v58 + 208) = v22 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v61);
  }

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14);
}

uint64_t static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v0[16] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for TemplatingResult();
  v0[17] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v0[18] = v9;
  v11 = *(v10 + 64);
  v0[19] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for DialogPhase();
  v0[20] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v0[21] = v13;
  v15 = *(v14 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v16 = type metadata accessor for OutputGenerationManifest();
  v0[24] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v0[25] = v17;
  v19 = *(v18 + 64);
  v0[26] = OUTLINED_FUNCTION_28();
  v20 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[27] = v20;
  OUTLINED_FUNCTION_5_0(v20);
  v0[28] = v21;
  v23 = *(v22 + 64);
  v0[29] = OUTLINED_FUNCTION_28();
  v24 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v24, v25, v26);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[28];
  v2 = v0[14];
  (*(v1 + 104))(v0[29], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[27]);
  v3 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *v2;
  if (v3)
  {
    v19 = (*(v7 + 240) + **(v7 + 240));
    v8 = *(*(v7 + 240) + 4);
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
    v10 = v0[14];
    v11 = v0[12];

    return v19(v11);
  }

  else
  {
    v20 = (*(v7 + 248) + **(v7 + 248));
    v13 = *(*(v7 + 248) + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[36] = v14;
    *v14 = v15;
    v14[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
    v16 = v0[19];
    v17 = v0[14];
    v18 = v0[12];

    return v20(v16, v18);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[32];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  static DialogPhase.error.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_55_6();

  v8 = *(v6 + 16);
  v9 = OUTLINED_FUNCTION_21_27();
  v10(v9);
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v11 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v11);
  v0[33] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = OUTLINED_FUNCTION_64();
  v0[34] = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v1;
  OUTLINED_FUNCTION_59_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[35] = v13;
  *v13 = v14;
  v13[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
  v15 = v0[26];

  return v17(v0 + 2, v12, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[35];
  v3 = v1[34];
  v4 = v1[33];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *(v0 + 120);
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v9 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_13_31(v10);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v12, v13, v14);
}

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
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_37_16();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = v8;
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 120);
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v11 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_13_31(v12);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v14, v15, v16);
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
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_8_40();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[39];
  v2 = v0[29];
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v0[6] = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:);
  v5 = v0[5];

  return WFOpenInteractionFlow.makeErrorCallback()();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[9];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = OUTLINED_FUNCTION_64();
  *(v3 + 16) = xmmword_216010;
  *(v3 + 32) = v1;
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v3, v2);
  v4 = v0[1];
  v5 = v0[6];

  return v4(v5);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackCommands()()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for AceOutput();
  v1[15] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[18] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[19] = v10;
  v12 = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[19];
  (*(v1 + 104))(v0[20], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[18]);
  v2 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);
  if (v2)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[21] = v6;
    *v6 = v7;
    v6[1] = WFOpenInteractionFlow.makeErrorCallbackCommands();
    v8 = v0[13];

    return WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2()();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = WFOpenInteractionFlow.makeErrorCallbackCommands();
    v11 = v0[13];

    return WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2()();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;

  if (v0)
  {
    v8 = v3[20];
    v9 = v3[17];
    v10 = v3[14];

    OUTLINED_FUNCTION_6_0();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[24];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = v0[24];
    }

    else
    {
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = v0[24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_1_18();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v2 = v0[24];

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v3 = v0[24];
  }

  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackCommands()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[14];
  v26 = v22[15];
  outlined init with copy of DeviceState((v22 + 2), (v22 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  if (swift_dynamicCast())
  {
    v28 = v22[16];
    v27 = v22[17];
    v30 = v22[14];
    v29 = v22[15];
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
    (*(v28 + 32))(v27, v30, v29);
    v31 = AceOutput.commands.getter();
    a11 = _swiftEmptyArrayStorage;
    v32 = specialized Array.count.getter(v31);
    for (i = 0; v32 != i; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v34 = *(v31 + 8 * i + 32);
      }

      v35 = v34;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22[12] = &OBJC_PROTOCOL___SAClientBoundCommand;
      v36 = swift_dynamicCastObjCProtocolConditional();
      if (v36)
      {
        v37 = v36;
        swift_getObjectType();
        specialized Array.append(_:)(v37, &a11);
      }

      else
      {
      }
    }

    if (specialized Array.count.getter(a11))
    {
      v45 = v22[16];
      v44 = v22[17];
      v46 = v22[15];

      (*(v45 + 8))(v44, v46);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.voiceCommands);
      OUTLINED_FUNCTION_3_21();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      v50 = os_log_type_enabled(v48, v49);
      v52 = v22[16];
      v51 = v22[17];
      v53 = v22[15];
      if (v50)
      {
        a10 = v22[15];
        v54 = OUTLINED_FUNCTION_48();
        v55 = OUTLINED_FUNCTION_85();
        a11 = v55;
        *v54 = 136315138;
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        v56 = Array.description.getter();
        a9 = v51;
        v58 = v57;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &a11);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_0, v48, v49, "no error-callback clientCmds; outputCmds=%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();

        (*(v52 + 8))(a9, a10);
      }

      else
      {

        (*(v52 + 8))(v51, v53);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  }

  else
  {
    v38 = v22[14];
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v22[15]);
    outlined destroy of String?(v38, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.voiceCommands);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_50(v41))
    {
      v42 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v42);
      OUTLINED_FUNCTION_17();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  }

  v60 = v22[20];
  v61 = v22[17];
  v62 = v22[14];

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_6_1();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for DialogPhase();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(**(*(v0 + 24) + 32) + 256);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
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
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  static DialogPhase.error.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_55_6();

  v8 = *(v6 + 16);
  v9 = OUTLINED_FUNCTION_21_27();
  v10(v9);
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v11 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v11);
  v0[13] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = OUTLINED_FUNCTION_64();
  v0[14] = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v1;
  OUTLINED_FUNCTION_59_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[15] = v13;
  *v13 = v14;
  v13[1] = WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2();
  v15 = v0[10];
  v16 = v0[2];

  return v18(v16, v12, v15);
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

  return v9();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(**(v0[2] + 32) + 264);
  v7 = (v1 + *v1);
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v3;
  *v3 = v4;
  v3[1] = WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2();
  v5 = v0[5];

  return v7(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[5];
  v2 = *(v0[2] + 24);
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  if (dispatch thunk of ViewFactory.makeUtteranceViews(template:listenAfterSpeaking:canUseServerTTS:)() >> 62)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  v6 = dispatch thunk of ViewFactory.makeErrorView(aceViews:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = OUTLINED_FUNCTION_64();
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v6;
  (*(v4 + 8))(v3, v5);

  v8 = OUTLINED_FUNCTION_24_14();

  return v9(v8);
}

uint64_t WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_12_0();
  v1[16] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for AceOutput();
  v1[18] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[19] = v6;
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v9 = swift_task_alloc();
  v1[21] = v9;
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_44_18(v9);

  return WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  [v1 setDoNotDismissSiri:1];
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_64();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v9 = v1;
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = v6[14];
  v11 = v6[15];
  __swift_project_boxed_opaque_existential_1(v6 + 11, v10);
  *(v0 + 80) = v4;
  *(v0 + 88) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  v13 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 192) = v14;
  *v14 = v15;
  v14[1] = WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v8 + 208);
  *(v8 + 208) = 1;
  outlined consume of WFOpenInteractionFlow.State(v10);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_14_0();
  v20 = v0;
  v1 = v0[23];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_85();
    v19 = v6;
    OUTLINED_FUNCTION_62_11(4.8149e-34);
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[14];
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v19);

    *(v5 + 4) = v12;
    OUTLINED_FUNCTION_101(&dword_0, v13, v14, "#WFOpenInteractionFlow submitLaunchAppPunchout unknown error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_24_28();
    OUTLINED_FUNCTION_11_0();
  }

  lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v15 = OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_16_37(v15, v16);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_6_0();

  return v17();
}

{
  OUTLINED_FUNCTION_14_0();
  v26 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v7 = *(v0 + 200);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = OUTLINED_FUNCTION_85();
    v25 = v12;
    OUTLINED_FUNCTION_62_11(4.8149e-34);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v25);

    *(v11 + 4) = v18;
    OUTLINED_FUNCTION_101(&dword_0, v19, v20, "#WFOpenInteractionFlow submitLaunchAppPunchout unknown error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_24_28();
    OUTLINED_FUNCTION_11_0();
  }

  lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v21 = OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_16_37(v21, v22);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_6_0();

  return v23();
}

uint64_t WFOpenInteractionFlow.makeErrorCallback()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WFOpenInteractionFlow.makeErrorCallback();

  return WFOpenInteractionFlow.makeErrorCallbackCommands()();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 16);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 24) = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(SAResultCallback) init];
  [v2 setCode:SAResultCallbackAnyErrorCodeValue];
  v3 = OUTLINED_FUNCTION_22_4();
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v3, v4);
  v5 = OUTLINED_FUNCTION_24_14();

  return v6(v5);
}

uint64_t WFOpenInteractionFlow.execute(completion:)()
{
  type metadata accessor for WFOpenInteractionFlow();
  lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, v0, type metadata accessor for WFOpenInteractionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFOpenInteractionFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  outlined consume of WFOpenInteractionFlow.State(*(v0 + 208));
  return v0;
}

uint64_t WFOpenInteractionFlow.__deallocating_deinit()
{
  WFOpenInteractionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFOpenInteractionFlow(uint64_t a1)
{
  v4 = *(**v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFOpenInteractionFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  return result;
}

unint64_t outlined consume of WFOpenInteractionFlow.State(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_20DF2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

_BYTE *storeEnumTagSinglePayload for WFOpenInteractionFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x20E0BCLL);
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

unint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin25WFOpenInteractionResponseO_0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t getEnumTagSinglePayload for WFOpenInteractionResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 8))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3D)
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

void *storeEnumTagSinglePayload for WFOpenInteractionResponse(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      return OUTLINED_FUNCTION_49_15(result, ((v3 << 58) | (2 * v3)) & 0xF000000000000007);
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WFOpenInteractionResponse(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_49_15(a1, v2);
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCallbacks:isa];
}

uint64_t specialized Array.append(_:)(uint64_t a1, void *a2)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)));
  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void OUTLINED_FUNCTION_8_40()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v5 = v0[16];
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_16_37(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;
}

void OUTLINED_FUNCTION_22_31(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_24_28()
{
}

uint64_t OUTLINED_FUNCTION_33_17(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 288);
  return v2;
}

uint64_t OUTLINED_FUNCTION_50_9()
{
  v1[8] = v0;
  v3 = v1[19];
  v4 = v1[14];

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_51_12()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  v2 = v0 | 0x4000000000000000;
  v3 = v1[20];
  v4 = v1[16];
  v5 = v1[17];
  v6 = *(v4 + 208);
  *(v4 + 208) = v2;
  outlined consume of WFOpenInteractionFlow.State(v6);
}

uint64_t OUTLINED_FUNCTION_62_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_63_11()
{
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_65_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_66_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_10()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
}

uint64_t UsoTaskBuilder.asUsoGraph()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v0;

  UsoBuilderOptions.init(longhandDefinedValues:)();
  v9 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of String?(v7, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
}

uint64_t LNActionParameterMetadata.measurementDefaultUnitSymbol.getter()
{
  v1 = [v0 typeSpecificMetadata];
  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(LNValueTypeSpecificMetadataKeyMeasurementDefaultUnitSymbol, v2, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v5);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey()
{
  result = lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey;
  if (!lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey);
  }

  return result;
}

uint64_t LNActionParameterMetadata.measurementUnitType.getter()
{
  v1 = [v0 typeSpecificMetadata];
  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(LNValueTypeSpecificMetadataKeyMeasurementUnitType, v2, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  return 0;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

CLPlacemark_optional __swiftcall Location.toCLPlacemark()()
{
  v0 = Location.toCLPlacemark()();
  result.value._internal = v1;
  result.value.super.isa = v0;
  result.is_nil = v2;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t LNCodableValue.init(_:)()
{
  return LNCodableValue.init(_:)();
}

{
  return LNCodableValue.init(_:)();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}