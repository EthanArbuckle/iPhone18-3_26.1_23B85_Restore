uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandsNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of TaskPriority?(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_allocObject();
}

uint64_t AppInfoResolver.getLocalizedAppDisplayName(from:deviceState:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppInformationResolver();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();

  (*(v4 + 8))(v7, v3);
  return v12;
}

uint64_t *CustomIntentTCCFlowStrategy.__allocating_init(deviceState:labelsProvider:responseFactory:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = swift_allocObject();
  v10 = a2[3];
  v9 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
  OUTLINED_FUNCTION_13_1();
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_17_0(v14);
  v16(v15);
  v17 = a3[3];
  v18 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  OUTLINED_FUNCTION_13_1();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v23 = OUTLINED_FUNCTION_12_1(v22);
  v24(v23);
  v25 = specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(a1, v3, v4, v8, v10, v17, v9, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v25;
}

uint64_t *CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v11 = a2[3];
  v10 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  OUTLINED_FUNCTION_13_1();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_17_0(v15);
  v17(v16);
  v18 = a3[3];
  v19 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v18);
  OUTLINED_FUNCTION_13_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  v24 = OUTLINED_FUNCTION_12_1(v23);
  v25(v24);
  v26 = specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(a1, v4, v5, v6, v11, v18, v10, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v26;
}

uint64_t CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v1[15] = *v0;
  v4 = type metadata accessor for DialogPhase();
  v1[16] = v4;
  v5 = *(v4 - 8);
  v1[17] = v5;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v7;
  v8 = *(v7 - 8);
  v1[21] = v8;
  v9 = *(v8 + 64) + 15;
  v1[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[13];
  v5 = v0[14];
  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v0[5] = &type metadata for AppInfoResolver;
  v0[6] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v5 + 16, v0 + 2, 2, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined init with copy of AppDisplayInfo?(v2, v3, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v7 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[23], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  }

  else
  {
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[23];
    AppDisplayInfo.displayName.getter();
    OUTLINED_FUNCTION_21_2(v7);
    (*(v11 + 8))(v10, v7);
    SpeakableString.init(print:speak:)();
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
    outlined init with take of SpeakableString?(v9, v8);
  }

  v12 = v0[14];
  type metadata accessor for EnableTCCCATWrapperSimple(0);
  outlined init with copy of DeviceState(v5 + 16, (v0 + 7));
  v0[27] = EnableTCCCATWrapperSimple.__allocating_init(deviceState:)((v0 + 7));
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v13);
  v0[28] = DeviceState.asSiriKitDeviceState()(v13, v14);
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:);
  v16 = v0[26];
  OUTLINED_FUNCTION_25_2();

  return EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)(v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v8 + 240) = v7;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];
  static DialogPhase.confirmation.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v3, v5);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v9 = *(v6 + 8);
  v10 = OUTLINED_FUNCTION_9_3();
  v11(v10);
  v12 = v7[5];
  v13 = v7[6];
  OUTLINED_FUNCTION_47(v7 + 2);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v14 = swift_task_alloc();
    v0[32] = v14;
    *v14 = v0;
    v14[1] = CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:);
    v15 = v0[26];
    v16 = v0[27];
    OUTLINED_FUNCTION_27_0();

    return EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)(v17);
  }

  else
  {
    v20 = v0[30];
    v21 = v0[22];
    OutputGenerationManifest.listenAfterSpeaking.setter();
    v22 = DialogExecutionResult.firstDialogFullPrint()();
    v23 = v0[14];
    v0[35] = v22.value._object;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[36] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_4_2(v24);
    OUTLINED_FUNCTION_27_0();

    return static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(v26, v27, v28, v29, v30, v31, v32, v33);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[34];
  v2 = DialogExecutionResult.firstDialogFullPrint()();

  v3 = v0[14];
  v0[35] = v2.value._object;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[36] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(v6, v3 + 16, v7, v8, v3 + 96, v3 + 56, v2.value._countAndFlagsBits, v2.value._object);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

void CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  v12 = *(v0 + 144);

  (*(v8 + 8))(v6, v7);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v4, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 216);

  v14 = *(v11 + 248);
  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_2();

  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_9_3();
  v15(v14);
  v16 = *(v11 + 264);
  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12 + 8, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_2();

  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_9_3();
  v15(v14);
  v16 = *(v11 + 296);
  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12 + 8, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t EnableTCCCATWrapperSimple.__allocating_init(deviceState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  outlined init with copy of AppDisplayInfo?(a1, v7, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  v5 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v7);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(a1, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  return v5;
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_0();
  v13 = v12[8];
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = v12[11];
    v17 = v12[9];
    v18 = v16[3];
    v19 = v16[4];
    OUTLINED_FUNCTION_47(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = swift_allocObject();
    v12[22] = v20;
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v17;
    v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[23] = v26;
    *v26 = v27;
    v26[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
    v28 = v12[10];
    v29 = v12[7];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v29, v20, v28, v18, v19, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v30 = v12[12];
    v31 = v30[3];
    v32 = v30[4];
    OUTLINED_FUNCTION_47(v30);
    v33 = *(v32 + 8);
    v38 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    v12[15] = v35;
    *v35 = v12;
    v35[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
    v36 = OUTLINED_FUNCTION_9_3();

    return v38(v36);
  }
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  *v12 = v11;
  v14 = *(v13 + 120);
  v15 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v16 = v15;

  if (v0)
  {
    v17 = *(v15 + 8);

    return v17();
  }

  else
  {
    v11[16] = v3;
    v11[17] = v5;
    v11[18] = v7;
    v11[19] = v9;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v19, v20, v21);
  }
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[9];
  v9 = v7[3];
  v19 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  v0[5] = type metadata accessor for WorkflowDataModels(0);
  v0[6] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  *boxed_opaque_existential_1 = v1;
  boxed_opaque_existential_1[1] = v2;
  boxed_opaque_existential_1[2] = v4;
  boxed_opaque_existential_1[3] = v3;
  boxed_opaque_existential_1[4] = v5;
  boxed_opaque_existential_1[5] = v6;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[20] = v11;
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v8;
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];

  v13 = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[21] = v14;
  *v14 = v15;
  v14[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
  v16 = v0[10];
  v17 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 160);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t *CustomIntentTCCFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t CustomIntentTCCFlowStrategy.__deallocating_deinit()
{
  CustomIntentTCCFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t SiriKitFlowCATWrapperSimple.__allocating_init(deviceState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return SiriKitFlowCATWrapperSimple.init(deviceState:)(a1);
}

uint64_t SiriKitFlowCATWrapperSimple.init(deviceState:)(uint64_t a1)
{
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28[-v10];
  v12 = type metadata accessor for URL();
  OUTLINED_FUNCTION_13_1();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v28[-v21];
  v23 = AFSystemRootDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:)();
  outlined init with copy of AppDisplayInfo?(a1, v28, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  if (v29)
  {
    outlined init with take of Output(v28, v30);
    type metadata accessor for CATGlobals();
    outlined init with copy of DeviceState(v30, v28);
    CATGlobals.__allocating_init(device:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v28, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  }

  (*(v14 + 16))(v11, v20, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  static CATOption.defaultMode.getter();
  v24 = CATWrapperSimple.init(templateDir:options:globals:)();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(a1, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  v25 = *(v14 + 8);
  v25(v20, v12);
  v25(v22, v12);
  return v24;
}

uint64_t ContinueInAppCATWrapperSimple.__deallocating_deinit()
{
  CATWrapperSimple.deinit();

  return swift_deallocClassInstance();
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:), 0, 0);
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[6] = v3;
  *(v3 + 16) = xmmword_216840;
  *(v3 + 32) = 0x656369766564;
  *(v3 + 40) = 0xE600000000000000;
  v4 = 0;
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v1[5];
  v6 = v1[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656D614E707061;
  *(v3 + 88) = 0xE700000000000000;
  outlined init with copy of AppDisplayInfo?(v6, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v1[5];
  v10 = v1[2];
  if (v8 == 1)
  {
    v11 = v1[2];

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_21_2(v0);
    (*(v12 + 32))();
  }

  v13 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v1[7] = v14;
  *v14 = v1;
  v14[1] = EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:);
  v15 = v1[4];
  v16 = OUTLINED_FUNCTION_19_1();

  return v18(v16);
}

{
  OUTLINED_FUNCTION_12_0();
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

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[8];

  return v3();
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:), 0, 0);
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0x656D614E707061;
  *(v3 + 40) = 0xE700000000000000;
  v4 = OUTLINED_FUNCTION_9_3();
  outlined init with copy of AppDisplayInfo?(v4, v5, v6, v7);
  v8 = type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_24_2(v8);
  v10 = v0[4];
  if (v9 == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_21_2(v2);
    (*(v11 + 32))();
  }

  v12 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v17 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:);
  v14 = v0[3];
  v15 = OUTLINED_FUNCTION_19_1();

  return v17(v15);
}

{
  OUTLINED_FUNCTION_12_0();
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

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[7];

  return v3();
}

uint64_t EnableTCCLabelsProvider.getYesNoLabels()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = async function pointer to static LabelTemplates.yes()[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = EnableTCCLabelsProvider.getYesNoLabels();

  return static LabelTemplates.yes()();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[7] = v11;

  if (v0)
  {
    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v14 = async function pointer to static LabelTemplates.no()[1];
    v15 = swift_task_alloc();
    v3[8] = v15;
    *v15 = v9;
    v15[1] = EnableTCCLabelsProvider.getYesNoLabels();

    return static LabelTemplates.no()();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 64);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v16 = v7[3];
    v17 = *(v11 + 8);
    v18 = v7[7];

    return v17(v16, v18, v5, v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t protocol witness for EnableTCCLabelsProviding.getYesNoLabels() in conformance EnableTCCLabelsProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EnableTCCLabelsProviding.getYesNoLabels() in conformance EnableTCCLabelsProvider;

  return EnableTCCLabelsProvider.getYesNoLabels()();
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = *(v10 + 16);
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;

  v18 = *(v12 + 8);
  if (!v0)
  {
    v14 = v9;
    v15 = v7;
    v16 = v5;
    v17 = v3;
  }

  return v18(v14, v15, v16, v17);
}

uint64_t *specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a4[10] = a5;
  a4[11] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 7);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  a4[15] = a6;
  a4[16] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(a4 + 12);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  outlined init with take of Output(a1, a4 + 2);
  return a4;
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels)
  {
    type metadata accessor for WorkflowDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels);
  }

  return result;
}

uint64_t type metadata accessor for EnableTCCCATWrapperSimple(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SiriKitFlowCATWrapperSimple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  OUTLINED_FUNCTION_11_1();
  return swift_initClassMetadata2();
}

uint64_t outlined init with copy of AppDisplayInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{
  *(a1 + 8) = CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:);
  v2 = v1[30];
  v3 = v1[22];
  return v1[12];
}

void OUTLINED_FUNCTION_8_2()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
}

void OUTLINED_FUNCTION_22_2()
{
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t CustomRequestParameterDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::String_optional __swiftcall InstallVoiceShortcutInvocationData.getVoiceCommandName()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall InstallVoiceShortcutInvocationData.getVoiceCommandPhrase()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t ShowAlertVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[39] = v2;
  v1[40] = v0;
  v3 = *(*(type metadata accessor for Separators() - 8) + 64);
  v1[41] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for ComponentWrapper();
  v1[42] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[43] = v5;
  v7 = *(v6 + 64);
  v1[44] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for BinaryButton();
  v1[45] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[46] = v9;
  v11 = *(v10 + 64);
  v1[47] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for Button.LabelStyle();
  v1[48] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[49] = v13;
  v15 = *(v14 + 64);
  v1[50] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for _ProtoButton.FormAction();
  v1[51] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[52] = v17;
  v19 = *(v18 + 64);
  v1[53] = OUTLINED_FUNCTION_28();
  v20 = type metadata accessor for ButtonRole();
  v1[54] = v20;
  OUTLINED_FUNCTION_5_0(v20);
  v1[55] = v21;
  v23 = *(v22 + 64);
  v1[56] = OUTLINED_FUNCTION_28();
  v24 = type metadata accessor for Button();
  v1[57] = v24;
  OUTLINED_FUNCTION_5_0(v24);
  v1[58] = v25;
  v27 = *(v26 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v28 = type metadata accessor for Command();
  v1[63] = v28;
  OUTLINED_FUNCTION_5_0(v28);
  v1[64] = v29;
  v31 = *(v30 + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v32 = type metadata accessor for SimpleItemRich();
  v1[67] = v32;
  OUTLINED_FUNCTION_5_0(v32);
  v1[68] = v33;
  v35 = *(v34 + 64);
  v1[69] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v36, v37, v38);
}

{
  v22 = v0;
  v1 = *(v0 + 320);
  *(v0 + 216) = *(v1 + 16);
  v2 = *(v0 + 224);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 216) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 552);
    v16 = *(v0 + 216);
    v18 = *(v0 + 224);
    *(v0 + 232) = *(v1 + 32);
    v20 = *(v1 + 32);
    OUTLINED_FUNCTION_1_2(v21, 0);
    outlined init with copy of String?(v0 + 216, v0 + 280);
    outlined init with copy of String(v0 + 232, v0 + 296);
  }

  else
  {
LABEL_6:
    v5 = *(v0 + 552);
    v17 = *(v1 + 32);
    v19 = *(v1 + 40);
    OUTLINED_FUNCTION_1_2(v21, 0);
  }

  SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
  v6 = *(v0 + 528);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v9, xmmword_216850);
  *(v0 + 248) = v10;
  *(v0 + 256) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v9[6].n128_u64[0] = &type metadata for String;
  v9[4].n128_u64[1] = 7562617;
  v9[5].n128_u64[0] = 0xE300000000000000;
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_7_2();

  *(v0 + 40) = v7;
  *(v0 + 48) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v12 = *(v8 + 16);
  *(v0 + 568) = v12;
  *(v0 + 576) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(boxed_opaque_existential_1, v6, v7);
  v13 = async function pointer to static LabelTemplates.ok()[1];
  v14 = swift_task_alloc();
  *(v0 + 584) = v14;
  *v14 = v0;
  v14[1] = ShowAlertVisual.response.getter;

  return static LabelTemplates.ok()();
}

{
  OUTLINED_FUNCTION_8_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 584);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v5[74] = v1;

  if (!v1)
  {
    v5[75] = v0;
    v5[76] = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v26 = *(v0 + 568);
  v27 = *(v0 + 576);
  v23 = *(v0 + 560);
  v3 = *(v0 + 496);
  v24 = *(v0 + 520);
  v25 = *(v0 + 504);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  v10 = *(v0 + 392);
  v11 = *(v0 + 400);
  v12 = *(v0 + 384);
  *(v0 + 80) = &type metadata for String;
  *(v0 + 88) = &protocol witness table for String;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v13 = enum case for ButtonRole.preferred(_:);
  v14 = *(v4 + 104);
  *(v0 + 616) = v14;
  *(v0 + 624) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v5, v13, v6);
  *(v0 + 696) = enum case for _ProtoButton.FormAction.none(_:);
  v15 = *(v9 + 104);
  *(v0 + 632) = v15;
  *(v0 + 640) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v7);
  *(v0 + 700) = enum case for Button.LabelStyle.automatic(_:);
  v16 = *(v10 + 104);
  *(v0 + 648) = v16;
  *(v0 + 656) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v11);
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v17, xmmword_216850);
  *(v0 + 264) = v18;
  *(v0 + 272) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v17[6].n128_u64[0] = &type metadata for String;
  v17[4].n128_u64[1] = 28526;
  v17[5].n128_u64[0] = 0xE200000000000000;
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_7_2();

  *(v0 + 120) = v25;
  *(v0 + 128) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v26(boxed_opaque_existential_1, v24, v25);
  v20 = async function pointer to static LabelTemplates.cancel()[1];
  v21 = swift_task_alloc();
  *(v0 + 664) = v21;
  *v21 = v0;
  v21[1] = ShowAlertVisual.response.getter;

  return static LabelTemplates.cancel()();
}

{
  OUTLINED_FUNCTION_8_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 664);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v5[84] = v1;

  if (!v1)
  {
    v5[85] = v0;
    v5[86] = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v25 = *(v0 + 648);
  v26 = *(v0 + 656);
  v24 = *(v0 + 700);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 696);
  v29 = *(v0 + 624);
  v27 = *(v0 + 616);
  v46 = *(v0 + 552);
  v47 = *(v0 + 544);
  v42 = *(v0 + 536);
  v37 = *(v0 + 520);
  v38 = *(v0 + 528);
  v35 = *(v0 + 512);
  v36 = *(v0 + 504);
  v7 = *(v0 + 488);
  v6 = *(v0 + 496);
  v33 = v6;
  v44 = *(v0 + 480);
  v45 = *(v0 + 472);
  v8 = *(v0 + 464);
  v41 = *(v0 + 456);
  v9 = *(v0 + 448);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  *(v0 + 160) = &type metadata for String;
  *(v0 + 168) = &protocol witness table for String;
  *(v0 + 136) = v1;
  v14 = *(v0 + 384);
  v39 = *(v0 + 376);
  *(v0 + 144) = v2;
  v30 = *(v0 + 368);
  v28 = *(v0 + 360);
  v40 = *(v0 + 352);
  v32 = *(v0 + 344);
  v31 = *(v0 + 336);
  v43 = *(v0 + 328);
  v34 = *(v0 + 312);
  v4(v11, v5, v12);
  v25(v13, v24, v14);
  v27(v9, enum case for ButtonRole.standard(_:), v10);
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v15 = *(v8 + 16);
  v15(v44, v6, v41);
  v15(v45, v7, v41);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 200) = v28;
  *(v0 + 208) = &protocol witness table for BinaryButton;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  (*(v30 + 16))(boxed_opaque_existential_1, v39, v28);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_216840;
  *(v17 + 56) = v42;
  *(v17 + 64) = &protocol witness table for SimpleItemRich;
  v18 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  (*(v47 + 16))(v18, v46, v42);
  *(v17 + 96) = v31;
  *(v17 + 104) = &protocol witness table for ComponentWrapper;
  v19 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  (*(v32 + 16))(v19, v40, v31);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  (*(v32 + 8))(v40, v31);
  (*(v30 + 8))(v39, v28);
  v20 = *(v8 + 8);
  v20(v7, v41);
  v21 = *(v35 + 8);
  v21(v37, v36);
  v20(v33, v41);
  v21(v38, v36);
  (*(v47 + 8))(v46, v42);

  OUTLINED_FUNCTION_6_0();

  return v22();
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  (*(v0[64] + 8))(v0[66], v0[63]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[74];
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  v12 = v0[69];
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[62];
  v6 = v0[57];
  v7 = v0[58];
  v8 = *(v0[64] + 8);
  v8(v0[65], v4);
  (*(v7 + 8))(v5, v6);
  v8(v3, v4);
  (*(v1 + 8))(v12, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v9 = v0[84];
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShowAlertVisual.data.getter()
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
  v5[1] = ShowAlertVisual.data.getter;

  return ShowAlertVisual.response.getter();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  lazy protocol witness table accessor for type Response and conformance Response();
  v4 = ProtobufBuilder.serializedData()();
  v6 = v5;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  if (v1)
  {
    (*(v7 + 8))(v0[4], v9);
    v10 = v0[4];

    OUTLINED_FUNCTION_6_0();

    return v11();
  }

  else
  {
    v13 = v4;
    (*(v7 + 8))(v0[4], v9);

    v14 = v0[1];

    return v14(v13, v6);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

unint64_t lazy protocol witness table accessor for type Response and conformance Response()
{
  result = lazy protocol witness table cache variable for type Response and conformance Response;
  if (!lazy protocol witness table cache variable for type Response and conformance Response)
  {
    type metadata accessor for Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response and conformance Response);
  }

  return result;
}

uint64_t DisambiguationItemComponent.init(title:subtitle:image:synonyms:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ShowAlertVisual(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ShowAlertVisual(uint64_t result, int a2, int a3)
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

void OUTLINED_FUNCTION_1_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[3] = a2;
  a1[4] = a2;
  a1[6] = a2;
  a1[7] = a2;
  *(v2 - 224) = 0;
  a1[9] = a2;
  a1[10] = a2;
  *(v2 - 176) = 0;
  a1[12] = a2;
  a1[13] = a2;
  *(v2 - 128) = 0;
  a1[15] = a2;
  a1[16] = a2;
  *(v2 - 80) = 0;
  a1[18] = a2;
  a1[19] = a2;
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[56];
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[47];
  v14 = v0[44];
  v15 = v0[41];
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return static Command.directInvocation(identifier:payload:isNavigation:)();
}

uint64_t InstallVoiceShortcutInvocationData.description.getter()
{
  v1 = 0x7974706D65;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v20 - v4;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v6._object = 0x800000000022FD70;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v6);
  if (v0[3])
  {
    v7 = v0[2];
    v8 = v0[3];
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x7974706D65;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x617265747475202CLL;
  v10._object = 0xED0000203A65636ELL;
  String.append(_:)(v10);
  if (v0[5])
  {
    v11 = v0[4];
    v12 = v0[5];
  }

  else
  {
    v12 = 0xE500000000000000;
    v11 = 0x7974706D65;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x203A6C7275202CLL;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  outlined init with copy of URL?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url, v5);
  v15 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
  {
    outlined destroy of URL?(v5);
    v16 = 0xE500000000000000;
  }

  else
  {
    v1 = URL.absoluteString.getter();
    v16 = v17;
    (*(*(v15 - 8) + 8))(v5, v15);
  }

  v18._countAndFlagsBits = v1;
  v18._object = v16;
  String.append(_:)(v18);

  return v20[0];
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallVoiceShortcutInvocationData.__allocating_init(semantic:url:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(a1, a2, a3, a4, a5);
  return v13;
}

void *InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a4;
  v5[5] = a5;
  outlined init with take of URL?(a3, v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url);
  return v5;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallVoiceShortcutInvocationData.__allocating_init(invocationData:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  type metadata accessor for InstallVoiceShortcutInvocationData();
  v11 = static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0xD000000000000010, 0x800000000022FDA0, a1);
  v13 = v12;
  v14 = static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0xD000000000000012, 0x800000000022FDC0, a1);
  v16 = v15;
  static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(0x6D6F436563696F76, 0xEF4C5255646E616DLL, a1);
  v18 = v17;

  if (v18)
  {
    URL.init(string:)();
  }

  else
  {
    v19 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  }

  outlined init with copy of URL?(v10, v8);
  v20 = (*(v2 + 112))(v11, v13, v8, v14, v16);
  outlined destroy of URL?(v10);
  return v20;
}

uint64_t type metadata accessor for InstallVoiceShortcutInvocationData()
{
  result = type metadata singleton initialization cache for InstallVoiceShortcutInvocationData;
  if (!type metadata singleton initialization cache for InstallVoiceShortcutInvocationData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static InstallVoiceShortcutInvocationData.getDataForKey(key:invocationData:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v7)
    {
      outlined init with copy of Any(*(a3 + 56) + 32 * v6, v17);
      if (swift_dynamicCast())
      {
        return v16;
      }
    }
  }

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
    v17[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v17);
    *(v12 + 12) = 2080;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

    *(v12 + 14) = v15;
    _os_log_impl(&dword_0, v10, v11, "InstallVoiceShortcutInvocationData missing %s : %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t InstallVoiceShortcutInvocationData.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin34InstallVoiceShortcutInvocationData_url);
  return v0;
}

uint64_t InstallVoiceShortcutInvocationData.__deallocating_deinit()
{
  InstallVoiceShortcutInvocationData.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for InstallVoiceShortcutInvocationData()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t InstallShortcutCATs.errorInstallShortcut(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATs.errorInstallShortcut(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
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
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return v7(v5, 0xD000000000000024);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.errorInstallShortcut(device:), 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    v9 = *(v6 + 8);

    return v9();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t InstallShortcutCATs.launchApp(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATs.launchApp(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
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
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return v7(v5, 0xD000000000000019);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.launchApp(device:), 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t InstallShortcutCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return InstallShortcutCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t InstallShortcutCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t WorkflowRunnerCATPatternsExecutor.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstallShortcutCATs()
{
  result = type metadata singleton initialization cache for InstallShortcutCATs;
  if (!type metadata singleton initialization cache for InstallShortcutCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656369766564;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_3_2@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t LocationProvider.__allocating_init(aceServiceInvoker:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 24);
  return v2;
}

uint64_t LocationProvider.init(aceServiceInvoker:)(__int128 *a1)
{
  *(v1 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(a1, v1 + 24);
  return v1;
}

uint64_t LocationProvider.getCurrentLocation()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(LocationProvider.getCurrentLocation(), 0, 0);
}

{
  v1 = v0[2];
  v2 = [objc_allocWithZone(SAGetRequestOrigin) init];
  v0[3] = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(v3, v4, v2);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v2 setMaxAge:isa];

  v6 = [objc_allocWithZone(NSNumber) initWithDouble:0.05];
  [v2 setSearchTimeout:v6];

  v7 = v1[6];
  v8 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v7);
  v9 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[4] = v10;
  v11 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v10 = v0;
  v10[1] = LocationProvider.getCurrentLocation();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v7, v11, v8);
}

{
  v1 = v0[5];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[5];
    v5 = v0[3];
    v6 = objc_allocWithZone(SFLatLng);
    v7 = v4;
    v8 = [v6 init];
    [v3 latitude];
    [v8 setLat:?];
    [v3 longitude];
    [v8 setLng:?];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[5];
    v14 = v0[3];
    if (v12)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v10, v11, "#LocationProvider could not convert result to SASetRequestOrigin", v15, 2u);
    }

    v8 = 0;
  }

  v16 = v0[1];

  return v16(v8);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v2, v3, "#LocationProvider Could not get current location", v7, 2u);
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t LocationProvider.getCurrentLocation()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = LocationProvider.getCurrentLocation();
  }

  else
  {
    v5 = LocationProvider.getCurrentLocation();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t LocationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider()
{
  v2 = *(**v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider;

  return v6();
}

uint64_t protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void outlined bridged method (mbnn) of @objc SAGetRequestOrigin.desiredAccuracy.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDesiredAccuracy:v4];
}

uint64_t NSDateComponents.toRelativeLocalizedString(locale:)()
{
  v42 = type metadata accessor for Date();
  v0 = OUTLINED_FUNCTION_7_1(v42);
  v41 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v40 = v5 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for Calendar();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v40 - v29;
  v31 = [objc_allocWithZone(NSDateFormatter) init];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [v31 setLocale:isa];

  [v31 setDateStyle:4];
  [v31 setDoesRelativeDateFormatting:1];
  static Calendar.current.getter();
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  Calendar.date(from:)();
  (*(v9 + 8))(v14, v6);
  (*(v18 + 8))(v23, v15);
  v33 = v42;
  outlined init with copy of Date?(v30, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v33) == 1)
  {
    outlined destroy of Date?(v30);

    v34 = 0;
    v30 = v28;
  }

  else
  {
    v36 = v40;
    v35 = v41;
    (*(v41 + 32))(v40, v28, v33);
    v37 = Date._bridgeToObjectiveC()().super.isa;
    v38 = [v31 stringForObjectValue:v37];

    if (v38)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v34 = 0;
    }

    (*(v35 + 8))(v36, v33);
  }

  outlined destroy of Date?(v30);
  return v34;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.toContactQuery()()
{
  v1 = ContactQuery.init()();
  (*(*v0 + 216))(v1);
  if (v2)
  {
    ContactQuery.namePrefix.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v3 + 184))();
  if (v4 || (OUTLINED_FUNCTION_0_3(), (*(v5 + 208))(), v6))
  {
    ContactQuery.givenName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v7 + 192))();
  if (v8)
  {
    ContactQuery.middleName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v9 + 200))();
  if (v10)
  {
    ContactQuery.familyName.setter();
  }

  OUTLINED_FUNCTION_0_3();
  (*(v11 + 224))();
  if (v12)
  {
    ContactQuery.nickname.setter();
  }

  OUTLINED_FUNCTION_0_3();
  result = (*(v13 + 232))();
  if (v15)
  {
    return ContactQuery.nameSuffix.setter();
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *TfIdfFuzzyMatcher.match(term:in:)(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = __chkstk_darwin(TupleTypeMetadata2);
  v119 = v114 - v11;
  v116 = *(v8 - 8);
  v12 = *(v116 + 64);
  __chkstk_darwin(v10);
  v125 = v114 - v13;
  v128 = a3;
  v134 = a3;
  v131 = v8;
  v114[0] = v3;
  v120 = *(v7 + 88);
  v132 = v120;
  v126 = v8;
  v14 = type metadata accessor for Array();
  OUTLINED_FUNCTION_1_4();
  WitnessTable = swift_getWitnessTable();
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TfIdfFuzzyMatcher.match(term:in:), v130, v14, &type metadata for Document, &type metadata for Never, WitnessTable, &protocol witness table for Never, v16);
  v114[1] = 0;
  type metadata accessor for TfIdfComputer();
  swift_allocObject();

  v19 = TfIdfComputer.init(documents:)(v18);
  v129 = v19;
  v118 = a1;
  v122 = a2;
  v20 = String.lowercased()();
  countAndFlagsBits = v20._countAndFlagsBits;
  object = v20._object;
  v21 = 0;
  v22 = *(v17 + 16);
  v23 = _swiftEmptyArrayStorage;
LABEL_2:
  v24 = (v17 + 40 + 16 * v21);
  while (v22 != v21)
  {
    if (v21 >= *(v17 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      OUTLINED_FUNCTION_0_1();
      swift_once();
LABEL_22:
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);
      v44 = v122;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v134 = v48;
        *v47 = 136315138;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v44, &v134);
        _os_log_impl(&dword_0, v45, v46, "[TfIdfFuzzyMatcher] query %s produced a null vector", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

LABEL_56:

      return 0;
    }

    ++v21;
    v25 = *(v24 - 1);
    v26 = *v24;
    v24 += 2;
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v23[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v134;
      }

      v30 = v23[2];
      if (v30 >= v23[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v134;
      }

      v23[2] = v30 + 1;
      v31 = &v23[2 * v30];
      v31[4] = v25;
      v31[5] = v26;
      goto LABEL_2;
    }
  }

  v32 = v23[2];
  v123 = v19 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v32)
  {
    v134 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v134;
    v34 = *(*v129 + 104);
    v35 = v23 + 5;
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;

      v38 = v34(v36, v37);

      v134 = v33;
      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v33 = v134;
      }

      v33[2] = v40 + 1;
      v33[v40 + 4] = v38;
      v35 += 2;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v41 = (*(*v129 + 104))(countAndFlagsBits, object);

  v42 = &unk_2B7000;
  if (Array<A>.isNullVector.getter(v41))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_22;
  }

  Array<A>.dot(other:)(v41, v41);
  v50 = sqrt(v49);
  v51 = 0;
  v134 = static Array._allocateUninitialized(_:)();
  v52 = v33[2];
  object = v33 + 4;
  v53 = v41 + 32;
  v118 = v120 + 32;
  v117 = (v116 + 8);
  v116 += 32;
  *&v54 = 134218242;
  v115 = v54;
  v123 = v52;
  countAndFlagsBits = v41;
  while (v51 != v52)
  {
    v55 = v51;
    if (v51 >= v33[2])
    {
      goto LABEL_61;
    }

    v56 = object[v51++];
    v57 = *(v41 + 16);
    if (v57 == *(v56 + 16))
    {
      if (v57)
      {
        v58 = 0;
        v59 = (v56 + 32);
        v60 = 0.0;
        do
        {
          v60 = v60 + *(v53 + 8 * v58) * v59[v58];
          ++v58;
        }

        while (v57 != v58);
        v61 = 0.0;
        do
        {
          v62 = *v59++;
          v61 = v61 + v62 * v62;
          --v57;
        }

        while (v57);
      }

      else
      {
        v61 = 0.0;
        v60 = 0.0;
      }

      v67 = sqrt(v61);
      if (v42[95] != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v68 = v60 / (v50 * v67);
      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static Logger.voiceCommands);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v122 = v51;
        v73 = v72;
        v74 = swift_slowAlloc();
        v133 = v74;
        *v73 = v115;
        *(v73 + 4) = v68;
        *(v73 + 12) = 2080;
        v75 = v125;
        v76 = v126;
        Array.subscript.getter();
        v77 = (*(v120 + 32))(v76);
        v79 = v78;
        (*v117)(v75, v126);
        v80 = v77;
        v41 = countAndFlagsBits;
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, &v133);

        *(v73 + 14) = v81;
        _os_log_impl(&dword_0, v70, v71, "[TfIdfFuzzyMatcher] score: %f, title: %s", v73, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        OUTLINED_FUNCTION_15_0();
        v51 = v122;
        OUTLINED_FUNCTION_15_0();
      }

      v42 = &unk_2B7000;
      v52 = v123;
      if (v68 > 0.15)
      {
        v83 = v125;
        v82 = v126;
        Array.subscript.getter();
        v84 = v51;
        v85 = *(TupleTypeMetadata2 + 48);
        v86 = v119;
        v87 = v83;
        v41 = countAndFlagsBits;
        (*v116)(v119, v87, v82);
        *&v86[v85] = v68;
        v51 = v84;
        type metadata accessor for Array();
        Array.append(_:)();
      }
    }

    else
    {
      if (v42[95] != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Logger.voiceCommands);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_0, v64, v65, "[TfIdfFuzzyMatcher] mismatched vector sizes - this should not have happened. Please file a bug.", v66, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      v51 = v55 + 1;
    }
  }

  v88 = v42;

  v90 = v134;
  v133 = v134;
  __chkstk_darwin(v89);
  v91 = v120;
  v114[-2] = v126;
  v114[-1] = v91;
  v92 = type metadata accessor for Array();

  OUTLINED_FUNCTION_1_4();
  v93 = swift_getWitnessTable();
  v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in TfIdfFuzzyMatcher.match(term:in:), &v114[-4], v92, &type metadata for Double, &type metadata for Never, v93, &protocol witness table for Never, v94);

  v96 = specialized Sequence<>.max()(v95);
  v98 = v97;

  if (v98)
  {

    if (v88[95] != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    __swift_project_value_buffer(v100, static Logger.voiceCommands);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "[TfIdfFuzzyMatcher] empty results after running matcher", v103, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_56;
  }

  if ((v96 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {

    return 0;
  }

  v133 = v90;
  __chkstk_darwin(v99);
  v104 = v126;
  v114[-4] = v126;
  v114[-3] = v91;
  v114[-2] = v96;
  v106 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #5 in TfIdfFuzzyMatcher.match(term:in:), &v114[-6], v92, TupleTypeMetadata2, &type metadata for Never, v93, &protocol witness table for Never, v105);

  v133 = v106;
  swift_getWitnessTable();
  v133 = _ArrayProtocol.filter(_:)();
  __chkstk_darwin(v133);
  v114[-2] = v104;
  v114[-1] = v91;
  swift_getWitnessTable();
  v107 = Sequence.sorted(by:)();

  v133 = v107;
  v108 = Collection.isEmpty.getter();
  if (v108)
  {

    goto LABEL_56;
  }

  v133 = v107;
  __chkstk_darwin(v108);
  v114[-2] = v104;
  v114[-1] = v91;
  KeyPath = swift_getKeyPath();
  v111 = __chkstk_darwin(KeyPath);
  v114[-2] = v91;
  v114[-1] = v111;
  v113 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #4 in TfIdfFuzzyMatcher.match(term:in:), &v114[-4], v92, v104, &type metadata for Never, v93, &protocol witness table for Never, v112);

  return CustomIntentDisambiguationItemContainer.init(items:)(v113).items._rawValue;
}

uint64_t closure #1 in TfIdfFuzzyMatcher.match(term:in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, Swift::String *a3@<X8>)
{
  (*(a2 + 8))(&v6, a1, a2);
  v11 = v7;
  outlined destroy of String?(&v11, &_sSSSgMd, &_sSSSgMR);
  v12 = v8;
  outlined destroy of String?(&v12, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v10 = v9;
  outlined destroy of String?(&v10, &_sSaySSGMd, &_sSaySSGMR);
  v4 = String.lowercased()();

  *a3 = v4;
  return result;
}

uint64_t closure #4 in TfIdfFuzzyMatcher.match(term:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2);
  *a3 = *&v9[*(TupleTypeMetadata2 + 48)];
  return (*(*(a2 - 8) + 8))(v9, a2);
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double closure #5 in TfIdfFuzzyMatcher.match(term:in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v16 - v11;
  v13 = *(v10 + 48);
  (*(v14 + 16))(&v16 - v11, a1, TupleTypeMetadata2);
  (*(*(a2 - 8) + 32))(a3, v12, a2);
  result = *(a1 + *(TupleTypeMetadata2 + 48)) / a4;
  *(a3 + v13) = result;
  return result;
}

uint64_t implicit closure #4 in TfIdfFuzzyMatcher.match(term:in:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + class metadata base offset for KeyPath);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v4 + 16))(&v14 - v9);
  v11 = *(v3 + 48);
  v12 = *&v10[v11];
  (*(*(*(v2 + class metadata base offset for KeyPath + 8) - 8) + 32))(v8, v10);
  *&v8[v11] = v12;
  swift_getAtKeyPath();
  return (*(v4 + 8))(v8, v3);
}

double TfIdfFuzzyMatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.15;
  *(v0 + 16) = xmmword_216C60;
  return result;
}

double TfIdfFuzzyMatcher.init()()
{
  result = 0.15;
  *(v0 + 16) = xmmword_216C60;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

BOOL partial apply for closure #7 in TfIdfFuzzyMatcher.match(term:in:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #7 in TfIdfFuzzyMatcher.match(term:in:)(a1, a2);
}

uint64_t outlined destroy of String?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LNValueType.executeCommonVoiceCommandTaskBuilder.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v34 - v3;
  v5 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v0);
  if (!v7)
  {
    outlined consume of VoiceCommandIntentValueType(v5, v6, 0);
LABEL_5:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    OUTLINED_FUNCTION_1_5();
    v12 = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
    goto LABEL_6;
  }

  if (v7 == 1)
  {
LABEL_3:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    v8 = OUTLINED_FUNCTION_2_3();
    v12 = static UsoTaskBuilder_execute_common_VoiceCommand.unitTaskBuilder(value:symbol:unitName:)(v8, v9, v10, v11, 0, 0);
LABEL_6:
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_216010;
    *(v14 + 32) = v13;
    v15 = type metadata accessor for UsoBuilderOptions();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);

    static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

    outlined destroy of UsoBuilderOptions?(v4);
    v16 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v18 = v17;

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.voiceCommands);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315138;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_0, v20, v21, "Building nlv4 prompt:\n%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
    }

    return v13;
  }

  switch(v5)
  {
    case 2uLL:
    case 0x11uLL:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Attempting to make nlv4 prompt for unsupported value type", v29, 2u);
      }

      v13 = 0;
      break;
    case 3uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v30 = OUTLINED_FUNCTION_2_3();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.currencyTaskBuilder(value:currencyCode:)(v30, v31, v32, v33);
      goto LABEL_6;
    case 4uLL:
    case 5uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.dateTaskBuilder()();
      goto LABEL_6;
    case 6uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.dateIntervalTaskBuilder()();
      goto LABEL_6;
    case 7uLL:
      goto LABEL_3;
    case 8uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.recurrenceRuleTaskBuilder()();
      goto LABEL_6;
    case 9uLL:
    case 0xBuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.numberTaskBuilder()();
      goto LABEL_6;
    case 0xAuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.entityTaskBuilder()();
      goto LABEL_6;
    case 0xCuLL:
    case 0xDuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.personTaskBuilder(value:)();
      goto LABEL_6;
    case 0xEuLL:
    case 0xFuLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.placemarkTaskBuilder()();
      goto LABEL_6;
    case 0x12uLL:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      v12 = static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)();
      goto LABEL_6;
    default:
      goto LABEL_5;
  }

  return v13;
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of VoiceCommandIntentValueType(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void *CustomIntentStateAttachment.customIntentResponse.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *WorkflowDataModels.LinkActionModel.snippetAction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.__allocating_init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v17 = swift_allocObject();
  ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v17 = type metadata accessor for CATOption();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  OUTLINED_FUNCTION_3();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v19 = a1;
  v20 = a2;
  v21 = a5;
  LNActionMetadata.firstParameterMetadata(from:)(v20);
  v10[7] = v22;
  if (v22)
  {
    v22 = [v22 valueType];
  }

  v10[8] = v22;
  outlined init with copy of DeviceState(a6, (v10 + 9));
  outlined init with copy of DeviceState(a9, (v10 + 14));
  outlined init with copy of DeviceState(a6, v31);
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v23 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v26 = CATWrapper.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  type metadata accessor for LinkActionDialogTemplating();
  v27 = swift_allocObject();
  v27[14] = v25;
  v27[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v27[11] = v26;
  outlined init with take of Output(v31, v27 + 2);
  v27[7] = a7;
  v27[8] = a8;
  v27[9] = v23;
  v27[10] = v24;
  v10[19] = v27;
  return v10;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v63 = v11 - v10;
  v12 = type metadata accessor for Parse();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v66 = v14;
  v67 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v64 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = v60 - v19;
  v20 = type metadata accessor for Input();
  v21 = OUTLINED_FUNCTION_7_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v29, static Logger.voiceCommands);
  (*(v23 + 16))(v28, a1, v20);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_48();
    v60[1] = a1;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_85();
    v62 = a2;
    v35 = v34;
    v68 = v34;
    *v33 = 136315138;
    Input.description.getter();
    v61 = v7;
    (*(v23 + 8))(v28, v20);
    v36 = OUTLINED_FUNCTION_76();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v38);
    v7 = v61;

    *(v33 + 4) = v39;
    _os_log_impl(&dword_0, v30, v31, "#ShortcutsLinkPromptForValueFlowStrategy actionForInput: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v23 + 8))(v28, v20);
  }

  v40 = v65;
  Input.parse.getter();
  v41 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v40);
  v42 = v66;
  v43 = *(v66 + 8);
  v44 = OUTLINED_FUNCTION_62();
  v43(v44);
  switch(v41)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v46 = v64;
      Input.parse.getter();
      v47 = *(v42 + 88);
      v48 = OUTLINED_FUNCTION_62();
      v50 = v49(v48);
      if (v50 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v50 == enum case for Parse.directInvocation(_:))
      {
        v52 = *(v42 + 96);
        v53 = OUTLINED_FUNCTION_62();
        v54(v53);
        v55 = v63;
        (*(v7 + 32))(v63, v46, v4);
        if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v56)
        {
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v58 & 1) == 0)
          {
            static ActionForInput.ignore()();
            return (*(v7 + 8))(v55, v4);
          }
        }

        static ActionForInput.handle()();
        return (*(v7 + 8))(v55, v4);
      }

      if (v50 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
      {
LABEL_9:
        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v59 = OUTLINED_FUNCTION_62();
      return (v43)(v59);
  }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for USOParse();
  v1[13] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for NLIntent();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Parse();
  v1[19] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Input();
  v1[22] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[23] = v20;
  v22 = *(v21 + 64);
  v1[24] = OUTLINED_FUNCTION_28();
  v23 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v23, v24, v25);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0 + 21;
  v1 = v0[21];
  v3 = v0 + 20;
  v4 = v0[20];
  v6 = v0 + 19;
  v5 = v0[19];
  v7 = v0[8];
  Input.parse.getter();
  v8 = *(v4 + 88);
  v9 = OUTLINED_FUNCTION_9_3();
  v11 = v10(v9);
  if (v11 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v12 = v0[21];
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[17];
    (*(v0[20] + 96))(v12, v0[19]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[27] = v16;
    *v16 = v0;
    v16[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
    v17 = v0[9];
    OUTLINED_FUNCTION_73(v0[18]);
    OUTLINED_FUNCTION_21_0();

    return ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)(v18);
  }

  if (v11 == enum case for Parse.directInvocation(_:))
  {
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[9];
    v24 = v0[10];
    (*(v0[20] + 96))(v0[21], v0[19]);
    v25 = *(v22 + 32);
    v26 = OUTLINED_FUNCTION_9_3();
    v27(v26);
    ShortcutsLinkPromptForValueFlowStrategy.parse(directInvocation:)(v21);
    v28 = *(v22 + 8);
    v29 = OUTLINED_FUNCTION_62();
    v30(v29);
    goto LABEL_13;
  }

  if (v11 != enum case for Parse.uso(_:))
  {
    goto LABEL_12;
  }

  v2 = v0 + 15;
  v31 = v0[15];
  v32 = v0[21];
  v3 = v0 + 14;
  v33 = v0[14];
  v6 = v0 + 13;
  v34 = v0[13];
  (*(v0[20] + 96))(v32, v0[19]);
  (*(v33 + 32))(v31, v32, v34);
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_12:
    (*(*v3 + 8))(*v2, *v6);
LABEL_13:
    OUTLINED_FUNCTION_12_2();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_21_0();

    __asm { BRAA            X2, X16 }
  }

  v35 = swift_task_alloc();
  v0[29] = v35;
  *v35 = v0;
  v35[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
  v36 = v0[9];
  OUTLINED_FUNCTION_73(v0[15]);
  OUTLINED_FUNCTION_21_0();

  return ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)(v37);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 224) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  (*(v0[17] + 8))(v0[18], v0[16]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_87();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 240) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_87();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[28];
  (*(v0[17] + 8))(v0[18], v0[16]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[30];
  (*(v0[14] + 8))(v0[15], v0[13]);
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v24 = v20[23];
  v23 = v20[24];
  v25 = v20[22];
  v26 = v20[8];
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[23];
  v31 = v20[24];
  v33 = v20[22];
  if (v30)
  {
    v34 = OUTLINED_FUNCTION_48();
    v35 = OUTLINED_FUNCTION_85();
    a9 = v35;
    *v34 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = *(v32 + 8);
    v40 = OUTLINED_FUNCTION_76();
    v41(v40);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &a9);

    *(v34 + 4) = v42;
    _os_log_impl(&dword_0, v28, v29, "#ShortcutsLinkPromptForValueFlowStrategy parseValueResponse from: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v43 = *(v32 + 8);
    v44 = OUTLINED_FUNCTION_76();
    v45(v44);
  }

  v46 = [*(v20[9] + 48) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  OUTLINED_FUNCTION_71();
  v20[25] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v20[26] = v47;
  *v47 = v48;
  v47[1] = ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:);
  OUTLINED_FUNCTION_27_0();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v49, v50, v51);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Locale();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VoiceCommandsNLIntent(0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:), 0, 0);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[3];
  v2 = v1[8];
  v0[8] = v2;
  if (!v2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v20))
    {
      v21 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v21);
      OUTLINED_FUNCTION_26(&dword_0, v22, v23, "#ShortcutsLinkPromptForFlowStrategy parseValueResponse has nil valueType");
      OUTLINED_FUNCTION_17();
    }

LABEL_15:

    v34 = v0[6];
    v33 = v0[7];

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1[7];
  v0[9] = v3;
  if (!v3)
  {
    v24 = one-time initialization token for voiceCommands;
    v25 = v2;
    if (v24 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = OUTLINED_FUNCTION_30_1(v27);
    v29 = v0[8];
    if (v28)
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from NLIntent");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v19 = v29;
    }

    goto LABEL_15;
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[2];
  v7 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_21_2(v7);
  (*(v8 + 16))(v4, v6);
  v9 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v2;
  v10 = v3;
  dispatch thunk of DeviceState.siriLocale.getter();
  v11 = type metadata accessor for ContactResolver();
  OUTLINED_FUNCTION_66(v11);
  v12 = ContactResolver.init()();
  v0[10] = v12;
  OUTLINED_FUNCTION_54(async function pointer to specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
  v37 = v13;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:);
  v15 = v0[6];
  v16 = OUTLINED_FUNCTION_73(v0[7]);

  return v37(v16, v10, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = v3[11];
  v5 = v3[10];
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[5];
  v9 = v3[4];
  v10 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v13 + 96) = v12;

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_20_1();
  v16(v15);
  outlined destroy of VoiceCommandsNLIntent(v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_24_1();
  v31 = v0;
  v1 = *(v0 + 96);
  if (!v1)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = OUTLINED_FUNCTION_30_1(v20);
    v22 = *(v0 + 64);
    if (v21)
    {
      v23 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v23);
      OUTLINED_FUNCTION_26(&dword_0, v24, v25, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from NLIntent");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v19 = v22;
    }

    v27 = *(v0 + 48);
    v26 = *(v0 + 56);

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v30 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v30);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "#ShortcutsLinkPromptForFlowStrategy parsed value: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0();
  }

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(nlIntent:);
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78();

  return ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = *(v0 + 120);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = OUTLINED_FUNCTION_6_4();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 112);

  return v5();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Locale();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:), 0, 0);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[8];
  v0[7] = v2;
  if (v2)
  {
    v3 = v1[7];
    v0[8] = v3;
    if (v3)
    {
      v4 = v0[6];
      v5 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
      v2;
      v6 = v3;
      OUTLINED_FUNCTION_9_3();
      dispatch thunk of DeviceState.siriLocale.getter();
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:);
      v8 = v0[6];
      OUTLINED_FUNCTION_73(v0[2]);

      return LNValueType.getLNValue(usoParse:parameterMetadata:locale:)();
    }

    v16 = one-time initialization token for voiceCommands;
    v17 = v2;
    if (v16 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = OUTLINED_FUNCTION_30_1(v19);
    v21 = v0[7];
    if (v20)
    {
      v22 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v22);
      OUTLINED_FUNCTION_26(&dword_0, v23, v24, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v11 = v21;
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v12))
    {
      v13 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v13);
      OUTLINED_FUNCTION_26(&dword_0, v14, v15, "#ShortcutsLinkPromptForFlowStrategy parseValueResponse has nil valueType");
      OUTLINED_FUNCTION_17();
    }
  }

  v25 = v0[6];

  v26 = OUTLINED_FUNCTION_2_4();

  return v27(v26);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[9];
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v9 + 80) = v8;

  v10 = v2[6];
  v11 = v2[5];
  v12 = v2[4];
  if (v0)
  {

    v13 = *(v11 + 8);
  }

  else
  {
    v16 = *(v11 + 8);
  }

  v14 = OUTLINED_FUNCTION_9_3();
  v15(v14);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 80))
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = ShortcutsLinkPromptForValueFlowStrategy.parse(usoParse:);
    v2 = *(v0 + 24);
    v3 = OUTLINED_FUNCTION_72();

    return ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(v3);
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = OUTLINED_FUNCTION_30_1(v7);
    v9 = *(v0 + 56);
    if (v8)
    {
      v10 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v10);
      OUTLINED_FUNCTION_26(&dword_0, v11, v12, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v6 = v9;
    }

    v13 = *(v0 + 48);

    v14 = OUTLINED_FUNCTION_2_4();

    return v15(v14);
  }
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
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 104);
  v4 = *(v0 + 48);

  v5 = OUTLINED_FUNCTION_6_4();

  return v6(v5);
}

{
  OUTLINED_FUNCTION_12_0();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v6);
    OUTLINED_FUNCTION_26(&dword_0, v7, v8, "#ShortcutsLinkPromptForValueFlowStrategy cannot get LNValue from USO Parse");
    OUTLINED_FUNCTION_17();
  }

  else
  {

    v2 = v5;
  }

  v9 = *(v0 + 48);

  v10 = OUTLINED_FUNCTION_2_4();

  return v11(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  v5 = *(v0 + 96);

  return v4();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.parse(directInvocation:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Parse.DirectInvocation.userData.getter();
  if (!v9)
  {
    v29 = 0u;
    v30 = 0u;
    goto LABEL_7;
  }

  specialized Dictionary.subscript.getter(0x65756C6176, 0xE500000000000000, v9, &v29);

  if (!*(&v30 + 1))
  {
LABEL_7:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v29, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v10 = v27;
    v11 = v28;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
    v12 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v1)
    {

      outlined consume of Data._Representation(v10, v11);
      v2 = 0;
    }

    else
    {
      v23 = v12;
      outlined consume of Data._Representation(v10, v11);
      if (v23)
      {
        return v23;
      }
    }
  }

LABEL_8:
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);
  (*(v5 + 16))(v8, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v31 = v2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v29 = v17;
    *v16 = 136315138;
    v18 = Parse.DirectInvocation.userData.getter();
    v26 = v4;
    if (!v18)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v19 = Dictionary.description.getter();
    v21 = v20;

    (*(v5 + 8))(v8, v26);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "#ShortcutsLinkPromptForValueFlowStrategy could not get value from direct invocation. %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return 0;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_8_0();
  v1[58] = v2;
  v1[59] = v0;
  v3 = type metadata accessor for DialogPhase();
  v1[60] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[61] = v4;
  v6 = *(v5 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[64] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[65] = v8;
  v10 = *(v9 + 64);
  v1[66] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for SpeakableString();
  v1[67] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[68] = v12;
  v14 = *(v13 + 64);
  v1[69] = OUTLINED_FUNCTION_28();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16, v17, v18);
}

{
  v86 = v0;
  v1 = *(v0[59] + 56);
  v0[74] = v1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v1 title];
  if (!v2)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

  v3 = [objc_opt_self() sharedPreferences];
  outlined bridged method (ob) of @objc AFPreferences.languageCode()(v3);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v7 = [v2 localizedStringForLocaleIdentifier:v5];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v8;

LABEL_9:
  v0[76] = v6;
  v0[75] = v2;
  v9 = v0[73];
  v10 = v0[59];
  type metadata accessor for ShortcutsLinkNLContextProvider();
  swift_initStackObject();
  ShortcutsLinkNLContextProvider.makeContextForNeedsValue(valueType:)(*(v10 + 64), v9);
  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0();
  }

  v12 = v0[73];
  v13 = v0[72];
  v14 = type metadata accessor for Logger();
  v0[77] = __swift_project_value_buffer(v14, static Logger.voiceCommands);
  outlined init with copy of NLContextUpdate?(v12, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[72];
  if (!v17)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    if (!v1)
    {
      goto LABEL_19;
    }

LABEL_14:
    v23 = v1;
    v24 = swift_task_alloc();
    v0[78] = v24;
    *v24 = v0;
    v24[1] = ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue();
    v25 = v0[59];
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(v26);
  }

  v19 = v0[71];
  v20 = OUTLINED_FUNCTION_48();
  v21 = OUTLINED_FUNCTION_85();
  v85 = v21;
  *v20 = 136315138;
  outlined init with copy of NLContextUpdate?(v18, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[71], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v22 = 0;
  }

  else
  {
    v22 = NLContextUpdate.nluSystemDialogActs.getter();
    OUTLINED_FUNCTION_21_2(v11);
    v30 = *(v29 + 8);
    v31 = OUTLINED_FUNCTION_76();
    v32(v31);
  }

  v33 = v0[72];
  v0[57] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMR);
  v34 = String.init<A>(describing:)();
  v36 = v35;
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v85);

  *(v20 + 4) = v37;
  _os_log_impl(&dword_0, v15, v16, "#ShortcutsLinkPromptForValueFlowStrategy makePromptForValue: %s", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_11_0();

  if (v1)
  {
    goto LABEL_14;
  }

LABEL_19:
  v0[83] = _swiftEmptyArrayStorage;
  v38 = specialized Array.count.getter(_swiftEmptyArrayStorage);
  v0[84] = v38;
  if (v38)
  {
    v39 = v38;
    v40 = v0[77];
    v41 = v0[76];

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v43))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v44, v45, "#ShortcutsLinkPromptForValueFlowStrategy value has provided options so will use disambiguation");
      OUTLINED_FUNCTION_11_0();
    }

    v46 = v0[68];
    v1 = v0[59];

    v84 = *(v1 + 152);
    v47 = *(v1 + 24);
    v0[90] = v47;
    v11 = 0;
    v83 = [v47 dialog];
    v0[91] = v83;
    v48 = _swiftEmptyArrayStorage;
    while (1)
    {
      v0[92] = v48;
      if (v39 == v11)
      {
        break;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_44;
        }

        v49 = _swiftEmptyArrayStorage[v11 + 4];
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v50 = v0[69];
      v51 = *(v49 + 16);
      v52 = *(v49 + 24);
      String.toSpeakableString.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_3();
        v56 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56, v57, v58, v59, v60, v61, v62);
        v48 = v63;
      }

      v1 = v48[2];
      v53 = v48[3];
      if (v1 >= v53 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v1 + 1, 1, v48, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v48 = v64;
      }

      OUTLINED_FUNCTION_40_1();
      (*(v46 + 32))(v54 + v55 * v1);
      ++v11;
    }

    v65 = swift_task_alloc();
    v0[93] = v65;
    *v65 = v0;
    OUTLINED_FUNCTION_20_2(v65, v66, v67, v68, v69, v70, v71, v72, v83);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
  }

  else
  {
    v74 = v0[76];
    v75 = v0[59];
    v76 = *(v75 + 152);
    if (v74)
    {
      v77 = v0[75];
    }

    else
    {
      v78 = [*(v75 + 24) parameterName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_74();

      v75 = v0[59];
    }

    v0[85] = v74;
    v79 = *(v75 + 24);
    v0[86] = v79;
    v0[87] = [v79 dialog];
    v80 = *(v75 + 48);
    v81 = swift_task_alloc();
    v0[88] = v81;
    *v81 = v0;
    OUTLINED_FUNCTION_17_1(v81);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 624);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[79] = v0;

  if (v0)
  {
    v11 = v5[76];

    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v5[80] = v3;
    v15 = swift_task_alloc();
    v5[81] = v15;
    *v15 = v9;
    v15[1] = ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue();

    return Array<A>.toDisambiguationItemModels()();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 648);
  v5 = *(v3 + 640);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 656) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[49] = v1;
  v2[50] = v4;
  v2[51] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 704);
  v8 = *(v7 + 696);
  v9 = *(v7 + 680);
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 712) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 744);
  v8 = *(v7 + 736);
  v9 = *(v7 + 728);
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 752) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[98];
  v3 = v1[97];
  v4 = v1[96];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[103];
  v6 = v4[102];
  v7 = v4[101];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[95];
  v4 = v0[83];
  outlined destroy of WorkflowDataModels.LinkPromptForValueModel((v0 + 2));

  outlined destroy of WorkflowDataModels.LinkActionModel((v0 + 24));
  outlined consume of Data?(v2, v1);

  v5 = OUTLINED_FUNCTION_26_2();
  v6(v5);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[106];
  v3 = v1[105];
  v4 = v1[104];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 760);
  v2 = *(v0 + 664);

  v3 = OUTLINED_FUNCTION_26_2();
  v4(v3);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

void *ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  v1 = *(v0 + 656);
  *(v0 + 664) = v1;
  v2 = specialized Array.count.getter(v1);
  *(v0 + 672) = v2;
  v52 = v2;
  if (v2)
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 608);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v6))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v7, v8, "#ShortcutsLinkPromptForValueFlowStrategy value has provided options so will use disambiguation");
      OUTLINED_FUNCTION_11_0();
    }

    v9 = *(v0 + 544);
    v10 = *(v0 + 472);

    v51 = *(v10 + 152);
    v11 = *(v10 + 24);
    *(v0 + 720) = v11;
    result = [v11 dialog];
    v13 = 0;
    v50 = result;
    *(v0 + 728) = result;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 736) = v14;
      if (v52 == v13)
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = result;
      }

      else
      {
        if (v13 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v15 = *(v1 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v16 = *(v0 + 552);
      v17 = v15[2];
      v18 = v15[3];
      String.toSpeakableString.getter();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_3();
        v23 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v24, v25, v26, v27, v28, v29);
        v14 = v30;
      }

      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v14, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v14 = v31;
      }

      OUTLINED_FUNCTION_40_1();
      result = (*(v9 + 32))(v21 + v22 * v20);
      ++v13;
    }

    v32 = swift_task_alloc();
    *(v0 + 744) = v32;
    *v32 = v0;
    OUTLINED_FUNCTION_20_2(v32, v33, v34, v35, v36, v37, v38, v39, v50);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
  }

  else
  {
    v41 = *(v0 + 608);
    v42 = *(v0 + 472);
    v43 = *(v42 + 152);
    if (v41)
    {
      v44 = *(v0 + 600);
    }

    else
    {
      v45 = [*(v42 + 24) parameterName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_74();

      v42 = *(v0 + 472);
    }

    *(v0 + 680) = v41;
    v46 = *(v42 + 24);
    *(v0 + 688) = v46;
    *(v0 + 696) = [v46 dialog];
    v47 = *(v42 + 48);
    v48 = swift_task_alloc();
    *(v0 + 704) = v48;
    *v48 = v0;
    OUTLINED_FUNCTION_17_1(v48);
    OUTLINED_FUNCTION_6_1();

    return LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)();
  }
}

void ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()()
{
  v3 = *(v0 + 688);
  v4 = OUTLINED_FUNCTION_41_1(*(v0 + 400));
  static DialogPhase.clarification.getter();
  v5 = [v4 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_74();

  v6 = OUTLINED_FUNCTION_60();
  v7(v6);
  OUTLINED_FUNCTION_23_2();
  OutputGenerationManifest.responseViewId.setter();
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_75();
  v10(v9);
  outlined init with copy of NLContextUpdate?(v48, v47);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v11 = [v4 catId];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v12 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v2[12]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v0 + 616);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v15))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_79(&dword_0, v16, v17, "ShortcutsLinkPromptForValueFlowStrategy no snippet output");
      OUTLINED_FUNCTION_15_0();
    }

    v18 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v18);
    *(v0 + 832) = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_64();
    *(v0 + 840) = v19;
    OUTLINED_FUNCTION_69(v19, xmmword_216010);
    OUTLINED_FUNCTION_32_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 848) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_28_1();
LABEL_5:
    *(v22 + 8) = v23;
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_58();

    __asm { BR              X3 }
  }

  v26 = [v46 viewSnippet];
  if (v26)
  {
    v27 = v26;
    v49 = v4;
    v28 = [v26 viewData];

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_86();
  }

  else
  {
    if (!*(v0 + 672))
    {
      v42 = type metadata accessor for ResponseFactory();
      OUTLINED_FUNCTION_66(v42);
      *(v0 + 768) = ResponseFactory.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v43 = OUTLINED_FUNCTION_64();
      *(v0 + 776) = v43;
      OUTLINED_FUNCTION_69(v43, xmmword_216010);
      OUTLINED_FUNCTION_32_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 784) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_29_1();
      goto LABEL_5;
    }

    v49 = v4;
  }

  OUTLINED_FUNCTION_55();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_75();
  App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_82();

  v29 = v49;
  v30 = DialogExecutionResult.firstDialogFullPrint()();
  OUTLINED_FUNCTION_39_1(v30.value._countAndFlagsBits, v30.value._object);
  *(v0 + 96) = v4;
  v31 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v31);
  v32 = OUTLINED_FUNCTION_20_1();
  outlined copy of Data?(v32, v33);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v29, v0 + 272);

  *(v0 + 808) = ResponseFactory.init()();
  *(v0 + 376) = type metadata accessor for WorkflowDataModels(0);
  OUTLINED_FUNCTION_27_2();
  *(v0 + 384) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v34, v35);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  memcpy(boxed_opaque_existential_1, (v0 + 16), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v37 = OUTLINED_FUNCTION_64();
  *(v0 + 816) = v37;
  OUTLINED_FUNCTION_80(v37, xmmword_216010);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 824) = v38;
  *v38 = v39;
  OUTLINED_FUNCTION_16_2(v38);
  OUTLINED_FUNCTION_58();

  __asm { BR              X4 }
}

{
  v3 = *(v0 + 720);
  v4 = OUTLINED_FUNCTION_41_1(*(v0 + 424));
  static DialogPhase.clarification.getter();
  v5 = [v4 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_74();

  v6 = OUTLINED_FUNCTION_60();
  v7(v6);
  OUTLINED_FUNCTION_23_2();
  OutputGenerationManifest.responseViewId.setter();
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_75();
  v10(v9);
  outlined init with copy of NLContextUpdate?(v48, v47);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v11 = [v4 catId];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v12 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v2[12]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v0 + 616);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v15))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_79(&dword_0, v16, v17, "ShortcutsLinkPromptForValueFlowStrategy no snippet output");
      OUTLINED_FUNCTION_15_0();
    }

    v18 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v18);
    *(v0 + 832) = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_64();
    *(v0 + 840) = v19;
    OUTLINED_FUNCTION_69(v19, xmmword_216010);
    OUTLINED_FUNCTION_32_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 848) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_28_1();
LABEL_5:
    *(v22 + 8) = v23;
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_58();

    __asm { BR              X3 }
  }

  v26 = [v46 viewSnippet];
  if (v26)
  {
    v27 = v26;
    v49 = v4;
    v28 = [v26 viewData];

    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_86();
  }

  else
  {
    if (!*(v0 + 672))
    {
      v42 = type metadata accessor for ResponseFactory();
      OUTLINED_FUNCTION_66(v42);
      *(v0 + 768) = ResponseFactory.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v43 = OUTLINED_FUNCTION_64();
      *(v0 + 776) = v43;
      OUTLINED_FUNCTION_69(v43, xmmword_216010);
      OUTLINED_FUNCTION_32_1(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 784) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_29_1();
      goto LABEL_5;
    }

    v49 = v4;
  }

  OUTLINED_FUNCTION_55();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_75();
  App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_82();

  v29 = v49;
  v30 = DialogExecutionResult.firstDialogFullPrint()();
  OUTLINED_FUNCTION_39_1(v30.value._countAndFlagsBits, v30.value._object);
  *(v0 + 96) = v4;
  v31 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v31);
  v32 = OUTLINED_FUNCTION_20_1();
  outlined copy of Data?(v32, v33);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v29, v0 + 272);

  *(v0 + 808) = ResponseFactory.init()();
  *(v0 + 376) = type metadata accessor for WorkflowDataModels(0);
  OUTLINED_FUNCTION_27_2();
  *(v0 + 384) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v34, v35);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
  memcpy(boxed_opaque_existential_1, (v0 + 16), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v37 = OUTLINED_FUNCTION_64();
  *(v0 + 816) = v37;
  OUTLINED_FUNCTION_80(v37, xmmword_216010);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 824) = v38;
  *v38 = v39;
  OUTLINED_FUNCTION_16_2(v38);
  OUTLINED_FUNCTION_58();

  __asm { BR              X4 }
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  v14 = *(v13 + 632);
  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 664);

  v15 = *(v13 + 712);
  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 664);

  v15 = *(v13 + 752);
  OUTLINED_FUNCTION_9_4();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for Locale();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:), 0, 0);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)()
{
  if (![*(v0 + 192) dynamicOptionsSupport])
  {
    v19 = *(v0 + 224);

    v20 = *(v0 + 8);
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 200);
  v2 = objc_opt_self();
  v3 = *(v1 + 48);
  v4 = [v2 policyWithActionMetadata:v3];
  *(v0 + 176) = 0;
  *(v0 + 232) = v4;
  v5 = [v4 connectionWithError:v0 + 176];
  *(v0 + 240) = v5;
  v6 = *(v0 + 176);
  if (!v5)
  {
    v23 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24 = *(v0 + 224);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  v7 = v5;
  v30 = v3;
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v28 = v10[2];
  v29 = *(v0 + 192);
  v12 = v10[13];
  __swift_project_boxed_opaque_existential_1(v10 + 9, v10[12]);
  v13 = v6;
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v14 = *(v8 + 8);
  *(v0 + 248) = v14;
  *(v0 + 256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v11);
  v15 = String._bridgeToObjectiveC()();
  *(v0 + 264) = v15;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:);
  v16 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22LNDynamicOptionsResultCs5Error_pGMd, &_sSccySo22LNDynamicOptionsResultCs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v16;
  [v7 fetchOptionsForAction:v28 actionMetadata:v30 parameterMetadata:v29 searchTerm:0 localeIdentifier:v15 completionHandler:?];
  OUTLINED_FUNCTION_77();

  return _swift_continuation_await(v17);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 272) = *(v4 + 48);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0 + 18;
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];

  v9 = v7[13];
  __swift_project_boxed_opaque_existential_1(v7 + 9, v7[12]);
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v4(v5, v6);
  v80 = v8;
  v10 = [v8 sections];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNDynamicOptionsSection, LNDynamicOptionsSection_ptr);
  OUTLINED_FUNCTION_71();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = specialized Array.count.getter(v11);
  v13 = 0;
  v86 = v11 & 0xFFFFFFFFFFFFFF8;
  v88 = v11 & 0xC000000000000001;
  v85 = v11 + 32;
  v14 = _swiftEmptyArrayStorage;
  v82 = v12;
  while (v13 != v12)
  {
    if (v88)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v86 + 16))
      {
        goto LABEL_65;
      }

      v15 = *(v85 + 8 * v13);
    }

    v16 = v15;
    v17 = __OFADD__(v13++, 1);
    if (v17)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      OUTLINED_FUNCTION_0();
      goto LABEL_58;
    }

    v18 = [v15 options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNDynamicOption, LNDynamicOption_ptr);
    OUTLINED_FUNCTION_9_3();
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    }

    v21 = v14 >> 62;
    if (v14 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    }

    v23 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
      goto LABEL_66;
    }

    v91 = v20;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v21)
      {
LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v25 = *(v11 + 16);
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v14 & 0xFFFFFFFFFFFFFF8;
      v24 = *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1;
      goto LABEL_21;
    }

    if (v21)
    {
      goto LABEL_19;
    }

    v11 = v14 & 0xFFFFFFFFFFFFFF8;
    v24 = *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1;
    if (v24 < v23)
    {
      goto LABEL_18;
    }

LABEL_21:
    v26 = *(v11 + 16);
    v27 = v24 - v26;
    v28 = v11 + 8 * v26;
    if (v19 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = v31;
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (v27 < v33)
      {
        goto LABEL_70;
      }

      if (v32 < 1)
      {
        goto LABEL_71;
      }

      v83 = v33;
      v84 = v13;
      v34 = v28 + 32;
      lazy protocol witness table accessor for type [LNDynamicOption] and conformance [A]();
      for (i = 0; i != v32; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15LNDynamicOptionCGMd, &_sSaySo15LNDynamicOptionCGMR);
        v36 = specialized protocol witness for Collection.subscript.read in conformance [A](v1, i, v19);
        v38 = *v37;
        v36(v1, 0);
        *(v34 + 8 * i) = v38;
      }

      v12 = v82;
      v29 = v83;
      v13 = v84;
LABEL_31:

      if (v29 < v91)
      {
        goto LABEL_67;
      }

      if (v29 > 0)
      {
        v39 = *(v11 + 16);
        v17 = __OFADD__(v39, v29);
        v40 = v39 + v29;
        if (v17)
        {
          goto LABEL_68;
        }

        *(v11 + 16) = v40;
      }
    }

    else
    {
      v29 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v29)
      {
        if (v27 < v29)
        {
          goto LABEL_69;
        }

        v30 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      if (v91 > 0)
      {
        goto LABEL_67;
      }
    }
  }

  v41 = specialized Array.count.getter(v14);
  v1 = _swiftEmptyArrayStorage;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
    }

    v42 = 0;
    v87 = v14 & 0xC000000000000001;
    v89 = v41;
    v90 = v14;
    do
    {
      if (v87)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v14 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = [v43 title];
      v46 = String._bridgeToObjectiveC()();
      v47 = OUTLINED_FUNCTION_84(v46);

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = [v44 subtitle];
      if (v50)
      {
        v51 = v50;
        v52 = String._bridgeToObjectiveC()();
        v53 = OUTLINED_FUNCTION_84(v52);

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      v57 = [v44 image];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 inImage];
      }

      else
      {
        v59 = 0;
      }

      v11 = [v44 value];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = v1[2];
        v64 = OUTLINED_FUNCTION_38_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64, v65, v66, v67, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMR, &type metadata for ShortcutsLinkDisambiguationItem, v68);
        v1 = v69;
      }

      v61 = v1[2];
      v60 = v1[3];
      if (v61 >= v60 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin09ShortcutsE18DisambiguationItemVGMR, &type metadata for ShortcutsLinkDisambiguationItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
        v1 = v70;
      }

      ++v42;

      v1[2] = v61 + 1;
      v62 = &v1[7 * v61];
      v62[4] = v92;
      v62[5] = v49;
      v62[6] = v54;
      v62[7] = v56;
      v62[8] = v59;
      v62[9] = _swiftEmptyArrayStorage;
      v62[10] = v11;
      v14 = v90;
    }

    while (v89 != v42);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    goto LABEL_72;
  }

LABEL_58:
  v71 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v71, static Logger.voiceCommands);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v73))
  {
    v74 = OUTLINED_FUNCTION_48();
    *v74 = 134217984;
    *(v74 + 4) = v1[2];

    _os_log_impl(&dword_0, v72, v73, "ShortcutsLinkPromptForValueFlowStrategy: make prompt for entity value with DOP received %ld options", v74, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v75 = v81[29];
  v76 = v81[30];

  v77 = v81[28];

  v78 = v81[1];

  return v78(v1);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();

  v5 = v0[34];
  v6 = v0[28];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:), 0, 0);
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0[9] + 56);
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = ShortcutsLinkPromptForValueFlowStrategy.resolveDynamicOptions(lnValue:);
    v4 = v0[9];
    v5 = OUTLINED_FUNCTION_72();

    return ShortcutsLinkPromptForValueFlowStrategy.getDynamicOptions(paramMetadata:)(v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_4();

    return v8(v7);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (!*(*(v0 + 96) + 16) || !*(*(v0 + 72) + 64))
  {
    goto LABEL_8;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastObjCClass())
  {
    v14 = *(v0 + 96);
LABEL_8:
    v15 = *(v0 + 80);

LABEL_9:
    *(v0 + 64);
    goto LABEL_10;
  }

  v1 = [*(v0 + 64) value];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = *(v0 + 96);
  if ((v2 & 1) == 0)
  {
    v26 = *(v0 + 80);
    v27 = *(v0 + 96);

    goto LABEL_9;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
  OUTLINED_FUNCTION_64();
  v6 = *(*specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v3, 0) + 144);
  v7 = OUTLINED_FUNCTION_9_3();
  v9 = v8(v7);

  v10 = *(v0 + 80);
  if (*(v9 + 16))
  {
    v11 = *(v9 + 72);
    v12 = *(v9 + 80);
    v13 = *(v9 + 64);

    v12;
  }

  else
  {
    v28 = *(v0 + 64);

    v29 = v28;
    v30 = *(v0 + 64);
  }

LABEL_10:
  v16 = *(v0 + 8);
  OUTLINED_FUNCTION_87();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.deinit()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v2 = *(v0 + 152);

  return v0;
}

uint64_t ShortcutsLinkPromptForValueFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForValueFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy;

  return ShortcutsLinkPromptForValueFlowStrategy.parseValueResponse(input:)();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForValueFlowStrategy()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ShortcutsLinkPromptForValueFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue()();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v8 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v8);
      OUTLINED_FUNCTION_21_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_42_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyShySSGGMd, &_ss23_ContiguousArrayStorageCyShySSGGMR);
      v8 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v8);
      OUTLINED_FUNCTION_21_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    OUTLINED_FUNCTION_42_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v9 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v9);
      OUTLINED_FUNCTION_21_3(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_37_1(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 40);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit18SectionConvertible_pMd, &_s10SnippetKit18SectionConvertible_pMR);
    OUTLINED_FUNCTION_42_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v8 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v8);
      OUTLINED_FUNCTION_21_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin24DisambiguationVisualItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin24DisambiguationVisualItemVGMR);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_37_1(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 48);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_42_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_44_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDyS2SSgGGMd, &_ss23_ContiguousArrayStorageCySDyS2SSgGGMR);
      v8 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_1(v8);
      OUTLINED_FUNCTION_21_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_11_3();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SSgGMd, &_sSDyS2SSgGMR);
    OUTLINED_FUNCTION_42_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5, &type metadata accessor for DisplayHint, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16SiriDialogEngine15SpeakableStringV_Tt1g5, &type metadata accessor for SpeakableString, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow17TemplatingSectionV_Tt1g5, &type metadata accessor for TemplatingSection, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR, &type metadata for WFChooseFromListDisambiguationItem, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_2();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_27_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 56);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v12)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.languageCode()(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-1] - v6;
  v16[3] = &type metadata for AppInfoResolver;
  v16[4] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(a1, v16, a2, &v16[-1] - v6);
  v8 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v9 = 0;
  }

  else
  {
    v9 = AppDisplayInfo.displayName.getter();
    OUTLINED_FUNCTION_21_2(v8);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_9_3();
    v13(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v9;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [LNDynamicOption] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15LNDynamicOptionCGMd, &_sSaySo15LNDynamicOptionCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LNDynamicOption] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_9_4()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[66];
  v8 = v0[62];
  v7 = v0[63];
}

void OUTLINED_FUNCTION_10_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_12_2()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{
  *(a1 + 8) = ShortcutsLinkPromptForValueFlowStrategy.makePromptForValue();
  v2 = *(v1 + 528);
  return *(v1 + 464);
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[62];
  v9 = *(v0[65] + 8);
  return v0[66];
}

BOOL OUTLINED_FUNCTION_30_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_32_1@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

void *OUTLINED_FUNCTION_39_1(uint64_t a1, uint64_t a2)
{
  v3[24] = v5;
  v3[25] = v6;
  v3[26] = v8;
  v3[27] = v7;
  v3[28] = a1;
  v3[29] = a2;
  v3[30] = v2;
  v3[32] = 0;
  v3[33] = 0;
  v3[31] = v4;

  return memcpy(v3 + 2, v3 + 24, 0x50uLL);
}

void OUTLINED_FUNCTION_40_1()
{
  v4 = *(v0 + 552);
  v5 = *(v0 + 536);
  *(v1 + 16) = v2;
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7 = *(v3 + 72);
}

id OUTLINED_FUNCTION_41_1@<X0>(void *a1@<X8>)
{
  v10 = v1[70];
  v11 = v1[73];
  v3 = v1[66];
  v5 = v1[62];
  v4 = v1[63];
  v7 = v1[60];
  v6 = v1[61];
  v9 = v1[59];
  v1[95] = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_50(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{
  v1[100] = v2;
  v1[99] = v0;
  v4 = v1[83];
  v5 = v1[59];
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);

  return type metadata accessor for App();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_69(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_80(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v3 + 16, v3 + 104);
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_82()
{

  return specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v0 + 72, 2);
}

id OUTLINED_FUNCTION_84(uint64_t a1)
{
  v4 = *(v2 + 2616);

  return [v1 v4];
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_86()
{
}

uint64_t WFScreentimeCheckFlowStrategy.__allocating_init(appPolicyHandler:bundleId:deviceState:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  outlined init with take of AceServiceInvokerAsync(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  outlined init with take of AceServiceInvokerAsync(a4, v4 + 72);
  return v4;
}

uint64_t WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v1[12] = v7;
  v8 = async function pointer to static ResponseTemplates.appDisabledByScreenTime()[1];
  v9 = swift_task_alloc();
  v1[13] = v9;
  *v9 = v1;
  v9[1] = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();

  return static ResponseTemplates.appDisabledByScreenTime()(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  else
  {
    v3 = WFScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v6[13];
  __swift_project_boxed_opaque_existential_1(v6 + 9, v6[12]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v9;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);

  v10 = *(v0 + 8);

  return v10();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

Swift::Bool __swiftcall VoiceCommandsScreentimeCheckFlowStrategy.isAppAllowedByScreentime()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v0[7], v0[8], v1, v2) & 1;
}

uint64_t *WFScreentimeCheckFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  return v0;
}

uint64_t WFScreentimeCheckFlowStrategy.__deallocating_deinit()
{
  WFScreentimeCheckFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void INIntentResponse.localizedResponseString(isVox:intentName:)(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0 || (INIntentResponse.printedDialog()(), !v5))
  {

    INIntentResponse.localizedSpokenResponse(intentName:)(a2, a3);
  }
}

void INIntentResponse.printedDialog()()
{
  v0 = INIntentResponse.printedTemplate()();
  if (v0.value._object)
  {
    object = v0.value._object;
    type metadata accessor for CATSpeakableString();
    v2 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(v0.value._countAndFlagsBits, v0.value._object);
    v21 = *(v2 + 16);
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v23 = v2;
    v4 = (v2 + 40);
    v5 = &off_2B4000;
    v6 = v0.value._object;
    countAndFlagsBits = v0.value._countAndFlagsBits;
    v26 = v0.value._countAndFlagsBits;
    while (1)
    {
      if (v21 == v3)
      {

        OUTLINED_FUNCTION_1_6();
        CATSpeakableString.init(_:speak:)(countAndFlagsBits, object, v26, v6);
        return;
      }

      if (v3 >= *(v23 + 16))
      {
        break;
      }

      v7 = *(v4 - 1);
      v8 = *v4;

      v27 = static CATSpeakableString.unwrapProperty(propertyName:)();

      AnyHashable.init<A>(_:)();
      v9 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v22);
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = v9;

      if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&v28), (v12 & 1) == 0))
      {

        outlined destroy of AnyHashable(&v28);
        return;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v30);
      outlined destroy of AnyHashable(&v28);

      type metadata accessor for INObject();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v28 = countAndFlagsBits;
      v29 = object;
      v30 = v7;
      v31 = v8;
      v13 = [v27 v5[339]];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = OUTLINED_FUNCTION_0_4();
      v24 = v14;

      outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(v27);
      v28 = v26;
      v29 = v6;
      v30 = v7;
      v31 = v8;
      if (v15)
      {
        v26 = OUTLINED_FUNCTION_0_4();
        v17 = v16;

        v6 = v17;
      }

      else
      {
        v18 = [v27 v5[339]];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = OUTLINED_FUNCTION_0_4();
        v20 = v19;

        v6 = v20;
      }

      v4 += 2;
      ++v3;
      object = v24;
      v5 = &off_2B4000;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void *INIntentResponse.localizedSpokenResponse(intentName:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = static LocaleUtils.siriLanguageCode()();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v9 = OUTLINED_FUNCTION_1_6();
  *(v9 + 16) = xmmword_216850;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(a1, a2);

  v11 = static LocaleUtils.getLocale(preferredLocalizations:)(v10);
  v13 = v12;

  v14 = outlined bridged method (mbnnb) of @objc INIntentResponse._renderedResponse(forLanguage:requiresSiriCompatibility:)(v11, v13, 1, v3);
  if (!v15)
  {
    return 0;
  }

  v16 = v14;
  v17 = v15;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  v19 = INIntentResponse.localizedResponseTemplate(intentName:)(v18);
  v20 = (v19._object >> 56) & 0xF;
  if ((v19._object & 0x2000000000000000) == 0)
  {
    v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    type metadata accessor for CATSpeakableString();
    v21 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(v19._countAndFlagsBits, v19._object);
    v22 = static CATSpeakableString.applyPronunciationHints(template:variablesWithWrapper:intent:intentResponse:tokens:)(v19._countAndFlagsBits, v19._object, v21, 0, v3, 0);
    v24 = v23;

    OUTLINED_FUNCTION_1_6();
    v25 = v16;
    v26 = v17;
    v27 = v22;
    v28 = v24;
  }

  else
  {

    type metadata accessor for CATSpeakableString();
    OUTLINED_FUNCTION_1_6();
    v25 = v16;
    v26 = v17;
    v27 = 0;
    v28 = 0;
  }

  return CATSpeakableString.init(_:speak:)(v25, v26, v27, v28);
}

Swift::String __swiftcall INIntentResponse.localizedResponseTemplate(intentName:)(Swift::String intentName)
{
  object = intentName._object;
  countAndFlagsBits = intentName._countAndFlagsBits;
  v4 = static LocaleUtils.siriLanguageCode()();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v7 = OUTLINED_FUNCTION_1_6();
  *(v7 + 16) = xmmword_216850;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(countAndFlagsBits, object);

  static LocaleUtils.getLocale(preferredLocalizations:)(v8);

  v9 = String._bridgeToObjectiveC()();

  v10 = [v1 _responseTemplateForLanguage:v9 requiresSiriCompatibility:1];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String_optional __swiftcall INIntentResponse.printedTemplate()()
{
  INIntentResponse.getResponseCodeDictionary()();
  if (!v0)
  {
    goto LABEL_10;
  }

  specialized Dictionary.subscript.getter(0xD000000000000027, 0x8000000000230070, v0, &v7);

  if (!v8)
  {
    outlined destroy of Any?(&v7);
    v0 = 0;
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v1 = OUTLINED_FUNCTION_2_5();
  v2 = v1 == 0;
  if (v1)
  {
    v0 = v5;
  }

  else
  {
    v0 = 0;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v6;
  }

LABEL_11:
  result.value._object = v3;
  result.value._countAndFlagsBits = v0;
  return result;
}

void INIntentResponse.getResponseCodeDictionary()()
{
  v1 = [v0 _codableDescription];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v1);
    if (!v3)
    {
LABEL_31:
      __break(1u);
      return;
    }

    specialized Dictionary.subscript.getter(0xD000000000000015, 0x80000000002300D0, v3, &v20);

    if (!v21)
    {

      outlined destroy of Any?(&v20);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v4 = v18;
    v5 = [v0 _intentResponseCodableCode];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 name];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *(v18 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = v18 + 32;
        while (v11 < *(v4 + 16))
        {
          outlined init with copy of Any(v12, &v20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
          if (swift_dynamicCast())
          {
            if (*(v18 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000000002300F0), (v14 & 1) != 0) && (outlined init with copy of Any(*(v18 + 56) + 32 * v13, &v20), (swift_dynamicCast() & 1) != 0))
            {
              if (v18 == v17 && v19 == v9)
              {

                goto LABEL_24;
              }

              v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v16)
              {

                goto LABEL_24;
              }

              v4 = v18;
            }

            else
            {
            }
          }

          ++v11;
          v12 += 32;
          if (v10 == v11)
          {

            return;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_26:

      return;
    }

LABEL_24:
  }
}

Swift::String_optional __swiftcall INIntentResponse.languageCode()()
{
  INIntentResponse.getResponseCodeDictionary()();
  if (!v0)
  {
    goto LABEL_10;
  }

  specialized Dictionary.subscript.getter(0xD00000000000002CLL, 0x80000000002300A0, v0, &v7);

  if (!v8)
  {
    outlined destroy of Any?(&v7);
    v0 = 0;
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v1 = OUTLINED_FUNCTION_2_5();
  v2 = v1 == 0;
  if (v1)
  {
    v0 = v5;
  }

  else
  {
    v0 = 0;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v6;
  }

LABEL_11:
  result.value._object = v3;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(void *a1)
{
  v1 = [a1 propertiesByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(void *a1)
{
  v1 = [a1 pronunciationHint];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (mbnnb) of @objc INIntentResponse._renderedResponse(forLanguage:requiresSiriCompatibility:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 _renderedResponseForLanguage:v6 requiresSiriCompatibility:a3 & 1];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_dynamicCast();
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional __swiftcall SuggestionsCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.Properties.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t SuggestionsCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionsCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionsCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SuggestionsCATsSimple.cancel(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_28_2();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_57();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CancelDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.cancelAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CancelDialogIds and conformance SuggestionsCATsSimple.CancelDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.close(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 2);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CloseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CloseDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CloseDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CloseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t _s18SiriLinkFlowPlugin21SuggestionsCATsSimpleC15CancelDialogIdsOSYAASY8rawValue03RawL0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionsCATsSimple.NextDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SuggestionsCATsSimple.closeAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CloseDialogIds and conformance SuggestionsCATsSimple.CloseDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.create(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::CreateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.CreateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::CreateDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.CreateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.createAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.CreateDialogIds and conformance SuggestionsCATsSimple.CreateDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.disable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_36_1(v4) + 16) = xmmword_216FA0;
  OUTLINED_FUNCTION_26_3();
  *(v5 + 32) = v0;
  *(v5 + 40) = v6;
  *(v5 + 48) = v3;
  v7 = OUTLINED_FUNCTION_3_4(v5, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v9);
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v0;
  *(v2 + 136) = v14;
  outlined init with copy of SpeakableString?(v15, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v19, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v23, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_24_4();
    v26();
  }

  v27 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v27, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_24_4();
    v30();
  }

  v31 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v32 = OUTLINED_FUNCTION_43_1(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_42_1(v32);
  OUTLINED_FUNCTION_87();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::DisableDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.DisableDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::DisableDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.DisableDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.disableAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_36_1(v5) + 16) = xmmword_216FA0;
  OUTLINED_FUNCTION_26_3();
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v6 + 48) = v4;
  v8 = OUTLINED_FUNCTION_3_4(v6, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v10);
  if (v11)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_26_3();
  *(v3 + 128) = v1;
  *(v3 + 136) = v15;
  outlined init with copy of SpeakableString?(v16, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v11)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v20, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v11)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v24, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v11)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v28, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v11)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_24_4();
    v31();
  }

  v32 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v32);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v33;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_87();

  return v39(v34, v35, v36, v37, v38, v39, v40, v41);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.DisableDialogIds and conformance SuggestionsCATsSimple.DisableDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.enable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 1);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::EnableDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.EnableDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::EnableDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.EnableDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.enableAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.EnableDialogIds and conformance SuggestionsCATsSimple.EnableDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.next(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 3);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t SuggestionsCATsSimple.NextDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6974736567677573;
  }

  else
  {
    return 0x7470697263736564;
  }
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::NextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.NextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::NextDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.NextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.nextAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_57();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_28_2();

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_57();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];
  v8 = v0[15];
  OUTLINED_FUNCTION_87();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.NextDialogIds and conformance SuggestionsCATsSimple.NextDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.open(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v29 = OUTLINED_FUNCTION_43_1(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_42_1(v29);
  OUTLINED_FUNCTION_14_1(v1 - 3);
  OUTLINED_FUNCTION_87();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::OpenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.OpenDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::OpenDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.OpenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.openAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.OpenDialogIds and conformance SuggestionsCATsSimple.OpenDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.previous(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_36_1(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  v23 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_24_4();
    v26();
  }

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_43_1(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_42_1(v28);
  OUTLINED_FUNCTION_87();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37);
}

SiriLinkFlowPlugin::SuggestionsCATsSimple::PreviousDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.PreviousDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::SuggestionsCATsSimple::PreviousDialogIds_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.PreviousDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.previousAsLabels(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_12_3(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_49(v10);
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  *(v0 + 96) = OUTLINED_FUNCTION_46_0(v13);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_10_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = OUTLINED_FUNCTION_36_1(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v12, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_1_7();
  outlined init with copy of SpeakableString?(v16, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_24_4();
    v19();
  }

  v20 = OUTLINED_FUNCTION_4_3();
  outlined init with copy of SpeakableString?(v20, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v22 = *(v21 + 32);
    OUTLINED_FUNCTION_24_4();
    v23();
  }

  v24 = OUTLINED_FUNCTION_0_5();
  outlined init with copy of SpeakableString?(v24, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_7_3();
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_40_2(v28);
  lazy protocol witness table accessor for type SuggestionsCATsSimple.PreviousDialogIds and conformance SuggestionsCATsSimple.PreviousDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v29;
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_87();

  return v35(v30, v31, v32, v33, v34, v35, v36, v37);
}